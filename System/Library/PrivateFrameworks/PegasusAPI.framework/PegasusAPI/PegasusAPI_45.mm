void static Apple_Parsec_Siri_Context_EventTypeInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v2 = sub_1B964C110();
  v3 = OUTLINED_FUNCTION_30_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  v12 = OUTLINED_FUNCTION_183(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v73 - v18;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90F8, &qword_1B9687990);
  v21 = OUTLINED_FUNCTION_59_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44_0();
  v75 = v24;
  OUTLINED_FUNCTION_230();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v73 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v73 - v29;
  v31 = *v1 == *v0 && v1[1] == v0[1];
  if (!v31 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_36;
  }

  v73 = v17;
  v76 = v10;
  v79 = type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(0);
  v80 = v0;
  v32 = v79[8];
  v77 = v20;
  v33 = *(v20 + 48);
  v74 = v1;
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v30);
  if (v31)
  {
    OUTLINED_FUNCTION_37_0(&v30[v33]);
    if (v31)
    {
      sub_1B8D9207C(v30, &off_1EBAB90F0, &unk_1B964D8E0);
      v34 = v5;
      v35 = v76;
      goto LABEL_16;
    }

LABEL_14:
    v40 = v30;
LABEL_35:
    sub_1B8D9207C(v40, &qword_1EBAB90F8, &qword_1B9687990);
    goto LABEL_36;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(&v30[v33]);
  if (v36)
  {
    v37 = *(v5 + 8);
    v38 = OUTLINED_FUNCTION_287();
    v39(v38);
    goto LABEL_14;
  }

  v41 = &v30[v33];
  v34 = v5;
  v35 = v76;
  (*(v5 + 32))(v76, v41, v2);
  OUTLINED_FUNCTION_0_59();
  sub_1B8CD2840(v42, v43);
  OUTLINED_FUNCTION_686();
  v44 = sub_1B964C850();
  v45 = *(v34 + 8);
  v45(v35, v2);
  v46 = OUTLINED_FUNCTION_287();
  (v45)(v46);
  sub_1B8D9207C(v30, &off_1EBAB90F0, &unk_1B964D8E0);
  if ((v44 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_16:
  v47 = v79[9];
  v48 = *(v77 + 48);
  v49 = v74;
  OUTLINED_FUNCTION_549();
  OUTLINED_FUNCTION_549();
  OUTLINED_FUNCTION_37_0(v28);
  if (v31)
  {
    OUTLINED_FUNCTION_37_0(&v28[v48]);
    if (v31)
    {
      sub_1B8D9207C(v28, &off_1EBAB90F0, &unk_1B964D8E0);
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(&v28[v48]);
  if (v50)
  {
    v51 = *(v34 + 8);
    v52 = OUTLINED_FUNCTION_287();
    v53(v52);
LABEL_24:
    v40 = v28;
    goto LABEL_35;
  }

  (*(v34 + 32))(v35, &v28[v48], v2);
  OUTLINED_FUNCTION_0_59();
  sub_1B8CD2840(v54, v55);
  OUTLINED_FUNCTION_686();
  v56 = sub_1B964C850();
  v57 = *(v34 + 8);
  v57(v35, v2);
  v58 = OUTLINED_FUNCTION_287();
  (v57)(v58);
  sub_1B8D9207C(v28, &off_1EBAB90F0, &unk_1B964D8E0);
  if ((v56 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_26:
  v59 = v79[10];
  v60 = *(v77 + 48);
  v61 = v75;
  OUTLINED_FUNCTION_549();
  v62 = v80;
  OUTLINED_FUNCTION_549();
  OUTLINED_FUNCTION_37_0(v61);
  if (!v31)
  {
    v63 = v73;
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v61 + v60);
    if (!v64)
    {
      (*(v34 + 32))(v35, v61 + v60, v2);
      OUTLINED_FUNCTION_0_59();
      sub_1B8CD2840(v65, v66);
      OUTLINED_FUNCTION_89_10();
      v67 = sub_1B964C850();
      v68 = *(v34 + 8);
      v68(v35, v2);
      v68(v63, v2);
      v62 = v80;
      sub_1B8D9207C(v61, &off_1EBAB90F0, &unk_1B964D8E0);
      if ((v67 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_38;
    }

    (*(v34 + 8))(v63, v2);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_37_0(v61 + v60);
  if (!v31)
  {
LABEL_34:
    v40 = v61;
    goto LABEL_35;
  }

  sub_1B8D9207C(v61, &off_1EBAB90F0, &unk_1B964D8E0);
LABEL_38:
  if (*(v49 + 16) == *(v62 + 16))
  {
    v69 = v49[3] == v62[3] && v49[4] == v62[4];
    if (v69 || (sub_1B964C9F0() & 1) != 0)
    {
      v70 = v79[7];
      sub_1B964C2B0();
      OUTLINED_FUNCTION_1_50();
      sub_1B8CD2840(v71, v72);
      sub_1B964C850();
    }
  }

LABEL_36:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9112378(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2840(&qword_1EBAC5140, type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91123F8(uint64_t a1)
{
  v2 = sub_1B8CD2840(&qword_1EBAC5110, type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9112468()
{
  sub_1B8CD2840(&qword_1EBAC5110, type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B9112500()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5020);
  __swift_project_value_buffer(v0, qword_1EBAC5020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sport";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "league";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "teams";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Context_SportsInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4D0();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Context_SportsInfo.traverse<A>(visitor:)()
{
  v2 = v1;
  OUTLINED_FUNCTION_12_8();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
  {
    v7 = v0[2];
    v8 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
    {
      if (!*(v0[4] + 16) || (result = sub_1B964C6E0(), !v2))
      {
        v10 = v0 + *(type metadata accessor for Apple_Parsec_Siri_Context_SportsInfo(0) + 28);
        OUTLINED_FUNCTION_12();
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_Context_SportsInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = v3[2] == v2[2] && v3[3] == v2[3];
  if (!v7 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D6123C(v3[4], v2[4]) & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for Apple_Parsec_Siri_Context_SportsInfo(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_50();
  sub_1B8CD2840(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9112970(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD2840(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9112A50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2840(&qword_1EBAC5138, type metadata accessor for Apple_Parsec_Siri_Context_SportsInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9112AD0(uint64_t a1)
{
  v2 = sub_1B8CD2840(&qword_1EBAC5128, type metadata accessor for Apple_Parsec_Siri_Context_SportsInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9112B40()
{
  sub_1B8CD2840(&qword_1EBAC5128, type metadata accessor for Apple_Parsec_Siri_Context_SportsInfo);

  return sub_1B964C5D0();
}

unint64_t sub_1B9112BC4()
{
  result = qword_1EBAC5080;
  if (!qword_1EBAC5080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5080);
  }

  return result;
}

unint64_t sub_1B9112C1C()
{
  result = qword_1EBAC5088;
  if (!qword_1EBAC5088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5088);
  }

  return result;
}

unint64_t sub_1B9112C74()
{
  result = qword_1EBAC5090;
  if (!qword_1EBAC5090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5090);
  }

  return result;
}

unint64_t sub_1B9112CCC()
{
  result = qword_1EBAC5098;
  if (!qword_1EBAC5098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5098);
  }

  return result;
}

unint64_t sub_1B9112D24()
{
  result = qword_1EBAC50A0;
  if (!qword_1EBAC50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC50A0);
  }

  return result;
}

unint64_t sub_1B9112D7C()
{
  result = qword_1EBAC50A8;
  if (!qword_1EBAC50A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC50A8);
  }

  return result;
}

uint64_t sub_1B91133F8()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B91134C4()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B91135B8()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B91138BC(319, &qword_1ED9EB350, MEMORY[0x1E69AA900]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B91136B0()
{
  sub_1B91138BC(319, &qword_1ED9F7370, type metadata accessor for Apple_Parsec_Siri_Context_LocationTypeInfo);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1B91138BC(319, &qword_1ED9F7788, type metadata accessor for Apple_Parsec_Siri_Context_WebsiteTypeInfo);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1B91138BC(319, qword_1ED9EC838, type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1B91138BC(319, qword_1ED9ECC60, type metadata accessor for Apple_Parsec_Siri_Context_SportsInfo);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1B91138BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B9113910()
{
  result = qword_1EBAC5160;
  if (!qword_1EBAC5160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5160);
  }

  return result;
}

unint64_t sub_1B9113964()
{
  result = qword_1EBAC5168;
  if (!qword_1EBAC5168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5168);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_26(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_29()
{
  result = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_10_25()
{
  result = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_17()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_23_11()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_24_17()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_102_6(uint64_t a1)
{
  *(v1 + 40) = a1;

  return type metadata accessor for Apple_Parsec_Siri_Context_EventTypeInfo(0);
}

uint64_t OUTLINED_FUNCTION_104_2(uint64_t a1)
{
  *(v1 + 8) = a1;

  return sub_1B964C110();
}

uint64_t OUTLINED_FUNCTION_113_5(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_118_3()
{

  return sub_1B910CF78();
}

uint64_t OUTLINED_FUNCTION_120_5()
{

  return sub_1B910CF78();
}

unint64_t Apple_Parsec_Siri_Legacy_RegionProperty.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 9;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B9113C8C@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_Legacy_RegionProperty.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9113CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B912EC1C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_Legacy_RegionProperty.allCases.setter(void *a1)
{
  OUTLINED_FUNCTION_18();
  off_1EBAC5198 = a1;
}

uint64_t (*static Apple_Parsec_Siri_Legacy_RegionProperty.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B9113DF0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_Legacy_RegionProperty.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_LegacySnippet.generalKnowledgeSnippet.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(0);
  OUTLINED_FUNCTION_57(v1);
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAC53A0, &qword_1B96923C0);
LABEL_6:
    OUTLINED_FUNCTION_132_2();
    *(v0 + 16) = 0;
    *(v0 + 24) = v10;
    *(v0 + 32) = 0;
    OUTLINED_FUNCTION_246_2(v10);
    v11 = *(v1 + 40);
    type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
    v12 = OUTLINED_FUNCTION_40_3();
    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  OUTLINED_FUNCTION_543();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B9114334();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_288();
  return sub_1B9114610();
}

uint64_t Apple_Parsec_Siri_Legacy_LegacySnippet.generalKnowledgeSnippet.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAC53A0, &qword_1B96923C0);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_432();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v3;
  *(v1 + 32) = 0;
  OUTLINED_FUNCTION_246_2(v3);
  v4 = *(v2 + 40);
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Apple_Parsec_Siri_Legacy_LegacySnippet.generalKnowledgeSnippet.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(0);
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    sub_1B8D9207C(v0, &qword_1EBAC53A0, &qword_1B96923C0);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_12_23();
      OUTLINED_FUNCTION_128();
      sub_1B9114610();
      goto LABEL_8;
    }

    sub_1B9114334();
  }

  OUTLINED_FUNCTION_247_1();
  *(v12 + 16) = 0;
  *(v12 + 24) = v18;
  *(v12 + 32) = 0;
  *(v12 + 40) = MEMORY[0x1E69E7CC0];
  *(v12 + 48) = 0;
  *(v12 + 56) = v18;
  v19 = v12 + *(v10 + 36);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v20 = *(v10 + 40);
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B9114238(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B91148B0();
    sub_1B8D9207C(v5, &qword_1EBAC53A0, &qword_1B96923C0);
    OUTLINED_FUNCTION_12_23();
    OUTLINED_FUNCTION_211_1();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9114334();
  }

  else
  {
    sub_1B8D9207C(v5, &qword_1EBAC53A0, &qword_1B96923C0);
    OUTLINED_FUNCTION_12_23();
    OUTLINED_FUNCTION_1_0();
    sub_1B9114610();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t sub_1B9114334()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Apple_Parsec_Siri_Legacy_LegacySnippet.answerSnippet.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(0);
  OUTLINED_FUNCTION_57(v0);
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAC53A0, &qword_1B96923C0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_11_30();
      OUTLINED_FUNCTION_288();
      return sub_1B9114610();
    }

    sub_1B9114334();
  }

  v10 = OUTLINED_FUNCTION_208_2(MEMORY[0x1E69E7CC0]);
  v11 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(v10);
  OUTLINED_FUNCTION_163_2(v11);
  v12 = *(v11 + 24);
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  v13 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t sub_1B9114498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B91148B0();
  return a7(v7);
}

uint64_t Apple_Parsec_Siri_Legacy_LegacySnippet.answerSnippet.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAC53A0, &qword_1B96923C0);
  OUTLINED_FUNCTION_11_30();
  OUTLINED_FUNCTION_432();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerSnippet.init()()
{
  v0 = OUTLINED_FUNCTION_208_2(MEMORY[0x1E69E7CC0]);
  v1 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(v0);
  OUTLINED_FUNCTION_163_2(v1);
  v2 = *(v1 + 24);
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  v3 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B9114610()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21_7(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

void Apple_Parsec_Siri_Legacy_LegacySnippet.answerSnippet.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(0);
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAC53A0, &qword_1B96923C0);
LABEL_7:
    OUTLINED_FUNCTION_224_3(MEMORY[0x1E69E7CC0]);
    v17 = *(v10 + 24);
    type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
    OUTLINED_FUNCTION_155_2();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B9114334();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_30();
  OUTLINED_FUNCTION_128();
  sub_1B9114610();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B91147B4(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B91148B0();
    sub_1B8D9207C(v5, &qword_1EBAC53A0, &qword_1B96923C0);
    OUTLINED_FUNCTION_11_30();
    OUTLINED_FUNCTION_211_1();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9114334();
  }

  else
  {
    sub_1B8D9207C(v5, &qword_1EBAC53A0, &qword_1B96923C0);
    OUTLINED_FUNCTION_11_30();
    OUTLINED_FUNCTION_1_0();
    sub_1B9114610();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t sub_1B91148B0()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21_7(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t Apple_Parsec_Siri_Legacy_LegacySnippet.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

void static Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(0);
  v2 = OUTLINED_FUNCTION_183(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_62();
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(0);
  v6 = OUTLINED_FUNCTION_183(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_8();
  v9 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(0);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53A8, &qword_1B96923C8);
  OUTLINED_FUNCTION_183(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_139();
  v19 = *(v18 + 56);
  sub_1B91148B0();
  sub_1B91148B0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_142_3();
    sub_1B91148B0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_11_30();
      sub_1B9114610();
      v20 = OUTLINED_FUNCTION_128();
      static Apple_Parsec_Siri_Legacy_AnswerSnippet.== infix(_:_:)(v20);
      sub_1B9114334();
      OUTLINED_FUNCTION_461();
LABEL_7:
      sub_1B9114334();
      OUTLINED_FUNCTION_63_6();
      sub_1B9114334();
      goto LABEL_8;
    }
  }

  else
  {
    OUTLINED_FUNCTION_142_3();
    sub_1B91148B0();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_12_23();
      sub_1B9114610();
      OUTLINED_FUNCTION_246();
      static Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.== infix(_:_:)();
      sub_1B9114334();
      goto LABEL_7;
    }
  }

  sub_1B9114334();
  sub_1B8D9207C(v0, &qword_1EBAC53A8, &qword_1B96923C8);
LABEL_8:
  OUTLINED_FUNCTION_283();
}

void static Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_112();
  v4 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v3);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53B0, &qword_1B96923D0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_137();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53B8, &qword_1B96923D8);
  OUTLINED_FUNCTION_59_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  v16 = *v1;
  v17 = v1[1];
  OUTLINED_FUNCTION_428();
  v20 = v20 && v18 == v19;
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_23;
  }

  v21 = v1[2] == *(v0 + 16) && v1[3] == *(v0 + 24);
  if (!v21 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (*(v1 + 8) != *(v0 + 32))
  {
    goto LABEL_23;
  }

  v22 = v1[5];
  v23 = *(v0 + 40);
  sub_1B8D85B24();
  if ((v24 & 1) == 0)
  {
    goto LABEL_23;
  }

  v48 = type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(0);
  v25 = *(v48 + 40);
  v26 = *(v12 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_461_0();
  v27 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v27, v28, v4);
  if (!v20)
  {
    OUTLINED_FUNCTION_1_0();
    sub_1B8F1B8B8();
    v31 = OUTLINED_FUNCTION_156_6();
    OUTLINED_FUNCTION_178(v31, v32, v4);
    if (!v33)
    {
      OUTLINED_FUNCTION_1_51();
      sub_1B9114610();
      OUTLINED_FUNCTION_494_0();
      if (v37 || (, , v38 = OUTLINED_FUNCTION_616(), v40 = sub_1B912BB5C(v38, v39), , , (v40 & 1) != 0))
      {
        v41 = sub_1B964C2B0();
        OUTLINED_FUNCTION_0_60();
        sub_1B8CD2888(v42, v43);
        OUTLINED_FUNCTION_257();
        sub_1B964C850();
        OUTLINED_FUNCTION_61_5();
        sub_1B9114334();
        sub_1B9114334();
        sub_1B8D9207C(v2, &qword_1EBAC53B0, &qword_1B96923D0);
        if ((v41 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_28;
      }

      OUTLINED_FUNCTION_62_3();
      sub_1B9114334();
      sub_1B9114334();
      v34 = &qword_1EBAC53B0;
      v35 = &qword_1B96923D0;
LABEL_22:
      sub_1B8D9207C(v2, v34, v35);
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_5_27();
    sub_1B9114334();
LABEL_21:
    v34 = &qword_1EBAC53B8;
    v35 = &qword_1B96923D8;
    goto LABEL_22;
  }

  v29 = OUTLINED_FUNCTION_156_6();
  OUTLINED_FUNCTION_178(v29, v30, v4);
  if (!v20)
  {
    goto LABEL_21;
  }

  sub_1B8D9207C(v2, &qword_1EBAC53B0, &qword_1B96923D0);
LABEL_28:
  v44 = v1[6] == *(v0 + 48) && v1[7] == *(v0 + 56);
  if (v44 || (sub_1B964C9F0() & 1) != 0)
  {
    v45 = *(v48 + 36);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_60();
    sub_1B8CD2888(v46, v47);
    v36 = OUTLINED_FUNCTION_199_0();
    goto LABEL_24;
  }

LABEL_23:
  v36 = 0;
LABEL_24:
  OUTLINED_FUNCTION_264(v36);
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.pods.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.appPunchOut.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(v7) + 40);
  OUTLINED_FUNCTION_100_3();
  v9 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v11 = *(v9 + 20);
    if (qword_1EBAB7448 != -1)
    {
      OUTLINED_FUNCTION_22_17();
    }

    *(a1 + v11) = qword_1EBAC5328;
    v12 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_234_3(v12, v13);
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC53B0, &qword_1B96923D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_182();
    return sub_1B9114610();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.appPunchOut.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBAC53B0, &qword_1B96923D0);
  OUTLINED_FUNCTION_1_51();
  OUTLINED_FUNCTION_122_0();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.appPunchOut.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  v17 = type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(v16);
  OUTLINED_FUNCTION_256_1(*(v17 + 40));
  OUTLINED_FUNCTION_17_2();
  if (v18)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v19 = *(v10 + 20);
    if (qword_1EBAB7448 != -1)
    {
      OUTLINED_FUNCTION_22_17();
    }

    *(v12 + v19) = qword_1EBAC5328;
    v20 = OUTLINED_FUNCTION_50_1();

    if (v20 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAC53B0, &qword_1B96923D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_246();
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(v0) + 36);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(v0) + 36);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(v0) + 36);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Legacy_PodView.imagePod.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_57(v0);
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9098, &qword_1B96923E0);
LABEL_6:
    v9 = OUTLINED_FUNCTION_208_2(MEMORY[0x1E69E7CC0]);
    v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod(v9);
    return OUTLINED_FUNCTION_163_2(v10);
  }

  OUTLINED_FUNCTION_543();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B9114334();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_10_26();
  OUTLINED_FUNCTION_288();
  return sub_1B9114610();
}

uint64_t Apple_Parsec_Siri_Legacy_PodView.imagePod.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9098, &qword_1B96923E0);
  OUTLINED_FUNCTION_10_26();
  OUTLINED_FUNCTION_432();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Siri_Legacy_PodView.imagePod.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9098, &qword_1B96923E0);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_10_26();
      OUTLINED_FUNCTION_128();
      sub_1B9114610();
      goto LABEL_7;
    }

    sub_1B9114334();
  }

  OUTLINED_FUNCTION_224_3(MEMORY[0x1E69E7CC0]);
LABEL_7:
  OUTLINED_FUNCTION_242();
}

void sub_1B9115B40(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B91148B0();
    sub_1B8D9207C(v5, &qword_1EBAB9098, &qword_1B96923E0);
    OUTLINED_FUNCTION_10_26();
    OUTLINED_FUNCTION_211_1();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9114334();
  }

  else
  {
    sub_1B8D9207C(v5, &qword_1EBAB9098, &qword_1B96923E0);
    OUTLINED_FUNCTION_10_26();
    OUTLINED_FUNCTION_1_0();
    sub_1B9114610();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Siri_Legacy_PodView.summaryPod.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_57(v1);
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9098, &qword_1B96923E0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_9_23();
      OUTLINED_FUNCTION_288();
      return sub_1B9114610();
    }

    sub_1B9114334();
  }

  OUTLINED_FUNCTION_276_1();
  v11 = type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(0);
  v12 = v0 + *(v11 + 28);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v13 = *(v11 + 32);
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  v14 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t Apple_Parsec_Siri_Legacy_PodView.summaryPod.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9098, &qword_1B96923E0);
  OUTLINED_FUNCTION_9_23();
  OUTLINED_FUNCTION_432();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Siri_Legacy_SummaryPod.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_276_1();
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(0);
  v3 = a1 + *(v2 + 28);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 32);
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Apple_Parsec_Siri_Legacy_PodView.summaryPod.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9098, &qword_1B96923E0);
LABEL_7:
    OUTLINED_FUNCTION_247_1();
    v12[2] = 0;
    v12[3] = v18;
    v12[4] = 0;
    v12[5] = v18;
    v19 = v12 + *(v10 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v20 = *(v10 + 32);
    type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
    OUTLINED_FUNCTION_155_2();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B9114334();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_23();
  OUTLINED_FUNCTION_128();
  sub_1B9114610();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B9115F7C(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B91148B0();
    sub_1B8D9207C(v5, &qword_1EBAB9098, &qword_1B96923E0);
    OUTLINED_FUNCTION_9_23();
    OUTLINED_FUNCTION_211_1();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9114334();
  }

  else
  {
    sub_1B8D9207C(v5, &qword_1EBAB9098, &qword_1B96923E0);
    OUTLINED_FUNCTION_9_23();
    OUTLINED_FUNCTION_1_0();
    sub_1B9114610();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Siri_Legacy_PodView.propertyPod.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_57(v0);
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9098, &qword_1B96923E0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_8_30();
      OUTLINED_FUNCTION_288();
      return sub_1B9114610();
    }

    sub_1B9114334();
  }

  v10 = OUTLINED_FUNCTION_208_2(MEMORY[0x1E69E7CC0]);
  v11 = type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod(v10);
  return OUTLINED_FUNCTION_163_2(v11);
}

uint64_t Apple_Parsec_Siri_Legacy_PodView.propertyPod.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9098, &qword_1B96923E0);
  OUTLINED_FUNCTION_8_30();
  OUTLINED_FUNCTION_432();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_1B91161F8()
{
  v0 = OUTLINED_FUNCTION_208_2(MEMORY[0x1E69E7CC0]);
  v2 = v1(v0);
  return OUTLINED_FUNCTION_163_2(v2);
}

void Apple_Parsec_Siri_Legacy_PodView.propertyPod.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9098, &qword_1B96923E0);
LABEL_7:
    OUTLINED_FUNCTION_224_3(MEMORY[0x1E69E7CC0]);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1B9114334();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8_30();
  OUTLINED_FUNCTION_128();
  sub_1B9114610();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B9116370(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B91148B0();
    sub_1B8D9207C(v5, &qword_1EBAB9098, &qword_1B96923E0);
    OUTLINED_FUNCTION_8_30();
    OUTLINED_FUNCTION_211_1();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9114334();
  }

  else
  {
    sub_1B8D9207C(v5, &qword_1EBAB9098, &qword_1B96923E0);
    OUTLINED_FUNCTION_8_30();
    OUTLINED_FUNCTION_1_0();
    sub_1B9114610();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Siri_Legacy_PodView.webLinkPod.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_57(v1);
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9098, &qword_1B96923E0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_7_27();
      OUTLINED_FUNCTION_288();
      return sub_1B9114610();
    }

    sub_1B9114334();
  }

  OUTLINED_FUNCTION_132_2();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v11 = type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod(0);
  return OUTLINED_FUNCTION_279(v11);
}

uint64_t Apple_Parsec_Siri_Legacy_PodView.webLinkPod.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9098, &qword_1B96923E0);
  OUTLINED_FUNCTION_7_27();
  OUTLINED_FUNCTION_432();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Siri_Legacy_PodView.webLinkPod.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9098, &qword_1B96923E0);
