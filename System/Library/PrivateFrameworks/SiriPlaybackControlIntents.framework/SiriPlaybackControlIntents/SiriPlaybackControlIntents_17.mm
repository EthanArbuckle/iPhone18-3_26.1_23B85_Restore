void sub_268A4CC28()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A4CC7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A4CCE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A4CD44()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A4CDA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A4CE0C(uint64_t a1)
{
  result = sub_268A4CEB8(&qword_2802A7830);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A4CEB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B36034();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A4CF10@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (a1 != 1)
    {
      v11 = 1;
      goto LABEL_10;
    }

    v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v4 = OUTLINED_FUNCTION_0_34();
    if (v4)
    {
      v5 = v4;
      v6 = sub_268B37BC4();
      [v5 doubleForKey_];
    }
  }

  else
  {
    v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v8 = OUTLINED_FUNCTION_0_34();
    if (v8)
    {
      v9 = v8;
      v10 = sub_268B37BC4();
      [v9 doubleForKey_];
    }
  }

  sub_268B345C4();
  v11 = 0;
LABEL_10:
  v12 = sub_268B34614();

  return __swift_storeEnumTagSinglePayload(a2, v11, 1, v12);
}

id OUTLINED_FUNCTION_0_34()
{

  return sub_26892CB58(0xD00000000000001FLL, v0 | 0x8000000000000000);
}

id sub_268A4D0B0()
{
  result = [objc_allocWithZone(type metadata accessor for AddSpeakerIntentHandler()) init];
  qword_2802CD9E0 = result;
  return result;
}

uint64_t sub_268A4D0E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v74 = a2;
  v2 = sub_268B35434();
  v3 = OUTLINED_FUNCTION_1(v2);
  v66 = v4;
  v67 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v65 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_268B35494();
  v9 = OUTLINED_FUNCTION_1(v8);
  v70 = v10;
  v71 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v72 = v13;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v14);
  v75 = &v65 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v65 - v18;
  v20 = sub_268B37A54();
  v21 = OUTLINED_FUNCTION_1(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v68 = v26;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v27);
  v69 = &v65 - v28;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v29);
  v31 = &v65 - v30;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v32 = __swift_project_value_buffer(v20, qword_2802CDA10);
  v33 = *(v23 + 16);
  v33(v31, v32, v20);
  v34 = sub_268B37A34();
  v35 = sub_268B37F04();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_2688BB000, v34, v35, "AddSpeakerFlowStrategy#actionForInput called", v36, 2u);
    OUTLINED_FUNCTION_12();
  }

  v37 = *(v23 + 8);
  v37(v31, v20);
  v38 = v75;
  v39 = v73;
  sub_268B35414();
  sub_26893BA8C(v38);
  v40 = type metadata accessor for MediaPlayerIntent();
  LODWORD(v38) = __swift_getEnumTagSinglePayload(v19, 1, v40);
  sub_2688C2E64(v19);
  if (v38 == 1)
  {
    v41 = v68;
    v33(v68, v32, v20);
    v42 = sub_268B37A34();
    v43 = sub_268B37EE4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2688BB000, v42, v43, "AddSpeakerFlowStrategy#actionForInput unable to create MediaPlayerIntent from parse", v44, 2u);
      OUTLINED_FUNCTION_12();
    }

    v37(v41, v20);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_4_30();
    OUTLINED_FUNCTION_2_26();
    return sub_268B34ED4();
  }

  else
  {
    v68 = (v23 + 8);
    v46 = v72;
    sub_268B35414();
    v48 = v70;
    v47 = v71;
    v49 = (*(v70 + 88))(v46, v71);
    if (v49 == *MEMORY[0x277D5C128] || v49 == *MEMORY[0x277D5C150] || v49 == *MEMORY[0x277D5C148] || v49 == *MEMORY[0x277D5C160])
    {
      (*(v48 + 8))(v46, v47);
      return sub_268B34EC4();
    }

    else
    {
      v33(v69, v32, v20);
      v53 = v65;
      v54 = v66;
      v55 = v67;
      (*(v66 + 16))(v65, v39, v67);
      v56 = sub_268B37A34();
      v57 = sub_268B37EE4();
      if (os_log_type_enabled(v56, v57))
      {
        v59 = v53;
        v60 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v76 = v73;
        *v60 = 136315138;
        sub_268B35414();
        v61 = sub_268B37C24();
        v63 = v62;
        (*(v54 + 8))(v59, v55);
        v64 = sub_26892CDB8(v61, v63, &v76);
        v47 = v71;

        *(v60 + 4) = v64;
        _os_log_impl(&dword_2688BB000, v56, v57, "AddSpeakerFlowStrategy#actionForInput received unsupported parse %s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v73);
        v48 = v70;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {

        (*(v54 + 8))(v53, v55);
      }

      v37(v69, v20);
      type metadata accessor for ErrorFilingHelper();
      OUTLINED_FUNCTION_4_30();
      OUTLINED_FUNCTION_2_26();
      sub_268B34ED4();
      return (*(v48 + 8))(v72, v47);
    }
  }
}

void sub_268A4D764(uint64_t a1, uint64_t *a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v69 = a3;
  v70 = a4;
  v71 = a2;
  v66 = a1;
  v68 = sub_268B35494();
  v4 = OUTLINED_FUNCTION_1(v68);
  v72 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v63 = v8;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v9);
  v11 = &v60 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v60 - v14;
  v65 = type metadata accessor for MediaPlayerIntent();
  v16 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_268B37A54();
  v20 = OUTLINED_FUNCTION_1(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v67 = v25;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v26);
  v28 = &v60 - v27;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v29 = __swift_project_value_buffer(v19, qword_2802CDA10);
  v60 = *(v22 + 16);
  v61 = v29;
  v60(v28);
  v30 = sub_268B37A34();
  v31 = sub_268B37F04();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_2688BB000, v30, v31, "AddSpeakerFlowStrategy#makeIntentFromParse called", v32, 2u);
    OUTLINED_FUNCTION_12();
  }

  v62 = *(v22 + 8);
  v62(v28, v19);
  v33 = *(v72 + 16);
  v34 = v66;
  v35 = v68;
  v33(v11, v66, v68);
  sub_26893BA8C(v11);
  if (__swift_getEnumTagSinglePayload(v15, 1, v65) == 1)
  {
    sub_2688C2E64(v15);
    (v60)(v67, v61, v19);
    v36 = v63;
    v33(v63, v34, v35);
    v37 = v35;
    v38 = sub_268B37A34();
    v39 = sub_268B37EE4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v73 = v71;
      *v40 = 136315138;
      v33(v11, v36, v37);
      v41 = sub_268B37C24();
      v43 = v42;
      v44 = OUTLINED_FUNCTION_7_11();
      v45(v44);
      v46 = sub_26892CDB8(v41, v43, &v73);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_2688BB000, v38, v39, "AddSpeakerFlowStrategy#makeIntentFromParse received unexpected parse: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v71);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    else
    {

      v48 = OUTLINED_FUNCTION_7_11();
      v49(v48);
    }

    v62(v67, v19);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_4_30();
    OUTLINED_FUNCTION_2_26();
    sub_2688C2ECC();
    v50 = swift_allocError();
    *v51 = 18;
    v69(v50, 1);
  }

  else
  {
    sub_2688C0464(v15, v18);
    if (v71)
    {
      v47 = v71;
    }

    else
    {
      v47 = [objc_allocWithZone(type metadata accessor for AddSpeakerIntent()) init];
    }

    v52 = v71;
    sub_26896587C(v18);
    v53 = v64;
    v54 = v64[5];
    v55 = v64[6];
    __swift_project_boxed_opaque_existential_1(v64 + 2, v54);
    v56 = v18;
    v57 = swift_allocObject();
    v58 = v70;
    v57[2] = v69;
    v57[3] = v58;
    v57[4] = v47;
    v59 = v47;

    sub_268AD35F4(v59, &off_287953C88, (v53 + 7), sub_268A4E524, v57, v54, v55);

    sub_2688C2F6C(v56);
  }
}

uint64_t sub_268A4DD60(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_2802CDA10);
  (*(v6 + 16))(v9, v10, v5);
  v11 = sub_268B37A34();
  v12 = sub_268B37F04();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2688BB000, v11, v12, "AddSpeakerFlowStrategy#makeIntentFromParse finished creating intent from parse", v13, 2u);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  return a1(a3, 0);
}

uint64_t sub_268A4DF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for AddSpeakerFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

id sub_268A4DFE8()
{
  if (qword_2802A4F00 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9E0;

  return v1;
}

uint64_t sub_268A4E044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for AddSpeakerFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4E0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for AddSpeakerFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4E11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for AddSpeakerFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4E188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AddSpeakerFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A4E1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AddSpeakerFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A4E22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for AddSpeakerFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4E298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for AddSpeakerFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A4E314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for AddSpeakerFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A4E42C(uint64_t a1)
{
  result = sub_268A4E4A4(&qword_2802A7850);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A4E4A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AddSpeakerFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A4E4E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t OUTLINED_FUNCTION_2_26()
{

  return static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)();
}

uint64_t sub_268A4E56C(uint64_t a1)
{
  v1 = 2;
  v2 = 4;
  if (a1 == 3000)
  {
    v2 = 1;
  }

  if (a1 == 4000)
  {
    v2 = 0;
  }

  if (a1 != 2000)
  {
    v1 = v2;
  }

  if (a1 == 1000)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t static DeviceProximity.== infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (a1 < 5 && a2 < 5)
  {
    return a1 == a2;
  }

  result = sub_268B38474();
  __break(1u);
  return result;
}

uint64_t sub_268A4E600(unint64_t a1, unint64_t a2)
{
  if (a2 < 5 && a1 < 5)
  {
    return a2 >= a1;
  }

  result = sub_268B38474();
  __break(1u);
  return result;
}

BOOL sub_268A4E68C(void (*a1)(uint64_t))
{
  v5 = sub_268B34614();
  v6 = OUTLINED_FUNCTION_1_45(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_35();
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_37(v10, v11, v12, v13, v14, v15, v16, v17, v20);
  sub_26897B408(v2);
  sub_268B345B4();
  v18 = OUTLINED_FUNCTION_2_27();
  a1(v18);
  (a1)(v3, v1);
  return (a1 & 1) == 0;
}

BOOL sub_268A4E794(uint64_t a1, void (*a2)(uint64_t))
{
  v6 = sub_268B34614();
  v7 = OUTLINED_FUNCTION_1_45(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_35();
  v11 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_37(v11, v12, v13, v14, v15, v16, v17, v18, v21);
  sub_26897B408(v3);
  sub_268B345B4();
  v19 = OUTLINED_FUNCTION_2_27();
  a2(v19);
  (a2)(v4, v2);
  return (a2 & 1) == 0;
}

uint64_t sub_268A4E87C(unint64_t a1, unint64_t a2)
{
  if (a1 < 5 && a2 < 5)
  {
    return a1 >= a2;
  }

  result = sub_268B38474();
  __break(1u);
  return result;
}

uint64_t sub_268A4E8EC(void (*a1)(uint64_t))
{
  v5 = sub_268B34614();
  v6 = OUTLINED_FUNCTION_1_45(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_35();
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_37(v10, v11, v12, v13, v14, v15, v16, v17, v20);
  sub_26897B408(v2);
  sub_268B345B4();
  v18 = OUTLINED_FUNCTION_2_27();
  a1(v18);
  (a1)(v3, v1);
  return a1 & 1;
}

uint64_t sub_268A4E9D0(unint64_t a1, unint64_t a2)
{
  if (a2 < 5 && a1 < 5)
  {
    return a2 < a1;
  }

  result = sub_268B38474();
  __break(1u);
  return result;
}

uint64_t DeviceProximity.description.getter(uint64_t a1)
{
  result = 0x7972616D6972702ELL;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x616964656D6D692ELL;
      break;
    case 2:
      result = 0x7261656E2ELL;
      break;
    case 3:
      result = 1918985774;
      break;
    case 4:
      result = 0x6E776F6E6B6E752ELL;
      break;
    default:
      sub_268B381C4();

      v3 = sub_268B38404();
      MEMORY[0x26D625650](v3);

      MEMORY[0x26D625650](41, 0xE100000000000000);
      result = 0x64657070616D6E75;
      break;
  }

  return result;
}

uint64_t static DeviceProximity.< infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (a1 < 5 && a2 < 5)
  {
    return a1 < a2;
  }

  result = sub_268B38474();
  __break(1u);
  return result;
}

unint64_t sub_268A4EBF0()
{
  result = qword_2802A7868;
  if (!qword_2802A7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7868);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_26897B408(&a9 - v9);
}

void sub_268A4ED18(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MediaIntent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_268B37A54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  sub_268A4F18C(a1);
  if (*a1 == 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  [v2 setEnable_];
  v17 = *(a1 + 2);
  switch(v17)
  {
    case 3:
      v18 = 2;
      break;
    case 5:
      goto LABEL_11;
    case 4:
      v18 = 3;
      break;
    default:
      v18 = 1;
      break;
  }

  [v2 setType_];
LABEL_11:
  v19 = *(a1 + 16);
  if (v19)
  {
    v38 = *(a1 + 8);
    v39 = v13;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v20 = __swift_project_value_buffer(v8, qword_2802CDA10);
    (*(v9 + 16))(v15, v20, v8);
    v21 = sub_268B37A34();
    v22 = sub_268B37F04();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v37 = v8;
      v24 = v7;
      v25 = v23;
      *v23 = 0;
      _os_log_impl(&dword_2688BB000, v21, v22, "Found language in intent, mapping it to SiriKit intent", v23, 2u);
      v26 = v25;
      v7 = v24;
      v8 = v37;
      MEMORY[0x26D6266E0](v26, -1, -1);
    }

    (*(v9 + 8))(v15, v8);
    type metadata accessor for LanguageOption();
    v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v28 = sub_26893A824(0, 0);
    v44 = v38;
    v45 = v19;
    v42 = 95;
    v43 = 0xE100000000000000;
    v40 = 45;
    v41 = 0xE100000000000000;
    sub_26895EF2C();
    v29 = sub_268B380B4();
    sub_268A1A108(v29, v30, v28);
    [v2 setLanguage_];

    v13 = v39;
  }

  sub_268A1A468();
  if (sub_268B37834())
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v31 = __swift_project_value_buffer(v8, qword_2802CDA10);
    (*(v9 + 16))(v13, v31, v8);
    v32 = sub_268B37A34();
    v33 = sub_268B37F04();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2688BB000, v32, v33, "Found home automation nodes, attempting to map them to SiriKit intent", v34, 2u);
      MEMORY[0x26D6266E0](v34, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    sub_268932630(a1, v7);
    v35 = sub_268A91BFC(v7);
    [v2 setDevice_];
  }
}

void sub_268A4F18C(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MediaIntent();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268932630(a1, v10);
  sub_268A1A468();
  v11 = sub_268B37854();
  sub_26895F7A8(v10);
  v12 = *(v11 + 16);
  if (v12)
  {
    v25 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for DeviceQuery();
    v13 = v11 + 32;
    do
    {
      sub_26890C900(v13, v24);
      sub_26890C900(v24, v23);
      sub_268AC88F0(v23);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      sub_268B38214();
      v14 = *(v25 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      v13 += 40;
      --v12;
    }

    while (v12);

    v15 = v25;
    v16 = off_28795BBB8;
    v17 = type metadata accessor for SetSubtitleStateIntent();
    v16(v15, v17, &off_28795BBA8);
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v18, v2);
    v19 = sub_268B37A34();
    v20 = sub_268B37ED4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2688BB000, v19, v20, "Home Automation entities are empty, skip adding to intent.", v21, 2u);
      MEMORY[0x26D6266E0](v21, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_268A4F488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, qword_2802CDA10);
  (*(v8 + 16))(v11, v12, v7);
  v13 = sub_268B37A34();
  v14 = sub_268B37ED4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2688BB000, v13, v14, "WhatDidTheySayDeviceDisambiguationStrategy.makeDialogForDisambiguation() called", v15, 2u);
    MEMORY[0x26D6266E0](v15, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v16 = sub_268B35244();
  sub_268AE2278(v16);
  v18 = v17;

  v19 = sub_268B35244();
  sub_268AE23DC(v19);
  v21 = v20;

  sub_268A3A2AC(v18, v21 & 1, a4, a5);
}

uint64_t *sub_268A4F6A8()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  sub_26895F84C((v0 + 28));
  return v0;
}

uint64_t sub_268A4F6F8()
{
  sub_268A4F6A8();

  return MEMORY[0x2821FE8D8](v0, 264, 7);
}

void sub_268A4F750()
{
  type metadata accessor for WhatDidTheySayDeviceDisambiguationStrategy();

  JUMPOUT(0x26D622290);
}

uint64_t sub_268A4F860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for WhatDidTheySayDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F78](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268A4F910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for WhatDidTheySayDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F88](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268A4F9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for WhatDidTheySayDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F80](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268A4FA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for WhatDidTheySayDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F90](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268A4FB14()
{
  type metadata accessor for WhatDidTheySayDeviceDisambiguationStrategy();

  return sub_268B353B4();
}

uint64_t sub_268A4FBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C008] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for WhatDidTheySayDeviceDisambiguationStrategy();
  *v15 = v7;
  v15[1] = sub_2688C01F0;

  return MEMORY[0x2821BB9B0](a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_268A4FC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(MEMORY[0x277D5C010] + 4);
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  v18 = type metadata accessor for WhatDidTheySayDeviceDisambiguationStrategy();
  *v17 = v8;
  v17[1] = sub_26891DC3C;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v18, a8);
}

uint64_t sub_268A4FE84(uint64_t a1, uint64_t a2)
{
  result = sub_268A4FEDC(&qword_2802A7888, a2, type metadata accessor for WhatDidTheySayDeviceDisambiguationStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A4FEDC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_268A4FF24(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v70 = a7;
  v72 = a4;
  v73 = a8;
  v65 = a2;
  v66 = a6;
  v68 = a3;
  v69 = a5;
  v67 = a1;
  v8 = sub_268B367A4();
  v9 = OUTLINED_FUNCTION_1(v8);
  v63 = v10;
  v64 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v62 = v13;
  v14 = sub_268B37A54();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v74 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v60 - v22;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v24 = __swift_project_value_buffer(v14, qword_2802CDA10);
  v25 = *(v17 + 16);
  v25(v23, v24, v14);
  v26 = sub_268B37A34();
  v27 = sub_268B37ED4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2688BB000, v26, v27, "SeekTimeUnsupportedValueStrategy.makeUnsupportedValueOutput()", v28, 2u);
    OUTLINED_FUNCTION_12();
  }

  v29 = *(v17 + 8);
  v29(v23, v14);
  sub_268B36754();
  v30 = sub_268B36734();
  if (!v30)
  {
    v30 = sub_268B36744();
  }

  v31 = v30;
  v32 = v74;
  v25(v74, v24, v14);

  v33 = sub_268B37A34();
  v34 = sub_268B37ED4();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v61 = v29;
    v36 = v35;
    v37 = swift_slowAlloc();
    v75 = v37;
    *v36 = 136315138;
    sub_268B36714();
    v38 = v62;
    sub_268B36B14();

    v39 = sub_268B36784();
    v41 = v40;
    (*(v63 + 8))(v38, v64);
    v42 = sub_26892CDB8(v39, v41, &v75);

    *(v36 + 4) = v42;
    _os_log_impl(&dword_2688BB000, v33, v34, "SeekTimeUnsupportedValueStrategy.makeUnsupportedValueOutput cached responseMode = %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v61(v74, v14);
  }

  else
  {

    v29(v32, v14);
  }

  v43 = swift_allocObject();
  v45 = v67;
  v44 = v68;
  v43[2] = v31;
  v43[3] = v44;
  v47 = v71;
  v46 = v72;
  v48 = v65;
  v49 = v66;
  v43[4] = v72;
  v43[5] = v48;
  v43[6] = v49;
  v43[7] = v47;
  v50 = v70;
  v43[8] = v45;
  v43[9] = v50;
  v51 = v73;
  v43[10] = v73;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v52 = v48;
  v53 = v49;
  swift_retain_n();
  v54 = v52;
  v55 = v53;

  v56 = v54;
  v57 = v55;

  sub_2689FA258(v58, v56, v44, v46, v69, v57, v47, v50, v51, v44, v46, v56, v57, v47, sub_268A51430, v43, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
}

uint64_t sub_268A50494(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(void *), uint64_t a9)
{
  v102 = a8;
  v89 = a7;
  v97 = a6;
  v87 = a5;
  v98 = a4;
  v86 = a3;
  v84 = a2;
  v93 = a1;
  v101 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v92 = &v80 - v11;
  v12 = sub_268B37A54();
  v99 = *(v12 - 8);
  v100 = v12;
  v13 = *(v99 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v96 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v91 = &v80 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v95 = &v80 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v88 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v85 = &v80 - v24;
  v25 = sub_268B34E24();
  v94 = *(v25 - 8);
  v26 = *(v94 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v90 = &v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v80 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v80 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v80 - v40;
  sub_268935590(v93, &v80 - v40, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688EF38C(v41, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v42 = v100;
    v43 = __swift_project_value_buffer(v100, qword_2802CDA10);
    v44 = v99;
    (*(v99 + 16))(v96, v43, v42);
    v45 = sub_268B37A34();
    v46 = sub_268B37EE4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2688BB000, v45, v46, "SeekTimeUnsupportedValueStrategy.makeUnsupportedValueOutput unable to execute dialog", v47, 2u);
      MEMORY[0x26D6266E0](v47, -1, -1);
    }

    (*(v44 + 8))(v96, v42);
    sub_2688C2ECC();
    v48 = swift_allocError();
    *v49 = -85;
    v103[0] = v48;
    v104 = 1;
    v102(v103);
    return sub_2688EF38C(v103, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v41, v37);
    v82 = sub_2688E1B0C(21, 3, v84, v86, v98, 0x6E776F6E6B6E75, 0xE700000000000000, v87);
    v83 = v51;
    v52 = __swift_project_boxed_opaque_existential_1(v97 + 13, v97[16]);
    v53 = *MEMORY[0x277D5BBE0];
    v54 = *(v94 + 104);
    v86 = v28;
    v87 = v25;
    v54(v28, v53, v25);
    sub_268935590(v37, v35, &unk_2802A56E0, &unk_268B3CDF0);
    v96 = v29;

    v55 = sub_268B350F4();
    v56 = *(v55 - 8);
    v57 = v85;
    (*(v56 + 32))(v85, v35, v55);
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v55);
    v58 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v95, 1, 1, v58);
    v59 = *v52;
    v60 = v88;
    sub_268935590(v57, v88, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60, 1, v55);
    v84 = v37;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688EF38C(v60, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v56 + 8))(v60, v55);
    }

    v81 = v56;
    v93 = v55;
    v62 = v86;
    v63 = v95;
    sub_2688E3D1C();

    sub_2688EF38C(v63, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688EF38C(v57, &unk_2802A57B0, &unk_268B3CE00);
    (*(v94 + 8))(v62, v87);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v64 = v100;
    v65 = __swift_project_value_buffer(v100, qword_2802CDA10);
    v66 = v99;
    v67 = v91;
    (*(v99 + 16))(v91, v65, v64);
    v68 = sub_268B37A34();
    v69 = sub_268B37ED4();
    v70 = os_log_type_enabled(v68, v69);
    v71 = v97;
    if (v70)
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_2688BB000, v68, v69, "SeekTimeUnsupportedValueStrategy.makeUnsupportedValueOutput returning output", v72, 2u);
      MEMORY[0x26D6266E0](v72, -1, -1);
    }

    (*(v66 + 8))(v67, v64);
    v73 = v71[21];
    v74 = v71[22];
    __swift_project_boxed_opaque_existential_1(v71 + 18, v73);
    v75 = v84;
    v76 = v90;
    sub_268935590(v84, v90, &unk_2802A56E0, &unk_268B3CDF0);
    v77 = *(v76 + *(v96 + 12));
    v78 = v92;
    sub_268A82B50(v98, v92);
    v79 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v78, 0, 1, v79);
    (*(v74 + 40))(v76, v77, v78, v102, v101, v73, v74);

    sub_2688EF38C(v78, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688EF38C(v75, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v81 + 8))(v76, v93);
  }
}

