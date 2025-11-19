unint64_t sub_230243CE8()
{
  result = qword_27DB180C0;
  if (!qword_27DB180C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB180C0);
  }

  return result;
}

char *sub_230243D50(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *v4;
  *(v4 + 2) = a1;
  (*(*(*(v5 + 80) - 8) + 32))(&v4[*(v5 + 96)], a2);
  return v4;
}

uint64_t sub_230243E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(v6 + 2);
    swift_beginAccess();
    *(a1 + 16) = v7;
    v8 = *(a2 - 8);
    (*(v8 + 16))(a3, &v6[*(*v6 + 96)], a2);

    v9 = 0;
  }

  else
  {
    v8 = *(a2 - 8);
    v9 = 1;
  }

  return (*(v8 + 56))(a3, v9, 1, a2);
}

char *sub_230243F50()
{
  (*(*(*(*v0 + 80) - 8) + 8))(&v0[*(*v0 + 96)]);
  v1 = *(v0 + 2);
  *(v0 + 2) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + 16);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t sub_230244038@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_230243DF4();

  *a1 = v2;
  return result;
}

void sub_230244090()
{
  type metadata accessor for LinkedList();

  JUMPOUT(0x231911910);
}

uint64_t sub_23024416C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_2302441BC(a1, a2);
  return v4;
}

char *sub_2302441BC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_weakInit();
  (*(*(*(v5 + 80) - 8) + 32))(&v2[*(*v2 + 104)], a2);
  *(v2 + 2) = a1;
  if (a1)
  {
    swift_weakAssign();
  }

  return v2;
}

uint64_t sub_230244280(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_2303104C8();
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v29 = *(v3 - 8);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v24 - v11);
  swift_weakInit();
  v30 = a1;
  v13 = sub_23030FDE8();

  WitnessTable = swift_getWitnessTable();
  MEMORY[0x231911530](&v31, v13, WitnessTable);
  v15 = v31;
  v31 = a1;
  swift_getWitnessTable();
  sub_2303100D8();
  v16 = v29;
  if ((*(v29 + 48))(v7, 1, v3) == 1)
  {

    v26[1](v7, v27);

    swift_weakDestroy();
    type metadata accessor for DoublyLinkedList();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v18 = *(v16 + 32);
  v26 = v12;
  v27 = v3;
  v29 = v16 + 32;
  v25 = v18;
  v18(v12, v7, v3);

  v31 = v15;
  sub_230310B68();
  swift_getWitnessTable();
  result = sub_2303100C8();
  v20 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if ((v20 & 0x8000000000000000) == 0)
  {
    if (result == 1)
    {

      v17 = v28;
      v25(&v17[*(*v17 + 104)], v26, v27);
      *(v17 + 2) = 0;
    }

    else
    {
      type metadata accessor for DoublyLinkedList();
      v21 = 0;
      v22 = 0;
      do
      {
        v31 = v15;

        sub_23006AEDC(v10);
        v23 = swift_allocObject();
        sub_2302441BC(v22, v10);
        if (v22)
        {
          swift_weakAssign();
        }

        ++v21;
        v22 = v23;
      }

      while (v20 != v21);

      v17 = v28;
      v25(&v17[*(*v17 + 104)], v26, v27);
      *(v17 + 2) = v23;
      swift_weakAssign();
    }

    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_2302446F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = swift_allocObject();
  v8 = *(v5 + 80);
  *(v7 + 16) = v8;
  *(v7 + 24) = v6;

  return MEMORY[0x2821FCFD8](a3, v7, v8);
}

uint64_t sub_23024478C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(v6 + 2);
    swift_beginAccess();
    *(a1 + 16) = v7;
    v8 = *(*v6 + 104);
    swift_beginAccess();
    v9 = *(a2 - 8);
    (*(v9 + 16))(a3, &v6[v8], a2);

    v10 = 0;
  }

  else
  {
    v9 = *(a2 - 8);
    v10 = 1;
  }

  return (*(v9 + 56))(a3, v10, 1, a2);
}

uint64_t sub_2302448D4()
{
  v1 = *v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = *(v1 + 80);
  *(v3 + 24) = v2;
  v4 = type metadata accessor for DoublyLinkedList();

  return MEMORY[0x2821FCFD8](sub_230244CD4, v3, v4);
}

uint64_t sub_230244988@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = swift_beginAccess();
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(v5 + 16);
    swift_beginAccess();
    *(a1 + 16) = v6;
  }

  *a2 = v5;
  return result;
}

char *sub_230244A00()
{
  v1 = *v0;
  swift_weakDestroy();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 104)]);
  v2 = *(v0 + 2);
  *(v0 + 2) = 0;

  if (v2)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v3 = *(v2 + 16);
      swift_retain_n();

      v2 = v3;
    }

    while (v3);
  }

  return v0;
}

uint64_t sub_230244AF0(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_230244B4C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2302446C8();

  *a1 = v2;
  return result;
}

uint64_t sub_230244BA4(uint64_t a1, uint64_t a2, void (*a3)(void, void))
{
  a3(0, *(a1 + 80));
  v3 = sub_230244CD0();

  return v3;
}

void sub_230244BF4()
{
  type metadata accessor for DoublyLinkedList();

  JUMPOUT(0x231911910);
}

uint64_t NSDateFormatter.testing_string(from:)()
{
  v1 = v0;
  v2 = sub_23030EAA8();
  v3 = [v1 stringFromDate_];

  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  sub_2300A85F0();
  v4 = sub_230310568();

  return v4;
}

uint64_t sub_230244DD4()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB180C8);
  v1 = __swift_project_value_buffer(v0, qword_27DB180C8);
  if (qword_280C99DE8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1730);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void static REMSuggestedAttributesFeatureExtractor.train(in:parameters:)(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v4;
  v13[2] = *(a1 + 32);
  v14 = *(a1 + 48);
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2300CBEA0(v5, v13, v9);

  if (!v2)
  {
    v6 = v9[0];
    v7 = v10;
    v8 = v11;

    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
  }
}

id REMSuggestedAttributesFeatureExtractor.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id REMSuggestedAttributesFeatureExtractor.init(coder:)(void *a1)
{
  v3 = [v1 init];

  return v3;
}

uint64_t REMSuggestedAttributesFeatureExtractor.Result.featureString.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

ReminderKitInternal::REMSuggestedAttributesFeatureExtractor::Result __swiftcall REMSuggestedAttributesFeatureExtractor.Result.init(success:featureString:)(Swift::Bool success, Swift::String featureString)
{
  *v2 = success;
  *(v2 + 8) = featureString;
  result.featureString = featureString;
  result.success = success;
  return result;
}

uint64_t sub_230245034()
{
  if (*v0)
  {
    return 0x5365727574616566;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_23024507C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5365727574616566 && a2 == 0xED0000676E697274)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_230245160(uint64_t a1)
{
  v2 = sub_230245368();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23024519C(uint64_t a1)
{
  v2 = sub_230245368();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSuggestedAttributesFeatureExtractor.Result.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB180E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *(v1 + 8);
  v10[0] = *(v1 + 16);
  v10[1] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230245368();
  sub_230311448();
  v12 = 0;
  sub_230310DB8();
  if (!v2)
  {
    v11 = 1;
    sub_230310DA8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_230245368()
{
  result = qword_27DB180E8;
  if (!qword_27DB180E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB180E8);
  }

  return result;
}

uint64_t REMSuggestedAttributesFeatureExtractor.Result.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB180F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230245368();
  sub_230311428();
  if (!v2)
  {
    v16 = 0;
    v9 = sub_230310CA8();
    v15 = 1;
    v11 = sub_230310C98();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

ReminderKitInternal::REMSuggestedAttributesFeatureExtractor::Parameters::CodingKeys_optional __swiftcall REMSuggestedAttributesFeatureExtractor.Parameters.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230310C08();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

ReminderKitInternal::REMSuggestedAttributesFeatureExtractor::Parameters::CodingKeys_optional __swiftcall REMSuggestedAttributesFeatureExtractor.Parameters.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = REMSuggestedAttributesFeatureExtractor.Parameters.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t sub_230245654()
{
  v1 = *v0;
  v2 = 0x694674757074756FLL;
  v3 = 0x65536D6F646E6172;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C706D615378616DLL;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
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

uint64_t sub_230245750()
{
  sub_23030F9C8();
}

void sub_230245880(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00656D614E656CLL;
  v4 = 0x694674757074756FLL;
  v5 = 0xEA00000000006465;
  v6 = 0x65536D6F646E6172;
  v7 = 0x800000023033F870;
  v8 = 0xD000000000000010;
  if (v2 != 4)
  {
    v8 = 0xD000000000000012;
    v7 = 0x800000023033F890;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE00746E756F4365;
  v10 = 0x6C706D615378616DLL;
  if (v2 != 1)
  {
    v10 = 0xD000000000000012;
    v9 = 0x800000023033F7D0;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

ReminderKitInternal::REMSuggestedAttributesFeatureExtractor::Parameters::CodingKeys_optional sub_23024596C@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = REMSuggestedAttributesFeatureExtractor.Parameters.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_2302459B4(uint64_t a1)
{
  v2 = sub_2302466C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302459F0(uint64_t a1)
{
  v2 = sub_2302466C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSuggestedAttributesFeatureExtractor.Parameters.outputFileName.getter()
{
  v1 = *v0;

  return v1;
}

void __swiftcall REMSuggestedAttributesFeatureExtractor.Parameters.init(outputFileName:maxSampleCount:minimumSampleCount:randomSeed:numOfIntentWords:includeTitleVector:)(ReminderKitInternal::REMSuggestedAttributesFeatureExtractor::Parameters *__return_ptr retstr, Swift::String_optional outputFileName, Swift::Int_optional maxSampleCount, Swift::Int_optional minimumSampleCount, Swift::Int_optional randomSeed, Swift::Int_optional numOfIntentWords, Swift::Bool_optional includeTitleVector)
{
  is_nil = randomSeed.is_nil;
  value = randomSeed.value;
  v9 = minimumSampleCount.is_nil;
  v10 = minimumSampleCount.value;
  object = outputFileName.value._object;
  v13 = 100;
  if (!maxSampleCount.is_nil)
  {
    v13 = maxSampleCount.value;
  }

  countAndFlagsBits = outputFileName.value._countAndFlagsBits;
  v29 = v13;
  if (qword_27DB13CA8 != -1)
  {
    swift_once();
  }

  v14 = sub_23030EF48();
  __swift_project_value_buffer(v14, qword_27DB180C8);
  v15 = sub_23030EF38();
  v16 = sub_2303102A8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134349056;
    *(v17 + 4) = v29;
    _os_log_impl(&dword_230044000, v15, v16, "maxSampleCount: %{public}ld", v17, 0xCu);
    MEMORY[0x231914180](v17, -1, -1);
  }

  if (v9)
  {
    v18 = 30;
  }

  else
  {
    v18 = v10;
  }

  v19 = sub_23030EF38();
  v20 = sub_2303102A8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134349056;
    *(v21 + 4) = v18;
    _os_log_impl(&dword_230044000, v19, v20, "minimumSampleCount: %{public}ld", v21, 0xCu);
    MEMORY[0x231914180](v21, -1, -1);
  }

  if (is_nil)
  {
    value = sub_2301ED1EC(0x7FFFFFFFFFFFFFFFuLL);
  }

  v22 = sub_23030EF38();
  v23 = sub_2303102A8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134349056;
    *(v24 + 4) = value;
    _os_log_impl(&dword_230044000, v22, v23, "randomSeed: %{public}ld", v24, 0xCu);
    MEMORY[0x231914180](v24, -1, -1);
  }

  v25 = 0xED00006E6F736A2ELL;
  if (object)
  {
    v25 = object;
  }

  v26 = 0x7365727574616566;
  if (object)
  {
    v26 = countAndFlagsBits;
  }

  retstr->outputFileName._countAndFlagsBits = v26;
  retstr->outputFileName._object = v25;
  v27 = 10;
  if (!numOfIntentWords.is_nil)
  {
    v27 = numOfIntentWords.value;
  }

  retstr->maxSampleCount = v29;
  retstr->minimumSampleCount = v18;
  retstr->randomSeed = value;
  retstr->numOfIntentWords = v27;
  retstr->includeTitleVector = includeTitleVector.value;
}

void REMSuggestedAttributesFeatureExtractor.Parameters.init(partial:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  v5 = sub_2302269F8(KeyPath, v3);
  v40 = v6;
  v41 = v5;

  v7 = swift_getKeyPath();
  v8 = sub_230226A8C(v7, v3);
  v10 = v9;

  v11 = swift_getKeyPath();
  v12 = sub_230226A8C(v11, v3);
  v14 = v13;

  v15 = swift_getKeyPath();
  v16 = sub_230226A8C(v15, v3);
  v18 = v17;

  v19 = swift_getKeyPath();
  v39 = sub_230226A8C(v19, v3);
  v38 = v20;

  v21 = swift_getKeyPath();
  v37 = sub_230226B48(v21, v3);

  if (v10)
  {
    v22 = 100;
  }

  else
  {
    v22 = v8;
  }

  if (qword_27DB13CA8 != -1)
  {
    swift_once();
  }

  v23 = sub_23030EF48();
  __swift_project_value_buffer(v23, qword_27DB180C8);
  v24 = sub_23030EF38();
  v25 = sub_2303102A8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134349056;
    *(v26 + 4) = v22;
    _os_log_impl(&dword_230044000, v24, v25, "maxSampleCount: %{public}ld", v26, 0xCu);
    MEMORY[0x231914180](v26, -1, -1);
  }

  if (v14)
  {
    v27 = 30;
  }

  else
  {
    v27 = v12;
  }

  v28 = sub_23030EF38();
  v29 = sub_2303102A8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134349056;
    *(v30 + 4) = v27;
    _os_log_impl(&dword_230044000, v28, v29, "minimumSampleCount: %{public}ld", v30, 0xCu);
    MEMORY[0x231914180](v30, -1, -1);
  }

  if (v18)
  {
    v16 = sub_2301ED1EC(0x7FFFFFFFFFFFFFFFuLL);
  }

  v31 = sub_23030EF38();
  v32 = sub_2303102A8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134349056;
    *(v33 + 4) = v16;
    _os_log_impl(&dword_230044000, v31, v32, "randomSeed: %{public}ld", v33, 0xCu);
    MEMORY[0x231914180](v33, -1, -1);
  }

  v34 = 0xED00006E6F736A2ELL;
  if (v40)
  {
    v34 = v40;
  }

  v35 = 0x7365727574616566;
  if (v40)
  {
    v35 = v41;
  }

  *a2 = v35;
  *(a2 + 8) = v34;
  v36 = 10;
  if ((v38 & 1) == 0)
  {
    v36 = v39;
  }

  *(a2 + 16) = v22;
  *(a2 + 24) = v27;
  *(a2 + 32) = v16;
  *(a2 + 40) = v36;
  *(a2 + 48) = v37 & 1;
}

uint64_t REMSuggestedAttributesFeatureExtractor.Parameters.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB180F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = v7;
  v8 = *(v1 + 32);
  v12 = *(v1 + 40);
  v13 = v8;
  v11[1] = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302466C4();
  sub_230311448();
  v22 = 0;
  v9 = v16;
  sub_230310DA8();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v21 = 1;
  sub_230310DD8();
  v20 = 2;
  sub_230310DD8();
  v19 = 3;
  sub_230310DD8();
  v18 = 4;
  sub_230310DD8();
  v17 = 5;
  sub_230310DB8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t REMSuggestedAttributesFeatureExtractor.Parameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18108);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302466C4();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v9 = sub_230310C98();
  v11 = v10;
  v12 = v9;
  v25 = 1;
  v20 = sub_230310CC8();
  v24 = 2;
  v19 = sub_230310CC8();
  v23 = 3;
  v18 = sub_230310CC8();
  v22 = 4;
  v17 = sub_230310CC8();
  v21 = 5;
  v14 = sub_230310CA8();
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  v15 = v19;
  *(a2 + 16) = v20;
  *(a2 + 24) = v15;
  v16 = v17;
  *(a2 + 32) = v18;
  *(a2 + 40) = v16;
  *(a2 + 48) = v14 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

id REMSuggestedAttributesFeatureExtractor.__allocating_init(fetchResultTokenToDiffAgainst:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithFetchResultTokenToDiffAgainst_];

  return v3;
}

id REMSuggestedAttributesFeatureExtractor.init(fetchResultTokenToDiffAgainst:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithFetchResultTokenToDiffAgainst_, a1);

  return v3;
}

id REMSuggestedAttributesFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2302466C4()
{
  result = qword_27DB18100;
  if (!qword_27DB18100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18100);
  }

  return result;
}

unint64_t sub_23024671C()
{
  result = qword_27DB18110;
  if (!qword_27DB18110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18110);
  }

  return result;
}

unint64_t sub_230246770(uint64_t a1)
{
  *(a1 + 8) = sub_2302467A0();
  result = sub_2302466C4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2302467A0()
{
  result = qword_27DB18118;
  if (!qword_27DB18118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18118);
  }

  return result;
}

unint64_t sub_2302467F8()
{
  result = qword_27DB18120;
  if (!qword_27DB18120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18120);
  }

  return result;
}

unint64_t sub_230246850()
{
  result = qword_27DB18128;
  if (!qword_27DB18128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18128);
  }

  return result;
}

unint64_t sub_2302468A8()
{
  result = qword_27DB18130;
  if (!qword_27DB18130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB18138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18130);
  }

  return result;
}

unint64_t sub_230246914(uint64_t a1)
{
  result = sub_23024693C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23024693C()
{
  result = qword_27DB18140;
  if (!qword_27DB18140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18140);
  }

  return result;
}

unint64_t sub_2302469A0()
{
  result = qword_27DB18148;
  if (!qword_27DB18148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18148);
  }

  return result;
}