LABEL_7:
    OUTLINED_FUNCTION_247_1();
    *(v12 + 16) = MEMORY[0x1E69E7CC0];
    v18 = v12 + *(v10 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1B9114334();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_27();
  OUTLINED_FUNCTION_128();
  sub_1B9114610();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B9116740(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B91148B0();
    sub_1B8D9207C(v5, &qword_1EBAB9098, &qword_1B96923E0);
    OUTLINED_FUNCTION_7_27();
    OUTLINED_FUNCTION_211_1();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9114334();
  }

  else
  {
    sub_1B8D9207C(v5, &qword_1EBAB9098, &qword_1B96923E0);
    OUTLINED_FUNCTION_7_27();
    OUTLINED_FUNCTION_1_0();
    sub_1B9114610();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t sub_1B9116854()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B91168DC()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Siri_Legacy_PodView.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_PodView(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

void static Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v75 = v1;
  v76 = v2;
  v70 = type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod(0);
  v3 = OUTLINED_FUNCTION_59_1(v70);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v74 = (v7 - v6);
  v8 = OUTLINED_FUNCTION_201();
  v71 = type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod(v8);
  v9 = OUTLINED_FUNCTION_59_1(v71);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v73 = (v13 - v12);
  v14 = OUTLINED_FUNCTION_201();
  v15 = type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(v14);
  v16 = OUTLINED_FUNCTION_183(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_62();
  v19 = OUTLINED_FUNCTION_186_1();
  v20 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod(v19);
  v21 = OUTLINED_FUNCTION_59_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v72 = (v25 - v24);
  v26 = OUTLINED_FUNCTION_201();
  v27 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(v26);
  v28 = OUTLINED_FUNCTION_59_1(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_66();
  v33 = (v31 - v32);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = (&v69 - v36);
  v38 = MEMORY[0x1EEE9AC00](v35);
  MEMORY[0x1EEE9AC00](v38);
  v40 = (&v69 - v39);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53C0, &qword_1B96923E8);
  OUTLINED_FUNCTION_183(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_139();
  v46 = *(v45 + 56);
  sub_1B91148B0();
  sub_1B91148B0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_29_19();
      sub_1B91148B0();
      if (OUTLINED_FUNCTION_253_2() != 1)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_9_23();
      sub_1B9114610();
      static Apple_Parsec_Siri_Legacy_SummaryPod.== infix(_:_:)();
      sub_1B9114334();
      sub_1B9114334();
      OUTLINED_FUNCTION_16_21();
      sub_1B9114334();
      goto LABEL_26;
    case 2u:
      OUTLINED_FUNCTION_29_19();
      sub_1B91148B0();
      if (OUTLINED_FUNCTION_253_2() != 2)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_8_30();
      v47 = v73;
      sub_1B9114610();
      v48 = *v37;
      v49 = *v47;
      sub_1B8D756E8();
      if (v50)
      {
        v51 = *(v71 + 20);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_60();
        sub_1B8CD2888(v52, v53);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_148_3();
      sub_1B9114334();
      goto LABEL_25;
    case 3u:
      OUTLINED_FUNCTION_29_19();
      sub_1B91148B0();
      if (OUTLINED_FUNCTION_253_2() != 3)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_7_27();
      v54 = v74;
      sub_1B9114610();
      v55 = *v33 == *v54 && v33[1] == v54[1];
      if (v55 || (sub_1B964C9F0() & 1) != 0)
      {
        v56 = v33[2];
        v57 = v54[2];
        sub_1B8D757E4();
        if (v58)
        {
          v59 = *(v70 + 24);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_60();
          sub_1B8CD2888(v60, v61);
          sub_1B964C850();
        }
      }

      OUTLINED_FUNCTION_147_4();
      sub_1B9114334();
      goto LABEL_25;
    default:
      OUTLINED_FUNCTION_29_19();
      sub_1B91148B0();
      if (OUTLINED_FUNCTION_253_2())
      {
LABEL_19:
        sub_1B9114334();
        sub_1B8D9207C(v0, &qword_1EBAC53C0, &qword_1B96923E8);
      }

      else
      {
        OUTLINED_FUNCTION_10_26();
        v62 = v72;
        sub_1B9114610();
        v63 = *v40;
        v64 = *v62;
        sub_1B8D781B4();
        if (v65)
        {
          v66 = *(v20 + 20);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_60();
          sub_1B8CD2888(v67, v68);
          sub_1B964C850();
        }

        OUTLINED_FUNCTION_149_4();
        sub_1B9114334();
LABEL_25:
        sub_1B9114334();
        OUTLINED_FUNCTION_16_21();
        sub_1B9114334();
      }

LABEL_26:
      OUTLINED_FUNCTION_283();
      return;
  }
}

void static Apple_Parsec_Siri_Legacy_SummaryPod.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_280();
  v3 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(v2);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9078, &qword_1B964D868);
  OUTLINED_FUNCTION_59_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_88();
  v15 = *v0;
  v16 = v0[1];
  OUTLINED_FUNCTION_428();
  v19 = v19 && v17 == v18;
  if (!v19 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_84_1();
  v22 = v19 && v20 == v21;
  if (!v22 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_20;
  }

  v35 = type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(0);
  v23 = *(v35 + 32);
  v24 = *(v11 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_461_0();
  OUTLINED_FUNCTION_50(v1);
  if (!v19)
  {
    OUTLINED_FUNCTION_177_1();
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_50(v1 + v24);
    if (!v25)
    {
      OUTLINED_FUNCTION_2_34();
      sub_1B9114610();
      v27 = OUTLINED_FUNCTION_246();
      static Apple_Parsec_Siri_Legacy_ImageResource.== infix(_:_:)(v27, v28);
      OUTLINED_FUNCTION_141_8();
      sub_1B9114334();
      sub_1B9114334();
      sub_1B8D9207C(v1, &qword_1EBAB9070, &qword_1B964D860);
      if ((v3 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    OUTLINED_FUNCTION_6_21();
    sub_1B9114334();
LABEL_19:
    sub_1B8D9207C(v1, &qword_1EBAB9078, &qword_1B964D868);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_50(v1 + v24);
  if (!v19)
  {
    goto LABEL_19;
  }

  sub_1B8D9207C(v1, &qword_1EBAB9070, &qword_1B964D860);
LABEL_23:
  OUTLINED_FUNCTION_40_5();
  v31 = v19 && v29 == v30;
  if (v31 || (sub_1B964C9F0() & 1) != 0)
  {
    v32 = *(v35 + 28);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_60();
    sub_1B8CD2888(v33, v34);
    v26 = OUTLINED_FUNCTION_634();
    goto LABEL_21;
  }

LABEL_20:
  v26 = 0;
LABEL_21:
  OUTLINED_FUNCTION_264(v26);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9117230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_468();
  if ((v7(*v5, *v6) & 1) == 0)
  {
    return 0;
  }

  v8 = a4(0);
  OUTLINED_FUNCTION_871(v8);
  OUTLINED_FUNCTION_0_60();
  sub_1B8CD2888(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9117314@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  a1(0);
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = a3 + *(a2(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_Legacy_ImagePod.images.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_ImagePod.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Legacy_SummaryPod.imageResource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(v7) + 32);
  OUTLINED_FUNCTION_100_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    Apple_Parsec_Siri_Legacy_ImageResource.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9070, &qword_1B964D860);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_34();
    OUTLINED_FUNCTION_182();
    return sub_1B9114610();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_SummaryPod.imageResource.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAB9070, &qword_1B964D860);
  OUTLINED_FUNCTION_2_34();
  OUTLINED_FUNCTION_122_0();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Siri_Legacy_ImageResource.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = xmmword_1B966F890;
  *(a1 + 80) = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v3 = a1 + *(v2 + 52);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_Legacy_SummaryPod.imageResource.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(v15);
  OUTLINED_FUNCTION_256_1(*(v16 + 32));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    OUTLINED_FUNCTION_83_4();
    OUTLINED_FUNCTION_118_4(v18, xmmword_1B966F890);
    OUTLINED_FUNCTION_17_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9070, &qword_1B964D860);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_34();
    OUTLINED_FUNCTION_246();
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Legacy_SummaryPod.hasImageResource.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(v6) + 32);
  OUTLINED_FUNCTION_863();
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Siri_Legacy_SummaryPod.clearImageResource()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAB9070, &qword_1B964D860);
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_Legacy_SummaryPod.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Legacy_PropertyPod.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Legacy_WebLinkPod.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Legacy_LinkedAnswer.punchOut.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(v7) + 52);
  OUTLINED_FUNCTION_100_3();
  v9 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    OUTLINED_FUNCTION_276_1();
    OUTLINED_FUNCTION_164_2(v11);
    *(a1 + 96) = 0;
    *(a1 + 104) = v12;
    v13 = a1 + *(v9 + 44);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC53C8, &qword_1B96923F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_31();
    OUTLINED_FUNCTION_182();
    return sub_1B9114610();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_LinkedAnswer.punchOut.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(v1);
  sub_1B8D9207C(v0 + *(v2 + 52), &qword_1EBAC53C8, &qword_1B96923F0);
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_122_0();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_276_1();
  OUTLINED_FUNCTION_164_2(v2);
  *(a1 + 96) = 0;
  *(a1 + 104) = v3;
  v4 = a1 + *(type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0) + 44);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_Legacy_LinkedAnswer.punchOut.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(v15);
  OUTLINED_FUNCTION_256_1(*(v16 + 52));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    OUTLINED_FUNCTION_170_3();
    OUTLINED_FUNCTION_17_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC53C8, &qword_1B96923F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_31();
    OUTLINED_FUNCTION_246();
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B9117CA4()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B91148B0();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC53C8, &qword_1B96923F0);
    OUTLINED_FUNCTION_4_31();
    OUTLINED_FUNCTION_255_2();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_35_11();
    sub_1B9114334();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC53C8, &qword_1B96923F0);
    OUTLINED_FUNCTION_4_31();
    OUTLINED_FUNCTION_256_2();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Apple_Parsec_Siri_Legacy_LinkedAnswer.hasPunchOut.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(v6) + 52);
  OUTLINED_FUNCTION_863();
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Siri_Legacy_LinkedAnswer.clearPunchOut()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(0);
  sub_1B8D9207C(v0 + *(v1 + 52), &qword_1EBAC53C8, &qword_1B96923F0);
  type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_Legacy_LinkedAnswer.thumbnails.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_LinkedAnswer.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(v0) + 48);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_Legacy_LinkedAnswer.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(v0) + 48);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_Legacy_LinkedAnswer.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(v0) + 48);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Legacy_LinkedAnswer.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_276_1();
  OUTLINED_FUNCTION_164_2(v2);
  *(a1 + 96) = MEMORY[0x1E69E7CC0];
  *(a1 + 104) = 0;
  v3 = type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(0);
  v4 = a1 + *(v3 + 48);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = *(v3 + 52);
  type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  v6 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void sub_1B9118098(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.name.setter();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.name.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B91181DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.description_p.setter();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.description_p.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.descriptionText.getter()
{
  OUTLINED_FUNCTION_73_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);

  return OUTLINED_FUNCTION_432();
}