uint64_t sub_268A50E58(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v41 = sub_268B37A54();
  v12 = OUTLINED_FUNCTION_1(v41);
  v42 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  v17 = v16;
  sub_268935590(a1, v46, &unk_2802A57C0, &qword_268B3BE00);
  v18 = v47;
  sub_2688EF38C(v46, &unk_2802A57C0, &qword_268B3BE00);
  if (v18 != 1)
  {
    return a2(a1);
  }

  v19 = a4 == 0xD000000000000010 && 0x8000000268B5B7D0 == a5;
  if (!v19 && (sub_268B38444() & 1) == 0)
  {
    sub_2688C2ECC();
    v26 = swift_allocError();
    v28 = OUTLINED_FUNCTION_3_38(v26, v27, 59);
    a2(v28);
    return sub_2688EF38C(v46, &unk_2802A57C0, &qword_268B3BE00);
  }

  v20 = sub_268B18100();
  if (!v20)
  {
LABEL_14:
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v29 = __swift_project_value_buffer(v41, qword_2802CDA10);
    (*(v42 + 16))(v17, v29, v41);
    v30 = sub_268B37A34();
    v31 = sub_268B37EE4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2688BB000, v30, v31, "Did not receive intent response for seekTime or devices not populated!", v32, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v42 + 8))(v17, v41);
    sub_2688C2ECC();
    v33 = swift_allocError();
    v35 = OUTLINED_FUNCTION_3_38(v33, v34, 57);
    a2(v35);
    return sub_2688EF38C(v46, &unk_2802A57C0, &qword_268B3BE00);
  }

  if (!sub_2688EFD0C(v20))
  {

    goto LABEL_14;
  }

  LOWORD(v44[0]) = 0;
  BYTE2(v44[0]) = 0;
  v44[1] = 0;
  v44[2] = 0;
  v44[3] = 1;
  memset(&v44[4], 0, 61);
  memcpy(v45, &v44[1], 0x51uLL);
  sub_2688EF38C(v45, &qword_2802A5C88, qword_268B418C0);
  LODWORD(v44[1]) = 0;
  memset(&v44[2], 0, 72);
  LOBYTE(v44[11]) = 1;
  sub_268AE3BC0();

  v21 = SeekTimePlayheadPositionUnsupportedReason.init(rawValue:)([a7 unsupportedReason]);
  if ((v22 & 1) == 0)
  {
    if (v21 != 3)
    {
      if (v21 == 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_268B3BBC0;
        *(v38 + 32) = 0xD000000000000010;
        *(v38 + 40) = 0x8000000268B572E0;
        *(v38 + 72) = MEMORY[0x277D837D0];
        *(v38 + 48) = 0xD000000000000012;
        *(v38 + 56) = 0x8000000268B5B7F0;
        sub_268B37B84();
        OUTLINED_FUNCTION_2_28();
        OUTLINED_FUNCTION_4_31();
        sub_268ABC88C();
LABEL_28:

        goto LABEL_29;
      }

      if (v21 != 1)
      {
        goto LABEL_10;
      }
    }

    if (v21 == 1)
    {
      v36 = 1;
    }

    else
    {
      v36 = 3;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_268B3BBC0;
    *(v37 + 32) = 0xD000000000000010;
    *(v37 + 40) = 0x8000000268B572E0;
    *(v37 + 72) = &type metadata for SeekTimePlayheadPositionUnsupportedReason;
    *(v37 + 48) = v36;
    sub_268B37B84();
    OUTLINED_FUNCTION_2_28();
    OUTLINED_FUNCTION_4_31();
    sub_268AC6530();
    goto LABEL_28;
  }

LABEL_10:
  sub_2688C2ECC();
  v23 = swift_allocError();
  *v24 = 58;
  v46[0] = v23;
  v47 = 1;
  a2(v46);
  sub_2688EF38C(v46, &unk_2802A57C0, &qword_268B3BE00);
LABEL_29:
  memcpy(v43, v44, 0x5DuLL);
  return sub_268A30574(v43);
}

uint64_t type metadata accessor for SeekTimeUnsupportedValueStrategy()
{
  result = qword_2802A7890;
  if (!qword_2802A7890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268A513C8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_268A51430()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v9 = v0[9];
  v10 = v0[10];
  return sub_268A503D8();
}

void *OUTLINED_FUNCTION_2_28()
{
  v3 = *(*v0 + 56);

  return memcpy((v1 - 184), (v0 + 144), 0x5DuLL);
}

uint64_t OUTLINED_FUNCTION_3_38@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;
  *(v3 - 184) = a1;
  *(v3 - 144) = 1;
  return v3 - 184;
}

uint64_t sub_268A514F4(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = sub_268B37A54();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  v16 = NLMediaType.matches(with:)([v4 nowPlayingMediaType]);
  v17 = v16;
  v26 = NLMediaType.isAmbiguous()();
  if (![v4 nowPlayingMediaType])
  {
    v18 = [v4 nowPlayingState] != 0;
    if (v16)
    {
LABEL_7:
      v17 = 1;
      goto LABEL_9;
    }

    if ((a2 & 1) == 0)
    {
LABEL_8:
      v17 = a3 & v18;
      goto LABEL_9;
    }

LABEL_6:
    if (NLMediaType.isAmbiguous()())
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v18 = 0;
  if (!v16 && (a2 & 1) != 0)
  {
    goto LABEL_6;
  }

LABEL_9:
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v7, qword_2802CDA10);
  (*(v10 + 16))(v15, v19, v7);
  v20 = sub_268B37A34();
  v21 = sub_268B37F04();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = a3;
    v24 = v22;
    *v22 = 67110400;
    *(v22 + 4) = v16;
    *(v22 + 8) = 1024;
    *(v22 + 10) = v26;
    *(v22 + 14) = 1024;
    *(v22 + 16) = v18;
    *(v22 + 20) = 1024;
    *(v22 + 22) = a2 & 1;
    *(v22 + 26) = 1024;
    *(v22 + 28) = v23 & 1;
    *(v22 + 32) = 1024;
    *(v22 + 34) = v17 & 1;
    _os_log_impl(&dword_2688BB000, v20, v21, "exactMediaTypeFound: %{BOOL}d, isAmbiguousMediaType: %{BOOL}d, unknownMediaTypeQueued: %{BOOL}d, acceptAmbiguousMediaType: %{BOOL}d, acceptUnknownNowPlayingMediaType: %{BOOL}d. hasMatchingNowPlayingMediaTypeQueued: %{BOOL}d", v22, 0x26u);
    MEMORY[0x26D6266E0](v24, -1, -1);
  }

  (*(v10 + 8))(v15, v7);
  return v17 & 1;
}

uint64_t DeviceContext.isEqual(_:)(uint64_t a1)
{
  v4 = sub_268B34614();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A78A0, &qword_268B47A10);
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v60 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  OUTLINED_FUNCTION_1_46();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v60 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v60 - v25;
  sub_2688F1FA4(a1, v66, &byte_2802A6450, &byte_268B3BE10);
  if (v67)
  {
    type metadata accessor for DeviceContext();
    if (swift_dynamicCast())
    {
      v62 = v12;
      v63 = v7;
      v27 = v65;
      v28 = [v1 nowPlayingState];
      if (v28 == [v27 nowPlayingState])
      {
        v64 = v27;
        v61 = v1;
        v29 = [v1 nowPlayingTimestamp];
        if (v29)
        {
          v30 = v29;
          sub_268B345D4();

          v31 = 0;
        }

        else
        {
          v31 = 1;
        }

        v32 = 1;
        __swift_storeEnumTagSinglePayload(v26, v31, 1, v4);
        v33 = [v64 nowPlayingTimestamp];
        if (v33)
        {
          v34 = v33;
          sub_268B345D4();

          v32 = 0;
        }

        __swift_storeEnumTagSinglePayload(v24, v32, 1, v4);
        v35 = *(v13 + 48);
        sub_2688F1FA4(v26, v18, &unk_2802A7350, qword_268B3FF10);
        sub_2688F1FA4(v24, &v18[v35], &unk_2802A7350, qword_268B3FF10);
        OUTLINED_FUNCTION_124(v18);
        if (v37)
        {
          sub_2688C058C(v24, &unk_2802A7350, qword_268B3FF10);
          sub_2688C058C(v26, &unk_2802A7350, qword_268B3FF10);
          OUTLINED_FUNCTION_124(&v18[v35]);
          if (v37)
          {
            sub_2688C058C(v18, &unk_2802A7350, qword_268B3FF10);
            v36 = v64;
            goto LABEL_24;
          }
        }

        else
        {
          sub_2688F1FA4(v18, v2, &unk_2802A7350, qword_268B3FF10);
          OUTLINED_FUNCTION_124(&v18[v35]);
          if (!v37)
          {
            v41 = v62;
            v40 = v63;
            (*(v63 + 32))(v62, &v18[v35], v4);
            sub_268A523C4(&qword_2802A78A8, MEMORY[0x277CC9578]);
            v42 = sub_268B37BB4();
            v43 = *(v40 + 8);
            v43(v41, v4);
            sub_2688C058C(v24, &unk_2802A7350, qword_268B3FF10);
            sub_2688C058C(v26, &unk_2802A7350, qword_268B3FF10);
            v43(v2, v4);
            sub_2688C058C(v18, &unk_2802A7350, qword_268B3FF10);
            v36 = v64;
            if ((v42 & 1) == 0)
            {
              goto LABEL_20;
            }

LABEL_24:
            v44 = v61;
            v45 = sub_2688EF000(v61, &selRef_routeId);
            v47 = v46;
            v48 = sub_2688EF000(v36, &selRef_routeId);
            v38 = v49;
            if (v47)
            {
              if (!v49)
              {

                return v38 & 1;
              }

              if (v45 != v48 || v47 != v49)
              {
                v51 = sub_268B38444();

                if (v51)
                {
                  goto LABEL_37;
                }

LABEL_20:

                goto LABEL_21;
              }
            }

            else if (v49)
            {
              goto LABEL_33;
            }

LABEL_37:
            if (static DeviceProximity.== infix(_:_:)([v44 proximity], objc_msgSend(v36, sel_proximity)))
            {
              v52 = [v44 nowPlayingMediaType];
              if (v52 == [v36 nowPlayingMediaType])
              {
                v53 = sub_2688EF000(v44, &selRef_groupId);
                v55 = v54;
                v56 = sub_2688EF000(v36, &selRef_groupId);
                v58 = v57;
                if (!v55)
                {

                  if (!v58)
                  {
                    goto LABEL_50;
                  }

                  goto LABEL_34;
                }

                if (v57)
                {
                  if (v53 != v56 || v55 != v57)
                  {
                    v38 = sub_268B38444();

                    return v38 & 1;
                  }

LABEL_50:
                  v38 = 1;
                  return v38 & 1;
                }

LABEL_33:

LABEL_34:

                goto LABEL_21;
              }
            }

            goto LABEL_20;
          }

          sub_2688C058C(v24, &unk_2802A7350, qword_268B3FF10);
          sub_2688C058C(v26, &unk_2802A7350, qword_268B3FF10);
          (*(v63 + 8))(v2, v4);
        }

        sub_2688C058C(v18, &qword_2802A78A0, &qword_268B47A10);
        v36 = v64;
        goto LABEL_20;
      }
    }
  }

  else
  {
    sub_2688C058C(v66, &byte_2802A6450, &byte_268B3BE10);
  }

LABEL_21:
  v38 = 0;
  return v38 & 1;
}

uint64_t DeviceContext.description.getter()
{
  v2 = v0;
  v3 = sub_268B34614();
  v4 = OUTLINED_FUNCTION_1(v3);
  v40 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_1_46();
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_268B381C4();
  MEMORY[0x26D625650](0xD000000000000019, 0x8000000268B5B810);
  v16 = sub_2688EF000(v0, &selRef_routeId);
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v16 = 0x3E6C696E3CLL;
    v18 = 0xE500000000000000;
  }

  MEMORY[0x26D625650](v16, v18);

  MEMORY[0x26D625650](0x203A6D6F6F72202CLL, 0xE800000000000000);
  v19 = sub_2688EF000(v0, &selRef_roomName);
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v19 = 0x3E6C696E3CLL;
    v21 = 0xE500000000000000;
  }

  MEMORY[0x26D625650](v19, v21);

  MEMORY[0x26D625650](0x6D69786F7270202CLL, 0xED0000203A797469);
  v22 = DeviceProximity.description.getter([v0 proximity]);
  MEMORY[0x26D625650](v22);

  MEMORY[0x26D625650](0xD000000000000013, 0x8000000268B5B830);
  v23 = NowPlayingState.description.getter([v0 nowPlayingState]);
  MEMORY[0x26D625650](v23);

  OUTLINED_FUNCTION_4_32();
  v24 = [v0 nowPlayingTimestamp];
  if (v24)
  {
    v25 = v24;
    sub_268B345D4();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  __swift_storeEnumTagSinglePayload(v1, v26, 1, v3);
  sub_2688EF3EC(v1, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v3))
  {
    sub_2688C058C(v15, &unk_2802A7350, qword_268B3FF10);
    v27 = 0xE500000000000000;
    v28 = 0x3E6C696E3CLL;
  }

  else
  {
    v29 = v40;
    (*(v40 + 16))(v10, v15, v3);
    sub_2688C058C(v15, &unk_2802A7350, qword_268B3FF10);
    v28 = sub_268B34564();
    v27 = v30;
    (*(v29 + 8))(v10, v3);
  }

  MEMORY[0x26D625650](v28, v27);

  OUTLINED_FUNCTION_4_32();
  v31 = NowPlayingMediaType.description.getter([v2 nowPlayingMediaType]);
  MEMORY[0x26D625650](v31);

  MEMORY[0x26D625650](0x656369766564202CLL, 0xEE00203A65707954);
  v32 = sub_2688EF000(v2, &selRef_deviceType);
  if (v33)
  {
    v34 = v33;
  }

  else
  {
    v32 = 0x3E6C696E3CLL;
    v34 = 0xE500000000000000;
  }

  MEMORY[0x26D625650](v32, v34);

  MEMORY[0x26D625650](0x4970756F7267202CLL, 0xEB00000000203A64);
  v35 = sub_2688EF000(v2, &selRef_groupId);
  if (v36)
  {
    v37 = v36;
  }

  else
  {
    v35 = 0x3E6C696E3CLL;
    v37 = 0xE500000000000000;
  }

  MEMORY[0x26D625650](v35, v37);

  MEMORY[0x26D625650](32032, 0xE200000000000000);
  return v41;
}

uint64_t sub_268A5236C(uint64_t a1)
{
  result = sub_268A523C4(&qword_2802A78B0, type metadata accessor for DeviceContext);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A523C4(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_4_32()
{

  JUMPOUT(0x26D625650);
}

id sub_268A52448(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FA8, &unk_268B3DEF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A78B8, &qword_268B47A38);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v36 - v10;
  v12 = sub_268B35AF4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268A528CC(a1);
  sub_268A52C08(a1);
  sub_268A52FCC(a1);
  v17 = type metadata accessor for MediaPlayerIntent();
  sub_268A532E4(&a1[v17[7]], v7);
  v18 = sub_268B35984();
  if (__swift_getEnumTagSinglePayload(v7, 1, v18) == 1)
  {
    sub_2688EF38C(v7, &qword_2802A5FA8, &unk_268B3DEF0);
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
LABEL_4:
    sub_2688EF38C(v11, &qword_2802A78B8, &qword_268B47A38);
    v19 = sub_2688C063C();
    v20 = sub_268B38064();
    OUTLINED_FUNCTION_0_36(v20);

    goto LABEL_6;
  }

  sub_268B35974();
  (*(*(v18 - 8) + 8))(v7, v18);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  (*(v13 + 32))(v16, v11, v12);
  sub_268A7ABE8();
  v21 = sub_268B37DD4();
  OUTLINED_FUNCTION_0_36(v21);

  (*(v13 + 8))(v16, v12);
LABEL_6:
  v22 = a1[v17[8]];
  if (v22 != 2)
  {
    if ((v22 & 1) == 0)
    {
LABEL_17:

      goto LABEL_18;
    }

    v27 = sub_268B38444();

    if (v27)
    {
      goto LABEL_18;
    }
  }

  v23 = *a1;
  if (v23 == 24)
  {
    goto LABEL_19;
  }

  if (sub_26893E3F8(v23) == 0x74726174736572 && v24 == 0xE700000000000000)
  {
    goto LABEL_17;
  }

  v26 = sub_268B38444();

  if (v26)
  {
LABEL_18:
    sub_2688C063C();
    v28 = sub_268B38064();
    [v2 setPlayheadPosition_];

    v29 = sub_268B38054();
    [v2 setShouldStartPlaybackAfterSeek_];
  }

LABEL_19:
  if (v22 == 2)
  {
    goto LABEL_24;
  }

  if (v22)
  {
  }

  else
  {
    v30 = sub_268B38444();

    if ((v30 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  sub_2688C063C();
  v31 = sub_268B38054();
  [v2 setIsSkipToEnd_];

LABEL_24:
  v32 = a1[v17[12]];
  if (v32 == 26)
  {
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v33 = sub_268942D54(v32);
  }

  return [v2 setMediaType_];
}

uint64_t sub_268A528CC(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for MediaPlayerIntent();
  v25 = sub_2689A9870(&qword_2802A56B0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  sub_268946C8C(a1, boxed_opaque_existential_1);
  sub_2689A9870(&qword_2802A58E0);
  if (sub_268B37834())
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v8, v2);
    v9 = sub_268B37A34();
    v10 = sub_268B37F04();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2688BB000, v9, v10, "Found home automation nodes, attempting to map them to SiriKit intent", v11, 2u);
      MEMORY[0x26D6266E0](v11, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_268B3BBA0;
    v13 = v24;
    v14 = __swift_project_boxed_opaque_existential_1(v23, v24);
    v15 = *(*(v13 - 8) + 64);
    MEMORY[0x28223BE20](v14);
    v17 = &v23[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v17);
    *(v12 + 32) = sub_268A91478(v17);
    v19 = off_287959EC8;
    v20 = type metadata accessor for SeekTimeIntent();
    v19(v12, v20, &off_287959EA8);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v23);
}

void sub_268A52C08(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = var50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MediaPlayerIntent();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = var50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v11);
  v12 = &v11[*(v8 + 100)];
  v14 = *v12;
  v13 = v12[1];

  sub_2688C2F6C(v11);
  if (v13)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v15, v2);
    v16 = sub_268B37A34();
    v17 = sub_268B37F04();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "Found destination device id in the intent. parsing the routes and setting disambiguated to true", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v19 = sub_268B18100();
    if (v19)
    {
      v20 = v19;
      if (sub_2688EFD0C(v19))
      {
        sub_2688EFD10(0, (v20 & 0xC000000000000001) == 0, v20);
        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x26D625BD0](0, v20);
        }

        else
        {
          v21 = *(v20 + 32);
        }

        v22 = v21;

        v23 = sub_268B37BC4();

        [v22 setRouteId_];

        sub_2688C063C();
        v24 = sub_268B38054();
        [v22 setDisambiguated_];

        goto LABEL_13;
      }
    }

    type metadata accessor for Device();
    LOBYTE(v31) = 0;
    sub_268983F14(v14, v13, 0, 0, 0, 0, 0, 0, 0, v31, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10]);
    v26 = v25;
    sub_2688C063C();
    v27 = sub_268B38054();
    [v26 setDisambiguated_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_268B3BBA0;
    *(v28 + 32) = v26;
    v29 = off_287959EC8;
    v30 = type metadata accessor for SeekTimeIntent();
    v24 = v26;
    v29(v28, v30, &off_287959EA8);
LABEL_13:
  }
}

void sub_268A52FCC(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MediaPlayerIntent();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v10);
  sub_2689A9870(&qword_2802A58E0);
  v11 = sub_268B37854();
  sub_2688C2F6C(v10);
  v12 = *(v11 + 16);
  if (v12)
  {
    v25 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for DeviceQuery();
    v13 = v11 + 32;
    do
    {
      sub_26890C900(v13, v24);
      sub_26890C900(v24, v23);
      sub_268AC88F0(v23);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      sub_268B38214();
      v14 = *(v25 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      v13 += 40;
      --v12;
    }

    while (v12);

    v15 = v25;
    v16 = off_28795BB18;
    v17 = type metadata accessor for SeekTimeIntent();
    v16(v15, v17, &off_28795BB08);
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v18, v2);
    v19 = sub_268B37A34();
    v20 = sub_268B37ED4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2688BB000, v19, v20, "Home Automation entities are empty, skip adding to intent.", v21, 2u);
      MEMORY[0x26D6266E0](v21, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_268A532E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FA8, &unk_268B3DEF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id OUTLINED_FUNCTION_0_36(uint64_t a1)
{

  return [v1 (v2 + 3401)];
}

id sub_268A53374()
{
  if (qword_2802A4F20 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CDA00;
  qword_2802CD9E8 = qword_2802CDA00;

  return v1;
}

void sub_268A533D8()
{
  OUTLINED_FUNCTION_26();
  v139 = v0;
  v135 = v1;
  v136 = v2;
  v4 = v3;
  v6 = v5;
  v134 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_74();
  v132 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v14 = OUTLINED_FUNCTION_22(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v127 = v17;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_78();
  v130 = v19;
  OUTLINED_FUNCTION_9();
  v131 = sub_268B34E24();
  v20 = OUTLINED_FUNCTION_1(v131);
  v129 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v128 = v25 - v24;
  OUTLINED_FUNCTION_9();
  v26 = sub_268B35044();
  v27 = OUTLINED_FUNCTION_1(v26);
  v137 = v28;
  v138 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_0();
  v33 = v32 - v31;
  v34 = sub_268B37A54();
  v35 = OUTLINED_FUNCTION_1(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3();
  v126 = v40;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v41);
  v43 = &v122 - v42;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v44 = __swift_project_value_buffer(v34, qword_2802CDA10);
  v124 = *(v37 + 16);
  v125 = v44;
  v124(v43);
  v45 = sub_268B37A34();
  v46 = sub_268B37ED4();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = OUTLINED_FUNCTION_14();
    v123 = v37;
    *v47 = 0;
    _os_log_impl(&dword_2688BB000, v45, v46, "SetSubtitleStateHandleIntentStrategy.makeIntentHandledResponse()", v47, 2u);
    v37 = v123;
    OUTLINED_FUNCTION_12();
  }

  v48 = *(v37 + 8);
  v48(v43, v34);
  sub_268A82B50(v6, v33);
  v49 = sub_268AAC1F4((v139 + 16));
  v50 = OBJC_IVAR___SetSubtitleStateIntentResponse_code;
  swift_beginAccess();
  v51 = *(v50 + v4);
  if (v51 == 102)
  {
    OUTLINED_FUNCTION_17_12();
    v81 = v4;
    v82 = v6;
    v83 = swift_allocObject();
    v84 = v139;
    v83[2] = v139;
    v83[3] = v82;
    v86 = v134;
    v85 = v135;
    v83[4] = v81;
    v83[5] = v86;
    v83[6] = v49;
    v83[7] = v85;
    v83[8] = v136;
    v133 = v33;
    v87 = v84[10];
    v135 = v84[11];
    __swift_project_boxed_opaque_existential_1(v84 + 7, v87);

    v88 = v82;
    v89 = v81;

    sub_2689CE88C(0xD000000000000023, 0x8000000268B5B920, sub_268A56B64, v83, v87, v135);

LABEL_27:
    (*(v137 + 8))(v133, v138);
    goto LABEL_28;
  }

  if (v51 == 100)
  {
    v75 = v4;
    v76 = v6;
    v77 = [v6 language];
    v133 = v33;
    if (v77)
    {
      v78 = sub_268A56AF0(v77);
      v80 = v79;
    }

    else
    {
      v78 = 0;
      v80 = 0;
    }

    OUTLINED_FUNCTION_17_12();
    v111 = swift_allocObject();
    v111[2] = v139;
    v111[3] = v76;
    v113 = v134;
    v112 = v135;
    v111[4] = v75;
    v111[5] = v113;
    v111[6] = v49;
    v111[7] = v112;
    v111[8] = v136;

    v114 = v76;
    v115 = v75;

    sub_268A365F4(v78, v80, sub_268A56B6C, v111);

    goto LABEL_27;
  }

  if (v51 != 4)
  {

    sub_268B36E84();
    v133 = v33;
    if (!v90)
    {
      OUTLINED_FUNCTION_14_18();
      sub_268947F08();
    }

    OUTLINED_FUNCTION_59_0((v139 + 96), *(v139 + 120));
    (*(v129 + 104))(v128, *MEMORY[0x277D5BC00], v131);
    v91 = sub_268B350F4();
    v92 = v130;
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v91);
    v96 = *MEMORY[0x277D5B908];
    v97 = sub_268B34B94();
    OUTLINED_FUNCTION_4(v97);
    (*(v98 + 104))(v132, v96, v97);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v99, v100, v101, v97);
    v102 = *v50;
    v103 = v127;
    sub_2688F1FA4(v92, v127, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v103, 1, v91) == 1)
    {
      sub_2688C058C(v103, &unk_2802A57B0, &unk_268B3CE00);
      v104 = 0;
    }

    else
    {
      sub_268B350B4();
      v104 = v105;
      (*(*(v91 - 8) + 8))(v103, v91);
    }

    v106 = v128;
    v107 = v132;
    sub_2688E2F3C();

    sub_2688C058C(v107, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v130, &unk_2802A57B0, &unk_268B3CE00);
    (*(v129 + 8))(v106, v131);
    OUTLINED_FUNCTION_59_0((v139 + 96), *(v139 + 120));
    sub_2688C2ECC();
    v109 = OUTLINED_FUNCTION_26_1();
    v110 = 96;
    goto LABEL_26;
  }

  v52 = [v6 device];
  if (!v52)
  {
    v133 = v33;

    v116 = v126;
    (v124)(v126, v125, v34);
    v104 = sub_268B37A34();
    v117 = sub_268B37EE4();
    if (os_log_type_enabled(v104, v117))
    {
      v118 = OUTLINED_FUNCTION_14();
      *v118 = 0;
      _os_log_impl(&dword_2688BB000, v104, v117, "No device present in intent", v118, 2u);
      OUTLINED_FUNCTION_12();
    }

    v48(v116, v34);
    OUTLINED_FUNCTION_59_0((v139 + 96), *(v139 + 120));
    sub_2688C2ECC();
    v109 = OUTLINED_FUNCTION_26_1();
    v110 = 95;
LABEL_26:
    *v108 = v110;
    v119.isa = v104->isa;
    sub_26894B450();

    v120 = OUTLINED_FUNCTION_26_1();
    *v121 = v110;
    v143[0] = v120;
    LOBYTE(v143[5]) = 1;
    (v135)(v143);
    sub_2688C058C(v143, &unk_2802A57C0, &qword_268B3BE00);
    goto LABEL_27;
  }

  v53 = v52;
  LOWORD(v141[0]) = 0;
  BYTE2(v141[0]) = 0;
  v141[1] = 0;
  v141[2] = 0;
  v54 = v6;
  v55 = 1;
  v141[3] = 1;
  memset(&v141[4], 0, 61);
  memcpy(v142, &v141[1], 0x51uLL);
  sub_2688C058C(v142, &qword_2802A5C88, qword_268B418C0);
  LODWORD(v141[1]) = 0;
  memset(&v141[2], 0, 72);
  LOBYTE(v141[11]) = 1;
  BYTE3(v141[11]) = [v54 enable] == 2;
  if ([v54 type] != 2)
  {
    v55 = [v54 type] == 3;
  }

  BYTE4(v141[11]) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_268B3BBA0;
  *(v56 + 32) = v53;
  v57 = v53;
  sub_268AE3E5C(v56, v58, v59, v60, v61, v62, v63, v64, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);

  memcpy(v143, v141, 0x5DuLL);
  OUTLINED_FUNCTION_17_12();
  v65 = swift_allocObject();
  v65[2] = v139;
  v65[3] = v54;
  v65[4] = v4;
  v66 = v135;
  v65[5] = v134;
  v65[6] = v49;
  v67 = v136;
  v65[7] = v66;
  v65[8] = v67;

  v68 = v54;
  v69 = v4;

  sub_268A3B548(v143, sub_268A56BD0, v65, v70, v71, v72, v73, v74, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140[0], v140[1], v140[2], v140[3], v140[4], v140[5], v140[6], v140[7], v140[8], v140[9], v140[10], v140[11], v140[12], v141[0], v141[1], v141[2], v141[3], v141[4]);

  (*(v137 + 8))(v33, v138);
  memcpy(v140, v141, 0x5DuLL);
  sub_268A3D468(v140);