uint64_t sub_230246A20(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t assignWithCopy for REMSuggestedAttributesFeatureExtractor.Result(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for REMSuggestedAttributesFeatureExtractor.Result(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t initializeWithCopy for REMSuggestedAttributesFeatureExtractor.Parameters(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithCopy for REMSuggestedAttributesFeatureExtractor.Parameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for REMSuggestedAttributesFeatureExtractor.Parameters(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v5;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMSuggestedAttributesFeatureExtractor.Parameters(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for REMSuggestedAttributesFeatureExtractor.Parameters(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_230246CBC()
{
  result = qword_27DB18150;
  if (!qword_27DB18150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18150);
  }

  return result;
}

unint64_t sub_230246D14()
{
  result = qword_27DB18158;
  if (!qword_27DB18158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18158);
  }

  return result;
}

unint64_t sub_230246D6C()
{
  result = qword_27DB18160;
  if (!qword_27DB18160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18160);
  }

  return result;
}

uint64_t InitiallyEmptyCurrentValueSubject.__allocating_init()()
{
  v0 = swift_allocObject();
  InitiallyEmptyCurrentValueSubject.init()();
  return v0;
}

uint64_t InitiallyEmptyCurrentValueSubject.send(_:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_2303104C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *(v3 - 8);
  (*(v8 + 16))(&v10 - v6, a1, v3);
  (*(v8 + 56))(v7, 0, 1, v3);
  sub_23030F128();
  return (*(v5 + 8))(v7, v4);
}

uint64_t InitiallyEmptyCurrentValueSubject.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a3;
  v17 = a1;
  v5 = *v3;
  v6 = *(*v3 + 80);
  sub_2303104C8();
  v7 = *(v5 + 88);
  sub_23030F138();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_23030EFC8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &WitnessTable - v10;
  v18 = v3[2];
  v12 = swift_allocObject();
  v12[2] = v6;
  v12[3] = v7;
  v13 = v16;
  v12[4] = a2;
  v12[5] = v13;

  sub_23030F1A8();

  sub_23030EFB8();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_230247190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2303104C8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t Error.rem_errorDescription.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v35 - v8;
  v10 = *(v4 + 16);
  v10(v35 - v8, v2, a1);
  v11 = sub_230310FF8();
  if (v11)
  {
    v12 = v11;
    (*(v4 + 8))(v9, a1);
  }

  else
  {
    v12 = swift_allocError();
    (*(v4 + 32))(v13, v9, a1);
  }

  v14 = sub_23030E7F8();

  v15 = [v14 userInfo];
  v16 = sub_23030F658();

  v17 = *(v16 + 16);

  if (v17 != 1)
  {
    if (!v17)
    {
      v10(v7, v2, a1);
      v18 = sub_23030F948();
LABEL_14:

      return v18;
    }

LABEL_13:
    v33 = [v14 description];
    v18 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

    goto LABEL_14;
  }

  v19 = [v14 userInfo];
  v20 = sub_23030F658();

  v21 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  if (!*(v20 + 16))
  {

    goto LABEL_12;
  }

  v23 = sub_23005EE00(v21, v22);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  sub_23004D5CC(*(v20 + 56) + 32 * v23, v36);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v27 = v35[0];
  v26 = v35[1];
  v28 = [v14 domain];
  v29 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v31 = v30;

  v36[0] = v29;
  v36[1] = v31;
  MEMORY[0x231911790](91, 0xE100000000000000);
  v35[0] = [v14 code];
  v32 = sub_230310E58();
  MEMORY[0x231911790](v32);

  MEMORY[0x231911790](539828317, 0xE400000000000000);
  MEMORY[0x231911790](v27, v26);

  return v36[0];
}

uint64_t Optional<A>.rem_errorDescription.getter(uint64_t a1)
{
  if (!a1)
  {
    return 7104878;
  }

  swift_getErrorValue();
  return Error.rem_errorDescription.getter(v2);
}

BOOL Error.isREMError(withErrorCode:)(id a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v7, a2);
  v8 = sub_230310FF8();
  if (v8)
  {
    v9 = v8;
    (*(v4 + 8))(v6, a2);
  }

  else
  {
    v9 = swift_allocError();
    (*(v4 + 32))(v10, v6, a2);
  }

  v11 = sub_23030E7F8();

  v12 = [v11 domain];
  v13 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v15 = v14;

  if (v13 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v15 == v16)
  {
  }

  else
  {
    v18 = sub_230311048();

    if ((v18 & 1) == 0)
    {

      return 0;
    }
  }

  v20 = [v11 code];

  return v20 == a1;
}

void CodableError.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_23030E7F8();
  v5 = [v4 domain];
  v6 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v30 = v7;
  v31 = v6;

  v29 = [v4 code];
  v8 = [v4 userInfo];
  v9 = sub_23030F658();

  v10 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  if (*(v9 + 16))
  {
    v12 = sub_23005EE00(v10, v11);
    v14 = v13;

    if (v14)
    {
      sub_23004D5CC(*(v9 + 56) + 32 * v12, v34);

      v15 = swift_dynamicCast();
      if (v15)
      {
        v16 = v32;
      }

      else
      {
        v16 = 0;
      }

      if (v15)
      {
        v17 = v33;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {

      v16 = 0;
      v17 = 0;
    }
  }

  else
  {

    v16 = 0;
    v17 = 0;
  }

  v18 = [v4 userInfo];
  v19 = sub_23030F658();

  v20 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  if (!*(v19 + 16))
  {

    goto LABEL_16;
  }

  v22 = sub_23005EE00(v20, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  sub_23004D5CC(*(v19 + 56) + 32 * v22, v34);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v34[0] = a1;
    v27 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14308);
    v25 = sub_23030F948();
    v26 = v28;

    goto LABEL_18;
  }

  v25 = v32;
  v26 = v33;
LABEL_18:
  *a2 = v31;
  a2[1] = v30;
  a2[2] = v29;
  a2[3] = v16;
  a2[4] = v17;
  a2[5] = v25;
  a2[6] = v26;
}

uint64_t CodableError.domain.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CodableError.localizedDescription.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t CodableError.debugDescription.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t CodableError.errorUserInfo.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = MEMORY[0x277D84F98];
  v5 = MEMORY[0x277D837D0];
  if (v1)
  {
    v6 = v0[3];
    v7 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v9 = v8;
    v18 = v5;
    *&v17 = v6;
    *(&v17 + 1) = v1;
    sub_230061914(&v17, v16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2300A175C(v16, v7, v9, isUniquelyReferenced_nonNull_native);
  }

  if (v3)
  {
    v11 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v13 = v12;
    v18 = v5;
    *&v17 = v2;
    *(&v17 + 1) = v3;
    sub_230061914(&v17, v16);

    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_2300A175C(v16, v11, v13, v14);
  }

  return v4;
}

unint64_t sub_230247D2C()
{
  v1 = 0x6E69616D6F64;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x646F43726F727265;
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

uint64_t sub_230247DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23024876C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230247DDC(uint64_t a1)
{
  v2 = sub_2302483A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230247E18(uint64_t a1)
{
  v2 = sub_2302483A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CodableError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18168);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  v11[0] = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302483A0();
  sub_230311448();
  v15 = 0;
  v9 = v11[5];
  sub_230310DA8();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v14 = 1;
  sub_230310DD8();
  v13 = 2;
  sub_230310D58();
  v12 = 3;
  sub_230310D58();
  return (*(v4 + 8))(v6, v3);
}

uint64_t CodableError.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18170);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302483A0();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  v9 = sub_230310C98();
  v11 = v10;
  v12 = v9;
  v28 = 1;
  v24 = sub_230310CC8();
  v27 = 2;
  v13 = sub_230310C48();
  v25 = v15;
  v23 = v13;
  v26 = 3;
  v16 = sub_230310C48();
  v18 = v17;
  v19 = *(v6 + 8);
  v22 = v16;
  v19(v8, v5);
  *a2 = v12;
  a2[1] = v11;
  v20 = v23;
  a2[2] = v24;
  a2[3] = v20;
  v21 = v22;
  a2[4] = v25;
  a2[5] = v21;
  a2[6] = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2302482F0(uint64_t a1)
{
  v2 = sub_2302488E4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_23024832C(uint64_t a1)
{
  v2 = sub_2302488E4();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_2302483A0()
{
  result = qword_280C99BA0;
  if (!qword_280C99BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99BA0);
  }

  return result;
}

uint64_t destroy for CodableError()
{
}

uint64_t initializeWithCopy for CodableError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

void *assignWithCopy for CodableError(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];

  a1[5] = a2[5];
  a1[6] = a2[6];

  return a1;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for CodableError(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for CodableError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for CodableError(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_230248668()
{
  result = qword_27DB18178;
  if (!qword_27DB18178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18178);
  }

  return result;
}

unint64_t sub_2302486C0()
{
  result = qword_280C99B90;
  if (!qword_280C99B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99B90);
  }

  return result;
}

unint64_t sub_230248718()
{
  result = qword_280C99B98;
  if (!qword_280C99B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99B98);
  }

  return result;
}

uint64_t sub_23024876C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230345760 == a2 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230345780 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_230311048();

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

unint64_t sub_2302488E4()
{
  result = qword_27DB18180;
  if (!qword_27DB18180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18180);
  }

  return result;
}

ReminderKitInternal::REMMigrationResultState_optional __swiftcall REMMigrationResultState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230310C08();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t REMMigrationResultState.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6E6964616F6C7075;
    v6 = 0xD000000000000012;
    if (v1 != 6)
    {
      v6 = 0x6574656C706D6F63;
    }

    if (v1 != 4)
    {
      v5 = 0xD000000000000012;
    }

    if (*v0 <= 5u)
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
    v2 = 0xD000000000000014;
    if (v1 == 2)
    {
      v2 = 0xD000000000000016;
    }

    v3 = 0xD000000000000012;
    if (*v0)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_230248AC0()
{
  result = qword_27DB18188;
  if (!qword_27DB18188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18188);
  }

  return result;
}

void sub_230248B3C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xED00007473694C67;
    v9 = 0x6E6964616F6C7075;
    v10 = 0xD000000000000012;
    v11 = 0x800000023033F960;
    if (v2 != 6)
    {
      v10 = 0x6574656C706D6F63;
      v11 = 0xE800000000000000;
    }

    if (v2 != 4)
    {
      v9 = 0xD000000000000012;
      v8 = 0x800000023033F940;
    }

    if (*v1 <= 5u)
    {
      v12 = v9;
    }

    else
    {
      v12 = v10;
    }

    if (*v1 > 5u)
    {
      v8 = v11;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x800000023033F8F0;
    v4 = 0xD000000000000014;
    if (v2 == 2)
    {
      v4 = 0xD000000000000016;
    }

    else
    {
      v3 = 0x800000023033F910;
    }

    v5 = 0xD000000000000012;
    v6 = 0x800000023033F8B0;
    if (*v1)
    {
      v5 = 0xD000000000000010;
      v6 = 0x800000023033F8D0;
    }

    if (*v1 <= 1u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 1u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t REMReminder.loggable_supportedVersion.getter()
{
  v0 = rem_loggableSupportedVersionFrom();
  v1 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

  return v1;
}

uint64_t sub_230248CC0()
{
  v0 = rem_loggableSupportedVersionFrom();
  v1 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

  return v1;
}

uint64_t sub_230248D3C()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB18190);
  v1 = __swift_project_value_buffer(v0, qword_27DB18190);
  if (qword_280C9C490 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB17C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static REMFileDigester.sha512Sum(url:)(char *a1)
{
  result = _s19ReminderKitInternal15REMFileDigesterO21sha512SumWithFileSize3urlSS_SitSg10Foundation3URLV_tFZ_0(a1);
  if (!v2)
  {
    return 0;
  }

  return result;
}

id sub_230248E28(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23030E8D8();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_23030E9B8();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_23030E808();

    swift_willThrow();
    v9 = sub_23030E9B8();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

void sub_230248F80(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [a1 closeAndReturnError_];
  v2 = v6[0];
  if (v1)
  {

    v3 = v2;
  }

  else
  {
    v4 = v6[0];
    v5 = sub_23030E808();

    swift_willThrow();
  }
}

uint64_t sub_230249060()
{
  sub_23030F568();
  sub_230249DBC(&qword_280C96FA8, MEMORY[0x277CC52E8]);
  result = sub_23030F5A8();
  v2 = *(result + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {

    return 0;
  }

  if (v2 <= v1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = v1;
  if (v1 < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!v2)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_230249E04();
  v5 = v4 + 32;
  do
  {
    v8 = sub_23030FAE8();
    v7 = v9;
    if (sub_23030F9D8() <= 1)
    {
      MEMORY[0x231911790](v8, v7);

      v6 = 48;
      v7 = 0xE100000000000000;
    }

    else
    {
      v6 = v8;
    }

    MEMORY[0x231911790](v6, v7);

    ++v5;
    --v3;
  }

  while (v3);

  return 0;
}

uint64_t _s19ReminderKitInternal15REMFileDigesterO21sha512SumWithFileSize3urlSS_SitSg10Foundation3URLV_tFZ_0(char *a1)
{
  v84[2] = *MEMORY[0x277D85DE8];
  v75 = sub_23030F568();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v3 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23030F5E8();
  v74 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23030E9B8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v69 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v69 - v13;
  sub_23030E948();
  sub_230249D70();
  v79 = *(v8 + 16);
  v80 = v8 + 16;
  v79(v14, a1, v7);
  v15 = sub_230248E28(v14);
  v69 = v3;
  v78 = v4;
  v30 = v75;
  v71 = v12;
  v70 = v8;
  v72 = v7;
  v76 = a1;
  v31 = v15;
  v32 = sub_23030F5D8();
  v33 = MEMORY[0x2319135A0](v32);
  v81 = v31;
  v34 = sub_230310248();
  v77 = v6;
  v35 = v34;
  v37 = v36;
  v38 = v6;
  v39 = 0;
  v40 = v30;
  v41 = v78;
  while (v37 >> 60 != 15)
  {
    v42 = v37 >> 62;
    if ((v37 >> 62) > 1)
    {
      if (v42 == 2)
      {
        v41 = *(v35 + 16);
        v44 = *(v35 + 24);

        if (sub_23030E598() && __OFSUB__(v41, sub_23030E5B8()))
        {
          goto LABEL_36;
        }

        v45 = __OFSUB__(v44, v41);
        v41 = v44 - v41;
        if (v45)
        {
          goto LABEL_33;
        }

        sub_23030E5A8();
        sub_230249DBC(&qword_280C96FA0, MEMORY[0x277CC5560]);
        v38 = v77;
        v41 = v78;
        sub_23030F538();
        sub_230122604(v35, v37);
        v47 = *(v35 + 16);
        v46 = *(v35 + 24);
        sub_230122604(v35, v37);
        v45 = __OFSUB__(v46, v47);
        v43 = v46 - v47;
        if (v45)
        {
          goto LABEL_34;
        }
      }

      else
      {
        sub_230249DBC(&qword_280C96FA0, MEMORY[0x277CC5560]);
        memset(v84, 0, 14);
        sub_23030F538();
        sub_230122604(v35, v37);
        sub_230122604(v35, v37);
        v43 = 0;
      }
    }

    else if (v42)
    {
      v41 = (v35 >> 32) - v35;
      if (v35 >> 32 < v35)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        swift_once();
        v49 = sub_23030EF48();
        __swift_project_value_buffer(v49, qword_27DB18190);
        v50 = v72;
        v79(v40, v76, v72);
        v51 = 0;
        v52 = sub_23030EF38();
        v53 = sub_230310288();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = v50;
          v56 = swift_slowAlloc();
          v84[0] = v56;
          *v54 = 136315394;
          sub_230249DBC(&qword_27DB164E0, MEMORY[0x277CC9260]);
          v57 = sub_230310E58();
          v59 = v58;
          (*(v70 + 8))(v40, v55);
          v60 = sub_23004E30C(v57, v59, v84);

          *(v54 + 4) = v60;
          *(v54 + 12) = 2082;
          swift_getErrorValue();
          v61 = Error.rem_errorDescription.getter(v82);
          v63 = sub_23004E30C(v61, v62, v84);

          *(v54 + 14) = v63;
          _os_log_impl(&dword_230044000, v52, v53, "REMFileDigester: Failed while reading file at url %s {error: %{public}s}", v54, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x231914180](v56, -1, -1);
          MEMORY[0x231914180](v54, -1, -1);
        }

        else
        {

          (*(v70 + 8))(v40, v50);
        }

        v64 = v81;
        (*(v74 + 8))(v77, v41);
        sub_230248F80(v64);

LABEL_28:
        v65 = 0;
        goto LABEL_29;
      }

      if (sub_23030E598() && __OFSUB__(v35, sub_23030E5B8()))
      {
        goto LABEL_37;
      }

      sub_23030E5A8();
      sub_230249DBC(&qword_280C96FA0, MEMORY[0x277CC5560]);
      v38 = v77;
      v41 = v78;
      sub_23030F538();
      sub_230122604(v35, v37);
      sub_230122604(v35, v37);
      if (__OFSUB__(HIDWORD(v35), v35))
      {
        goto LABEL_35;
      }

      v43 = HIDWORD(v35) - v35;
    }

    else
    {
      v84[0] = v35;
      LOWORD(v84[1]) = v37;
      BYTE2(v84[1]) = BYTE2(v37);
      BYTE3(v84[1]) = BYTE3(v37);
      BYTE4(v84[1]) = BYTE4(v37);
      v43 = BYTE6(v37);
      BYTE5(v84[1]) = BYTE5(v37);
      sub_230249DBC(&qword_280C96FA0, MEMORY[0x277CC5560]);
      sub_23030F538();
      sub_230122604(v35, v37);
      sub_230122604(v35, v37);
    }

    v45 = __OFADD__(v39, v43);
    v39 += v43;
    if (v45)
    {
      __break(1u);
      swift_once();
      v16 = sub_23030EF48();
      __swift_project_value_buffer(v16, qword_27DB18190);
      v79(v41, v38, v33);
      v17 = 0;
      v18 = sub_23030EF38();
      v19 = sub_230310288();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v76 = v38;
        v21 = v20;
        v81 = swift_slowAlloc();
        v84[0] = v81;
        *v21 = 136315394;
        sub_230249DBC(&qword_27DB164E0, MEMORY[0x277CC9260]);
        v22 = sub_230310E58();
        v24 = v23;
        (*(v37 + 8))(v41, v33);
        v25 = sub_23004E30C(v22, v24, v84);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2082;
        swift_getErrorValue();
        v26 = Error.rem_errorDescription.getter(v83);
        v28 = sub_23004E30C(v26, v27, v84);

        *(v21 + 14) = v28;
        _os_log_impl(&dword_230044000, v18, v19, "REMFileDigester: Failed opening file for reading at path %s {error: %{public}s}", v21, 0x16u);
        v29 = v81;
        swift_arrayDestroy();
        MEMORY[0x231914180](v29, -1, -1);
        MEMORY[0x231914180](v21, -1, -1);
      }

      else
      {

        (*(v37 + 8))(v41, v33);
      }

      goto LABEL_28;
    }

    objc_autoreleasePoolPop(v33);
    v33 = MEMORY[0x2319135A0]();
    v35 = sub_230310248();
    v37 = v48;
  }

  objc_autoreleasePoolPop(v33);
  v67 = v69;
  sub_23030F5C8();
  v65 = sub_230249060();
  (*(v73 + 8))(v67, v40);
  (*(v74 + 8))(v38, v41);
  v68 = v81;
  sub_230248F80(v81);

LABEL_29:
  sub_23030E928();
  return v65;
}

unint64_t sub_230249D70()
{
  result = qword_280C96EC8;
  if (!qword_280C96EC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C96EC8);
  }

  return result;
}

uint64_t sub_230249DBC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_230249E04()
{
  result = qword_280C96D10;
  if (!qword_280C96D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96D10);
  }

  return result;
}

uint64_t Bool.yesno.getter(char a1)
{
  if (a1)
  {
    return 7562617;
  }

  else
  {
    return 28526;
  }
}

uint64_t sub_230249E7C()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB181A8);
  v1 = __swift_project_value_buffer(v0, qword_27DB181A8);
  if (qword_280C9C490 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB17C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t OrderedDictionary.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = sub_23030FD38();
  swift_getTupleTypeMetadata2();
  v8 = sub_23030FD38();
  v9 = sub_2301BFA60(v8, a1, a2, a3);

  a4[1] = v9;
  return result;
}

uint64_t sub_23024A050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = sub_2303104C8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  (*(v14 + 16))(&v17 - v12, a3, v6);
  (*(v8 + 16))(v11, a1, v7);
  v15 = type metadata accessor for OrderedDictionary();
  return OrderedDictionary.subscript.setter(v11, v13, v15);
}

uint64_t OrderedDictionary.subscript.setter(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = sub_2303104C8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22 - v13;
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = (&v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v8 + 16);
  v23 = a1;
  v18(v14, a1, v7);
  if ((*(v15 + 48))(v14, 1, v6) == 1)
  {
    v19 = *(v8 + 8);
    v19(v14, v7);
    OrderedDictionary.removeValue(forKey:)(a2, a3, v11);
    (*(*(*(a3 + 16) - 8) + 8))(a2);
    v19(v23, v7);
    return (v19)(v11, v7);
  }

  else
  {
    (*(v15 + 32))(v17, v14, v6);
    OrderedDictionary.updateValue(_:forKey:)(v17, a2, a3, v11);
    (*(*(*(a3 + 16) - 8) + 8))(a2);
    v21 = *(v8 + 8);
    v21(v23, v7);
    v21(v11, v7);
    return (*(v15 + 8))(v17, v6);
  }
}

uint64_t OrderedDictionary.updateValue(_:forKey:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v35 = a1;
  v38 = a4;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v37 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 24);
  v13 = sub_2303104C8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v33 - v18;
  v33[1] = v5;
  v20 = *(a3 + 32);
  v36 = a2;
  v33[2] = v20;
  sub_23030F728();
  v21 = *(v12 - 8);
  v22 = (*(v21 + 48))(v19, 1, v12);
  v23 = (v9 + 16);
  v24 = (v21 + 16);
  v34 = (v21 + 56);
  if (v22 == 1)
  {
    (*(v14 + 8))(v19, v13);
    v25 = *v23;
    v26 = v36;
    v27 = v37;
    (*v23)(v37, v36, v8);
    (*v24)(v17, v35, v12);
    v35 = *v34;
    v35(v17, 0, 1, v12);
    sub_23030F6F8();
    sub_23030F738();
    v25(v27, v26, v8);
    sub_23030FDE8();
    sub_23030FD98();
    return v35(v38, 1, 1, v12);
  }

  else
  {
    v30 = *(v21 + 32);
    v29 = v21 + 32;
    v31 = v38;
    v30(v38, v19, v12);
    (*v23)(v37, v36, v8);
    (*(v29 - 16))(v17, v35, v12);
    v32 = *(v29 + 24);
    v32(v17, 0, 1, v12);
    sub_23030F6F8();
    sub_23030F738();
    return (v32)(v31, 0, 1, v12);
  }
}