void sub_1B911834C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.descriptionText.setter();
}

void Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.descriptionText.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B91251AC(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3();
  v11 = *(v7 + 56);
  *(v7 + 48) = v2;
  *(v7 + 56) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.descriptionText.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 56);
  *(v1 + 48) = *(v0 + 48);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9118468(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.descriptionText.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_18_9();
      v11 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer._StorageClass(v10);
      OUTLINED_FUNCTION_57_0(v11);
      swift_allocObject();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B91251AC(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 56);
    *(v9 + 48) = v4;
    *(v9 + 56) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.link.getter()
{
  OUTLINED_FUNCTION_73_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);

  return OUTLINED_FUNCTION_432();
}

void sub_1B9118544(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.link.setter();
}

void Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.link.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B91251AC(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3();
  v11 = *(v7 + 72);
  *(v7 + 64) = v2;
  *(v7 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.link.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 72);
  *(v1 + 48) = *(v0 + 64);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9118660(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.link.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_18_9();
      v11 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer._StorageClass(v10);
      OUTLINED_FUNCTION_57_0(v11);
      swift_allocObject();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B91251AC(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 72);
    *(v9 + 64) = v4;
    *(v9 + 72) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.displayLink.getter()
{
  OUTLINED_FUNCTION_73_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);

  return OUTLINED_FUNCTION_432();
}

void sub_1B911873C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.displayLink.setter();
}

void Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.displayLink.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B91251AC(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3();
  v11 = *(v7 + 88);
  *(v7 + 80) = v2;
  *(v7 + 88) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.displayLink.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 88);
  *(v1 + 48) = *(v0 + 80);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9118858(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.displayLink.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_18_9();
      v11 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer._StorageClass(v10);
      OUTLINED_FUNCTION_57_0(v11);
      swift_allocObject();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B91251AC(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 88);
    *(v9 + 80) = v4;
    *(v9 + 88) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.punchOut.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(v7);
  OUTLINED_FUNCTION_77_0(v8);
  OUTLINED_FUNCTION_521();
  sub_1B8F1B8B8();
  v9 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    OUTLINED_FUNCTION_276_1();
    OUTLINED_FUNCTION_164_2(v11);
    *(a1 + 96) = 0;
    *(a1 + 104) = v12;
    v13 = a1 + *(v9 + 44);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC53C8, &qword_1B96923F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_31();
    OUTLINED_FUNCTION_182();
    return sub_1B9114610();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.punchOut.setter()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53C8, &qword_1B96923F0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_139();
  v7 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(0);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v1 + v2);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B91251AC(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_4_31();
  sub_1B9114610();
  v13 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v13);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.punchOut.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_73_7();
  v14 = *(v0 + v13);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    OUTLINED_FUNCTION_170_3();
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v1, &qword_1EBAC53C8, &qword_1B96923F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_31();
    OUTLINED_FUNCTION_246();
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B9118CE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.query.setter();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.query.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_10(v2);
  v4 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(v3);
  OUTLINED_FUNCTION_134_4(v4);
  v6 = *(v0 + v5) + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__query;
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B9118E48(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_178_1();
  v6 = (*(v2 + *(v5(v4) + 20)) + *a2);
  OUTLINED_FUNCTION_521();
  v8 = *v6;
  v7 = v6[1];

  return OUTLINED_FUNCTION_288();
}

void sub_1B9118EA8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.searchUri.setter();
}

void sub_1B9118F30()
{
  OUTLINED_FUNCTION_184_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v1;
  v10 = OUTLINED_FUNCTION_112();
  v12 = *(v11(v10) + 20);
  v13 = *(v1 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v1 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = v8(0);
    OUTLINED_FUNCTION_57_0(v16);
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    v15 = v6(v17);
    *(v9 + v12) = v15;
  }

  v18 = (v15 + *v4);
  OUTLINED_FUNCTION_18();
  v19 = v18[1];
  *v18 = v2;
  v18[1] = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.searchUri.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_10(v2);
  v4 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(v3);
  OUTLINED_FUNCTION_134_4(v4);
  v6 = *(v0 + v5) + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__searchUri;
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B91190FC()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v16 = *(v8(0) + 20);
  v17 = *(v0 + v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v0 + v16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = v6(0);
    OUTLINED_FUNCTION_57_0(v20);
    swift_allocObject();
    v21 = OUTLINED_FUNCTION_40_0();
    *(v9 + v16) = v4(v21);
  }

  OUTLINED_FUNCTION_461();
  sub_1B9114610();
  v22 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v22);
  v23 = *v2;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

void Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.imageResource.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_73_7();
  v14 = *(v0 + v13);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    OUTLINED_FUNCTION_83_4();
    OUTLINED_FUNCTION_118_4(v16, xmmword_1B966F890);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v1, &qword_1EBAB9070, &qword_1B964D860);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_34();
    OUTLINED_FUNCTION_246();
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B91193B4()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 32);
  if (v7)
  {
    OUTLINED_FUNCTION_186();
    sub_1B91148B0();
    v2(v3);
    sub_1B9114334();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v6);
  OUTLINED_FUNCTION_242();

  free(v8);
}

uint64_t sub_1B9119488(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_73_7();
  v17 = *(v5 + v16);
  v18 = *a3;
  OUTLINED_FUNCTION_521();
  sub_1B8F1B8B8();
  v19 = a4(0);
  OUTLINED_FUNCTION_178(v7, 1, v19);
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  sub_1B8D9207C(v7, v6, v4);
  return v21;
}

void sub_1B9119584()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_16();
  v5 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(0) + 20);
  v13 = *(v0 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v16);
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    *(v5 + v12) = sub_1B91251AC(v17);
  }

  v4(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = *v2;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

void sub_1B911969C(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.thumbnails.setter();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.thumbnails.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_73_7();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__thumbnails;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.isImageInvertable.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_73_7();
  OUTLINED_FUNCTION_102_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__isImageInvertable;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B911993C@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_461();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.decoratedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v7) + 36);
  OUTLINED_FUNCTION_100_3();
  v9 = type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    OUTLINED_FUNCTION_132_2();
    *(a1 + 16) = MEMORY[0x1E69E7CC0];
    v11 = a1 + *(v9 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC53D0, &qword_1B96923F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_33();
    OUTLINED_FUNCTION_182();
    return sub_1B9114610();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.decoratedValue.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAC53D0, &qword_1B96923F8);
  OUTLINED_FUNCTION_3_33();
  OUTLINED_FUNCTION_122_0();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B9119B5C@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v3 = v2(0);
  return OUTLINED_FUNCTION_279(v3);
}

void Apple_Parsec_Siri_Legacy_AnswerProperty.decoratedValue.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  *(v1 + 40) = *(type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v16) + 36);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    v12[2] = MEMORY[0x1E69E7CC0];
    v18 = v12 + *(v10 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC53D0, &qword_1B96923F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_33();
    OUTLINED_FUNCTION_461();
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B9119CC8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B91148B0();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC53D0, &qword_1B96923F8);
    OUTLINED_FUNCTION_3_33();
    OUTLINED_FUNCTION_255_2();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_32_15();
    sub_1B9114334();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC53D0, &qword_1B96923F8);
    OUTLINED_FUNCTION_3_33();
    OUTLINED_FUNCTION_256_2();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.hasDecoratedValue.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v6) + 36);
  OUTLINED_FUNCTION_863();
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Siri_Legacy_AnswerProperty.clearDecoratedValue()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBAC53D0, &qword_1B96923F8);
  type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.decoratedValueAnnotation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v7) + 40);
  OUTLINED_FUNCTION_100_3();
  v9 = type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    OUTLINED_FUNCTION_132_2();
    *(a1 + 16) = MEMORY[0x1E69E7CC0];
    v11 = a1 + *(v9 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC53D0, &qword_1B96923F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_33();
    OUTLINED_FUNCTION_182();
    return sub_1B9114610();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.decoratedValueAnnotation.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBAC53D0, &qword_1B96923F8);
  OUTLINED_FUNCTION_3_33();
  OUTLINED_FUNCTION_122_0();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Legacy_AnswerProperty.decoratedValueAnnotation.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  *(v1 + 40) = *(type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v16) + 40);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    v12[2] = MEMORY[0x1E69E7CC0];
    v18 = v12 + *(v10 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC53D0, &qword_1B96923F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_33();
    OUTLINED_FUNCTION_461();
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B911A144()
{
  OUTLINED_FUNCTION_111_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_137();
  v9 = *(v1(0) + 40);
  OUTLINED_FUNCTION_24_3();
  sub_1B8F1B8B8();
  v10 = v0(0);
  OUTLINED_FUNCTION_178(v2, 1, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v13, v14, v15);
  return v12;
}

uint64_t sub_1B911A234()
{
  OUTLINED_FUNCTION_111_0();
  v4 = OUTLINED_FUNCTION_178_1();
  v6 = v5(v4);
  sub_1B8D9207C(v1 + *(v6 + 40), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.appPunchOut.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v7) + 44);
  OUTLINED_FUNCTION_100_3();
  v9 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v11 = *(v9 + 20);
    if (qword_1EBAB7448 != -1)
    {
      OUTLINED_FUNCTION_22_17();
    }

    *(a1 + v11) = qword_1EBAC5328;
    v12 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_234_3(v12, v13);
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC53B0, &qword_1B96923D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_182();
    return sub_1B9114610();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.appPunchOut.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v1);
  sub_1B8D9207C(v0 + *(v2 + 44), &qword_1EBAC53B0, &qword_1B96923D0);
  OUTLINED_FUNCTION_1_51();
  OUTLINED_FUNCTION_122_0();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Legacy_AnswerProperty.appPunchOut.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  v17 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v16);
  OUTLINED_FUNCTION_256_1(*(v17 + 44));
  OUTLINED_FUNCTION_17_2();
  if (v18)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v19 = *(v10 + 20);
    if (qword_1EBAB7448 != -1)
    {
      OUTLINED_FUNCTION_22_17();
    }

    *(v12 + v19) = qword_1EBAC5328;
    v20 = OUTLINED_FUNCTION_50_1();

    if (v20 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAC53B0, &qword_1B96923D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_246();
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.hasAppPunchOut.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v6) + 44);
  OUTLINED_FUNCTION_863();
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Siri_Legacy_AnswerProperty.clearAppPunchOut()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(0);
  sub_1B8D9207C(v0 + *(v1 + 44), &qword_1EBAC53B0, &qword_1B96923D0);
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_276_1();
  *(a1 + 48) = 0;
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(0);
  v3 = a1 + v2[8];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = v2[9];
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  v9 = v2[10];
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v5);
  v13 = v2[11];
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  v14 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t sub_1B911A86C()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B911A8F4()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Siri_Legacy_DecoratedText.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