LABEL_28:
  OUTLINED_FUNCTION_23();
}

void sub_268A53EA0()
{
  OUTLINED_FUNCTION_26();
  v93 = v1;
  v94 = v0;
  v85 = v2;
  v86 = v3;
  v92 = v4;
  v95 = v5;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_74();
  v87 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v16 = OUTLINED_FUNCTION_22(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_20_0();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_78();
  v90 = v23;
  OUTLINED_FUNCTION_9();
  v91 = sub_268B34E24();
  v24 = OUTLINED_FUNCTION_1(v91);
  v89 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v88 = v29 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v31 = OUTLINED_FUNCTION_4(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_20_0();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v85 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v43);
  v45 = (&v85 - v44);
  sub_2688F1FA4(v9, &v85 - v44, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = *v45;
    v47 = sub_268B36E84();
    if (v48)
    {
      v86 = v47;
    }

    else
    {
      swift_getErrorValue();
      v45 = v98;
      sub_268B384A4();
      OUTLINED_FUNCTION_25_12();
      OUTLINED_FUNCTION_14_18();
      sub_268947F08();
      v86 = v62;
    }

    v63 = v87;
    OUTLINED_FUNCTION_59_0(v7 + 12, v7[15]);
    (*(v89 + 104))(v88, *MEMORY[0x277D5BC00], v91);
    v64 = sub_268B350F4();
    v65 = v90;
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v64);
    v69 = *MEMORY[0x277D5B8E0];
    v70 = sub_268B34B94();
    OUTLINED_FUNCTION_4(v70);
    (*(v71 + 104))(v63, v69, v70);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v70);
    v75 = *v45;
    sub_2688F1FA4(v65, v21, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v21, 1, v64) == 1)
    {
      sub_2688C058C(v21, &unk_2802A57B0, &unk_268B3CE00);
      v76 = 0;
    }

    else
    {
      sub_268B350B4();
      v76 = v77;
      (*(*(v64 - 8) + 8))(v21, v64);
    }

    v78 = v88;
    sub_2688E2F3C();

    sub_2688C058C(v63, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v90, &unk_2802A57B0, &unk_268B3CE00);
    (*(v89 + 8))(v78, v91);
    OUTLINED_FUNCTION_59_0(v7 + 12, v7[15]);
    sub_2688C2ECC();
    v79 = swift_allocError();
    *v80 = 89;
    v81 = *v76;
    sub_26894B450();

    v96[0] = v46;
    v97 = 1;
    v82 = v46;
    v94(v96);

    sub_2688C058C(v96, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v45, v39);
    v49 = v7[26];
    OUTLINED_FUNCTION_59_0(v7 + 22, v7[25]);
    v50 = sub_268B36FA4();
    sub_2688F1FA4(v39, v36, &unk_2802A56E0, &unk_268B3CDF0);
    v51 = *(v36 + *(v30 + 48));
    v52 = OUTLINED_FUNCTION_7_23();
    if (v50)
    {
      sub_268A54474(v52, v53, v54, v55, v56, v57, v58, v59, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
    }

    else
    {
      sub_268A54C88(v52, v53, v54, v55, v56, v57, v58, v59, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
    }

    sub_2688C058C(v39, &unk_2802A56E0, &unk_268B3CDF0);
    v60 = sub_268B350F4();
    OUTLINED_FUNCTION_4(v60);
    (*(v61 + 8))(v36);
  }

  OUTLINED_FUNCTION_23();
}

void sub_268A54474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_26();
  v22 = v21;
  v134 = v23;
  LODWORD(v120) = v24;
  v133 = v25;
  v126 = v26;
  v28 = v27;
  v30 = v29;
  v142 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_74();
  v132 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_74();
  v130 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v43 = OUTLINED_FUNCTION_22(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3();
  v125 = v46;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_78();
  v138 = v48;
  OUTLINED_FUNCTION_9();
  v139 = sub_268B34E24();
  v49 = OUTLINED_FUNCTION_1(v139);
  v137 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_1_0();
  v136 = v54 - v53;
  OUTLINED_FUNCTION_9();
  v55 = sub_268B37A54();
  v56 = OUTLINED_FUNCTION_1(v55);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_3();
  v127 = v61;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v62);
  v64 = &v120 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v66 = OUTLINED_FUNCTION_4(v65);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_3();
  v131 = v69;
  OUTLINED_FUNCTION_8();
  v71 = MEMORY[0x28223BE20](v70);
  v73 = &v120 - v72;
  MEMORY[0x28223BE20](v71);
  v75 = &v120 - v74;
  v76 = sub_268B350F4();
  v141 = *(v76 - 8);
  (*(v141 + 16))(v75, v142, v76);
  v140 = v65;
  v77 = *(v65 + 48);
  v142 = v75;
  *&v75[v77] = v30;
  v78 = qword_2802A4F30;
  v79 = v30;
  if (v78 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v80 = __swift_project_value_buffer(v55, qword_2802CDA10);
  v81 = *(v58 + 16);
  v123 = v80;
  v124 = v58 + 16;
  v122 = v81;
  (v81)(v64);
  v82 = sub_268B37A34();
  v83 = sub_268B37ED4();
  v84 = os_log_type_enabled(v82, v83);
  v135 = v28;
  if (v84)
  {
    v85 = OUTLINED_FUNCTION_14();
    *v85 = 0;
    _os_log_impl(&dword_2688BB000, v82, v83, "SetSubtitleStateHandleIntentStrategy#intentHandledResponse...", v85, 2u);
    OUTLINED_FUNCTION_12();
  }

  v86 = *(v58 + 8);
  v128 = v58 + 8;
  v121 = v86;
  v86(v64, v55);
  OUTLINED_FUNCTION_14_18();
  sub_268947F08();
  v87 = v120;
  v129 = v55;
  if (v120 != 24)
  {

    sub_26894BC08(v87);
    OUTLINED_FUNCTION_25_12();
    OUTLINED_FUNCTION_14_18();
    sub_268947F08();
  }

  v88 = v130;
  v120 = a21;
  OUTLINED_FUNCTION_59_0(v22 + 12, v22[15]);
  (*(v137 + 104))(v136, *MEMORY[0x277D5BC10], v139);
  sub_2688F1FA4(v142, v73, &unk_2802A56E0, &unk_268B3CDF0);

  v89 = v141;
  v90 = v138;
  (*(v141 + 32))(v138, v73, v76);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v76);
  sub_268B34B94();
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
  v98 = *v87;
  v99 = v90;
  v100 = v125;
  sub_2688F1FA4(v99, v125, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v100, 1, v76) == 1)
  {
    sub_2688C058C(v100, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v89 + 8))(v100, v76);
  }

  v130 = v76;
  v102 = v135;
  v101 = v136;
  sub_2688E2F3C();

  sub_2688C058C(v88, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v138, &unk_2802A57B0, &unk_268B3CE00);
  (*(v137 + 8))(v101, v139);
  v103 = *__swift_project_boxed_opaque_existential_1(v22 + 12, v22[15]);
  sub_268948308(MEMORY[0x277D84F90]);
  v104 = __swift_project_boxed_opaque_existential_1(v22 + 12, v22[15]);
  OUTLINED_FUNCTION_7_16(v104);
  v105 = v127;
  v106 = v129;
  v122(v127, v123, v129);
  v107 = sub_268B37A34();
  v108 = sub_268B37ED4();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = OUTLINED_FUNCTION_14();
    *v109 = 0;
    _os_log_impl(&dword_2688BB000, v107, v108, "SetSubtitleStateHandleIntentStrategy#intentHandledResponse returning output", v109, 2u);
    OUTLINED_FUNCTION_12();
  }

  v121(v105, v106);
  v110 = v22[35];
  v111 = v22[36];
  OUTLINED_FUNCTION_59_0(v22 + 32, v110);
  v112 = v142;
  v113 = v131;
  sub_2688F1FA4(v142, v131, &unk_2802A56E0, &unk_268B3CDF0);
  v114 = *(v113 + *(v140 + 48));
  v115 = v132;
  sub_268A82B50(v102, v132);
  sub_268B35044();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v119);
  (*(v111 + 8))(v113, v114, v115, v133, 1, v134, v120, v110, v111);

  sub_2688C058C(v115, &qword_2802A57F0, &qword_268B3DDB0);
  sub_2688C058C(v112, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v141 + 8))(v113, v130);
  OUTLINED_FUNCTION_23();
}

void sub_268A54C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_26();
  v22 = v21;
  v119 = v23;
  LODWORD(v121) = v24;
  v129 = v25;
  v123 = v26;
  v124 = v27;
  v29 = v28;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_74();
  v127 = v36;
  OUTLINED_FUNCTION_9();
  v128 = sub_268B35044();
  v37 = OUTLINED_FUNCTION_1(v128);
  v126 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_0();
  v125 = v42 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_74();
  v134 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v49 = OUTLINED_FUNCTION_22(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_3();
  v122 = v52;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_78();
  v132 = v54;
  OUTLINED_FUNCTION_9();
  v133 = sub_268B34E24();
  v55 = OUTLINED_FUNCTION_1(v133);
  v131 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_1_0();
  v130 = v60 - v59;
  OUTLINED_FUNCTION_9();
  v61 = sub_268B37A54();
  v62 = OUTLINED_FUNCTION_1(v61);
  v64 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_1_0();
  v69 = v68 - v67;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v71 = OUTLINED_FUNCTION_4(v70);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_20_0();
  v76 = v74 - v75;
  MEMORY[0x28223BE20](v77);
  v79 = &v118 - v78;
  v80 = sub_268B350F4();
  v120 = *(v80 - 8);
  (*(v120 + 16))(v79, v31, v80);
  v81 = *(v70 + 48);
  v135 = v79;
  *&v79[v81] = v29;
  v82 = qword_2802A4F30;
  v83 = v29;
  if (v82 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v84 = __swift_project_value_buffer(v61, qword_2802CDA10);
  (*(v64 + 16))(v69, v84, v61);
  v85 = sub_268B37A34();
  v86 = sub_268B37ED4();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = OUTLINED_FUNCTION_14();
    *v87 = 0;
    _os_log_impl(&dword_2688BB000, v85, v86, "SetSubtitleStateHandleIntentStrategy#legacyHandledResponse...", v87, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v64 + 8))(v69, v61);
  OUTLINED_FUNCTION_14_18();
  v88 = v124;
  sub_268947F08();
  v89 = v121;
  v90 = v120;
  if (v121 != 24)
  {

    sub_26894BC08(v89);
    OUTLINED_FUNCTION_25_12();
    OUTLINED_FUNCTION_14_18();
    sub_268947F08();
  }

  v121 = a21;
  OUTLINED_FUNCTION_59_0(v22 + 12, v22[15]);
  (*(v131 + 104))(v130, *MEMORY[0x277D5BC10], v133);
  sub_2688F1FA4(v135, v76, &unk_2802A56E0, &unk_268B3CDF0);

  v91 = *(v90 + 32);
  v92 = v90;
  v93 = v132;
  v91(v132, v76, v80);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v80);
  sub_268B34B94();
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
  v101 = *v89;
  v102 = v122;
  sub_2688F1FA4(v93, v122, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v102, 1, v80) == 1)
  {
    sub_2688C058C(v102, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v92 + 8))(v102, v80);
  }

  v103 = v125;
  v104 = v130;
  v105 = v134;
  sub_2688E2F3C();

  sub_2688C058C(v105, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v132, &unk_2802A57B0, &unk_268B3CE00);
  (*(v131 + 8))(v104, v133);
  v106 = *__swift_project_boxed_opaque_existential_1(v22 + 12, v22[15]);
  sub_268948308(MEMORY[0x277D84F90]);
  v107 = __swift_project_boxed_opaque_existential_1(v22 + 12, v22[15]);
  OUTLINED_FUNCTION_7_16(v107);
  sub_268A82B50(v88, v103);
  v138[3] = sub_268B354F4();
  v138[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v138);
  v108 = 0;
  if (sub_2689F0948())
  {
    v108 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
    sub_2688C063C();
    v109 = sub_268B38064();
    [v108 setMinimumAutoDismissalTimeInMs_];

    [v108 setPremptivelyResumeMedia_];
  }

  v110 = v22[6];
  OUTLINED_FUNCTION_59_0(v22 + 2, v22[5]);
  sub_268B34CA4();
  v112 = v126;
  v111 = v127;
  v113 = v128;
  (*(v126 + 16))(v127, v103, v128);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v114, v115, v116, v113);
  v137 = 0;
  memset(v136, 0, sizeof(v136));
  v117 = v135;
  sub_268B34EF4();

  sub_2688C058C(v136, &unk_2802A5800, &unk_268B3CE10);
  sub_2688C058C(v111, &qword_2802A57F0, &qword_268B3DDB0);
  (*(v112 + 8))(v103, v113);
  v139 = 0;
  v119(v138);
  sub_2688C058C(v117, &unk_2802A56E0, &unk_268B3CDF0);
  sub_2688C058C(v138, &unk_2802A57C0, &qword_268B3BE00);
  OUTLINED_FUNCTION_23();
}

void sub_268A55520()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v37 = v2;
  v38 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_268B37A54();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v18 = v17 - v16;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v19 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v13 + 16))(v18, v19, v10);
  v20 = sub_268B37A34();
  v21 = sub_268B37ED4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_14();
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "SetSubtitleStateHandleIntentStrategy.makeFailureHandlingIntentResponse()", v22, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v13 + 8))(v18, v10);
  v23 = sub_268B36E84();
  if (v24)
  {
    v25 = v23;
    v26 = v24;
  }

  else
  {
    v27 = OBJC_IVAR___SetSubtitleStateIntentResponse_code;
    swift_beginAccess();
    v40 = *&v27[v5];
    sub_268B38404();
    OUTLINED_FUNCTION_25_12();
    sub_268947F08();
    v25 = v28;
    v26 = v29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000268B572E0;
  v31 = OBJC_IVAR___SetSubtitleStateIntentResponse_code;
  swift_beginAccess();
  v39 = *&v31[v5];
  sub_268B38404();
  v32 = sub_268B36E94();
  v34 = v33;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v32;
  *(inited + 56) = v34;
  sub_268B37B84();
  [v7 enable];
  OUTLINED_FUNCTION_17_12();
  v35 = swift_allocObject();
  v35[2] = v1;
  v35[3] = v9;
  v35[4] = v7;
  v35[5] = v25;
  v35[6] = v26;
  v35[7] = v37;
  v35[8] = v38;

  v36 = v7;

  sub_268A38940();

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A55884(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v124 = a7;
  v125 = a8;
  v122 = a5;
  v123 = a6;
  v126 = a4;
  v127 = a2;
  v121 = a3;
  v117 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v116 = &v107 - v10;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v11 = *(*(v120 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v120);
  v115 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v109 = &v107 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v107 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v113 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v112 = &v107 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v110 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v119 = &v107 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v107 - v30;
  MEMORY[0x28223BE20](v29);
  v111 = &v107 - v32;
  v33 = sub_268B34E24();
  v128 = *(v33 - 8);
  v129 = v33;
  v34 = *(v128 + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v118 = &v107 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v108 = &v107 - v37;
  v38 = sub_268B37A54();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v114 = &v107 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v107 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v107 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v51 = (&v107 - v50);
  sub_2688F1FA4(v117, &v107 - v50, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52 = *v51;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v53 = __swift_project_value_buffer(v38, qword_2802CDA10);
    (*(v39 + 16))(v47, v53, v38);
    v54 = sub_268B37A34();
    v55 = sub_268B37EE4();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v127;
    v58 = v108;
    if (v56)
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_2688BB000, v54, v55, "SetSubtitleStateHandleIntentStrategy#makeFailureHandlingIntentResponse failed to execute dialog", v59, 2u);
      MEMORY[0x26D6266E0](v59, -1, -1);
    }

    (*(v39 + 8))(v47, v38);
    v60 = __swift_project_boxed_opaque_existential_1(v57 + 12, v57[15]);
    (*(v128 + 104))(v58, *MEMORY[0x277D5BC00], v129);
    v61 = sub_268B350F4();
    v62 = v111;
    __swift_storeEnumTagSinglePayload(v111, 1, 1, v61);
    v63 = *MEMORY[0x277D5B8E0];
    v64 = sub_268B34B94();
    v65 = v112;
    (*(*(v64 - 8) + 104))(v112, v63, v64);
    __swift_storeEnumTagSinglePayload(v65, 0, 1, v64);
    v66 = *v60;
    sub_2688F1FA4(v62, v31, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v31, 1, v61) == 1)
    {
      sub_2688C058C(v31, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v61 - 8) + 8))(v31, v61);
    }

    sub_2688E2F3C();

    sub_2688C058C(v65, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v62, &unk_2802A57B0, &unk_268B3CE00);
    (*(v128 + 8))(v58, v129);
    v83 = __swift_project_boxed_opaque_existential_1(v57 + 12, v57[15]);
    sub_2688C2ECC();
    v84 = swift_allocError();
    *v85 = -65;
    v86 = *v83;
    sub_26894B450();

    v87 = swift_allocError();
    *v88 = -65;
    v130[0] = v87;
    v131 = 1;
    v124(v130);

    return sub_2688C058C(v130, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v51, v17);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v67 = __swift_project_value_buffer(v38, qword_2802CDA10);
    v68 = *(v39 + 16);
    v108 = v67;
    v107 = v68;
    (v68)(v45);
    v69 = sub_268B37A34();
    v70 = sub_268B37ED4();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_2688BB000, v69, v70, "SetSubtitleStateHandleIntentStrategy#makeFailureHandlingIntentResponse executed failure dialog creating output", v71, 2u);
      MEMORY[0x26D6266E0](v71, -1, -1);
    }

    v72 = *(v39 + 8);
    v112 = (v39 + 8);
    v72(v45, v38);
    v73 = __swift_project_boxed_opaque_existential_1(v127 + 12, v127[15]);
    (*(v128 + 104))(v118, *MEMORY[0x277D5BC00], v129);
    v117 = v17;
    v74 = v109;
    sub_2688F1FA4(v17, v109, &unk_2802A56E0, &unk_268B3CDF0);

    v75 = sub_268B350F4();
    v76 = *(v75 - 8);
    v77 = v119;
    (*(v76 + 32))(v119, v74, v75);
    __swift_storeEnumTagSinglePayload(v77, 0, 1, v75);
    v78 = sub_268B34B94();
    v79 = v113;
    __swift_storeEnumTagSinglePayload(v113, 1, 1, v78);
    v80 = *v73;
    v81 = v110;
    sub_2688F1FA4(v77, v110, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v81, 1, v75);
    v111 = v76;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v81, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v76 + 8))(v81, v75);
    }

    v90 = v114;
    v91 = v118;
    sub_2688E2F3C();

    sub_2688C058C(v79, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v119, &unk_2802A57B0, &unk_268B3CE00);
    (*(v128 + 8))(v91, v129);
    v92 = v127;
    v93 = __swift_project_boxed_opaque_existential_1(v127 + 12, v127[15]);
    sub_2688C2ECC();
    v94 = swift_allocError();
    *v95 = 97;
    v96 = *v93;
    sub_26894B450();

    v107(v90, v108, v38);
    v97 = sub_268B37A34();
    v98 = sub_268B37ED4();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_2688BB000, v97, v98, "SetSubtitleStateHandleIntentStrategy#makeFailureHandlingIntentResponse returning failure output", v99, 2u);
      MEMORY[0x26D6266E0](v99, -1, -1);
    }

    v72(v90, v38);
    v100 = v92[35];
    v101 = v92[36];
    __swift_project_boxed_opaque_existential_1(v92 + 32, v100);
    v102 = v117;
    v103 = v115;
    sub_2688F1FA4(v117, v115, &unk_2802A56E0, &unk_268B3CDF0);
    v104 = *(v103 + *(v120 + 48));
    v105 = v116;
    sub_268A82B50(v126, v116);
    v106 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v105, 0, 1, v106);
    (*(v101 + 8))(v103, v104, v105, MEMORY[0x277D84F90], 0, v124, v125, v100, v101);

    sub_2688C058C(v105, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v102, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v111 + 8))(v103, v75);
  }
}

