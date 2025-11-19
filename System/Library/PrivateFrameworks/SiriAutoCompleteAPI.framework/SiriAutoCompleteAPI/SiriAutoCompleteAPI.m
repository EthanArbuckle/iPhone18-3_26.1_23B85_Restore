uint64_t SiriAutoCompleteXPCService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v1 = *(v0 + 136);

  v2 = *(v0 + 152);

  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  sub_1DA366DAC(*(v0 + 160), *(v0 + 168));
  return v0;
}

uint64_t SiriAutoCompleteXPCService.__deallocating_deinit()
{
  SiriAutoCompleteXPCService.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 185, 7);
}

uint64_t SiriAutoCompleteXPCService.init(client:directAccessService:featureFlagsProvider:)(__int128 *a1, __int128 *a2, __int128 *a3)
{
  sub_1DA394214();
  *(v3 + 136) = sub_1DA394204();
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 169) = 0u;
  sub_1DA366D48(a1, v3 + 16);
  sub_1DA366D48(a2, v3 + 56);
  sub_1DA366D48(a3, v3 + 96);
  return v3;
}

uint64_t sub_1DA366D48(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1DA366DAC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DA366FCC()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD338, &qword_1DA3955F8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1DA36702C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD360, &qword_1DA395748);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1DA36705C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD368, &qword_1DA395760);
  }

  else
  {
    return OUTLINED_FUNCTION_8_0(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_1DA367088()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD378, &qword_1DA395828);
  }

  else
  {
    return OUTLINED_FUNCTION_8_0(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_1DA3670B4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD380, &unk_1DA395830);
  }

  else
  {
    return OUTLINED_FUNCTION_8_0(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_1DA3671E8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  OUTLINED_FUNCTION_17_2();

  return MEMORY[0x1EEE6BDD0]();
}

uint64_t sub_1DA36722C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  OUTLINED_FUNCTION_17_2();

  return MEMORY[0x1EEE6BDD0]();
}

SiriAutoCompleteAPI::AutoCompletePhraseSource_optional __swiftcall AutoCompletePhraseSource.init(rawValue:)(Swift::Int64 rawValue)
{
  v2 = rawValue - 1;
  if ((rawValue - 1) >= 8)
  {
    v2 = 8;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1DA367304(unsigned __int8 a1, char a2)
{
  v2 = 1701736302;
  v3 = 0xE400000000000000;
  v4 = "tooManyCandidates";
  v5 = a1;
  v6 = "duplicateActionId";
  v7 = 1701736302;
  v8 = "stopwordsOnlyMatch";
  switch(v5)
  {
    case 1:
      v7 = 0x6B636F6C42707061;
      v3 = 0xEA00000000006465;
      break;
    case 2:
      v3 = 0x80000001DA396AA0;
      v7 = 0xD000000000000012;
      break;
    case 3:
      v7 = OUTLINED_FUNCTION_42();
      v9 = v6 - 32;
      goto LABEL_7;
    case 4:
      OUTLINED_FUNCTION_44();
      break;
    case 5:
      v7 = OUTLINED_FUNCTION_42();
      v9 = v4 - 32;
LABEL_7:
      v3 = v9 | 0x8000000000000000;
      break;
    default:
      break;
  }

  v10 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6B636F6C42707061;
      v10 = 0xEA00000000006465;
      break;
    case 2:
      v10 = (v8 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000012;
      break;
    case 3:
      v2 = 0xD000000000000011;
      v11 = v6 - 32;
      goto LABEL_14;
    case 4:
      v2 = 0x694D656C61636F6CLL;
      v10 = 0xEF686374616D7373;
      break;
    case 5:
      v2 = 0xD000000000000011;
      v11 = v4 - 32;
LABEL_14:
      v10 = v11 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v7 == v2 && v3 == v10)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1DA394934();
  }

  return v13 & 1;
}

uint64_t sub_1DA3674B8(unsigned __int8 a1, char a2)
{
  v2 = 0x65646E496D6F7266;
  v3 = 0xE900000000000078;
  v4 = a1;
  v5 = 0x65646E496D6F7266;
  switch(v4)
  {
    case 1:
      v5 = 0x686361436D6F7266;
      v3 = 0xE900000000000065;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x726F727265;
      break;
    case 3:
      v5 = 0xD000000000000013;
      v3 = 0x80000001DA396A70;
      break;
    default:
      break;
  }

  v6 = 0xE900000000000078;
  switch(a2)
  {
    case 1:
      v2 = 0x686361436D6F7266;
      v6 = 0xE900000000000065;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x726F727265;
      break;
    case 3:
      v2 = 0xD000000000000013;
      v6 = 0x80000001DA396A70;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DA394934();
  }

  return v8 & 1;
}

uint64_t sub_1DA36760C(unsigned __int8 a1, char a2)
{
  v2 = 0x657361726870;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x657361726870;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x6449656C646E7562;
      break;
    case 2:
      v5 = 0xD000000000000010;
      v3 = 0x80000001DA3969D0;
      break;
    case 3:
      v5 = 0x656372756F73;
      break;
    case 4:
      v5 = 0x6E65644964697575;
      v3 = 0xEE00726569666974;
      break;
    case 5:
      v5 = 0x72656E6547776B7ALL;
      v3 = 0xEF64496E6F697461;
      break;
    case 6:
      v5 = 0x7A696C616D726F6ELL;
      v3 = 0xEF65726F63536465;
      break;
    case 7:
      v3 = 0xE800000000000000;
      v5 = 0x746E756F43706174;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x6449656C646E7562;
      break;
    case 2:
      v2 = 0xD000000000000010;
      v6 = 0x80000001DA3969D0;
      break;
    case 3:
      v2 = 0x656372756F73;
      break;
    case 4:
      v2 = 0x6E65644964697575;
      v6 = 0xEE00726569666974;
      break;
    case 5:
      v2 = 0x72656E6547776B7ALL;
      v6 = 0xEF64496E6F697461;
      break;
    case 6:
      v2 = 0x7A696C616D726F6ELL;
      v6 = 0xEF65726F63536465;
      break;
    case 7:
      v6 = 0xE800000000000000;
      v2 = 0x746E756F43706174;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DA394934();
  }

  return v8 & 1;
}

uint64_t sub_1DA36785C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 3:
    case 5:
      OUTLINED_FUNCTION_36();
      break;
    case 4:
      OUTLINED_FUNCTION_44();
      break;
    default:
      break;
  }

  sub_1DA394354();
}

uint64_t sub_1DA367940(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_36();
      break;
    default:
      break;
  }

  sub_1DA394354();
}

uint64_t sub_1DA367A2C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_36();
      break;
    default:
      break;
  }

  sub_1DA394354();
}

uint64_t sub_1DA367B6C@<X0>(uint64_t *a1@<X8>)
{
  result = AutoCompletePhraseSource.rawValue.getter();
  *a1 = result;
  return result;
}