void Apple_Parsec_Siri_Legacy_TextDecorationRegion.regionProperty.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Siri_Legacy_TextDecorationRegion.regionProperty.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1B911AA58()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B911AAE0()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Siri_Legacy_TextDecorationRegion.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_TextDecorationRegion(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Legacy_TextDecorationRegion.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Siri_Legacy_TextDecorationRegion(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageResource.resourceURL.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageResource.resourceURL.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_ImageResource.userAgent.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageResource.userAgent.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_ImageResource.imageData.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageResource.imageData.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 56), *(v1 + 64));
  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_ImageResource.urlFormatString.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageResource.urlFormatString.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_ImageResource.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(v0) + 52);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_Legacy_ImageResource.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(v0) + 52);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_Legacy_ImageResource.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(v0) + 52);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.clientVersion.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.clientVersion.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.bundleID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.bundleID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.appDisplayName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.appDisplayName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.appStoreUri.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.appStoreUri.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.subtitle.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.subtitle.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.punchOutUri.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.punchOutUri.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(v0) + 44);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(v0) + 44);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(v0) + 44);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B911B3C4()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_77_0(v3);
  OUTLINED_FUNCTION_10_4();
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

void sub_1B911B410(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_Legacy_AppPunchOut.bundleID.setter();
}

void sub_1B911B490()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_236_2();
  v6 = OUTLINED_FUNCTION_11_13();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_216_1(v8);
  v10 = *(v1 + v5);
  if ((v9 & 1) == 0)
  {
    v11 = v4(0);
    OUTLINED_FUNCTION_57_0(v11);
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v3(v12);
    OUTLINED_FUNCTION_192_2(v13);
  }

  OUTLINED_FUNCTION_9_3();
  v14 = *(v10 + 24);
  *(v10 + 16) = v2;
  *(v10 + 24) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.bundleID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B911B5BC()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0(v5);
  if (v7)
  {
    v8 = v6;
    OUTLINED_FUNCTION_191();
    v9 = OUTLINED_FUNCTION_461();
    v8(v9);
    v10 = *(v0 + 56);
  }

  else
  {
    OUTLINED_FUNCTION_134_2();
    v11 = *(v0 + 72);
    v12 = *(v0 + 64);
    v13 = *(v12 + v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v12 + v11);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = *(v0 + 72);
      v17 = *(v0 + 64);
      v18 = v4(0);
      OUTLINED_FUNCTION_57_0(v18);
      swift_allocObject();
      v19 = OUTLINED_FUNCTION_40_0();
      v15 = v3(v19);
      *(v17 + v16) = v15;
    }

    OUTLINED_FUNCTION_59_3();
    v20 = *(v15 + 24);
    *(v15 + 16) = v2;
    *(v15 + 24) = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v21);
}

uint64_t sub_1B911B698()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_77_0(v3);
  OUTLINED_FUNCTION_10_4();
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

void sub_1B911B6E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_Legacy_AppPunchOut.appStoreUri.setter();
}

void sub_1B911B764()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_236_2();
  v6 = OUTLINED_FUNCTION_11_13();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_216_1(v8);
  v10 = *(v1 + v5);
  if ((v9 & 1) == 0)
  {
    v11 = v4(0);
    OUTLINED_FUNCTION_57_0(v11);
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v3(v12);
    OUTLINED_FUNCTION_192_2(v13);
  }

  OUTLINED_FUNCTION_9_3();
  v14 = *(v10 + 40);
  *(v10 + 32) = v2;
  *(v10 + 40) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.appStoreUri.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B911B890()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0(v5);
  if (v7)
  {
    v8 = v6;
    OUTLINED_FUNCTION_191();
    v9 = OUTLINED_FUNCTION_461();
    v8(v9);
    v10 = *(v0 + 56);
  }

  else
  {
    OUTLINED_FUNCTION_134_2();
    v11 = *(v0 + 72);
    v12 = *(v0 + 64);
    v13 = *(v12 + v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v12 + v11);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = *(v0 + 72);
      v17 = *(v0 + 64);
      v18 = v4(0);
      OUTLINED_FUNCTION_57_0(v18);
      swift_allocObject();
      v19 = OUTLINED_FUNCTION_40_0();
      v15 = v3(v19);
      *(v17 + v16) = v15;
    }

    OUTLINED_FUNCTION_59_3();
    v20 = *(v15 + 40);
    *(v15 + 32) = v2;
    *(v15 + 40) = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v21);
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.appInstalled.getter()
{
  OUTLINED_FUNCTION_71_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 48);
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.appInstalled.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B912A8D4(v9);
    *(v2 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v7 + 48) = a1 & 1;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.appInstalled.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_71_7();
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 48);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B911BA74(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B912A8D4(v11);
    OUTLINED_FUNCTION_168(v12);
  }

  OUTLINED_FUNCTION_18();
  *(v7 + 48) = v4;

  free(v1);
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutUri.getter()
{
  OUTLINED_FUNCTION_71_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);

  return OUTLINED_FUNCTION_432();
}

void sub_1B911BB60(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutUri.setter();
}

void Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutUri.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B912A8D4(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3();
  v11 = *(v7 + 64);
  *(v7 + 56) = v2;
  *(v7 + 64) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutUri.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 64);
  *(v1 + 48) = *(v0 + 56);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B911BC7C(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutUri.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_18_9();
      v11 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut._StorageClass(v10);
      OUTLINED_FUNCTION_57_0(v11);
      swift_allocObject();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B912A8D4(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 64);
    *(v9 + 56) = v4;
    *(v9 + 64) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.appDisplayName.getter()
{
  OUTLINED_FUNCTION_71_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);

  return OUTLINED_FUNCTION_432();
}

void sub_1B911BD58(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_Legacy_AppPunchOut.appDisplayName.setter();
}

void Apple_Parsec_Siri_Legacy_AppPunchOut.appDisplayName.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B912A8D4(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3();
  v11 = *(v7 + 80);
  *(v7 + 72) = v2;
  *(v7 + 80) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.appDisplayName.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 80);
  *(v1 + 48) = *(v0 + 72);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B911BE74(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_Legacy_AppPunchOut.appDisplayName.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_18_9();
      v11 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut._StorageClass(v10);
      OUTLINED_FUNCTION_57_0(v11);
      swift_allocObject();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B912A8D4(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 80);
    *(v9 + 72) = v4;
    *(v9 + 80) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutName.getter()
{
  OUTLINED_FUNCTION_71_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 88);
  v4 = *(v2 + 96);

  return OUTLINED_FUNCTION_432();
}

void sub_1B911BF50(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutName.setter();
}

void Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutName.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B912A8D4(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3();
  v11 = *(v7 + 96);
  *(v7 + 88) = v2;
  *(v7 + 96) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutName.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 96);
  *(v1 + 48) = *(v0 + 88);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B911C06C(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutName.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_18_9();
      v11 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut._StorageClass(v10);
      OUTLINED_FUNCTION_57_0(v11);
      swift_allocObject();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B912A8D4(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 96);
    *(v9 + 88) = v4;
    *(v9 + 96) = v3;
  }

  free(v1);
}

void sub_1B911C124()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  v11 = v2(0);
  OUTLINED_FUNCTION_77_0(v11);
  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_521();
  sub_1B8F1B8B8();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  OUTLINED_FUNCTION_57(v0);
  if (v12)
  {
    Apple_Parsec_Siri_Legacy_ImageResource.init()(v4);
    OUTLINED_FUNCTION_57(v0);
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9070, &qword_1B964D860);
    }
  }

  else
  {
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_242();
}

void Apple_Parsec_Siri_Legacy_AppPunchOut.appIcon.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_71_7();
  v14 = *(v0 + v13);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    OUTLINED_FUNCTION_83_4();
    OUTLINED_FUNCTION_118_4(v16, xmmword_1B966F890);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v1, &qword_1EBAB9070, &qword_1B964D860);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_34();
    OUTLINED_FUNCTION_246();
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.hasAppIcon.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v7);
  OUTLINED_FUNCTION_77_0(v8);
  OUTLINED_FUNCTION_521();
  sub_1B8F1B8B8();
  v9 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  OUTLINED_FUNCTION_11(v9);
  return v0;
}

Swift::Void __swiftcall Apple_Parsec_Siri_Legacy_AppPunchOut.clearAppIcon()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  v6 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    *(v1 + v6) = sub_1B912A8D4(v11);
  }

  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t sub_1B911C5C0(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_178_1();
  v6 = v5(v4);
  OUTLINED_FUNCTION_77_0(v6);
  v7 = *a2;
  OUTLINED_FUNCTION_10_4();
  v8 = *(v2 + v7);
}

void sub_1B911C60C(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_Siri_Legacy_AppPunchOut.appIconMap.setter();
}

void sub_1B911C680()
{
  OUTLINED_FUNCTION_184_0();
  v6 = v5;
  OUTLINED_FUNCTION_134_2();
  v7 = OUTLINED_FUNCTION_313();
  v9 = v8(v7);
  v10 = OUTLINED_FUNCTION_216_1(v9);
  v11 = *(v1 + v4);
  if ((v10 & 1) == 0)
  {
    v12 = v3(0);
    OUTLINED_FUNCTION_57_0(v12);
    swift_allocObject();
    v13 = OUTLINED_FUNCTION_40_0();
    v14 = v2(v13);
    OUTLINED_FUNCTION_192_2(v14);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3();
  v15 = *(v11 + v6);
  *(v11 + v6) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.appIconMap.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_71_7();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIconMap;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

void sub_1B911C7D0()
{
  OUTLINED_FUNCTION_243();
  v5 = *v2;
  v6 = *(*v2 + 48);
  if (v7)
  {
    v8 = v4;
    v9 = *(v5 + 56);
    v10 = *(*v2 + 48);

    v8(v11);
    v12 = *(v5 + 48);
  }

  else
  {
    v13 = v3;
    OUTLINED_FUNCTION_134_2();
    v14 = *(v5 + 64);
    v15 = *(v5 + 56);
    v16 = *(v15 + v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v15 + v14);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = *(v5 + 64);
      v20 = *(v5 + 56);
      v21 = v1(0);
      OUTLINED_FUNCTION_57_0(v21);
      swift_allocObject();
      v22 = OUTLINED_FUNCTION_40_0();
      v18 = v0(v22);
      *(v20 + v19) = v18;
    }

    v23 = *v13;
    OUTLINED_FUNCTION_59_3();
    v24 = *(v18 + v23);
    *(v18 + v23) = v6;
  }

  OUTLINED_FUNCTION_242();

  free(v25);
}

void sub_1B911C8C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_Legacy_AppPunchOut.providerID.setter();
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.providerID.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_10(v2);
  v4 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v3);
  OUTLINED_FUNCTION_134_4(v4);
  v6 = *(v0 + v5) + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__providerID;
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B911CA30(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_178_1();
  v6 = v5(v4);
  OUTLINED_FUNCTION_77_0(v6);
  v7 = *a2;
  OUTLINED_FUNCTION_10_4();
  return *(v2 + v7);
}

void sub_1B911CAC0()
{
  OUTLINED_FUNCTION_184_0();
  v5 = v4;
  OUTLINED_FUNCTION_134_2();
  v7 = v6;
  v9 = v8(0);
  v10 = OUTLINED_FUNCTION_216_1(v9);
  v11 = *(v0 + v3);
  if ((v10 & 1) == 0)
  {
    v12 = v2(0);
    OUTLINED_FUNCTION_57_0(v12);
    swift_allocObject();
    v13 = OUTLINED_FUNCTION_40_0();
    v14 = v1(v13);
    OUTLINED_FUNCTION_192_2(v14);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3();
  *(v11 + v5) = v7 & 1;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.appAvailableStorefront.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_71_7();
  OUTLINED_FUNCTION_102_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appAvailableStorefront;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B911CBEC()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  OUTLINED_FUNCTION_134_2();
  v5 = *v4;
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 72);
  v8 = *(*v4 + 84);
  v9 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v5 + 80);
    v13 = *(v5 + 72);
    v14 = v1(0);
    OUTLINED_FUNCTION_57_0(v14);
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v11 = v0(v15);
    *(v13 + v12) = v11;
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_18();
  *(v11 + v3) = v8;
  OUTLINED_FUNCTION_283();

  free(v16);
}

void sub_1B911CCC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_Legacy_AppPunchOut.subtitle.setter();
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.subtitle.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_10(v2);
  v4 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v3);
  OUTLINED_FUNCTION_134_4(v4);
  v6 = *(v0 + v5) + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__subtitle;
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B911CE10()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_58_0(v5);
  if (v7)
  {
    v8 = v6;
    OUTLINED_FUNCTION_191();
    v9 = OUTLINED_FUNCTION_461();
    v8(v9);
    v10 = *(v0 + 56);
  }

  else
  {
    OUTLINED_FUNCTION_236_2();
    v12 = v11;
    v13 = *(v0 + 72);
    v14 = *(v0 + 64);
    v15 = *(v14 + v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v14 + v13);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = *(v0 + 72);
      v19 = *(v0 + 64);
      v20 = v12(0);
      OUTLINED_FUNCTION_57_0(v20);
      swift_allocObject();
      v21 = OUTLINED_FUNCTION_40_0();
      v17 = v4(v21);
      *(v19 + v18) = v17;
    }

    v22 = (v17 + *v3);
    OUTLINED_FUNCTION_18();
    v23 = v22[1];
    *v22 = v2;
    v22[1] = v1;
  }

  OUTLINED_FUNCTION_283();

  free(v24);
}

uint64_t Apple_Parsec_Siri_Legacy_AppPunchOut.launchOverSiri.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_71_7();
  OUTLINED_FUNCTION_102_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__launchOverSiri;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerSnippet.appPunchOut.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(v7) + 24);
  OUTLINED_FUNCTION_100_3();
  v9 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v11 = *(v9 + 20);
    if (qword_1EBAB7448 != -1)
    {
      OUTLINED_FUNCTION_22_17();
    }

    *(a1 + v11) = qword_1EBAC5328;
    v12 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_234_3(v12, v13);
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC53B0, &qword_1B96923D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_182();
    return sub_1B9114610();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerSnippet.appPunchOut.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAC53B0, &qword_1B96923D0);
  OUTLINED_FUNCTION_1_51();
  OUTLINED_FUNCTION_122_0();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Legacy_AnswerSnippet.appPunchOut.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  v17 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(v16);
  OUTLINED_FUNCTION_256_1(*(v17 + 24));
  OUTLINED_FUNCTION_17_2();
  if (v18)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v19 = *(v10 + 20);
    if (qword_1EBAB7448 != -1)
    {
      OUTLINED_FUNCTION_22_17();
    }

    *(v12 + v19) = qword_1EBAC5328;
    v20 = OUTLINED_FUNCTION_50_1();

    if (v20 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAC53B0, &qword_1B96923D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_246();
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B911D2F8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B91148B0();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC53B0, &qword_1B96923D0);
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_255_2();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_5_27();
    sub_1B9114334();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC53B0, &qword_1B96923D0);
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_256_2();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerSnippet.hasAppPunchOut.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(v6) + 24);
  OUTLINED_FUNCTION_863();
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Siri_Legacy_AnswerSnippet.clearAppPunchOut()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBAC53B0, &qword_1B96923D0);
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerSnippet.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Legacy_SnippetObject.answer.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject.OneOf_Object(0);
  OUTLINED_FUNCTION_178(v1, 1, v8);
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9088, &unk_1B9692400);
    OUTLINED_FUNCTION_132_2();
    *(v0 + 16) = MEMORY[0x1E69E7CC0];
    v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_Answer(0);
    return OUTLINED_FUNCTION_279(v10);
  }

  else
  {
    OUTLINED_FUNCTION_13_20();
    OUTLINED_FUNCTION_288();
    return sub_1B9114610();
  }
}