uint64_t sub_268A565E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetSubtitleStateHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A56664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetSubtitleStateHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A566E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetSubtitleStateHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A56780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetSubtitleStateHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A567FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetSubtitleStateHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_268A5689C()
{
  if (qword_2802A4F08 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9E8;

  return v1;
}

uint64_t sub_268A568F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetSubtitleStateHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A56948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SetSubtitleStateHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A5699C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetSubtitleStateHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

unint64_t sub_268A56A08(uint64_t a1)
{
  result = sub_268A56A30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268A56A30()
{
  result = qword_2802A78C0;
  if (!qword_2802A78C0)
  {
    type metadata accessor for SetSubtitleStateHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A78C0);
  }

  return result;
}

uint64_t sub_268A56A88()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  OUTLINED_FUNCTION_17_12();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_268A56AF0(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_268B37BF4();

  return v3;
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  OUTLINED_FUNCTION_17_12();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

void sub_268A56BD8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  sub_268A53EA0();
}

uint64_t OUTLINED_FUNCTION_7_23()
{
  v7 = *(v1 - 192);
  result = v0;
  v4 = *(v1 - 184);
  v3 = *(v1 - 176);
  v5 = *(v1 - 200);
  v6 = *(v1 - 248);
  return result;
}

Swift::String_optional __swiftcall UsoTask_disable_common_Setting.verb()()
{
  if (sub_268A56D8C() == 3)
  {
    if (sub_2689B83B8() == 5)
    {
      sub_268B36334();
      if (v6 && (sub_268962A68(), v1 = v0, v2 = v0, , v2 != 24))
      {
        v3 = sub_26893E3F8(v1);
      }

      else
      {
        v3 = 0;
        v4 = 0;
      }
    }

    else
    {
      v4 = 0xE700000000000000;
      v3 = 0x656C6261736964;
    }
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 7628147;
  }

  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_268A56D8C()
{
  if (sub_268A9EA44() >= 3u)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268A56DDC()
{
  v0 = sub_268A9EA44();
  if (v0 >= 3u)
  {
    return 7;
  }

  else
  {
    return 0x50506u >> (8 * v0);
  }
}

uint64_t UsoTask_disable_common_Setting.shouldHandle(requestContext:)@<X0>(char *a1@<X8>)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v48 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v48 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v48 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v48 - v17;
  v19 = sub_268B36334();
  if (v48[1])
  {
    sub_2689633E8();
    if (v20)
    {
      if (qword_2802A4F30 != -1)
      {
        v20 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_1_28(v20, qword_2802CDA10);
      v21(v18);
      v22 = sub_268B37A34();
      v23 = sub_268B37F04();
      if (OUTLINED_FUNCTION_2_19(v23))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_22_6(&dword_2688BB000, v24, v25, "UsoTask_disable_common_Setting#shouldHandle Task is mediaPlayer. Handling in controls");
        OUTLINED_FUNCTION_12();
      }

      v26 = 0;
    }

    else
    {
      sub_268964334();
      if ((v31 & 1) != 0 && (sub_268963658(), (v32 & 1) == 0))
      {
        if (qword_2802A4F30 != -1)
        {
          v32 = OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_1_28(v32, qword_2802CDA10);
        v42(v16);
        v43 = sub_268B37A34();
        v44 = sub_268B37F04();
        if (OUTLINED_FUNCTION_2_19(v44))
        {
          *OUTLINED_FUNCTION_14() = 0;
          OUTLINED_FUNCTION_22_6(&dword_2688BB000, v45, v46, "UsoTask_disable_common_Setting#shouldHandle Task is media. Handling in controls");
          OUTLINED_FUNCTION_12();
        }

        v26 = 1;
        v18 = v16;
      }

      else
      {
        sub_268963658();
        if (v33)
        {
          if (qword_2802A4F30 != -1)
          {
            v33 = OUTLINED_FUNCTION_0_0();
          }

          OUTLINED_FUNCTION_1_28(v33, qword_2802CDA10);
          v34(v13);
          v35 = sub_268B37A34();
          v36 = sub_268B37F04();
          if (OUTLINED_FUNCTION_2_19(v36))
          {
            v37 = OUTLINED_FUNCTION_14();
            *v37 = 0;
            _os_log_impl(&dword_2688BB000, v35, v10, "UsoTask_disable_common_Setting#shouldHandle Task is settings. Handling in controls", v37, 2u);
            OUTLINED_FUNCTION_12();
          }

          v26 = 2;
          v18 = v13;
        }

        else
        {
          if (qword_2802A4F30 != -1)
          {
            v33 = OUTLINED_FUNCTION_0_0();
          }

          OUTLINED_FUNCTION_1_28(v33, qword_2802CDA10);
          v38(v10);
          v39 = sub_268B37A34();
          v40 = sub_268B37EE4();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = OUTLINED_FUNCTION_14();
            *v41 = 0;
            _os_log_impl(&dword_2688BB000, v39, v40, "UsoTask_disable_common_Setting#shouldHandle Task is not mediaPlayer/media/setting: Not handling in controls", v41, 2u);
            OUTLINED_FUNCTION_12();
          }

          v26 = 3;
          v18 = v10;
        }
      }
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      v19 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_1_28(v19, qword_2802CDA10);
    v27(v7);
    v28 = sub_268B37A34();
    v29 = sub_268B37EE4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_14();
      *v30 = 0;
      _os_log_impl(&dword_2688BB000, v28, v29, "UsoTask_disable_common_Setting#shouldHandle no referenced setting found in task. Not handling in Controls", v30, 2u);
      OUTLINED_FUNCTION_12();
    }

    v26 = 3;
    v18 = v7;
  }

  result = (*(v3 + 8))(v18, v2);
  *a1 = v26;
  return result;
}

uint64_t sub_268A57394(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A573E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A5743C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A57490(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A574E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A57538(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A5758C()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A575E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A57644()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A57698(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A576FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A57760()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A577C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A57828(uint64_t a1)
{
  result = sub_268A578D4(&qword_2802A78C8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A578D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B360C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t GroupType.description.getter(uint64_t a1)
{
  result = 0x6F7373656363612ELL;
  switch(a1)
  {
    case 0:
      result = 0x6E776F6E6B6E752ELL;
      break;
    case 1:
      result = 0x6D6F6F722ELL;
      break;
    case 3:
      return result;
    case 4:
      result = 0x687779726576652ELL;
      break;
    case 5:
      result = 0x6C61636F6C2ELL;
      break;
    case 6:
      result = 0x657265682ELL;
      break;
    case 7:
      result = 0x546563697665642ELL;
      break;
    case 8:
      result = 0x697665446C6C612ELL;
      break;
    default:
      sub_268B381C4();

      v3 = sub_268B38404();
      MEMORY[0x26D625650](v3);

      MEMORY[0x26D625650](41, 0xE100000000000000);
      result = 0x64657070616D6E75;
      break;
  }

  return result;
}

uint64_t sub_268A57AEC(uint64_t a1)
{
  v2 = sub_268B37564();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268B37A54();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F10 != -1)
  {
    swift_once();
  }

  v18 = qword_2802CD9F0;
  if (*(qword_2802CD9F0 + 16) && (v19 = sub_268A75BA0(), (v20 & 1) != 0))
  {
    v21 = *(*(v18 + 56) + 8 * v19);
    (*(v5 + 8))(a1, v2);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v10, qword_2802CDA10);
    (*(v13 + 16))(v17, v22, v10);
    (*(v5 + 16))(v9, a1, v2);
    v23 = sub_268B37A34();
    v24 = sub_268B37EE4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v38 = v10;
      v26 = v25;
      v27 = swift_slowAlloc();
      v37 = v13;
      v28 = v27;
      v39 = v27;
      *v26 = 136446210;
      v29 = sub_268B37554();
      v36 = a1;
      v31 = v30;
      v32 = *(v5 + 8);
      v32(v9);
      v33 = sub_26892CDB8(v29, v31, &v39);

      *(v26 + 4) = v33;
      _os_log_impl(&dword_2688BB000, v23, v24, "Cannot convert value %{public}s to GroupType", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x26D6266E0](v28, -1, -1);
      MEMORY[0x26D6266E0](v26, -1, -1);

      (v32)(v36, v2);
      (*(v37 + 8))(v17, v38);
    }

    else
    {

      v34 = *(v5 + 8);
      v34(a1, v2);
      v34(v9, v2);
      (*(v13 + 8))(v17, v10);
    }

    return 0;
  }

  return v21;
}

uint64_t sub_268A57E78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A78E0, &qword_268B48058);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A78E8, &unk_268B48060) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_268B414D0;
  v4 = v3 + v2;
  v5 = v0[14];
  v6 = *MEMORY[0x277D5F8F8];
  v7 = sub_268B37564();
  v8 = *(*(v7 - 8) + 104);
  v8(v4, v6, v7);
  *(v4 + v5) = 3;
  v9 = v0[14];
  v8(v4 + v1, *MEMORY[0x277D5F8C0], v7);
  *(v4 + v1 + v9) = 8;
  v10 = v0[14];
  v8(v4 + 2 * v1, *MEMORY[0x277D5F8B8], v7);
  *(v4 + 2 * v1 + v10) = 7;
  v11 = v0[14];
  v8(v4 + 3 * v1, *MEMORY[0x277D5F8C8], v7);
  *(v4 + 3 * v1 + v11) = 4;
  v12 = v0[14];
  v8(v4 + 4 * v1, *MEMORY[0x277D5F8D0], v7);
  *(v4 + 4 * v1 + v12) = 6;
  v13 = v0[14];
  v8(v4 + 5 * v1, *MEMORY[0x277D5F8E8], v7);
  *(v4 + 5 * v1 + v13) = 5;
  v14 = v0[14];
  v8(v4 + 6 * v1, *MEMORY[0x277D5F8D8], v7);
  *(v4 + 6 * v1 + v14) = 1;
  v15 = v0[14];
  v8(v4 + 7 * v1, *MEMORY[0x277D5F8E0], v7);
  *(v4 + 7 * v1 + v15) = 2;
  v16 = v4 + 8 * v1;
  v17 = v0[14];
  v8(v16, *MEMORY[0x277D5F8F0], v7);
  *(v16 + v17) = 0;
  sub_268A58168();
  result = sub_268B37B84();
  qword_2802CD9F0 = result;
  return result;
}

unint64_t sub_268A58168()
{
  result = qword_2802A78F0;
  if (!qword_2802A78F0)
  {
    sub_268B37564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A78F0);
  }

  return result;
}

void sub_268A581D8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a2(v2))
  {
    sub_268B0DEEC();
    v4 = v3;

    v5 = sub_2688EFD0C(v4);
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v5 == v6)
      {

        return;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D625BD0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v19 = v8;
      sub_268A9CE64(&v19, &v17);

      v10 = v18;
      if (v18)
      {
        v11 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = *(v7 + 16);
          sub_2689876A4();
          v7 = v15;
        }

        v12 = *(v7 + 16);
        if (v12 >= *(v7 + 24) >> 1)
        {
          sub_2689876A4();
          v7 = v16;
        }

        *(v7 + 16) = v12 + 1;
        v13 = v7 + 16 * v12;
        *(v13 + 32) = v11;
        *(v13 + 40) = v10;
      }

      ++v6;
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }
}

id sub_268A58364()
{
  if (qword_2802A4D78 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD930;
  qword_2802CD9F8 = qword_2802CD930;

  return v1;
}

void sub_268A583C8()
{
  OUTLINED_FUNCTION_26();
  v43 = v0;
  v44 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v45 = v8;
  v9 = sub_268B37A54();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v46 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v19 = __swift_project_value_buffer(v9, qword_2802CDA10);
  v41 = *(v12 + 16);
  v42 = v19;
  v41(v18);
  v20 = sub_268B37A34();
  v21 = sub_268B37ED4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_14();
    v40 = v7;
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "MoveSpeakerHandleIntentStrategy.makeIntentHandledResponse() called", v22, 2u);
    v7 = v40;
    OUTLINED_FUNCTION_12();
  }

  v23 = *(v12 + 8);
  v23(v18, v9);
  v24 = sub_268B0F7F4(v7);
  if (v24)
  {
    v25 = v24;
    v47[0] = 0;
    v47[1] = 0;
    v47[2] = 1;
    memset(&v47[3], 0, 57);
    memcpy(v48, v47, 0x51uLL);
    sub_2689B5C10(v48);
    LODWORD(v47[0]) = 0;
    memset(&v47[1], 0, 72);
    LOBYTE(v47[10]) = 1;
    sub_268A63D80();
    v26 = v43;
    v27 = *(v43 + 16);
    memcpy(v50, v47, 0x51uLL);
    v28 = v7;
    v29 = swift_allocObject();
    v29[2] = v26;
    v29[3] = v28;
    v31 = v44;
    v30 = v45;
    v29[4] = v44;
    v29[5] = v30;
    v29[6] = v5;
    v29[7] = v3;
    v29[8] = v25;

    v32 = v28;
    v33 = v31;

    sub_268AB22F8(v50);

    memcpy(v49, v47, 0x51uLL);
    sub_2689B5C10(v49);
  }

  else
  {
    (v41)(v46, v42, v9);
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = OUTLINED_FUNCTION_14();
      *v36 = 0;
      _os_log_impl(&dword_2688BB000, v34, v35, "Unable to find any destinations in the intent. Returning a failure", v36, 2u);
      OUTLINED_FUNCTION_12();
    }

    v23(v46, v9);
    sub_2688C2ECC();
    v37 = swift_allocError();
    *v38 = 29;
    v50[0] = v37;
    LOBYTE(v50[5]) = 1;
    v5(v50);
    sub_2688C058C(v50, &unk_2802A57C0, &qword_268B3BE00);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A58770(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id *), uint64_t a7, uint64_t a8)
{
  v29[1] = a4;
  v29[2] = a8;
  v29[4] = a5;
  v29[5] = a7;
  v29[3] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v29 - v20);
  sub_2688F1FA4(a1, v29 - v20, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30[0] = *v21;
    v22 = v30[0];
    v31 = 1;
    v23 = v30[0];
    a6(v30);

    return sub_2688C058C(v30, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v21, v17);
    v25 = a2[12];
    __swift_project_boxed_opaque_existential_1(a2 + 8, a2[11]);
    v26 = sub_268B36FA4();
    sub_2688F1FA4(v17, v15, &unk_2802A56E0, &unk_268B3CDF0);
    v27 = *&v15[*(v11 + 48)];
    if (v26)
    {
      sub_268A58A00();
    }

    else
    {
      sub_268A596D0();
    }

    sub_2688C058C(v17, &unk_2802A56E0, &unk_268B3CDF0);
    v28 = sub_268B350F4();
    return (*(*(v28 - 8) + 8))(v15, v28);
  }
}

void sub_268A58A00()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v80 = v2;
  v81 = v3;
  v79 = v4;
  v86 = v5;
  v7 = v6;
  v9 = v8;
  v10 = sub_268B35044();
  v11 = OUTLINED_FUNCTION_1(v10);
  v83 = v12;
  v84 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v82 = v16 - v15;
  v17 = sub_268B37A54();
  v18 = OUTLINED_FUNCTION_1(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v27 = OUTLINED_FUNCTION_1(v26);
  *(&v75 + 1) = v28;
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v27);
  v76 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v31);
  v85 = &v68 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v68 - v34;
  v36 = sub_268B350F4();
  v77 = *(v36 - 8);
  v78 = v36;
  (*(v77 + 16))(v35, v9);
  v37 = v35;
  *&v35[*(v26 + 48)] = v7;
  v38 = qword_2802A4F30;
  v39 = v7;
  if (v38 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v40 = __swift_project_value_buffer(v17, qword_2802CDA10);
  (*(v20 + 16))(v25, v40, v17);
  v41 = sub_268B37A34();
  v42 = sub_268B37ED4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_14();
    *v43 = 0;
    _os_log_impl(&dword_2688BB000, v41, v42, "MoveSpeakerHandleIntentStrategy#intentHandledResponse...", v43, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v20 + 8))(v25, v17);
  sub_26890C900((v1 + 33), v87);
  v72 = v89;
  v73 = v88;
  *&v75 = __swift_project_boxed_opaque_existential_1(v87, v88);
  v44 = v85;
  sub_2688F1FA4(v37, v85, &unk_2802A56E0, &unk_268B3CDF0);
  v74 = *(v44 + *(v26 + 48));
  sub_268A581D8(v1[38], sub_268B0F7F4);
  v46 = v45;
  if (*(v45 + 16))
  {
    v47 = *(v45 + 40);
    v70 = *(v46 + 32);
    v71 = v47;
  }

  else
  {
    v70 = 0;
    v71 = 0xE000000000000000;
  }

  v48 = *__swift_project_boxed_opaque_existential_1(v1 + 28, v1[31]);
  if (v48)
  {
    v49 = OUTLINED_FUNCTION_28_1();
    HIDWORD(v69) = [v48 BOOLForKey_];
  }

  else
  {
    HIDWORD(v69) = 0;
  }

  v50 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  if (sub_268B34D04())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_268B3BBA0;
    *(v51 + 32) = [objc_allocWithZone(MEMORY[0x277D47A78]) init];
  }

  else
  {
    v51 = MEMORY[0x277D84F90];
  }

  v52 = v82;
  v53 = v86;
  sub_268A82B50(v86, v82);
  v54 = sub_2689F0948();
  v68 = v37;
  v55 = v37;
  v56 = v76;
  sub_2688F1FA4(v55, v76, &unk_2802A56E0, &unk_268B3CDF0);
  v57 = (*(*(&v75 + 1) + 80) + 40) & ~*(*(&v75 + 1) + 80);
  v58 = (v30 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v59[2] = v53;
  v59[3] = v1;
  v59[4] = v80;
  sub_2689186C8(v56, v59 + v57);
  v60 = (v59 + v58);
  v61 = v81;
  *v60 = v79;
  v60[1] = v61;
  v62 = v53;

  LOBYTE(v66) = v54 & 1;
  v63 = (v1 + 13);
  v64 = v85;
  v65 = v74;
  sub_268A83648(v85, v74, v70, v71, HIDWORD(v69), v51, v52, v63, v66, sub_268A5C550, v59, v73, v72, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);

  (*(v83 + 8))(v52, v84);
  sub_2688C058C(v68, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v77 + 8))(v64, v78);
  __swift_destroy_boxed_opaque_existential_0Tm(v87);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A59014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v63 = a7;
  v64 = a6;
  v60 = a4;
  v69 = a2;
  v70 = a3;
  v62 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = v54 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v11 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v13 = v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v54 - v19;
  v21 = sub_268B34E24();
  v66 = *(v21 - 8);
  v67 = v21;
  v22 = *(v66 + 64);
  MEMORY[0x28223BE20](v21);
  v65 = v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_268B37A54();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = MEMORY[0x28223BE20](v24);
  v59 = v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = v54 - v29;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v24, qword_2802CDA10);
  v57 = v25[2];
  v58 = v31;
  v57(v30);
  v32 = sub_268B37A34();
  v33 = sub_268B37ED4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v61 = v13;
    v35 = a5;
    v36 = v25;
    v37 = v34;
    *v34 = 0;
    _os_log_impl(&dword_2688BB000, v32, v33, "MoveSpeakerHandleIntentStrategy#intentHandledResponse output has been created.", v34, 2u);
    v38 = v37;
    v25 = v36;
    a5 = v35;
    v13 = v61;
    MEMORY[0x26D6266E0](v38, -1, -1);
  }

  v39 = v25[1];
  v61 = (v25 + 1);
  v56 = v39;
  v39(v30, v24);
  sub_268947F08();
  v54[1] = v40;
  v41 = __swift_project_boxed_opaque_existential_1((v70 + 144), *(v70 + 168));
  (*(v66 + 104))(v65, *MEMORY[0x277D5BC10], v67);
  sub_2688F1FA4(a5, v13, &unk_2802A56E0, &unk_268B3CDF0);

  v42 = sub_268B350F4();
  v43 = *(v42 - 8);
  (*(v43 + 32))(v20, v13, v42);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v42);
  v44 = sub_268B34B94();
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v44);
  v45 = *v41;
  sub_2688F1FA4(v20, v18, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v18, 1, v42) == 1)
  {
    sub_2688C058C(v18, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v43 + 8))(v18, v42);
  }

  v46 = v65;
  v47 = v68;
  sub_2688E3410();

  sub_2688C058C(v47, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v20, &unk_2802A57B0, &unk_268B3CE00);
  (*(v66 + 8))(v46, v67);
  v48 = *__swift_project_boxed_opaque_existential_1((v70 + 144), *(v70 + 168));
  sub_26894B450();
  v49 = v59;
  (v57)(v59, v58, v24);
  v50 = sub_268B37A34();
  v51 = sub_268B37ED4();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_2688BB000, v50, v51, "MoveSpeakerHandleIntentStrategy#intentHandledResponse returning output", v52, 2u);
    MEMORY[0x26D6266E0](v52, -1, -1);
  }

  v56(v49, v24);
  return v64(v62);
}

void sub_268A596D0()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v72 = v3;
  v73 = v2;
  v69 = v4;
  v66 = v5;
  v7 = v6;
  v71 = v8;
  v10 = v9;
  v12 = v11;
  v13 = sub_268B37A54();
  v14 = OUTLINED_FUNCTION_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v23 = v22 - 8;
  v67 = *(v22 - 8);
  v24 = *(v67 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v68 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v62 - v26;
  v28 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v28);
  (*(v29 + 16))(v27, v12);
  v30 = *(v23 + 56);
  v70 = v27;
  *&v27[v30] = v10;
  v31 = qword_2802A4F30;
  v32 = v10;
  if (v31 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v33 = __swift_project_value_buffer(v13, qword_2802CDA10);
  (*(v16 + 16))(v21, v33, v13);
  v34 = sub_268B37A34();
  v35 = sub_268B37ED4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_14();
    *v36 = 0;
    _os_log_impl(&dword_2688BB000, v34, v35, "MoveSpeakerHandleIntentStrategy#legacyHandledResponse...", v36, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v16 + 8))(v21, v13);
  v37 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  if (sub_268B34D04())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_268B3BBA0;
    v39 = [objc_allocWithZone(MEMORY[0x277D47A78]) init];
    v65 = v38;
    *(v38 + 32) = v39;
  }

  else
  {
    v65 = MEMORY[0x277D84F90];
  }

  sub_268B0DEEC();
  v41 = v40;
  if (sub_2688EFD0C(v40))
  {
    sub_2688EFD10(0, (v41 & 0xC000000000000001) == 0, v41);
    if ((v41 & 0xC000000000000001) != 0)
    {
      v42 = MEMORY[0x26D625BD0](0, v41);
    }

    else
    {
      v42 = *(v41 + 32);
    }

    v43 = v42;

    v64 = sub_268B0F784(v43);
    v66 = v44;
  }

  else
  {

    v64 = 0;
    v66 = 0;
  }

  v45 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v46 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  if (v46)
  {
    v47 = v46;
    v48 = OUTLINED_FUNCTION_28_1();
    HIDWORD(v63) = [v47 BOOLForKey_];
  }

  else
  {
    HIDWORD(v63) = 0;
  }

  v62 = v1 + 13;
  v49 = v70;
  v50 = v68;
  sub_2688F1FA4(v70, v68, &unk_2802A56E0, &unk_268B3CDF0);
  v51 = (*(v67 + 80) + 40) & ~*(v67 + 80);
  v52 = (v24 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v55 = v71;
  v54[2] = v71;
  v54[3] = v1;
  v54[4] = v7;
  sub_2689186C8(v50, v54 + v51);
  v56 = (v54 + v52);
  v58 = v72;
  v57 = v73;
  *v56 = v69;
  v56[1] = v58;
  *(v54 + v53) = v65;
  *(v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8)) = v57;
  v59 = *__swift_project_boxed_opaque_existential_1(v1 + 23, v1[26]);
  v60 = v55;

  v61 = v57;
  sub_268AED0F0(v60, v64, v66, 0, 0, HIDWORD(v63), (v1 + 3), (v1 + 8), v62, v59, sub_268A5C364, v54, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);

  sub_2688C058C(v49, &unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A59BF0(void *a1, int a2, char *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, char *a9)
{
  v92 = a8;
  v93 = a7;
  v98 = a6;
  v91 = a5;
  v96 = a4;
  v99 = a3;
  LODWORD(v89) = a2;
  v94 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v87 = &v82 - v11;
  v88 = sub_268B35044();
  v86 = *(v88 - 8);
  v12 = *(v86 + 64);
  MEMORY[0x28223BE20](v88);
  v85 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v84 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v83 = &v82 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v82 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v82 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v82 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v82 - v37;
  v39 = sub_268B34E24();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v90 = &v82 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v82 - v45;
  v97 = v44;
  v95 = v40;
  if (v89)
  {
    v47 = v19;
    v48 = v96;
    v49 = v98;
    v50 = sub_268B36E84();
    if (v51)
    {
      v89 = v50;
    }

    else
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
      v89 = v70;
    }

    v71 = v97;
    v72 = v84;
    v73 = __swift_project_boxed_opaque_existential_1(v48 + 18, v48[21]);
    (*(v95 + 104))(v90, *MEMORY[0x277D5BC00], v71);
    sub_2688F1FA4(v49, v23, &unk_2802A56E0, &unk_268B3CDF0);

    v74 = sub_268B350F4();
    v75 = *(v74 - 8);
    (*(v75 + 32))(v33, v23, v74);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v74);
    v76 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v72, 1, 1, v76);
    v77 = *v73;
    sub_2688F1FA4(v33, v30, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v30, 1, v74) == 1)
    {
      sub_2688C058C(v30, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v75 + 8))(v30, v74);
    }

    v78 = v90;
    sub_2688E3410();

    sub_2688C058C(v72, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v33, &unk_2802A57B0, &unk_268B3CE00);
    (*(v95 + 8))(v78, v97);
    v102[0] = v94;
    v105 = 1;
    v79 = v94;
  }

  else
  {
    v90 = a9;
    sub_268947F08();
    v89 = v52;
    v53 = __swift_project_boxed_opaque_existential_1(v96 + 18, v96[21]);
    (*(v40 + 104))(v46, *MEMORY[0x277D5BC10], v39);
    sub_2688F1FA4(v98, v25, &unk_2802A56E0, &unk_268B3CDF0);

    v54 = sub_268B350F4();
    v55 = *(v54 - 8);
    (*(v55 + 32))(v38, v25, v54);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v54);
    v56 = sub_268B34B94();
    v57 = v83;
    __swift_storeEnumTagSinglePayload(v83, 1, 1, v56);
    v58 = *v53;
    sub_2688F1FA4(v38, v36, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v36, 1, v54) == 1)
    {
      sub_2688C058C(v36, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v55 + 8))(v36, v54);
    }

    v59 = v99;
    sub_2688E3410();

    sub_2688C058C(v57, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v38, &unk_2802A57B0, &unk_268B3CE00);
    (*(v95 + 8))(v46, v97);
    v60 = v96;
    v61 = __swift_project_boxed_opaque_existential_1(v96 + 18, v96[21]);
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F8, qword_268B3BE70);
    v102[0] = v94;
    v62 = *v61;

    sub_268948494(v102);
    sub_2688C058C(v102, &byte_2802A6450, &byte_268B3BE10);
    v63 = v85;
    sub_268A82B50(v59, v85);
    if (v90 >> 62)
    {
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);

      v81 = sub_268B38294();

      v90 = v81;
    }

    else
    {

      sub_268B38454();
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);
    }

    v103 = sub_268B354F4();
    v104 = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v102);
    v64 = 0;
    if (sub_2689F0948())
    {
      v64 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
      sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
      v65 = sub_268B38064();
      [v64 setMinimumAutoDismissalTimeInMs_];

      [v64 setPremptivelyResumeMedia_];
    }

    v66 = v60[7];
    __swift_project_boxed_opaque_existential_1(v60 + 3, v60[6]);
    sub_268B34CA4();
    v67 = v86;
    v68 = v87;
    v69 = v88;
    (*(v86 + 16))(v87, v63, v88);
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v69);
    v101 = 0;
    memset(v100, 0, sizeof(v100));
    sub_268B34EF4();

    sub_2688C058C(v100, &unk_2802A5800, &unk_268B3CE10);
    sub_2688C058C(v68, &qword_2802A57F0, &qword_268B3DDB0);
    (*(v67 + 8))(v63, v69);
    v105 = 0;
  }

  v93(v102);
  return sub_2688C058C(v102, &unk_2802A57C0, &qword_268B3BE00);
}