uint64_t OrderedDictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v40 = a3;
  v5 = *(a2 + 16);
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v9 = sub_2303104C8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v39 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  v36 = v3;
  v19 = v18;
  sub_23030F728();
  if ((*(v19 + 48))(v16, 1, v8) == 1)
  {
    (*(v10 + 8))(v16, v9);
    return (*(v19 + 56))(v40, 1, 1, v8);
  }

  else
  {
    v33 = *(v19 + 32);
    v33(v39, v16, v8);
    (*(v38 + 16))(v37, v35, v5);
    v34 = v19;
    v21 = *(v19 + 56);
    v21(v13, 1, 1, v8);
    sub_23030F6F8();
    sub_23030F738();
    v41 = *v36;
    sub_23030FDE8();
    swift_getWitnessTable();
    sub_230310108();
    if (v42)
    {
      v22 = v39;
      if (qword_27DB13CB8 != -1)
      {
        swift_once();
      }

      v23 = sub_23030EF48();
      __swift_project_value_buffer(v23, qword_27DB181A8);
      v24 = sub_23030EF38();
      v25 = sub_230310298();
      v26 = os_log_type_enabled(v24, v25);
      v27 = v40;
      v28 = v34;
      if (v26)
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_230044000, v24, v25, "OrderedDictionary array dictionary inconsistent", v29, 2u);
        MEMORY[0x231914180](v29, -1, -1);
      }

      (*(v28 + 8))(v22, v8);
      return (v21)(v27, 1, 1, v8);
    }

    else
    {
      v30 = v37;
      sub_23030FDA8();
      (*(v38 + 8))(v30, v5);
      v31 = v40;
      v33(v40, v39, v8);
      return (v21)(v31, 0, 1, v8);
    }
  }
}

void (*OrderedDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  v7[1] = v3;
  v9 = sub_2303104C8();
  v8[2] = v9;
  v10 = *(v9 - 8);
  v8[3] = v10;
  v11 = *(v10 + 64);
  v12 = v6;
  if (v6)
  {
    v8[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(*(v10 + 64));
    v13 = malloc(v11);
  }

  v8[5] = v13;
  v14 = *(a3 + 16);
  v8[6] = v14;
  v15 = *(v14 - 8);
  v16 = v15;
  v8[7] = v15;
  v17 = *(v15 + 64);
  if (v12)
  {
    v8[8] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v8[8] = malloc(*(v15 + 64));
    v18 = malloc(v17);
  }

  v8[9] = v18;
  (*(v16 + 16))();
  sub_23030F728();
  return sub_23024AF30;
}

void sub_23024AF30(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[8];
  v4 = (*a1)[9];
  if (a2)
  {
    v5 = v2[7];
    v11 = v2[6];
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[2];
    v9 = v2[3];
    v10 = *v2;
    (*(v9 + 16))(v7, v6, v8);
    (*(v5 + 32))(v3, v4, v11);
    OrderedDictionary.subscript.setter(v7, v3, v10);
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v7 = v2[4];
    v6 = v2[5];
    OrderedDictionary.subscript.setter(v6, v4, *v2);
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t OrderedDictionary.values.getter()
{
  sub_23030FDE8();

  swift_getWitnessTable();
  v0 = sub_23030FB78();

  return v0;
}

uint64_t sub_23024B108@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  v4 = sub_2303104C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  sub_23030F728();
  v8 = *(a1 - 8);
  if ((*(v8 + 48))(v7, 1, a1) == 1)
  {
    (*(v5 + 8))(v7, v4);
    if (qword_27DB13CB8 != -1)
    {
      swift_once();
    }

    v9 = sub_23030EF48();
    __swift_project_value_buffer(v9, qword_27DB181A8);
    v10 = sub_23030EF38();
    v11 = sub_230310298();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_230044000, v10, v11, "OrderedDictionary unknown key", v12, 2u);
      MEMORY[0x231914180](v12, -1, -1);
    }

    v13 = 1;
  }

  else
  {
    (*(v8 + 32))(a2, v7, a1);
    v13 = 0;
  }

  return (*(v8 + 56))(a2, v13, 1, a1);
}

Swift::Void __swiftcall OrderedDictionary.removeAll()()
{
  sub_23030FDE8();
  sub_23030FDD8();
  sub_23030F6F8();
  sub_23030F6E8();
}

uint64_t OrderedDictionary.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v38 = sub_2303104C8();
  v10 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v28 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v39 = a4;
  OrderedDictionary.init()(a2, a3, a4, &v40);
  v36 = v40;
  v41 = v40;
  if (sub_23030FD78())
  {
    v19 = 0;
    v35 = a2;
    *&v36 = v13 + 16;
    v20 = *(TupleTypeMetadata2 + 48);
    v33 = a2 - 8;
    v34 = v20;
    v31 = (v10 + 8);
    v32 = a3 - 8;
    v29 = a5;
    v30 = (v13 + 8);
    while (1)
    {
      v21 = sub_23030FD58();
      sub_23030FD08();
      if (v21)
      {
        (*(v13 + 16))(v18, a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v19, TupleTypeMetadata2);
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_2303108C8();
        if (v28 != 8)
        {
          __break(1u);
          return result;
        }

        *&v40 = result;
        (*v36)(v18, &v40, TupleTypeMetadata2);
        swift_unknownObjectRelease();
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_10:
          __break(1u);
LABEL_11:

          v27 = v41;
          a5 = v29;
          goto LABEL_13;
        }
      }

      v23 = *(TupleTypeMetadata2 + 48);
      (*(*(v35 - 8) + 32))(v16, v18, v35);
      (*(*(a3 - 8) + 32))(&v16[v23], &v18[v34], a3);
      v24 = type metadata accessor for OrderedDictionary();
      v25 = v37;
      OrderedDictionary.updateValue(_:forKey:)(&v16[v23], v16, v24, v37);
      (*v31)(v25, v38);
      (*v30)(v16, TupleTypeMetadata2);
      ++v19;
      if (v22 == sub_23030FD78())
      {
        goto LABEL_11;
      }
    }
  }

  v27 = v36;
LABEL_13:
  *a5 = v27;
  return result;
}

uint64_t OrderedDictionary.description.getter()
{
  sub_23030FDE8();

  swift_getWitnessTable();
  sub_23030FB78();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  sub_2300B0FA8();
  v0 = sub_23030F7C8();
  v2 = v1;

  MEMORY[0x231911790](v0, v2);

  MEMORY[0x231911790](23818, 0xE200000000000000);
  return 2651;
}

void sub_23024B8D8(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, void *a4@<X8>)
{
  v23[2] = a3;
  v24 = a4;
  v6 = sub_2303104C8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v23 - v9;
  v11 = *(a2 - 8);
  MEMORY[0x28223BE20](v8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = a1;
  sub_23030F728();
  if ((*(v11 + 48))(v10, 1, a2) == 1)
  {
    v14 = v24;
    (*(v7 + 8))(v10, v6);
    if (qword_27DB13CB8 != -1)
    {
      swift_once();
    }

    v15 = sub_23030EF48();
    __swift_project_value_buffer(v15, qword_27DB181A8);
    v16 = sub_23030EF38();
    v17 = sub_230310298();
    v18 = v14;
    if (os_log_type_enabled(v16, v17))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_230044000, v16, v17, "OrderedDictionary unknown key", v19, 2u);
      MEMORY[0x231914180](v19, -1, -1);
    }

    *v18 = 0;
    v18[1] = 0;
  }

  else
  {
    (*(v11 + 32))(v13, v10, a2);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_230311008();
    MEMORY[0x231911790](8250, 0xE200000000000000);
    sub_230311008();
    v20 = v25;
    v21 = v26;
    (*(v11 + 8))(v13, a2);
    v22 = v24;
    *v24 = v20;
    v22[1] = v21;
  }
}

void OrderedDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 24);
  v6 = sub_2303104C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  sub_23030FE28();
  sub_23030F728();
  v10 = *(v5 - 8);
  if ((*(v10 + 48))(v9, 1, v5) == 1)
  {
    (*(v7 + 8))(v9, v6);
    if (qword_27DB13CB8 != -1)
    {
      swift_once();
    }

    v11 = sub_23030EF48();
    __swift_project_value_buffer(v11, qword_27DB181A8);
    v12 = MEMORY[0x277D84F90];
    sub_23008C5BC(MEMORY[0x277D84F90]);
    sub_23008C5BC(v12);
    sub_230166680("OrderedDictionary unknown key", 29, 2);
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(a2, v9, v5);
  }
}