uint64_t Apple_Parsec_Siri_Legacy_SnippetObject.answer.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9088, &unk_1B9692400);
  OUTLINED_FUNCTION_13_20();
  OUTLINED_FUNCTION_432();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject.OneOf_Object(0);
  v1 = OUTLINED_FUNCTION_231();

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
}

void Apple_Parsec_Siri_Legacy_SnippetObject.answer.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v0[1] = v7;
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_Answer(0);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_175_2(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v0[3] = v12;
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_179_1();
  v13 = type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject.OneOf_Object(0);
  v0[4] = v13;
  OUTLINED_FUNCTION_178(v7, 1, v13);
  if (v14)
  {
    sub_1B8D9207C(v7, &qword_1EBAB9088, &unk_1B9692400);
    OUTLINED_FUNCTION_247_1();
    v12[2] = MEMORY[0x1E69E7CC0];
    v15 = v12 + *(v8 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  else
  {
    OUTLINED_FUNCTION_13_20();
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B911D824(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B91148B0();
    sub_1B8D9207C(v5, &qword_1EBAB9088, &unk_1B9692400);
    OUTLINED_FUNCTION_13_20();
    OUTLINED_FUNCTION_211_1();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B9114334();
  }

  else
  {
    sub_1B8D9207C(v5, &qword_1EBAB9088, &unk_1B9692400);
    OUTLINED_FUNCTION_13_20();
    OUTLINED_FUNCTION_1_0();
    sub_1B9114610();
    OUTLINED_FUNCTION_255_1();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Siri_Legacy_SnippetObject.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

BOOL static Apple_Parsec_Siri_Legacy_SnippetObject.OneOf_Object.== infix(_:_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9080, &unk_1B964D870);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_139();
  v6 = (v0 + *(v5 + 56));
  sub_1B91148B0();
  OUTLINED_FUNCTION_543();
  sub_1B91148B0();
  v7 = *v0 == *v6 && v0[1] == v6[1];
  v14 = 0;
  if (v7 || (sub_1B964C9F0() & 1) != 0)
  {
    v8 = v0[2];
    v9 = v6[2];
    sub_1B8D7391C();
    if (v10)
    {
      v11 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_Answer(0) + 24);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_60();
      sub_1B8CD2888(v12, v13);
      if (sub_1B964C850())
      {
        v14 = 1;
      }
    }
  }

  sub_1B9114334();
  sub_1B9114334();
  return v14;
}

uint64_t Apple_Parsec_Siri_Legacy_Answer.lines.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_Answer.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_Answer(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Legacy_Answer.Line.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_Legacy_Answer.Line.text.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_Answer.Line.imageResource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line(v7) + 28);
  OUTLINED_FUNCTION_100_3();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    Apple_Parsec_Siri_Legacy_ImageResource.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9070, &qword_1B964D860);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_34();
    OUTLINED_FUNCTION_182();
    return sub_1B9114610();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_Answer.Line.imageResource.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB9070, &qword_1B964D860);
  OUTLINED_FUNCTION_2_34();
  OUTLINED_FUNCTION_122_0();
  sub_1B9114610();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Legacy_Answer.Line.imageResource.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line(v15);
  OUTLINED_FUNCTION_256_1(*(v16 + 28));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    OUTLINED_FUNCTION_83_4();
    OUTLINED_FUNCTION_118_4(v18, xmmword_1B966F890);
    OUTLINED_FUNCTION_17_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9070, &qword_1B964D860);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_34();
    OUTLINED_FUNCTION_246();
    sub_1B9114610();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B911DEE8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B91148B0();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9070, &qword_1B964D860);
    OUTLINED_FUNCTION_2_34();
    OUTLINED_FUNCTION_255_2();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_6_21();
    sub_1B9114334();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9070, &qword_1B964D860);
    OUTLINED_FUNCTION_2_34();
    OUTLINED_FUNCTION_256_2();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Apple_Parsec_Siri_Legacy_Answer.Line.hasImageResource.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line(v6) + 28);
  OUTLINED_FUNCTION_863();
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Siri_Legacy_Answer.Line.clearImageResource()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line(0);
  sub_1B8D9207C(v0 + *(v1 + 28), &qword_1EBAB9070, &qword_1B964D860);
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_Legacy_Answer.Line.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Legacy_Answer.Line.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line(0);
  OUTLINED_FUNCTION_279(v2);
  v3 = *(v2 + 28);
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  v4 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1B911E184()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC51A0);
  __swift_project_value_buffer(v0, qword_1EBAC51A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "REGION_PROPERTY_UNKNOWN";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "REGION_PROPERTY_HIGHLIGHTED_QUERY_PARAM";
  *(v10 + 8) = 39;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "REGION_PROPERTY_SUGGESTED_UTTERANCE";
  *(v12 + 1) = 35;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "REGION_PROPERTY_SUPERSCRIPT";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "REGION_PROPERTY_SUBSCRIPT";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "REGION_PROPERTY_DE_EMPHASIZE_RESULT";
  *(v18 + 1) = 35;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "REGION_PROPERTY_SMALL_CAPS";
  *(v20 + 1) = 26;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "REGION_PROPERTY_TIME_COLON_VERTICAL_CENTERING";
  *(v22 + 1) = 45;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "REGION_PROPERTY_TINTED";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B911E530()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC51B8);
  __swift_project_value_buffer(v0, qword_1EBAC51B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "general_knowledge_snippet";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "answer_snippet";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Legacy_LegacySnippet.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_17_3();
      sub_1B911EC78(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_17_3();
      sub_1B911E780(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B911E780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53A0, &qword_1B96923C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5740, &qword_1B96946E8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAC53A0, &qword_1B96923C0);
  }

  else
  {
    sub_1B9114610();
    sub_1B9114610();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9114334();
    }

    else
    {
      sub_1B8D9207C(v22, &qword_1EBAC5740, &qword_1B96946E8);
      sub_1B9114610();
      sub_1B9114610();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B8CD2888(&qword_1EBAC5538, type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC5740, &qword_1B96946E8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC5740, &qword_1B96946E8);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC5740, &qword_1B96946E8);
  }

  sub_1B9114610();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC5740, &qword_1B96946E8);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAC53A0, &qword_1B96923C0);
  sub_1B9114610();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B911EC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53A0, &qword_1B96923C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5748, &qword_1B96946F0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAC53A0, &qword_1B96923C0);
  }

  else
  {
    sub_1B9114610();
    sub_1B9114610();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBAC5748, &qword_1B96946F0);
      sub_1B9114610();
      sub_1B9114610();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9114334();
    }
  }

  sub_1B8CD2888(&qword_1EBAC5640, type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC5748, &qword_1B96946F0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC5748, &qword_1B96946F0);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC5748, &qword_1B96946F0);
  }

  sub_1B9114610();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC5748, &qword_1B96946F0);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAC53A0, &qword_1B96923C0);
  sub_1B9114610();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t Apple_Parsec_Siri_Legacy_LegacySnippet.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_243_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53A0, &qword_1B96923C0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  OUTLINED_FUNCTION_176_1();
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(0);
  OUTLINED_FUNCTION_178(v7, 1, v8);
  if (v9)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_686();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = OUTLINED_FUNCTION_7_6();
    sub_1B911F498(v10, v11, v12, v13);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_7_6();
    sub_1B911F284(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_63_6();
  result = sub_1B9114334();
  if (!v1)
  {
LABEL_6:
    v19 = v0 + *(type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet(0) + 20);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B911F284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53A0, &qword_1B96923C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAC53A0, &qword_1B96923C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B9114610();
      sub_1B8CD2888(&qword_1EBAC5538, type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet);
      sub_1B964C740();
      return sub_1B9114334();
    }

    result = sub_1B9114334();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B911F498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53A0, &qword_1B96923C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAC53A0, &qword_1B96923C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9114610();
      sub_1B8CD2888(&qword_1EBAC5640, type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet);
      sub_1B964C740();
      return sub_1B9114334();
    }

    result = sub_1B9114334();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Siri_Legacy_LegacySnippet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet(v1);
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_8();
  v6 = OUTLINED_FUNCTION_686();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53D8, &unk_1B9692410);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  v17 = *(v16 + 56);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_179_1();
  OUTLINED_FUNCTION_50(v0);
  if (v18)
  {
    OUTLINED_FUNCTION_50(v0 + v17);
    if (v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAC53A0, &qword_1B96923C0);
LABEL_12:
      v22 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet(0);
      OUTLINED_FUNCTION_871(v22);
      OUTLINED_FUNCTION_0_60();
      sub_1B8CD2888(v23, v24);
      v19 = OUTLINED_FUNCTION_634();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_50(v0 + v17);
  if (v18)
  {
    OUTLINED_FUNCTION_63_6();
    sub_1B9114334();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAC53D8, &unk_1B9692410);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_225_3();
  OUTLINED_FUNCTION_246();
  static Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet.== infix(_:_:)();
  v21 = v20;
  sub_1B9114334();
  OUTLINED_FUNCTION_254_2();
  sub_1B8D9207C(v0, &qword_1EBAC53A0, &qword_1B96923C0);
  if (v21)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v19);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B911F964(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC5710, type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B911F9E4(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5520, type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B911FA54()
{
  sub_1B8CD2888(&qword_1EBAC5520, type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B911FAEC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC51D0);
  __swift_project_value_buffer(v0, qword_1EBAC51D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B964E4A0;
  v4 = v20 + v3;
  v5 = v20 + v3 + v1[14];
  *(v20 + v3) = 2;
  *v5 = "title";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "subtitle";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "category";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "pods";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "app_punch_out";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v16 = *MEMORY[0x1E69AADE8];
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "summary_title";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 2:
      case 3:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B911FE88();
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B911FF28();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B911FE88()
{
  type metadata accessor for Apple_Parsec_Siri_Legacy_PodView(0);
  sub_1B8CD2888(&qword_1EBAC53E8, type metadata accessor for Apple_Parsec_Siri_Legacy_PodView);
  return sub_1B964C570();
}

uint64_t sub_1B911FF28()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(0) + 40);
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  sub_1B8CD2888(&qword_1EBAC53F0, type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53B0, &qword_1B96923D0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_186_1();
  v9 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v8);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_192_4();
  v13 = *v0;
  v14 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v15 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
  {
    v16 = *(v2 + 16);
    v17 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v18 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
    {
      if (!*(v2 + 32) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), sub_1B964C6C0(), !v1))
      {
        if (!*(*(v2 + 40) + 16) || (type metadata accessor for Apple_Parsec_Siri_Legacy_PodView(0), sub_1B8CD2888(&qword_1EBAC53E8, type metadata accessor for Apple_Parsec_Siri_Legacy_PodView), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v1))
        {
          v19 = type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(0);
          v20 = *(v19 + 40);
          sub_1B8F1B8B8();
          OUTLINED_FUNCTION_32(v3);
          if (v21)
          {
            sub_1B8D9207C(v3, &qword_1EBAC53B0, &qword_1B96923D0);
          }

          else
          {
            OUTLINED_FUNCTION_1_51();
            OUTLINED_FUNCTION_424();
            sub_1B9114610();
            OUTLINED_FUNCTION_64_4();
            sub_1B8CD2888(v22, v23);
            OUTLINED_FUNCTION_597_0();
            OUTLINED_FUNCTION_687();
            sub_1B964C740();
            OUTLINED_FUNCTION_5_27();
            sub_1B9114334();
            if (v1)
            {
              goto LABEL_16;
            }
          }

          v24 = *(v2 + 48);
          v25 = *(v2 + 56);
          OUTLINED_FUNCTION_1();
          if (!v26 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
          {
            v27 = *(v19 + 36);
            OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B91202D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC5708, type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9120358(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5538, type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91203C8()
{
  sub_1B8CD2888(&qword_1EBAC5538, type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B9120460()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC51E8);
  __swift_project_value_buffer(v0, qword_1EBAC51E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "image_pod";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "summary_pod";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "property_pod";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "web_link_pod";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Legacy_PodView.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_17_3();
        sub_1B9120764(v3, v4, v5, v6);
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_17_3();
        sub_1B9120C5C(v15, v16, v17, v18);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_17_3();
        sub_1B9121154(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_17_3();
        sub_1B912164C(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9120764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9098, &qword_1B96923E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5720, &qword_1B96946C8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9098, &qword_1B96923E0);
  }

  else
  {
    sub_1B9114610();
    sub_1B9114610();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B9114334();
    }

    else
    {
      sub_1B8D9207C(v22, &qword_1EBAC5720, &qword_1B96946C8);
      sub_1B9114610();
      sub_1B9114610();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B8CD2888(&qword_1EBAC5560, type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC5720, &qword_1B96946C8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC5720, &qword_1B96946C8);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC5720, &qword_1B96946C8);
  }

  sub_1B9114610();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC5720, &qword_1B96946C8);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9098, &qword_1B96923E0);
  sub_1B9114610();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B9120C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9098, &qword_1B96923E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5728, &qword_1B96946D0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9098, &qword_1B96923E0);
  }

  else
  {
    sub_1B9114610();
    sub_1B9114610();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBAC5728, &qword_1B96946D0);
      sub_1B9114610();
      sub_1B9114610();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9114334();
    }
  }

  sub_1B8CD2888(&qword_1EBAC5578, type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC5728, &qword_1B96946D0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC5728, &qword_1B96946D0);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC5728, &qword_1B96946D0);
  }

  sub_1B9114610();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC5728, &qword_1B96946D0);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9098, &qword_1B96923E0);
  sub_1B9114610();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B9121154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9098, &qword_1B96923E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5730, &qword_1B96946D8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9098, &qword_1B96923E0);
  }

  else
  {
    sub_1B9114610();
    sub_1B9114610();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v22, &qword_1EBAC5730, &qword_1B96946D8);
      sub_1B9114610();
      sub_1B9114610();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9114334();
    }
  }

  sub_1B8CD2888(&qword_1EBAC5590, type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC5730, &qword_1B96946D8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC5730, &qword_1B96946D8);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC5730, &qword_1B96946D8);
  }

  sub_1B9114610();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC5730, &qword_1B96946D8);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9098, &qword_1B96923E0);
  sub_1B9114610();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B912164C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9098, &qword_1B96923E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5738, &qword_1B96946E0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9098, &qword_1B96923E0);
  }

  else
  {
    sub_1B9114610();
    sub_1B9114610();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8D9207C(v22, &qword_1EBAC5738, &qword_1B96946E0);
      sub_1B9114610();
      sub_1B9114610();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9114334();
    }
  }

  sub_1B8CD2888(&qword_1EBAC55A8, type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC5738, &qword_1B96946E0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC5738, &qword_1B96946E0);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC5738, &qword_1B96946E0);
  }

  sub_1B9114610();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC5738, &qword_1B96946E0);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9098, &qword_1B96923E0);
  sub_1B9114610();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t Apple_Parsec_Siri_Legacy_PodView.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_243_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9098, &qword_1B96923E0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  OUTLINED_FUNCTION_176_1();
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  OUTLINED_FUNCTION_178(v7, 1, v8);
  if (v9)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_686();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v22 = OUTLINED_FUNCTION_7_6();
      sub_1B9121E9C(v22, v23, v24, v25);
      break;
    case 2u:
      v14 = OUTLINED_FUNCTION_7_6();
      sub_1B91220B0(v14, v15, v16, v17);
      break;
    case 3u:
      v18 = OUTLINED_FUNCTION_7_6();
      sub_1B91222C4(v18, v19, v20, v21);
      break;
    default:
      v10 = OUTLINED_FUNCTION_7_6();
      sub_1B9121C8C(v10, v11, v12, v13);
      break;
  }

  OUTLINED_FUNCTION_16_21();
  result = sub_1B9114334();
  if (!v1)
  {
LABEL_8:
    v27 = v0 + *(type metadata accessor for Apple_Parsec_Siri_Legacy_PodView(0) + 20);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B9121C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9098, &qword_1B96923E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9098, &qword_1B96923E0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B9114610();
      sub_1B8CD2888(&qword_1EBAC5560, type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod);
      sub_1B964C740();
      return sub_1B9114334();
    }

    result = sub_1B9114334();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9121E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9098, &qword_1B96923E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9098, &qword_1B96923E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9114610();
      sub_1B8CD2888(&qword_1EBAC5578, type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod);
      sub_1B964C740();
      return sub_1B9114334();
    }

    result = sub_1B9114334();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B91220B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9098, &qword_1B96923E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9098, &qword_1B96923E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B9114610();
      sub_1B8CD2888(&qword_1EBAC5590, type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod);
      sub_1B964C740();
      return sub_1B9114334();
    }

    result = sub_1B9114334();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B91222C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9098, &qword_1B96923E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9098, &qword_1B96923E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B9114610();
      sub_1B8CD2888(&qword_1EBAC55A8, type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod);
      sub_1B964C740();
      return sub_1B9114334();
    }

    result = sub_1B9114334();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Siri_Legacy_PodView.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod(v1);
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_8();
  v6 = OUTLINED_FUNCTION_686();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90A0, &qword_1B964D890);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  v17 = *(v16 + 56);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_179_1();
  OUTLINED_FUNCTION_50(v0);
  if (v18)
  {
    OUTLINED_FUNCTION_50(v0 + v17);
    if (v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9098, &qword_1B96923E0);
LABEL_12:
      v22 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView(0);
      OUTLINED_FUNCTION_871(v22);
      OUTLINED_FUNCTION_0_60();
      sub_1B8CD2888(v23, v24);
      v19 = OUTLINED_FUNCTION_634();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_50(v0 + v17);
  if (v18)
  {
    OUTLINED_FUNCTION_16_21();
    sub_1B9114334();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAB90A0, &qword_1B964D890);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_225_3();
  OUTLINED_FUNCTION_246();
  static Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod.== infix(_:_:)();
  v21 = v20;
  sub_1B9114334();
  OUTLINED_FUNCTION_254_2();
  sub_1B8D9207C(v0, &qword_1EBAB9098, &qword_1B96923E0);
  if (v21)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v19);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9122790(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC5700, type metadata accessor for Apple_Parsec_Siri_Legacy_PodView);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9122810(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC53E8, type metadata accessor for Apple_Parsec_Siri_Legacy_PodView);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9122880()
{
  sub_1B8CD2888(&qword_1EBAC53E8, type metadata accessor for Apple_Parsec_Siri_Legacy_PodView);

  return sub_1B964C5D0();
}