void sub_268A5A770()
{
  OUTLINED_FUNCTION_26();
  v74 = v0;
  v75 = v1;
  v71 = v2;
  v4 = v3;
  v76 = v5;
  v73 = v6;
  v66 = sub_268B367A4();
  v7 = OUTLINED_FUNCTION_1(v66);
  v65 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v64 = v12 - v11;
  v13 = sub_268B37A54();
  v14 = OUTLINED_FUNCTION_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v77 = v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v62 - v21;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v23 = __swift_project_value_buffer(v13, qword_2802CDA10);
  v24 = *(v16 + 16);
  v24(v22, v23, v13);
  v25 = sub_268B37A34();
  v26 = sub_268B37ED4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_14();
    *v27 = 0;
    _os_log_impl(&dword_2688BB000, v25, v26, "MoveSpeakerHandleIntentStrategy.makeFailureHandlingIntentResponse() called", v27, 2u);
    OUTLINED_FUNCTION_12();
  }

  v28 = *(v16 + 8);
  v28(v22, v13);
  v29 = sub_268B36E84();
  v70 = v16 + 8;
  if (v30)
  {
    v67 = v30;
    v68 = v29;
  }

  else
  {
    v31 = OBJC_IVAR___MoveSpeakerIntentResponse_code;
    swift_beginAccess();
    v78[0] = *(v4 + v31);
    sub_268B38404();
    sub_268947F08();
    v68 = v32;
    v67 = v33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000268B572E0;
  v35 = OBJC_IVAR___MoveSpeakerIntentResponse_code;
  swift_beginAccess();
  v78[0] = *(v4 + v35);
  sub_268B38404();
  v72 = v4;
  v36 = sub_268B36E94();
  v38 = v37;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v36;
  *(inited + 56) = v38;
  v69 = sub_268B37B84();
  sub_268B36754();
  v39 = sub_268B36734();
  if (!v39)
  {
    v39 = sub_268B36744();
  }

  v40 = v39;
  v41 = v77;
  v24(v77, v23, v13);

  v42 = sub_268B37A34();
  v43 = sub_268B37ED4();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v78[0] = v45;
    *v44 = 136315138;
    sub_268B36714();
    v63 = v28;
    v46 = v64;
    sub_268B36B14();

    v47 = sub_268B36784();
    v49 = v48;
    (*(v65 + 8))(v46, v66);
    v50 = sub_26892CDB8(v47, v49, v78);

    *(v44 + 4) = v50;
    _os_log_impl(&dword_2688BB000, v42, v43, "MoveSpeakerHandleIntentStrategy.makeFailureHandlingIntentResponse cached responseMode = %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v63(v77, v13);
  }

  else
  {

    v28(v41, v13);
  }

  v51 = v75;
  v52 = v73;
  v53 = swift_allocObject();
  v54 = v74;
  v53[2] = v40;
  v53[3] = v54;
  v55 = v76;
  v53[4] = v52;
  v53[5] = v55;
  v56 = v67;
  v53[6] = v68;
  v53[7] = v56;
  v53[8] = v71;
  v53[9] = v51;
  v57 = *(v72 + v35);
  if (v57 == 101)
  {
    OUTLINED_FUNCTION_8_22(*(v54 + 16));

    v59 = v55;

    OUTLINED_FUNCTION_2_29();
  }

  else
  {
    if (v57 != 100)
    {

      v60 = v55;

      sub_2689B3A84(v60, v78);
      v61 = *(v54 + 16);
      sub_268AB2900();

      sub_2689B5664(v78);
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_8_22(*(v54 + 16));

    v58 = v55;

    OUTLINED_FUNCTION_2_29();
  }

LABEL_19:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A5AF24(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v127 = a8;
  v125 = a6;
  v126 = a7;
  v123 = a3;
  v124 = a5;
  v130 = a4;
  v128 = a2;
  v117 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v116 = &v108 - v10;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v11 = *(*(v122 - 1) + 64);
  v12 = MEMORY[0x28223BE20](v122);
  v115 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v110 = &v108 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v108 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v113 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v112 = &v108 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v111 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v121 = &v108 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v108 - v30;
  MEMORY[0x28223BE20](v29);
  v119 = &v108 - v32;
  v129 = sub_268B34E24();
  v131 = *(v129 - 8);
  v33 = *(v131 + 64);
  v34 = MEMORY[0x28223BE20](v129);
  v120 = &v108 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v118 = &v108 - v36;
  v134 = sub_268B37A54();
  v37 = *(v134 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v134);
  v114 = &v108 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v108 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v108 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v49 = (&v108 - v48);
  sub_2688F1FA4(v117, &v108 - v48, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v122 = *v49;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v50 = v134;
    v51 = __swift_project_value_buffer(v134, qword_2802CDA10);
    (*(v37 + 16))(v45, v51, v50);
    v52 = sub_268B37A34();
    v53 = sub_268B37EE4();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v128;
    v56 = v129;
    if (v54)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_2688BB000, v52, v53, "MoveSpeakerHandleIntentStrategy.makeFailureHandlingIntentResponse failed to execute dialog", v57, 2u);
      MEMORY[0x26D6266E0](v57, -1, -1);
    }

    (*(v37 + 8))(v45, v134);
    v58 = __swift_project_boxed_opaque_existential_1(v55 + 18, v55[21]);
    (*(v131 + 104))(v118, *MEMORY[0x277D5BC00], v56);
    v59 = sub_268B350F4();
    v60 = v119;
    __swift_storeEnumTagSinglePayload(v119, 1, 1, v59);
    v61 = *MEMORY[0x277D5B8E0];
    v62 = sub_268B34B94();
    v63 = v112;
    (*(*(v62 - 8) + 104))(v112, v61, v62);
    __swift_storeEnumTagSinglePayload(v63, 0, 1, v62);
    v64 = *v58;
    sub_2688F1FA4(v60, v31, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v31, 1, v59) == 1)
    {
      sub_2688C058C(v31, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v59 - 8) + 8))(v31, v59);
    }

    v84 = v118;
    sub_2688E3410();

    sub_2688C058C(v63, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v119, &unk_2802A57B0, &unk_268B3CE00);
    (*(v131 + 8))(v84, v56);
    v85 = __swift_project_boxed_opaque_existential_1(v55 + 18, v55[21]);
    sub_2688C2ECC();
    v86 = swift_allocError();
    *v87 = -95;
    v88 = *v85;
    sub_26894B450();

    v89 = swift_allocError();
    *v90 = -97;
    v132[0] = v89;
    v133 = 1;
    v126(v132);

    return sub_2688C058C(v132, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v49, v17);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v65 = v134;
    v66 = __swift_project_value_buffer(v134, qword_2802CDA10);
    v112 = *(v37 + 16);
    (v112)(v43, v66, v65);
    v67 = sub_268B37A34();
    v68 = sub_268B37ED4();
    v69 = os_log_type_enabled(v67, v68);
    v70 = v129;
    if (v69)
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_2688BB000, v67, v68, "MoveSpeakerHandleIntentStrategy.makeFailureHandlingIntentResponse executed failure dialog creating output", v71, 2u);
      MEMORY[0x26D6266E0](v71, -1, -1);
    }

    v72 = *(v37 + 8);
    v118 = (v37 + 8);
    v109 = v72;
    v72(v43, v134);
    v73 = v128;
    v74 = __swift_project_boxed_opaque_existential_1(v128 + 18, v128[21]);
    (*(v131 + 104))(v120, *MEMORY[0x277D5BC00], v70);
    v119 = v17;
    v75 = v110;
    sub_2688F1FA4(v17, v110, &unk_2802A56E0, &unk_268B3CDF0);

    v76 = sub_268B350F4();
    v77 = *(v76 - 8);
    v78 = v121;
    (*(v77 + 32))(v121, v75, v76);
    __swift_storeEnumTagSinglePayload(v78, 0, 1, v76);
    v79 = sub_268B34B94();
    v80 = v113;
    __swift_storeEnumTagSinglePayload(v113, 1, 1, v79);
    v81 = *v74;
    v82 = v111;
    sub_2688F1FA4(v78, v111, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v82, 1, v76);
    v117 = v77;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v82, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      v73 = v128;
      (*(v77 + 8))(v82, v76);
    }

    v92 = v120;
    sub_2688E3410();

    sub_2688C058C(v80, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v121, &unk_2802A57B0, &unk_268B3CE00);
    (*(v131 + 8))(v92, v129);
    v93 = __swift_project_boxed_opaque_existential_1(v73 + 18, v73[21]);
    sub_2688C2ECC();
    v94 = swift_allocError();
    *v95 = 79;
    v96 = *v93;
    sub_26894B450();

    v97 = v114;
    (v112)(v114, v66, v134);
    v98 = sub_268B37A34();
    v99 = sub_268B37ED4();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_2688BB000, v98, v99, "MoveSpeakerHandleIntentStrategy.makeFailureHandlingIntentResponse returning failure output", v100, 2u);
      MEMORY[0x26D6266E0](v100, -1, -1);
    }

    v109(v97, v134);
    v101 = v73[36];
    v102 = v73[37];
    __swift_project_boxed_opaque_existential_1(v73 + 33, v101);
    v103 = v119;
    v104 = v115;
    sub_2688F1FA4(v119, v115, &unk_2802A56E0, &unk_268B3CDF0);
    v105 = *(v104 + v122[12]);
    v106 = v116;
    sub_268A82B50(v130, v116);
    v107 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v106, 0, 1, v107);
    (*(v102 + 40))(v104, v105, v106, v126, v127, v101, v102);

    sub_2688C058C(v106, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v103, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v117 + 8))(v104, v76);
  }
}

uint64_t sub_268A5BCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for MoveSpeakerHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A5BD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for MoveSpeakerHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A5BDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for MoveSpeakerHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A5BE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for MoveSpeakerHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A5BEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for MoveSpeakerHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_268A5BF84()
{
  if (qword_2802A4F18 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9F8;

  return v1;
}

uint64_t sub_268A5BFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MoveSpeakerHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A5C030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for MoveSpeakerHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A5C084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for MoveSpeakerHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

unint64_t sub_268A5C0F0(uint64_t a1)
{
  result = sub_268A5C118();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268A5C118()
{
  result = qword_2802A78F8;
  if (!qword_2802A78F8)
  {
    type metadata accessor for MoveSpeakerHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A78F8);
  }

  return result;
}

uint64_t sub_268A5C170()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_268A5C1D0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v9 = v0[9];
  return sub_268A5AE6C();
}

uint64_t sub_268A5C22C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;

  v10 = *(v1 + 24);

  v11 = *(v1 + 32);

  v12 = v1 + v5;
  v13 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v13);
  (*(v14 + 8))(v12);

  v15 = *(v1 + v7 + 8);

  v16 = *(v1 + v8);

  return MEMORY[0x2821FE8E8](v1, v9 + 8, v4 | 7);
}

uint64_t sub_268A5C364(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  return sub_268A59BF0(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8));
}

uint64_t sub_268A5C440()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v1 + 24);

  v9 = *(v1 + 32);

  v10 = v1 + v5;
  v11 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v11);
  (*(v12 + 8))(v10);

  v13 = *(v1 + v7 + 8);

  return MEMORY[0x2821FE8E8](v1, v7 + 16, v4 | 7);
}

uint64_t sub_268A5C550(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_268A59014(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_268A5C604()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t OUTLINED_FUNCTION_2_29()
{
  v6 = *(v4 - 376);

  return sub_2689CE860(0xD000000000000023, v3 | 0x8000000000000000, v6, sub_268A5C1D0, v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_8_22@<X0>(void *a1@<X8>)
{
  v1 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
}

uint64_t sub_268A5C764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v86 = sub_268B35AA4();
  v88 = *(v86 - 8);
  v3 = *(v88 + 64);
  v4 = MEMORY[0x28223BE20](v86);
  v94 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v93 = &v68 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7900, &qword_268B48258);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v84 = &v68 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7908, &qword_268B48260);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v83 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v82 = &v68 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7910, &qword_268B48268);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v81 = &v68 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7918, &unk_268B48270);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v80 = &v68 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A78B8, &qword_268B47A38);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v79 = &v68 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7920, &qword_268B48280);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v78 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v87 = &v68 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7928, &qword_268B48288);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v95 = &v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v74 = &v68 - v33;
  v77 = sub_268B35AF4();
  v76 = *(v77 - 8);
  v34 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v75 = &v68 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x277D84F90];
  v97 = MEMORY[0x277D84F90];
  result = sub_2688EFD0C(a1);
  v38 = result;
  v39 = 0;
  while (1)
  {
    if (v38 == v39)
    {
      result = sub_2688EFD0C(v36);
      v42 = result;
      v43 = 0;
      v91 = (v88 + 88);
      v92 = (v88 + 32);
      v90 = *MEMORY[0x277D5E5E0];
      v89 = *MEMORY[0x277D5E620];
      v73 = *MEMORY[0x277D5E618];
      v72 = *MEMORY[0x277D5E5F0];
      v71 = *MEMORY[0x277D5E5E8];
      v70 = *MEMORY[0x277D5E5F8];
      v68 = (v88 + 8);
      v44 = 0.0;
      v69 = *MEMORY[0x277D5E630];
      v45 = v86;
      while (1)
      {
        if (v42 == v43)
        {

          v58 = v74;
          (*(v88 + 104))(v74, v89, v45);
          __swift_storeEnumTagSinglePayload(v58, 0, 1, v45);
          v59 = v75;
          sub_268B35AD4();
          v60 = sub_268B35A24();
          __swift_storeEnumTagSinglePayload(v87, 1, 1, v60);
          __swift_storeEnumTagSinglePayload(v78, 1, 1, v60);
          v61 = v76;
          v62 = v79;
          v63 = v77;
          (*(v76 + 16))(v79, v59, v77);
          __swift_storeEnumTagSinglePayload(v62, 0, 1, v63);
          v64 = sub_268B35B04();
          __swift_storeEnumTagSinglePayload(v80, 1, 1, v64);
          v65 = sub_268B35944();
          __swift_storeEnumTagSinglePayload(v81, 1, 1, v65);
          v66 = sub_268B35A34();
          __swift_storeEnumTagSinglePayload(v82, 1, 1, v66);
          __swift_storeEnumTagSinglePayload(v83, 1, 1, v66);
          v67 = sub_268B359F4();
          __swift_storeEnumTagSinglePayload(v84, 1, 1, v67);
          sub_268B35964();
          return (*(v61 + 8))(v59, v63);
        }

        if ((v36 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x26D625BD0](v43, v36);
        }

        else
        {
          if (v43 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }

          v46 = *(v36 + 8 * v43 + 32);
        }

        if (__OFADD__(v43, 1))
        {
          goto LABEL_49;
        }

        if (!sub_268B36384() || (v47 = sub_2689BABA0(), v49 = v48, , (v49 & 1) != 0))
        {

LABEL_23:
          v50 = 0.0;
          goto LABEL_30;
        }

        v50 = *&v47;
        if (!sub_268B36374())
        {
          break;
        }

        v51 = v95;
        sub_268AAC60C(v95);

        if (__swift_getEnumTagSinglePayload(v51, 1, v45) == 1)
        {
          goto LABEL_29;
        }

        v52 = v51;
        v53 = v93;
        v54 = *v92;
        (*v92)(v93, v52, v45);
        v55 = v94;
        v54(v94, v53, v45);
        result = (*v91)(v55, v45);
        if (result == v90)
        {
          v50 = v50 / 1000.0;
        }

        else if (result != v89)
        {
          if (result == v73)
          {
            v50 = v50 * 60.0;
          }

          else if (result == v72)
          {
            v50 = v50 * 60.0 * 60.0;
          }

          else
          {
            if (result == v71)
            {
              v56 = v50 * 24.0;
            }

            else
            {
              if (result == v70)
              {
                v57 = v50 * 7.0;
              }

              else
              {
                if (result != v69)
                {
                  result = (*v68)(v94, v45);
                  goto LABEL_23;
                }

                v57 = v50 * 14.0;
              }

              v56 = v57 * 24.0;
            }

            v50 = v56 * 60.0 * 60.0;
          }
        }

LABEL_30:
        v44 = v44 + v50;
        ++v43;
      }

      v51 = v95;
      __swift_storeEnumTagSinglePayload(v95, 1, 1, v45);
LABEL_29:
      result = sub_2688EF38C(v51, &qword_2802A7928, &qword_268B48288);
      goto LABEL_30;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D625BD0](v39, a1);
    }

    else
    {
      if (v39 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v40 = *(a1 + 8 * v39 + 32);
    }

    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    sub_268B35B44();
    if (v96)
    {
      sub_268B357C4();
    }

    sub_268B36394();
    sub_268B35EA4();

    ++v39;
    if (v96)
    {
      MEMORY[0x26D6256C0](result);
      if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      result = sub_268B37D44();
      v36 = v97;
      v39 = v41;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_268A5D1F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
  v0 = OUTLINED_FUNCTION_14_7();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_268A5D240@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((*(a1 + 24))() && (v3 = sub_268B35DE4(), , v3))
  {
    sub_268A5C764(v3, a2);

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_268B35984();

  return __swift_storeEnumTagSinglePayload(a2, v4, 1, v5);
}

uint64_t sub_268A5D2E4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A18, &qword_268B3F270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B43BA0;
  *(inited + 32) = xmmword_268B481E0;
  *(inited + 48) = xmmword_268B481F0;
  *(inited + 64) = 0xD000000000000017;
  *(inited + 72) = 0x8000000268B56230;
  v5 = *(a2 + 8);
  sub_268B37324();
  v6 = sub_268ACD0C0();
  swift_setDeallocating();
  sub_268ACE6C0();

  if (v6)
  {
    return (*(a2 + 40))(a1, a2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
  v8 = OUTLINED_FUNCTION_14_7();
  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_268A5D430(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = sub_268B37324();
  if (!v4)
  {
    return 0;
  }

  if (v3 == 2036427888 && v4 == 0xE400000000000000)
  {
  }

  else
  {
    v6 = sub_268B38444();

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_2_30();
  if (sub_268B37314())
  {
    v7 = sub_26893B978();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_2_30();
  if (sub_268B372F4() || (OUTLINED_FUNCTION_2_30(), sub_268B37304()))
  {

    return 0;
  }

  return 1;
}

uint64_t sub_268A5D510(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v24[-v8];
  v10 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  (*(v12 + 16))(&v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, a1);
  sub_268B36024();
  if (swift_dynamicCast())
  {
    v13 = UsoTask_play_common_MediaItem.hasMediaItemsToPlay()();

    v14 = !v13;
  }

  else
  {
    v14 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A18, &qword_268B3F270);
  inited = swift_initStackObject();
  inited[1] = xmmword_268B3BBD0;
  inited[2] = xmmword_268B48200;
  inited[3] = xmmword_268B48210;
  v16 = *(a2 + 8);
  v25[0] = sub_268B37324();
  v25[1] = v17;
  MEMORY[0x28223BE20](v25[0]);
  *&v24[-16] = v25;
  v18 = sub_268ACD0C0();
  swift_setDeallocating();
  sub_268ACE6C0();

  if (v18 && (v19 = *(v16 + 8), OUTLINED_FUNCTION_2_30(), sub_268B377A4(), v20 = sub_268B37924(), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v20), sub_2688EF38C(v9, &qword_2802A5CA8, &unk_268B3CE30), EnumTagSinglePayload != 1))
  {
    v22 = sub_268B37834() & v14;
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_268A5D7B0(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 48))();
  if (result)
  {
    v3 = sub_2689BC484();

    return v3;
  }

  return result;
}

id sub_268A5D82C()
{
  result = [objc_allocWithZone(type metadata accessor for SetSubtitleStateIntentHandler()) init];
  qword_2802CDA00 = result;
  return result;
}

uint64_t sub_268A5D860()
{
  v10 = sub_268B37F44();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_268B37F34();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_268B37B14();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_2688C2FC8();
  sub_268B37AF4();
  v11 = MEMORY[0x277D84F90];
  sub_268A5F8F4(&unk_2802A5890, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  sub_2688C3054(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  sub_268B38124();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_268B37F74();
  qword_2802CDA08 = result;
  return result;
}

uint64_t sub_268A5DAB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a1;
  v73 = a2;
  v2 = sub_268B35434();
  v3 = OUTLINED_FUNCTION_1(v2);
  v65 = v4;
  v66 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v64 = v8 - v7;
  v9 = sub_268B35494();
  v10 = OUTLINED_FUNCTION_1(v9);
  v69 = v11;
  v70 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v71 = v14;
  MEMORY[0x28223BE20](v15);
  v74 = &v64 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v64 - v19;
  v21 = sub_268B37A54();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v67 = v27;
  v29 = MEMORY[0x28223BE20](v28);
  v68 = &v64 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v64 - v31;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v21, qword_2802CDA10);
  v34 = *(v24 + 16);
  v34(v32, v33, v21);
  v35 = sub_268B37A34();
  v36 = sub_268B37F04();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_2688BB000, v35, v36, "SetSubtitleStateFlowStrategy#actionForInput called", v37, 2u);
    OUTLINED_FUNCTION_12();
  }

  v38 = *(v24 + 8);
  v38(v32, v21);
  v39 = v74;
  v40 = v72;
  sub_268B35414();
  sub_26892E9C4(v39, 1, v20);
  v41 = type metadata accessor for MediaIntent();
  LODWORD(v39) = __swift_getEnumTagSinglePayload(v20, 1, v41);
  sub_268A03080(v20);
  if (v39 == 1)
  {
    v42 = v67;
    v34(v67, v33, v21);
    v43 = sub_268B37A34();
    v44 = sub_268B37EE4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2688BB000, v43, v44, "SetSubtitleStateFlowStrategy#actionForInput unable to create MediaPlayerIntent from parse", v45, 2u);
      OUTLINED_FUNCTION_12();
    }

    v38(v42, v21);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_3_6();
    return sub_268B34ED4();
  }

  else
  {
    v67 = (v24 + 8);
    v47 = v71;
    sub_268B35414();
    v49 = v69;
    v48 = v70;
    v50 = (*(v69 + 88))(v47, v70);
    if (v50 == *MEMORY[0x277D5C128] || v50 == *MEMORY[0x277D5C160])
    {
      (*(v49 + 8))(v47, v48);
      return sub_268B34EC4();
    }

    else
    {
      v34(v68, v33, v21);
      v52 = v64;
      v53 = v65;
      v54 = v66;
      (*(v65 + 16))(v64, v40, v66);
      v55 = sub_268B37A34();
      v56 = sub_268B37EE4();
      if (os_log_type_enabled(v55, v56))
      {
        v58 = v52;
        v59 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v75 = v72;
        *v59 = 136315138;
        sub_268B35414();
        v60 = sub_268B37C24();
        v62 = v61;
        (*(v53 + 8))(v58, v54);
        v63 = sub_26892CDB8(v60, v62, &v75);
        v48 = v70;

        *(v59 + 4) = v63;
        _os_log_impl(&dword_2688BB000, v55, v56, "SetSubtitleStateFlowStrategy#actionForInput received unsupported parse type %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v72);
        v49 = v69;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {

        (*(v53 + 8))(v52, v54);
      }

      v38(v68, v21);
      type metadata accessor for ErrorFilingHelper();
      OUTLINED_FUNCTION_3_6();
      sub_268B34ED4();
      return (*(v49 + 8))(v71, v48);
    }
  }
}

uint64_t sub_268A5E138(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v39 = a3;
  v41 = a2;
  v40 = sub_268B37AB4();
  v5 = OUTLINED_FUNCTION_1(v40);
  v46 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v12 = sub_268B37B14();
  v13 = OUTLINED_FUNCTION_1(v12);
  v44 = v14;
  v45 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v19 = v18 - v17;
  v20 = sub_268B35494();
  v21 = OUTLINED_FUNCTION_1(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F28 != -1)
  {
    swift_once();
  }

  v38 = qword_2802CDA08;
  (*(v23 + 16))(&v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v20);
  v27 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v28 = (v25 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v30 = v41;
  *(v29 + 16) = v41;
  (*(v23 + 32))(v29 + v27, v26, v20);
  v31 = (v29 + v28);
  v33 = v42;
  v32 = v43;
  *v31 = v39;
  v31[1] = v33;
  *(v29 + ((v28 + 23) & 0xFFFFFFFFFFFFFFF8)) = v32;
  aBlock[4] = sub_268A5F7F0;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268A0B300;
  aBlock[3] = &block_descriptor_10;
  v34 = _Block_copy(aBlock);
  v35 = v30;

  sub_268B37AE4();
  v47 = MEMORY[0x277D84F90];
  sub_268A5F8F4(&unk_2802A7010, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  v36 = v40;
  sub_268B38124();
  MEMORY[0x26D625950](0, v19, v11, v34);
  _Block_release(v34);
  (*(v46 + 8))(v11, v36);
  (*(v44 + 8))(v19, v45);
}

void sub_268A5E504(id a1, char *a2, void (*a3)(void *, uint64_t), uint64_t a4, void *a5)
{
  v97 = a5;
  v109 = a3;
  v110 = a4;
  v107 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v95 - v8;
  v99 = type metadata accessor for MediaIntent();
  v10 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v95 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_268B35494();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v100 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v96 = &v95 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v106 = &v95 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v95 - v21;
  v23 = sub_268B37A54();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = MEMORY[0x28223BE20](v23);
  v111 = (&v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x28223BE20](v26);
  v98 = &v95 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v95 - v30;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v23, qword_2802CDA10);
  v33 = v24[2];
  v101 = v32;
  v102 = v33;
  v103 = v24 + 2;
  v33(v31);
  v34 = sub_268B37A34();
  v35 = sub_268B37F04();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v108 = a1;
    v37 = v13;
    v38 = v9;
    v39 = v12;
    v40 = v22;
    v41 = v23;
    v42 = v24;
    v43 = v36;
    *v36 = 0;
    _os_log_impl(&dword_2688BB000, v34, v35, "SetSubtitleStateFlowStrategy#makeIntentFromParse called", v36, 2u);
    v44 = v43;
    v24 = v42;
    v23 = v41;
    v22 = v40;
    v12 = v39;
    v9 = v38;
    v13 = v37;
    a1 = v108;
    MEMORY[0x26D6266E0](v44, -1, -1);
  }

  v104 = v24[1];
  v105 = v24 + 1;
  v104(v31, v23);
  if (a1)
  {
    v108 = a1;
  }

  else
  {
    v108 = [objc_allocWithZone(type metadata accessor for SetSubtitleStateIntent()) init];
  }

  v45 = v107;
  v46 = v111;
  v47 = *(v13 + 16);
  v47(v22, v107, v12);
  v48 = (*(v13 + 88))(v22, v12);
  if (v48 == *MEMORY[0x277D5C128] || v48 == *MEMORY[0x277D5C160])
  {
    v50 = *(v13 + 8);
    v51 = a1;
    v50(v22, v12);
    v52 = v45;
    v53 = v106;
    v47(v106, v52, v12);
    sub_26892E9C4(v53, 1, v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v99) == 1)
    {
      sub_268A03080(v9);
      v54 = v98;
      (v102)(v98, v101, v23);
      v55 = v96;
      v47(v96, v52, v12);
      v56 = sub_268B37A34();
      v57 = sub_268B37EE4();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        LODWORD(v107) = v57;
        v59 = v58;
        v111 = swift_slowAlloc();
        v112 = v111;
        *v59 = 136315138;
        v47(v106, v55, v12);
        v60 = sub_268B37C24();
        v62 = v61;
        v50(v55, v12);
        v63 = sub_26892CDB8(v60, v62, &v112);

        *(v59 + 4) = v63;
        v64 = v59;
        _os_log_impl(&dword_2688BB000, v56, v107, "SetSubtitleStateFlowStrategy#makeIntentFromParse failed to create MediaIntent from parse: %s", v59, 0xCu);
        v65 = v111;
        __swift_destroy_boxed_opaque_existential_0Tm(v111);
        MEMORY[0x26D6266E0](v65, -1, -1);
        MEMORY[0x26D6266E0](v64, -1, -1);

        v66 = v98;
      }

      else
      {

        v50(v55, v12);
        v66 = v54;
      }

      v104(v66, v23);
      type metadata accessor for ErrorFilingHelper();
      static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)();
      sub_2688C2ECC();
      v93 = swift_allocError();
      *v94 = 93;
      v109(v93, 1);
    }

    else
    {
      v83 = v95;
      sub_26893207C(v9, v95);
      v84 = v108;
      sub_268A4ED18(v83);
      sub_26895F7A8(v83);
      v85 = v97;
      v86 = v97[5];
      v87 = v97[6];
      __swift_project_boxed_opaque_existential_1(v97 + 2, v86);
      v88 = swift_allocObject();
      v89 = v110;
      v88[2] = v109;
      v88[3] = v89;
      v88[4] = v84;
      v90 = v84;

      sub_268AD35F4(v90, &off_287953C28, (v85 + 7), sub_268A5F8E8, v88, v86, v87);
    }
  }

  else
  {
    v107 = v22;
    (v102)(v46, v101, v23);
    v67 = v100;
    v47(v100, v45, v12);
    v68 = a1;
    v69 = sub_268B37A34();
    v70 = sub_268B37EE4();
    if (os_log_type_enabled(v69, v70))
    {
      v72 = swift_slowAlloc();
      v102 = v72;
      v103 = swift_slowAlloc();
      v112 = v103;
      *v72 = 136315138;
      v47(v106, v67, v12);
      v73 = sub_268B37C24();
      v75 = v74;
      v76 = *(v13 + 8);
      v76(v67, v12);
      v77 = sub_26892CDB8(v73, v75, &v112);

      v78 = v102;
      *(v102 + 1) = v77;
      v79 = v108;
      v80 = v70;
      v81 = v78;
      _os_log_impl(&dword_2688BB000, v69, v80, "SetSubtitleStateFlowStrategy#makeIntentFromParse unexpected parse type in makeIntentFromParse: %s", v78, 0xCu);
      v82 = v103;
      __swift_destroy_boxed_opaque_existential_0Tm(v103);
      MEMORY[0x26D6266E0](v82, -1, -1);
      MEMORY[0x26D6266E0](v81, -1, -1);

      v104(v111, v23);
    }

    else
    {

      v76 = *(v13 + 8);
      v76(v67, v12);
      v104(v46, v23);
      v79 = v108;
    }

    type metadata accessor for ErrorFilingHelper();
    static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)();
    sub_2688C2ECC();
    v91 = swift_allocError();
    *v92 = 94;
    v109(v91, 1);

    v76(v107, v12);
  }
}