SiriAutoCompleteAPI::AutoCompleteTableColumnNames_optional __swiftcall AutoCompleteTableColumnNames.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DA394844();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AutoCompleteTableColumnNames.rawValue.getter()
{
  result = 0x657361726870;
  switch(*v0)
  {
    case 1:
      result = 0x6449656C646E7562;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6E65644964697575;
      break;
    case 5:
      result = 0x72656E6547776B7ALL;
      break;
    case 6:
      result = 0x7A696C616D726F6ELL;
      break;
    case 7:
      result = 0x746E756F43706174;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DA367DCC@<X0>(unint64_t *a1@<X8>)
{
  result = AutoCompleteTableColumnNames.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA367DF4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DA367E38();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DA367E38()
{
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_26();
}

uint64_t sub_1DA367E7C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_21();
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t (*sub_1DA367EC8())()
{
  OUTLINED_FUNCTION_20();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1DA367F14@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DA367FA0();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DA367F58(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_1DA367FA0()
{
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_26();
}

uint64_t sub_1DA367FE4()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_21();
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
}

uint64_t (*sub_1DA368030())()
{
  OUTLINED_FUNCTION_20();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t AutoCompletePhrase.bundleId.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_26();
}

uint64_t AutoCompletePhrase.actionIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier + 8);

  return OUTLINED_FUNCTION_26();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DA3681B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DA368224();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DA3681E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1DA368278();
}

uint64_t sub_1DA368224()
{
  v1 = (v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_zkwGenerationId);
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1DA368278()
{
  OUTLINED_FUNCTION_34();
  v3 = (v1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_zkwGenerationId);
  OUTLINED_FUNCTION_21();
  swift_beginAccess();
  v4 = v3[1];
  *v3 = v2;
  v3[1] = v0;
}

uint64_t sub_1DA36831C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_1DA368384();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1DA368384()
{
  v1 = (v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedScore);
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1DA3683CC(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedScore;
  OUTLINED_FUNCTION_21();
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1DA368474@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DA3684C8();
  *a2 = result;
  return result;
}

uint64_t sub_1DA3684C8()
{
  v1 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_tapCount;
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DA368508(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_tapCount;
  OUTLINED_FUNCTION_21();
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DA3685C4(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2D0, &unk_1DA395FF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v6 = &v9 - v5;
  sub_1DA368C84(a1, &v9 - v5, &qword_1ECBAD2D0, &unk_1DA395FF0);
  v7 = *a2;
  return sub_1DA3686D4(v6);
}

uint64_t sub_1DA368670@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_recentTapTimeStamp;
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  return sub_1DA368C84(v1 + v3, a1, &qword_1ECBAD2D0, &unk_1DA395FF0);
}

uint64_t sub_1DA3686D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_recentTapTimeStamp;
  OUTLINED_FUNCTION_20();
  swift_beginAccess();
  sub_1DA368730(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1DA368730(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2D0, &unk_1DA395FF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AutoCompletePhrase.locale.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_locale);
  v2 = *(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_locale + 8);

  return OUTLINED_FUNCTION_26();
}

uint64_t sub_1DA36885C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = OUTLINED_FUNCTION_10(v6);
  v9 = *(v8 + 16);

  return v9(a3, v3 + v5, v7);
}

uint64_t AutoCompletePhrase.__allocating_init(phrase:invocationPhrase:bundleId:actionIdentifier:source:iconInfo:zkwGenerationId:tapCount:recentTapTimeStamp:normalizedScore:toolInvocation:tokenizer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, uint64_t a18)
{
  v71 = a6;
  v72 = a7;
  v73 = a1;
  v74 = a2;
  v64 = a18;
  v65 = a16;
  v69 = a13;
  v70 = a5;
  v68 = a12;
  v66 = a15;
  v67 = a11;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2D8, &qword_1DA394FE0);
  OUTLINED_FUNCTION_23(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v63 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2C8, &unk_1DA394FD0);
  OUTLINED_FUNCTION_23(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v63 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2D0, &unk_1DA395FF0);
  OUTLINED_FUNCTION_23(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_28();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2E0, &qword_1DA394FE8);
  OUTLINED_FUNCTION_23(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v63 - v40;

  v42 = *a9;
  if (a8)
  {
    v63 = a8;
  }

  else
  {
    v75[0] = v73;
    v75[1] = v74;
    v76[0] = 32;
    v76[1] = 0xE100000000000000;
    v75[5] = 95;
    v75[6] = 0xE100000000000000;
    sub_1DA368C30();
    OUTLINED_FUNCTION_9();
    v72 = sub_1DA3945F4();
    v63 = v43;
  }

  LOBYTE(v76[0]) = v42;
  sub_1DA368C84(a10, v41, &qword_1ECBAD2E0, &qword_1DA394FE8);
  sub_1DA368C84(a14, v18, &qword_1ECBAD2D0, &unk_1DA395FF0);
  sub_1DA368C84(a17, v31, &qword_1ECBAD2C8, &unk_1DA394FD0);
  v44 = v64;
  sub_1DA368CE0(v64, v75);
  sub_1DA3941C4();
  OUTLINED_FUNCTION_35();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  v49 = type metadata accessor for AutoCompletePhrase();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  v52 = swift_allocObject();
  v62 = v65 & 1;
  v61 = v66;
  v60 = v69;
  v59 = v68;
  v58 = v67;
  OUTLINED_FUNCTION_9();
  AutoCompletePhrase.init(phrase:invocationPhrase:bundleId:actionIdentifier:source:iconInfo:zkwGenerationId:tapCount:recentTapTimeStamp:normalizedScore:toolInvocation:tokenizer:locale:suggestionType:)(v53, v54, v55, v56, v70, v71, v72, v63, v76, v41, v58, v59, v60, v18, v61, v62, v31, v75, 0x53552D6E65, 0xE500000000000000, v25);
  __swift_destroy_boxed_opaque_existential_1(v44);
  sub_1DA36CB60(a17, &qword_1ECBAD2C8, &unk_1DA394FD0);
  sub_1DA36CB60(a14, &qword_1ECBAD2D0, &unk_1DA395FF0);
  sub_1DA36CB60(a10, &qword_1ECBAD2E0, &qword_1DA394FE8);
  return v52;
}

unint64_t sub_1DA368C30()
{
  result = qword_1EDCC5078[0];
  if (!qword_1EDCC5078[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCC5078);
  }

  return result;
}

uint64_t sub_1DA368C84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_26();
  v9(v8);
  return a2;
}

uint64_t sub_1DA368CE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t AutoCompletePhrase.__allocating_init(phrase:invocationPhrase:bundleId:actionIdentifier:source:iconInfo:zkwGenerationId:tapCount:recentTapTimeStamp:normalizedScore:toolInvocation:tokenizer:locale:suggestionType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v28 = *(v21 + 48);
  v29 = *(v21 + 52);
  v30 = swift_allocObject();
  AutoCompletePhrase.init(phrase:invocationPhrase:bundleId:actionIdentifier:source:iconInfo:zkwGenerationId:tapCount:recentTapTimeStamp:normalizedScore:toolInvocation:tokenizer:locale:suggestionType:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16 & 1, a17, a18, a19, a20, a21);
  return v30;
}

uint64_t type metadata accessor for AutoCompletePhrase()
{
  result = qword_1EDCC5618;
  if (!qword_1EDCC5618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *AutoCompletePhrase.init(phrase:invocationPhrase:bundleId:actionIdentifier:source:iconInfo:zkwGenerationId:tapCount:recentTapTimeStamp:normalizedScore:toolInvocation:tokenizer:locale:suggestionType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = v21;
  v144 = a8;
  v143 = a7;
  v142 = a6;
  v151 = a5;
  v155 = a4;
  v149 = a3;
  v163 = a18;
  v159 = a17;
  v161 = a14;
  v146 = a12;
  v145 = a11;
  v162 = a10;
  v24 = sub_1DA3941C4();
  v25 = OUTLINED_FUNCTION_0(v24);
  v156 = v26;
  v157 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_25(v30 - v29);
  v139 = sub_1DA3941E4();
  v31 = OUTLINED_FUNCTION_0(v139);
  v138 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_25(v36 - v35);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2E0, &qword_1DA394FE8);
  OUTLINED_FUNCTION_23(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_28();
  v154 = sub_1DA394264();
  v41 = OUTLINED_FUNCTION_0(v154);
  v153 = v42;
  v44 = *(v43 + 64);
  v45 = MEMORY[0x1EEE9AC00](v41);
  v136 = (&v135 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_25(&v135 - v47);
  v48 = sub_1DA393F34();
  v49 = OUTLINED_FUNCTION_0(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_7();
  v56 = v55 - v54;
  v158 = *a9;
  v57 = (v21 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_zkwGenerationId);
  *v57 = 0;
  v57[1] = 0;
  v58 = v21 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedScore;
  *v58 = 0;
  *(v58 + 8) = 1;
  v59 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_recentTapTimeStamp;
  sub_1DA393F04();
  v150 = v59;
  OUTLINED_FUNCTION_35();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
  v64 = type metadata accessor for AutoCompletePhrase();
  sub_1DA369990();
  OUTLINED_FUNCTION_43();

  v65 = v155;
  v160 = v23;
  v23[2] = v64;
  v152 = (v23 + 2);
  v23[3] = v59;
  if (v65)
  {
    v64 = v149;
  }

  else
  {

    v65 = v59;
  }

  v155 = a21;
  v148 = a16;
  v149 = a15;
  v66 = v160;
  v160[4] = v64;
  v66[5] = v65;
  v67 = v151;
  v68 = v142;
  v66[6] = v151;
  v66[7] = v68;
  v69 = (v66 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier);
  v70 = v144;
  *v69 = v143;
  v69[1] = v70;

  sub_1DA393F24();
  v71 = v56;
  v72 = v66;
  (*(v51 + 32))(v66 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_uuidIdentifier, v71, v48);
  *(v66 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source) = v158;
  OUTLINED_FUNCTION_21();
  swift_beginAccess();
  v73 = v57[1];
  v74 = v146;
  *v57 = v145;
  v57[1] = v74;

  sub_1DA368C84(v162, v22, &qword_1ECBAD2E0, &qword_1DA394FE8);
  v75 = v154;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v154);
  v147 = a13;
  if (EnumTagSinglePayload != 1)
  {

    v91 = *(v153 + 32);
    v92 = v140;
    v93 = OUTLINED_FUNCTION_40();
    v91(v93);
    (v91)(v72 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_iconInfo, v92, v75);
    v78 = v161;
    v79 = v159;
LABEL_16:
    v81 = v150;
    v82 = v148;
    v83 = v149;
    goto LABEL_18;
  }

  sub_1DA36CB60(v22, &qword_1ECBAD2E0, &qword_1DA394FE8);
  v77 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v77 = v67 & 0xFFFFFFFFFFFFLL;
  }

  v78 = v161;
  v79 = v159;
  if (!v77)
  {

    v94 = v138;
    v95 = v137;
    v96 = v139;
    (*(v138 + 104))(v137, *MEMORY[0x1E69D3158], v139);
    v97 = sub_1DA3941D4();
    v99 = v98;
    (*(v94 + 8))(v95, v96);
    v100 = v136;
    *v136 = v97;
    v100[1] = v99;
    v101 = v78;
    v102 = v153;
    (*(v153 + 104))(v100, *MEMORY[0x1E69D31A0], v75);
    (*(v102 + 32))(v72 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_iconInfo, v100, v75);
    v78 = v101;
    goto LABEL_16;
  }

  v80 = v67 == 0xD000000000000017 && 0x80000001DA396B10 == v68;
  v81 = v150;
  v82 = v148;
  v83 = v149;
  if (v80 || (sub_1DA394934() & 1) != 0)
  {

    v84 = (v72 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_iconInfo);
    v85 = v78;
    v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2E8, &unk_1DA394FF0) + 48);
    *v84 = 0x69662E656E6F6870;
    v84[1] = 0xEA00000000006C6CLL;
    sub_1DA394254();
    v78 = v85;
    OUTLINED_FUNCTION_35();
    __swift_storeEnumTagSinglePayload(v87, v88, v89, v90);
    (*(v153 + 104))(v84, *MEMORY[0x1E69D3198], v75);
  }

  else
  {
    v103 = (v72 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_iconInfo);
    *v103 = v67;
    v103[1] = v68;
    (*(v153 + 104))(v103, *MEMORY[0x1E69D31A0], v75);
  }

LABEL_18:
  v154 = a20;
  v153 = a19;
  *(v72 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_tapCount) = v147;
  OUTLINED_FUNCTION_20();
  swift_beginAccess();
  sub_1DA369BC8(v78, v72 + v81);
  swift_endAccess();
  OUTLINED_FUNCTION_21();
  swift_beginAccess();
  *v58 = v83;
  *(v58 + 8) = v82 & 1;
  sub_1DA368C84(v79, v72 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_toolInvocation, &qword_1ECBAD2C8, &unk_1DA394FD0);
  v104 = v163;
  v105 = v163[4];
  __swift_project_boxed_opaque_existential_1(v163, v163[3]);
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v106 = v79;
  v107 = v72[2];
  v108 = v72[3];
  v109 = *(v105 + 16);

  v110 = OUTLINED_FUNCTION_38();
  v111 = v109(v110);

  *(v72 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_searchTokens) = v111;
  v112 = v104[4];
  __swift_project_boxed_opaque_existential_1(v104, v104[3]);
  v113 = v72[2];
  v114 = v72[3];
  v115 = *(v112 + 8);

  v116 = OUTLINED_FUNCTION_38();
  v117 = v115(v116);

  v118 = *(v117 + 16);
  if (v118)
  {
    v166 = MEMORY[0x1E69E7CC0];
    sub_1DA36CB08();
    v119 = v166;
    sub_1DA368C30();
    v152 = v117;
    v120 = (v117 + 40);
    do
    {
      v121 = *v120;
      v164 = *(v120 - 1);
      v165 = v121;
      v122 = sub_1DA3945D4();
      v124 = v123;
      v166 = v119;
      v125 = *(v119 + 16);
      if (v125 >= *(v119 + 24) >> 1)
      {
        sub_1DA36CB08();
        v119 = v166;
      }

      *(v119 + 16) = v125 + 1;
      v126 = v119 + 16 * v125;
      *(v126 + 32) = v122;
      *(v126 + 40) = v124;
      v120 += 2;
      --v118;
    }

    while (v118);

    sub_1DA36CB60(v159, &qword_1ECBAD2C8, &unk_1DA394FD0);
    sub_1DA36CB60(v161, &qword_1ECBAD2D0, &unk_1DA395FF0);
    sub_1DA36CB60(v162, &qword_1ECBAD2E0, &qword_1DA394FE8);
    v72 = v160;
  }

  else
  {

    sub_1DA36CB60(v106, &qword_1ECBAD2C8, &unk_1DA394FD0);
    sub_1DA36CB60(v161, &qword_1ECBAD2D0, &unk_1DA395FF0);
    sub_1DA36CB60(v162, &qword_1ECBAD2E0, &qword_1DA394FE8);
    v119 = MEMORY[0x1E69E7CC0];
  }

  *(v72 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedPhraseTokens) = v119;
  v127 = (v72 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_locale);
  v128 = v154;
  *v127 = v153;
  v127[1] = v128;
  v129 = v155;
  v130 = v157;
  if (__swift_getEnumTagSinglePayload(v155, 1, v157) == 1)
  {
    sub_1DA36CB60(v129, &qword_1ECBAD2D8, &qword_1DA394FE0);
    if ((v158 | 4) == 6)
    {
      v131 = MEMORY[0x1E69D2DA0];
    }

    else
    {
      v131 = MEMORY[0x1E69D2D98];
    }

    (*(v156 + 104))(v72 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_suggestionType, *v131, v130);
  }

  else
  {
    v132 = *(v156 + 32);
    v133 = v141;
    v132(v141, v129, v130);
    v132(v72 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_suggestionType, v133, v130);
  }

  __swift_destroy_boxed_opaque_existential_1(v163);
  return v72;
}

uint64_t sub_1DA369990()
{
  v0 = sub_1DA393DE4();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v16 - v9;
  sub_1DA36DB2C(&qword_1EDCC51B8, MEMORY[0x1E69680B8]);
  sub_1DA394624();
  v17 = 46;
  sub_1DA394614();
  v11 = sub_1DA394374();
  sub_1DA393DD4();
  v12 = sub_1DA393DC4();
  v13 = *(v3 + 8);
  v13(v8, v0);
  v14 = [v11 stringByTrimmingCharactersInSet_];

  sub_1DA394384();
  OUTLINED_FUNCTION_43();

  v16[1] = v12;
  v16[2] = v11;
  sub_1DA368C30();
  sub_1DA3945E4();

  sub_1DA36A648();
  OUTLINED_FUNCTION_43();

  v13(v10, v0);
  return OUTLINED_FUNCTION_29();
}

uint64_t sub_1DA369BC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2D0, &unk_1DA395FF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1DA369C7C()
{
  v1 = sub_1DA394314();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2C8, &unk_1DA394FD0);
  OUTLINED_FUNCTION_23(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34[-v14];
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_1DA394784();
  v37 = v35;
  v38 = v36;
  MEMORY[0x1DA74BA70](0x203A657361726850, 0xE800000000000000);
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v16 = v0[2];
  v17 = v0[3];

  MEMORY[0x1DA74BA70](v16, v17);

  MEMORY[0x1DA74BA70](0xD000000000000015, 0x80000001DA396B30);
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v18 = v0[4];
  v19 = v0[5];

  MEMORY[0x1DA74BA70](v18, v19);

  v20 = OUTLINED_FUNCTION_42();
  MEMORY[0x1DA74BA70](v20);
  v21 = MEMORY[0x1E69E6158];
  v22 = MEMORY[0x1DA74BB60](*(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_searchTokens), MEMORY[0x1E69E6158]);
  MEMORY[0x1DA74BA70](v22);

  MEMORY[0x1DA74BA70](0xD00000000000001ALL, 0x80000001DA396B70);
  v23 = MEMORY[0x1DA74BB60](*(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedPhraseTokens), v21);
  MEMORY[0x1DA74BA70](v23);

  MEMORY[0x1DA74BA70](0x656372756F530A2CLL, 0xEA0000000000203ALL);
  v24 = 0xEB00000000747563;
  v25 = 0x74726F6853707061;
  switch(*(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source))
  {
    case 1:
      OUTLINED_FUNCTION_30();
      v25 = 0xD000000000000017;
      break;
    case 2:
      OUTLINED_FUNCTION_30();
      v25 = 0xD000000000000013;
      break;
    case 3:
      v24 = 0xE900000000000068;
      v25 = 0x636E75614C707061;
      break;
    case 4:
      break;
    case 5:
      v24 = 0xED00007475637472;
      v25 = 0x6F68536563696F76;
      break;
    case 6:
      OUTLINED_FUNCTION_30();
      v25 = 0xD00000000000001BLL;
      break;
    case 7:
      OUTLINED_FUNCTION_30();
      v25 = OUTLINED_FUNCTION_42();
      break;
    default:
      OUTLINED_FUNCTION_30();
      v25 = 0xD000000000000014;
      break;
  }

  MEMORY[0x1DA74BA70](v25, v24);

  MEMORY[0x1DA74BA70](0x656C646E75420A2CLL, 0xEC000000203A6449);
  MEMORY[0x1DA74BA70](v0[6], v0[7]);
  MEMORY[0x1DA74BA70](0xD000000000000015, 0x80000001DA396BB0);
  MEMORY[0x1DA74BA70](*(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier), *(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier + 8));
  MEMORY[0x1DA74BA70](0x656C61636F4C0A2CLL, 0xEA0000000000203ALL);
  v26 = *(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_locale + 8);
  if (v26)
  {
    v27 = *(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_locale);
  }

  else
  {
    v27 = 0;
  }

  if (v26)
  {
    v28 = *(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_locale + 8);
  }

  else
  {
    v28 = 0xE000000000000000;
  }

  MEMORY[0x1DA74BA70](v27, v28);

  MEMORY[0x1DA74BA70](0xD000000000000012, 0x80000001DA396BD0);
  sub_1DA368C84(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_toolInvocation, v15, &qword_1ECBAD2C8, &unk_1DA394FD0);
  v29 = sub_1DA394334();
  if (__swift_getEnumTagSinglePayload(v15, 1, v29) == 1)
  {
    sub_1DA36CB60(v15, &qword_1ECBAD2C8, &unk_1DA394FD0);
    v30 = 0xE300000000000000;
    v31 = 7104878;
  }

  else
  {
    sub_1DA394324();
    (*(*(v29 - 8) + 8))(v15, v29);
    v31 = sub_1DA394304();
    v30 = v32;
    (*(v4 + 8))(v9, v1);
  }

  MEMORY[0x1DA74BA70](v31, v30);

  MEMORY[0x1DA74BA70](0xD000000000000012, 0x80000001DA396BF0);
  sub_1DA3941C4();
  sub_1DA394814();
  return v37;
}

uint64_t sub_1DA36A1B0()
{
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);

  MEMORY[0x1DA74BA70](95, 0xE100000000000000);
  v1 = *(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier + 8);

  MEMORY[0x1DA74BA70](v1, v2);

  return v4;
}

double sub_1DA36A238()
{
  v1 = v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedScore;
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1DA36A28C()
{
  v0 = sub_1DA393E54();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DA393E44();
  sub_1DA393E24();
  type metadata accessor for AutoCompletePhrase();
  OUTLINED_FUNCTION_18();
  sub_1DA36DB2C(v3, v4);
  sub_1DA393E34();
  OUTLINED_FUNCTION_43();

  return OUTLINED_FUNCTION_29();
}

uint64_t static AutoCompletePhrase.decodeFromPlist(_:)()
{
  v0 = sub_1DA393E14();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DA393E04();
  type metadata accessor for AutoCompletePhrase();
  OUTLINED_FUNCTION_18();
  sub_1DA36DB2C(v3, v4);
  OUTLINED_FUNCTION_29();
  sub_1DA393DF4();

  return v6;
}

uint64_t sub_1DA36A648()
{
  v0 = sub_1DA375004(&unk_1F55E4AE8);

  while (1)
  {
    v1 = sub_1DA394404();
    if (!v2)
    {
      break;
    }

    v3 = v1;
    v4 = v2;
    if (*(v0 + 16))
    {
      v5 = *(v0 + 40);
      sub_1DA3949D4();
      sub_1DA394354();
      v6 = sub_1DA394A14();
      v7 = ~(-1 << *(v0 + 32));
      while (1)
      {
        v8 = v6 & v7;
        if (((*(v0 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
        {
          break;
        }

        v9 = (*(v0 + 48) + 16 * v8);
        if (*v9 != v3 || v4 != v9[1])
        {
          v11 = sub_1DA394934();
          v6 = v8 + 1;
          if ((v11 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_13;
      }
    }

    MEMORY[0x1DA74BA60](v3, v4);
LABEL_13:
  }

  return sub_1DA394444();
}

uint64_t static AutoCompletePhrase.== infix(_:_:)(void *a1, void *a2)
{
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v6 = v4 == a2[2] && v5 == a2[3];
  if (!v6 && (OUTLINED_FUNCTION_31() & 1) == 0)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v7 = a1[4];
  v8 = a1[5];
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v9 = v7 == a2[4] && v8 == a2[5];
  if (!v9 && (OUTLINED_FUNCTION_31() & 1) == 0)
  {
    goto LABEL_33;
  }

  v10 = a1[6] == a2[6] && a1[7] == a2[7];
  if (!v10 && (sub_1DA394934() & 1) == 0)
  {
    goto LABEL_33;
  }

  v11 = *(a1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier) == *(a2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier) && *(a1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier + 8) == *(a2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier + 8);
  if (!v11 && (sub_1DA394934() & 1) == 0 || *(a1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source) != *(a2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source))
  {
    goto LABEL_33;
  }

  v12 = (a1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_zkwGenerationId);
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  v15 = (a2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_zkwGenerationId);
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v16 = v15[1];
  if (v14)
  {
    if (!v16)
    {
      goto LABEL_33;
    }

    v17 = v13 == *v15 && v14 == v16;
    if (!v17 && (OUTLINED_FUNCTION_31() & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_31:
    v18 = (a1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedScore);
    OUTLINED_FUNCTION_9();
    swift_beginAccess();
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = (a2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedScore);
    OUTLINED_FUNCTION_9();
    swift_beginAccess();
    v22 = *(v21 + 8);
    if (v20)
    {
      if (!*(v21 + 8))
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v19 != *v21)
      {
        v22 = 1;
      }

      if (v22)
      {
        goto LABEL_33;
      }
    }

    v23 = sub_1DA36A9BC(*(a1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_searchTokens), *(a2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_searchTokens));
    return v23 & 1;
  }

  if (!v16)
  {
    goto LABEL_31;
  }

LABEL_33:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_1DA36A9BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1DA394934() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1DA36AA48(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v4 = v2[2];
  v5 = v2[3];

  sub_1DA394354();

  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v6 = v2[4];
  v7 = v2[5];

  sub_1DA394354();

  v8 = v2[6];
  v9 = v2[7];
  sub_1DA394354();
  v10 = *(v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier);
  v11 = *(v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier + 8);
  sub_1DA394354();
  MEMORY[0x1DA74C080](*(v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source) + 1);
  v12 = (v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_zkwGenerationId);
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  if (v12[1])
  {
    v13 = *v12;
    sub_1DA3949F4();

    OUTLINED_FUNCTION_29();
    sub_1DA394354();
  }

  else
  {
    sub_1DA3949F4();
  }

  v14 = v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedScore;
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  if (v14[8] == 1)
  {
    sub_1DA3949F4();
  }

  else
  {
    v15 = *v14;
    sub_1DA3949F4();
    if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    MEMORY[0x1DA74C080](v16);
  }

  return sub_1DA36CC38(a1, *(v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_searchTokens));
}

uint64_t sub_1DA36ABD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657361726870 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DA394934() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001DA396CC0 == a2;
    if (v6 || (sub_1DA394934() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
      if (v7 || (sub_1DA394934() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F666E496E6F6369 && a2 == 0xE800000000000000;
        if (v8 || (sub_1DA394934() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001DA3969D0 == a2;
          if (v9 || (sub_1DA394934() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
            if (v10 || (sub_1DA394934() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E65644964697575 && a2 == 0xEE00726569666974;
              if (v11 || (sub_1DA394934() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6F766E496C6F6F74 && a2 == 0xEE006E6F69746163;
                if (v12 || (sub_1DA394934() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x72656E6547776B7ALL && a2 == 0xEF64496E6F697461;
                  if (v13 || (sub_1DA394934() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7A696C616D726F6ELL && a2 == 0xEF65726F63536465;
                    if (v14 || (sub_1DA394934() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x746E756F43706174 && a2 == 0xE800000000000000;
                      if (v15 || (sub_1DA394934() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000012 && 0x80000001DA396CF0 == a2;
                        if (v16 || (sub_1DA394934() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6F54686372616573 && a2 == 0xEC000000736E656BLL;
                          if (v17 || (sub_1DA394934() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000016 && 0x80000001DA396D10 == a2;
                            if (v18 || (sub_1DA394934() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
                              if (v19 || (sub_1DA394934() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x6974736567677573 && a2 == 0xEE00657079546E6FLL)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_1DA394934();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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

uint64_t sub_1DA36B0E4(unsigned __int8 a1)
{
  sub_1DA3949D4();
  MEMORY[0x1DA74C060](a1);
  return sub_1DA394A14();
}

unint64_t sub_1DA36B138(char a1)
{
  result = 0x657361726870;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6449656C646E7562;
      break;
    case 3:
      result = 0x6F666E496E6F6369;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x656372756F73;
      break;
    case 6:
      result = 0x6E65644964697575;
      break;
    case 7:
      result = 0x6F766E496C6F6F74;
      break;
    case 8:
      result = 0x72656E6547776B7ALL;
      break;
    case 9:
      result = 0x7A696C616D726F6ELL;
      break;
    case 10:
      result = 0x746E756F43706174;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x6F54686372616573;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    case 14:
      result = 0x656C61636F6CLL;
      break;
    case 15:
      result = 0x6974736567677573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA36B32C()
{
  v1 = *v0;
  sub_1DA3949D4();
  MEMORY[0x1DA74C060](v1);
  return sub_1DA394A14();
}

uint64_t sub_1DA36B378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA36ABD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA36B3C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA36B0B4();
  *a1 = result;
  return result;
}

uint64_t sub_1DA36B3E8(uint64_t a1)
{
  v2 = sub_1DA36CCB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA36B424(uint64_t a1)
{
  v2 = sub_1DA36CCB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

char *AutoCompletePhrase.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_iconInfo;
  v5 = sub_1DA394264();
  OUTLINED_FUNCTION_10(v5);
  (*(v6 + 8))(&v0[v4]);
  v7 = *&v0[OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier + 8];

  v8 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_uuidIdentifier;
  v9 = sub_1DA393F34();
  OUTLINED_FUNCTION_10(v9);
  (*(v10 + 8))(&v0[v8]);
  sub_1DA36CB60(&v0[OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_toolInvocation], &qword_1ECBAD2C8, &unk_1DA394FD0);
  v11 = *&v0[OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_zkwGenerationId + 8];

  sub_1DA36CB60(&v0[OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_recentTapTimeStamp], &qword_1ECBAD2D0, &unk_1DA395FF0);
  v12 = *&v0[OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_searchTokens];

  v13 = *&v0[OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedPhraseTokens];

  v14 = *&v0[OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_locale + 8];

  v15 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_suggestionType;
  v16 = sub_1DA3941C4();
  OUTLINED_FUNCTION_10(v16);
  (*(v17 + 8))(&v0[v15]);
  return v0;
}

uint64_t AutoCompletePhrase.__deallocating_deinit()
{
  AutoCompletePhrase.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DA36B634(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2D0, &unk_1DA395FF0);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2F8, &unk_1DA395000);
  OUTLINED_FUNCTION_0(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49[-v16];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA36CCB0();
  sub_1DA394A34();
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v19 = v2[2];
  v20 = v2[3];
  v55 = 0;

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_6();
  sub_1DA3948E4();
  if (v19)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v21 = v2[4];
  v22 = v2[5];
  v54 = 1;

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_6();
  sub_1DA3948E4();
  if (v21)
  {
    goto LABEL_3;
  }

  v24 = v2[6];
  v25 = v2[7];
  v54 = 2;
  OUTLINED_FUNCTION_6();
  sub_1DA3948E4();
  v54 = 3;
  sub_1DA394264();
  OUTLINED_FUNCTION_12();
  sub_1DA36DB2C(v26, v27);
  OUTLINED_FUNCTION_5();
  sub_1DA394904();
  v28 = *(v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier);
  v29 = *(v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier + 8);
  v54 = 4;
  OUTLINED_FUNCTION_6();
  sub_1DA3948E4();
  v54 = *(v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source);
  v53 = 5;
  sub_1DA36CD04();
  OUTLINED_FUNCTION_11();
  sub_1DA394904();
  v54 = 6;
  sub_1DA393F34();
  OUTLINED_FUNCTION_17();
  sub_1DA36DB2C(v30, v31);
  OUTLINED_FUNCTION_5();
  sub_1DA394904();
  v54 = 7;
  sub_1DA394334();
  OUTLINED_FUNCTION_16();
  sub_1DA36DB2C(v32, v33);
  OUTLINED_FUNCTION_5();
  sub_1DA3948D4();
  v34 = (v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_zkwGenerationId);
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v35 = *v34;
  v36 = v34[1];
  v53 = 8;

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_6();
  sub_1DA3948B4();
  if (v35)
  {
LABEL_3:
    (*(v12 + 8))(v17, v10);
  }

  else
  {

    v37 = v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedScore;
    OUTLINED_FUNCTION_9();
    swift_beginAccess();
    v38 = *v37;
    v39 = v37[8];
    v52 = 9;
    OUTLINED_FUNCTION_6();
    sub_1DA3948C4();
    v40 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_tapCount;
    OUTLINED_FUNCTION_9();
    swift_beginAccess();
    v41 = *(v2 + v40);
    v51 = 10;
    OUTLINED_FUNCTION_11();
    sub_1DA3948F4();
    v42 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_recentTapTimeStamp;
    OUTLINED_FUNCTION_9();
    swift_beginAccess();
    sub_1DA368C84(v2 + v42, v9, &qword_1ECBAD2D0, &unk_1DA395FF0);
    LOBYTE(v56) = 11;
    sub_1DA393F04();
    OUTLINED_FUNCTION_14();
    sub_1DA36DB2C(v43, v44);
    OUTLINED_FUNCTION_5();
    sub_1DA3948D4();
    sub_1DA36CB60(v9, &qword_1ECBAD2D0, &unk_1DA395FF0);
    v56 = *(v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_searchTokens);
    v50 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD300, &unk_1DA395610);
    sub_1DA36CE64(&qword_1EDCC5048);
    OUTLINED_FUNCTION_11();
    sub_1DA394904();
    v56 = *(v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedPhraseTokens);
    v50 = 13;
    OUTLINED_FUNCTION_11();
    sub_1DA394904();
    v45 = *(v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_locale);
    v46 = *(v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_locale + 8);
    LOBYTE(v56) = 14;
    OUTLINED_FUNCTION_6();
    sub_1DA3948B4();
    LOBYTE(v56) = 15;
    sub_1DA3941C4();
    OUTLINED_FUNCTION_13();
    sub_1DA36DB2C(v47, v48);
    OUTLINED_FUNCTION_5();
    sub_1DA394904();
    return (*(v12 + 8))(v17, v10);
  }
}

uint64_t sub_1DA36BC90()
{
  sub_1DA3949D4();
  sub_1DA36AA48(v1);
  return sub_1DA394A14();
}

uint64_t AutoCompletePhrase.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  AutoCompletePhrase.init(from:)(a1);
  return v5;
}

void *AutoCompletePhrase.init(from:)(uint64_t *a1)
{
  v116 = sub_1DA3941C4();
  v4 = OUTLINED_FUNCTION_0(v116);
  v114 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_25(v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2D0, &unk_1DA395FF0);
  OUTLINED_FUNCTION_23(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25(v112 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2C8, &unk_1DA394FD0);
  OUTLINED_FUNCTION_23(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25(v112 - v19);
  v20 = sub_1DA393F34();
  v21 = OUTLINED_FUNCTION_0(v20);
  v119 = v22;
  v120 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_7();
  v122 = v26 - v25;
  v27 = sub_1DA394264();
  v28 = OUTLINED_FUNCTION_0(v27);
  v121 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_7();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD308, &qword_1DA395010);
  v36 = OUTLINED_FUNCTION_0(v35);
  v123 = v37;
  v124 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_28();
  v41 = (v1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_zkwGenerationId);
  *v41 = 0;
  v41[1] = 0;
  v129 = v41;
  v42 = v1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedScore;
  *v42 = 0;
  *(v42 + 8) = 1;
  v43 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_recentTapTimeStamp;
  v44 = sub_1DA393F04();
  v128 = v43;
  v130 = v1;
  OUTLINED_FUNCTION_35();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
  v48 = a1[3];
  v49 = a1[4];
  v127 = a1;
  v50 = __swift_project_boxed_opaque_existential_1(a1, v48);
  sub_1DA36CCB0();
  v125 = v2;
  v51 = v126;
  sub_1DA394A24();
  p_vtable = &OBJC_METACLASS____TtC19SiriAutoCompleteAPI33StopWordAndNonSignificantWordList.vtable;
  v53 = &OBJC_METACLASS____TtC19SiriAutoCompleteAPI33StopWordAndNonSignificantWordList.vtable;
  if (v51)
  {
    OUTLINED_FUNCTION_4();
    v57 = v130;
    goto LABEL_4;
  }

  v54 = v34;
  v55 = v122;
  v113 = v42;
  v112[1] = v44;
  v126 = v27;
  v133 = 0;
  v56 = sub_1DA394884();
  v65 = v130;
  v130[2] = v56;
  v65[3] = v66;
  OUTLINED_FUNCTION_32(1);
  v65[4] = sub_1DA394884();
  v65[5] = v67;
  OUTLINED_FUNCTION_32(2);
  v112[0] = 0;
  v65[6] = sub_1DA394884();
  v65[7] = v68;
  v133 = 3;
  OUTLINED_FUNCTION_12();
  sub_1DA36DB2C(v69, v70);
  v71 = v126;
  sub_1DA3948A4();
  (*(v121 + 32))(v65 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_iconInfo, v54, v71);
  OUTLINED_FUNCTION_32(4);
  v72 = sub_1DA394884();
  v73 = (v65 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier);
  *v73 = v72;
  v73[1] = v74;
  v132 = 5;
  sub_1DA36CDA0();
  sub_1DA3948A4();
  v75 = v123;
  *(v65 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source) = v133;
  v133 = 6;
  OUTLINED_FUNCTION_17();
  sub_1DA36DB2C(v76, v77);
  v78 = v120;
  sub_1DA3948A4();
  a1 = &OBJC_METACLASS____TtC19SiriAutoCompleteAPI33StopWordAndNonSignificantWordList.vtable;
  (*(v119 + 32))(v65 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_uuidIdentifier, v55, v78);
  sub_1DA394334();
  v133 = 7;
  OUTLINED_FUNCTION_16();
  sub_1DA36DB2C(v84, v85);
  v86 = v118;
  v50 = v125;
  sub_1DA394874();
  sub_1DA36CDF4(v86, v65 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_toolInvocation);
  OUTLINED_FUNCTION_32(8);
  v87 = sub_1DA394854();
  v122 = 0;
  v89 = v87;
  v44 = v88;
  v90 = v129;
  OUTLINED_FUNCTION_21();
  swift_beginAccess();
  v91 = v90[1];
  *v90 = v89;
  v90[1] = v44;

  v132 = 9;
  v92 = v122;
  v93 = sub_1DA394864();
  v122 = v92;
  if (!v92)
  {
    v95 = v93;
    v96 = v94;
    v97 = v113;
    OUTLINED_FUNCTION_21();
    swift_beginAccess();
    *v97 = v95;
    *(v97 + 8) = v96 & 1;
    OUTLINED_FUNCTION_39(10);
    v98 = sub_1DA394894();
    v122 = 0;
    *(v130 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_tapCount) = v98;
    LOBYTE(v131) = 11;
    OUTLINED_FUNCTION_14();
    sub_1DA36DB2C(v99, v100);
    OUTLINED_FUNCTION_37();
    sub_1DA394874();
    v122 = 0;
    v101 = v128;
    v102 = v130;
    OUTLINED_FUNCTION_20();
    swift_beginAccess();
    sub_1DA368730(v117, v102 + v101);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD300, &unk_1DA395610);
    v134 = 12;
    sub_1DA36CE64(&qword_1EDCC5040);
    OUTLINED_FUNCTION_27();
    v122 = 0;
    *(v130 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_searchTokens) = v131;
    v134 = 13;
    OUTLINED_FUNCTION_27();
    v122 = 0;
    *(v130 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedPhraseTokens) = v131;
    OUTLINED_FUNCTION_39(14);
    v105 = sub_1DA394854();
    v122 = 0;
    v106 = (v130 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_locale);
    *v106 = v105;
    v106[1] = v107;
    LOBYTE(v131) = 15;
    OUTLINED_FUNCTION_13();
    sub_1DA36DB2C(v108, v109);
    OUTLINED_FUNCTION_37();
    sub_1DA3948A4();
    v122 = 0;
    v110 = OUTLINED_FUNCTION_8();
    v111(v110);
    v57 = v130;
    (*(v114 + 32))(v130 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_suggestionType, v115, v116);
    __swift_destroy_boxed_opaque_existential_1(v127);
    return v57;
  }

  v103 = OUTLINED_FUNCTION_8();
  v104(v103);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  v57 = v130;
  v79 = v112[0];
  v80 = v130[3];

  if (!v79)
  {
    v81 = v57[5];
  }

  if (v86)
  {
    v82 = v57[7];
  }

  if (!v89)
  {
    if (!v75)
    {
      goto LABEL_19;
    }

LABEL_25:
    v83 = *(v57 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier + 8);

    if (&OBJC_METACLASS____TtC19SiriAutoCompleteAPI33StopWordAndNonSignificantWordList == -24)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  (*(v121 + 8))(v57 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_iconInfo, v126);
  if (v75)
  {
    goto LABEL_25;
  }

LABEL_19:
  if (&OBJC_METACLASS____TtC19SiriAutoCompleteAPI33StopWordAndNonSignificantWordList != -24)
  {
LABEL_20:
    (*(v119 + 8))(v57 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_uuidIdentifier, v120);
  }

LABEL_21:
  v53 = (&OBJC_METACLASS____TtC19SiriAutoCompleteAPI33StopWordAndNonSignificantWordList + 24);
  if (v125)
  {
    sub_1DA36CB60(v57 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_toolInvocation, &qword_1ECBAD2C8, &unk_1DA394FD0);
  }

  p_vtable = (&OBJC_METACLASS____TtC19SiriAutoCompleteAPI33StopWordAndNonSignificantWordList + 24);
LABEL_4:
  v58 = v129[1];

  sub_1DA36CB60(v57 + v128, &qword_1ECBAD2D0, &unk_1DA395FF0);
  if (!a1)
  {
    if (!v44)
    {
      goto LABEL_6;
    }

LABEL_11:
    v64 = *(p_vtable[347] + v57);

    if (!v50)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v63 = *(v57 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_searchTokens);

  if (v44)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (v50)
  {
LABEL_7:
    v59 = *(v53[343] + v57 + 8);
  }

LABEL_8:
  type metadata accessor for AutoCompletePhrase();
  v60 = *(*v57 + 48);
  v61 = *(*v57 + 52);
  swift_deallocPartialClassInstance();
  __swift_destroy_boxed_opaque_existential_1(v127);
  return v57;
}

uint64_t sub_1DA36C8F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = AutoCompletePhrase.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DA36C990()
{
  sub_1DA3949D4();
  v1 = *v0;
  sub_1DA36AA48(v3);
  return sub_1DA394A14();
}

uint64_t sub_1DA36C9DC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1DA36CA28(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_1DA36CA88(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_1DA36CA98()
{
  OUTLINED_FUNCTION_34();
  v3 = v2();
  v4 = *v1;
  *v4 = v3;
  *v1 = v4 + 1;
  v5 = *v0;
  if (*v0)
  {
    *v5 = v3;
    *v0 = v5 + 1;
  }

  else
  {
  }
}

void sub_1DA36CB08()
{
  v1 = *v0;
  sub_1DA38B354();
  *v0 = v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1DA36CB60(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_10(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_1DA36CBB8()
{
  v1 = *v0;
  sub_1DA38B428();
  *v0 = v2;
}

void sub_1DA36CBD8()
{
  v1 = *v0;
  sub_1DA38B5A4();
  *v0 = v2;
}

void sub_1DA36CBF8()
{
  v1 = *v0;
  sub_1DA38B738();
  *v0 = v2;
}

void sub_1DA36CC18()
{
  v1 = *v0;
  sub_1DA38B804();
  *v0 = v2;
}

uint64_t sub_1DA36CC38(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA74C060](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_1DA394354();

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1DA36CCB0()
{
  result = qword_1EDCC5180;
  if (!qword_1EDCC5180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC5180);
  }

  return result;
}

unint64_t sub_1DA36CD04()
{
  result = qword_1EDCC5190;
  if (!qword_1EDCC5190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC5190);
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

unint64_t sub_1DA36CDA0()
{
  result = qword_1EDCC4F58;
  if (!qword_1EDCC4F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC4F58);
  }

  return result;
}

uint64_t sub_1DA36CDF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2C8, &unk_1DA394FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA36CE64(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAD300, &unk_1DA395610);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA36CED4()
{
  result = qword_1ECBAD310;
  if (!qword_1ECBAD310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD310);
  }

  return result;
}

unint64_t sub_1DA36CF2C()
{
  result = qword_1ECBAD318;
  if (!qword_1ECBAD318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD318);
  }

  return result;
}

uint64_t sub_1DA36CFEC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1DA36D074(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

void sub_1DA36D158()
{
  v0 = sub_1DA394264();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    v2 = sub_1DA393F34();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_1DA36D818(319, &qword_1EDCC5050, MEMORY[0x1E69DAA28]);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_1DA36D818(319, &qword_1EDCC5490, MEMORY[0x1E6969530]);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          v8 = sub_1DA3941C4();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1DA36D818(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DA3945B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AutoCompletePhrase.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AutoCompletePhrase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DA36D9D4()
{
  result = qword_1ECBAD328;
  if (!qword_1ECBAD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD328);
  }

  return result;
}

unint64_t sub_1DA36DA2C()
{
  result = qword_1EDCC5170;
  if (!qword_1EDCC5170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC5170);
  }

  return result;
}

unint64_t sub_1DA36DA84()
{
  result = qword_1EDCC5178;
  if (!qword_1EDCC5178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC5178);
  }

  return result;
}

unint64_t sub_1DA36DAD8()
{
  result = qword_1EDCC5188;
  if (!qword_1EDCC5188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC5188);
  }

  return result;
}

uint64_t sub_1DA36DB2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_8()
{
  v1 = *(v0 - 216);
  v2 = *(*(v0 - 224) + 8);
  return *(v0 - 208);
}

uint64_t OUTLINED_FUNCTION_19()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_22()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27()
{
  v2 = *(v0 - 216);
  v3 = *(v0 - 208);
  v4 = *(v0 - 232);

  return sub_1DA3948A4();
}

uint64_t OUTLINED_FUNCTION_31()
{

  return sub_1DA394934();
}

uint64_t OUTLINED_FUNCTION_37()
{
  result = *(v0 - 256);
  v3 = *(v1 - 216);
  v4 = *(v1 - 208);
  v5 = *(v1 - 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_39@<X0>(char a1@<W8>)
{
  *(v1 - 160) = a1;
  result = v1 - 160;
  v3 = *(v1 - 216);
  v4 = *(v1 - 208);
  v5 = *(v1 - 232);
  return result;
}

void OUTLINED_FUNCTION_45(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_46()
{

  JUMPOUT(0x1DA74C560);
}

uint64_t sub_1DA36DEF8(uint64_t a1, uint64_t a2)
{
  v28 = MEMORY[0x1E69E7CD0];
  v25 = *(a1 + 16);
  if (v25)
  {
    v2 = 0;
    v3 = *(a2 + 16);
    v24 = a1 + 32;
    v26 = a2 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v5 = (v24 + 16 * v2);
      v7 = *v5;
      v6 = v5[1];
      ++v2;
      v8 = v28;
      v9 = v28 + 56;

      for (i = 0; ; ++i)
      {
        if (i == v3)
        {

          goto LABEL_16;
        }

        v11 = (v26 + 16 * i);
        v13 = *v11;
        v12 = v11[1];

        if (sub_1DA394424())
        {
          break;
        }

LABEL_10:
      }

      if (*(v8 + 16))
      {
        v14 = *(v8 + 40);
        v15 = sub_1DA3949C4();
        v16 = ~(-1 << *(v8 + 32));
        while (1)
        {
          v17 = v15 & v16;
          if (((*(v9 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
          {
            break;
          }

          v15 = v17 + 1;
          if (*(*(v8 + 48) + 8 * v17) == i)
          {
            goto LABEL_10;
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = *(v4 + 16);
        sub_1DA377BAC();
        v4 = v21;
      }

      v18 = *(v4 + 16);
      if (v18 >= *(v4 + 24) >> 1)
      {
        sub_1DA377BAC();
        v4 = v22;
      }

      *(v4 + 16) = v18 + 1;
      v19 = v4 + 16 * v18;
      *(v19 + 32) = v13;
      *(v19 + 40) = v12;
      sub_1DA378404(&v27, i);
LABEL_16:
      ;
    }

    while (v2 != v25);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t dispatch thunk of AutoCompleteXPCClient.getAutoCompletePhrase(query:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 8);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_1DA36E240;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1DA36E240()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DA36E340(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x64726F57706F7473;
  }
}

os_unfair_lock_s *sub_1DA36E380()
{
  type metadata accessor for StopWordAndNonSignificantWordList();
  swift_allocObject();
  result = sub_1DA36E418();
  qword_1EDCC5018 = result;
  return result;
}

uint64_t static StopWordAndNonSignificantWordList.shared.getter()
{
  if (qword_1EDCC5010 != -1)
  {
    swift_once();
  }
}

os_unfair_lock_s *sub_1DA36E418()
{
  v1 = v0;
  v2 = *&v0->_os_unfair_lock_opaque;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD340, &qword_1DA395600);
  v3 = sub_1DA394344();
  v0[4]._os_unfair_lock_opaque = 0;
  v4 = v0 + 4;
  *&v0[6]._os_unfair_lock_opaque = v3;
  if (qword_1EDCC5960 != -1)
  {
    swift_once();
  }

  DefaultLocaleProvider.updateLocale()();

  v5 = DefaultLocaleProvider.siriLocale.getter();
  v7 = sub_1DA36E530(v5, v6);

  os_unfair_lock_lock(v4);
  v8 = *&v1[6]._os_unfair_lock_opaque;

  *&v1[6]._os_unfair_lock_opaque = v7;
  os_unfair_lock_unlock(v4);
  return v1;
}

uint64_t sub_1DA36E530(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DA393EC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v70 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD340, &qword_1DA395600);
  v11 = sub_1DA394344();
  if (sub_1DA3943C4() < 3)
  {
    if (qword_1EDCC5A30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v26 = sub_1DA3942F4();
    __swift_project_value_buffer(v26, qword_1EDCC5A38);

    v27 = sub_1DA3942D4();
    v28 = sub_1DA394584();

    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_13;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v82[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_1DA372AD8(a1, a2, v82);
    _os_log_impl(&dword_1DA365000, v27, v28, "StopWordAndNonSignificantWordList: locale %s is malformed, returning empty wordList", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_46();
    goto LABEL_12;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];

  v14 = sub_1DA37ACD8(2);
  v15 = MEMORY[0x1DA74BA20](v14);
  v17 = v16;

  v18 = sub_1DA36F1B4(v15, v17, 0x7473696C70, 0xE500000000000000, v13);

  if (v18)
  {
    sub_1DA393EB4();

    (*(v5 + 32))(v81, v9, v4);
    v19 = sub_1DA393E14();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = sub_1DA393E04();
    v23 = sub_1DA393ED4();
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD348, &qword_1DA395608);
    sub_1DA36F248();
    sub_1DA393DF4();
    v71 = v23;
    v72 = v25;
    v73 = v22;
    v74 = v5;
    v75 = v4;
    v35 = 0;
    v36 = 0;
    v37 = v82[0];
    v38 = 0x80000001DA396D90;
    *&v39 = 136315138;
    v78 = v39;
    v76 = 0x80000001DA396D90;
    v77 = v82[0];
    while (1)
    {
      LODWORD(v40) = v35;
      v41 = *(&unk_1F55E4B50 + v36 + 32) ? 0xD000000000000013 : 0x64726F57706F7473;
      v42 = *(&unk_1F55E4B50 + v36 + 32) ? v38 : 0xE900000000000073;
      if (!*(v37 + 16))
      {
        break;
      }

      v43 = sub_1DA3753E0(v41, v42);
      v45 = v44;

      if ((v45 & 1) == 0)
      {
        goto LABEL_30;
      }

      v80 = v11;
      v46 = *(*(v37 + 56) + 8 * v43);
      v47 = *(v46 + 16);
      if (v47)
      {
        v48 = v41;
        v79 = v40;
        v82[0] = MEMORY[0x1E69E7CC0];

        sub_1DA36CB08();
        v49 = v82[0];
        v50 = (v46 + 40);
        do
        {
          v51 = *(v50 - 1);
          v52 = *v50;
          v53 = sub_1DA394394();
          v55 = v54;
          v82[0] = v49;
          v56 = *(v49 + 16);
          if (v56 >= *(v49 + 24) >> 1)
          {
            sub_1DA36CB08();
            v49 = v82[0];
          }

          *(v49 + 16) = v56 + 1;
          v57 = v49 + 16 * v56;
          *(v57 + 32) = v53;
          *(v57 + 40) = v55;
          v50 += 2;
          --v47;
        }

        while (v47);

        v38 = v76;
        v37 = v77;
        LOBYTE(v40) = v79;
        v41 = v48;
      }

      else
      {
        v49 = MEMORY[0x1E69E7CC0];
      }

      v67 = sub_1DA37E634(v49);
      v68 = v80;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82[0] = v68;
      sub_1DA3755B0(v67, v41, v42, isUniquelyReferenced_nonNull_native);

      v11 = v82[0];
LABEL_37:
      v35 = 1;
      v36 = 1u;
      if (v40)
      {
        (*(v74 + 8))(v81, v75);
        sub_1DA36F350(v71, v72);

        return v11;
      }
    }

LABEL_30:
    if (qword_1EDCC5A30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v58 = sub_1DA3942F4();
    __swift_project_value_buffer(v58, qword_1EDCC5A38);
    v59 = sub_1DA3942D4();
    v60 = sub_1DA394594();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = v37;
      v63 = v38;
      v64 = v11;
      v65 = v40;
      v40 = swift_slowAlloc();
      v82[0] = v40;
      *v61 = v78;
      v66 = sub_1DA372AD8(v41, v42, v82);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_1DA365000, v59, v60, "StopWordAndNonSignificantWordList: Unable to find key in the plist: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      LOBYTE(v40) = v65;
      v11 = v64;
      v38 = v63;
      v37 = v62;
      OUTLINED_FUNCTION_46();
      OUTLINED_FUNCTION_46();
    }

    goto LABEL_37;
  }

  if (qword_1EDCC5A30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v31 = sub_1DA3942F4();
  __swift_project_value_buffer(v31, qword_1EDCC5A38);
  v27 = sub_1DA3942D4();
  v32 = sub_1DA394584();
  if (os_log_type_enabled(v27, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1DA365000, v27, v32, "StopWordAndNonSignificantWordList: unable to get path to the list of stop words and non significant words", v33, 2u);
LABEL_12:
    OUTLINED_FUNCTION_46();
  }

LABEL_13:

  return v11;
}

BOOL sub_1DA36EDB0(uint64_t a1, uint64_t a2, char a3)
{
  os_unfair_lock_lock((v3 + 16));
  sub_1DA36EE18((v3 + 24), a3 & 1, &v6);
  os_unfair_lock_unlock((v3 + 16));
  return v6;
}

void sub_1DA36EE18(void *a1@<X0>, char a2@<W1>, BOOL *a3@<X8>)
{
  if (a2)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0x64726F57706F7473;
  }

  if (a2)
  {
    v5 = 0x80000001DA396D90;
  }

  else
  {
    v5 = 0xE900000000000073;
  }

  v6 = sub_1DA373C4C(v4, v5, *a1);

  if (v6)
  {
    v7 = sub_1DA394394();
    v9 = sub_1DA3769F0(v7, v8, v6);

    v10 = v9;
  }

  else
  {
    if (qword_1EDCC5A30 != -1)
    {
      swift_once();
    }

    v11 = sub_1DA3942F4();
    __swift_project_value_buffer(v11, qword_1EDCC5A38);
    v12 = sub_1DA3942D4();
    v13 = sub_1DA394594();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      v16 = sub_1DA372AD8(v4, v5, &v17);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_1DA365000, v12, v13, "StopWordAndNonSignificantWordList: Unable to find key in StopWordAndNonSignificantWordList: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1DA74C560](v15, -1, -1);
      MEMORY[0x1DA74C560](v14, -1, -1);
    }

    v10 = 0;
  }

  *a3 = v10;
}

Swift::Void __swiftcall StopWordAndNonSignificantWordList.updateWordList(locale:)(Swift::String locale)
{
  v2 = v1;
  v3 = *&v1->_os_unfair_lock_opaque;
  v4 = sub_1DA36E530(locale._countAndFlagsBits, locale._object);
  os_unfair_lock_lock(v2 + 4);
  v5 = *&v2[6]._os_unfair_lock_opaque;

  *&v2[6]._os_unfair_lock_opaque = v4;

  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_1DA36F0A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD330, &qword_1DA395540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StopWordAndNonSignificantWordList.__deallocating_deinit()
{
  sub_1DA36F0A0(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

id sub_1DA36F1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1DA394374();

  v7 = sub_1DA394374();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

unint64_t sub_1DA36F248()
{
  result = qword_1EDCC4D98;
  if (!qword_1EDCC4D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAD348, &qword_1DA395608);
    sub_1DA36F2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC4D98);
  }

  return result;
}

unint64_t sub_1DA36F2D4()
{
  result = qword_1EDCC5040;
  if (!qword_1EDCC5040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAD300, &unk_1DA395610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC5040);
  }

  return result;
}

uint64_t sub_1DA36F350(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *sub_1DA36F3BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v7 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_1_0();
    v8 = v75;
    v9 = (a1 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v12 = sub_1DA394394();
      v2 = v13;
      v75 = v8;
      v14 = v8[2];
      if (v14 >= v8[3] >> 1)
      {
        sub_1DA36CB08();
      }

      v8[2] = v14 + 1;
      v15 = &v8[2 * v14];
      v15[4] = v12;
      v15[5] = v2;
      v9 += 2;
      --v4;
    }

    while (v4);
    v5 = v7;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v16 = *(a2 + 16);
  if (v16)
  {
    OUTLINED_FUNCTION_1_0();
    v5 = v75;
    v17 = (a2 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      v20 = sub_1DA394394();
      v2 = v21;
      v22 = v75[2];
      v23 = (v22 + 1);
      if (v22 >= v75[3] >> 1)
      {
        sub_1DA36CB08();
      }

      v75[2] = v23;
      v24 = &v75[2 * v22];
      v24[4] = v20;
      v24[5] = v2;
      v17 += 2;
      --v16;
    }

    while (v16);
  }

  else
  {
    v23 = v5[2];
  }

  v71 = v8[2];
  if (!v71 || !v23)
  {

    if (v23 <= v71)
    {
      return v71;
    }

    else
    {
      return v23;
    }
  }

  v25 = sub_1DA36F950(0, v23 + 1);
  v26 = sub_1DA36F9F4(v25, v71 + 1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_97;
  }

  while (1)
  {
    if (v26[2] < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v74 = v5;
      v5 = v26[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26[5] = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_20;
      }
    }

    OUTLINED_FUNCTION_0_1();
    v26[5] = v69;
LABEL_20:
    if (v5[2])
    {
      v5[4] = 1;
      v28 = v71 - 1;
      if (v71 != 1)
      {
        v57 = v26 + 6;
        v58 = 2;
        while (v58 < v26[2])
        {
          v5 = *v57;
          v59 = swift_isUniquelyReferenced_nonNull_native();
          *v57 = v5;
          if ((v59 & 1) == 0)
          {
            OUTLINED_FUNCTION_0_1();
            *v57 = v60;
          }

          if (!v5[2])
          {
            goto LABEL_94;
          }

          v5[4] = v58++;
          ++v57;
          if (!--v28)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

LABEL_22:
      if (v26[2])
      {
        v2 = v26 + 4;
        v5 = v26[4];
        v29 = swift_isUniquelyReferenced_nonNull_native();
        v26[4] = v5;
        if (v29)
        {
          goto LABEL_24;
        }

        goto LABEL_102;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_102:
    OUTLINED_FUNCTION_0_1();
LABEL_24:
    if (v5[2] < 2uLL)
    {
      __break(1u);
LABEL_104:
      swift_once();
      goto LABEL_88;
    }

    v5[5] = 1;
    *v2 = v5;
    v30 = v23 - 1;
    if (v23 == 1)
    {
      break;
    }

    v61 = 6;
    while (v26[2])
    {
      v5 = *v2;
      v62 = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v5;
      if ((v62 & 1) == 0)
      {
        OUTLINED_FUNCTION_0_1();
        *v2 = v63;
      }

      if ((v61 - 4) >= v5[2])
      {
        goto LABEL_96;
      }

      v5[v61] = v61 - 4;
      ++v61;
      if (!--v30)
      {
        goto LABEL_26;
      }
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    sub_1DA36FAD4(v26);
    v26 = v68;
  }

LABEL_26:
  v72 = v26;
  v73 = v8;
  v31 = v74;
  v70 = v8 + 4;
  v32 = 1;
  while (2)
  {
    v33 = 0;
    v34 = v32 - 1;
    v35 = v74 + 5;
    v36 = &v70[2 * v32 - 2];
    do
    {
      if (v34 >= v73[2])
      {
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      if (v33 >= v31[2])
      {
        goto LABEL_75;
      }

      v37 = *v36 == *(v35 - 1) && v36[1] == *v35;
      v38 = !v37 && (sub_1DA394934() & 1) == 0;
      v39 = *(v72 + 16);
      if (v34 >= v39)
      {
        goto LABEL_76;
      }

      v30 = v33 + 1;
      v40 = v2[v34];
      if (v33 + 1 >= *(v40 + 16))
      {
        goto LABEL_77;
      }

      v41 = v40 + 8 * v33;
      v42 = *(v41 + 40);
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_78;
      }

      if (v32 >= v39)
      {
        goto LABEL_79;
      }

      v45 = v2[v32];
      if (v33 >= *(v45 + 16))
      {
        goto LABEL_80;
      }

      v46 = *(v45 + 8 * v33 + 32);
      v43 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v43)
      {
        goto LABEL_81;
      }

      v48 = *(v41 + 32);
      v43 = __OFADD__(v48, v38);
      v49 = v48 + v38;
      if (v43)
      {
        goto LABEL_82;
      }

      v8 = v23;
      if (v47 < v44)
      {
        v44 = v47;
      }

      if (v49 >= v44)
      {
        v50 = v44;
      }

      else
      {
        v50 = v49;
      }

      v51 = v2[v32];
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v2[v32] = v45;
      if ((v52 & 1) == 0)
      {
        OUTLINED_FUNCTION_0_1();
        v2[v32] = v53;
      }

      if (v30 >= *(v45 + 16))
      {
        goto LABEL_83;
      }

      *(v45 + 8 * v33++ + 40) = v50;
      v35 += 2;
      v23 = v8;
      v31 = v74;
    }

    while (v8 != v33);
    v37 = v32++ == v71;
    if (!v37)
    {
      continue;
    }

    break;
  }

  v54 = sub_1DA36FA8C(v72);
  if (!v54)
  {
    goto LABEL_87;
  }

  v30 = *(v54 + 16);
  if (v30)
  {
    v55 = *(v54 + 8 * v30 + 24);
    goto LABEL_85;
  }

LABEL_84:
  v55 = 0;
LABEL_85:

  if (v30)
  {

    return v55;
  }

LABEL_87:
  if (qword_1EDCC52A0 != -1)
  {
    goto LABEL_104;
  }

LABEL_88:
  v64 = sub_1DA3942F4();
  __swift_project_value_buffer(v64, qword_1EDCC51C0);
  v65 = sub_1DA3942D4();
  v66 = sub_1DA394594();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_1DA365000, v65, v66, "EditDistance: The output matrix was unexpectedly empty.", v67, 2u);
    MEMORY[0x1DA74C560](v67, -1, -1);
  }

  if (v8 <= v71)
  {
    return v71;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_1DA36F950(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_1DA394514();
    v4 = 0;
    *(result + 16) = a2;
    v5 = vdupq_n_s64(a2 - 1);
    do
    {
      v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_1DA395620)));
      v7 = result + 8 * v4;
      if (v6.i8[0])
      {
        *(v7 + 32) = v3;
      }

      if (v6.i8[4])
      {
        *(v7 + 40) = v3;
      }

      v4 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1DA36F9F4(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD350, &unk_1DA395630);
      v4 = sub_1DA394514();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 8)
      {
        *(v4 + i) = v3;
        if (!v5)
        {
          break;
        }

        --v5;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v4;
  }

  return result;
}

uint64_t sub_1DA36FA8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 8 * v1 + 24);
}

void OUTLINED_FUNCTION_1_0()
{

  sub_1DA36CB08();
}

uint64_t sub_1DA36FBC0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1DA3942F4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1DA3942E4();
}

uint64_t sub_1DA36FC58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1DA3942F4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1DA36FD4C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1DA3701D0();
  result = sub_1DA3945A4();
  *a3 = result;
  return result;
}

id sub_1DA36FDD8(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

uint64_t sub_1DA36FF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t))
{
  v16[1] = a5;
  v9 = sub_1DA3942B4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  a8(v12);
  sub_1DA3942A4();
  sub_1DA394294();
  return (*(v10 + 8))(v14, v9);
}

uint64_t getEnumTagSinglePayload for VectorDBWriteClientManager.DBWriteClientManagerErrors(unsigned int *a1, int a2)
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

_BYTE *sub_1DA3700EC(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA3701D0()
{
  result = qword_1EDCC4D90;
  if (!qword_1EDCC4D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCC4D90);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

Swift::String_optional __swiftcall DefaultLocaleProvider.updateLocale()()
{
  v1 = v0;
  v2 = *&v0->_os_unfair_lock_opaque;
  v3 = DefaultLocaleProvider.siriLocale.getter();
  v5 = v4;
  v6 = sub_1DA3704BC();
  v8 = v7;
  if (v6 == v3 && v7 == v5)
  {
  }

  else
  {
    v10 = v6;
    v11 = sub_1DA394934();

    if ((v11 & 1) == 0)
    {
      os_unfair_lock_lock(v1 + 4);
      v12 = *&v1[8]._os_unfair_lock_opaque;

      *&v1[6]._os_unfair_lock_opaque = v10;
      *&v1[8]._os_unfair_lock_opaque = v8;

      os_unfair_lock_unlock(v1 + 4);
      goto LABEL_10;
    }
  }

  v10 = 0;
  v8 = 0;
LABEL_10:
  v13 = v10;
  v14 = v8;
  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

uint64_t DefaultLocaleProvider.siriLocale.getter()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

uint64_t *sub_1DA3703CC()
{
  type metadata accessor for DefaultLocaleProvider();
  swift_allocObject();
  result = sub_1DA370464();
  qword_1EDCC5968 = result;
  return result;
}

uint64_t static DefaultLocaleProvider.shared.getter()
{
  if (qword_1EDCC5960 != -1)
  {
    swift_once();
  }
}

uint64_t *sub_1DA370464()
{
  v1 = *v0;
  v2 = sub_1DA3704BC();
  *(v0 + 4) = 0;
  v0[3] = v2;
  v0[4] = v3;
  return v0;
}

uint64_t sub_1DA3704BC()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = sub_1DA393968(v0);
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    if (qword_1EDCC5A30 != -1)
    {
      swift_once();
    }

    v5 = sub_1DA3942F4();
    __swift_project_value_buffer(v5, qword_1EDCC5A38);

    v6 = sub_1DA3942D4();
    v7 = sub_1DA394584();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1DA372AD8(v3, v4, &v15);
      _os_log_impl(&dword_1DA365000, v6, v7, "Fetched AFPreferences Siri Locale: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1DA74C560](v9, -1, -1);
      MEMORY[0x1DA74C560](v8, -1, -1);
    }
  }

  else
  {
    if (qword_1EDCC5A30 != -1)
    {
      swift_once();
    }

    v10 = sub_1DA3942F4();
    __swift_project_value_buffer(v10, qword_1EDCC5A38);
    v11 = sub_1DA3942D4();
    v12 = sub_1DA394594();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DA365000, v11, v12, "Unable to fetch Siri locale", v13, 2u);
      MEMORY[0x1DA74C560](v13, -1, -1);
    }

    return 0;
  }

  return v3;
}

uint64_t DefaultLocaleProvider.__deallocating_deinit()
{
  sub_1DA370714(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t static DefaultMorphunTokenizer.shared.getter()
{
  if (qword_1EDCC5950 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DA3708A8()
{
  v0 = type metadata accessor for DefaultMorphunTokenizer();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1DA3708E8();
  qword_1EDCC5958 = result;
  return result;
}

uint64_t sub_1DA3708E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD368, &qword_1DA395760);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = sub_1DA393F74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v19 - v12);
  v14 = v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_assetRegisteredStatus;
  *v14 = 0;
  *(v14 + 4) = 0;
  v15 = v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizer;
  *v15 = 0;
  *(v15 + 8) = 0;
  if (qword_1EDCC5960 != -1)
  {
    swift_once();
  }

  DefaultLocaleProvider.updateLocale()();

  DefaultLocaleProvider.siriLocale.getter();

  sub_1DA393F44();
  sub_1DA393F44();
  *v5 = 0;
  v16 = *(v2 + 28);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD3B0, qword_1DA395850);
  bzero(&v5[v16], *(*(v17 - 8) + 64));
  (*(v7 + 32))(&v5[v16], v11, v6);
  memcpy((v1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizerLocale), v5, v3);
  sub_1DA370B54(v13);
  (*(v7 + 8))(v13, v6);
  return v1;
}

void sub_1DA370B54(NSObject *a1)
{
  v3 = sub_1DA393F74();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v84 = v9 - v10;
  OUTLINED_FUNCTION_9_0();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v79 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v79 - v15;
  v16 = sub_1DA393EC4();
  v87 = OUTLINED_FUNCTION_0(v16);
  v88 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_5_0();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v89 = &v79 - v24;
  v25 = v1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_assetRegisteredStatus;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_assetRegisteredStatus));
  *(v25 + 4) = 0;
  os_unfair_lock_unlock(v25);
  v26 = (v1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizerLocale);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizerLocale));
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD368, &qword_1DA395760) + 28);
  v85 = *(v6 + 8);
  v85(v26 + v27, v3);
  v28 = *(v6 + 16);
  v90 = a1;
  v86 = v28;
  v28(v26 + v27, a1, v3);
  os_unfair_lock_unlock(v26);
  v29 = v1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizer;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizer));
  v30 = *(v29 + 8);

  *(v29 + 8) = 0;
  os_unfair_lock_unlock(v29);
  v31 = [objc_opt_self() processInfo];
  v32 = [v31 processName];

  sub_1DA394384();
  v33 = sub_1DA394394();
  v35 = v34;

  v36 = v33 == 1769105779 && v35 == 0xE400000000000000;
  if (v36 || (sub_1DA394934() & 1) != 0 || (v33 == 0x6573636E69726973 ? (v37 = v35 == 0xED00006563697672) : (v37 = 0), v37))
  {
  }

  else
  {
    v38 = sub_1DA394934();

    if ((v38 & 1) == 0)
    {
      v39 = objc_opt_self();
      v40 = sub_1DA393F64();
      v41 = [v39 getAssetPathForLocale_];

      if (v41)
      {
        v42 = v89;
        sub_1DA393EB4();

        if (qword_1EDCC5A30 != -1)
        {
          OUTLINED_FUNCTION_22();
        }

        v43 = sub_1DA3942F4();
        v44 = __swift_project_value_buffer(v43, qword_1EDCC5A38);
        v45 = v87;
        v46 = v88;
        (*(v88 + 16))(v22, v42, v87);
        v81 = v44;
        v47 = sub_1DA3942D4();
        v48 = sub_1DA394584();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v79 = v49;
          v50 = swift_slowAlloc();
          v91 = v50;
          *v49 = 136315138;
          v80 = v48;
          v51 = sub_1DA393E74();
          v53 = v52;
          v82 = *(v88 + 8);
          v82(v22, v87);
          v54 = sub_1DA372AD8(v51, v53, &v91);

          v55 = v79;
          *(v79 + 1) = v54;
          _os_log_impl(&dword_1DA365000, v47, v80, "DefaultMorphunTokenizer: Registering %s with libmorphun.", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v50);
          OUTLINED_FUNCTION_46();
          OUTLINED_FUNCTION_46();
        }

        else
        {

          v82 = *(v46 + 8);
          v82(v22, v45);
        }

        sub_1DA393E74();
        v72 = v90;
        sub_1DA393FA4();

        v86(v83, v72, v3);
        v73 = sub_1DA394014();
        v74 = *(v73 + 48);
        v75 = *(v73 + 52);
        swift_allocObject();
        v77 = sub_1DA394004();
        os_unfair_lock_lock(v29);
        v78 = *(v29 + 8);

        *(v29 + 8) = v77;

        os_unfair_lock_unlock(v29);
        os_unfair_lock_lock(v25);
        *(v25 + 4) = 1;
        os_unfair_lock_unlock(v25);

        v82(v89, v87);
      }

      else
      {
        if (qword_1EDCC5A30 != -1)
        {
          OUTLINED_FUNCTION_22();
        }

        v60 = sub_1DA3942F4();
        __swift_project_value_buffer(v60, qword_1EDCC5A38);
        v86(v14, v90, v3);
        v61 = sub_1DA3942D4();
        v62 = sub_1DA394584();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v91 = v64;
          *v63 = 136315138;
          OUTLINED_FUNCTION_4_0();
          sub_1DA373794(v65, v66);
          v67 = sub_1DA394924();
          v69 = v68;
          OUTLINED_FUNCTION_11_0();
          v70();
          v71 = sub_1DA372AD8(v67, v69, &v91);

          *(v63 + 4) = v71;
          _os_log_impl(&dword_1DA365000, v61, v62, "DefaultMorphunTokenizer: Cannot get path for %s Morphun assets", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v64);
          OUTLINED_FUNCTION_46();
          OUTLINED_FUNCTION_46();
        }

        else
        {

          OUTLINED_FUNCTION_11_0();
          v76();
        }
      }

      return;
    }
  }

  if (qword_1EDCC5A30 != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v56 = sub_1DA3942F4();
  __swift_project_value_buffer(v56, qword_1EDCC5A38);
  v90 = sub_1DA3942D4();
  v57 = sub_1DA394584();
  if (os_log_type_enabled(v90, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_1DA365000, v90, v57, "DefaultMorphunTokenizer: Not registering Morphun path for Siri process", v58, 2u);
    OUTLINED_FUNCTION_46();
  }

  v59 = v90;
}

uint64_t DefaultMorphunTokenizer.tokenize(_:)(uint64_t a1, unint64_t a2)
{
  v96 = sub_1DA393FE4();
  v5 = OUTLINED_FUNCTION_0(v96);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v98 = v10 - v11;
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x1EEE9AC00](v12);
  v97 = &v84 - v13;
  v91 = sub_1DA393FD4();
  v14 = OUTLINED_FUNCTION_0(v91);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  v90 = v19 - v20;
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x1EEE9AC00](v21);
  v88 = &v84 - v22;
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v84 - v24;
  v26 = sub_1DA371E24();
  v28 = v27;
  v29 = v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizer;
  os_unfair_lock_lock(v29);
  sub_1DA371FB0((v29 + 8), a1, a2, v106);
  os_unfair_lock_unlock(v29);
  v30 = v106[0];
  if (v106[0])
  {
    v85 = a1;
    v86 = a2;

    v106[0] = v30;
    sub_1DA393F94();
    sub_1DA373794(&qword_1EDCC5070, MEMORY[0x1E69B2880]);
    v84 = v30;

    v31 = sub_1DA394464();
    v32 = 0;
    v100 = *(v31 + 16);
    v102 = v16 + 16;
    v95 = *MEMORY[0x1E69B2908];
    v93 = (v7 + 8);
    v94 = (v7 + 104);
    v101 = (v16 + 8);
    v99 = v16;
    v87 = (v16 + 32);
    v89 = MEMORY[0x1E69E7CC0];
    v33 = v91;
    v92 = v31;
    while (v100 != v32)
    {
      if (v32 >= *(v31 + 16))
      {
        __break(1u);
        goto LABEL_42;
      }

      v34 = (*(v99 + 80) + 32) & ~*(v99 + 80);
      a2 = *(v99 + 72);
      (*(v99 + 16))(v25, v31 + v34 + a2 * v32, v33);
      v35 = v97;
      sub_1DA393FB4();
      v7 = v25;
      v36 = v98;
      v37 = v32;
      v38 = v96;
      (*v94)(v98, v95, v96);
      sub_1DA373794(&qword_1EDCC5068, MEMORY[0x1E69B2910]);
      sub_1DA394474();
      sub_1DA394474();
      v39 = *v93;
      (*v93)(v36, v38);
      v39(v35, v38);
      if (v104 == v103)
      {
        v40 = v37;
        v41 = *v87;
        (*v87)(v88, v7, v33);
        v42 = v89;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v42;
        v106[0] = v42;
        v25 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v45 = *(v44 + 16);
          OUTLINED_FUNCTION_12_0();
          sub_1DA36CBB8();
          v33 = v91;
          v44 = v106[0];
        }

        v31 = v92;
        v47 = *(v44 + 16);
        v46 = *(v44 + 24);
        v7 = v47 + 1;
        if (v47 >= v46 >> 1)
        {
          OUTLINED_FUNCTION_7_0(v46);
          sub_1DA36CBB8();
          v33 = v91;
          v44 = v106[0];
        }

        v32 = v40 + 1;
        *(v44 + 16) = v7;
        v89 = v44;
        v41((v44 + v34 + v47 * a2), v88, v33);
      }

      else
      {
        (*v101)(v7, v33);
        v32 = v37 + 1;
        v25 = v7;
        v31 = v92;
      }
    }

    v48 = *(v89 + 16);
    if (v48)
    {
      v106[0] = MEMORY[0x1E69E7CC0];
      v49 = v89;
      sub_1DA36CB08();
      v50 = v91;
      v7 = v106[0];
      v51 = v49 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
      v52 = *(v99 + 72);
      v53 = *(v99 + 16);
      do
      {
        v54 = v90;
        v53(v90, v51, v50);
        v55 = sub_1DA393FC4();
        v50 = v91;
        v56 = v55;
        v58 = v57;
        (*v101)(v54, v91);
        v106[0] = v7;
        v60 = *(v7 + 16);
        v59 = *(v7 + 24);
        if (v60 >= v59 >> 1)
        {
          OUTLINED_FUNCTION_7_0(v59);
          sub_1DA36CB08();
          v50 = v91;
          v7 = v106[0];
        }

        *(v7 + 16) = v60 + 1;
        v61 = v7 + 16 * v60;
        *(v61 + 32) = v56;
        *(v61 + 40) = v58;
        v51 += v52;
        --v48;
      }

      while (v48);
    }

    else
    {

      v7 = MEMORY[0x1E69E7CC0];
    }

    a2 = v86;
    v31 = v85;
    if (qword_1EDCC5A30 == -1)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if (qword_1EDCC5A30 != -1)
    {
      OUTLINED_FUNCTION_22();
    }

    v102 = 0;
    v62 = sub_1DA3942F4();
    __swift_project_value_buffer(v62, qword_1EDCC5A38);
    v63 = sub_1DA3942D4();
    v64 = sub_1DA394584();
    if (os_log_type_enabled(v63, v64))
    {
      a2 = swift_slowAlloc();
      *a2 = 0;
      _os_log_impl(&dword_1DA365000, v63, v64, "DefaultMorphunTokenizer: fallback to default tokenization", a2, 2u);
      OUTLINED_FUNCTION_46();
    }

    v106[0] = v26;
    v106[1] = v28;
    v104 = 32;
    v105 = 0xE100000000000000;
    sub_1DA368C30();
    v65 = sub_1DA3945C4();

    v31 = 0;
    v66 = *(v65 + 16);
    v7 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v67 = (v65 + 40 + 16 * v31);
    while (1)
    {
      if (v66 == v31)
      {

        return v7;
      }

      if (v31 >= *(v65 + 16))
      {
        break;
      }

      ++v31;
      v69 = *(v67 - 1);
      v68 = *v67;
      v67 += 2;
      v70 = HIBYTE(v68) & 0xF;
      if ((v68 & 0x2000000000000000) == 0)
      {
        v70 = v69 & 0xFFFFFFFFFFFFLL;
      }

      if (v70)
      {

        v71 = swift_isUniquelyReferenced_nonNull_native();
        v106[0] = v7;
        if ((v71 & 1) == 0)
        {
          v72 = *(v7 + 16);
          OUTLINED_FUNCTION_12_0();
          sub_1DA36CB08();
          v7 = v106[0];
        }

        v74 = *(v7 + 16);
        v73 = *(v7 + 24);
        a2 = v74 + 1;
        if (v74 >= v73 >> 1)
        {
          OUTLINED_FUNCTION_7_0(v73);
          sub_1DA36CB08();
          v7 = v106[0];
        }

        *(v7 + 16) = a2;
        v75 = v7 + 16 * v74;
        *(v75 + 32) = v69;
        *(v75 + 40) = v68;
        goto LABEL_23;
      }
    }

LABEL_42:
    __break(1u);
  }

  OUTLINED_FUNCTION_22();
LABEL_37:
  v76 = sub_1DA3942F4();
  __swift_project_value_buffer(v76, qword_1EDCC5A38);

  v77 = sub_1DA3942D4();
  v78 = sub_1DA394584();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v106[0] = swift_slowAlloc();
    *v79 = 136315394;
    *(v79 + 4) = sub_1DA372AD8(v31, a2, v106);
    *(v79 + 12) = 2080;
    v80 = MEMORY[0x1DA74BB60](v7, MEMORY[0x1E69E6158]);
    v82 = sub_1DA372AD8(v80, v81, v106);

    *(v79 + 14) = v82;
    _os_log_impl(&dword_1DA365000, v77, v78, "DefaultMorphunTokenizer: tokenize %s %s", v79, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_46();
  }

  return v7;
}

uint64_t sub_1DA371E24()
{
  sub_1DA368C30();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_2_0();
  v0 = OUTLINED_FUNCTION_3_0();

  return v0;
}

void sub_1DA371FB0(uint64_t *a1@<X0>, uint64_t a2@<X3>, unint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  if (*a1)
  {
    v8 = *a1;

    v9 = sub_1DA393FF4();
    if (v4)
    {
      if (qword_1EDCC5A30 != -1)
      {
        swift_once();
      }

      v10 = sub_1DA3942F4();
      __swift_project_value_buffer(v10, qword_1EDCC5A38);

      v11 = v4;
      v12 = sub_1DA3942D4();
      v13 = sub_1DA394594();

      if (os_log_type_enabled(v12, v13))
      {
        v21 = a4;
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v22 = v16;
        *v14 = 136315394;
        *(v14 + 4) = sub_1DA372AD8(a2, a3, &v22);
        *(v14 + 12) = 2112;
        v17 = v4;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 14) = v18;
        *v15 = v18;
        _os_log_impl(&dword_1DA365000, v12, v13, "DefaultMorphunTokenizer: Failed to tokenize input: %s with error %@", v14, 0x16u);
        sub_1DA3737DC(v15, &qword_1ECBAD2F0, &qword_1DA395840);
        MEMORY[0x1DA74C560](v15, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x1DA74C560](v16, -1, -1);
        v19 = v14;
        a4 = v21;
        MEMORY[0x1DA74C560](v19, -1, -1);
      }

      else
      {
      }

      v20 = 0;
    }

    else
    {
      v20 = v9;
    }
  }

  else
  {
    v20 = 0;
  }

  *a4 = v20;
}

uint64_t DefaultMorphunTokenizer.getSearchTokens(_:)(uint64_t a1, unint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizerLocale);
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizerLocale));
  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD368, &qword_1DA395760) + 28);
  sub_1DA393F54();
  v7 = sub_1DA394424();

  os_unfair_lock_unlock(v5);
  v8 = DefaultMorphunTokenizer.tokenize(_:)(a1, a2);
  v9 = v8;
  if ((v7 & 1) == 0)
  {
    return v9;
  }

  v48 = MEMORY[0x1E69E7CC0];
  v46 = *(v8 + 16);
  if (v46)
  {
    v10 = 0;
    v44 = v8;
    v45 = v8 + 32;
    while (2)
    {
      if (v10 >= *(v9 + 16))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v11 = v10 + 1;
      v12 = (v45 + 16 * v10);
      v14 = *v12;
      v13 = v12[1];

      v15 = sub_1DA372628();
      v17 = v16;

      v47[0] = v15;
      v47[1] = v17;
      sub_1DA368C30();
      v18 = sub_1DA3945C4();

      v19 = 0;
      v20 = *(v18 + 16);
      v21 = MEMORY[0x1E69E7CC0];
LABEL_6:
      v22 = (v18 + 40 + 16 * v19);
      while (v20 != v19)
      {
        if (v19 >= *(v18 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        ++v19;
        v23 = *(v22 - 1);
        v24 = *v22;
        v22 += 2;
        v25 = HIBYTE(v24) & 0xF;
        if ((v24 & 0x2000000000000000) == 0)
        {
          v25 = v23 & 0xFFFFFFFFFFFFLL;
        }

        if (v25)
        {

          v47[0] = v21;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = *(v21 + 16);
            sub_1DA36CB08();
            v21 = v47[0];
          }

          v27 = *(v21 + 16);
          if (v27 >= *(v21 + 24) >> 1)
          {
            sub_1DA36CB08();
            v21 = v47[0];
          }

          *(v21 + 16) = v27 + 1;
          v28 = v21 + 16 * v27;
          *(v28 + 32) = v23;
          *(v28 + 40) = v24;
          v9 = v44;
          goto LABEL_6;
        }
      }

      sub_1DA37308C(v21);
      v10 = v11;
      if (v11 != v46)
      {
        continue;
      }

      break;
    }
  }

  if (qword_1EDCC5A30 != -1)
  {
LABEL_26:
    OUTLINED_FUNCTION_22();
  }

  v29 = sub_1DA3942F4();
  __swift_project_value_buffer(v29, qword_1EDCC5A38);

  v30 = sub_1DA3942D4();
  v31 = sub_1DA394584();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v47[0] = swift_slowAlloc();
    *v32 = 136315394;
    v33 = MEMORY[0x1E69E6158];
    v34 = MEMORY[0x1DA74BB60](v9, MEMORY[0x1E69E6158]);
    v36 = v35;

    v37 = sub_1DA372AD8(v34, v36, v47);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    swift_beginAccess();

    v39 = MEMORY[0x1DA74BB60](v38, v33);
    v41 = v40;

    v42 = sub_1DA372AD8(v39, v41, v47);

    *(v32 + 14) = v42;
    _os_log_impl(&dword_1DA365000, v30, v31, "DefaultMorphunTokenizer: convert zh: %s to pinyin: %s", v32, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_46();
  }

  else
  {
  }

  swift_beginAccess();
  return v48;
}

uint64_t sub_1DA372628()
{
  sub_1DA373830();

  v0 = sub_1DA372858();
  CFStringTransform(v0, 0, *MEMORY[0x1E695E990], 0);
  CFStringTransform(v0, 0, *MEMORY[0x1E695E9A0], 0);
  v1 = sub_1DA394384();

  return v1;
}

Swift::Void __swiftcall DefaultMorphunTokenizer.updateAsset(locale:)(Swift::String locale)
{
  v1 = sub_1DA393F74();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = (&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_1DA393F44();
  sub_1DA370B54(v8);
  (*(v4 + 8))(v8, v1);
}

Swift::Bool __swiftcall DefaultMorphunTokenizer.isAssetRegistered()()
{
  v1 = v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_assetRegisteredStatus;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_assetRegisteredStatus));
  v2 = *(v1 + 4);
  os_unfair_lock_unlock(v1);
  return v2;
}

Swift::String __swiftcall DefaultMorphunTokenizer.localeString()()
{
  v1 = (v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizerLocale);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizerLocale));
  v2 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD368, &qword_1DA395760) + 28);
  v3 = sub_1DA393F54();
  v5 = v4;
  os_unfair_lock_unlock(v1);
  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

id sub_1DA372858()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1DA394374();

  v2 = [v0 initWithString_];

  return v2;
}

uint64_t DefaultMorphunTokenizer.deinit()
{
  v1 = v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizerLocale;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD368, &qword_1DA395760) + 28);
  v3 = sub_1DA393F74();
  OUTLINED_FUNCTION_10_0(v3);
  (*(v4 + 8))(v1 + v2);
  sub_1DA3737DC(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizer + 8, &qword_1ECBAD370, &qword_1DA395768);
  return v0;
}

uint64_t DefaultMorphunTokenizer.__deallocating_deinit()
{
  DefaultMorphunTokenizer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DA372A7C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1DA372AD8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1DA372AD8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DA372B9C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1DA373874(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1DA372B9C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1DA372C9C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1DA3947B4();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1DA372C9C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DA372CE8(a1, a2);
  sub_1DA372E00(&unk_1F55E4AC0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1DA372CE8(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_1DA394414())
  {
    result = sub_1DA372EE4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1DA394764();
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
          result = sub_1DA3947B4();
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

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DA372E00(uint64_t result)
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

    result = sub_1DA372F54(result, v8, 1, v3);
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

void *sub_1DA372EE4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD3A8, &qword_1DA395848);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1DA372F54(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD3A8, &qword_1DA395848);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1DA373048(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1DA373068(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DA37308C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1DA373554(result, 1, sub_1DA377BAC);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for DefaultMorphunTokenizer()
{
  result = qword_1EDCC5940;
  if (!qword_1EDCC5940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA373204()
{
  sub_1DA3732C0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1DA3732C0()
{
  if (!qword_1EDCC5A28)
  {
    sub_1DA393F74();
    v0 = sub_1DA3941B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCC5A28);
    }
  }
}

uint64_t sub_1DA373318(unint64_t a1)
{
  v3 = sub_1DA377B88(a1);
  v4 = sub_1DA377B88(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1DA37349C(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1DA3735CC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1DA3733C4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1DA373554(result, 1, sub_1DA377F88);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DA37349C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1DA3946C4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1DA3947A4();
  *v1 = result;
  return result;
}

uint64_t sub_1DA373554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1DA3735CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1DA3946C4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1DA377B88(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for AutoCompletePhrase();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1DA373730();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD388, &qword_1DA395A90);
          v9 = sub_1DA37A918(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1DA373730()
{
  result = qword_1ECBAD390;
  if (!qword_1ECBAD390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAD388, &qword_1DA395A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD390);
  }

  return result;
}

uint64_t sub_1DA373794(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA3737DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_10_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_1DA373830()
{
  result = qword_1ECBAD3A0;
  if (!qword_1ECBAD3A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBAD3A0);
  }

  return result;
}

uint64_t sub_1DA373874(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return sub_1DA3945F4();
}

uint64_t sub_1DA3739A4()
{
  v1 = v0;
  v11 = MEMORY[0x1E69E7CD0];
  v2 = objc_opt_self();
  v3 = [v2 hiddenAppBundleIdentifiers];
  v4 = sub_1DA394544();

  sub_1DA373CF8(v4);
  v5 = [v2 lockedAppBundleIdentifiers];
  v6 = sub_1DA394544();

  sub_1DA373CF8(v6);
  v7 = sub_1DA394374();
  v8 = sub_1DA394374();
  v9 = CFPreferencesCopyAppValue(v7, v8);

  if (v9)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1DA3944D4();
    }

    swift_unknownObjectRelease();
  }

  *(v1 + 16) = v11;
  return v1;
}

uint64_t sub_1DA373B3C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DA373C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DA3753E0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_1DA373CA0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1DA375458(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

void sub_1DA373CF8(uint64_t a1)
{
  v2 = 0;
  v4 = a1 + 56;
  v3 = *(a1 + 56);
  v5 = *(a1 + 32);
  OUTLINED_FUNCTION_4_1();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  if ((v7 & v6) != 0)
  {
    while (1)
    {
      v11 = v2;
LABEL_7:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
      v14 = *v13;
      v15 = v13[1];

      sub_1DA3784D4(&v16, v14, v15);

      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v11 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v10)
    {
      break;
    }

    v8 = *(v4 + 8 * v11);
    ++v2;
    if (v8)
    {
      v2 = v11;
      goto LABEL_7;
    }
  }
}

uint64_t sub_1DA373DE8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = (result + 40);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    ++v2;
    v6 = *(v4 - 1);
    v5 = *v4;

    sub_1DA3784D4(&v7, v6, v5);

    v4 += 2;
  }
}

uint64_t sub_1DA373E90(unint64_t a1)
{
  result = sub_1DA377B88(a1);
  v3 = result;
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1DA74BE10](i, a1);
      v5 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return result;
    }

    sub_1DA378614(&v6, v5);
  }
}

void *sub_1DA373F60(uint64_t a1)
{
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD388, &qword_1DA395A90);
  v1[14] = OUTLINED_FUNCTION_1_2();
  v1[15] = OUTLINED_FUNCTION_1_2();
  type metadata accessor for AutoCompletePhrase();
  v1[16] = sub_1DA394344();
  v1[17] = OUTLINED_FUNCTION_1_2();
  v1[18] = a1;
  return v1;
}

uint64_t sub_1DA374004(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(*a4 + 16) < *(v4 + 144))
  {
    v8 = result;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *a4;
    result = sub_1DA3755C4(a3, v8, a2, isUniquelyReferenced_nonNull_native, &qword_1ECBAD3E0, &qword_1DA395A88);
    *a4 = v10;
  }

  return result;
}

uint64_t sub_1DA3740A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(*a4 + 16) < *(v4 + 144))
  {
    v8 = result;

    swift_isUniquelyReferenced_nonNull_native();
    v9 = *a4;
    result = sub_1DA37570C(a3, v8, a2);
    *a4 = v9;
  }

  return result;
}

uint64_t sub_1DA374134(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1EDCC52A0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v8 = sub_1DA3942F4();
  __swift_project_value_buffer(v8, qword_1EDCC51C0);

  v9 = sub_1DA3942D4();
  v10 = sub_1DA394584();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v13[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_1DA372AD8(0xD000000000000021, 0x80000001DA3972F0, v13);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1DA372AD8(a1, a2, v13);
    _os_log_impl(&dword_1DA365000, v9, v10, "Cache write: %s %s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_46();
  }

  OUTLINED_FUNCTION_2_1();
  sub_1DA374004(a1, a2, a3, (v4 + 112));
  return swift_endAccess();
}

uint64_t sub_1DA3742D0()
{
  v1 = v0;
  OUTLINED_FUNCTION_34();
  if (qword_1EDCC52A0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = sub_1DA3942F4();
  __swift_project_value_buffer(v2, qword_1EDCC51C0);

  v3 = sub_1DA3942D4();
  v4 = sub_1DA394584();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v14[0] = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_1DA372AD8(0xD00000000000001BLL, 0x80000001DA3972D0, v14);
    *(v5 + 12) = 2080;
    v6 = OUTLINED_FUNCTION_8_1();
    *(v5 + 14) = sub_1DA372AD8(v6, v7, v8);
    _os_log_impl(&dword_1DA365000, v3, v4, "Cache read: %s %s", v5, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_46();
  }

  OUTLINED_FUNCTION_3_1();
  v9 = *(v1 + 112);

  v10 = OUTLINED_FUNCTION_8_1();
  v12 = sub_1DA373C50(v10, v11, v9);

  return v12;
}

uint64_t sub_1DA374468()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_2_1();
  v0 = OUTLINED_FUNCTION_5_1();
  sub_1DA374004(v0, v1, v2, v3);
  return swift_endAccess();
}

uint64_t sub_1DA3744B4()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3_1();
  if (!*(*(v1 + 120) + 16))
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_8_1();
  v4 = sub_1DA3753E0(v2, v3);
  if (v5)
  {
    OUTLINED_FUNCTION_7_1(v4);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

uint64_t sub_1DA374530()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_2_1();
  v0 = OUTLINED_FUNCTION_5_1();
  sub_1DA374004(v0, v1, v2, v3);
  return swift_endAccess();
}

uint64_t sub_1DA37457C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3_1();
  if (!*(*(v1 + 136) + 16))
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_8_1();
  v4 = sub_1DA3753E0(v2, v3);
  if (v5)
  {
    OUTLINED_FUNCTION_7_1(v4);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

uint64_t sub_1DA3745F8()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_2_1();
  v0 = OUTLINED_FUNCTION_5_1();
  sub_1DA3740A4(v0, v1, v2, v3);
  return swift_endAccess();
}

uint64_t sub_1DA374644()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3_1();
  if (!*(*(v1 + 128) + 16))
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_8_1();
  v4 = sub_1DA3753E0(v2, v3);
  if (v5)
  {
    OUTLINED_FUNCTION_7_1(v4);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

uint64_t sub_1DA3746C0()
{
  if (sub_1DA377B88(MEMORY[0x1E69E7CC0]))
  {
    v0 = sub_1DA375188(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v0 = MEMORY[0x1E69E7CD0];
  }

  v19 = v0;
  swift_beginAccess();
  v1 = *(v18 + 112);
  v2 = *(v1 + 64);
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_4_1();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v10 = 0;
  while (v6)
  {
    v11 = v10;
LABEL_10:
    v12 = (*(v1 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v6)))));
    v14 = *v12;
    v13 = v12[1];
    v6 &= v6 - 1;
    sub_1DA375338();
    sub_1DA37538C();

    if (sub_1DA394364())
    {
      v15 = *(v18 + 112);

      v16 = sub_1DA373C50(v14, v13, v15);

      if (v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = MEMORY[0x1E69E7CC0];
      }

      result = sub_1DA373E90(v17);
      v10 = v11;
    }

    else
    {

      v10 = v11;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v19;
    }

    v6 = *(v1 + 64 + 8 * v11);
    ++v10;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DA374884()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[17];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1DA3748C4()
{
  sub_1DA374884();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DA374944()
{
  type metadata accessor for TypingSessionCacheProvider.DisabledTypingCache();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1EDCC4EB0 = v0;
  return result;
}

uint64_t sub_1DA374998()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DA3749D8(char a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return v2;
}

uint64_t sub_1DA374A20(uint64_t a1, unint64_t a2)
{
  if (*(v2 + 144) == 1)
  {
    v3 = sub_1DA374B3C(v2, a1, a2);
    v4 = *(v2 + 112);
    v5 = *(v2 + 120);
    v6 = *(v2 + 128);
    v7 = *(v2 + 136);
    *(v2 + 112) = v3;
    *(v2 + 120) = v8;
    *(v2 + 128) = v9;
    *(v2 + 136) = v10;
    swift_unknownObjectRetain();

    sub_1DA374FC4(v4);
  }

  else
  {
    if (qword_1EDCC4EA8 != -1)
    {
      swift_once();
    }

    v3 = qword_1EDCC4EB0;
    sub_1DA375890(&qword_1EDCC4E98, 255, type metadata accessor for TypingSessionCacheProvider.DisabledTypingCache);
  }

  return v3;
}

uint64_t sub_1DA374B3C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = a1[14];
  if (v6 && ((v7 = a1[15], a1[16] == a2) ? (v8 = a1[17] == a3) : (v8 = 0), v8 || (v9 = a1[16], v10 = a1[17], (sub_1DA394934() & 1) != 0)))
  {
    swift_unknownObjectRetain();
  }

  else
  {
    if (qword_1EDCC52A0 != -1)
    {
      swift_once();
    }

    v11 = sub_1DA3942F4();
    __swift_project_value_buffer(v11, qword_1EDCC51C0);

    v12 = sub_1DA3942D4();
    v13 = sub_1DA394574();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v14 = 136315394;
      v15 = a1[14];
      if (v15)
      {
        v17 = a1[16];
        v16 = a1[17];
        v18 = a1[15];
        sub_1DA3758D8(a1[14]);

        sub_1DA374FC4(v15);
      }

      else
      {
        v16 = 0xE500000000000000;
        v17 = 0x3E6C696E3CLL;
      }

      v19 = sub_1DA372AD8(v17, v16, &v24);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_1DA372AD8(a2, a3, &v24);
      _os_log_impl(&dword_1DA365000, v12, v13, "Sessions are different (%s != %s). Resetting typing session cache", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA74C560](v23, -1, -1);
      MEMORY[0x1DA74C560](v14, -1, -1);
    }

    v20 = a1[19];
    type metadata accessor for DefaultTypingCache();
    v6 = swift_allocObject();
    sub_1DA373F60(v20);
    sub_1DA375890(&qword_1ECBAD3E8, v21, type metadata accessor for DefaultTypingCache);
  }

  return v6;
}

uint64_t sub_1DA374DF0()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[17];
  sub_1DA374FC4(v0[14]);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA374E80(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DA374EC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DA374F10(uint64_t a1)
{
  result = sub_1DA375890(&qword_1EDCC4EA0, 255, type metadata accessor for TypingSessionCacheProvider.DisabledTypingCache);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DA374F6C(uint64_t a1, uint64_t a2)
{
  result = sub_1DA375890(&qword_1ECBAD3B8, a2, type metadata accessor for DefaultTypingCache);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DA374FC4(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DA375004(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD3F8, &unk_1DA395AA0);
  result = sub_1DA394754();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_18:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_1DA3949D4();
    sub_1DA394354();
    result = sub_1DA394A14();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      result = *v16;
      if (*v16 == v9 && v16[1] == v8)
      {
        goto LABEL_15;
      }

      result = sub_1DA394934();
      if (result)
      {
        goto LABEL_15;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    *(v3 + 16) = v21;

LABEL_15:
    if (v5 == v4)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1DA375188(unint64_t a1)
{
  if (sub_1DA377B88(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD3D0, &unk_1DA395DD0);
    v2 = sub_1DA394754();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v17 = sub_1DA377B88(a1);
  if (v17)
  {
    v3 = 0;
    v4 = v2 + 56;
    v5 = a1 & 0xC000000000000001;
    while (1)
    {
      sub_1DA373068(v3, v5 == 0, a1);
      if (v5)
      {
        result = MEMORY[0x1DA74BE10](v3, a1);
        v7 = result;
      }

      else
      {
        v7 = *(a1 + 32 + 8 * v3);
      }

      v8 = __OFADD__(v3++, 1);
      if (v8)
      {
        break;
      }

      v9 = *(v2 + 40);
      sub_1DA3949D4();
      sub_1DA36AA48(v18);
      result = sub_1DA394A14();
      v10 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v11 = result & v10;
        v12 = (result & v10) >> 6;
        v13 = *(v4 + 8 * v12);
        v14 = 1 << (result & v10);
        if ((v14 & v13) == 0)
        {
          break;
        }

        type metadata accessor for AutoCompletePhrase();
        if (static AutoCompletePhrase.== infix(_:_:)(*(*(v2 + 48) + 8 * v11), v7))
        {

          goto LABEL_17;
        }

        result = v11 + 1;
      }

      *(v4 + 8 * v12) = v14 | v13;
      *(*(v2 + 48) + 8 * v11) = v7;
      v15 = *(v2 + 16);
      v8 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v8)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      if (v3 == v17)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

unint64_t sub_1DA375338()
{
  result = qword_1ECBAD3C0;
  if (!qword_1ECBAD3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD3C0);
  }

  return result;
}

unint64_t sub_1DA37538C()
{
  result = qword_1ECBAD3C8;
  if (!qword_1ECBAD3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD3C8);
  }

  return result;
}

unint64_t sub_1DA3753E0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1DA3949D4();
  sub_1DA394354();
  v6 = sub_1DA394A14();

  return sub_1DA37549C(a1, a2, v6);
}

unint64_t sub_1DA375458(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1DA3949C4();

  return sub_1DA375550(a1, v4);
}

unint64_t sub_1DA37549C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1DA394934() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1DA375550(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t sub_1DA3755C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v13 = *v6;
  v14 = sub_1DA3753E0(a2, a3);
  if (__OFADD__(*(v13 + 16), (v15 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v14;
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if ((sub_1DA394824() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v9;
  v19 = sub_1DA3753E0(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_1DA394964();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v9;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v16);
    *(v22 + 8 * v16) = a1;
  }

  else
  {
    sub_1DA375848(v16, a2, a3, a1, v21);
  }
}

uint64_t sub_1DA37570C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DA3753E0(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD3D8, &qword_1DA395A80);
  if ((sub_1DA394824() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_1DA3753E0(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1DA394964();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_1DA375848(v11, a2, a3, a1, v16);
  }
}

unint64_t sub_1DA375848(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1DA375890(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1DA3758D8(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_2()
{

  return sub_1DA394344();
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_1()
{

  return swift_beginAccess();
}

uint64_t sub_1DA3759EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD400, &unk_1DA395B90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD408, &qword_1DA395FE0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  v13 = OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_writeEnabledClient;
  v14 = *(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_writeEnabledClient);
  if (!v14)
  {
    v21[1] = type metadata accessor for DefaultSiriAutoCompleteService();
    v15 = OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_databaseDirectory;
    v16 = sub_1DA393EC4();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v5, v1 + v15, v16);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v16);
    static DefaultSiriAutoCompleteService.initializeVectorDBClient(readOnly:featureFlagsProvider:databaseDirectoryOverride:)();
    sub_1DA36CB60(v5, &qword_1ECBAD400, &unk_1DA395B90);
    sub_1DA376510(v12, v10);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD410, &unk_1DA395BA0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v18) == 1)
    {
      sub_1DA36CB60(v10, &qword_1ECBAD408, &qword_1DA395FE0);
      v14 = 0;
    }

    else
    {
      v14 = *v10;
      (*(v17 + 8))(&v10[*(v18 + 48)], v16);
    }

    v19 = *(v1 + v13);
    *(v1 + v13) = v14;
  }

  return v14;
}

uint64_t sub_1DA375C58(uint64_t *a1, char a2)
{
  *(v3 + 32) = a2;
  v4 = *a1;
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1DA375C80, v2, 0);
}

uint64_t sub_1DA375C80()
{
  v1 = *(v0 + 16);
  sub_1DA376098();
  if (sub_1DA3759EC())
  {
    v2 = *(v0 + 24);
    v3 = sub_1DA394074();

    if (*(v0 + 32))
    {
      v8 = *(v0 + 16);
      sub_1DA376194();
    }

    v9 = *(v0 + 8);

    return v9(v3);
  }

  else
  {
    v7 = *(v0 + 32);
    sub_1DA376580();
    OUTLINED_FUNCTION_2_2();
    swift_allocError();
    swift_willThrow();
    if (v7)
    {
      v4 = *(v0 + 16);
      sub_1DA376194();
    }

    v5 = *(v0 + 8);

    return v5();
  }
}

void sub_1DA375DAC()
{
  sub_1DA376098();
  if (sub_1DA3759EC())
  {
    sub_1DA394044();
  }

  else
  {
    sub_1DA376580();
    OUTLINED_FUNCTION_2_2();
    swift_allocError();
    swift_willThrow();
  }

  sub_1DA376194();
}

uint64_t sub_1DA375E30()
{
  OUTLINED_FUNCTION_3_2();
  if (!sub_1DA3759EC())
  {
    sub_1DA376580();
    OUTLINED_FUNCTION_2_2();
    swift_allocError();
    swift_willThrow();
    if ((v0 & 1) == 0)
    {
      return v3;
    }

    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD418, &qword_1DA395ED0);
  v4 = sub_1DA3940F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DA395AB0;
  (*(v5 + 16))(v3 + v7, v2, v4);
  sub_1DA394024();
  if (v1)
  {

    if (v0)
    {
LABEL_8:
      sub_1DA376194();
    }
  }

  else
  {

    v3 = sub_1DA394064();

    if (v0)
    {
      goto LABEL_8;
    }
  }

  return v3;
}

uint64_t sub_1DA375FE4()
{
  OUTLINED_FUNCTION_3_2();
  if (!sub_1DA3759EC())
  {
    sub_1DA376580();
    OUTLINED_FUNCTION_2_2();
    swift_allocError();
    swift_willThrow();
    if ((v0 & 1) == 0)
    {
      return v2;
    }

    goto LABEL_4;
  }

  v3 = sub_1DA394064();
  if (!v1)
  {
    v2 = v3;

    if ((v0 & 1) == 0)
    {
      return v2;
    }

    goto LABEL_4;
  }

  if (v0)
  {
LABEL_4:
    sub_1DA376194();
  }

  return v2;
}

void sub_1DA376098()
{
  v1 = OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_isActivated;
  if ((*(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_isActivated) & 1) == 0)
  {
    v2 = v0;
    if (sub_1DA3759EC())
    {
      if (qword_1EDCC5A30 != -1)
      {
        OUTLINED_FUNCTION_22();
      }

      v3 = sub_1DA3942F4();
      __swift_project_value_buffer(v3, qword_1EDCC5A38);
      v4 = sub_1DA3942D4();
      v5 = sub_1DA394584();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        OUTLINED_FUNCTION_4_2(&dword_1DA365000, v7, v8, "Warming up WriteDBClient");
        MEMORY[0x1DA74C560](v6, -1, -1);
      }

      sub_1DA394084();

      *(v2 + v1) = 1;
    }
  }
}

void sub_1DA376194()
{
  v1 = OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_isActivated;
  if (*(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_isActivated) == 1)
  {
    v2 = v0;
    if (sub_1DA3759EC())
    {
      if (qword_1EDCC5A30 != -1)
      {
        OUTLINED_FUNCTION_22();
      }

      v3 = sub_1DA3942F4();
      __swift_project_value_buffer(v3, qword_1EDCC5A38);
      v4 = sub_1DA3942D4();
      v5 = sub_1DA394584();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        OUTLINED_FUNCTION_4_2(&dword_1DA365000, v7, v8, "Deactivating WriteDBClient");
        MEMORY[0x1DA74C560](v6, -1, -1);
      }

      sub_1DA394094();

      *(v2 + v1) = 0;
    }
  }
}

uint64_t sub_1DA3762BC()
{
  sub_1DA3949D4();
  MEMORY[0x1DA74C060](0);
  return sub_1DA394A14();
}

uint64_t sub_1DA376308()
{
  sub_1DA3949D4();
  MEMORY[0x1DA74C060](0);
  return sub_1DA394A14();
}

uint64_t sub_1DA376358()
{
  v1 = OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_databaseDirectory;
  v2 = sub_1DA393EC4();
  OUTLINED_FUNCTION_10(v2);
  (*(v3 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_featureFlagsProvider));
  v4 = *(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_writeEnabledClient);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1DA3763D8()
{
  sub_1DA376358();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for VectorDBWriteClientManager()
{
  result = qword_1EDCC5808;
  if (!qword_1EDCC5808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA376458()
{
  result = sub_1DA393EC4();
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

uint64_t sub_1DA376510(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD408, &qword_1DA395FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DA376580()
{
  result = qword_1EDCC4DA8[0];
  if (!qword_1EDCC4DA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCC4DA8);
  }

  return result;
}

uint64_t sub_1DA3765D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a4;
  v16 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  swift_defaultActor_initialize();
  *(a3 + OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_writeEnabledClient) = 0;
  *(a3 + OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_isActivated) = 0;
  sub_1DA366D48(&v14, a3 + OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_featureFlagsProvider);
  v10 = OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_databaseDirectory;
  v11 = sub_1DA393EC4();
  OUTLINED_FUNCTION_10(v11);
  (*(v12 + 32))(a3 + v10, a2);
  return a3;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for VectorDBWriteClientManager.DBWriteClientManagerErrors(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA3767D0()
{
  result = qword_1ECBAD420;
  if (!qword_1ECBAD420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD420);
  }

  return result;
}

void OUTLINED_FUNCTION_3_2()
{

  sub_1DA376098();
}

void OUTLINED_FUNCTION_4_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1DA376884()
{
  v1 = *(v0 + 16);

  sub_1DA394284();

  return v3;
}

id sub_1DA3768C8()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x1E69ADDB8];
    v3 = sub_1DA394384();
    v5 = sub_1DA376994(v3, v4, v1);

    return (v5 != 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA376938()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

id sub_1DA376994(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DA394374();

  v5 = [a3 effectiveBoolValueForSetting_];

  return v5;
}

BOOL sub_1DA3769F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1DA3949D4();
  sub_1DA394354();
  sub_1DA394A14();
  v7 = *(a3 + 32);
  OUTLINED_FUNCTION_8_2();
  v10 = ~v9;
  do
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(a3 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    v13 = v12 != 0;
    if (!v12)
    {
      break;
    }

    v14 = (*(a3 + 48) + 16 * v11);
    if (*v14 == a1 && v14[1] == a2)
    {
      break;
    }

    v16 = OUTLINED_FUNCTION_16_0();
    v8 = v11 + 1;
  }

  while ((v16 & 1) == 0);
  return v13;
}

uint64_t sub_1DA376AD0(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_1DA3949D4();
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *(a1 + 32);
  sub_1DA394354();
  v25 = v7;
  sub_1DA394354();
  v24 = v9;
  MEMORY[0x1DA74C080](v9 + 1);
  sub_1DA394A14();
  v10 = a2 + 56;
  v11 = *(a2 + 32);
  OUTLINED_FUNCTION_8_2();
  v14 = v13 & ~v12;
  if (((*(a2 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v12;
  v16 = *(a2 + 48);
  while (1)
  {
    v17 = v16 + 40 * v14;
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    v20 = *(v17 + 32);
    v21 = *v17 == v5 && *(v17 + 8) == v6;
    if (v21 || (OUTLINED_FUNCTION_16_0() & 1) != 0)
    {
      v22 = v18 == v25 && v19 == v8;
      if (v22 || (sub_1DA394934()) && v20 == v24)
      {
        break;
      }
    }

    v14 = (v14 + 1) & v15;
    if (((*(v10 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t VectorSearchAssets.assets.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t VectorSearchAssets.init(phrases:)@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v84 = a2;
  v111 = sub_1DA394154();
  v3 = OUTLINED_FUNCTION_0(v111);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v99 = (&v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = sub_1DA3941A4();
  v9 = OUTLINED_FUNCTION_0(v100);
  v101 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_21:

    v17 = MEMORY[0x1E69E7CC0];
LABEL_22:
    *v84 = v17;
    return result;
  }

  result = sub_1DA3946C4();
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (result >= 1)
  {
    v16 = 0;
    v95 = a1 & 0xC000000000000001;
    v94 = "agsProvider";
    v117 = *MEMORY[0x1E69DF5B8];
    v116 = (v5 + 104);
    v93 = *MEMORY[0x1E69DF5E8];
    v92 = v101 + 32;
    v110 = *MEMORY[0x1E69DF5D8];
    v91 = *MEMORY[0x1E69DF5C0];
    v90 = *MEMORY[0x1E69DF5E0];
    v89 = *MEMORY[0x1E69DF5B0];
    v88 = *MEMORY[0x1E69DF5D0];
    v17 = MEMORY[0x1E69E7CC0];
    v87 = xmmword_1DA395AB0;
    v86 = xmmword_1DA395D10;
    v85 = xmmword_1DA395D20;
    v98 = a1;
    v97 = v14;
    v96 = result;
    do
    {
      v109 = v16;
      v108 = v17;
      if (v95)
      {
        v18 = MEMORY[0x1DA74BE10](v16, a1);
      }

      else
      {
        v18 = *(a1 + 8 * v16 + 32);
      }

      v119 = v18;
      OUTLINED_FUNCTION_10_1();
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v107 = v19;
      v106 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD428, &qword_1DA395D30);
      v21 = swift_allocObject();
      *(v21 + 16) = v87;

      v22 = sub_1DA3944F4();
      v105 = v21;
      *(v21 + 32) = v22;
      *(v21 + 40) = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD430, &qword_1DA395D38);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD438, &qword_1DA395D40);
      v25 = *(v24 - 8);
      v26 = v24 - 8;
      v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v28 = *(v25 + 72);
      v29 = swift_allocObject();
      v104 = v29;
      *(v29 + 16) = v86;
      v30 = v29 + v27;
      v31 = *(v26 + 56);
      v32 = v26;
      v112 = v26;
      v33 = v99;
      *v99 = 0;
      v33[1] = 0;
      v113 = *v116;
      v34 = v111;
      v113(v33, v117, v111);
      v115 = v30;
      sub_1DA394134();
      *(v30 + v31) = *(v119 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_searchTokens);
      v35 = sub_1DA394164();
      OUTLINED_FUNCTION_10(v35);
      v37 = *(v36 + 104);
      v102 = v36 + 104;
      v118 = v35;
      (v37)(v30 + v31, v93, v35);
      v38 = v30 + v28;
      v39 = v28;
      v114 = v28;
      v40 = (v38 + *(v32 + 56));
      *v33 = 0;
      v33[1] = 0;
      v41 = v117;
      v42 = v113;
      v113(v33, v117, v34);

      sub_1DA394134();
      v43 = *(v119 + 56);
      *v40 = *(v119 + 48);
      v40[1] = v43;
      (v37)(v40, v110, v35);
      v44 = (v115 + 2 * v39 + *(v112 + 56));
      *v33 = 0;
      v33[1] = 0;
      v42(v33, v41, v34);

      sub_1DA394134();
      v45 = v118;
      v46 = *(v119 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier + 8);
      *v44 = *(v119 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier);
      v44[1] = v46;
      v47 = v110;
      (v37)(v44, v110, v45);
      v48 = v111;
      v49 = v112;
      v50 = (v115 + 3 * v114 + *(v112 + 56));
      *v33 = 0;
      v33[1] = 0;
      v113(v33, v117, v48);

      sub_1DA394134();
      *v50 = sub_1DA393F14();
      v50[1] = v51;
      v103 = v37;
      (v37)(v50, v47, v118);
      v52 = *(v49 + 56);
      v54 = v114;
      v53 = v115;
      v55 = v115 + 4 * v114;
      *v33 = 0;
      *(v33 + 8) = 1;
      v56 = v113;
      v113(v33, v91, v48);
      sub_1DA394134();
      v57 = v118;
      *(v55 + v52) = *(v119 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source) + 1;
      (v37)(v55 + v52, v90, v57);
      v58 = v53 + 5 * v54;
      v59 = v53;
      *v33 = 0;
      *(v33 + 8) = 0;
      v60 = v111;
      v56(v33, v89, v111);
      sub_1DA394134();
      v61 = v119 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedScore;
      OUTLINED_FUNCTION_10_1();
      v62 = *v61;
      if (*(v61 + 8))
      {
        v62 = 0.0;
      }

      v63 = v112;
      v64 = *(v112 + 56);
      *(v58 + v64) = v62;
      v65 = v57;
      v66 = v103;
      (v103)(v58 + v64, v88, v65);
      v67 = v59 + 6 * v114;
      v68 = v119;
      *v33 = v85;
      v56(v33, v117, v60);
      sub_1DA394134();
      v69 = (v68 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_zkwGenerationId);
      OUTLINED_FUNCTION_10_1();
      v70 = *v69;
      v71 = v69[1];
      if (!v71)
      {
        v70 = 0;
      }

      v72 = 0xE000000000000000;
      if (v71)
      {
        v72 = v71;
      }

      v73 = (v67 + *(v63 + 56));
      *v73 = v70;
      v73[1] = v72;
      v66();
      sub_1DA394144();
      sub_1DA37A9AC();

      v74 = sub_1DA394344();
      v75 = sub_1DA36A28C();
      v76 = v97;
      MEMORY[0x1DA74B7F0](v107, v106, v105, v74, v75, v77);
      v17 = v108;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DA377E94(0, *(v17 + 16) + 1, 1, v17, sub_1DA37CE9C, MEMORY[0x1E69DF5F0], MEMORY[0x1E69DF5F0]);
        v17 = v81;
      }

      v79 = *(v17 + 16);
      v78 = *(v17 + 24);
      v80 = v109;
      if (v79 >= v78 >> 1)
      {
        sub_1DA377E94(v78 > 1, v79 + 1, 1, v17, sub_1DA37CE9C, MEMORY[0x1E69DF5F0], MEMORY[0x1E69DF5F0]);
        v17 = v82;
      }

      v16 = v80 + 1;

      *(v17 + 16) = v79 + 1;
      (*(v101 + 32))(v17 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v79, v76, v100);
      a1 = v98;
    }

    while (v96 != v16);

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA377700(unint64_t a1)
{
  v33 = MEMORY[0x1E69E7CC0];
  v38 = MEMORY[0x1E69E7CC0];
  result = sub_1DA377B88(a1);
  v3 = result;
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1DA74BE10](i, a1);
      v5 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_10_1();
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);

    v8 = sub_1DA3943C4();

    if (v8 <= 500)
    {
      sub_1DA3947C4();
      v9 = *(v38 + 16);
      sub_1DA3947F4();
      sub_1DA394804();
      result = sub_1DA3947D4();
    }

    else
    {
    }
  }

  v40 = MEMORY[0x1E69E7CC0];
  v34 = sub_1DA377B88(v38);
  OUTLINED_FUNCTION_10_1();
  v10 = 0;
  v11 = v38 & 0xC000000000000001;
LABEL_13:
  while (v10 != v34)
  {
    sub_1DA373068(v10, v11 == 0, v38);
    if (v11)
    {
      result = MEMORY[0x1DA74BE10](v10, v38);
      v12 = result;
    }

    else
    {
      v12 = *(v38 + 32 + 8 * v10);
    }

    if (__OFADD__(v10++, 1))
    {
      goto LABEL_33;
    }

    v14 = *(v35 + 24);
    OUTLINED_FUNCTION_10_1();
    v15 = *(v12 + 24);
    v39[0] = *(v12 + 16);
    v39[1] = v15;
    sub_1DA368C30();

    v16 = sub_1DA3945D4();
    v18 = v17;
    if (*(v14 + 16))
    {
      v19 = v16;
      v20 = *(v14 + 40);
      sub_1DA3949D4();
      sub_1DA394354();
      sub_1DA394A14();
      v21 = *(v14 + 32);
      OUTLINED_FUNCTION_8_2();
      v24 = ~v23;
      while (1)
      {
        v25 = v22 & v24;
        if (((*(v14 + 56 + (((v22 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v24)) & 1) == 0)
        {
          break;
        }

        v26 = (*(v14 + 48) + 16 * v25);
        if (*v26 != v19 || v26[1] != v18)
        {
          v28 = OUTLINED_FUNCTION_16_0();
          v22 = v25 + 1;
          if ((v28 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_13;
      }
    }

    v36 = *(v12 + 16);
    v37 = *(v12 + 24);
    v29 = sub_1DA3945D4();
    v31 = v30;
    swift_beginAccess();
    sub_1DA3784D4(v39, v29, v31);
    swift_endAccess();

    MEMORY[0x1DA74BB40](v32);
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DA394504();
    }

    sub_1DA394524();
    v33 = v40;
  }

  swift_beginAccess();
  sub_1DA373318(v33);
  swift_endAccess();
}

uint64_t sub_1DA377AB0@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_10_1();
  v3 = *(v1 + 16);

  return VectorSearchAssets.init(phrases:)(v4, a1);
}

uint64_t VectorSearchAssets.Builder.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t VectorSearchAssets.Builder.__deallocating_deinit()
{
  VectorSearchAssets.Builder.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t static VectorSearchAssets.builder()()
{
  type metadata accessor for VectorSearchAssets.Builder();
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CD0];
  *(result + 16) = MEMORY[0x1E69E7CC0];
  *(result + 24) = v1;
  return result;
}

uint64_t sub_1DA377B88(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1DA3946C4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_1DA377BAC()
{
  OUTLINED_FUNCTION_7_2();
  if (v3)
  {
    OUTLINED_FUNCTION_1_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_6_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD470, &qword_1DA395E10);
    v9 = OUTLINED_FUNCTION_11_1();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_5_2();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DA377C88()
{
  OUTLINED_FUNCTION_7_2();
  if (v5)
  {
    OUTLINED_FUNCTION_1_3();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_6_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_3(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD440, &qword_1DA3964A0);
    v9 = OUTLINED_FUNCTION_11_1();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_15_0();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_13_0();
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

void sub_1DA377D50()
{
  OUTLINED_FUNCTION_7_2();
  if (v3)
  {
    OUTLINED_FUNCTION_1_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_6_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = v0[2];
  if (v4 <= v7)
  {
    v8 = v0[2];
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD448, &unk_1DA395DE0);
    v9 = OUTLINED_FUNCTION_11_1();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_15_0();
    v9[2] = v7;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[v7 + 4] <= v9 + 4)
    {
      memmove(v9 + 4, v0 + 4, 8 * v7);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD350, &unk_1DA395630);
    swift_arrayInitWithCopy();
  }
}

void sub_1DA377E94(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_1_3();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_6_1();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
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
    sub_1DA378320(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DA377F88()
{
  OUTLINED_FUNCTION_7_2();
  if (v5)
  {
    OUTLINED_FUNCTION_1_3();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_6_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_3(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD458, &unk_1DA396490);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v3;
    v9[3] = 2 * ((v10 - 32) / 40);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_13_0();
  if (v1)
  {
    if (v9 != v0 || &v12[40 * v3] <= v11)
    {
      memmove(v11, v12, 40 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DA378078()
{
  OUTLINED_FUNCTION_7_2();
  if (v5)
  {
    OUTLINED_FUNCTION_1_3();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_6_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_3(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD468, &qword_1DA395E08);
    v9 = OUTLINED_FUNCTION_11_1();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_5_2();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_13_0();
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

void sub_1DA378140()
{
  OUTLINED_FUNCTION_7_2();
  if (v5)
  {
    OUTLINED_FUNCTION_1_3();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_6_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_3(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD478, &qword_1DA395E18);
    v9 = OUTLINED_FUNCTION_11_1();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_5_2();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_13_0();
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

char *sub_1DA378208(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_4(a3, result);
  }

  return result;
}

char *sub_1DA378240(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_4(a3, result);
  }

  return result;
}

uint64_t sub_1DA378260()
{
  OUTLINED_FUNCTION_14_0();
  if (v3 && (v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD480, &qword_1DA395E20), result = OUTLINED_FUNCTION_10(v4), v1 + *(v6 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      v7 = OUTLINED_FUNCTION_3_3();

      return MEMORY[0x1EEE6BCF8](v7);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD480, &qword_1DA395E20);
    v8 = OUTLINED_FUNCTION_3_3();

    return MEMORY[0x1EEE6BD00](v8);
  }

  return result;
}

uint64_t sub_1DA378320(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_14_0();
  if (v8 && (v9 = (a4)(0), result = OUTLINED_FUNCTION_10(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v12 = OUTLINED_FUNCTION_3_3();

      return MEMORY[0x1EEE6BCF8](v12);
    }
  }

  else
  {
    a4(0);
    v13 = OUTLINED_FUNCTION_3_3();

    return MEMORY[0x1EEE6BD00](v13);
  }

  return result;
}

char *sub_1DA3783D4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_4(a3, result);
  }

  return result;
}

BOOL sub_1DA378404(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v6 + 40);
  v8 = sub_1DA3949C4();
  v9 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v6 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v10) == a2)
    {
      goto LABEL_6;
    }

    v8 = v10 + 1;
  }

  v12 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v3;
  sub_1DA379548(a2, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v15;
LABEL_6:
  result = v11 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_1DA3784D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1DA3949D4();
  sub_1DA394354();
  sub_1DA394A14();
  v9 = *(v7 + 32);
  OUTLINED_FUNCTION_8_2();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v7 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      break;
    }

    v15 = (*(v7 + 48) + 16 * v13);
    v16 = *v15 == a2 && v15[1] == a3;
    if (v16 || (OUTLINED_FUNCTION_16_0() & 1) != 0)
    {

      v17 = (*(v7 + 48) + 16 * v13);
      v18 = v17[1];
      *a1 = *v17;
      a1[1] = v18;

      return v14 == 0;
    }

    v10 = v13 + 1;
  }

  v19 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;

  sub_1DA37964C(a2, a3, v13, isUniquelyReferenced_nonNull_native);
  *v3 = v22;
  *a1 = a2;
  a1[1] = a3;
  return v14 == 0;
}

uint64_t sub_1DA378614(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1DA3946D4();

    if (v8)
    {

      v22[9] = v8;
      type metadata accessor for AutoCompletePhrase();
      swift_dynamicCast();
      result = 0;
      *a1 = v22[0];
    }

    else
    {
      result = sub_1DA3946C4();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_1DA378A24(v7, result + 1);
        v22[0] = v16;
        v17 = *(v16 + 16);
        if (*(v16 + 24) <= v17)
        {
          sub_1DA379010(v17 + 1);
          v16 = v22[0];
        }

        sub_1DA3794A4(v18, v16);

        *v3 = v16;
LABEL_16:
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    type metadata accessor for AutoCompletePhrase();
    v10 = *(v6 + 40);
    sub_1DA3949D4();
    sub_1DA36AA48(v22);
    sub_1DA394A14();
    v11 = *(v6 + 32);
    OUTLINED_FUNCTION_8_2();
    v14 = ~v13;
    while (1)
    {
      v15 = v12 & v14;
      if (((*(v6 + 56 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v14)) & 1) == 0)
      {
        v19 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22[0] = *v2;

        sub_1DA3797B4(v21, v15, isUniquelyReferenced_nonNull_native);
        *v2 = v22[0];
        goto LABEL_16;
      }

      if (static AutoCompletePhrase.== infix(_:_:)(*(*(v6 + 48) + 8 * v15), a2))
      {
        break;
      }

      v12 = v15 + 1;
    }

    *a1 = *(*(v6 + 48) + 8 * v15);

    return 0;
  }

  return result;
}

uint64_t sub_1DA378824(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1DA3949D4();
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v35 = a2;
  v10 = *(a2 + 32);
  sub_1DA394354();
  v38 = v9;
  v39 = v8;
  sub_1DA394354();
  v37 = v10;
  MEMORY[0x1DA74C080](v10 + 1);
  sub_1DA394A14();
  v11 = v4 + 56;
  v12 = *(v4 + 32);
  OUTLINED_FUNCTION_8_2();
  v15 = v14 & ~v13;
  if ((*(v4 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v13;
    v33 = v4;
    v17 = *(v4 + 48);
    while (1)
    {
      v18 = v17 + 40 * v15;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = *(v18 + 32);
      v22 = *v18 == v6 && *(v18 + 8) == v7;
      if (v22 || (sub_1DA394934() & 1) != 0)
      {
        v23 = v19 == v39 && v20 == v38;
        if (v23 || (sub_1DA394934()) && v21 == v37)
        {
          break;
        }
      }

      v15 = (v15 + 1) & v16;
      if (((*(v11 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    sub_1DA37AB7C(v35);
    v28 = *(v33 + 48) + 40 * v15;
    v30 = *v28;
    v29 = *(v28 + 8);
    v31 = *(v28 + 16);
    v32 = *(v28 + 24);
    LOBYTE(v28) = *(v28 + 32);
    *a1 = v30;
    *(a1 + 8) = v29;
    *(a1 + 16) = v31;
    *(a1 + 24) = v32;
    *(a1 + 32) = v28;

    return 0;
  }

  else
  {
LABEL_15:
    v24 = *v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *v34;
    sub_1DA37AB20(v35, v41);
    sub_1DA379900(v35, v15, isUniquelyReferenced_nonNull_native);
    *v34 = v40;
    v26 = *(v35 + 16);
    *a1 = *v35;
    *(a1 + 16) = v26;
    *(a1 + 32) = *(v35 + 32);
    return 1;
  }
}

uint64_t sub_1DA378A24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD3D0, &unk_1DA395DD0);
    v2 = sub_1DA394744();
    v11 = v2;
    sub_1DA394664();
    while (1)
    {
      v3 = sub_1DA3946F4();
      if (!v3)
      {
        break;
      }

      v10[0] = v3;
      type metadata accessor for AutoCompletePhrase();
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_1DA379010(v4 + 1);
      }

      v2 = v11;
      v5 = v10[9];
      v6 = *(v11 + 40);
      sub_1DA3949D4();
      sub_1DA36AA48(v10);
      sub_1DA394A14();
      v7 = -1 << *(v2 + 32);
      v8 = sub_1DA394644();
      *(v2 + 56 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v5;
      ++*(v2 + 16);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1DA378B90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD450, &unk_1DA395DF0);
  result = sub_1DA394734();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v9 = (v3 + 56);
  v8 = *(v3 + 56);
  v10 = 1 << *(v3 + 32);
  v27 = v2;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = result + 56;
  if ((v11 & v8) == 0)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    if (v10 >= 64)
    {
      sub_1DA379B00(0, (v10 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_1DA3949C4();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DA378DB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD488, &qword_1DA395E28);
  result = sub_1DA394734();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1DA379B00(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_1DA3949D4();
    sub_1DA394354();
    result = sub_1DA394A14();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1DA379010(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD3D0, &unk_1DA395DD0);
  result = sub_1DA394734();
  v6 = result;
  if (*(v3 + 16))
  {
    v21 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    for (i = result + 56; v11; ++*(v6 + 16))
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_14:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1DA3949D4();
      sub_1DA36AA48(v22);
      sub_1DA394A14();
      v19 = -1 << *(v6 + 32);
      result = sub_1DA394644();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v6 + 48) + 8 * result) = v17;
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v20 = 1 << *(v3 + 32);
    if (v20 >= 64)
    {
      sub_1DA379B00(0, (v20 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v20;
    }

    v2 = v21;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1DA3791F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD460, &qword_1DA395E00);
  result = sub_1DA394734();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v34 = v2;
  v35 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v36 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      sub_1DA379B00(0, (v33 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v33;
    }

    v2 = v34;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v36 = (v11 - 1) & v11;
LABEL_14:
    v17 = *(v3 + 48) + 40 * (v14 | (v7 << 6));
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v17 + 24);
    v22 = *(v17 + 32);
    v23 = *(v6 + 40);
    sub_1DA3949D4();
    sub_1DA394354();
    sub_1DA394354();
    MEMORY[0x1DA74C080](v22 + 1);
    result = sub_1DA394A14();
    v24 = -1 << *(v6 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = *(v6 + 48) + 40 * v27;
    *v32 = v18;
    *(v32 + 8) = v19;
    *(v32 + 16) = v20;
    *(v32 + 24) = v21;
    *(v32 + 32) = v22;
    ++*(v6 + 16);
    v3 = v35;
    v11 = v36;
    if (!v36)
    {
      goto LABEL_9;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v13 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}