uint64_t sub_23024BDD4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_23024BE5C@<X0>(uint64_t *a1@<X8>)
{
  result = OrderedDictionary.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_23024BE84(uint64_t *a1, uint64_t *a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v12 = *(TupleTypeMetadata2 - 8);
  v8[5] = v12;
  if (v6)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v14 = v13;
  v8[6] = v13;
  v15 = sub_23024C090(v8, *a2, a3);
  v17 = v16;
  v8[7] = v15;
  (*(*(v10 - 8) + 16))(v14);
  (*(*(v9 - 8) + 16))(v14 + *(TupleTypeMetadata2 + 48), v17, v9);
  return sub_23024C018;
}

void sub_23024C018(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_23024C090(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v7 = *(TupleTypeMetadata2 - 8);
  a1[1] = v7;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  OrderedDictionary.subscript.getter(v8, v8 + *(TupleTypeMetadata2 + 48), a2, a3);
  return sub_2301E2990;
}

uint64_t sub_23024C184()
{
  swift_getWitnessTable();

  return sub_230310028();
}

uint64_t sub_23024C278(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_23024C300(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_23024C378(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_23024C3CC()
{
  swift_getWitnessTable();
  v0 = sub_23024C640();

  return v0;
}

uint64_t sub_23024C438()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_23030F7F8();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_2303101D8();
  result = sub_23030F7F8();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_23024C55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_23030F7F8();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t NSManagedObjectContext.rem_performAndWait<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v21 = a4;
  v22 = sub_2303104C8();
  v9 = *(v22 - 8);
  v10 = MEMORY[0x28223BE20](v22);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  v15 = *(a3 - 8);
  (*(v15 + 56))(&v21 - v13, 1, 1, a3);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = v14;
  v16[4] = a1;
  v16[5] = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_23024CBD4;
  *(v17 + 24) = v16;
  aBlock[4] = sub_23005FEB4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23005FEDC;
  aBlock[3] = &block_descriptor_17;
  v18 = _Block_copy(aBlock);

  [v5 performBlockAndWait_];
  _Block_release(v18);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v20 = v22;
    (*(v9 + 16))(v12, v14, v22);
    result = (*(v15 + 48))(v12, 1, a3);
    if (result != 1)
    {
      (*(v15 + 32))(v21, v12, a3);
      (*(v9 + 8))(v14, v20);
    }
  }

  __break(1u);
  return result;
}

{
  v22 = a2;
  v21 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v6 = sub_230311408();
  v7 = sub_2303104C8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = *(v6 - 8);
  (*(v14 + 56))(&v20 - v12, 1, 1, v6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = v13;
  v16 = v22;
  v15[4] = a1;
  v15[5] = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_23024D084;
  *(v17 + 24) = v15;
  aBlock[4] = sub_23005FF0C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23005FEDC;
  aBlock[3] = &block_descriptor_13_1;
  v18 = _Block_copy(aBlock);

  [aBlock[7] performBlockAndWait_];
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 16))(v11, v13, v7);
    result = (*(v14 + 48))(v11, 1, v6);
    if (result != 1)
    {
      sub_23004B988(v6, aBlock, v21);
      (*(v8 + 8))(v13, v7);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23024CAB4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_2303104C8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  a2(v9);
  (*(*(a4 - 8) + 56))(v11, 0, 1, a4);
  return (*(v8 + 40))(a1, v11, v7);
}

uint64_t sub_23024CEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v8 = sub_230311408();
  v9 = sub_2303104C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14[-v11];
  v15 = a4;
  v16 = a2;
  v17 = a3;
  sub_230134650(sub_23024D090, &v14[-v11]);
  (*(*(v8 - 8) + 56))(v12, 0, 1, v8);
  return (*(v10 + 40))(a1, v12, v9);
}

uint64_t sub_23024D090(void *a1)
{
  result = (*(v1 + 24))();
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t sub_23024D0D0(uint64_t a1)
{
  v41 = sub_23030EBB8();
  v3 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_2303106D8();
    result = MEMORY[0x277D84F90];
    if (!v5)
    {
      return result;
    }

    v49 = MEMORY[0x277D84F90];
    sub_2303109B8();
    result = sub_230310688();
    v46 = result;
    v47 = v7;
    v48 = 1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v49 = MEMORY[0x277D84F90];
  sub_2303109B8();
  result = sub_230310658();
  v8 = *(a1 + 36);
  v46 = result;
  v47 = v8;
  v48 = 0;
LABEL_7:
  v9 = 0;
  v37 = v5;
  v38 = (v3 + 8);
  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v10 = a1;
  }

  v35 = a1 + 56;
  v36 = v10;
  v33[1] = v1;
  v34 = a1 + 64;
  while (v9 < v5)
  {
    if (__OFADD__(v9++, 1))
    {
      goto LABEL_35;
    }

    v13 = v46;
    v43 = v47;
    v42 = v48;
    sub_230270864(v46, v47, v48, a1);
    v15 = v14;
    v16 = type metadata accessor for REMObjectID_Codable();
    v17 = objc_allocWithZone(v16);
    v18 = v15;
    v19 = [v18 uuid];
    v20 = v40;
    sub_23030EBA8();

    v21 = sub_23030EB88();
    (*v38)(v20, v41);
    v22 = [v18 entityName];
    if (!v22)
    {
      _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v22 = sub_23030F8B8();
    }

    v45.receiver = v17;
    v45.super_class = v16;
    objc_msgSendSuper2(&v45, sel_initWithUUID_entityName_, v21, v22);

    sub_230310988();
    sub_2303109C8();
    sub_2303109D8();
    result = sub_230310998();
    if (v39)
    {
      if (!v42)
      {
        goto LABEL_39;
      }

      if (sub_2303106A8())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v5 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15560);
      v11 = sub_23030FF68();
      sub_230310738();
      result = v11(v44, 0);
      if (v9 == v5)
      {
LABEL_32:
        sub_2300EB170(v46, v47, v48);
        return v49;
      }
    }

    else
    {
      v23 = v43;
      if (v42)
      {
        goto LABEL_40;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      v24 = 1 << *(a1 + 32);
      if (v13 >= v24)
      {
        goto LABEL_36;
      }

      v25 = v13 >> 6;
      v26 = *(v35 + 8 * (v13 >> 6));
      if (((v26 >> v13) & 1) == 0)
      {
        goto LABEL_37;
      }

      if (*(a1 + 36) != v43)
      {
        goto LABEL_38;
      }

      v27 = v26 & (-2 << (v13 & 0x3F));
      if (v27)
      {
        v24 = __clz(__rbit64(v27)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v25 << 6;
        v29 = v25 + 1;
        v30 = (v34 + 8 * v25);
        while (v29 < (v24 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_2300EB170(v13, v43, 0);
            v24 = __clz(__rbit64(v31)) + v28;
            goto LABEL_31;
          }
        }

        result = sub_2300EB170(v13, v43, 0);
      }

LABEL_31:
      v46 = v24;
      v47 = v23;
      v48 = 0;
      v5 = v37;
      if (v9 == v37)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_23024D53C()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_23024D660()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_23024D794()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

double static REMRemindersListDataView.fetchCustomSmartList(store:smartList:sortingStyle:showCompleted:countCompleted:remindersPrefetch:fetchSubtasks:shouldFetchManualOrderingID:diffingAgainst:)@<D0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, char *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v50 = a5;
  v51 = a8;
  v53 = a1;
  v49 = a9;
  v52 = a10;
  v15 = type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Parameters(0);
  v16 = (v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a3) = *a3;
  v19 = *a7;
  v20 = objc_allocWithZone(type metadata accessor for REMSmartList_Codable());
  v21 = a2;
  v22 = REMSmartList_Codable.init(_:)(v21);
  sub_2302706F4(a4, &v18[v16[8]], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  sub_2302706F4(a6, &v18[v16[10]], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  *v18 = v22;
  v18[8] = a3;
  v23 = v51;
  v18[v16[9]] = v50;
  v18[v16[11]] = v19;
  v18[v16[12]] = v23;
  v24 = objc_allocWithZone(type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation());
  v25 = [v24 initWithFetchResultTokenToDiffAgainst_];
  v26 = v74;
  sub_2300BD6E0(v25, v18, &v65);
  if (v26)
  {
    sub_230270804(v18, type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Parameters);
  }

  else
  {
    v53 = v21;
    v74 = 0;

    v58 = v70;
    v59 = v71;
    v60 = v72;
    v55[0] = v65;
    v55[1] = v66;
    v55[2] = v67;
    v61 = v73;
    v56 = v68;
    v57 = v69;
    v28 = *(&v70 + 1);
    v29 = v71;
    v54[0] = BYTE8(v66);
    *v62 = v65;
    *&v62[8] = *(v55 + 8);
    *&v62[24] = WORD4(v66);
    v63 = v67;
    *v64 = *(&v70 + 1);
    *&v64[8] = v71;
    *&v64[24] = v72;

    v30 = v28;
    sub_2300E0488(v29);
    if (qword_280C9B460 != -1)
    {
      swift_once();
    }

    v31 = sub_23030EF48();
    __swift_project_value_buffer(v31, qword_280C989C8);
    v32 = v53;
    sub_2301A7A88(v62, v54);
    v33 = sub_23030EF38();
    v34 = sub_2303102A8();

    v35 = os_log_type_enabled(v33, v34);
    v36 = v49;
    if (v35)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412546;
      v39 = [v32 objectID];
      *(v37 + 4) = v39;
      *v38 = v39;
      *(v37 + 12) = 2048;
      *(v37 + 14) = *(*v62 + 16);
      sub_2301A7AE4(v62);
      _os_log_impl(&dword_230044000, v33, v34, "DATAVIEW RESULT {name: REMRemindersListDataView_CustomSmartListInvocation, smartList.objectID: %@, reminder.count: %ld}", v37, 0x16u);
      sub_230061918(v38, &qword_27DB15000);
      MEMORY[0x231914180](v38, -1, -1);
      MEMORY[0x231914180](v37, -1, -1);
    }

    else
    {
      sub_2301A7AE4(v62);
    }

    sub_230270804(v18, type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Parameters);
    v40 = v56;
    v41 = v57;
    v42 = v58;
    v43 = v61;
    v44 = v61;

    sub_230061918(v55, &qword_27DB14FF8);
    v45 = *v64;
    *(v36 + 32) = v63;
    *(v36 + 48) = v45;
    *(v36 + 64) = *&v64[16];
    v46 = *&v64[32];
    result = *v62;
    v47 = *&v62[16];
    *v36 = *v62;
    *(v36 + 16) = v47;
    *(v36 + 80) = v46;
    *(v36 + 88) = v40;
    *(v36 + 104) = v41;
    *(v36 + 120) = v42;
    *(v36 + 128) = v43;
  }

  return result;
}

uint64_t REMRemindersListDataView.FetchConfiguration.init(sortingStyle:showCompleted:countCompleted:remindersPrefetch:fetchSubtasks:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X4>, _BYTE *a6@<X8>)
{
  v10 = *a5;
  *a6 = *a1;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  sub_23027079C(a2, &a6[Configuration[5]], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  a6[Configuration[6]] = a3;
  result = sub_23027079C(a4, &a6[Configuration[7]], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  a6[Configuration[8]] = v10;
  return result;
}

double static REMRemindersListDataView.fetchList_Sections(store:list:configuration:diffingAgainst:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v31 = a3;
  v32 = a4;
  v33 = a1;
  v30 = a5;
  v6 = type metadata accessor for REMRemindersListDataView.ListSectionsInvocation.Parameters(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for REMList_Codable();
  v11 = objc_allocWithZone(v10);
  v12 = [a2 store];
  v13 = [a2 account];
  v14 = [a2 storage];
  v47.receiver = v11;
  v47.super_class = v10;
  v15 = objc_msgSendSuper2(&v47, sel_initWithStore_account_storage_, v12, v13, v14);

  v16 = v15;
  v17 = [a2 parentList];
  [v16 setParentList_];

  sub_2302706F4(v31, v9 + *(v7 + 28), type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  *v9 = v16;
  v18 = objc_allocWithZone(type metadata accessor for REMRemindersListDataView.ListSectionsInvocation());
  v19 = [v18 initWithFetchResultTokenToDiffAgainst_];
  v20 = v48;
  sub_2300C1B0C(v19, v9, v42);
  sub_230270804(v9, type metadata accessor for REMRemindersListDataView.ListSectionsInvocation.Parameters);

  if (!v20)
  {
    v39 = v44;
    v40 = v45;
    v22 = v46;
    v41 = v46;
    v35 = v42[0];
    v36 = v42[1];
    v37 = v42[2];
    v38 = v43;
    v23 = *(&v43 + 1);
    v24 = v44;
    v25 = v45;
    sub_2301A7C3C(&v35, &v34);
    v26 = v22;

    sub_230061918(&v35, &qword_27DB165A0);
    v27 = v36;
    v28 = v30;
    *v30 = v35;
    v28[1] = v27;
    result = *&v37;
    v28[2] = v37;
    *(v28 + 6) = v38;
    *(v28 + 7) = v23;
    v28[4] = v24;
    v28[5] = v25;
    *(v28 + 12) = v22;
  }

  return result;
}

double static REMRemindersListDataView.fetchCustomSmartList_Sections(store:smartList:shouldFetchManualOrderingID:configuration:diffingAgainst:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a1;
  v11 = type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_allocWithZone(type metadata accessor for REMSmartList_Codable());
  v16 = REMSmartList_Codable.init(_:)(a2);
  sub_2302706F4(a4, &v14[*(v12 + 32)], type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  *v14 = v16;
  v14[8] = a3;
  v17 = objc_allocWithZone(type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsInvocation());
  v18 = [v17 initWithFetchResultTokenToDiffAgainst_];
  v19 = v46;
  sub_2300C10B0(v18, v14, v41);
  sub_230270804(v14, type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters);

  if (!v19)
  {
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v21 = v45;
    v40 = v45;
    v35 = v41[3];
    v36 = v41[4];
    v33 = v41[1];
    v34 = v41[2];
    v32 = v41[0];
    v22 = *(&v42 + 1);
    v23 = v43;
    v24 = v44;
    sub_2301A7B8C(&v32, &v31);
    v25 = v21;

    sub_230061918(&v32, &qword_27DB16580);
    v26 = v35;
    v27 = v36;
    *(a6 + 32) = v34;
    *(a6 + 48) = v26;
    *(a6 + 64) = v27;
    v28 = v37;
    result = *&v32;
    v29 = v33;
    *a6 = v32;
    *(a6 + 16) = v29;
    *(a6 + 80) = v28;
    *(a6 + 88) = v22;
    *(a6 + 96) = v23;
    *(a6 + 112) = v24;
    *(a6 + 128) = v21;
  }

  return result;
}

double static REMRemindersListDataView.fetchListRepresentationOfTemplate_Sections(store:templateObjectID:configuration:diffingAgainst:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a4;
  v40 = a1;
  v35 = a5;
  v7 = sub_23030EBB8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a3;
  v37 = a3[1];
  v38 = v11;
  v36 = a3[2];
  v12 = type metadata accessor for REMObjectID_Codable();
  v13 = objc_allocWithZone(v12);
  v14 = a2;
  v15 = [v14 uuid];
  sub_23030EBA8();

  v16 = sub_23030EB88();
  (*(v8 + 8))(v10, v7);
  v17 = [v14 entityName];
  if (!v17)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v17 = sub_23030F8B8();
  }

  v56.receiver = v13;
  v56.super_class = v12;
  v18 = objc_msgSendSuper2(&v56, sel_initWithUUID_entityName_, v16, v17);

  v19 = objc_allocWithZone(type metadata accessor for REMRemindersListDataView.TemplateSectionsInvocation());
  v20 = [v19 initWithFetchResultTokenToDiffAgainst_];
  v21 = v20;
  if (v36)
  {
    v22 = 0x10000;
  }

  else
  {
    v22 = 0;
  }

  v23 = v57;
  sub_2300C2558(v20, v18, v38 | (v37 << 8) | v22, v51);

  if (!v23)
  {
    v47 = v52;
    v48 = v53;
    v49 = v54;
    v25 = v55;
    v50 = v55;
    v45 = v51[3];
    v46 = v51[4];
    v43 = v51[1];
    v44 = v51[2];
    v42 = v51[0];
    v26 = *(&v52 + 1);
    v27 = v53;
    v28 = v54;
    sub_23019E8E0(&v42, &v41);
    v29 = v25;

    sub_230061918(&v42, &qword_27DB164D0);
    v30 = v45;
    v31 = v46;
    v32 = v35;
    *(v35 + 32) = v44;
    *(v32 + 48) = v30;
    *(v32 + 64) = v31;
    v33 = v47;
    result = *&v42;
    v34 = v43;
    *v32 = v42;
    *(v32 + 16) = v34;
    *(v32 + 80) = v33;
    *(v32 + 88) = v26;
    *(v32 + 96) = v27;
    *(v32 + 112) = v28;
    *(v32 + 128) = v25;
  }

  return result;
}

double static REMRemindersListDataView.fetchListRepresentationOfTemplate(with:store:sortingStyle:fetchSubtasks:fetchManualOrderingID:diffingAgainst:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v48 = a6;
  v49 = a5;
  v50 = a2;
  v46 = a7;
  v10 = sub_23030EBB8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *a3;
  v14 = *a4;
  v15 = type metadata accessor for REMObjectID_Codable();
  v16 = objc_allocWithZone(v15);
  v17 = a1;
  v18 = [v17 uuid];
  sub_23030EBA8();

  v19 = sub_23030EB88();
  (*(v11 + 8))(v13, v10);
  v20 = [v17 entityName];
  if (!v20)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v20 = sub_23030F8B8();
  }

  v63.receiver = v16;
  v63.super_class = v15;
  v21 = objc_msgSendSuper2(&v63, sel_initWithUUID_entityName_, v19, v20);

  v22 = objc_allocWithZone(type metadata accessor for REMRemindersListDataView.TemplateInvocation());
  v23 = [v22 initWithFetchResultTokenToDiffAgainst_];
  v24 = v23;
  if (v49)
  {
    v25 = 0x10000;
  }

  else
  {
    v25 = 0;
  }

  v26 = v64;
  sub_2300C2F8C(v23, v21, v47 | (v14 << 8) | v25, v61);
  if (v26)
  {
  }

  else
  {

    v57 = v61[5];
    v58 = v61[6];
    v59 = v61[7];
    v60 = v62;
    v55 = v61[3];
    v56 = v61[4];
    v53 = v61[1];
    v54 = v61[2];
    v52 = v61[0];
    sub_23019E830(&v52, v51);
    if (qword_280C9B460 != -1)
    {
      swift_once();
    }

    v28 = sub_23030EF48();
    __swift_project_value_buffer(v28, qword_280C989C8);
    sub_23019E830(&v52, v51);
    v29 = v17;
    sub_23019E830(&v52, v51);
    v30 = sub_23030EF38();
    v31 = sub_2303102A8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412546;
      *(v32 + 4) = v29;
      *v33 = v29;
      *(v32 + 12) = 2048;
      v34 = *(*(&v52 + 1) + 16);
      v35 = v29;
      sub_23019E88C(&v52);
      *(v32 + 14) = v34;
      sub_23019E88C(&v52);
      _os_log_impl(&dword_230044000, v30, v31, "DATAVIEW RESULT {name: REMRemindersListDataView_TemplateInvocation, templateObjectID: %@, reminder.count: %ld}", v32, 0x16u);
      sub_230061918(v33, &qword_27DB15000);
      MEMORY[0x231914180](v33, -1, -1);
      MEMORY[0x231914180](v32, -1, -1);
    }

    else
    {
      sub_23019E88C(&v52);
      sub_23019E88C(&v52);
    }

    v36 = *(&v57 + 1);
    v37 = v58;
    v39 = v59;
    v38 = v60;
    v40 = v60;

    sub_230061918(&v52, &qword_27DB164C0);
    v41 = v55;
    v42 = v56;
    v43 = v46;
    *(v46 + 32) = v54;
    *(v43 + 48) = v41;
    *(v43 + 64) = v42;
    v44 = v57;
    result = *&v52;
    v45 = v53;
    *v43 = v52;
    *(v43 + 16) = v45;
    *(v43 + 80) = v44;
    *(v43 + 88) = v36;
    *(v43 + 96) = v37;
    *(v43 + 112) = v39;
    *(v43 + 128) = v38;
  }

  return result;
}

uint64_t sub_23024EA20()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_280C989C8);
  v1 = __swift_project_value_buffer(v0, qword_280C989C8);
  if (qword_280C9B438 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1768);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

ReminderKitInternal::REMRemindersListDataView::SortingDirection_optional __swiftcall REMRemindersListDataView.SortingDirection.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void REMRemindersListDataView.SortingStyle.init(remSortingStyle:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v6 = v5;
  if (v4 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = sub_230311048();

  if (v9)
  {

LABEL_8:
    v10 = 0x80;
    goto LABEL_9;
  }

  v11 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v13 = v12;
  if (v11 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v13 == v14)
  {

    v10 = -127;
  }

  else
  {
    v16 = sub_230311048();

    if (v16)
    {

      v10 = -127;
    }

    else
    {
      v17 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v19 = v18;
      if (v17 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v19 == v20)
      {

        v10 = 0;
      }

      else
      {
        v21 = sub_230311048();

        if (v21)
        {

          v10 = 0;
        }

        else
        {
          v22 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
          v24 = v23;
          if (v22 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v24 == v25)
          {

            v10 = 1;
          }

          else
          {
            v26 = sub_230311048();

            if (v26)
            {

              v10 = 1;
            }

            else
            {
              v27 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
              v29 = v28;
              if (v27 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v29 == v30)
              {

                v10 = 32;
              }

              else
              {
                v31 = sub_230311048();

                if (v31)
                {

                  v10 = 32;
                }

                else
                {
                  v32 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
                  v34 = v33;
                  if (v32 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v34 == v35)
                  {

                    v10 = 33;
                  }

                  else
                  {
                    v36 = sub_230311048();

                    if (v36)
                    {

                      v10 = 33;
                    }

                    else
                    {
                      v37 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
                      v39 = v38;
                      if (v37 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v39 == v40)
                      {

                        v10 = 64;
                      }

                      else
                      {
                        v41 = sub_230311048();

                        if (v41)
                        {

                          v10 = 64;
                        }

                        else
                        {
                          v42 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
                          v44 = v43;
                          if (v42 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v44 == v45)
                          {

                            v10 = 65;
                          }

                          else
                          {
                            v46 = sub_230311048();

                            if (v46)
                            {

                              v10 = 65;
                            }

                            else
                            {
                              v47 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
                              v49 = v48;
                              if (v47 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v49 == v50)
                              {

                                v10 = 96;
                              }

                              else
                              {
                                v51 = sub_230311048();

                                if (v51)
                                {

                                  v10 = 96;
                                }

                                else
                                {
                                  v52 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
                                  v54 = v53;
                                  if (v52 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v54 == v55)
                                  {

                                    v10 = 97;
                                  }

                                  else
                                  {
                                    v56 = sub_230311048();

                                    if (v56)
                                    {
                                      v10 = 97;
                                    }

                                    else
                                    {
                                      v10 = 0x80;
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
              }
            }
          }
        }
      }
    }
  }

LABEL_9:
  *a2 = v10;
}

void REMRemindersListDataView.SortingStyle.sortDirection.getter(char *a1@<X8>)
{
  v2 = *v1 & 1;
  if (*v1 < 0)
  {
    v2 = 2;
  }

  *a1 = v2;
}

void REMRemindersListDataView.SortingStyle.flipped()(char *a1@<X8>)
{
  v2 = *v1;
  v3 = v2 >> 5;
  if (v2)
  {
    v4 = 64;
  }

  else
  {
    v4 = 65;
  }

  if (v2)
  {
    v5 = 96;
  }

  else
  {
    v5 = 97;
  }

  if (v3 != 3)
  {
    v5 = *v1;
  }

  if (v3 != 2)
  {
    v4 = v5;
  }

  v6 = (v2 & 1) == 0;
  if (v2)
  {
    v7 = 32;
  }

  else
  {
    v7 = 33;
  }

  if (!v3)
  {
    v7 = v6;
  }

  if (v3 > 1)
  {
    v7 = v4;
  }

  *a1 = v7;
}

char *REMRemindersListDataView.SortingStyle.cloned(withSortingDirection:)@<X0>(char *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 >> 5;
  if (v4 >> 5 == 3)
  {
    LOBYTE(v4) = v3 | 0x60;
  }

  if (v5 == 2)
  {
    LOBYTE(v4) = v3 | 0x40;
  }

  if (v5)
  {
    v3 |= 0x20u;
  }

  if (v5 > 1)
  {
    v3 = v4;
  }

  *a2 = v3;
  return result;
}

uint64_t REMRemindersListDataView.SortingStyle.isEqualIgnoringDirection(_:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = v3 >> 5;
  if (v3 >> 5 <= 1)
  {
    if (v4)
    {
      if ((v2 & 0xE0) == 0x20)
      {
        return 1;
      }
    }

    else if (v2 < 0x20)
    {
      return 1;
    }
  }

  else if (v4 == 2)
  {
    if ((v2 & 0xE0) == 0x40)
    {
      return 1;
    }
  }

  else if (v4 == 3)
  {
    if ((v2 & 0xE0) == 0x60)
    {
      return 1;
    }
  }

  else if (v3 == 128)
  {
    if (v2 == 128)
    {
      return 1;
    }
  }

  else if (v2 == 129)
  {
    return 1;
  }

  return 0;
}

id REMRemindersListDataView.SortingStyle.remSortingStyle.getter()
{
  v1 = *v0;
  v2 = v1 >> 5;
  if (v1 >> 5 <= 1)
  {
    v5 = MEMORY[0x277D44BE8];
    v6 = (v1 & 1) == 0;
    v7 = MEMORY[0x277D44C00];
    if (!v6)
    {
      v5 = MEMORY[0x277D44BE0];
      v7 = MEMORY[0x277D44BF8];
    }

    if (!v2)
    {
      v7 = v5;
    }
  }

  else
  {
    if (v2 == 2)
    {
      v3 = MEMORY[0x277D44BD0];
      v4 = MEMORY[0x277D44BC8];
LABEL_11:
      if (v1)
      {
        v7 = v4;
      }

      else
      {
        v7 = v3;
      }

      return *v7;
    }

    if (v2 == 3)
    {
      v3 = MEMORY[0x277D44C08];
      v4 = MEMORY[0x277D44C10];
      goto LABEL_11;
    }

    if (v1 == 128)
    {
      v7 = MEMORY[0x277D44BD8];
    }

    else
    {
      v7 = MEMORY[0x277D44BF0];
    }
  }

  return *v7;
}

uint64_t REMRemindersListDataView.SortingStyle.hash(into:)()
{
  v1 = *v0;
  v2 = v1 >> 5;
  if (v1 >> 5 <= 1)
  {
    if (v2)
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
    v3 = 4;
    goto LABEL_10;
  }

  if (v2 == 3)
  {
    v3 = 5;
LABEL_10:
    MEMORY[0x2319130E0](v3);
    v4 = v1 & 1;
    return MEMORY[0x2319130E0](v4);
  }

  v4 = v1 != 128;
  return MEMORY[0x2319130E0](v4);
}

uint64_t REMRemindersListDataView.SortingStyle.hashValue.getter()
{
  v1 = *v0;
  sub_230311358();
  v2 = v1 >> 5;
  if (v1 >> 5 <= 1)
  {
    if (v2)
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
    v3 = 4;
    goto LABEL_10;
  }

  if (v2 == 3)
  {
    v3 = 5;
LABEL_10:
    MEMORY[0x2319130E0](v3);
    v4 = v1 & 1;
    goto LABEL_11;
  }

  v4 = v1 != 128;
LABEL_11:
  MEMORY[0x2319130E0](v4);
  return sub_2303113A8();
}

uint64_t REMRemindersListDataView.SortingStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB181C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230270E58();
  sub_230311428();
  if (!v2)
  {
    v10[30] = 0;
    sub_230270EAC();
    sub_230310CE8();
    if (v11 > 2u)
    {
      if (v11 == 3)
      {
        v10[24] = 1;
        sub_230270F00();
        sub_230310CE8();
        (*(v6 + 8))(v8, v5);
        *a2 = v10[25] | 0x20;
      }

      else if (v11 == 4)
      {
        v10[26] = 1;
        sub_230270F00();
        sub_230310CE8();
        (*(v6 + 8))(v8, v5);
        *a2 = v10[27] | 0x40;
      }

      else
      {
        v10[28] = 1;
        sub_230270F00();
        sub_230310CE8();
        (*(v6 + 8))(v8, v5);
        *a2 = v10[29] | 0x60;
      }
    }

    else if (v11)
    {
      if (v11 == 1)
      {
        (*(v6 + 8))(v8, v5);
        *a2 = -127;
      }

      else
      {
        v10[14] = 1;
        sub_230270F00();
        sub_230310CE8();
        (*(v6 + 8))(v8, v5);
        *a2 = v10[15];
      }
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      *a2 = 0x80;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t REMRemindersListDataView.SortingStyle.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB181C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230270E58();
  sub_230311448();
  v9 = v8 >> 5;
  if (v8 >> 5 <= 1)
  {
    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }
  }

  else if (v9 == 2)
  {
    v10 = 4;
  }

  else
  {
    if (v9 != 3)
    {
      v14 = v8 != 128;
      v13 = 0;
      sub_230270F54();
LABEL_12:
      sub_230310DF8();
      return (*(v5 + 8))(v7, v4);
    }

    v10 = 5;
  }

  v14 = v10;
  v13 = 0;
  sub_230270F54();
  sub_230310DF8();
  if (!v2)
  {
    v14 = v8 & 1;
    v13 = 1;
    sub_230270FA8();
    goto LABEL_12;
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_23024FB08()
{
  v1 = *v0;
  sub_230311358();
  v2 = v1 >> 5;
  if (v1 >> 5 <= 1)
  {
    if (v2)
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
    v3 = 4;
    goto LABEL_10;
  }

  if (v2 == 3)
  {
    v3 = 5;
LABEL_10:
    MEMORY[0x2319130E0](v3);
    v4 = v1 & 1;
    goto LABEL_11;
  }

  v4 = v1 != 128;
LABEL_11:
  MEMORY[0x2319130E0](v4);
  return sub_2303113A8();
}

ReminderKitInternal::REMRemindersListDataView::FetchSubtasks_optional __swiftcall REMRemindersListDataView.FetchSubtasks.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230310C08();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t REMRemindersListDataView.FetchSubtasks.rawValue.getter()
{
  v1 = 28271;
  if (*v0 != 1)
  {
    v1 = 0x746E756F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6710895;
  }
}

uint64_t sub_23024FC5C()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_23024FCE8()
{
  sub_23030F9C8();
}

uint64_t sub_23024FD60()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

void sub_23024FDF4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE200000000000000;
  v5 = 28271;
  if (v2 != 1)
  {
    v5 = 0x746E756F63;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6710895;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_23024FEEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 28271;
  if (v2 != 1)
  {
    v4 = 0x746E756F63;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 6710895;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28271;
  if (*a2 != 1)
  {
    v8 = 0x746E756F63;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6710895;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_230311048();
  }

  return v11 & 1;
}

uint64_t REMRemindersListDataView.ShowCompleted.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_23030EB58();
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB181D0);
  v19 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v22 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_230271378();
  v13 = v21;
  sub_230311428();
  if (!v13)
  {
    v14 = v5;
    v21 = v9;
    v16 = v19;
    v15 = v20;
    v26 = 0;
    sub_2302713CC();
    sub_230310CE8();
    if (v27 > 1u)
    {
      if (v27 == 2)
      {
        v24 = 1;
        sub_230271420(&qword_280C9B738, MEMORY[0x277CC9578]);
        sub_230310CE8();
        (*(v16 + 8))(v8, v6);
        (*(v18 + 32))(v11, v14, v3);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AA8);
        v25 = 2;
        sub_230235018();
        sub_230310CE8();
        (*(v16 + 8))(v8, v6);
        *v11 = v23;
      }
    }

    else
    {
      (*(v16 + 8))(v8, v6);
    }

    swift_storeEnumTagMultiPayload();
    sub_23027079C(v11, v15, type metadata accessor for REMRemindersListDataView.ShowCompleted);
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t REMRemindersListDataView.ShowCompleted.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_23030EB58();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB181D8);
  v24 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230271378();
  sub_230311448();
  sub_2302706F4(v2, v9, type metadata accessor for REMRemindersListDataView.ShowCompleted);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    LOBYTE(v25) = EnumCaseMultiPayload != 2;
    v26 = 0;
    sub_230271468();
    sub_230310DF8();
    return (*(v24 + 8))(v12, v10);
  }

  if (!EnumCaseMultiPayload)
  {
    v15 = v21;
    v14 = v22;
    (*(v21 + 32))(v6, v9, v22);
    LOBYTE(v25) = 2;
    v26 = 0;
    sub_230271468();
    v16 = v23;
    sub_230310DF8();
    if (!v16)
    {
      LOBYTE(v25) = 1;
      sub_230271420(&qword_280C9B760, MEMORY[0x277CC9578]);
      sub_230310DF8();
    }

    (*(v15 + 8))(v6, v14);
    return (*(v24 + 8))(v12, v10);
  }

  v17 = *v9;
  LOBYTE(v25) = 3;
  v26 = 0;
  sub_230271468();
  v18 = v23;
  sub_230310DF8();
  if (!v18)
  {
    v25 = v17;
    v26 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AA8);
    sub_2302350CC();
    sub_230310DF8();
  }

  (*(v24 + 8))(v12, v10);
}

uint64_t REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_2302508D8()
{
  v1 = *v0;
  v2 = 0x53676E6974726F73;
  v3 = 0x6D6F43746E756F63;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x6275536863746566;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x706D6F43776F6873;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2302509A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230281A84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302509CC(uint64_t a1)
{
  v2 = sub_2302714BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230250A08(uint64_t a1)
{
  v2 = sub_2302714BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.FetchConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB181E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302714BC();
  sub_230311448();
  v11[15] = *v3;
  v11[14] = 0;
  sub_230271510();
  sub_230310DF8();
  if (!v2)
  {
    Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
    v11[13] = 1;
    type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    sub_230271420(&qword_280C9A708, type metadata accessor for REMRemindersListDataView.ShowCompleted);
    sub_230310DF8();
    v11[12] = 2;
    sub_230310DB8();
    v11[11] = 3;
    type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    sub_230271420(&qword_280C9A570, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    sub_230310DF8();
    v11[10] = v3[*(Configuration + 32)];
    v11[9] = 4;
    sub_230271564();
    sub_230310DF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t REMRemindersListDataView.FetchConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v20 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  MEMORY[0x28223BE20](v20);
  v21 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  MEMORY[0x28223BE20](v23);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB181E8);
  v22 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = &v19 - v6;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  MEMORY[0x28223BE20](Configuration);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302714BC();
  v11 = v26;
  sub_230311428();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v22;
  v13 = v10;
  v14 = v24;
  v32 = 0;
  sub_2302715B8();
  sub_230310CE8();
  *v13 = v33;
  v31 = 1;
  sub_230271420(&qword_280C97C18, type metadata accessor for REMRemindersListDataView.ShowCompleted);
  sub_230310CE8();
  sub_23027079C(v5, &v13[Configuration[5]], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  v30 = 2;
  v13[Configuration[6]] = sub_230310CA8() & 1;
  v29 = 3;
  sub_230271420(&qword_280C97B20, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  v15 = v21;
  sub_230310CE8();
  v16 = v12;
  v17 = v26;
  sub_23027079C(v15, &v13[Configuration[7]], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  v27 = 4;
  sub_23027160C();
  sub_230310CE8();
  (*(v16 + 8))(v7, v25);
  v13[Configuration[8]] = v28;
  sub_2302706F4(v13, v14, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return sub_230270804(v13, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
}

uint64_t sub_230251248(uint64_t a1)
{
  v2 = sub_2302719CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230251284(uint64_t a1)
{
  v2 = sub_2302719CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2302512C0(uint64_t a1)
{
  v2 = sub_230271924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302512FC(uint64_t a1)
{
  v2 = sub_230271924();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230251338()
{
  v1 = 0x6C6562614C6C6C61;
  v2 = 6581857;
  if (*v0 != 2)
  {
    v2 = 29295;
  }

  if (*v0)
  {
    v1 = 0x736C6562614C6F6ELL;
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

uint64_t sub_2302513A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230281C58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302513CC(uint64_t a1)
{
  v2 = sub_23027187C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230251408(uint64_t a1)
{
  v2 = sub_23027187C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230251444(uint64_t a1)
{
  v2 = sub_230271978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230251480(uint64_t a1)
{
  v2 = sub_230271978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2302514BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x6564756C636E69 && a2 == 0xE700000000000000;
  if (v5 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6564756C637865 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_230251590(uint64_t a1)
{
  v2 = sub_2302718D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302515CC(uint64_t a1)
{
  v2 = sub_2302718D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.HashtagLabelPredicate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB181F0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB181F8);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18200);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18208);
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18210);
  v44 = *(v13 - 8);
  v45 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = *v1;
  v42 = v1[1];
  v17 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23027187C();
  sub_230311448();
  if (!v17)
  {
    v23 = v37;
    LOBYTE(v48) = 2;
    sub_230271924();
    v19 = v45;
    v20 = v15;
    sub_230310D48();
    v48 = v16;
    v47 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14938);
    sub_2301224F0(&qword_280C9B408);
    v24 = v38;
    v25 = v46;
    sub_230310DF8();
    if (v25)
    {
      (*(v23 + 8))(v43, v24);
    }

    else
    {
      v30 = v43;
      v48 = v42;
      v47 = 1;
      sub_230310DF8();
      (*(v23 + 8))(v30, v24);
    }

    return (*(v44 + 8))(v20, v19);
  }

  if (v17 == 1)
  {
    LOBYTE(v48) = 3;
    sub_2302718D0();
    v18 = v39;
    v19 = v45;
    v20 = v15;
    sub_230310D48();
    v48 = v16;
    v47 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14938);
    sub_2301224F0(&qword_280C9B408);
    v21 = v41;
    v22 = v46;
    sub_230310DF8();
    if (!v22)
    {
      v48 = v42;
      v47 = 1;
      sub_230310DF8();
    }

    (*(v40 + 8))(v18, v21);
    return (*(v44 + 8))(v20, v19);
  }

  v26 = v15;
  v27 = (v44 + 8);
  if (v16 | v42)
  {
    LOBYTE(v48) = 1;
    sub_230271978();
    v28 = v45;
    sub_230310D48();
    (*(v35 + 8))(v9, v36);
    return (*v27)(v26, v28);
  }

  else
  {
    LOBYTE(v48) = 0;
    sub_2302719CC();
    v31 = v45;
    sub_230310D48();
    (*(v33 + 8))(v12, v34);
    return (*v27)(v15, v31);
  }
}

uint64_t REMRemindersListDataView.HashtagLabelPredicate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18240);
  v49 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v51 = &v41 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18248);
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  MEMORY[0x28223BE20](v4);
  v50 = &v41 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18250);
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18258);
  v44 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18260);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - v14;
  v16 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_23027187C();
  v17 = v53;
  sub_230311428();
  if (!v17)
  {
    v18 = v11;
    v42 = v9;
    v19 = v8;
    v20 = v50;
    v21 = v51;
    v53 = v13;
    v22 = v52;
    v23 = sub_230310D08();
    v24 = (2 * *(v23 + 16)) | 1;
    v57 = v23;
    v58 = v23 + 32;
    v59 = 0;
    v60 = v24;
    v25 = sub_2300BBFD0();
    v26 = v15;
    if (v25 == 4 || v59 != v60 >> 1)
    {
      v30 = sub_230310918();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AE8);
      *v32 = &type metadata for REMRemindersListDataView.HashtagLabelPredicate;
      sub_230310C38();
      sub_2303108F8();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
      swift_willThrow();
      (*(v53 + 8))(v26, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v25 > 1u)
      {
        if (v25 == 2)
        {
          LOBYTE(v61) = 2;
          sub_230271924();
          sub_230310C28();
          v34 = v53;
          v45 = v15;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14938);
          LOBYTE(v56) = 0;
          sub_2301224F0(&qword_280C9B740);
          v35 = v47;
          sub_230310CE8();
          v38 = v20;
          v39 = v35;
          v27 = v61;
          v55 = 1;
          sub_230310CE8();
          (*(v48 + 8))(v38, v39);
          (*(v34 + 8))(v45, v12);
          swift_unknownObjectRelease();
          v29 = 0;
          v28 = v56;
        }

        else
        {
          LOBYTE(v61) = 3;
          sub_2302718D0();
          sub_230310C28();
          v36 = v53;
          v45 = v15;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14938);
          LOBYTE(v56) = 0;
          sub_2301224F0(&qword_280C9B740);
          v37 = v46;
          sub_230310CE8();
          v40 = v37;
          v27 = v61;
          v55 = 1;
          sub_230310CE8();
          (*(v49 + 8))(v21, v40);
          (*(v36 + 8))(v45, v12);
          swift_unknownObjectRelease();
          v28 = v56;
          v29 = 1;
        }
      }

      else if (v25)
      {
        LOBYTE(v61) = 1;
        sub_230271978();
        sub_230310C28();
        (*(v45 + 1))(v19, v43);
        (*(v53 + 8))(v15, v12);
        swift_unknownObjectRelease();
        v28 = 0;
        v29 = 2;
        v27 = 1;
      }

      else
      {
        LOBYTE(v61) = 0;
        sub_2302719CC();
        sub_230310C28();
        (*(v44 + 8))(v18, v42);
        (*(v53 + 8))(v15, v12);
        swift_unknownObjectRelease();
        v27 = 0;
        v28 = 0;
        v29 = 2;
      }

      *v22 = v27;
      *(v22 + 8) = v28;
      *(v22 + 16) = v29;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t REMRemindersListDataView.ReminderLite.init(objectID:isCompleted:subtaskCount:subtasks:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t REMRemindersListDataView.ReminderLite.init(objectID:isCompleted:subtasks:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v4 = *(a3 + 16);
  }

  else
  {
    v4 = 0;
  }

  *a4 = result;
  *(a4 + 8) = a2 & 1;
  *(a4 + 16) = v4;
  *(a4 + 24) = a3;
  return result;
}

uint64_t sub_2302525D8()
{
  v1 = 0x44497463656A626FLL;
  v2 = 0x436B736174627573;
  if (*v0 != 2)
  {
    v2 = 0x736B736174627573;
  }

  if (*v0)
  {
    v1 = 0x656C706D6F437369;
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

uint64_t sub_230252664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230281DBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23025268C(uint64_t a1)
{
  v2 = sub_230271A20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302526C8(uint64_t a1)
{
  v2 = sub_230271A20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.ReminderLite.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18268);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v16 = *(v1 + 8);
  v9 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230271A20();
  v10 = v8;
  sub_230311448();
  v18 = v10;
  v17 = 0;
  type metadata accessor for REMObjectID_Codable();
  sub_230271420(qword_280C9BFD8, type metadata accessor for REMObjectID_Codable);
  sub_230310DF8();

  if (!v2)
  {
    v11 = v14;
    LOBYTE(v18) = 1;
    sub_230310DB8();
    LOBYTE(v18) = 2;
    sub_230310DD8();
    v18 = v11;
    v17 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18270);
    sub_230271A74();
    sub_230310D98();
  }

  return (*(v5 + 8))(v7, v4);
}

void REMRemindersListDataView.ReminderLite.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18278);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230271A20();
  sub_230311428();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    type metadata accessor for REMObjectID_Codable();
    v14 = 0;
    sub_230271420(&qword_280C9C5D0, type metadata accessor for REMObjectID_Codable);
    sub_230310CE8();
    v9 = v15;
    LOBYTE(v15) = 1;
    v10 = sub_230310CA8();
    LOBYTE(v15) = 2;
    v13 = sub_230310CC8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18270);
    v14 = 3;
    sub_230271B4C();
    sub_230310C88();
    (*(v6 + 8))(v8, v5);
    v11 = v15;
    *a2 = v9;
    *(a2 + 8) = v10 & 1;
    *(a2 + 16) = v13;
    *(a2 + 24) = v11;

    v12 = v9;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

ReminderKitInternal::REMRemindersListDataView::CountByCompleted __swiftcall REMRemindersListDataView.CountByCompleted.init(completed:incomplete:)(Swift::Int completed, Swift::Int incomplete)
{
  *v2 = completed;
  v2[1] = incomplete;
  result.incomplete = incomplete;
  result.completed = completed;
  return result;
}

ReminderKitInternal::REMRemindersListDataView::CountByCompleted __swiftcall REMRemindersListDataView.CountByCompleted.init(reminders:)(Swift::OpaquePointer reminders)
{
  v2 = v1;
  v3 = *(reminders._rawValue + 2);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = reminders._rawValue + 32 * v6 + 32;
      v8 = *(v7 + 3);
      if (v7[8] == 1)
      {
        v9 = __OFADD__(v4++, 1);
        if (v9)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v9 = __OFADD__(v5++, 1);
        if (v9)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      if (v8)
      {
        break;
      }

LABEL_4:
      if (++v6 == v3)
      {
        goto LABEL_24;
      }
    }

    v10 = 0;
    v11 = *(v8 + 16);
    v12 = v8 + 40;
    v13 = v4;
    while (2)
    {
      v14 = (v12 + 32 * v10);
      v15 = v10;
      while (1)
      {
        if (v11 == v15)
        {
          v4 = v11 + v4 - v10;
          goto LABEL_4;
        }

        if (v15 >= v11)
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        if (__OFADD__(v15, 1))
        {
          goto LABEL_26;
        }

        v16 = *v14;
        if (v16 != 1)
        {
          break;
        }

        v14 += 32;
        ++v15;
        v9 = __OFADD__(v13++, 1);
        if (v9)
        {
          goto LABEL_27;
        }
      }

      v10 = v15 + 1;
      v4 = v13;
      v9 = __OFADD__(v5++, 1);
      if (!v9)
      {
        continue;
      }

      break;
    }

    __break(1u);
  }

  v5 = 0;
  v4 = 0;
LABEL_24:

  *v2 = v4;
  v2[1] = v5;
LABEL_30:
  result.incomplete = v16;
  result.completed = reminders._rawValue;
  return result;
}

double static REMRemindersListDataView.CountByCompleted.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_280C97BD8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_280C97BE0;
  *a1 = xmmword_280C97BE0;
  return result;
}

uint64_t sub_230252E20()
{
  if (*v0)
  {
    return 0x656C706D6F636E69;
  }

  else
  {
    return 0x6574656C706D6F63;
  }
}

uint64_t sub_230252E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C706D6F636E69 && a2 == 0xEA00000000006574)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_230252F50(uint64_t a1)
{
  v2 = sub_230271C24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230252F8C(uint64_t a1)
{
  v2 = sub_230271C24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.CountByCompleted.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18280);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230271C24();
  sub_230311448();
  v11 = 0;
  sub_230310DD8();
  if (!v2)
  {
    v10 = 1;
    sub_230310DD8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t REMRemindersListDataView.CountByCompleted.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18288);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230271C24();
  sub_230311428();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_230310CC8();
    v13 = 1;
    v10 = sub_230310CC8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230253324()
{
  v1 = *v0;
  v2 = 0xD000000000000021;
  v3 = 0xD000000000000013;
  if (v1 != 3)
  {
    v3 = 0xD000000000000016;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (*v0 <= 1u)
  {
    return 0x7265646E696D6572;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2302533C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230281F28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302533F0(uint64_t a1)
{
  v2 = sub_230271C78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23025342C(uint64_t a1)
{
  v2 = sub_230271C78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.FlatModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18290);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v17 = v1[2];
  v18 = v8;
  v22 = *(v1 + 24);
  v16 = *(v1 + 25);
  v10 = v1[4];
  v14 = v1[5];
  v15 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230271C78();

  sub_230311448();
  v19 = v9;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18270);
  sub_230271A74();
  sub_230310DF8();
  if (v2)
  {
  }

  else
  {
    v12 = v14;
    v11 = v15;

    v19 = v18;
    v20 = v17;
    v21 = v22;
    v23 = 1;
    sub_230271CCC();
    sub_230310D98();
    LOBYTE(v19) = 2;
    sub_230310D68();
    v19 = v11;
    v23 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F78);
    sub_2300E0EE4();
    sub_230310DF8();
    v19 = v12;
    v23 = 4;
    sub_230310DF8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t REMRemindersListDataView.FlatModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18298);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230271C78();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18270);
  v26 = 0;
  sub_230271B4C();
  sub_230310CE8();
  v9 = v22;
  v26 = 1;
  sub_230271D20();
  sub_230310C88();
  v20 = v22;
  v21 = v9;
  v10 = v23;
  v11 = v24;
  LOBYTE(v22) = 2;
  v12 = sub_230310C58();
  v18 = v11;
  v19 = v10;
  v25 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F78);
  v26 = 3;
  sub_2300DB820();
  sub_230310CE8();
  v17 = v22;
  v26 = 4;
  sub_230310CE8();
  (*(v6 + 8))(v8, v5);
  v14 = v22;
  v15 = v19;
  v16 = v20;
  *a2 = v21;
  *(a2 + 8) = v16;
  *(a2 + 16) = v15;
  *(a2 + 24) = v18;
  *(a2 + 25) = v25;
  *(a2 + 32) = v17;
  *(a2 + 40) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t REMRemindersListDataView.ListsModel.Sublist.listName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void *REMRemindersListDataView.ListsModel.Sublist.listColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t REMRemindersListDataView.ListsModel.Sublist.init(listID:listName:listColor:reminders:isCustomSmartList:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_230253B54()
{
  v1 = *v0;
  v2 = 0x44497473696CLL;
  v3 = 0x6F6C6F437473696CLL;
  v4 = 0x7265646E696D6572;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D614E7473696CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_230253BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2302820E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230253C1C(uint64_t a1)
{
  v2 = sub_230271D74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230253C58(uint64_t a1)
{
  v2 = sub_230271D74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.ListsModel.Sublist.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB182A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - v5;
  v8 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 24);
  v18 = *(v1 + 16);
  v19 = v7;
  v16 = *(v1 + 32);
  v17 = v9;
  v15[3] = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230271D74();
  v10 = v8;
  sub_230311448();
  v22 = v10;
  v21 = 0;
  type metadata accessor for REMObjectID_Codable();
  sub_230271420(qword_280C9BFD8, type metadata accessor for REMObjectID_Codable);
  v11 = v20;
  sub_230310DF8();
  if (v11)
  {
  }

  else
  {
    v12 = v16;
    v13 = v17;

    LOBYTE(v22) = 1;
    sub_230310DA8();
    v22 = v13;
    v21 = 2;
    type metadata accessor for REMColor_Codable();
    sub_230271420(&qword_280C9AFF0, type metadata accessor for REMColor_Codable);
    sub_230310D98();
    v22 = v12;
    v21 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18270);
    sub_230271A74();
    sub_230310DF8();
    LOBYTE(v22) = 4;
    sub_230310DB8();
  }

  return (*(v4 + 8))(v6, v3);
}

void REMRemindersListDataView.ListsModel.Sublist.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB182A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230271D74();
  sub_230311428();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    type metadata accessor for REMObjectID_Codable();
    v23 = 0;
    sub_230271420(&qword_280C9C5D0, type metadata accessor for REMObjectID_Codable);
    sub_230310CE8();
    v9 = v24;
    LOBYTE(v24) = 1;
    v21 = sub_230310C98();
    v22 = v10;
    type metadata accessor for REMColor_Codable();
    v23 = 2;
    sub_230271420(&qword_280C9AFE8, type metadata accessor for REMColor_Codable);
    sub_230310C88();
    v20 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18270);
    v23 = 3;
    sub_230271B4C();
    sub_230310CE8();
    v19 = v24;
    LOBYTE(v24) = 4;
    v11 = sub_230310CA8();
    (*(v6 + 8))(v8, v5);
    v12 = v21;
    v13 = v22;
    *a2 = v9;
    *(a2 + 8) = v12;
    v15 = v19;
    v14 = v20;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    *(a2 + 32) = v15;
    *(a2 + 40) = v11 & 1;
    v16 = v14;

    v17 = v9;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void __swiftcall REMRemindersListDataView.ListsModel.init(groups:completedRemindersCount:hasCompletedReminders:prefetchedReminders:prefetchedDueReminders:)(ReminderKitInternal::REMRemindersListDataView::ListsModel *__return_ptr retstr, Swift::OpaquePointer groups, Swift::Int_optional completedRemindersCount, Swift::Bool_optional hasCompletedReminders, Swift::OpaquePointer prefetchedReminders, Swift::OpaquePointer prefetchedDueReminders)
{
  retstr->groups = groups;
  retstr->completedRemindersCount.value = completedRemindersCount.value;
  retstr->completedRemindersCount.is_nil = completedRemindersCount.is_nil;
  retstr->hasCompletedReminders = hasCompletedReminders;
  retstr->prefetchedReminders = prefetchedReminders;
  retstr->prefetchedDueReminders = prefetchedDueReminders;
}

unint64_t sub_2302543D0()
{
  v1 = *v0;
  v2 = 0x7370756F7267;
  v3 = 0xD000000000000015;
  v4 = 0xD000000000000016;
  if (v1 == 3)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_230254474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2302822A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23025449C(uint64_t a1)
{
  v2 = sub_230271DC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302544D8(uint64_t a1)
{
  v2 = sub_230271DC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.ListsModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB182B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = *v1;
  v19 = v1[1];
  v9 = *(v1 + 16);
  v17 = *(v1 + 17);
  v18 = v9;
  v10 = v1[3];
  v15 = v1[4];
  v16 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230271DC8();

  sub_230311448();
  v21 = v8;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB182B8);
  sub_230271E1C();
  sub_230310DF8();
  if (v2)
  {
  }

  else
  {
    v12 = v15;
    v11 = v16;

    LOBYTE(v21) = 1;
    sub_230310D88();
    LOBYTE(v21) = 2;
    sub_230310D68();
    v21 = v11;
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F78);
    sub_2300E0EE4();
    sub_230310DF8();
    v21 = v12;
    v20 = 4;
    sub_230310DF8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t REMRemindersListDataView.ListsModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB182C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230271DC8();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB182B8);
  v21 = 0;
  sub_230271EF4();
  sub_230310CE8();
  v9 = v22;
  LOBYTE(v22) = 1;
  v10 = sub_230310C78();
  v20 = v11;
  v19 = v10;
  LOBYTE(v22) = 2;
  v17 = sub_230310C58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F78);
  v21 = 3;
  v18 = sub_2300DB820();
  sub_230310CE8();
  v16 = v22;
  v21 = 4;
  sub_230310CE8();
  (*(v6 + 8))(v8, v5);
  v13 = v22;
  v14 = v19;
  *a2 = v9;
  *(a2 + 8) = v14;
  *(a2 + 16) = v20 & 1;
  *(a2 + 17) = v17;
  *(a2 + 24) = v16;
  *(a2 + 32) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void *REMRemindersListDataView.FlaggedModel.flaggedSmartList.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

__n128 REMRemindersListDataView.FlaggedModel.init(flatModel:flaggedSmartList:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  *a3 = *a1;
  *(a3 + 8) = *(a1 + 8);
  *(a3 + 24) = v3;
  *(a3 + 25) = v4;
  result = *(a1 + 32);
  *(a3 + 32) = result;
  *(a3 + 48) = a2;
  return result;
}

uint64_t sub_230254B50()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x65646F4D74616C66;
  }
}

uint64_t sub_230254B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65646F4D74616C66 && a2 == 0xE90000000000006CLL;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002303458C0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_230254C80(uint64_t a1)
{
  v2 = sub_230271FCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230254CBC(uint64_t a1)
{
  v2 = sub_230271FCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.FlaggedModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB182C8);
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - v4;
  v7 = *v1;
  v6 = v1[1];
  v14 = v1[2];
  v15 = v6;
  v25 = *(v1 + 24);
  v13 = *(v1 + 25);
  v8 = v1[4];
  v9 = v1[5];
  v12 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230271FCC();

  sub_230311448();
  v18 = v7;
  v19 = v15;
  v20 = v14;
  v21 = v25;
  v22 = v13;
  v23 = v8;
  v24 = v9;
  v26 = 0;
  sub_230272020();
  v10 = v16;
  sub_230310DF8();

  if (!v10)
  {
    v18 = v12;
    v26 = 1;
    type metadata accessor for REMSmartList_Codable();
    sub_230271420(qword_280C9AC10, type metadata accessor for REMSmartList_Codable);
    sub_230310D98();
  }

  return (*(v17 + 8))(v5, v3);
}

uint64_t REMRemindersListDataView.FlaggedModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB182D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230271FCC();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v23) = 0;
  sub_230272074();
  sub_230310CE8();
  v9 = v27;
  v21 = v29;
  v22 = v28;
  v20 = v31;
  v10 = v34;
  v42 = v35;
  v41 = v30;
  type metadata accessor for REMSmartList_Codable();
  v37 = 1;
  sub_230271420(&qword_280C9B750, type metadata accessor for REMSmartList_Codable);
  sub_230310C88();
  (*(v6 + 8))(v8, v5);
  v11 = v38;
  v12 = v21;
  *&v23 = v9;
  *(&v23 + 1) = v22;
  *&v24 = v21;
  v19 = v41;
  BYTE8(v24) = v41;
  v13 = v20;
  BYTE9(v24) = v20;
  *(&v24 + 10) = v39;
  HIWORD(v24) = v40;
  v14 = v42;
  *&v25 = v10;
  *(&v25 + 1) = v42;
  v26 = v38;
  v15 = v23;
  v16 = v24;
  v17 = v25;
  *(a2 + 48) = v38;
  *(a2 + 16) = v16;
  *(a2 + 32) = v17;
  *a2 = v15;
  sub_2302720C8(&v23, &v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v27 = v9;
  v28 = v22;
  v29 = v12;
  v30 = v19;
  v31 = v13;
  v32 = v39;
  v33 = v40;
  v34 = v10;
  v35 = v14;
  v36 = v11;
  return sub_230272100(&v27);
}

void *REMRemindersListDataView.AssignedModel.assignedSmartList.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

__n128 REMRemindersListDataView.AssignedModel.init(listsModel:assignedSmartList:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  *a3 = *a1;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 17) = v5;
  result = *(a1 + 24);
  *(a3 + 24) = result;
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_2302552D0()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x646F4D737473696CLL;
  }
}

uint64_t sub_230255314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646F4D737473696CLL && a2 == 0xEA00000000006C65;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002303458E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_230255400(uint64_t a1)
{
  v2 = sub_230272130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23025543C(uint64_t a1)
{
  v2 = sub_230272130();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.AssignedModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB182D8);
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  v6 = *v1;
  v13 = v1[1];
  v22 = *(v1 + 16);
  v12 = *(v1 + 17);
  v7 = v1[3];
  v8 = v1[4];
  v11 = v1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230272130();

  sub_230311448();
  v16 = v6;
  v17 = v13;
  v18 = v22;
  v19 = v12;
  v20 = v7;
  v21 = v8;
  v23 = 0;
  sub_230272184();
  v9 = v14;
  sub_230310DF8();

  if (!v9)
  {
    v16 = v11;
    v23 = 1;
    type metadata accessor for REMSmartList_Codable();
    sub_230271420(qword_280C9AC10, type metadata accessor for REMSmartList_Codable);
    sub_230310D98();
  }

  return (*(v15 + 8))(v5, v3);
}

uint64_t REMRemindersListDataView.AssignedModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB182F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230272130();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  sub_2302721D8();
  sub_230310CE8();
  v17 = v20;
  v18 = v19;
  HIDWORD(v16) = v22;
  v10 = v23;
  v9 = v24;
  v25 = v21;
  type metadata accessor for REMSmartList_Codable();
  v26 = 1;
  sub_230271420(&qword_280C9B750, type metadata accessor for REMSmartList_Codable);
  sub_230310C88();
  (*(v6 + 8))(v8, v5);
  v11 = v19;
  v12 = v25;
  v13 = v17;
  *a2 = v18;
  *(a2 + 8) = v13;
  *(a2 + 16) = v12;
  *(a2 + 17) = BYTE4(v16);
  *(a2 + 24) = v10;
  *(a2 + 32) = v9;
  *(a2 + 40) = v11;
  v14 = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t REMRemindersListDataView.TaggedModel.flatModel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 25);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
  *(a1 + 25) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

void *REMRemindersListDataView.TaggedModel.taggedSmartList.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void *REMRemindersListDataView.TaggedModel.manualOrderingID.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_2300E0488(v2);
}

__n128 REMRemindersListDataView.TaggedModel.init(flatModel:allHashtagLabels:smartListHashtagLabels:smartListHashtagLabelsUpToDate:taggedSmartList:manualOrderingID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 25);
  *a7 = *a1;
  *(a7 + 8) = *(a1 + 8);
  *(a7 + 24) = v7;
  *(a7 + 25) = v8;
  *(a7 + 32) = *(a1 + 32);
  *(a7 + 48) = a2;
  *(a7 + 56) = a3;
  *(a7 + 64) = a4;
  *(a7 + 72) = a5;
  result = *a6;
  v10 = *(a6 + 16);
  *(a7 + 80) = *a6;
  *(a7 + 96) = v10;
  return result;
}

unint64_t sub_230255A90()
{
  v1 = *v0;
  v2 = 0x65646F4D74616C66;
  v3 = 0xD00000000000001ELL;
  v4 = 0x6D53646567676174;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0xD000000000000016;
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

uint64_t sub_230255B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23028245C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230255B94(uint64_t a1)
{
  v2 = sub_23027222C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230255BD0(uint64_t a1)
{
  v2 = sub_23027222C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.TaggedModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18300);
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v7 = *v1;
  v6 = *(v1 + 8);
  v29 = *(v1 + 16);
  v30 = v6;
  v39 = *(v1 + 24);
  v28 = *(v1 + 25);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v26 = *(v1 + 56);
  v27 = v10;
  v25 = *(v1 + 64);
  v11 = *(v1 + 72);
  v13 = *(v1 + 88);
  v12 = *(v1 + 96);
  v20 = *(v1 + 80);
  v21 = v13;
  v22 = v12;
  v23 = *(v1 + 104);
  v24 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23027222C();

  sub_230311448();
  v33 = v7;
  v34 = v30;
  v35 = v29;
  LOBYTE(v36) = v39;
  BYTE1(v36) = v28;
  v37 = v8;
  v38 = v9;
  v40 = 0;
  sub_230272020();
  v14 = v31;
  sub_230310DF8();
  if (v14)
  {

    return (*(v32 + 8))(v5, v3);
  }

  else
  {
    v16 = v26;
    v17 = v24;
    v18 = v32;

    v33 = v27;
    v40 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14DC8);
    sub_230234DA8();
    sub_230310DF8();
    v33 = v16;
    v40 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
    sub_230059F7C(&qword_280C96EE8);
    sub_230310DF8();
    LOBYTE(v33) = 3;
    sub_230310DB8();
    v33 = v17;
    v40 = 4;
    type metadata accessor for REMSmartList_Codable();
    sub_230271420(qword_280C9AC10, type metadata accessor for REMSmartList_Codable);
    sub_230310D98();
    v33 = v20;
    v34 = v21;
    v35 = v22;
    v36 = v23;
    v40 = 5;
    sub_2300E0488(v20);
    sub_230272280();
    sub_230310D98();
    sub_2300E04C8(v33);
    return (*(v18 + 8))(v5, v3);
  }
}

void REMRemindersListDataView.TaggedModel.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18318);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = a1[3];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_23027222C();
  sub_230311428();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v75);
  }

  else
  {
    v10 = v6;
    v42 = a2;
    LOBYTE(v43) = 0;
    sub_230272074();
    v11 = v5;
    sub_230310CE8();
    v41 = v50;
    v12 = v52;
    v13 = v54;
    v40 = v57;
    v38 = v51;
    v39 = v58;
    v74 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14DC8);
    LOBYTE(v43) = 1;
    sub_2300DABF8();
    sub_230310CE8();
    v35 = v13;
    v36 = v12;
    v37 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
    LOBYTE(v43) = 2;
    sub_230059F7C(&qword_280C98850);
    sub_230310CE8();
    v34 = v50;
    LOBYTE(v50) = 3;
    LOBYTE(v12) = sub_230310CA8();
    type metadata accessor for REMSmartList_Codable();
    LOBYTE(v43) = 4;
    sub_230271420(&qword_280C9B750, type metadata accessor for REMSmartList_Codable);
    sub_230310C88();
    v14 = v50;
    v68 = 5;
    sub_2302722D4();
    sub_230310C88();
    v15 = v12 & 1;
    v32 = v12 & 1;
    (*(v10 + 8))(v8, v11);
    v30 = *(&v69 + 1);
    v31 = v69;
    v28 = *(&v70 + 1);
    v29 = v70;
    v16 = v40;
    v17 = v39;
    *&v43 = v41;
    *(&v43 + 1) = v38;
    *&v44 = v36;
    v33 = v74;
    BYTE8(v44) = v74;
    LOBYTE(v11) = v35;
    BYTE9(v44) = v35;
    HIWORD(v44) = v73;
    *(&v44 + 10) = v72;
    *&v45 = v40;
    *(&v45 + 1) = v39;
    v18 = v14;
    v27 = v14;
    v19 = v37;
    v20 = v34;
    *&v46 = v37;
    *(&v46 + 1) = v34;
    LOBYTE(v47) = v15;
    DWORD1(v47) = *&v71[3];
    *(&v47 + 1) = *v71;
    *(&v47 + 1) = v18;
    v48 = v69;
    v49 = v70;
    v21 = v44;
    v22 = v42;
    *v42 = v43;
    v22[1] = v21;
    v23 = v45;
    v24 = v46;
    v25 = v49;
    v26 = v47;
    v22[5] = v48;
    v22[6] = v25;
    v22[3] = v24;
    v22[4] = v26;
    v22[2] = v23;
    sub_230272328(&v43, &v50);
    __swift_destroy_boxed_opaque_existential_1(v75);
    v50 = v41;
    v51 = v38;
    v52 = v36;
    v53 = v33;
    v54 = v11;
    v55 = v72;
    v56 = v73;
    v57 = v16;
    v58 = v17;
    v59 = v19;
    v60 = v20;
    v61 = v32;
    *v62 = *v71;
    *&v62[3] = *&v71[3];
    v63 = v27;
    v64 = v31;
    v65 = v30;
    v66 = v29;
    v67 = v28;
    sub_230272360(&v50);
  }
}

uint64_t REMRemindersListDataView.TemplateModel.model.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 33);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 8);
  *(a1 + 8) = *(v1 + 16);
  *(a1 + 24) = v2;
  *(a1 + 25) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

__n128 REMRemindersListDataView.TemplateModel.init(listRepresentationOfTemplate:model:manualOrderingID:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = *(a2 + 1);
  *(a4 + 40) = *(a2 + 2);
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 56) = *a3;
  v6 = *a2;
  v7 = *(a2 + 25);
  *(a4 + 32) = *(a2 + 24);
  *(a4 + 33) = v7;
  *a4 = a1;
  *(a4 + 8) = v6;
  *(a4 + 72) = v5;
  return result;
}

unint64_t sub_230256684()
{
  v1 = 0x6C65646F6DLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

uint64_t sub_2302566E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230282670(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230256710(uint64_t a1)
{
  v2 = sub_230272390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23025674C(uint64_t a1)
{
  v2 = sub_230272390();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.TemplateModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18328);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v10 = *(v1 + 16);
  v23 = *(v1 + 24);
  v24 = v10;
  v34 = *(v1 + 32);
  v22 = *(v1 + 33);
  v11 = *(v1 + 48);
  v25 = *(v1 + 40);
  v26 = v8;
  v27 = v11;
  v12 = *(v1 + 56);
  v20 = *(v1 + 64);
  v21 = v12;
  v13 = *(v1 + 80);
  v18 = *(v1 + 72);
  v19 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230272390();
  v14 = v9;
  sub_230311448();
  v28 = v14;
  v35 = 0;
  type metadata accessor for REMList_Codable();
  sub_230271420(&qword_280C9C348, type metadata accessor for REMList_Codable);
  sub_230310DF8();

  if (!v2)
  {
    v16 = v20;
    v15 = v21;
    v28 = v26;
    v29 = v24;
    v30 = v23;
    LOBYTE(v31) = v34;
    BYTE1(v31) = v22;
    v32 = v25;
    v33 = v27;
    v35 = 1;
    sub_230272020();

    sub_230310DF8();

    v28 = v15;
    v29 = v16;
    v30 = v18;
    v31 = v19;
    v35 = 2;
    sub_2300E0488(v15);
    sub_230272280();
    sub_230310D98();
    sub_2300E04C8(v28);
  }

  return (*(v5 + 8))(v7, v4);
}

void REMRemindersListDataView.TemplateModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18338);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230272390();
  sub_230311428();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    type metadata accessor for REMList_Codable();
    LOBYTE(v28) = 0;
    sub_230271420(&qword_280C9C340, type metadata accessor for REMList_Codable);
    sub_230310CE8();
    v9 = v34;
    LOBYTE(v28) = 1;
    sub_230272074();
    sub_230310CE8();
    v27 = v34;
    v26 = v35;
    v25 = v36;
    v24 = BYTE1(v37);
    v10 = v39;
    v52 = v38;
    v51 = v37;
    v45 = 2;
    sub_2302722D4();
    sub_230310C88();
    (*(v6 + 8))(v8, v5);
    v22 = v46;
    v21 = v47;
    v11 = v48;
    v20 = *(&v47 + 1);
    *&v28 = v9;
    v12 = v27;
    *(&v28 + 1) = v27;
    *&v29 = v26;
    *(&v29 + 1) = v25;
    v23 = v51;
    LOBYTE(v30) = v51;
    v13 = v24;
    BYTE1(v30) = v24;
    *(&v30 + 2) = v49;
    WORD3(v30) = v50;
    v14 = v52;
    *(&v30 + 1) = v52;
    *&v31 = v10;
    *(&v31 + 1) = v46;
    v32 = v47;
    v33 = v48;
    v15 = v29;
    *a2 = v28;
    *(a2 + 16) = v15;
    v16 = v30;
    v17 = v31;
    v18 = v32;
    *(a2 + 80) = v11;
    *(a2 + 48) = v17;
    *(a2 + 64) = v18;
    *(a2 + 32) = v16;
    sub_23019E830(&v28, &v34);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v34 = v9;
    v35 = v12;
    v36 = v26;
    v37 = v25;
    LOBYTE(v38) = v23;
    BYTE1(v38) = v13;
    *(&v38 + 2) = v49;
    HIWORD(v38) = v50;
    v39 = v14;
    v40 = v10;
    v41 = v22;
    v42 = v21;
    v43 = v20;
    v44 = v11;
    sub_23019E88C(&v34);
  }
}

uint64_t sub_230256EF8(uint64_t a1)
{
  v2 = sub_230272438();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230256F34(uint64_t a1)
{
  v2 = sub_230272438();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230256F70()
{
  if (*v0)
  {
    return 0x664F6C6C61;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_230256FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000002303459A0 == a2 || (sub_230311048() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x664F6C6C61 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_230311048();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_230257090(uint64_t a1)
{
  v2 = sub_2302723E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302570CC(uint64_t a1)
{
  v2 = sub_2302723E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230257108(uint64_t a1)
{
  v2 = sub_23027248C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230257144(uint64_t a1)
{
  v2 = sub_23027248C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.DateBucketsModel.DateFormattingStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18340);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18348);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18350);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302723E4();
  sub_230311448();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_230272438();
    v14 = v18;
    sub_230310D48();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_23027248C();
    sub_230310D48();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t REMRemindersListDataView.DateBucketsModel.DateFormattingStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18370);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18378);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18380);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302723E4();
  v12 = v31;
  sub_230311428();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_230310D08();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_2300DB8E4();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_230310918();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AE8);
      *v22 = &type metadata for REMRemindersListDataView.DateBucketsModel.DateFormattingStyle;
      sub_230310C38();
      sub_2303108F8();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_230272438();
        sub_230310C28();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_23027248C();
        sub_230310C28();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t REMRemindersListDataView.DateBucketsModel.RepresentativeDate.formattingStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t REMRemindersListDataView.DateBucketsModel.RepresentativeDate.init(date:formattingStyle:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_23030EB58();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t sub_2302579FC()
{
  if (*v0)
  {
    return 0x697474616D726F66;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_230257A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x697474616D726F66 && a2 == 0xEF656C797453676ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_230257B20(uint64_t a1)
{
  v2 = sub_230272500();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230257B5C(uint64_t a1)
{
  v2 = sub_230272500();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.DateBucketsModel.RepresentativeDate.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18388);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230272500();
  sub_230311448();
  v10[15] = 0;
  sub_23030EB58();
  sub_230271420(&qword_280C9B760, MEMORY[0x277CC9578]);
  sub_230310DF8();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate(0) + 20));
    v10[13] = 1;
    sub_230272554();
    sub_230310DF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t REMRemindersListDataView.DateBucketsModel.RepresentativeDate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_23030EB58();
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB183A0);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230272500();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v24;
  v30 = 0;
  sub_230271420(&qword_280C9B738, MEMORY[0x277CC9578]);
  v15 = v27;
  v16 = v25;
  sub_230310CE8();
  v17 = *(v14 + 32);
  v21 = v13;
  v17(v13, v5, v15);
  v28 = 1;
  sub_2302725A8();
  sub_230310CE8();
  (*(v26 + 8))(v9, v16);
  v18 = v21;
  *(v21 + *(v22 + 20)) = v29;
  sub_2302706F4(v18, v23, type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_230270804(v18, type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate);
}

BOOL REMRemindersListDataView.Diff.isEmpty.getter()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (sub_2303106D8())
    {
      return 0;
    }
  }

  else if (*(*v0 + 16))
  {
    return 0;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    if (sub_2303106D8())
    {
      return 0;
    }
  }

  else if (*(v1 + 16))
  {
    return 0;
  }

  if ((v3 & 0xC000000000000001) == 0)
  {
    if (!*(v3 + 16))
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (sub_2303106D8())
  {
    return 0;
  }

LABEL_13:
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (sub_2303106D8())
    {
      return 0;
    }
  }

  else if (*(v2 + 16))
  {
    return 0;
  }

  return *(v4 + 16) == 0;
}

uint64_t REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

unint64_t sub_23025822C()
{
  v1 = *v0;
  v2 = 0xD000000000000017;
  if (v1 != 3)
  {
    v2 = 0xD000000000000023;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000014;
  }

  v3 = 0xD000000000000019;
  if (!*v0)
  {
    v3 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2302582BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230282794(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302582E4(uint64_t a1)
{
  v2 = sub_2302726BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230258320(uint64_t a1)
{
  v2 = sub_2302726BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.Diff.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB183B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v16 = v1[2];
  v17 = v8;
  v14 = v1[4];
  v15 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302726BC();

  sub_230311448();
  v19 = v9;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AA8);
  sub_2302350CC();
  sub_230310DF8();
  if (v2)
  {
  }

  else
  {
    v11 = v16;

    v19 = v17;
    v18 = 1;
    sub_230310DF8();
    v19 = v11;
    v18 = 2;
    sub_230310DF8();
    v19 = v15;
    v18 = 3;
    sub_230310DF8();
    v19 = v14;
    v18 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14938);
    sub_2301224F0(&qword_280C9B408);
    sub_230310DF8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t REMRemindersListDataView.Diff.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB183B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302726BC();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AA8);
  v18 = 0;
  sub_230235018();
  sub_230310CE8();
  v17 = v19;
  v18 = 1;
  sub_230310CE8();
  v15 = 0;
  v16 = v19;
  v18 = 2;
  sub_230310CE8();
  v14 = v19;
  v18 = 3;
  sub_230310CE8();
  v9 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14938);
  v18 = 4;
  sub_2301224F0(&qword_280C9B740);
  sub_230310CE8();
  (*(v6 + 8))(v8, v5);
  v11 = v19;
  v12 = v16;
  *a2 = v17;
  a2[1] = v12;
  a2[2] = v14;
  a2[3] = v9;
  a2[4] = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t REMRemindersListDataView.Result.diff.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 28));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
}

void *REMRemindersListDataView.Result.latestFetchResultToken.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));
  v3 = v2;
  return v2;
}

__n128 REMRemindersListDataView.Result.init(model:diff:latestFetchResultToken:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a2 + 32);
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v9 = type metadata accessor for REMRemindersListDataView.Result();
  v10 = a5 + *(v9 + 28);
  result = *a2;
  v12 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v12;
  *(v10 + 32) = v8;
  *(a5 + *(v9 + 32)) = a3;
  return result;
}

double static REMRemindersListDataView.fetchList(store:list:sortingStyle:showCompleted:countCompleted:remindersPrefetch:fetchSubtasks:diffingAgainst:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v53 = a8;
  v54 = a1;
  v50 = a4;
  v51 = a6;
  LODWORD(v52) = a5;
  v47 = a9;
  v12 = type metadata accessor for REMRemindersListDataView.ListInvocation.Parameters(0);
  v13 = (v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v14) = *a7;
  v48 = *a3;
  v49 = v14;
  v16 = type metadata accessor for REMList_Codable();
  v17 = objc_allocWithZone(v16);
  v18 = [a2 store];
  v19 = [a2 account];
  v20 = [a2 storage];
  v68.receiver = v17;
  v68.super_class = v16;
  v21 = objc_msgSendSuper2(&v68, sel_initWithStore_account_storage_, v18, v19, v20);

  v22 = v21;
  v23 = [a2 parentList];
  [v22 setParentList_];

  sub_2302706F4(v50, &v15[v13[8]], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  sub_2302706F4(v51, &v15[v13[10]], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  *v15 = v22;
  v15[8] = v48;
  v15[v13[9]] = v52;
  v15[v13[11]] = v49;
  v24 = objc_allocWithZone(type metadata accessor for REMRemindersListDataView.ListInvocation());
  v25 = [v24 initWithFetchResultTokenToDiffAgainst_];
  v26 = v69;
  sub_2300CC9B8(v25, v15, &v61);
  if (v26)
  {
    sub_230270804(v15, type metadata accessor for REMRemindersListDataView.ListInvocation.Parameters);
  }

  else
  {

    v56[5] = v66;
    v56[3] = v64;
    v56[4] = v65;
    v56[0] = v61;
    v56[1] = v62;
    v56[2] = v63;
    v57 = v67;
    v54 = *(&v64 + 1);
    v69 = v64;
    v28 = v65;
    v29 = *(&v66 + 1);
    v52 = v66;
    v53 = *(&v65 + 1);
    v55[0] = BYTE8(v62);
    *v58 = v61;
    *&v58[8] = *(v56 + 8);
    *&v58[24] = WORD4(v62);
    v59 = v63;
    v60 = *(&v66 + 1);
    v30 = qword_280C9B460;

    v31 = v29;
    if (v30 != -1)
    {
      swift_once();
    }

    v32 = sub_23030EF48();
    __swift_project_value_buffer(v32, qword_280C989C8);
    sub_230272728(v58, v55);
    v33 = a2;
    v34 = sub_23030EF38();
    v35 = sub_2303102A8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412546;
      v38 = [v33 objectID];
      *(v36 + 4) = v38;
      *v37 = v38;
      *(v36 + 12) = 2048;
      *(v36 + 14) = *(*v58 + 16);
      sub_230272760(v58);
      _os_log_impl(&dword_230044000, v34, v35, "DATAVIEW RESULT {name: REMRemindersListDataView_ListInvocation, list.objectID: %@, reminder.count: %ld}", v36, 0x16u);
      sub_230061918(v37, &qword_27DB15000);
      MEMORY[0x231914180](v37, -1, -1);
      MEMORY[0x231914180](v36, -1, -1);
    }

    else
    {
      sub_230272760(v58);
    }

    v39 = v47;

    sub_230270804(v15, type metadata accessor for REMRemindersListDataView.ListInvocation.Parameters);
    v40 = v57;
    v41 = v57;
    v42 = v69;

    v43 = v54;

    v44 = v53;

    v45 = v52;

    sub_230061918(v56, &qword_27DB183C0);
    v46 = *&v58[16];
    *v39 = *v58;
    *(v39 + 16) = v46;
    result = *&v59;
    *(v39 + 32) = v59;
    *(v39 + 48) = v60;
    *(v39 + 56) = v42;
    *(v39 + 64) = v43;
    *(v39 + 72) = v28;
    *(v39 + 80) = v44;
    *(v39 + 88) = v45;
    *(v39 + 96) = v40;
  }

  return result;
}

double static REMRemindersListDataView.fetchListRepresentationOfDownloadedPublicTemplate(with:store:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v37 = a2;
  v3 = sub_23030EBB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = type metadata accessor for REMObjectID_Codable();
  v8 = objc_allocWithZone(v7);
  v9 = a1;
  v10 = [v9 uuid];
  sub_23030EBA8();

  v11 = sub_23030EB88();
  (*(v4 + 8))(v6, v3);
  v12 = [v9 entityName];
  if (!v12)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v12 = sub_23030F8B8();
  }

  v54.receiver = v8;
  v54.super_class = v7;
  v13 = objc_msgSendSuper2(&v54, sel_initWithUUID_entityName_, v11, v12, v37);

  v14 = [objc_allocWithZone(type metadata accessor for REMRemindersListDataView.PublicTemplateInvocation()) initWithFetchResultTokenToDiffAgainst_];
  v15 = v55;
  sub_2300CD3E0(v14, v13, &v47);
  if (v15)
  {
  }

  else
  {

    v39[2] = v49;
    v40 = v50;
    v39[0] = v47;
    v39[1] = v48;
    v41 = v51;
    v42 = v52;
    v43 = v53;
    v17 = v50;
    v38[0] = BYTE8(v48);
    *v44 = v47;
    *&v44[8] = *(v39 + 8);
    *&v44[24] = WORD4(v48);
    v45 = v49;
    v46 = v50;
    v18 = qword_280C9B460;

    v19 = v17;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = sub_23030EF48();
    __swift_project_value_buffer(v20, qword_280C989C8);
    sub_2301A7C3C(v44, v38);
    sub_2301A7C3C(v44, v38);
    sub_2301A7C3C(v44, v38);
    v21 = v9;
    sub_2301A7C3C(v44, v38);
    v22 = sub_23030EF38();
    v23 = sub_2303102A8();

    v55 = v22;
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412802;
      *(v24 + 4) = v21;
      *v25 = v21;
      *(v24 + 12) = 2048;
      v26 = *v44;
      v27 = *(*v44 + 16);
      v28 = v21;
      sub_2301A7C98(v44);
      *(v24 + 14) = v27;
      sub_2301A7C98(v44);
      *(v24 + 22) = 2048;
      v29 = *(Array<A>.reminders.getter(v26) + 16);

      sub_2301A7C98(v44);
      *(v24 + 24) = v29;
      sub_2301A7C98(v44);
      _os_log_impl(&dword_230044000, v55, v23, "DATAVIEW RESULT {name: REMRemindersListDataView_PublicTemplateInvocation, publicTemplateObjectID: %@, section.count (including sectionless): %ld, reminder.count: %ld}", v24, 0x20u);
      sub_230061918(v25, &qword_27DB15000);
      MEMORY[0x231914180](v25, -1, -1);
      MEMORY[0x231914180](v24, -1, -1);
    }

    else
    {
      sub_2301A7C98(v44);
      sub_2301A7C98(v44);
      sub_2301A7C98(v44);
      sub_2301A7C98(v44);
    }

    v30 = *(&v40 + 1);
    v31 = v41;
    v33 = v42;
    v32 = v43;
    v34 = v43;

    sub_230061918(v39, &qword_27DB165A0);
    v35 = *&v44[16];
    v36 = v37;
    *v37 = *v44;
    v36[1] = v35;
    result = *&v45;
    v36[2] = v45;
    *(v36 + 6) = v46;
    *(v36 + 7) = v30;
    v36[4] = v31;
    v36[5] = v33;
    *(v36 + 12) = v32;
  }

  return result;
}