uint64_t sub_268A5EF14(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_2802CDA10);
  (*(v6 + 16))(v9, v10, v5);
  v11 = sub_268B37A34();
  v12 = sub_268B37F04();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2688BB000, v11, v12, "SetSubtitleStateFlowStrategy#makeIntentFromParse finished creating intent from parse", v13, 2u);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  return a1(a3, 0);
}

uint64_t sub_268A5F10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetSubtitleStateFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A5F19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetSubtitleStateFlowStrategy();

  return MEMORY[0x2821BB208](a1, v5, a3);
}

id sub_268A5F1E8()
{
  if (qword_2802A4F20 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CDA00;

  return v1;
}

uint64_t sub_268A5F244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetSubtitleStateFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A5F2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetSubtitleStateFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A5F31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetSubtitleStateFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A5F388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetSubtitleStateFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A5F3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SetSubtitleStateFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A5F42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetSubtitleStateFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A5F498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetSubtitleStateFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A5F514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetSubtitleStateFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A5F668(uint64_t a1, uint64_t a2)
{
  result = sub_268A5F8F4(&qword_2802A7938, a2, type metadata accessor for SetSubtitleStateFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A5F708()
{
  v1 = sub_268B35494();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7 + 8);

  v10 = *(v0 + v8);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v4 | 7);
}

void sub_268A5F7F0()
{
  v1 = *(sub_268B35494() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = v0 + v3;
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = *(v6 + 8);

  sub_268A5E504(v5, (v0 + v2), v8, v9, v7);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268A5F8A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268A5F8F4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

Swift::String_optional __swiftcall UsoTask_set_common_Setting.verb()()
{
  v0 = sub_2689B83B8();
  v1 = v0 == 5;
  if (v0 == 5)
  {
    v2 = 7628147;
  }

  else
  {
    v2 = 0x656C62616E65;
  }

  if (v1)
  {
    v3 = 0xE300000000000000;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_268A5F980()
{
  v0 = sub_268A9EA44();
  if (v0 == 6)
  {
    return 3;
  }

  return sub_2689ABD4C(v0);
}

uint64_t sub_268A5F9F8@<X0>(char *a1@<X8>)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v37 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v37 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v37 - v14;
  v16 = sub_268B36334();
  if (v37[1])
  {
    sub_268963658();
    if (v17)
    {
      if (qword_2802A4F30 != -1)
      {
        v17 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_1_14(v17, qword_2802CDA10);
      v18(v15);
      v19 = sub_268B37A34();
      v20 = sub_268B37F04();
      if (OUTLINED_FUNCTION_196(v20))
      {
        v21 = OUTLINED_FUNCTION_14();
        *v21 = 0;
        _os_log_impl(&dword_2688BB000, v19, v20, "UsoTask_set_common_Setting#shouldHandle Task has settings attributes, handling in controls.", v21, 2u);
        OUTLINED_FUNCTION_12();
      }

      v22 = 2;
    }

    else
    {
      sub_268964334();
      if (v27)
      {
        if (qword_2802A4F30 != -1)
        {
          v27 = OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_1_14(v27, qword_2802CDA10);
        v28(v13);
        v29 = sub_268B37A34();
        v30 = sub_268B37F04();
        if (OUTLINED_FUNCTION_196(v30))
        {
          v31 = OUTLINED_FUNCTION_14();
          *v31 = 0;
          _os_log_impl(&dword_2688BB000, v29, v30, "UsoTask_set_common_Setting#shouldHandle Task has media attributes, handling in controls.", v31, 2u);
          OUTLINED_FUNCTION_12();
        }

        v22 = 1;
        v15 = v13;
      }

      else
      {
        if (qword_2802A4F30 != -1)
        {
          v27 = OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_1_14(v27, qword_2802CDA10);
        v32(v10);
        v33 = sub_268B37A34();
        v34 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_196(v34))
        {
          v35 = OUTLINED_FUNCTION_14();
          *v35 = 0;
          _os_log_impl(&dword_2688BB000, v33, v34, "UsoTask_set_common_Setting#shouldHandle Task has no supported attributes, not handling in controls.", v35, 2u);
          OUTLINED_FUNCTION_12();
        }

        v22 = 3;
        v15 = v10;
      }
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      v16 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_1_14(v16, qword_2802CDA10);
    v23(v7);
    v24 = sub_268B37A34();
    v25 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_196(v25))
    {
      v26 = OUTLINED_FUNCTION_14();
      *v26 = 0;
      _os_log_impl(&dword_2688BB000, v24, v25, "UsoTask_set_common_Setting#shouldHandle no referenced setting found in task. Not handling in Controls", v26, 2u);
      OUTLINED_FUNCTION_12();
    }

    v22 = 3;
    v15 = v7;
  }

  result = (*(v3 + 8))(v15, v2);
  *a1 = v22;
  return result;
}

uint64_t sub_268A5FE14(uint64_t a1)
{
  result = sub_268A5FEE4(&qword_2802A7950);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A5FEE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B35F34();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A5FF70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A5FFC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A60018(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A6006C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A600C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A60114(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A60168()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A601BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A60220()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A60274(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A602D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A6033C()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A603A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A60408()
{
  v0 = sub_268B37A54();
  __swift_allocate_value_buffer(v0, qword_2802CDA10);
  __swift_project_value_buffer(v0, qword_2802CDA10);
  if (qword_2802A5028 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CDB28;
  return sub_268B37A64();
}

void sub_268A60494()
{
  OUTLINED_FUNCTION_26();
  v128 = v0;
  v2 = v1;
  v135 = v3;
  v132 = sub_268B37A54();
  v4 = OUTLINED_FUNCTION_1(v132);
  v130 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v125 = v8;
  MEMORY[0x28223BE20](v9);
  v124 = v109 - v10;
  v131 = sub_268B36AA4();
  v11 = OUTLINED_FUNCTION_1(v131);
  v127 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v122 = v15;
  v17 = MEMORY[0x28223BE20](v16);
  v123 = v109 - v18;
  MEMORY[0x28223BE20](v17);
  v126 = v109 - v19;
  v20 = sub_268B34714();
  v133 = OUTLINED_FUNCTION_1(v20);
  v134 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_1_0();
  v129 = v25 - v24;
  v26 = sub_268B37474();
  v27 = OUTLINED_FUNCTION_1(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_0();
  v34 = v33 - v32;
  v35 = sub_268B37434();
  v36 = OUTLINED_FUNCTION_1(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_0();
  v43 = v42 - v41;
  v44 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_8_23();
  if ((sub_268B34D24() & 1) == 0)
  {
    v45 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    if ((sub_268B34CB4() & 1) == 0)
    {
      v121 = v34;
      v51 = v128[3];
      v120 = v128[4];
      v128 = __swift_project_boxed_opaque_existential_1(v128, v51);
      v52 = *MEMORY[0x277D5F850];
      v116 = *(v38 + 104);
      v117 = v38 + 104;
      v116(v43, v52, v35);
      v53 = *(v29 + 104);
      v114 = *MEMORY[0x277D5F8A8];
      v115 = v29 + 104;
      v113 = v53;
      v53(v121);
      v54 = v2[4];
      __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      OUTLINED_FUNCTION_8_23();
      v55 = v26;
      v56 = v35;
      v58 = v57;
      sub_268B34C94();
      v118 = v51;
      v59 = v121;
      v109[1] = sub_268B376E4();
      v61 = v60;
      v62 = v134 + 8;
      v112 = *(v134 + 1);
      v112(v58, v133);
      v64 = *(v29 + 8);
      v63 = v29 + 8;
      v111 = v64;
      v64(v59, v55);
      v110 = *(v38 + 8);
      v110(v43, v56);
      v119 = v61;
      if (v61)
      {
        v116(v43, *MEMORY[0x277D5F840], v56);
        v113(v59, v114, v55);
        v134 = v62;
        v117 = v63;
        v65 = v56;
        v66 = v55;
        v67 = v2[4];
        __swift_project_boxed_opaque_existential_1(v2, v2[3]);
        sub_268B34C94();
        sub_268B376E4();
        v69 = v68;
        v112(v58, v133);
        v111(v59, v66);
        v110(v43, v65);
        if (v69)
        {
          type metadata accessor for DirectInvocationHelper();
          v70 = OUTLINED_FUNCTION_5_18();
          sub_268A696EC();
          v72 = v71;

          v73 = OUTLINED_FUNCTION_5_18();
          sub_268A696EC();
          v75 = v74;

          v76 = v72;
          v77 = v75;
          v78 = v126;
          v133 = v76;
          v134 = v77;
          sub_268B36A94();
          if (qword_2802A4F30 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v79 = v132;
          v80 = __swift_project_value_buffer(v132, qword_2802CDA10);
          v81 = v130;
          v82 = v124;
          (*(v130 + 16))(v124, v80, v79);
          v83 = v127;
          v84 = *(v127 + 16);
          v85 = v123;
          v86 = v131;
          v84(v123, v78, v131);
          v87 = sub_268B37A34();
          v88 = sub_268B37F04();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v136 = v90;
            *v89 = 136315138;
            v84(v122, v85, v131);
            v91 = sub_268B37C24();
            v93 = v92;
            (*(v127 + 8))(v85, v131);
            v94 = sub_26892CDB8(v91, v93, &v136);

            *(v89 + 4) = v94;
            _os_log_impl(&dword_2688BB000, v87, v88, "YesNoConfirmationViewProvider#snippet created RF 2.0 Snippet: %s.", v89, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v90);
            v83 = v127;
            OUTLINED_FUNCTION_12();
            v86 = v131;
            OUTLINED_FUNCTION_12();

            (*(v81 + 8))(v82, v132);
          }

          else
          {

            (*(v83 + 8))(v85, v86);
            (*(v81 + 8))(v82, v79);
          }

          v106 = v135;
          (*(v83 + 32))(v135, v126, v86);
          v107 = *MEMORY[0x277D55550];
          v108 = sub_268B36A54();
          (*(*(v108 - 8) + 104))(v106, v107, v108);
          v102 = v106;
          v103 = 0;
          v104 = 1;
          v105 = v108;
LABEL_20:
          __swift_storeEnumTagSinglePayload(v102, v103, v104, v105);
          OUTLINED_FUNCTION_23();
          return;
        }
      }

      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v95 = v132;
      v96 = __swift_project_value_buffer(v132, qword_2802CDA10);
      v97 = v130;
      v98 = v125;
      (*(v130 + 16))(v125, v96, v95);
      v99 = sub_268B37A34();
      v100 = sub_268B37EE4();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        *v101 = 0;
        _os_log_impl(&dword_2688BB000, v99, v100, "YesNoConfirmationViewProvider#snippet Failed to localize labels for confirmation dialog.", v101, 2u);
        OUTLINED_FUNCTION_12();
      }

      (*(v97 + 8))(v98, v95);
      sub_268B36A54();
      v102 = OUTLINED_FUNCTION_7_24();
      goto LABEL_20;
    }
  }

  sub_268B36A54();
  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_23();

  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
}

uint64_t sub_268A60DFC(char a1)
{
  if (a1)
  {
    return 28526;
  }

  else
  {
    return 7562617;
  }
}

void sub_268A60E20()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v29 = v4;
  v30 = v5;
  v7 = v6;
  v9 = v8;
  v10 = sub_268B37A54();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v18 = v17 - v16;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v19 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v13 + 16))(v18, v19, v10);
  v20 = sub_268B37A34();
  v21 = sub_268B37F04();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "Making views for watch", v22, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v13 + 8))(v18, v10);
  v23 = [objc_allocWithZone(MEMORY[0x277D47780]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_268B3C5A0;
  sub_2688EA03C(0, &qword_2802A7968, 0x277D47760);
  v25 = OUTLINED_FUNCTION_29_6();
  *(v25 + 16) = xmmword_268B3BBA0;
  *(v25 + 32) = v7;

  v26 = v7;
  *(v24 + 32) = sub_268996D44(v29, v9, v25, 1);
  v27 = OUTLINED_FUNCTION_29_6();
  *(v27 + 16) = xmmword_268B3BBA0;
  *(v27 + 32) = v1;

  v28 = v1;
  *(v24 + 40) = sub_268996D44(v30, v3, v27, 1);
  sub_268A617C0(v24, v23);
  sub_268B34B84();
  sub_268B34B44();
  OUTLINED_FUNCTION_8_23();
  sub_268B34B64();

  sub_268B34B74();

  OUTLINED_FUNCTION_23();
}

void sub_268A610D8()
{
  OUTLINED_FUNCTION_26();
  v33 = v1;
  v34 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_268B37A54();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v18 = v17 - v16;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v19 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v13 + 16))(v18, v19, v10);

  v20 = sub_268B37A34();
  v21 = sub_268B37F04();

  if (os_log_type_enabled(v20, v21))
  {
    v32 = v5;
    v22 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_26892CDB8(v9, v7, &v35);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_26892CDB8(v32, v3, &v35);
    _os_log_impl(&dword_2688BB000, v20, v21, "Making views for TV with confirmUtterance: %s and cancelUtterance: %s", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12();
    v5 = v32;
    OUTLINED_FUNCTION_12();
  }

  (*(v13 + 8))(v18, v10);
  sub_2688EA03C(0, &unk_2802A79D8, 0x277D47A18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v23 = OUTLINED_FUNCTION_29_6();
  *(v23 + 16) = xmmword_268B3BBA0;
  *(v23 + 32) = v33;

  v24 = v33;
  v25 = sub_268996E40(v5, v3, v23);
  v26 = OUTLINED_FUNCTION_29_6();
  *(v26 + 16) = xmmword_268B3BBA0;
  *(v26 + 32) = v34;

  v27 = v34;
  v28 = sub_268996E40(v9, v7, v26);
  sub_268B34B84();
  sub_268B34B44();
  OUTLINED_FUNCTION_8_23();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_268B3C5A0;
  *(v29 + 32) = v28;
  *(v29 + 40) = v25;
  v30 = v28;
  v31 = v25;
  sub_268B34B54();

  sub_268B34B74();

  OUTLINED_FUNCTION_23();
}

void sub_268A61424()
{
  OUTLINED_FUNCTION_26();
  v48 = v0;
  v49 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_268B37A54();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v18 = v17 - v16;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v50 = v5;
  v19 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v13 + 16))(v18, v19, v10);

  v20 = sub_268B37A34();
  v21 = sub_268B37F04();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_26892CDB8(v9, v7, &v51);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_26892CDB8(v50, v3, &v51);
    _os_log_impl(&dword_2688BB000, v20, v21, "Making SAUIConfirmationView with confirmLabel: %s and cancelLabel: %s", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  (*(v13 + 8))(v18, v10);
  sub_2688EA03C(0, &qword_2802A6940, 0x277D47A28);
  v23 = *MEMORY[0x277D48B88];
  v24 = sub_268B37BF4();
  v26 = v25;
  v27 = sub_268B37BF4();
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v30 = OUTLINED_FUNCTION_29_6();
  *(v30 + 16) = xmmword_268B3BBA0;
  *(v30 + 32) = v48;

  v31 = v48;
  v32 = sub_268996C74(v9, v7, v24, v26, v27, v29, v30);
  v33 = *MEMORY[0x277D48B90];
  v34 = sub_268B37BF4();
  v36 = v35;
  v37 = *MEMORY[0x277D48B98];
  v38 = sub_268B37BF4();
  v40 = v39;
  v41 = OUTLINED_FUNCTION_29_6();
  *(v41 + 16) = xmmword_268B3BBA0;
  *(v41 + 32) = v49;

  v42 = v49;
  v43 = sub_268996C74(v50, v3, v34, v36, v38, v40, v41);
  sub_2688EA03C(0, &qword_2802A79E8, 0x277D47A38);
  v44 = v43;
  v45 = v32;
  v46 = sub_268996A94(v44, v45);
  v47 = OUTLINED_FUNCTION_29_6();
  *(v47 + 16) = xmmword_268B3BBA0;
  *(v47 + 32) = v46;

  OUTLINED_FUNCTION_23();
}

void sub_268A617C0(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A79D0, &unk_268B485D0);
  v3 = sub_268B37CE4();

  [a2 setTemplateItems_];
}

uint64_t OUTLINED_FUNCTION_5_18()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return sub_268B34D34();
}

uint64_t sub_268A618A0(uint64_t a1, void (*a2)(char *, unint64_t), uint64_t a3, void (*a4)(void *), unint64_t a5)
{
  v65 = a4;
  v67 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v60 - v10);
  v12 = sub_268B37A54();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v64 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v63 = &v60 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v60 - v22;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v24 = __swift_project_value_buffer(v12, qword_2802CDA10);
    v66 = *(v15 + 16);
    v66(v23, v24, v12);
    v25 = sub_268B37A34();
    v26 = sub_268B37ED4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v68 = v6;
      *v27 = 0;
      _os_log_impl(&dword_2688BB000, v25, v26, "PauseMediaConfirmIntentStrategy.makeDialogForConfirmation()", v27, 2u);
      OUTLINED_FUNCTION_12();
    }

    v28 = *(v15 + 8);
    v68 = (v15 + 8);
    v28(v23, v12);
    v29 = sub_268B18100();
    if (!v29)
    {
      break;
    }

    v15 = v29;
    v30 = sub_2688EFD0C(v29);
    if (!v30)
    {

      break;
    }

    v31 = v30;
    v6 = v63;
    v66(v63, v24, v12);
    v23 = v6;
    v32 = sub_268B37A34();
    v11 = sub_268B37EC4();
    v33 = os_log_type_enabled(v32, v11);
    v61 = a5;
    if (v33)
    {
      v23 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v67 = v28;
      v35 = v34;
      v69 = v34;
      *v23 = 136315138;
      v36 = type metadata accessor for Device();
      v37 = MEMORY[0x26D6256F0](v15, v36);
      v39 = sub_26892CDB8(v37, v38, &v69);

      *(v23 + 4) = v39;
      _os_log_impl(&dword_2688BB000, v32, v11, "Confirming devices: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v67(v6, v12);
    }

    else
    {

      v28(v6, v12);
    }

    v12 = 0;
    a5 = v15 & 0xC000000000000001;
    v47 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v31 == v12)
      {

        v59 = *(v62 + 56);
        sub_268AAF49C(v47, v65, v61);
      }

      if (a5)
      {
        v48 = MEMORY[0x26D625BD0](v12, v15);
      }

      else
      {
        if (v12 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v48 = *(v15 + 8 * v12 + 32);
      }

      v6 = v48;
      v11 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v49 = sub_268988580(v48);
      if (v50)
      {
        v51 = v49;
        v23 = v50;

        goto LABEL_23;
      }

      v51 = sub_268988568(v6);
      v23 = v52;

      ++v12;
      if (v23)
      {
LABEL_23:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = *(v47 + 16);
          sub_2689876A4();
          v47 = v57;
        }

        v53 = *(v47 + 16);
        v54 = v47;
        if (v53 >= *(v47 + 24) >> 1)
        {
          sub_2689876A4();
          v54 = v58;
        }

        *(v54 + 16) = v53 + 1;
        v47 = v54;
        v55 = v54 + 16 * v53;
        *(v55 + 32) = v51;
        *(v55 + 40) = v23;
        v12 = v11;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    OUTLINED_FUNCTION_0_0();
  }

  v40 = v64;
  v66(v64, v24, v12);
  v41 = sub_268B37A34();
  v42 = sub_268B37EE4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_2688BB000, v41, v42, "Could not find any devices in the intent for confirmation", v43, 2u);
    OUTLINED_FUNCTION_12();
  }

  v28(v40, v12);
  sub_2688C2ECC();
  v44 = swift_allocError();
  *v45 = 33;
  *v11 = v44;
  swift_storeEnumTagMultiPayload();
  v65(v11);
  return sub_2688C058C(v11, &qword_2802A6300, &unk_268B3BD80);
}

uint64_t sub_268A61E78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v42 = a4;
  v43 = a5;
  v45 = a2;
  v46 = a1;
  v7 = sub_268B35044();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v41 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v44 = &v41 - v14;
  v15 = sub_268B37A54();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v23 = __swift_project_value_buffer(v15, qword_2802CDA10);
  (*(v18 + 16))(v22, v23, v15);
  v24 = sub_268B37A34();
  v25 = sub_268B37ED4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2688BB000, v24, v25, "PauseMediaConfirmIntentStrategy.makePromptForConfirmation() called", v26, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v18 + 8))(v22, v15);
  v27 = sub_268B362B4();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  sub_268B362A4();
  v30 = v44;
  sub_2689D9FD4();

  v31 = v41;
  (*(v10 + 16))(v41, v30, v7);
  v32 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v33 = swift_allocObject();
  v34 = v43;
  *(v33 + 2) = v42;
  *(v33 + 3) = v34;
  v35 = v45;
  v36 = v46;
  *(v33 + 4) = v45;
  *(v33 + 5) = v6;
  *(v33 + 6) = v36;
  (*(v10 + 32))(&v33[v32], v31, v7);

  v37 = v35;

  sub_268A618A0(v38, v37, v39, sub_268A62D60, v33);

  return (*(v10 + 8))(v30, v7);
}

uint64_t sub_268A621B8(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v73 = a6;
  v74 = a7;
  v72 = a5;
  v79 = a4;
  v80 = a2;
  v81 = a3;
  v76 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v75 = &v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v70 = &v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v69 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v65 - v17;
  v18 = sub_268B34E24();
  v77 = *(v18 - 8);
  v78 = v18;
  v19 = *(v77 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_268B37A54();
  v67 = *(v22 - 8);
  v23 = *(v67 + 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v65 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v71 = &v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v65 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v65 - v37;
  sub_2688F1FA4(v76, v29, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v29, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v22, qword_2802CDA10);
    v40 = v67;
    (*(v67 + 2))(v25, v39, v22);
    v41 = sub_268B37A34();
    v42 = sub_268B37EE4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2688BB000, v41, v42, "PauseMediaConfirmIntentStrategy.makePromptForConfirmation Unable to generate dialog.", v43, 2u);
      MEMORY[0x26D6266E0](v43, -1, -1);
    }

    v40[1](v25, v22);
    sub_2688C2ECC();
    v44 = swift_allocError();
    *v45 = -74;
    v82[0] = v44;
    v83 = 1;
    v80(v82);
    return sub_2688C058C(v82, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v29, v38);
    sub_268947F08();
    v65 = v47;
    v48 = v72;
    v49 = __swift_project_boxed_opaque_existential_1(v72 + 8, v72[11]);
    v50 = *MEMORY[0x277D5BB48];
    v51 = *(v77 + 104);
    v67 = v21;
    v51(v21, v50, v78);
    sub_2688F1FA4(v38, v36, &unk_2802A56E0, &unk_268B3CDF0);
    v66 = v30;

    v52 = sub_268B350F4();
    v76 = *(v52 - 8);
    v53 = v68;
    (*(v76 + 32))(v68, v36, v52);
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v52);
    v54 = sub_268B34B94();
    v55 = v70;
    __swift_storeEnumTagSinglePayload(v70, 1, 1, v54);
    v56 = *v49;
    v57 = v69;
    sub_2688F1FA4(v53, v69, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v57, 1, v52) == 1)
    {
      sub_2688C058C(v57, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v76 + 8))(v57, v52);
    }

    v58 = v67;
    sub_2688E2778();

    sub_2688C058C(v55, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v53, &unk_2802A57B0, &unk_268B3CE00);
    (*(v77 + 8))(v58, v78);
    v59 = v48[16];
    v60 = v48[17];
    __swift_project_boxed_opaque_existential_1(v48 + 13, v59);
    v61 = v71;
    sub_2688F1FA4(v38, v71, &unk_2802A56E0, &unk_268B3CDF0);
    v62 = *(v61 + *(v66 + 48));
    v63 = sub_268B35044();
    v64 = v75;
    (*(*(v63 - 8) + 16))(v75, v74, v63);
    __swift_storeEnumTagSinglePayload(v64, 0, 1, v63);
    (*(v60 + 16))(v61, v62, v64, v80, v81, v59, v60);

    sub_2688C058C(v64, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v38, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v76 + 8))(v61, v52);
  }
}