void Apple_Parsec_Siri_Legacy_ImagePod.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 12)
    {
      OUTLINED_FUNCTION_9();
      sub_1B912C75C();
    }
  }
}

void Apple_Parsec_Siri_Legacy_ImagePod.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(0), sub_1B8CD2888(&qword_1EBAC5408, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v1))
  {
    v2 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod(0) + 20);
    OUTLINED_FUNCTION_8_1();
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B9122B44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC56F8, type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9122BC4(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5560, type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9122C34()
{
  sub_1B8CD2888(&qword_1EBAC5560, type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod);

  return sub_1B964C5D0();
}

uint64_t sub_1B9122CCC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5218);
  __swift_project_value_buffer(v0, qword_1EBAC5218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "image_resource";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "caption";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Legacy_SummaryPod.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9122FCC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9122FCC()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(0) + 32);
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  sub_1B8CD2888(&qword_1EBAC5418, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Legacy_SummaryPod.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_186_1();
  v9 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(v8);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_192_4();
  v13 = *v0;
  v14 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v15 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
  {
    v16 = v2[2];
    v17 = v2[3];
    OUTLINED_FUNCTION_1();
    if (!v18 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
    {
      v19 = type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(0);
      v20 = *(v19 + 32);
      sub_1B8F1B8B8();
      OUTLINED_FUNCTION_32(v3);
      if (v21)
      {
        sub_1B8D9207C(v3, &qword_1EBAB9070, &qword_1B964D860);
      }

      else
      {
        OUTLINED_FUNCTION_2_34();
        OUTLINED_FUNCTION_424();
        sub_1B9114610();
        OUTLINED_FUNCTION_33_11();
        sub_1B8CD2888(v22, v23);
        OUTLINED_FUNCTION_597_0();
        OUTLINED_FUNCTION_687();
        sub_1B964C740();
        OUTLINED_FUNCTION_6_21();
        sub_1B9114334();
        if (v1)
        {
          goto LABEL_12;
        }
      }

      v24 = v2[4];
      v25 = v2[5];
      OUTLINED_FUNCTION_1();
      if (!v26 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
      {
        v27 = *(v19 + 28);
        OUTLINED_FUNCTION_8_1();
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B91232F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC56F0, type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9123374(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5578, type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91233E4()
{
  sub_1B8CD2888(&qword_1EBAC5578, type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod);

  return sub_1B964C5D0();
}

uint64_t sub_1B912347C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5230);
  __swift_project_value_buffer(v0, qword_1EBAC5230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "answer_properties";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

void Apple_Parsec_Siri_Legacy_PropertyPod.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B912C75C();
    }
  }
}

void Apple_Parsec_Siri_Legacy_PropertyPod.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(0), sub_1B8CD2888(&qword_1EBAC5428, type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v1))
  {
    v2 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod(0) + 20);
    OUTLINED_FUNCTION_8_1();
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B91237FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC56E8, type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B912387C(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5590, type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91238EC()
{
  sub_1B8CD2888(&qword_1EBAC5590, type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod);

  return sub_1B964C5D0();
}

uint64_t sub_1B9123984()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5248);
  __swift_project_value_buffer(v0, qword_1EBAC5248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "linked_answers";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_Legacy_WebLinkPod.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
  {
    if (!*(*(v2 + 16) + 16) || (type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(0), sub_1B8CD2888(&qword_1EBAC5438, type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v1))
    {
      v6 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod(0) + 24);
      OUTLINED_FUNCTION_8_1();
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B9123D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC56E0, type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9123DC8(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC55A8, type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9123E38()
{
  sub_1B8CD2888(&qword_1EBAC55A8, type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod);

  return sub_1B964C5D0();
}

uint64_t sub_1B9123ED0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5260);
  __swift_project_value_buffer(v0, qword_1EBAC5260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1B964EE80;
  v4 = v25 + v3 + v1[14];
  *(v25 + v3) = 1;
  *v4 = "name";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v25 + v3 + v2 + v1[14];
  *(v25 + v3 + v2) = 2;
  *v8 = "description_text";
  *(v8 + 8) = 16;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADE8];
  v7();
  v10 = (v25 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "link";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v7();
  v12 = (v25 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "display_link";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v7();
  v14 = (v25 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "punch_out";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v7();
  v16 = (v25 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "query";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v7();
  v18 = (v25 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "search_uri";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v7();
  v20 = (v25 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "thumbnails";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v7();
  v22 = (v25 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "is_image_invertable";
  *(v23 + 1) = 19;
  v23[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Legacy_LinkedAnswer.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 6:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B9124340();
        break;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B91243F4();
        break;
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9124340()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(0) + 52);
  type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  sub_1B8CD2888(&qword_1EBAC5448, type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut);
  return sub_1B964C580();
}

uint64_t sub_1B91243F4()
{
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  sub_1B8CD2888(&qword_1EBAC5418, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource);
  return sub_1B964C570();
}

void Apple_Parsec_Siri_Legacy_LinkedAnswer.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53C8, &qword_1B96923F0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_192_4();
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v12 = *v0;
  v13 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v14 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
  {
    v15 = *(v2 + 16);
    v16 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v17 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
    {
      v18 = *(v2 + 32);
      v19 = *(v2 + 40);
      OUTLINED_FUNCTION_1();
      if (!v20 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
      {
        v21 = *(v2 + 48);
        v22 = *(v2 + 56);
        OUTLINED_FUNCTION_1();
        if (!v23 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
        {
          v35 = type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(0);
          v24 = *(v35 + 52);
          sub_1B8F1B8B8();
          OUTLINED_FUNCTION_178(v3, 1, v8);
          if (v25)
          {
            sub_1B8D9207C(v3, &qword_1EBAC53C8, &qword_1B96923F0);
          }

          else
          {
            OUTLINED_FUNCTION_4_31();
            sub_1B9114610();
            sub_1B8CD2888(&qword_1EBAC5448, type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut);
            OUTLINED_FUNCTION_687();
            sub_1B964C740();
            OUTLINED_FUNCTION_35_11();
            sub_1B9114334();
            if (v1)
            {
              goto LABEL_22;
            }
          }

          v26 = *(v2 + 64);
          v27 = *(v2 + 72);
          OUTLINED_FUNCTION_1();
          if (!v28 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
          {
            v29 = *(v2 + 80);
            v30 = *(v2 + 88);
            OUTLINED_FUNCTION_1();
            if (!v31 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
            {
              if (!*(*(v2 + 96) + 16) || (type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0), OUTLINED_FUNCTION_33_11(), sub_1B8CD2888(v32, v33), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v1))
              {
                if (*(v2 + 104) != 1 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), sub_1B964C670(), !v1))
                {
                  v34 = *(v35 + 48);
                  OUTLINED_FUNCTION_8_1();
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Legacy_LinkedAnswer.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_280();
  v4 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(v3);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31_8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53C8, &qword_1B96923F0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5450, &qword_1B9692420);
  OUTLINED_FUNCTION_59_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  v16 = *v1;
  v17 = v1[1];
  OUTLINED_FUNCTION_428();
  v20 = v20 && v18 == v19;
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_84_1();
  v23 = v20 && v21 == v22;
  if (!v23 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_40_5();
  v26 = v20 && v24 == v25;
  if (!v26 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v27 = v1[6] == *(v0 + 48) && v1[7] == *(v0 + 56);
  if (!v27 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v41 = type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer(0);
  v28 = *(v41 + 52);
  v29 = *(v12 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_461_0();
  OUTLINED_FUNCTION_50(v2);
  if (!v20)
  {
    OUTLINED_FUNCTION_177_1();
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_50(v2 + v29);
    if (!v30)
    {
      OUTLINED_FUNCTION_4_31();
      sub_1B9114610();
      OUTLINED_FUNCTION_246();
      v32 = static Apple_Parsec_Siri_Legacy_PunchOut.== infix(_:_:)();
      sub_1B9114334();
      sub_1B9114334();
      sub_1B8D9207C(v2, &qword_1EBAC53C8, &qword_1B96923F0);
      if ((v32 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_33;
    }

    OUTLINED_FUNCTION_35_11();
    sub_1B9114334();
LABEL_29:
    sub_1B8D9207C(v2, &qword_1EBAC5450, &qword_1B9692420);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_50(v2 + v29);
  if (!v20)
  {
    goto LABEL_29;
  }

  sub_1B8D9207C(v2, &qword_1EBAC53C8, &qword_1B96923F0);
LABEL_33:
  v33 = v1[8] == *(v0 + 64) && v1[9] == *(v0 + 72);
  if (v33 || (sub_1B964C9F0() & 1) != 0)
  {
    v34 = v1[10] == *(v0 + 80) && v1[11] == *(v0 + 88);
    if (v34 || (sub_1B964C9F0() & 1) != 0)
    {
      v35 = v1[12];
      v36 = *(v0 + 96);
      sub_1B8D748F8();
      if ((v37 & 1) != 0 && *(v1 + 104) == *(v0 + 104))
      {
        v38 = *(v41 + 48);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_60();
        sub_1B8CD2888(v39, v40);
        v31 = OUTLINED_FUNCTION_634();
        goto LABEL_31;
      }
    }
  }

LABEL_30:
  v31 = 0;
LABEL_31:
  OUTLINED_FUNCTION_264(v31);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9124B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC56D8, type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9124B90(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5438, type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9124C00()
{
  sub_1B8CD2888(&qword_1EBAC5438, type metadata accessor for Apple_Parsec_Siri_Legacy_LinkedAnswer);

  return sub_1B964C5D0();
}

uint64_t sub_1B9124C98()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5278);
  __swift_project_value_buffer(v0, qword_1EBAC5278);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B96511C0;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "name";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "description";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "description_text";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "link";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "display_link";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "punch_out";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "query";
  *(v20 + 1) = 5;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "search_uri";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v8();
  v23 = (v4 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "image_resource";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v4 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "thumbnails";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  v27 = (v4 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "is_image_invertable";
  *(v28 + 1) = 19;
  v28[16] = 2;
  v8();
  return sub_1B964C760();
}

void *sub_1B91250E4()
{
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__punchOut;
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__query);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__searchUri);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__imageResource;
  v6 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__thumbnails) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__isImageInvertable) = 0;
  return v0;
}

void *sub_1B91251AC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v53 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53C8, &qword_1B96923F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v45 - v8;
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  v1[4] = 0;
  v1[6] = 0;
  v1[5] = 0xE000000000000000;
  v1[7] = 0xE000000000000000;
  v1[8] = 0;
  v1[9] = 0xE000000000000000;
  v1[10] = 0;
  v46 = v1 + 10;
  v1[11] = 0xE000000000000000;
  v9 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__punchOut;
  v47 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__punchOut;
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__query);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__searchUri);
  v49 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__searchUri);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__imageResource;
  v50 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__imageResource;
  v14 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  v51 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__thumbnails;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__thumbnails) = MEMORY[0x1E69E7CC0];
  v52 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__isImageInvertable;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__isImageInvertable) = 0;
  swift_beginAccess();
  v16 = a1[2];
  v15 = a1[3];
  swift_beginAccess();
  v1[2] = v16;
  v1[3] = v15;
  swift_beginAccess();
  v17 = a1[4];
  v18 = a1[5];
  swift_beginAccess();
  v1[4] = v17;
  v1[5] = v18;

  swift_beginAccess();
  v20 = a1[6];
  v19 = a1[7];
  swift_beginAccess();
  v21 = v1[7];
  v1[6] = v20;
  v1[7] = v19;

  swift_beginAccess();
  v23 = a1[8];
  v22 = a1[9];
  swift_beginAccess();
  v24 = v1[9];
  v1[8] = v23;
  v1[9] = v22;

  swift_beginAccess();
  v26 = a1[10];
  v25 = a1[11];
  v27 = v46;
  swift_beginAccess();
  v28 = v1[11];
  *v27 = v26;
  v1[11] = v25;

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v29 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__query);
  swift_beginAccess();
  v31 = *v29;
  v30 = v29[1];
  swift_beginAccess();
  v32 = v11[1];
  *v11 = v31;
  v11[1] = v30;

  v33 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__searchUri);
  swift_beginAccess();
  v35 = *v33;
  v34 = v33[1];
  v36 = v49;
  swift_beginAccess();
  v37 = v36[1];
  *v36 = v35;
  v36[1] = v34;

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v38 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__thumbnails;
  swift_beginAccess();
  v39 = *(a1 + v38);
  v40 = v51;
  swift_beginAccess();
  v41 = *(v1 + v40);
  *(v1 + v40) = v39;

  v42 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__isImageInvertable;
  swift_beginAccess();
  LOBYTE(v42) = *(a1 + v42);

  v43 = v52;
  swift_beginAccess();
  *(v1 + v43) = v42;
  return v1;
}

void *sub_1B91256F8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__punchOut, &qword_1EBAC53C8, &qword_1B96923F0);
  v6 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__query + 8);

  v7 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__searchUri + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__imageResource, &qword_1EBAB9070, &qword_1B964D860);
  v8 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__thumbnails);

  return v0;
}

uint64_t sub_1B9125820()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8E4C21C();
        break;
      case 2:
        sub_1B90E3DFC();
        break;
      case 3:
        sub_1B8DC4778();
        break;
      case 4:
        sub_1B8E16ACC();
        break;
      case 5:
        sub_1B8E16B50();
        break;
      case 6:
        sub_1B91259FC();
        break;
      case 7:
      case 8:
        sub_1B8E4C770();
        break;
      case 9:
        sub_1B9125AD8();
        break;
      case 10:
        sub_1B9125B80();
        break;
      case 11:
        sub_1B90AB150();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91259FC()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  sub_1B8CD2888(&qword_1EBAC5448, type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9125AD8()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *v0;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  OUTLINED_FUNCTION_33_11();
  sub_1B8CD2888(v2, v3);
  OUTLINED_FUNCTION_153_1();
  sub_1B964C580();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B9125B80()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  sub_1B8CD2888(&qword_1EBAC5418, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B9125C8C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v46 = v43 - v6;
  v44 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  v7 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43[1] = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53C8, &qword_1B96923F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v43 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v45 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = a1[3];
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = a1[3];

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v19 = a1[5];
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = a1[4] & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    goto LABEL_11;
  }

  v21 = a1[5];

  sub_1B964C700();
  if (v1)
  {
  }

LABEL_11:
  swift_beginAccess();
  v22 = a1[7];
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = a1[6] & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v24 = a1[7];

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v26 = a1[9];
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = a1[8] & 0xFFFFFFFFFFFFLL;
  }

  if (!v27 || (v28 = a1[9], , sub_1B964C700(), result = , !v1))
  {
    swift_beginAccess();
    v29 = a1[11];
    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = a1[10] & 0xFFFFFFFFFFFFLL;
    }

    if (!v30 || (v31 = a1[11], , sub_1B964C700(), result = , !v1))
    {
      swift_beginAccess();
      sub_1B8F1B8B8();
      if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
      {
        sub_1B8D9207C(v12, &qword_1EBAC53C8, &qword_1B96923F0);
      }

      else
      {
        sub_1B9114610();
        sub_1B8CD2888(&qword_1EBAC5448, type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut);
        sub_1B964C740();
        result = sub_1B9114334();
        if (v1)
        {
          return result;
        }
      }

      v32 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__query);
      swift_beginAccess();
      v33 = *v32;
      v34 = v32[1];
      v35 = HIBYTE(v34) & 0xF;
      if ((v34 & 0x2000000000000000) == 0)
      {
        v35 = v33 & 0xFFFFFFFFFFFFLL;
      }

      v36 = v46;
      if (!v35 || (, sub_1B964C700(), result = , !v2))
      {
        v37 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__searchUri);
        swift_beginAccess();
        v38 = *v37;
        v39 = v37[1];
        v40 = HIBYTE(v39) & 0xF;
        if ((v39 & 0x2000000000000000) == 0)
        {
          v40 = v38 & 0xFFFFFFFFFFFFLL;
        }

        if (!v40 || (, sub_1B964C700(), result = , !v2))
        {
          swift_beginAccess();
          sub_1B8F1B8B8();
          if (__swift_getEnumTagSinglePayload(v36, 1, v44) == 1)
          {
            sub_1B8D9207C(v36, &qword_1EBAB9070, &qword_1B964D860);
          }

          else
          {
            sub_1B9114610();
            sub_1B8CD2888(&qword_1EBAC5418, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource);
            sub_1B964C740();
            result = sub_1B9114334();
            if (v2)
            {
              return result;
            }
          }

          v41 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__thumbnails;
          swift_beginAccess();
          if (!*(*(a1 + v41) + 16) || (sub_1B8CD2888(&qword_1EBAC5418, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource), , sub_1B964C730(), result = , !v2))
          {
            v42 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__isImageInvertable;
            result = swift_beginAccess();
            if (*(a1 + v42) == 1)
            {
              return sub_1B964C670();
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B9126410()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v4 = v3;
  v97 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  v5 = OUTLINED_FUNCTION_59_1(v97);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v10 = (v9 - v8);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9078, &qword_1B964D868);
  OUTLINED_FUNCTION_59_1(v95);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_137();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  v15 = OUTLINED_FUNCTION_183(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44_0();
  v94 = v18;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v19);
  v96 = &v92 - v20;
  v21 = OUTLINED_FUNCTION_201();
  v100 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(v21);
  v22 = OUTLINED_FUNCTION_59_1(v100);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  v98 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5450, &qword_1B9692420);
  OUTLINED_FUNCTION_59_1(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v92 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53C8, &qword_1B96923F0);
  v34 = OUTLINED_FUNCTION_183(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_44_0();
  v99 = v37;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v92 - v39;
  OUTLINED_FUNCTION_521();
  v42 = v4[2];
  v41 = v4[3];
  OUTLINED_FUNCTION_521();
  v43 = v42 == v2[2] && v41 == v2[3];
  if (v43 || (sub_1B964C9F0() & 1) != 0)
  {
    OUTLINED_FUNCTION_521();
    v44 = v4[4];
    v45 = v4[5];
    OUTLINED_FUNCTION_521();
    v46 = v44 == v2[4] && v45 == v2[5];
    if (v46 || (OUTLINED_FUNCTION_193_3() & 1) != 0)
    {
      OUTLINED_FUNCTION_521();
      v47 = v4[6];
      v48 = v4[7];
      OUTLINED_FUNCTION_521();
      v49 = v47 == v2[6] && v48 == v2[7];
      if (v49 || (OUTLINED_FUNCTION_193_3() & 1) != 0)
      {
        OUTLINED_FUNCTION_521();
        v50 = v4[8];
        v51 = v4[9];
        OUTLINED_FUNCTION_521();
        v52 = v50 == v2[8] && v51 == v2[9];
        if (v52 || (OUTLINED_FUNCTION_193_3() & 1) != 0)
        {
          OUTLINED_FUNCTION_521();
          v53 = v4[10];
          v54 = v4[11];
          OUTLINED_FUNCTION_521();
          v55 = v53 == v2[10] && v54 == v2[11];
          if (v55 || (OUTLINED_FUNCTION_193_3() & 1) != 0)
          {
            v92 = v10;
            v93 = v0;
            OUTLINED_FUNCTION_521();
            sub_1B8F1B8B8();
            OUTLINED_FUNCTION_521();
            v56 = *(v27 + 48);
            sub_1B8F1B8B8();
            sub_1B8F1B8B8();
            v57 = v100;
            OUTLINED_FUNCTION_178(v32, 1, v100);
            if (v43)
            {

              sub_1B8D9207C(v40, &qword_1EBAC53C8, &qword_1B96923F0);
              OUTLINED_FUNCTION_178(&v32[v56], 1, v57);
              if (v43)
              {
                sub_1B8D9207C(v32, &qword_1EBAC53C8, &qword_1B96923F0);
LABEL_39:
                v64 = (v4 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__query);
                OUTLINED_FUNCTION_521();
                v65 = *v64;
                v66 = v64[1];
                v67 = (v2 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__query);
                OUTLINED_FUNCTION_521();
                if (v65 != *v67 || v66 != v67[1])
                {
                  OUTLINED_FUNCTION_177_1();
                  if ((sub_1B964C9F0() & 1) == 0)
                  {
                    goto LABEL_36;
                  }
                }

                v69 = (v4 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__searchUri);
                OUTLINED_FUNCTION_521();
                v70 = *v69;
                v71 = v69[1];
                v72 = (v2 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__searchUri);
                OUTLINED_FUNCTION_521();
                if (v70 != *v72 || v71 != v72[1])
                {
                  OUTLINED_FUNCTION_177_1();
                  if ((sub_1B964C9F0() & 1) == 0)
                  {
                    goto LABEL_36;
                  }
                }

                OUTLINED_FUNCTION_521();
                v74 = v96;
                sub_1B8F1B8B8();
                OUTLINED_FUNCTION_521();
                v75 = *(v95 + 48);
                v76 = v93;
                sub_1B8F1B8B8();
                sub_1B8F1B8B8();
                v77 = v97;
                OUTLINED_FUNCTION_178(v76, 1, v97);
                if (v43)
                {
                  sub_1B8D9207C(v74, &qword_1EBAB9070, &qword_1B964D860);
                  OUTLINED_FUNCTION_178(v76 + v75, 1, v77);
                  if (v43)
                  {
                    sub_1B8D9207C(v76, &qword_1EBAB9070, &qword_1B964D860);
                    goto LABEL_59;
                  }
                }

                else
                {
                  v78 = v94;
                  sub_1B8F1B8B8();
                  OUTLINED_FUNCTION_178(v76 + v75, 1, v77);
                  if (!v79)
                  {
                    OUTLINED_FUNCTION_2_34();
                    v80 = v92;
                    sub_1B9114610();
                    v81 = static Apple_Parsec_Siri_Legacy_ImageResource.== infix(_:_:)(v78, v80);
                    sub_1B9114334();
                    sub_1B8D9207C(v74, &qword_1EBAB9070, &qword_1B964D860);
                    sub_1B9114334();
                    sub_1B8D9207C(v76, &qword_1EBAB9070, &qword_1B964D860);
                    if (v81)
                    {
LABEL_59:
                      v82 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__thumbnails;
                      OUTLINED_FUNCTION_521();
                      v83 = *(v4 + v82);
                      v84 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__thumbnails;
                      OUTLINED_FUNCTION_521();
                      v85 = *(v2 + v84);

                      OUTLINED_FUNCTION_177_1();
                      sub_1B8D748F8();
                      v87 = v86;

                      if (v87)
                      {
                        v88 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__isImageInvertable;
                        OUTLINED_FUNCTION_521();
                        v89 = *(v4 + v88);

                        v90 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Siri_Legacy_ImageLinkedAnswerP33_774564788697D56F55FD71A639F35A5013_StorageClass__isImageInvertable;
                        OUTLINED_FUNCTION_521();
                        v91 = *(v2 + v90);

                        goto LABEL_37;
                      }
                    }

LABEL_36:

                    goto LABEL_37;
                  }

                  sub_1B8D9207C(v74, &qword_1EBAB9070, &qword_1B964D860);
                  OUTLINED_FUNCTION_6_21();
                  sub_1B9114334();
                }

                v59 = &qword_1EBAB9078;
                v60 = &qword_1B964D868;
                v61 = v76;
LABEL_35:
                sub_1B8D9207C(v61, v59, v60);
                goto LABEL_36;
              }
            }

            else
            {
              sub_1B8F1B8B8();
              OUTLINED_FUNCTION_178(&v32[v56], 1, v57);
              if (!v58)
              {
                OUTLINED_FUNCTION_4_31();
                sub_1B9114610();

                LODWORD(v100) = static Apple_Parsec_Siri_Legacy_PunchOut.== infix(_:_:)();
                sub_1B9114334();
                sub_1B8D9207C(v40, &qword_1EBAC53C8, &qword_1B96923F0);
                OUTLINED_FUNCTION_254_2();
                v62 = OUTLINED_FUNCTION_424();
                sub_1B8D9207C(v62, v63, &qword_1B96923F0);
                if ((v100 & 1) == 0)
                {
                  goto LABEL_36;
                }

                goto LABEL_39;
              }

              sub_1B8D9207C(v40, &qword_1EBAC53C8, &qword_1B96923F0);
              OUTLINED_FUNCTION_35_11();
              sub_1B9114334();
            }

            v59 = &qword_1EBAC5450;
            v60 = &qword_1B9692420;
            v61 = v32;
            goto LABEL_35;
          }
        }
      }
    }
  }

LABEL_37:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9126CE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC56D0, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9126D60(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5408, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9126DD0()
{
  sub_1B8CD2888(&qword_1EBAC5408, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer);

  return sub_1B964C5D0();
}

uint64_t sub_1B9126E68()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5298);
  __swift_project_value_buffer(v0, qword_1EBAC5298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B9650810;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "name";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "value";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v21 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "decorated_value";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v7();
  v12 = (v21 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "value_annotation";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v7();
  v14 = (v21 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "decorated_value_annotation";
  *(v15 + 1) = 26;
  v15[16] = 2;
  v7();
  v16 = (v21 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "selected";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "app_punch_out";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Legacy_AnswerProperty.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9127258();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B912730C();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 7:
        OUTLINED_FUNCTION_9();
        sub_1B91273C0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9127258()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(0) + 36);
  type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(0);
  sub_1B8CD2888(&qword_1EBAC5468, type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText);
  return sub_1B964C580();
}

uint64_t sub_1B912730C()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(0) + 40);
  type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(0);
  sub_1B8CD2888(&qword_1EBAC5468, type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText);
  return sub_1B964C580();
}

uint64_t sub_1B91273C0()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(0) + 44);
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  sub_1B8CD2888(&qword_1EBAC53F0, type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Legacy_AnswerProperty.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53B0, &qword_1B96923D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v54 = v53 - v6;
  v7 = OUTLINED_FUNCTION_201();
  v55 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v7);
  v8 = OUTLINED_FUNCTION_59_1(v55);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v53[1] = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53D0, &qword_1B96923F8);
  v14 = OUTLINED_FUNCTION_183(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_66();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v53 - v21;
  v23 = type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(0);
  v24 = OUTLINED_FUNCTION_59_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44_0();
  v53[2] = v27;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v28);
  v29 = *v0;
  v30 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v31 || (sub_1B964C700(), !v1))
  {
    v32 = v0[2];
    v33 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v34 || (sub_1B964C700(), !v1))
    {
      v53[0] = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(0);
      v35 = *(v53[0] + 36);
      sub_1B8F1B8B8();
      OUTLINED_FUNCTION_32(v22);
      if (v36)
      {
        sub_1B8D9207C(v22, &qword_1EBAC53D0, &qword_1B96923F8);
      }

      else
      {
        OUTLINED_FUNCTION_3_33();
        sub_1B9114610();
        OUTLINED_FUNCTION_146_3();
        sub_1B8CD2888(v37, v38);
        sub_1B964C740();
        OUTLINED_FUNCTION_32_15();
        sub_1B9114334();
        if (v1)
        {
          goto LABEL_22;
        }
      }

      v39 = v0[4];
      v40 = v0[5];
      OUTLINED_FUNCTION_1();
      v41 = v53[0];
      if (!v42 || (sub_1B964C700(), !v1))
      {
        v43 = v41[10];
        sub_1B8F1B8B8();
        v44 = OUTLINED_FUNCTION_493();
        OUTLINED_FUNCTION_178(v44, v45, v23);
        if (v36)
        {
          sub_1B8D9207C(v19, &qword_1EBAC53D0, &qword_1B96923F8);
        }

        else
        {
          OUTLINED_FUNCTION_3_33();
          sub_1B9114610();
          OUTLINED_FUNCTION_146_3();
          sub_1B8CD2888(v46, v47);
          sub_1B964C740();
          OUTLINED_FUNCTION_32_15();
          sub_1B9114334();
          if (v1)
          {
            goto LABEL_22;
          }
        }

        v48 = v54;
        if (*(v0 + 48) != 1 || (sub_1B964C670(), !v1))
        {
          v49 = v41[11];
          sub_1B8F1B8B8();
          OUTLINED_FUNCTION_178(v48, 1, v55);
          if (v36)
          {
            sub_1B8D9207C(v48, &qword_1EBAC53B0, &qword_1B96923D0);
LABEL_21:
            v52 = v0 + v41[8];
            OUTLINED_FUNCTION_177_1();
            sub_1B964C290();
            goto LABEL_22;
          }

          OUTLINED_FUNCTION_1_51();
          sub_1B9114610();
          OUTLINED_FUNCTION_64_4();
          sub_1B8CD2888(v50, v51);
          sub_1B964C740();
          OUTLINED_FUNCTION_5_27();
          sub_1B9114334();
          if (!v1)
          {
            goto LABEL_21;
          }
        }
      }
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Legacy_AnswerProperty.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_112();
  v105 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v3);
  v4 = OUTLINED_FUNCTION_59_1(v105);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53B0, &qword_1B96923D0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_192_4();
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53B8, &qword_1B96923D8);
  OUTLINED_FUNCTION_59_1(v104);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v100 - v17;
  v19 = type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(0);
  v20 = OUTLINED_FUNCTION_59_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44_0();
  v106 = v23;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v100 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53D0, &qword_1B96923F8);
  v28 = OUTLINED_FUNCTION_183(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44_0();
  v107 = v31;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v32);
  v34 = (&v100 - v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5470, &unk_1B9692428);
  v36 = OUTLINED_FUNCTION_59_1(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44_0();
  v108 = v39;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v100 - v41;
  v43 = *v1;
  v44 = v1[1];
  OUTLINED_FUNCTION_428();
  v47 = v47 && v45 == v46;
  if (!v47 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_47;
  }

  v48 = v1[2] == *(v0 + 16) && v1[3] == *(v0 + 24);
  if (!v48 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_47;
  }

  v103 = v2;
  v100 = v9;
  v101 = v18;
  v49 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty(0);
  v109 = v0;
  v102 = v49;
  v50 = *(v49 + 36);
  v51 = *(v35 + 48);
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_199_4();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_50(v42);
  if (v47)
  {
    OUTLINED_FUNCTION_50(&v42[v51]);
    if (!v47)
    {
      goto LABEL_35;
    }

    sub_1B8D9207C(v42, &qword_1EBAC53D0, &qword_1B96923F8);
  }

  else
  {
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_50(&v42[v51]);
    if (v63)
    {
LABEL_34:
      OUTLINED_FUNCTION_32_15();
      sub_1B9114334();
LABEL_35:
      v64 = &qword_1EBAC5470;
      v65 = &unk_1B9692428;
LABEL_45:
      v74 = v42;
LABEL_46:
      sub_1B8D9207C(v74, v64, v65);
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_3_33();
    sub_1B9114610();
    v66 = *v34 == *v26 && v34[1] == v26[1];
    if (!v66 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_44;
    }

    v67 = v34[2];
    v68 = v26[2];
    sub_1B8D72408();
    if ((v69 & 1) == 0)
    {
      goto LABEL_44;
    }

    v70 = *(v19 + 24);
    v71 = sub_1B964C2B0();
    OUTLINED_FUNCTION_0_60();
    sub_1B8CD2888(v72, v73);
    v50 = v109;
    sub_1B964C850();
    OUTLINED_FUNCTION_152_2();
    sub_1B9114334();
    sub_1B9114334();
    sub_1B8D9207C(v42, &qword_1EBAC53D0, &qword_1B96923F8);
    if ((v71 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  v52 = v1[4] == *(v50 + 32) && v1[5] == *(v50 + 40);
  if (!v52 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_47;
  }

  v53 = v102;
  v54 = *(v102 + 40);
  v55 = *(v35 + 48);
  v42 = v108;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_199_4();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_50(v42);
  if (v47)
  {
    OUTLINED_FUNCTION_50(&v42[v55]);
    v56 = v103;
    if (v47)
    {
      sub_1B8D9207C(v42, &qword_1EBAC53D0, &qword_1B96923F8);
      goto LABEL_26;
    }

    goto LABEL_35;
  }

  v76 = v107;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_50(&v42[v55]);
  v56 = v103;
  if (v77)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_3_33();
  v78 = v106;
  sub_1B9114610();
  v79 = *v76 == *v78 && v76[1] == v78[1];
  if (!v79 && (sub_1B964C9F0() & 1) == 0 || (v80 = v76[2], v81 = v78[2], sub_1B8D72408(), (v82 & 1) == 0))
  {
LABEL_44:
    sub_1B9114334();
    sub_1B9114334();
    v64 = &qword_1EBAC53D0;
    v65 = &qword_1B96923F8;
    goto LABEL_45;
  }

  v83 = *(v19 + 24);
  v84 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_60();
  sub_1B8CD2888(v85, v86);
  v54 = v109;
  sub_1B964C850();
  OUTLINED_FUNCTION_152_2();
  sub_1B9114334();
  sub_1B9114334();
  sub_1B8D9207C(v42, &qword_1EBAC53D0, &qword_1B96923F8);
  if ((v84 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_26:
  if (*(v1 + 48) != *(v54 + 48))
  {
    goto LABEL_47;
  }

  v57 = *(v53 + 44);
  v58 = *(v104 + 48);
  v59 = v101;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_199_4();
  v60 = v59;
  sub_1B8F1B8B8();
  v61 = v59;
  v62 = v105;
  OUTLINED_FUNCTION_178(v61, 1, v105);
  if (v47)
  {
    OUTLINED_FUNCTION_50(v60 + v58);
    if (v47)
    {
      sub_1B8D9207C(v60, &qword_1EBAC53B0, &qword_1B96923D0);
LABEL_66:
      v97 = *(v53 + 32);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_60();
      sub_1B8CD2888(v98, v99);
      v75 = sub_1B964C850();
      goto LABEL_48;
    }

    goto LABEL_62;
  }

  OUTLINED_FUNCTION_176_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_50(v60 + v58);
  if (v87)
  {
    OUTLINED_FUNCTION_5_27();
    sub_1B9114334();
LABEL_62:
    v64 = &qword_1EBAC53B8;
    v65 = &qword_1B96923D8;
    v74 = v60;
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_1_51();
  v88 = v100;
  sub_1B9114610();
  v89 = *(v62 + 20);
  v90 = *(v56 + v89);
  v91 = *(v88 + v89);
  if (v90 != v91)
  {
    v92 = *(v56 + v89);

    v93 = sub_1B912BB5C(v90, v91);

    if ((v93 & 1) == 0)
    {
      OUTLINED_FUNCTION_62_3();
      sub_1B9114334();
      sub_1B9114334();
      v64 = &qword_1EBAC53B0;
      v65 = &qword_1B96923D0;
      v74 = v101;
      goto LABEL_46;
    }
  }

  v94 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_60();
  sub_1B8CD2888(v95, v96);
  sub_1B964C850();
  OUTLINED_FUNCTION_61_5();
  sub_1B9114334();
  sub_1B9114334();
  sub_1B8D9207C(v101, &qword_1EBAC53B0, &qword_1B96923D0);
  if (v94)
  {
    goto LABEL_66;
  }

LABEL_47:
  v75 = 0;
LABEL_48:
  OUTLINED_FUNCTION_264(v75);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91281E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC56C8, type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9128264(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5428, type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91282D4()
{
  sub_1B8CD2888(&qword_1EBAC5428, type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerProperty);

  return sub_1B964C5D0();
}

uint64_t sub_1B9128360()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC52B0);
  __swift_project_value_buffer(v0, qword_1EBAC52B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "regions";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void sub_1B91285A8()
{
  OUTLINED_FUNCTION_236_2();
  while (1)
  {
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_176_1();
      sub_1B912DB70();
    }

    else if (v1 == 1)
    {
      sub_1B964C530();
    }
  }
}

void Apple_Parsec_Siri_Legacy_DecoratedText.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
  {
    if (!*(*(v2 + 16) + 16) || (type metadata accessor for Apple_Parsec_Siri_Legacy_TextDecorationRegion(0), sub_1B8CD2888(&qword_1EBAC5480, type metadata accessor for Apple_Parsec_Siri_Legacy_TextDecorationRegion), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v1))
    {
      v6 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText(0) + 24);
      OUTLINED_FUNCTION_8_1();
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B9128754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_468();
  v9 = *v8;
  v10 = *(v5 + 8);
  OUTLINED_FUNCTION_428();
  v13 = v13 && v11 == v12;
  if (!v13 && (sub_1B964C9F0() & 1) == 0 || (a3(*(v5 + 16), *(v4 + 16)) & 1) == 0)
  {
    return 0;
  }

  v14 = *(a4(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_60();
  sub_1B8CD2888(v15, v16);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B91288AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC56C0, type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B912892C(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5468, type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B912899C()
{
  sub_1B8CD2888(&qword_1EBAC5468, type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText);

  return sub_1B964C5D0();
}

uint64_t sub_1B9128A34()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC52C8);
  __swift_project_value_buffer(v0, qword_1EBAC52C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "start";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "length";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "region_property";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Legacy_TextDecorationRegion.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_9();
      sub_1B9128CE0();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4A0();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Legacy_TextDecorationRegion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6C0(), !v1))
  {
    if (!*(v2 + 4) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6C0(), !v1))
    {
      if (!*(v2 + 8) || (v5 = *(v2 + 8), v6 = *(v2 + 16), sub_1B912EC1C(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
      {
        v4 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_TextDecorationRegion(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_Legacy_TextDecorationRegion.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 4) != *(v5 + 4))
  {
    return 0;
  }

  v6 = *(v3 + 8);
  v7 = *(v2 + 8);
  if (*(v2 + 16) == 1)
  {
    switch(v7)
    {
      case 1:
        if (v6 == 1)
        {
          goto LABEL_8;
        }

        return 0;
      case 2:
        if (v6 == 2)
        {
          goto LABEL_8;
        }

        return 0;
      case 3:
        if (v6 == 3)
        {
          goto LABEL_8;
        }

        return 0;
      case 4:
        if (v6 == 4)
        {
          goto LABEL_8;
        }

        return 0;
      case 5:
        if (v6 == 5)
        {
          goto LABEL_8;
        }

        return 0;
      case 6:
        if (v6 == 6)
        {
          goto LABEL_8;
        }

        return 0;
      case 7:
        if (v6 == 7)
        {
          goto LABEL_8;
        }

        return 0;
      case 8:
        if (v6 == 8)
        {
          goto LABEL_8;
        }

        return 0;
      default:
        if (v6)
        {
          return 0;
        }

        goto LABEL_8;
    }
  }

  if (v6 != v7)
  {
    return 0;
  }

LABEL_8:
  v9 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_TextDecorationRegion(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_60();
  sub_1B8CD2888(v10, v11);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9128FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC56B8, type metadata accessor for Apple_Parsec_Siri_Legacy_TextDecorationRegion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B912906C(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5480, type metadata accessor for Apple_Parsec_Siri_Legacy_TextDecorationRegion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91290DC()
{
  sub_1B8CD2888(&qword_1EBAC5480, type metadata accessor for Apple_Parsec_Siri_Legacy_TextDecorationRegion);

  return sub_1B964C5D0();
}

uint64_t sub_1B9129168()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC52E0);
  __swift_project_value_buffer(v0, qword_1EBAC52E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "scale_factor";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "resource_url";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "user_agent";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "pixel_width";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "pixel_height";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "image_data";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "url_format_string";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "point_width";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "point_height";
  *(v24 + 1) = 12;
  v24[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Legacy_ImageResource.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 4:
      case 5:
      case 8:
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 2:
      case 3:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Siri_Legacy_ImageResource.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_22(), sub_1B964C6F0(), !v1))
  {
    v3 = *(v2 + 8);
    v4 = *(v2 + 16);
    OUTLINED_FUNCTION_1();
    if (!v5 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
    {
      v6 = *(v2 + 24);
      v7 = *(v2 + 32);
      OUTLINED_FUNCTION_1();
      if (!v8 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
      {
        if (*(v2 + 40) == 0.0 || (OUTLINED_FUNCTION_22(), sub_1B964C6F0(), !v1))
        {
          if (*(v2 + 48) == 0.0 || (OUTLINED_FUNCTION_22(), sub_1B964C6F0(), !v1))
          {
            v9 = *(v2 + 56);
            v10 = *(v2 + 64);
            v11 = OUTLINED_FUNCTION_616();
            if (sub_1B8D99EA8(v11, v12) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), sub_1B964C6A0(), !v1))
            {
              v13 = *(v2 + 72);
              v14 = *(v2 + 80);
              OUTLINED_FUNCTION_1();
              if (!v15 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
              {
                if (*(v2 + 88) == 0.0 || (OUTLINED_FUNCTION_22(), sub_1B964C6F0(), !v1))
                {
                  if (*(v2 + 96) == 0.0 || (OUTLINED_FUNCTION_22(), sub_1B964C6F0(), !v1))
                  {
                    v16 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0) + 52);
                    OUTLINED_FUNCTION_8_1();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t static Apple_Parsec_Siri_Legacy_ImageResource.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  v5 = *(v4 + 8) == *(v2 + 8) && *(v3 + 16) == *(v2 + 16);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v3 + 24) == *(v2 + 24) && *(v3 + 32) == *(v2 + 32);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 40) != *(v2 + 40) || *(v3 + 48) != *(v2 + 48) || (MEMORY[0x1BFADC060](*(v3 + 56), *(v3 + 64), *(v2 + 56), *(v2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 72) == *(v2 + 72) && *(v3 + 80) == *(v2 + 80);
  if (!v7 && (sub_1B964C9F0() & 1) == 0 || *(v3 + 88) != *(v2 + 88) || *(v3 + 96) != *(v2 + 96))
  {
    return 0;
  }

  v8 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0) + 52);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_60();
  sub_1B8CD2888(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9129948(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC56B0, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91299C8(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5418, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9129A38()
{
  sub_1B8CD2888(&qword_1EBAC5418, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource);

  return sub_1B964C5D0();
}

uint64_t sub_1B9129AD0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC52F8);
  __swift_project_value_buffer(v0, qword_1EBAC52F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B9650810;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "request_id";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "client_version";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v21 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "bundle_id";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v21 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "app_display_name";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v21 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "app_store_uri";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v21 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "subtitle";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v17 = *MEMORY[0x1E69AADC8];
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "punch_out_uri";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Legacy_PunchOut.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}