__n128 sub_23025956C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  *a3 = *a1;
  *(a3 + 8) = *(a1 + 8);
  *(a3 + 24) = v3;
  *(a3 + 25) = v4;
  result = *(a1 + 32);
  *(a3 + 32) = result;
  *(a3 + 48) = a2;
  return result;
}

uint64_t Array<A>.reminders.getter(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = result + 72;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 16);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 24) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_2300802C8(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 16);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 16) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 48;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void static REMRemindersListDataView.fetchGroup(store:group:sortingStyle:showCompleted:countCompleted:remindersPrefetch:fetchSubtasks:includePinnedSublists:diffingAgainst:)(uint64_t a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W7>, uint64_t a8@<X8>, uint64_t a9)
{
  LODWORD(v40) = a7;
  *(&v38 + 1) = a6;
  LODWORD(v39) = a5;
  *&v38 = a4;
  v42 = a1;
  v41 = a9;
  v12 = type metadata accessor for REMRemindersListDataView.GroupInvocation.Parameters(0);
  v13 = (v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v37) = *a3;
  v16 = type metadata accessor for REMList_Codable();
  v17 = objc_allocWithZone(v16);
  v18 = [a2 store];
  v19 = [a2 account];
  v20 = [a2 storage];
  v50.receiver = v17;
  v50.super_class = v16;
  v21 = objc_msgSendSuper2(&v50, sel_initWithStore_account_storage_, v18, v19, v20);

  v22 = v21;
  v23 = [a2 parentList];
  [v22 setParentList_];

  sub_2302706F4(v38, &v15[v13[8]], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  sub_2302706F4(*(&v38 + 1), &v15[v13[10]], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  *v15 = v22;
  v15[8] = v37;
  v15[v13[9]] = v39;
  v15[v13[11]] = v40;
  v24 = objc_allocWithZone(type metadata accessor for REMRemindersListDataView.GroupInvocation());
  v25 = [v24 initWithFetchResultTokenToDiffAgainst_];
  v26 = v51;
  sub_2300CDE10(v25, v15, &v44);
  sub_230270804(v15, type metadata accessor for REMRemindersListDataView.GroupInvocation.Parameters);

  if (!v26)
  {
    v43[0] = v44;
    v43[1] = v45;
    v43[2] = v46;
    v43[3] = v47;
    v43[4] = v48;
    v43[5] = v49;
    v51 = *(&v44 + 1);
    v27 = v44;
    LODWORD(v42) = v45;
    LODWORD(v41) = BYTE1(v45);
    v39 = *(&v45 + 1);
    v28 = v46;
    v36 = *(&v47 + 1);
    v29 = v47;
    v38 = v48;
    v40 = *(&v49 + 1);
    v30 = v49;
    v31 = *(&v49 + 1);

    v37 = v30;

    v32 = v36;

    v33 = v38;

    v34 = *(&v38 + 1);

    sub_230061918(v43, &qword_27DB183C8);
    v35 = v51;
    *a8 = v27;
    *(a8 + 8) = v35;
    *(a8 + 16) = v42;
    *(a8 + 17) = v41;
    *(a8 + 24) = v39;
    *(a8 + 32) = v28;
    *(a8 + 40) = v37;
    *(a8 + 48) = *(&v28 + 1);
    *(a8 + 56) = v29;
    *(a8 + 64) = v32;
    *(a8 + 72) = v33;
    *(a8 + 80) = v34;
    *(a8 + 88) = v40;
  }
}

double static REMRemindersListDataView.fetchFlagged(store:configuration:diffingAgainst:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for REMRemindersListDataView.FlaggedInvocation.Parameters(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2302706F4(a1, v9, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  v10 = [objc_allocWithZone(type metadata accessor for REMRemindersListDataView.FlaggedInvocation()) initWithFetchResultTokenToDiffAgainst_];
  sub_2300CE848(v10, v9, v27);
  sub_230270804(v9, type metadata accessor for REMRemindersListDataView.FlaggedInvocation.Parameters);

  if (!v3)
  {
    v24 = v29;
    v25 = v30;
    v12 = v31;
    v26 = v31;
    v20 = v27[0];
    v21 = v27[1];
    v22 = v27[2];
    v23 = v28;
    v13 = *(&v28 + 1);
    v14 = v29;
    v15 = v30;
    sub_2302720C8(&v20, &v19);
    v16 = v12;

    sub_230061918(&v20, &qword_27DB183D0);
    v17 = v21;
    *a3 = v20;
    *(a3 + 16) = v17;
    result = *&v22;
    *(a3 + 32) = v22;
    *(a3 + 48) = v23;
    *(a3 + 56) = v13;
    *(a3 + 64) = v14;
    *(a3 + 80) = v15;
    *(a3 + 96) = v12;
  }

  return result;
}

double static REMRemindersListDataView.fetchFlagged(store:sortingStyle:showCompleted:countCompleted:remindersPrefetch:diffingAgainst:)@<D0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a6;
  v31 = a1;
  v12 = type metadata accessor for REMRemindersListDataView.FlaggedInvocation.Parameters(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v16 = (Configuration - 8);
  MEMORY[0x28223BE20](Configuration);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = *a2;
  sub_2302706F4(a3, &v18[v16[7]], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  sub_2302706F4(a5, &v18[v16[9]], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  *v18 = a2;
  v18[v16[8]] = a4;
  v18[v16[10]] = 0;
  sub_2302706F4(v18, v14, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  v19 = objc_allocWithZone(type metadata accessor for REMRemindersListDataView.FlaggedInvocation());
  v20 = [v19 initWithFetchResultTokenToDiffAgainst_];
  v21 = v45;
  sub_2300CE848(v20, v14, v40);

  sub_230270804(v14, type metadata accessor for REMRemindersListDataView.FlaggedInvocation.Parameters);
  sub_230270804(v18, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  if (!v21)
  {
    v37 = v42;
    v38 = v43;
    v23 = v44;
    v39 = v44;
    v33 = v40[0];
    v34 = v40[1];
    v35 = v40[2];
    v36 = v41;
    v24 = *(&v41 + 1);
    v25 = v42;
    v26 = v43;
    sub_2302720C8(&v33, &v32);
    v27 = v23;

    sub_230061918(&v33, &qword_27DB183D0);
    v28 = v34;
    *a7 = v33;
    *(a7 + 16) = v28;
    result = *&v35;
    *(a7 + 32) = v35;
    *(a7 + 48) = v36;
    *(a7 + 56) = v24;
    *(a7 + 64) = v25;
    *(a7 + 80) = v26;
    *(a7 + 96) = v23;
  }

  return result;
}

void static REMRemindersListDataView.fetchAll(store:sortingStyle:showCompleted:countCompleted:remindersPrefetch:diffingAgainst:)(_BYTE *a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for REMRemindersListDataView.AllInvocation.Parameters(0);
  v13 = (v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  sub_2302706F4(a2, &v15[v13[7]], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  sub_2302706F4(a4, &v15[v13[9]], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  *v15 = a1;
  v15[v13[8]] = a3;
  v16 = [objc_allocWithZone(type metadata accessor for REMRemindersListDataView.AllInvocation()) initWithFetchResultTokenToDiffAgainst_];
  v17 = v40;
  sub_2300CF294(v16, v15, &v34);
  sub_230270804(v15, type metadata accessor for REMRemindersListDataView.AllInvocation.Parameters);

  if (!v17)
  {
    v32[0] = v34;
    v32[1] = v35;
    v32[2] = v36;
    v32[3] = v37;
    v32[4] = v38;
    v33 = v39;
    v29 = 0;
    v28 = v39;
    v40 = *(&v34 + 1);
    v18 = v34;
    v31 = v35;
    v30 = BYTE1(v35);
    v19 = *(&v35 + 1);
    v20 = v36;
    v21 = v37;
    v27 = *(&v38 + 1);
    v22 = v38;
    v23 = v39;

    v24 = v27;

    sub_230061918(v32, &qword_27DB183D8);
    v25 = v40;
    *a6 = v18;
    *(a6 + 8) = v25;
    *(a6 + 16) = v31;
    *(a6 + 17) = v30;
    *(a6 + 24) = v19;
    *(a6 + 32) = v20;
    *(a6 + 48) = v21;
    *(a6 + 64) = v22;
    v26 = v28;
    *(a6 + 72) = v24;
    *(a6 + 80) = v26;
  }
}

void static REMRemindersListDataView.fetchAssigned(store:sortingStyle:showCompleted:countCompleted:remindersPrefetch:diffingAgainst:currentUserShareParticipantIDsOverride:)(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v36 = a1;
  v15 = type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters(0);
  v16 = (v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(a2) = *a2;
  sub_2302706F4(a3, v18 + v16[7], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  sub_2302706F4(a5, v18 + v16[9], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  *v18 = a2;
  *(v18 + v16[8]) = a4;
  *(v18 + v16[10]) = a7;
  v19 = objc_allocWithZone(type metadata accessor for REMRemindersListDataView.AssignedInvocation());

  v20 = [v19 initWithFetchResultTokenToDiffAgainst_];
  v21 = v44;
  sub_2300CF330(v20, v18, &v38);
  sub_230270804(v18, type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters);

  if (!v21)
  {
    v37[0] = v38;
    v37[1] = v39;
    v37[2] = v40;
    v37[3] = v41;
    v37[4] = v42;
    v37[5] = v43;
    v44 = *(&v38 + 1);
    v33 = v38;
    LODWORD(v36) = v39;
    v35 = BYTE1(v39);
    v32 = *(&v39 + 1);
    v22 = v40;
    v23 = v41;
    v30 = v42;
    v34 = *(&v43 + 1);
    v31 = v43;
    v24 = *(&v43 + 1);

    v25 = *(&v22 + 1);

    v26 = v30;

    v27 = *(&v30 + 1);

    v28 = v31;

    sub_230061918(v37, &qword_27DB183E0);
    v29 = v44;
    *a8 = v33;
    *(a8 + 8) = v29;
    *(a8 + 16) = v36;
    *(a8 + 17) = v35;
    *(a8 + 24) = v32;
    *(a8 + 32) = v22;
    *(a8 + 48) = v23;
    *(a8 + 64) = v26;
    *(a8 + 72) = v27;
    *(a8 + 80) = v28;
    *(a8 + 88) = v34;
  }
}

void static REMRemindersListDataView.fetchAssigned(store:configuration:diffingAgainst:currentUserShareParticipantIDsOverride:)(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a1;
  v9 = type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a2;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v15 = a2[Configuration[6]];
  v16 = Configuration[7];
  sub_2302706F4(&a2[Configuration[5]], v12 + v10[7], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  sub_2302706F4(&a2[v16], v12 + v10[9], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  *v12 = v13;
  *(v12 + v10[8]) = v15;
  *(v12 + v10[10]) = a4;
  v17 = objc_allocWithZone(type metadata accessor for REMRemindersListDataView.AssignedInvocation());

  v18 = [v17 initWithFetchResultTokenToDiffAgainst_];
  v19 = v42;
  sub_2300CF330(v18, v12, &v36);
  sub_230270804(v12, type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters);

  if (!v19)
  {
    v35[0] = v36;
    v35[1] = v37;
    v35[2] = v38;
    v35[3] = v39;
    v35[4] = v40;
    v35[5] = v41;
    v42 = *(&v36 + 1);
    v31 = v36;
    LODWORD(v34) = v37;
    v33 = BYTE1(v37);
    v30 = *(&v37 + 1);
    v20 = v38;
    v21 = v39;
    v28 = v40;
    v32 = *(&v41 + 1);
    v29 = v41;
    v22 = *(&v41 + 1);

    v23 = *(&v20 + 1);

    v24 = v28;

    v25 = *(&v28 + 1);

    v26 = v29;

    sub_230061918(v35, &qword_27DB183E0);
    v27 = v42;
    *a5 = v31;
    *(a5 + 8) = v27;
    *(a5 + 16) = v34;
    *(a5 + 17) = v33;
    *(a5 + 24) = v30;
    *(a5 + 32) = v20;
    *(a5 + 48) = v21;
    *(a5 + 64) = v24;
    *(a5 + 72) = v25;
    *(a5 + 80) = v26;
    *(a5 + 88) = v32;
  }
}

void static REMRemindersListDataView.fetchSearch(store:objectIDs:sortingStyle:showCompleted:countCompleted:diffingAgainst:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a6;
  v45 = a1;
  v13 = type metadata accessor for REMRemindersListDataView.SearchInvocation.Parameters(0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  v18 = sub_23024D0D0(a2);
  v19 = sub_2300B397C(v18);

  sub_2302706F4(a4, &v16[*(v14 + 32)], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  *v16 = v19;
  v16[8] = v17;
  v16[*(v14 + 36)] = a5;
  v20 = objc_allocWithZone(type metadata accessor for REMRemindersListDataView.SearchInvocation());
  v21 = [v20 initWithFetchResultTokenToDiffAgainst_];
  sub_2300CFD8C(v21, v16, &v39);
  sub_230270804(v16, type metadata accessor for REMRemindersListDataView.SearchInvocation.Parameters);

  if (!v7)
  {
    v37[0] = v39;
    v37[1] = v40;
    v37[2] = v41;
    v37[3] = v42;
    v37[4] = v43;
    v38 = v44;
    v34 = 0;
    v33 = v44;
    v45 = *(&v39 + 1);
    v22 = v39;
    LODWORD(v36) = v40;
    v35 = BYTE1(v40);
    v23 = *(&v40 + 1);
    v24 = v41;
    v25 = v42;
    v32 = *(&v43 + 1);
    v26 = v43;
    v27 = v44;

    v28 = v32;

    sub_230061918(v37, &qword_27DB183D8);
    v29 = v45;
    *a7 = v22;
    *(a7 + 8) = v29;
    *(a7 + 16) = v36;
    *(a7 + 17) = v35;
    *(a7 + 24) = v23;
    *(a7 + 32) = v24;
    *(a7 + 48) = v25;
    *(a7 + 64) = v26;
    v30 = v33;
    *(a7 + 72) = v28;
    *(a7 + 80) = v30;
  }
}

void static REMRemindersListDataView.fetchSearch_Flat(store:objectIDs:configuration:diffingAgainst:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for REMRemindersListDataView.SearchFlatInvocation.Parameters(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_23024D0D0(a1);
  v14 = sub_2300B397C(v13);

  sub_2302706F4(a2, v12 + *(v10 + 28), type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  *v12 = v14;
  v15 = [objc_allocWithZone(type metadata accessor for REMRemindersListDataView.SearchFlatInvocation()) initWithFetchResultTokenToDiffAgainst_];
  sub_2300D085C(v15, v12, &v32);
  sub_230270804(v12, type metadata accessor for REMRemindersListDataView.SearchFlatInvocation.Parameters);

  if (!v4)
  {
    v31[0] = v32;
    v31[1] = v33;
    v31[2] = v34;
    v31[3] = v35;
    v31[4] = v36;
    v31[5] = v37;
    v30 = *(&v32 + 1);
    v38 = v32;
    v29 = v33;
    v28 = BYTE8(v33);
    v27 = BYTE9(v33);
    v16 = v34;
    v17 = v35;
    v25 = *(&v36 + 1);
    v18 = v36;
    v26 = *(&v37 + 1);
    v19 = v37;
    v20 = *(&v37 + 1);

    v21 = v25;

    sub_230061918(v31, &qword_27DB183E8);
    v22 = v30;
    *a4 = v38;
    *(a4 + 8) = v22;
    *(a4 + 16) = v29;
    *(a4 + 24) = v28;
    *(a4 + 25) = v27;
    *(a4 + 32) = v16;
    *(a4 + 48) = v17;
    *(a4 + 64) = v18;
    *(a4 + 72) = v21;
    v23 = v26;
    *(a4 + 80) = v19;
    *(a4 + 88) = v23;
  }
}

void static REMRemindersListDataView.fetchSiriFoundInApps(store:sortingStyle:showCompleted:countCompleted:remindersPrefetch:diffingAgainst:)(_BYTE *a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for REMRemindersListDataView.SiriFoundInAppsInvocation.Parameters(0);
  v13 = (v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(a1) = *a1;
  sub_2302706F4(a2, v15 + v13[7], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  sub_2302706F4(a4, v15 + v13[9], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  *v15 = a1;
  *(v15 + v13[8]) = a3;
  v16 = [objc_allocWithZone(type metadata accessor for REMRemindersListDataView.SiriFoundInAppsInvocation()) initWithFetchResultTokenToDiffAgainst_];
  v17 = v40;
  sub_2300D08F8(v16, v15, &v34);
  sub_230270804(v15, type metadata accessor for REMRemindersListDataView.SiriFoundInAppsInvocation.Parameters);

  if (!v17)
  {
    v33[0] = v34;
    v33[1] = v35;
    v33[2] = v36;
    v33[3] = v37;
    v33[4] = v38;
    v33[5] = v39;
    v32 = *(&v34 + 1);
    v40 = v34;
    v31 = v35;
    v30 = BYTE8(v35);
    v29 = BYTE9(v35);
    v18 = v36;
    v19 = v37;
    v27 = *(&v38 + 1);
    v20 = v38;
    v28 = *(&v39 + 1);
    v21 = v39;
    v22 = *(&v39 + 1);

    v23 = v27;

    sub_230061918(v33, &qword_27DB183E8);
    v24 = v32;
    *a6 = v40;
    *(a6 + 8) = v24;
    *(a6 + 16) = v31;
    *(a6 + 24) = v30;
    *(a6 + 25) = v29;
    *(a6 + 32) = v18;
    *(a6 + 48) = v19;
    *(a6 + 64) = v20;
    *(a6 + 72) = v23;
    v25 = v28;
    *(a6 + 80) = v21;
    *(a6 + 88) = v25;
  }
}

__n128 static REMRemindersListDataView.fetchTagged(store:hashtagLabelPredicate:sortingStyle:showCompleted:countCompleted:remindersPrefetch:smartListHashtagLabelsFetchStyle:shouldFetchManualOrderingID:diffingAgainst:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, char *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v35 = a5;
  v36 = a8;
  v33 = a4;
  v34 = a6;
  v38 = a1;
  v32 = a9;
  v37 = a10;
  v13 = type metadata accessor for REMRemindersListDataView.TaggedInvocation.Parameters(0);
  v14 = (v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  v18 = *(a2 + 8);
  LOBYTE(a3) = *a3;
  v19 = *a7;
  LOBYTE(a7) = *(a2 + 16);
  sub_2302706F4(v33, &v16[v14[8]], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  sub_2302706F4(v34, &v16[v14[10]], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  *v16 = v17;
  *(v16 + 1) = v18;
  v16[16] = a7;
  v16[17] = a3;
  v20 = v36;
  v16[v14[9]] = v35;
  v16[v14[11]] = v19;
  v16[v14[12]] = v20;
  v21 = objc_allocWithZone(type metadata accessor for REMRemindersListDataView.TaggedInvocation());
  sub_2302727E4(v17, v18, a7);
  v22 = [v21 initWithFetchResultTokenToDiffAgainst_];
  v23 = v54;
  sub_2300D0994(v22, v16, v50);
  sub_230270804(v16, type metadata accessor for REMRemindersListDataView.TaggedInvocation.Parameters);

  if (!v23)
  {
    v46 = v50[6];
    v47 = v51;
    v48 = v52;
    v49 = v53;
    v42 = v50[2];
    v43 = v50[3];
    v44 = v50[4];
    v45 = v50[5];
    v40 = v50[0];
    v41 = v50[1];
    v25 = v51;
    v26 = v52;
    v27 = v53;
    sub_230272328(&v40, &v39);
    v28 = *(&v27 + 1);

    sub_230061918(&v40, &qword_27DB183F0);
    v29 = v45;
    v30 = v32;
    *(v32 + 64) = v44;
    *(v30 + 80) = v29;
    *(v30 + 96) = v46;
    v31 = v41;
    *v30 = v40;
    *(v30 + 16) = v31;
    result = v43;
    *(v30 + 32) = v42;
    *(v30 + 48) = result;
    *(v30 + 112) = v25;
    *(v30 + 128) = v26;
    *(v30 + 144) = v27;
  }

  return result;
}

__n128 static REMRemindersListDataView._debugCountAssigned(store:diffingAgainst:currentUserShareParticipantIDsOverride:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = [objc_allocWithZone(type metadata accessor for REMRemindersListDataView.DEBUG_AssignedCountInvocation()) initWithFetchResultTokenToDiffAgainst_];
  sub_2300D147C(v6, a2, &v11);

  if (!v3)
  {
    v8 = v14;
    v9 = v15;
    result = v12;
    v10 = v13;
    *a3 = v11;
    *(a3 + 8) = result;
    *(a3 + 24) = v10;
    *(a3 + 40) = v8;
    *(a3 + 48) = v9;
  }

  return result;
}

void sub_23025B4B8(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, void (*a3)(__int128 *__return_ptr)@<X3>, uint64_t a4@<X8>)
{
  v7 = [objc_allocWithZone(a2(0)) initWithFetchResultTokenToDiffAgainst_];
  a3(&v20);

  if (!v4)
  {
    v19[0] = v20;
    v19[1] = v21;
    v19[2] = v22;
    v19[3] = v23;
    v19[4] = v24;
    v19[5] = v25;
    v26 = v20;
    v17 = v21;
    v18 = *(&v20 + 1);
    v15 = BYTE9(v21);
    v16 = BYTE8(v21);
    v8 = v22;
    v9 = v23;
    v10 = v24;
    v11 = v25;
    v13 = *(&v24 + 1);
    v14 = *(&v25 + 1);
    v12 = *(&v25 + 1);

    sub_230061918(v19, &qword_27DB183E8);
    *a4 = v26;
    *(a4 + 8) = v18;
    *(a4 + 16) = v17;
    *(a4 + 24) = v16;
    *(a4 + 25) = v15;
    *(a4 + 32) = v8;
    *(a4 + 48) = v9;
    *(a4 + 64) = v10;
    *(a4 + 72) = v13;
    *(a4 + 80) = v11;
    *(a4 + 88) = v14;
  }
}

uint64_t sub_23025B648()
{
  if (*v0)
  {
    return 0x6C6E6F6974636573;
  }

  else
  {
    return 0x656E6F6974636573;
  }
}

uint64_t sub_23025B690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656E6F6974636573 && a2 == 0xE900000000000064;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6E6F6974636573 && a2 == 0xEB00000000737365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23025B778(uint64_t a1)
{
  v2 = sub_23027282C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23025B7B4(uint64_t a1)
{
  v2 = sub_23027282C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23025B7F0()
{
  v1 = 0x4E79616C70736964;
  if (*v0 != 1)
  {
    v1 = 0x6163696E6F6E6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x496E6F6974636573;
  }
}

uint64_t sub_23025B864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230282944(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23025B88C(uint64_t a1)
{
  v2 = sub_2302728D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23025B8C8(uint64_t a1)
{
  v2 = sub_2302728D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23025B904(uint64_t a1)
{
  v2 = sub_230272880();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23025B940(uint64_t a1)
{
  v2 = sub_230272880();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.SectionLite.SectionType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB183F8);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v20 = v19 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18400);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18408);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - v10;
  v13 = *v1;
  v12 = v1[1];
  v14 = v1[3];
  v19[3] = v1[2];
  v19[4] = v12;
  v19[1] = v1[4];
  v19[2] = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23027282C();
  sub_230311448();
  if (v13)
  {
    v30 = 0;
    sub_2302728D4();
    sub_230310D48();
    v26 = v13;
    v29 = 0;
    type metadata accessor for REMObjectID_Codable();
    sub_230271420(qword_280C9BFD8, type metadata accessor for REMObjectID_Codable);
    v16 = v24;
    v15 = v25;
    sub_230310DF8();
    if (v15)
    {
      (*(v23 + 8))(v7, v16);
    }

    else
    {
      v28 = 1;
      sub_230310DA8();
      v27 = 2;
      sub_230310D58();
      (*(v23 + 8))(v7, v16);
    }

    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v31 = 1;
    sub_230272880();
    v18 = v20;
    sub_230310D48();
    (*(v21 + 8))(v18, v22);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t REMRemindersListDataView.SectionLite.SectionType.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v39 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18418);
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v4 = &v35 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18420);
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18428);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_23027282C();
  v13 = v40;
  sub_230311428();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v35 = v5;
  v14 = v38;
  v15 = v39;
  v40 = v9;
  v16 = sub_230310D08();
  v17 = (2 * *(v16 + 16)) | 1;
  v43 = v16;
  v44 = v16 + 32;
  v45 = 0;
  v46 = v17;
  v18 = sub_2300DB8E4();
  if (v18 == 2 || v45 != v46 >> 1)
  {
    v20 = sub_230310918();
    swift_allocError();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AE8);
    *v22 = &type metadata for REMRemindersListDataView.SectionLite.SectionType;
    sub_230310C38();
    sub_2303108F8();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
    swift_willThrow();
    (*(v40 + 8))(v11, v8);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  if (v18)
  {
    LOBYTE(v47) = 1;
    sub_230272880();
    sub_230310C28();
    v19 = v40;
    (*(v14 + 8))(v4, v36);
    (*(v19 + 8))(v11, v8);
    swift_unknownObjectRelease();
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  else
  {
    LOBYTE(v47) = 0;
    sub_2302728D4();
    sub_230310C28();
    type metadata accessor for REMObjectID_Codable();
    v42 = 0;
    sub_230271420(&qword_280C9C5D0, type metadata accessor for REMObjectID_Codable);
    v29 = v35;
    sub_230310CE8();
    v38 = v47;
    v42 = 1;
    v30 = sub_230310C98();
    v26 = v31;
    v36 = v30;
    v42 = 2;
    v32 = sub_230310C48();
    v33 = v29;
    v27 = v32;
    v28 = v34;
    (*(v37 + 8))(v7, v33);
    (*(v40 + 8))(v11, v8);
    swift_unknownObjectRelease();
    v25 = v36;
    v24 = v38;
  }

  *v15 = v24;
  v15[1] = v25;
  v15[2] = v26;
  v15[3] = v27;
  v15[4] = v28;
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t REMRemindersListDataView.SectionLite.type.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_23019E990(v2);
}

__n128 REMRemindersListDataView.SectionLite.init(type:reminders:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = v3;
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_23025C410()
{
  if (*v0)
  {
    return 0x7265646E696D6572;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_23025C448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23025C52C(uint64_t a1)
{
  v2 = sub_230272928();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23025C568(uint64_t a1)
{
  v2 = sub_230272928();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.SectionLite.encode(to:)(void *a1)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18430);
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v16 = *(v1 + 40);
  v8 = a1[3];
  v9 = a1;
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(v9, v8);
  sub_23019E990(v3);
  sub_230272928();
  v12 = v17;
  sub_230311448();
  v20 = v3;
  v21 = v4;
  v22 = v5;
  v23 = v6;
  v24 = v7;
  v25 = 0;
  sub_23027297C();
  v13 = v18;
  sub_230310DF8();
  sub_23019E9DC(v20);
  if (!v13)
  {
    v20 = v16;
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18270);
    sub_230271A74();
    sub_230310DF8();
  }

  return (*(v19 + 8))(v11, v12);
}

uint64_t REMRemindersListDataView.SectionLite.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18438);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230272928();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  sub_2302729D0();
  sub_230310CE8();
  v10 = v18;
  v9 = v19;
  v15 = v20;
  v16 = v21;
  v17 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18270);
  v23 = 1;
  sub_230271B4C();
  sub_230310CE8();
  (*(v6 + 8))(v8, v5);
  v12 = v17;
  v11 = v18;
  *a2 = v10;
  a2[1] = v9;
  v13 = v16;
  a2[2] = v15;
  a2[3] = v13;
  a2[4] = v12;
  a2[5] = v11;
  sub_23019E990(v10);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_23019E9DC(v10);
}

__n128 REMRemindersListDataView.SectionsModel.remindersCount.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 sub_23025CA64@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a2[1].n128_u8[0];
  *a6 = a1;
  result = *a2;
  *(a6 + 8) = *a2;
  *(a6 + 24) = v6;
  *(a6 + 25) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  return result;
}

unint64_t sub_23025CA84()
{
  v1 = *v0;
  v2 = 0x736E6F6974636573;
  v3 = 0xD000000000000021;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7265646E696D6572;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23025CB38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230282A70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23025CB60(uint64_t a1)
{
  v2 = sub_230272A24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23025CB9C(uint64_t a1)
{
  v2 = sub_230272A24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.SectionsModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18440);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v17 = v1[2];
  v18 = v8;
  v22 = *(v1 + 24);
  v16 = *(v1 + 25);
  v10 = v1[4];
  v14 = v1[5];
  v15 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230272A24();

  sub_230311448();
  v19 = v9;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18448);
  sub_230272A78();
  sub_230310DF8();
  if (v2)
  {
  }

  else
  {
    v12 = v14;
    v11 = v15;

    v19 = v18;
    v20 = v17;
    v21 = v22;
    v23 = 1;
    sub_230271CCC();
    sub_230310D98();
    LOBYTE(v19) = 2;
    sub_230310D68();
    v19 = v11;
    v23 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F78);
    sub_2300E0EE4();
    sub_230310DF8();
    v19 = v12;
    v23 = 4;
    sub_230310DF8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t REMRemindersListDataView.SectionsModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18450);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230272A24();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18448);
  v26 = 0;
  sub_230272B50();
  sub_230310CE8();
  v9 = v22;
  v26 = 1;
  sub_230271D20();
  sub_230310C88();
  v20 = v22;
  v21 = v9;
  v10 = v23;
  v11 = v24;
  LOBYTE(v22) = 2;
  v12 = sub_230310C58();
  v18 = v11;
  v19 = v10;
  v25 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F78);
  v26 = 3;
  sub_2300DB820();
  sub_230310CE8();
  v17 = v22;
  v26 = 4;
  sub_230310CE8();
  (*(v6 + 8))(v8, v5);
  v14 = v22;
  v15 = v19;
  v16 = v20;
  *a2 = v21;
  *(a2 + 8) = v16;
  *(a2 + 16) = v15;
  *(a2 + 24) = v18;
  *(a2 + 25) = v25;
  *(a2 + 32) = v17;
  *(a2 + 40) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}