void sub_268A62A44()
{
  type metadata accessor for PauseMediaConfirmIntentStrategy();

  JUMPOUT(0x26D6221E0);
}

uint64_t sub_268A62AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PauseMediaConfirmIntentStrategy();

  return MEMORY[0x2821B9D30](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A62B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for PauseMediaConfirmIntentStrategy();

  return MEMORY[0x2821B9D20](a1, a2, a3, a4, a5, a6, v15, a8);
}

unint64_t sub_268A62C14(uint64_t a1)
{
  result = sub_268A62C3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268A62C3C()
{
  result = qword_2802A79F0;
  if (!qword_2802A79F0)
  {
    type metadata accessor for PauseMediaConfirmIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A79F0);
  }

  return result;
}

uint64_t sub_268A62C90()
{
  v1 = sub_268B35044();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 24);

  v9 = *(v0 + 40);

  v10 = *(v0 + 48);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_268A62D60(uint64_t a1)
{
  v3 = *(sub_268B35044() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_268A621B8(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_268A62F08(uint64_t a1, int a2)
{
  v69 = a2;
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v65 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v62 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v62 - v11;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v3, qword_2802CDA10);
  v14 = *(v4 + 16);
  v67 = v13;
  v68 = v14;
  (v14)(v12);
  v15 = sub_268B37A34();
  v16 = sub_268B37EC4();
  v17 = os_log_type_enabled(v15, v16);
  v66 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = v4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v63 = v10;
    v72[0] = v20;
    *v19 = 136446466;
    v21 = NLMediaType.description.getter(a1);
    v23 = sub_26892CDB8(v21, v22, v72);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    v24 = v69;
    LOBYTE(v70) = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6D58, &unk_268B42830);
    v25 = sub_268B38094();
    v27 = sub_26892CDB8(v25, v26, v72);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_2688BB000, v15, v16, "Getting app identifier for mediaType %{public}s and deviceType: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    v10 = v63;
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v28 = OUTLINED_FUNCTION_5_19();
    (v15)(v28);
  }

  else
  {

    v29 = OUTLINED_FUNCTION_5_19();
    (v15)(v29);
    v24 = v69;
  }

  if (v24 == 7)
  {
    v30 = v65;
    v68(v65, v67, v3);
    v31 = v30;
    v32 = sub_268B37A34();
    v33 = sub_268B37EE4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2688BB000, v32, v33, "Device type is nil. Returning nil for getLocalBundleIdentifier", v34, 2u);
      OUTLINED_FUNCTION_12();
    }

    v35 = v31;
    goto LABEL_10;
  }

  v36 = v66;
  sub_268A63930(v66, &v70);
  if (!v71)
  {
    sub_268A63A14(&v70);
    v68(v10, v67, v3);
    v41 = sub_268B37A34();
    v42 = sub_268B37EE4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v10;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v72[0] = v45;
      *v44 = 136446210;
      v46 = NLMediaType.description.getter(v36);
      v48 = sub_26892CDB8(v46, v47, v72);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_2688BB000, v41, v42, "Could not get bunlde id for type: %{public}s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v35 = v43;
    }

    else
    {

      v35 = v10;
    }

LABEL_10:
    (v15)(v35, v3);
    return OUTLINED_FUNCTION_123();
  }

  sub_2688E6514(&v70, v72);
  v37 = v72[4];
  __swift_project_boxed_opaque_existential_1(v72, v72[3]);
  switch(v24)
  {
    case 2:
      v38 = v37[4];
      v39 = OUTLINED_FUNCTION_0_37();
      v40(v39);
      break;
    case 3:
      v55 = v37[7];
      v56 = OUTLINED_FUNCTION_0_37();
      v57(v56);
      break;
    case 4:
      v49 = v37[10];
      v50 = OUTLINED_FUNCTION_0_37();
      v51(v50);
      break;
    case 5:
      v52 = v37[13];
      v53 = OUTLINED_FUNCTION_0_37();
      v54(v53);
      break;
    default:
      v58 = v37[1];
      v59 = OUTLINED_FUNCTION_0_37();
      v60(v59);
      break;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v72);
  return OUTLINED_FUNCTION_123();
}

uint64_t sub_268A63484@<X0>(void *a1@<X8>)
{
  result = *MEMORY[0x277D27E58];
  if (*MEMORY[0x277D27E58])
  {
    result = sub_268B37BF4();
    *a1 = 0x6C7070612E6D6F63;
    a1[1] = 0xEF636973754D2E65;
    a1[2] = 0x6C7070612E6D6F63;
    a1[3] = 0xEF636973754D2E65;
    a1[4] = 0xD000000000000011;
    a1[5] = 0x8000000268B5BA50;
    a1[6] = 0x6C7070612E6D6F63;
    a1[7] = 0xEF636973754D2E65;
    a1[8] = result;
    a1[9] = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268A63508()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_123();
}

uint64_t sub_268A63534()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_123();
}

uint64_t sub_268A63560()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_123();
}

uint64_t sub_268A6358C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_123();
}

uint64_t sub_268A635B8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_123();
}

uint64_t sub_268A635E4@<X0>(void *a1@<X8>)
{
  result = *MEMORY[0x277D27E60];
  if (*MEMORY[0x277D27E60])
  {
    result = sub_268B37BF4();
    *a1 = 0xD000000000000012;
    a1[1] = 0x8000000268B5BA70;
    a1[2] = 0xD000000000000012;
    a1[3] = 0x8000000268B5BA70;
    a1[4] = 0xD000000000000012;
    a1[5] = 0x8000000268B5BA70;
    a1[6] = 0xD000000000000012;
    a1[7] = 0x8000000268B5BA70;
    a1[8] = result;
    a1[9] = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268A63648@<X0>(void *a1@<X8>)
{
  result = *MEMORY[0x277D27E50];
  if (*MEMORY[0x277D27E50])
  {
    result = sub_268B37BF4();
    *a1 = 0xD000000000000010;
    a1[1] = 0x8000000268B5BA90;
    a1[2] = 0xD000000000000010;
    a1[3] = 0x8000000268B5BA90;
    a1[4] = 0xD000000000000010;
    a1[5] = 0x8000000268B5BA90;
    a1[6] = 0xD000000000000011;
    a1[7] = 0x8000000268B5BAB0;
    a1[8] = result;
    a1[9] = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268A636C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3E990;
  if (qword_2802A4F40 != -1)
  {
    swift_once();
  }

  v1 = *algn_2802CDA38;
  *(inited + 32) = qword_2802CDA30;
  *(inited + 40) = v1;
  v2 = qword_2802A4F48;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = *algn_2802CDA48;
  *(inited + 48) = qword_2802CDA40;
  *(inited + 56) = v3;
  *(inited + 64) = 0xD000000000000018;
  *(inited + 72) = 0x8000000268B562C0;
  *(inited + 80) = 0xD000000000000017;
  *(inited + 88) = 0x8000000268B5BAD0;
  *(inited + 96) = 0xD000000000000015;
  *(inited + 104) = 0x8000000268B5BAF0;

  result = sub_268A63AD8(inited);
  qword_2802CDA28 = result;
  return result;
}

uint64_t sub_268A63894(uint64_t a1, void (*a2)(void *__return_ptr), uint64_t (*a3)(void *), void *a4, void *a5)
{
  a2(v11);
  v9 = v11[0];
  v8 = v11[1];

  result = a3(v11);
  *a4 = v9;
  *a5 = v8;
  return result;
}

double sub_268A63930@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 6:
      sub_268A63648(v5);
      *(a2 + 24) = &unk_28795A5A8;
      *(a2 + 32) = &off_28795A7F0;
      goto LABEL_7;
    case 2:
      sub_268A635E4(v5);
      *(a2 + 24) = &unk_28795A638;
      *(a2 + 32) = &off_28795A770;
      goto LABEL_7;
    case 1:
      sub_268A63484(v5);
      *(a2 + 24) = &unk_28795A6C8;
      *(a2 + 32) = &off_28795A6F0;
LABEL_7:
      v3 = swift_allocObject();
      *a2 = v3;
      memcpy((v3 + 16), v5, 0x50uLL);
      return result;
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_268A63A14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A79F8, &unk_268B48708);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_9()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_268A63AD8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B00, qword_268B3C520);
  result = sub_268B38194();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

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
    sub_268B38514();

    sub_268B37C54();
    result = sub_268B38544();
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
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_268B38444() & 1) != 0)
      {

        goto LABEL_16;
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
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_268A63C90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_268A63CD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_268A63D80()
{
  OUTLINED_FUNCTION_26();
  v6 = OUTLINED_FUNCTION_62_4();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_30(v12, v193);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_58_0();
  v15 = MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_21_1(v15, v16, v17, v18, v19, v20, v21, v22, v194);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_68_3();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_31_5();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_80_1();
  v28 = MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_22_16(v28, v29, v30, v31, v32, v33, v34, v35, v195);
  v37 = MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_33_0(v37, v38, v39, v40, v41, v42, v43, v44, v196);
  v46 = MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_21_15(v46, v47, v48, v49, v50, v51, v52, v53, v197);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_136;
  }

LABEL_2:
  OUTLINED_FUNCTION_9_20();
  v55 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v56 = OUTLINED_FUNCTION_5_20(v55);
  v57(v56);
  v58 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_27_7();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_52_1(v60);
    OUTLINED_FUNCTION_50_7(&dword_2688BB000, v61, v62, "Updating destination parameters for WHA dialog");
    OUTLINED_FUNCTION_12();
  }

  v63 = OUTLINED_FUNCTION_16_26();
  v64(v63);
  sub_268A66710();
  OUTLINED_FUNCTION_63_5(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_14_19();
  while (v5 != v3)
  {
    if (v9)
    {
      OUTLINED_FUNCTION_94_4();
    }

    else
    {
      OUTLINED_FUNCTION_70_6();
      if (v65)
      {
        goto LABEL_96;
      }

      OUTLINED_FUNCTION_92_4();
    }

    OUTLINED_FUNCTION_76_3();
    if (v156)
    {
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      OUTLINED_FUNCTION_58_7();
      goto LABEL_98;
    }

    v66 = OUTLINED_FUNCTION_107_2();
    OUTLINED_FUNCTION_106_1();
    v67 = OUTLINED_FUNCTION_201_0();
    v4 = v67;
    if (v0)
    {
      v1 = OUTLINED_FUNCTION_102_3();

      if (v1)
      {

        goto LABEL_15;
      }
    }

    else
    {
    }

    v1 = v199;
    sub_268B38214();
    OUTLINED_FUNCTION_48_8();
    OUTLINED_FUNCTION_104_3();
    sub_268B38224();
LABEL_15:
    ++v3;
  }

  if (!OUTLINED_FUNCTION_98_1())
  {

    v70 = OUTLINED_FUNCTION_0_38();
    v71(v70);
    v72 = sub_268B37A34();
    v73 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_139_0(v73))
    {
      v74 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v74);
      OUTLINED_FUNCTION_10_7(&dword_2688BB000, v75, v76, "No destinations found to populate speaker parameter.");
      OUTLINED_FUNCTION_83_0();
    }

    v77 = OUTLINED_FUNCTION_278();
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_15_20();
  do
  {
    if (v5 == v1)
    {
      OUTLINED_FUNCTION_81_2();
      if (!(v155 ^ v156 | v68))
      {
        v78 = OUTLINED_FUNCTION_18_14();
        v79(v78);
        v80 = sub_268B37A34();
        v81 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v81))
        {
          v82 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v82);
          OUTLINED_FUNCTION_10_7(&dword_2688BB000, v83, v84, "More than 2 rooms mentioned in the intent. Setting speaker.hasThreeOrMoreRooms to true");
          OUTLINED_FUNCTION_83_0();
        }

        v85 = OUTLINED_FUNCTION_54_4();
        v86(v85);
        OUTLINED_FUNCTION_4_33();
        v87 = sub_268AB22D8();
        OUTLINED_FUNCTION_7_25(v87, v88);
        if (!v68)
        {
          OUTLINED_FUNCTION_78_5(v89, v90);
        }

        v91 = OUTLINED_FUNCTION_29_13();
        v92(v91);
      }

      v1 = 0;
      while (v5)
      {
        if (v3)
        {
          v93 = OUTLINED_FUNCTION_138();
          MEMORY[0x26D625BD0](v93);
        }

        else
        {
          OUTLINED_FUNCTION_56_6();
          if (v65)
          {
            goto LABEL_135;
          }

          OUTLINED_FUNCTION_64_6();
        }

        OUTLINED_FUNCTION_75_3();
        if (v156)
        {
          goto LABEL_134;
        }

        if (OUTLINED_FUNCTION_61_4() == 6)
        {

LABEL_55:
          v109 = OUTLINED_FUNCTION_8_24();
          v110(v109);
          v1 = sub_268B37A34();
          v111 = sub_268B37F04();
          if (OUTLINED_FUNCTION_139_0(v111))
          {
            v112 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_81(v112);
            OUTLINED_FUNCTION_10_7(&dword_2688BB000, v113, v114, "Destination resolved as the local device. Setting speaker.isInHere to true");
            OUTLINED_FUNCTION_83_0();
          }

          v115 = OUTLINED_FUNCTION_52_9();
          v116(v115);
          OUTLINED_FUNCTION_4_33();
          v117 = sub_268AB22D8();
          OUTLINED_FUNCTION_7_25(v117, v118);
          if (!v68)
          {
            OUTLINED_FUNCTION_80_5(v119, v120);
          }

          v121 = OUTLINED_FUNCTION_29_13();
          v122(v121);
          break;
        }

        v0 = OUTLINED_FUNCTION_61_4();

        OUTLINED_FUNCTION_83_4();
        if (v68)
        {
          goto LABEL_55;
        }
      }

      OUTLINED_FUNCTION_63_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_77_6();
      v5 = &unk_2879500E8;
LABEL_61:
      while (v6 != v58)
      {
        if (v3)
        {
          v125 = OUTLINED_FUNCTION_278();
          MEMORY[0x26D625BD0](v125);
        }

        else
        {
          OUTLINED_FUNCTION_84_4();
          if (v65)
          {
            goto LABEL_133;
          }

          v123 = *(v4 + v6);
        }

        OUTLINED_FUNCTION_73_5();
        if (v156)
        {
          goto LABEL_132;
        }

        OUTLINED_FUNCTION_96_3();
        v124 = 0;
        while (v124 != 24)
        {
          OUTLINED_FUNCTION_31_14(v124);
          if (v68)
          {

            goto LABEL_61;
          }
        }

        v1 = v199;
        sub_268B38214();
        OUTLINED_FUNCTION_48_8();
        OUTLINED_FUNCTION_103_3();
        sub_268B38224();
      }

      OUTLINED_FUNCTION_93_5();
      OUTLINED_FUNCTION_71_6();
      if (v126)
      {
        OUTLINED_FUNCTION_49_5();
        if (v0)
        {
          OUTLINED_FUNCTION_99_3();
        }

        else
        {
          v127 = v58[4].isa;
        }

        OUTLINED_FUNCTION_100_2(v127);
        OUTLINED_FUNCTION_55_6();
        if (!v65)
        {
          OUTLINED_FUNCTION_3_39();
          v129();
          v1 = sub_268B37A34();
          v130 = sub_268B37F04();
          if (OUTLINED_FUNCTION_139_0(v130))
          {
            v131 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_279(v131);
            OUTLINED_FUNCTION_12_20(&dword_2688BB000, v132, v133, "Destination #1: Destination is a room or zone. Setting speaker.firstRoom to the groupName");
            OUTLINED_FUNCTION_20_2();
          }

          OUTLINED_FUNCTION_37_13();
          v134();
          OUTLINED_FUNCTION_4_33();
          v135 = sub_268AB22D8();
          OUTLINED_FUNCTION_25_15(v135, v136);
          if (!v68)
          {
            if (OUTLINED_FUNCTION_42_9())
            {
              sub_268B37BF4();
              OUTLINED_FUNCTION_66_5();
            }

            else
            {
              OUTLINED_FUNCTION_58_7();
            }

            OUTLINED_FUNCTION_89_4();
LABEL_99:

            v154 = OUTLINED_FUNCTION_24_15();
            (v1)(v154);
LABEL_100:

            goto LABEL_101;
          }

          goto LABEL_87;
        }

        if (v128 == 3)
        {
          OUTLINED_FUNCTION_3_39();
          v137();
          v1 = sub_268B37A34();
          v138 = sub_268B37F04();
          if (OUTLINED_FUNCTION_139_0(v138))
          {
            v139 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_279(v139);
            OUTLINED_FUNCTION_12_20(&dword_2688BB000, v140, v141, "Destination #1: Destination is an accesory. Setting speaker.firstSpeakerName to the groupName");
            OUTLINED_FUNCTION_20_2();
          }

          OUTLINED_FUNCTION_37_13();
          v142();
          OUTLINED_FUNCTION_4_33();
          v143 = sub_268AB22D8();
          OUTLINED_FUNCTION_25_15(v143, v144);
          if (!v68)
          {
            if (!OUTLINED_FUNCTION_42_9())
            {
              goto LABEL_97;
            }

            sub_268B37BF4();
            OUTLINED_FUNCTION_66_5();
LABEL_98:
            OUTLINED_FUNCTION_88_4();
            goto LABEL_99;
          }

LABEL_87:
          v145 = OUTLINED_FUNCTION_29_13();
          (v1)(v145);
          goto LABEL_100;
        }

        OUTLINED_FUNCTION_3_39();
        v146();
        v147 = sub_268B37A34();
        v148 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v148))
        {
          v149 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_279(v149);
          OUTLINED_FUNCTION_12_20(&dword_2688BB000, v150, v151, "Destination #1: Destination type is unknown. Ignoring...");
          OUTLINED_FUNCTION_20_2();
        }

        OUTLINED_FUNCTION_37_13();
        v152();
      }

LABEL_101:
      OUTLINED_FUNCTION_101_1();
      OUTLINED_FUNCTION_91_4();
      if (v68)
      {
        swift_unknownObjectRelease();
        goto LABEL_129;
      }

      OUTLINED_FUNCTION_87_3();
      if (v155 == v156)
      {
        __break(1u);
        return;
      }

      v159 = *(v157 + 8 * v158);
      OUTLINED_FUNCTION_95_4();
      OUTLINED_FUNCTION_61_4();
      OUTLINED_FUNCTION_55_6();
      if (!v65)
      {
        v161 = OUTLINED_FUNCTION_1_48();
        v162(v161);
        v163 = sub_268B37A34();
        v164 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v164))
        {
          v165 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v165);
          OUTLINED_FUNCTION_13_15(&dword_2688BB000, v166, v167, "Destination #2: Destination is a room or zone. Setting speaker.firstRoom to the groupName");
          OUTLINED_FUNCTION_6();
        }

        v168 = OUTLINED_FUNCTION_17_21();
        v169(v168);
        OUTLINED_FUNCTION_23_17();
        v170 = sub_268AB22D8();
        OUTLINED_FUNCTION_26_14(v170, v171);
        if (!v68)
        {
          if (OUTLINED_FUNCTION_46_9())
          {
            sub_268B37BF4();
            OUTLINED_FUNCTION_65_6();
          }

          else
          {
            OUTLINED_FUNCTION_57_4();
          }

          OUTLINED_FUNCTION_86_3();
          goto LABEL_127;
        }

        goto LABEL_117;
      }

      if (v160 == 3)
      {
        v172 = OUTLINED_FUNCTION_1_48();
        v173(v172);
        v174 = sub_268B37A34();
        v175 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v175))
        {
          v176 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v176);
          OUTLINED_FUNCTION_13_15(&dword_2688BB000, v177, v178, "Destination #2: Destination is an accesory. Setting speaker.firstSpeakerName to the groupName");
          OUTLINED_FUNCTION_6();
        }

        v179 = OUTLINED_FUNCTION_17_21();
        v180(v179);
        OUTLINED_FUNCTION_23_17();
        v181 = sub_268AB22D8();
        OUTLINED_FUNCTION_26_14(v181, v182);
        if (!v68)
        {
          if (OUTLINED_FUNCTION_46_9())
          {
            sub_268B37BF4();
            OUTLINED_FUNCTION_65_6();
          }

          else
          {
            OUTLINED_FUNCTION_57_4();
          }

          OUTLINED_FUNCTION_85_4();
LABEL_127:

          v192 = OUTLINED_FUNCTION_24_15();
          (v0)(v192);
          goto LABEL_128;
        }

LABEL_117:
        v183 = OUTLINED_FUNCTION_29_13();
        (v0)(v183);
LABEL_128:

        goto LABEL_129;
      }

      v184 = OUTLINED_FUNCTION_1_48();
      v185(v184);
      v186 = sub_268B37A34();
      v187 = sub_268B37F04();
      if (OUTLINED_FUNCTION_139_0(v187))
      {
        v188 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v188);
        OUTLINED_FUNCTION_13_15(&dword_2688BB000, v189, v190, "Destination #2: Destination type is unknown. Ignoring...");
        OUTLINED_FUNCTION_6();
      }

      v77 = OUTLINED_FUNCTION_43_8();
LABEL_31:
      v198(v77);
      goto LABEL_129;
    }

    if (v3)
    {
      v69 = OUTLINED_FUNCTION_138();
      MEMORY[0x26D625BD0](v69);
    }

    else
    {
      OUTLINED_FUNCTION_56_6();
      if (v65)
      {
        goto LABEL_131;
      }

      OUTLINED_FUNCTION_64_6();
    }

    OUTLINED_FUNCTION_90_4();
    if (v156)
    {
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      OUTLINED_FUNCTION_0_0();
      goto LABEL_2;
    }

    v58 = OUTLINED_FUNCTION_97_2();

    OUTLINED_FUNCTION_82_2();
  }

  while (!v68);

  v94 = OUTLINED_FUNCTION_0_38();
  v95(v94);
  v96 = sub_268B37A34();
  v97 = sub_268B37F04();
  if (OUTLINED_FUNCTION_139_0(v97))
  {
    v99 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v99);
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v100, v101, "User mentioned everywhere in the intent. Setting speaker.isAllSpeakers to true");
    OUTLINED_FUNCTION_83_0();
  }

  v102 = OUTLINED_FUNCTION_278();
  v198(v102);
  OUTLINED_FUNCTION_4_33();
  v103 = sub_268AB22D8();
  OUTLINED_FUNCTION_7_25(v103, v104);
  if (!v68)
  {
    OUTLINED_FUNCTION_79_5(v105, v106);
  }

  v107 = OUTLINED_FUNCTION_29_13();
  v108(v107);
LABEL_129:
  OUTLINED_FUNCTION_23();
}

void sub_268A647E4()
{
  OUTLINED_FUNCTION_26();
  v6 = OUTLINED_FUNCTION_62_4();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_30(v12, v193);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_58_0();
  v15 = MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_21_1(v15, v16, v17, v18, v19, v20, v21, v22, v194);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_68_3();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_31_5();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_80_1();
  v28 = MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_22_16(v28, v29, v30, v31, v32, v33, v34, v35, v195);
  v37 = MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_33_0(v37, v38, v39, v40, v41, v42, v43, v44, v196);
  v46 = MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_21_15(v46, v47, v48, v49, v50, v51, v52, v53, v197);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_136;
  }

LABEL_2:
  OUTLINED_FUNCTION_9_20();
  v55 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v56 = OUTLINED_FUNCTION_5_20(v55);
  v57(v56);
  v58 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_27_7();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_52_1(v60);
    OUTLINED_FUNCTION_50_7(&dword_2688BB000, v61, v62, "Updating destination parameters for WHA dialog");
    OUTLINED_FUNCTION_12();
  }

  v63 = OUTLINED_FUNCTION_16_26();
  v64(v63);
  sub_268A66710();
  OUTLINED_FUNCTION_63_5(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_14_19();
  while (v5 != v3)
  {
    if (v9)
    {
      OUTLINED_FUNCTION_94_4();
    }

    else
    {
      OUTLINED_FUNCTION_70_6();
      if (v65)
      {
        goto LABEL_96;
      }

      OUTLINED_FUNCTION_92_4();
    }

    OUTLINED_FUNCTION_76_3();
    if (v156)
    {
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      OUTLINED_FUNCTION_58_7();
      goto LABEL_98;
    }

    v66 = OUTLINED_FUNCTION_107_2();
    OUTLINED_FUNCTION_106_1();
    v67 = OUTLINED_FUNCTION_201_0();
    v4 = v67;
    if (v0)
    {
      v1 = OUTLINED_FUNCTION_102_3();

      if (v1)
      {

        goto LABEL_15;
      }
    }

    else
    {
    }

    v1 = v199;
    sub_268B38214();
    OUTLINED_FUNCTION_48_8();
    OUTLINED_FUNCTION_104_3();
    sub_268B38224();
LABEL_15:
    ++v3;
  }

  if (!OUTLINED_FUNCTION_98_1())
  {

    v70 = OUTLINED_FUNCTION_0_38();
    v71(v70);
    v72 = sub_268B37A34();
    v73 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_139_0(v73))
    {
      v74 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v74);
      OUTLINED_FUNCTION_10_7(&dword_2688BB000, v75, v76, "No destinations found to populate speaker parameter.");
      OUTLINED_FUNCTION_83_0();
    }

    v77 = OUTLINED_FUNCTION_278();
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_15_20();
  do
  {
    if (v5 == v1)
    {
      OUTLINED_FUNCTION_81_2();
      if (!(v155 ^ v156 | v68))
      {
        v78 = OUTLINED_FUNCTION_18_14();
        v79(v78);
        v80 = sub_268B37A34();
        v81 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v81))
        {
          v82 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v82);
          OUTLINED_FUNCTION_10_7(&dword_2688BB000, v83, v84, "More than 2 rooms mentioned in the intent. Setting speaker.hasThreeOrMoreRooms to true");
          OUTLINED_FUNCTION_83_0();
        }

        v85 = OUTLINED_FUNCTION_54_4();
        v86(v85);
        OUTLINED_FUNCTION_4_33();
        v87 = sub_268AB22D8();
        OUTLINED_FUNCTION_7_25(v87, v88);
        if (!v68)
        {
          OUTLINED_FUNCTION_78_5(v89, v90);
        }

        v91 = OUTLINED_FUNCTION_29_13();
        v92(v91);
      }

      v1 = 0;
      while (v5)
      {
        if (v3)
        {
          v93 = OUTLINED_FUNCTION_138();
          MEMORY[0x26D625BD0](v93);
        }

        else
        {
          OUTLINED_FUNCTION_56_6();
          if (v65)
          {
            goto LABEL_135;
          }

          OUTLINED_FUNCTION_64_6();
        }

        OUTLINED_FUNCTION_75_3();
        if (v156)
        {
          goto LABEL_134;
        }

        if (OUTLINED_FUNCTION_61_4() == 6)
        {

LABEL_55:
          v109 = OUTLINED_FUNCTION_8_24();
          v110(v109);
          v1 = sub_268B37A34();
          v111 = sub_268B37F04();
          if (OUTLINED_FUNCTION_139_0(v111))
          {
            v112 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_81(v112);
            OUTLINED_FUNCTION_10_7(&dword_2688BB000, v113, v114, "Destination resolved as the local device. Setting speaker.isInHere to true");
            OUTLINED_FUNCTION_83_0();
          }

          v115 = OUTLINED_FUNCTION_52_9();
          v116(v115);
          OUTLINED_FUNCTION_4_33();
          v117 = sub_268AB22D8();
          OUTLINED_FUNCTION_7_25(v117, v118);
          if (!v68)
          {
            OUTLINED_FUNCTION_80_5(v119, v120);
          }

          v121 = OUTLINED_FUNCTION_29_13();
          v122(v121);
          break;
        }

        v0 = OUTLINED_FUNCTION_61_4();

        OUTLINED_FUNCTION_83_4();
        if (v68)
        {
          goto LABEL_55;
        }
      }

      OUTLINED_FUNCTION_63_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_77_6();
      v5 = &unk_287950120;
LABEL_61:
      while (v6 != v58)
      {
        if (v3)
        {
          v125 = OUTLINED_FUNCTION_278();
          MEMORY[0x26D625BD0](v125);
        }

        else
        {
          OUTLINED_FUNCTION_84_4();
          if (v65)
          {
            goto LABEL_133;
          }

          v123 = *(v4 + v6);
        }

        OUTLINED_FUNCTION_73_5();
        if (v156)
        {
          goto LABEL_132;
        }

        OUTLINED_FUNCTION_96_3();
        v124 = 0;
        while (v124 != 24)
        {
          OUTLINED_FUNCTION_31_14(v124);
          if (v68)
          {

            goto LABEL_61;
          }
        }

        v1 = v199;
        sub_268B38214();
        OUTLINED_FUNCTION_48_8();
        OUTLINED_FUNCTION_103_3();
        sub_268B38224();
      }

      OUTLINED_FUNCTION_93_5();
      OUTLINED_FUNCTION_71_6();
      if (v126)
      {
        OUTLINED_FUNCTION_49_5();
        if (v0)
        {
          OUTLINED_FUNCTION_99_3();
        }

        else
        {
          v127 = v58[4].isa;
        }

        OUTLINED_FUNCTION_100_2(v127);
        OUTLINED_FUNCTION_55_6();
        if (!v65)
        {
          OUTLINED_FUNCTION_3_39();
          v129();
          v1 = sub_268B37A34();
          v130 = sub_268B37F04();
          if (OUTLINED_FUNCTION_139_0(v130))
          {
            v131 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_279(v131);
            OUTLINED_FUNCTION_12_20(&dword_2688BB000, v132, v133, "Destination #1: Destination is a room or zone. Setting speaker.firstRoom to the groupName");
            OUTLINED_FUNCTION_20_2();
          }

          OUTLINED_FUNCTION_37_13();
          v134();
          OUTLINED_FUNCTION_4_33();
          v135 = sub_268AB22D8();
          OUTLINED_FUNCTION_25_15(v135, v136);
          if (!v68)
          {
            if (OUTLINED_FUNCTION_42_9())
            {
              sub_268B37BF4();
              OUTLINED_FUNCTION_66_5();
            }

            else
            {
              OUTLINED_FUNCTION_58_7();
            }

            OUTLINED_FUNCTION_89_4();
LABEL_99:

            v154 = OUTLINED_FUNCTION_24_15();
            (v1)(v154);
LABEL_100:

            goto LABEL_101;
          }

          goto LABEL_87;
        }

        if (v128 == 3)
        {
          OUTLINED_FUNCTION_3_39();
          v137();
          v1 = sub_268B37A34();
          v138 = sub_268B37F04();
          if (OUTLINED_FUNCTION_139_0(v138))
          {
            v139 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_279(v139);
            OUTLINED_FUNCTION_12_20(&dword_2688BB000, v140, v141, "Destination #1: Destination is an accesory. Setting speaker.firstSpeakerName to the groupName");
            OUTLINED_FUNCTION_20_2();
          }

          OUTLINED_FUNCTION_37_13();
          v142();
          OUTLINED_FUNCTION_4_33();
          v143 = sub_268AB22D8();
          OUTLINED_FUNCTION_25_15(v143, v144);
          if (!v68)
          {
            if (!OUTLINED_FUNCTION_42_9())
            {
              goto LABEL_97;
            }

            sub_268B37BF4();
            OUTLINED_FUNCTION_66_5();
LABEL_98:
            OUTLINED_FUNCTION_88_4();
            goto LABEL_99;
          }

LABEL_87:
          v145 = OUTLINED_FUNCTION_29_13();
          (v1)(v145);
          goto LABEL_100;
        }

        OUTLINED_FUNCTION_3_39();
        v146();
        v147 = sub_268B37A34();
        v148 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v148))
        {
          v149 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_279(v149);
          OUTLINED_FUNCTION_12_20(&dword_2688BB000, v150, v151, "Destination #1: Destination type is unknown. Ignoring...");
          OUTLINED_FUNCTION_20_2();
        }

        OUTLINED_FUNCTION_37_13();
        v152();
      }

LABEL_101:
      OUTLINED_FUNCTION_101_1();
      OUTLINED_FUNCTION_91_4();
      if (v68)
      {
        swift_unknownObjectRelease();
        goto LABEL_129;
      }

      OUTLINED_FUNCTION_87_3();
      if (v155 == v156)
      {
        __break(1u);
        return;
      }

      v159 = *(v157 + 8 * v158);
      OUTLINED_FUNCTION_95_4();
      OUTLINED_FUNCTION_61_4();
      OUTLINED_FUNCTION_55_6();
      if (!v65)
      {
        v161 = OUTLINED_FUNCTION_1_48();
        v162(v161);
        v163 = sub_268B37A34();
        v164 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v164))
        {
          v165 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v165);
          OUTLINED_FUNCTION_13_15(&dword_2688BB000, v166, v167, "Destination #2: Destination is a room or zone. Setting speaker.firstRoom to the groupName");
          OUTLINED_FUNCTION_6();
        }

        v168 = OUTLINED_FUNCTION_17_21();
        v169(v168);
        OUTLINED_FUNCTION_23_17();
        v170 = sub_268AB22D8();
        OUTLINED_FUNCTION_26_14(v170, v171);
        if (!v68)
        {
          if (OUTLINED_FUNCTION_46_9())
          {
            sub_268B37BF4();
            OUTLINED_FUNCTION_65_6();
          }

          else
          {
            OUTLINED_FUNCTION_57_4();
          }

          OUTLINED_FUNCTION_86_3();
          goto LABEL_127;
        }

        goto LABEL_117;
      }

      if (v160 == 3)
      {
        v172 = OUTLINED_FUNCTION_1_48();
        v173(v172);
        v174 = sub_268B37A34();
        v175 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v175))
        {
          v176 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v176);
          OUTLINED_FUNCTION_13_15(&dword_2688BB000, v177, v178, "Destination #2: Destination is an accesory. Setting speaker.firstSpeakerName to the groupName");
          OUTLINED_FUNCTION_6();
        }

        v179 = OUTLINED_FUNCTION_17_21();
        v180(v179);
        OUTLINED_FUNCTION_23_17();
        v181 = sub_268AB22D8();
        OUTLINED_FUNCTION_26_14(v181, v182);
        if (!v68)
        {
          if (OUTLINED_FUNCTION_46_9())
          {
            sub_268B37BF4();
            OUTLINED_FUNCTION_65_6();
          }

          else
          {
            OUTLINED_FUNCTION_57_4();
          }

          OUTLINED_FUNCTION_85_4();
LABEL_127:

          v192 = OUTLINED_FUNCTION_24_15();
          (v0)(v192);
          goto LABEL_128;
        }

LABEL_117:
        v183 = OUTLINED_FUNCTION_29_13();
        (v0)(v183);
LABEL_128:

        goto LABEL_129;
      }

      v184 = OUTLINED_FUNCTION_1_48();
      v185(v184);
      v186 = sub_268B37A34();
      v187 = sub_268B37F04();
      if (OUTLINED_FUNCTION_139_0(v187))
      {
        v188 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v188);
        OUTLINED_FUNCTION_13_15(&dword_2688BB000, v189, v190, "Destination #2: Destination type is unknown. Ignoring...");
        OUTLINED_FUNCTION_6();
      }

      v77 = OUTLINED_FUNCTION_43_8();
LABEL_31:
      v198(v77);
      goto LABEL_129;
    }

    if (v3)
    {
      v69 = OUTLINED_FUNCTION_138();
      MEMORY[0x26D625BD0](v69);
    }

    else
    {
      OUTLINED_FUNCTION_56_6();
      if (v65)
      {
        goto LABEL_131;
      }

      OUTLINED_FUNCTION_64_6();
    }

    OUTLINED_FUNCTION_90_4();
    if (v156)
    {
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      OUTLINED_FUNCTION_0_0();
      goto LABEL_2;
    }

    v58 = OUTLINED_FUNCTION_97_2();

    OUTLINED_FUNCTION_82_2();
  }

  while (!v68);

  v94 = OUTLINED_FUNCTION_0_38();
  v95(v94);
  v96 = sub_268B37A34();
  v97 = sub_268B37F04();
  if (OUTLINED_FUNCTION_139_0(v97))
  {
    v99 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v99);
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v100, v101, "User mentioned everywhere in the intent. Setting speaker.isAllSpeakers to true");
    OUTLINED_FUNCTION_83_0();
  }

  v102 = OUTLINED_FUNCTION_278();
  v198(v102);
  OUTLINED_FUNCTION_4_33();
  v103 = sub_268AB22D8();
  OUTLINED_FUNCTION_7_25(v103, v104);
  if (!v68)
  {
    OUTLINED_FUNCTION_79_5(v105, v106);
  }

  v107 = OUTLINED_FUNCTION_29_13();
  v108(v107);
LABEL_129:
  OUTLINED_FUNCTION_23();
}

void sub_268A65248()
{
  OUTLINED_FUNCTION_26();
  v6 = OUTLINED_FUNCTION_62_4();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_30(v12, v193);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_58_0();
  v15 = MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_21_1(v15, v16, v17, v18, v19, v20, v21, v22, v194);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_68_3();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_31_5();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_80_1();
  v28 = MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_22_16(v28, v29, v30, v31, v32, v33, v34, v35, v195);
  v37 = MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_33_0(v37, v38, v39, v40, v41, v42, v43, v44, v196);
  v46 = MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_21_15(v46, v47, v48, v49, v50, v51, v52, v53, v197);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_136;
  }

LABEL_2:
  OUTLINED_FUNCTION_9_20();
  v55 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v56 = OUTLINED_FUNCTION_5_20(v55);
  v57(v56);
  v58 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_27_7();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_52_1(v60);
    OUTLINED_FUNCTION_50_7(&dword_2688BB000, v61, v62, "Updating destination parameters for WHA dialog");
    OUTLINED_FUNCTION_12();
  }

  v63 = OUTLINED_FUNCTION_16_26();
  v64(v63);
  sub_268A66710();
  OUTLINED_FUNCTION_63_5(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_14_19();
  while (v5 != v3)
  {
    if (v9)
    {
      OUTLINED_FUNCTION_94_4();
    }

    else
    {
      OUTLINED_FUNCTION_70_6();
      if (v65)
      {
        goto LABEL_96;
      }

      OUTLINED_FUNCTION_92_4();
    }

    OUTLINED_FUNCTION_76_3();
    if (v156)
    {
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      OUTLINED_FUNCTION_58_7();
      goto LABEL_98;
    }

    v66 = OUTLINED_FUNCTION_107_2();
    OUTLINED_FUNCTION_106_1();
    v67 = OUTLINED_FUNCTION_201_0();
    v4 = v67;
    if (v0)
    {
      v1 = OUTLINED_FUNCTION_102_3();

      if (v1)
      {

        goto LABEL_15;
      }
    }

    else
    {
    }

    v1 = v199;
    sub_268B38214();
    OUTLINED_FUNCTION_48_8();
    OUTLINED_FUNCTION_104_3();
    sub_268B38224();
LABEL_15:
    ++v3;
  }

  if (!OUTLINED_FUNCTION_98_1())
  {

    v70 = OUTLINED_FUNCTION_0_38();
    v71(v70);
    v72 = sub_268B37A34();
    v73 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_139_0(v73))
    {
      v74 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v74);
      OUTLINED_FUNCTION_10_7(&dword_2688BB000, v75, v76, "No destinations found to populate speaker parameter.");
      OUTLINED_FUNCTION_83_0();
    }

    v77 = OUTLINED_FUNCTION_278();
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_15_20();
  do
  {
    if (v5 == v1)
    {
      OUTLINED_FUNCTION_81_2();
      if (!(v155 ^ v156 | v68))
      {
        v78 = OUTLINED_FUNCTION_18_14();
        v79(v78);
        v80 = sub_268B37A34();
        v81 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v81))
        {
          v82 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v82);
          OUTLINED_FUNCTION_10_7(&dword_2688BB000, v83, v84, "More than 2 rooms mentioned in the intent. Setting speaker.hasThreeOrMoreRooms to true");
          OUTLINED_FUNCTION_83_0();
        }

        v85 = OUTLINED_FUNCTION_54_4();
        v86(v85);
        OUTLINED_FUNCTION_4_33();
        v87 = sub_268AB22D8();
        OUTLINED_FUNCTION_7_25(v87, v88);
        if (!v68)
        {
          OUTLINED_FUNCTION_78_5(v89, v90);
        }

        v91 = OUTLINED_FUNCTION_29_13();
        v92(v91);
      }

      v1 = 0;
      while (v5)
      {
        if (v3)
        {
          v93 = OUTLINED_FUNCTION_138();
          MEMORY[0x26D625BD0](v93);
        }

        else
        {
          OUTLINED_FUNCTION_56_6();
          if (v65)
          {
            goto LABEL_135;
          }

          OUTLINED_FUNCTION_64_6();
        }

        OUTLINED_FUNCTION_75_3();
        if (v156)
        {
          goto LABEL_134;
        }

        if (OUTLINED_FUNCTION_61_4() == 6)
        {

LABEL_55:
          v109 = OUTLINED_FUNCTION_8_24();
          v110(v109);
          v1 = sub_268B37A34();
          v111 = sub_268B37F04();
          if (OUTLINED_FUNCTION_139_0(v111))
          {
            v112 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_81(v112);
            OUTLINED_FUNCTION_10_7(&dword_2688BB000, v113, v114, "Destination resolved as the local device. Setting speaker.isInHere to true");
            OUTLINED_FUNCTION_83_0();
          }

          v115 = OUTLINED_FUNCTION_52_9();
          v116(v115);
          OUTLINED_FUNCTION_4_33();
          v117 = sub_268AB22D8();
          OUTLINED_FUNCTION_7_25(v117, v118);
          if (!v68)
          {
            OUTLINED_FUNCTION_80_5(v119, v120);
          }

          v121 = OUTLINED_FUNCTION_29_13();
          v122(v121);
          break;
        }

        v0 = OUTLINED_FUNCTION_61_4();

        OUTLINED_FUNCTION_83_4();
        if (v68)
        {
          goto LABEL_55;
        }
      }

      OUTLINED_FUNCTION_63_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_77_6();
      v5 = &unk_287950158;
LABEL_61:
      while (v6 != v58)
      {
        if (v3)
        {
          v125 = OUTLINED_FUNCTION_278();
          MEMORY[0x26D625BD0](v125);
        }

        else
        {
          OUTLINED_FUNCTION_84_4();
          if (v65)
          {
            goto LABEL_133;
          }

          v123 = *(v4 + v6);
        }

        OUTLINED_FUNCTION_73_5();
        if (v156)
        {
          goto LABEL_132;
        }

        OUTLINED_FUNCTION_96_3();
        v124 = 0;
        while (v124 != 24)
        {
          OUTLINED_FUNCTION_31_14(v124);
          if (v68)
          {

            goto LABEL_61;
          }
        }

        v1 = v199;
        sub_268B38214();
        OUTLINED_FUNCTION_48_8();
        OUTLINED_FUNCTION_103_3();
        sub_268B38224();
      }

      OUTLINED_FUNCTION_93_5();
      OUTLINED_FUNCTION_71_6();
      if (v126)
      {
        OUTLINED_FUNCTION_49_5();
        if (v0)
        {
          OUTLINED_FUNCTION_99_3();
        }

        else
        {
          v127 = v58[4].isa;
        }

        OUTLINED_FUNCTION_100_2(v127);
        OUTLINED_FUNCTION_55_6();
        if (!v65)
        {
          OUTLINED_FUNCTION_3_39();
          v129();
          v1 = sub_268B37A34();
          v130 = sub_268B37F04();
          if (OUTLINED_FUNCTION_139_0(v130))
          {
            v131 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_279(v131);
            OUTLINED_FUNCTION_12_20(&dword_2688BB000, v132, v133, "Destination #1: Destination is a room or zone. Setting speaker.firstRoom to the groupName");
            OUTLINED_FUNCTION_20_2();
          }

          OUTLINED_FUNCTION_37_13();
          v134();
          OUTLINED_FUNCTION_4_33();
          v135 = sub_268AB22D8();
          OUTLINED_FUNCTION_25_15(v135, v136);
          if (!v68)
          {
            if (OUTLINED_FUNCTION_42_9())
            {
              sub_268B37BF4();
              OUTLINED_FUNCTION_66_5();
            }

            else
            {
              OUTLINED_FUNCTION_58_7();
            }

            OUTLINED_FUNCTION_89_4();
LABEL_99:

            v154 = OUTLINED_FUNCTION_24_15();
            (v1)(v154);
LABEL_100:

            goto LABEL_101;
          }

          goto LABEL_87;
        }

        if (v128 == 3)
        {
          OUTLINED_FUNCTION_3_39();
          v137();
          v1 = sub_268B37A34();
          v138 = sub_268B37F04();
          if (OUTLINED_FUNCTION_139_0(v138))
          {
            v139 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_279(v139);
            OUTLINED_FUNCTION_12_20(&dword_2688BB000, v140, v141, "Destination #1: Destination is an accesory. Setting speaker.firstSpeakerName to the groupName");
            OUTLINED_FUNCTION_20_2();
          }

          OUTLINED_FUNCTION_37_13();
          v142();
          OUTLINED_FUNCTION_4_33();
          v143 = sub_268AB22D8();
          OUTLINED_FUNCTION_25_15(v143, v144);
          if (!v68)
          {
            if (!OUTLINED_FUNCTION_42_9())
            {
              goto LABEL_97;
            }

            sub_268B37BF4();
            OUTLINED_FUNCTION_66_5();
LABEL_98:
            OUTLINED_FUNCTION_88_4();
            goto LABEL_99;
          }

LABEL_87:
          v145 = OUTLINED_FUNCTION_29_13();
          (v1)(v145);
          goto LABEL_100;
        }

        OUTLINED_FUNCTION_3_39();
        v146();
        v147 = sub_268B37A34();
        v148 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v148))
        {
          v149 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_279(v149);
          OUTLINED_FUNCTION_12_20(&dword_2688BB000, v150, v151, "Destination #1: Destination type is unknown. Ignoring...");
          OUTLINED_FUNCTION_20_2();
        }

        OUTLINED_FUNCTION_37_13();
        v152();
      }

LABEL_101:
      OUTLINED_FUNCTION_101_1();
      OUTLINED_FUNCTION_91_4();
      if (v68)
      {
        swift_unknownObjectRelease();
        goto LABEL_129;
      }

      OUTLINED_FUNCTION_87_3();
      if (v155 == v156)
      {
        __break(1u);
        return;
      }

      v159 = *(v157 + 8 * v158);
      OUTLINED_FUNCTION_95_4();
      OUTLINED_FUNCTION_61_4();
      OUTLINED_FUNCTION_55_6();
      if (!v65)
      {
        v161 = OUTLINED_FUNCTION_1_48();
        v162(v161);
        v163 = sub_268B37A34();
        v164 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v164))
        {
          v165 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v165);
          OUTLINED_FUNCTION_13_15(&dword_2688BB000, v166, v167, "Destination #2: Destination is a room or zone. Setting speaker.firstRoom to the groupName");
          OUTLINED_FUNCTION_6();
        }

        v168 = OUTLINED_FUNCTION_17_21();
        v169(v168);
        OUTLINED_FUNCTION_23_17();
        v170 = sub_268AB22D8();
        OUTLINED_FUNCTION_26_14(v170, v171);
        if (!v68)
        {
          if (OUTLINED_FUNCTION_46_9())
          {
            sub_268B37BF4();
            OUTLINED_FUNCTION_65_6();
          }

          else
          {
            OUTLINED_FUNCTION_57_4();
          }

          OUTLINED_FUNCTION_86_3();
          goto LABEL_127;
        }

        goto LABEL_117;
      }

      if (v160 == 3)
      {
        v172 = OUTLINED_FUNCTION_1_48();
        v173(v172);
        v174 = sub_268B37A34();
        v175 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v175))
        {
          v176 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v176);
          OUTLINED_FUNCTION_13_15(&dword_2688BB000, v177, v178, "Destination #2: Destination is an accesory. Setting speaker.firstSpeakerName to the groupName");
          OUTLINED_FUNCTION_6();
        }

        v179 = OUTLINED_FUNCTION_17_21();
        v180(v179);
        OUTLINED_FUNCTION_23_17();
        v181 = sub_268AB22D8();
        OUTLINED_FUNCTION_26_14(v181, v182);
        if (!v68)
        {
          if (OUTLINED_FUNCTION_46_9())
          {
            sub_268B37BF4();
            OUTLINED_FUNCTION_65_6();
          }

          else
          {
            OUTLINED_FUNCTION_57_4();
          }

          OUTLINED_FUNCTION_85_4();
LABEL_127:

          v192 = OUTLINED_FUNCTION_24_15();
          (v0)(v192);
          goto LABEL_128;
        }

LABEL_117:
        v183 = OUTLINED_FUNCTION_29_13();
        (v0)(v183);
LABEL_128:

        goto LABEL_129;
      }

      v184 = OUTLINED_FUNCTION_1_48();
      v185(v184);
      v186 = sub_268B37A34();
      v187 = sub_268B37F04();
      if (OUTLINED_FUNCTION_139_0(v187))
      {
        v188 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v188);
        OUTLINED_FUNCTION_13_15(&dword_2688BB000, v189, v190, "Destination #2: Destination type is unknown. Ignoring...");
        OUTLINED_FUNCTION_6();
      }

      v77 = OUTLINED_FUNCTION_43_8();
LABEL_31:
      v198(v77);
      goto LABEL_129;
    }

    if (v3)
    {
      v69 = OUTLINED_FUNCTION_138();
      MEMORY[0x26D625BD0](v69);
    }

    else
    {
      OUTLINED_FUNCTION_56_6();
      if (v65)
      {
        goto LABEL_131;
      }

      OUTLINED_FUNCTION_64_6();
    }

    OUTLINED_FUNCTION_90_4();
    if (v156)
    {
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      OUTLINED_FUNCTION_0_0();
      goto LABEL_2;
    }

    v58 = OUTLINED_FUNCTION_97_2();

    OUTLINED_FUNCTION_82_2();
  }

  while (!v68);

  v94 = OUTLINED_FUNCTION_0_38();
  v95(v94);
  v96 = sub_268B37A34();
  v97 = sub_268B37F04();
  if (OUTLINED_FUNCTION_139_0(v97))
  {
    v99 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v99);
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v100, v101, "User mentioned everywhere in the intent. Setting speaker.isAllSpeakers to true");
    OUTLINED_FUNCTION_83_0();
  }

  v102 = OUTLINED_FUNCTION_278();
  v198(v102);
  OUTLINED_FUNCTION_4_33();
  v103 = sub_268AB22D8();
  OUTLINED_FUNCTION_7_25(v103, v104);
  if (!v68)
  {
    OUTLINED_FUNCTION_79_5(v105, v106);
  }

  v107 = OUTLINED_FUNCTION_29_13();
  v108(v107);
LABEL_129:
  OUTLINED_FUNCTION_23();
}