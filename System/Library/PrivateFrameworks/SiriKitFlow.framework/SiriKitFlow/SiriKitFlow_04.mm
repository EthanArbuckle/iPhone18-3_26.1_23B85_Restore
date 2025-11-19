uint64_t OUTLINED_FUNCTION_65_4()
{

  return sub_1DD0DF23C();
}

uint64_t OUTLINED_FUNCTION_65_5()
{
}

void OUTLINED_FUNCTION_65_8(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_65_11()
{
  v2 = v0[55];
  v3 = v0[51];
  v4 = v0[49];

  sub_1DCE40918();
}

uint64_t OUTLINED_FUNCTION_65_12(uint64_t a1)
{
  *(v1 + 96) = a1;

  return sub_1DD0DB04C();
}

uint64_t OUTLINED_FUNCTION_65_13()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_65_15()
{
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);
}

uint64_t OUTLINED_FUNCTION_65_16()
{

  return sub_1DCB0E9D8(v0 + 16, v1, v2);
}

uint64_t OUTLINED_FUNCTION_65_17()
{
  v2 = *(v0 + 593);
  v4 = *(v0 + 360);
  v3 = *(v0 + 368);
  v5 = *(v0 + 264);
  v6 = *(v0 + 272);
  v8 = *(v0 + 256);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_65_18()
{
  v6 = (v3 + *(v4 + 68));
  *v6 = v1;
  v6[1] = v2;
  *(v3 + v0) = 0;

  return type metadata accessor for ResponseFactory();
}

void OUTLINED_FUNCTION_65_19(uint64_t a1@<X8>)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  *(a1 + 8) = 0;
}

uint64_t OUTLINED_FUNCTION_65_21(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_76_2()
{
  v2 = *(v0 - 208);

  return type metadata accessor for AceOutput();
}

void OUTLINED_FUNCTION_241(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_76_4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 48);
  return *(v2 + 16);
}

char *OUTLINED_FUNCTION_76_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v7 = *a5;

  return sub_1DCCC9D0C();
}

__n128 OUTLINED_FUNCTION_76_7()
{
  result = *v1;
  v3 = *(v1 + 16);
  *v0 = *v1;
  *(v0 + 16) = v3;
  *(v0 + 32) = *(v1 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_76_9()
{
  result = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  return result;
}

uint64_t OUTLINED_FUNCTION_76_14()
{
  v2 = v0[270];
  v3 = v0[269];
  v4 = v0[266];
  v5 = v0[265];
}

uint64_t OUTLINED_FUNCTION_76_17(uint64_t result, uint64_t a2)
{
  v2[29] = v4;
  v2[30] = result;
  v2[31] = a2;
  v2[32] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_76_19()
{

  return swift_once();
}

uint64_t sub_1DCB51EDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCB51F6C(uint64_t a1)
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
  v10[1] = sub_1DCB193FC;

  return sub_1DCB52040(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1DCB52040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DCB52064, 0, 0);
}

void sub_1DCB52064()
{
  v6 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  sub_1DD0DDF8C();
  v0[6] = v2;
  v0[7] = v1;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1DCB52430;
  v0[5] = &block_descriptor_2;
  _Block_copy(v0 + 2);
  v5 = v0[7];
  sub_1DD0DCF8C();
}

void block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_1DD0DCF8C();
}

void block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_1DD0DCF8C();
}

void block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_1DD0DCF8C();
}

void block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_1DD0DCF8C();
}

void block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_1DD0DCF8C();
}

void block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_1DD0DCF8C();
}

void block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_1DD0DCF8C();
}

void sub_1DCB52430(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB524BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4230, &unk_1DD0EB268);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = 0x7954746E65746E69;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = sub_1DD0DDF8C();
  sub_1DCB525A0();
  return sub_1DD0DDE9C();
}

uint64_t sub_1DCB5256C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1DCB524BC();
}

uint64_t sub_1DCB52574()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1DCB525A0()
{
  result = qword_1EDE4D6A8;
  if (!qword_1EDE4D6A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE4D6A8);
  }

  return result;
}

uint64_t CoreAnalyticsService.sendReliabilityEvent(event:file:line:function:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v21 = *(v7 + 24);
  v22 = *(v7 + 16);
  v15 = *(a1 + 24);
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  *(v16 + 24) = v13;
  *(v16 + 32) = v14;
  *(v16 + 40) = v15;
  *(v16 + 48) = a2;
  *(v16 + 56) = a3;
  *(v16 + 64) = a4;
  *(v16 + 72) = a6;
  *(v16 + 80) = a7;
  *(v16 + 88) = a5;
  OUTLINED_FUNCTION_88_0();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1DCCD78F4;
  *(v17 + 24) = v16;
  sub_1DCCD7934(v12, v13, v14, v15);

  v22(0xD000000000000022, 0x80000001DD117C60, sub_1DCB52574, v17);
}

uint64_t sub_1DCB5280C()
{
  sub_1DCCD6E9C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_1DCB52854()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

void SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v29 = v5;
  v28 = v6;
  v8 = v7;
  v9 = type metadata accessor for SiriKitEventPayload(0);
  v10 = OUTLINED_FUNCTION_2(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_48_0();
  type metadata accessor for SiriKitEvent.SiriKitEventBuilder();
  v14 = swift_allocObject();
  v14[1] = 0u;
  v14[2] = 0u;
  v14[3] = 0u;
  v14[4] = 0u;
  v14[5] = 0u;
  v14[6] = 0u;
  v14[7] = 0u;
  v31 = v14;
  if (v2)
  {
    v2(&v31);
    v15 = v31;
  }

  else
  {
    v15 = v14;
  }

  OUTLINED_FUNCTION_156();
  v16 = *(v15 + 2);
  OUTLINED_FUNCTION_156();
  v17 = *(v15 + 4);
  *&v18 = v16;
  *(&v18 + 1) = *(v15 + 3);
  v27 = v18;
  OUTLINED_FUNCTION_156();
  v19 = *(v15 + 5);
  OUTLINED_FUNCTION_156();
  *&v20 = v17;
  *(&v20 + 1) = v19;
  v25 = v20;
  v21 = *(v15 + 9);
  v26 = *(v15 + 8);
  OUTLINED_FUNCTION_156();
  v30 = v15[5];
  OUTLINED_FUNCTION_156();
  v22 = *(v15 + 12);
  v23 = *(v15 + 13);
  *v0 = v8;
  *(v0 + 8) = v28;
  *(v0 + 16) = v29;
  *(v0 + 40) = v25;
  *(v0 + 24) = v27;
  *&v24 = v26;
  *(&v24 + 1) = v21;
  *(v0 + 72) = v30;
  *(v0 + 56) = v24;
  *(v0 + 88) = v22;
  *(v0 + 96) = v23;
  *(v0 + 104) = v4;
  *(v0 + 108) = BYTE4(v4) & 1;
  swift_storeEnumTagMultiPayload();

  sub_1DD0DCF8C();
}

uint64_t SiriKitEvent.SiriKitEventBuilder.__deallocating_deinit()
{
  SiriKitEvent.SiriKitEventBuilder.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB52B50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1DCB52BCC(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_40();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1DCB52C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v52 = a6;
  v9 = v7;
  v49 = a4;
  v50 = a5;
  v51 = a7;
  v53 = sub_1DD0DD85C();
  v13 = OUTLINED_FUNCTION_9(v53);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13, v18);
  OUTLINED_FUNCTION_16();
  v21 = v20 - v19;
  v22 = sub_1DD0DB04C();
  v23 = OUTLINED_FUNCTION_9(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23, v28);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_48_0();
  v54 = a1;
  v55 = a2;
  sub_1DCB0D344();
  if (v29)
  {
    v30 = v29;
    sub_1DCB52F18();
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v33 = *(v25 + 16);
  v57 = v22;
  v33(v8, a3, v22);
  if (v32)
  {
    v35 = *(v9 + 16);
    v34 = *(v9 + 24);
    v36 = v32;
    v35();
  }

  v56 = v32;
  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_1_41();
    swift_once();
  }

  v37 = sub_1DD0DD88C();
  v38 = __swift_project_value_buffer(v37, qword_1EDE57DD0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = v49;
  v40 = v50;
  *(&v48 - 4) = v52;
  *(&v48 - 3) = v41;
  *(&v48 - 2) = v40;
  sub_1DD0DD84C();
  sub_1DCB2A488("execution_find_flow_time", 24, 2, v21, sub_1DCB54844);
  (*(v15 + 8))(v21, v53);
  sub_1DCB0D344();
  if (v42)
  {
    v43 = v42;
    sub_1DCB52F18();
    v45 = v44;

    if (v45)
    {
      v46 = *(v9 + 24);
      (*(v9 + 16))(v45);
    }
  }

  return (*(v25 + 8))(v8, v57);
}

void sub_1DCB52F18()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_70();
  v11 = sub_1DD0DB04C();
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12, v17);
  OUTLINED_FUNCTION_16();
  v20 = v19 - v18;
  v21 = [objc_allocWithZone(*v8) init];
  if (v21)
  {
    v22 = v21;
    v23 = [objc_allocWithZone(*v6) init];
    if (v23)
    {
      v24 = v23;
      [v23 *v4];
      sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
      (*(v14 + 16))(v20, v10, v11);
      v25 = sub_1DCB0DEDC(v20);
      [v24 setHypothesisId_];

      [v0 *v2];
      v26 = v0;
      goto LABEL_10;
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  v27 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v27, qword_1EDE57DA0);
  v28 = sub_1DD0DD8EC();
  v29 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_22(v29))
  {
    v30 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v30);
    OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v31, v32, "[ConversationSELFHelper] Failed to create context SELF objects");
    OUTLINED_FUNCTION_62();
  }

LABEL_10:
  OUTLINED_FUNCTION_49();
}

void Parse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_20_3();
  v165 = v11;
  v14 = v13;
  v163 = v15;
  v150 = type metadata accessor for IFClientActionParse();
  v16 = OUTLINED_FUNCTION_2(v150);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  OUTLINED_FUNCTION_11_2();
  v151 = v20;
  OUTLINED_FUNCTION_12();
  v152 = type metadata accessor for NLRouterParse();
  v21 = OUTLINED_FUNCTION_2(v152);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21, v24);
  OUTLINED_FUNCTION_11_2();
  v153 = v25;
  OUTLINED_FUNCTION_12();
  v154 = type metadata accessor for LinkParse();
  v26 = OUTLINED_FUNCTION_2(v154);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26, v29);
  OUTLINED_FUNCTION_11_2();
  v155 = v30;
  OUTLINED_FUNCTION_12();
  v162 = type metadata accessor for USOParse();
  v31 = OUTLINED_FUNCTION_2(v162);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31, v34);
  OUTLINED_FUNCTION_11_2();
  v156 = v35;
  v36 = OUTLINED_FUNCTION_12();
  v158 = type metadata accessor for Parse.PegasusResult(v36);
  v37 = OUTLINED_FUNCTION_2(v158);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37, v40);
  OUTLINED_FUNCTION_11_2();
  v157 = v41;
  OUTLINED_FUNCTION_12();
  v159 = type metadata accessor for NLv3ServerParse();
  v42 = OUTLINED_FUNCTION_2(v159);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42, v45);
  OUTLINED_FUNCTION_11_2();
  v161 = v46;
  OUTLINED_FUNCTION_12();
  v47 = sub_1DD0DC76C();
  v48 = OUTLINED_FUNCTION_9(v47);
  v160 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48, v52);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_28_10();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C98, qword_1DD0FAFC0);
  OUTLINED_FUNCTION_9(v53);
  v164 = v54;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v57, v58);
  v60 = &v146 - v59;
  v61 = type metadata accessor for Parse(0);
  v62 = OUTLINED_FUNCTION_2(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62, v65);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_75_8();
  v67 = v14[3];
  v66 = v14[4];
  v166 = v14;
  OUTLINED_FUNCTION_57_1(v14, v67);
  sub_1DCB34864();
  v68 = v165;
  sub_1DD0DF23C();
  if (!v68)
  {
    v69 = v12;
    v70 = v161;
    v148 = v47;
    v149 = v10;
    v165 = v61;
    v71 = v163;
    LOBYTE(v167) = 0;
    OUTLINED_FUNCTION_33_20();
    v73 = sub_1DD0DEF0C();
    v74 = v72;
    v75 = v73 == 0x7974706D65 && v72 == 0xE500000000000000;
    if (v75 || (sub_1DD0DF0AC() & 1) != 0)
    {
      v76 = OUTLINED_FUNCTION_3_87();
      v77(v76);

      v78 = v71;
      v69 = v149;
LABEL_8:
      swift_storeEnumTagMultiPayload();
      sub_1DCB541A0(v69, v78);
      goto LABEL_9;
    }

    v147 = v73;
    v79 = v73 == 0x65746E4933766C6ELL && v74 == 0xEE00796C6E4F746ELL;
    if (v79 || (OUTLINED_FUNCTION_79_10() & 1) != 0)
    {

      OUTLINED_FUNCTION_54_15();
      sub_1DCB5414C();
      OUTLINED_FUNCTION_8_59();
      v80 = v164;
      v81 = v148;
      v82 = v160;
      v83 = v69;
      sub_1DD0DC74C();
      (*(v80 + 8))(v60, v53);
      v69 = v149;
      (*(v82 + 32))(v149, v83, v81);
LABEL_22:
      v78 = v71;
      goto LABEL_8;
    }

    v84 = v147 == 0xD000000000000014 && 0x80000001DD11F4E0 == v74;
    if (v84 || (OUTLINED_FUNCTION_79_10() & 1) != 0)
    {

      OUTLINED_FUNCTION_17_32();
      OUTLINED_FUNCTION_29_24();
      sub_1DCE2FDA8(v85, v86);
      OUTLINED_FUNCTION_18_37();
      v87 = v159;
      OUTLINED_FUNCTION_33_20();
      sub_1DD0DEF4C();
      v88 = OUTLINED_FUNCTION_3_87();
      v89(v88);
      v90 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48);
      v69 = v149;
      (*(v160 + 32))(v149, v70, v148);
      *(v69 + v90) = *(v70 + *(v87 + 20));
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_49_15();
    if (v75 && v74 == 0xEE00796C6E4F746ELL)
    {

      v78 = v71;
    }

    else
    {
      v92 = v147;
      v161 = v74;
      v78 = v71;
      if ((sub_1DD0DF0AC() & 1) == 0)
      {
        OUTLINED_FUNCTION_67_12();
        v95 = v92 == OUTLINED_FUNCTION_68_13() && v161 == v94;
        if (v95 || (sub_1DD0DF0AC() & 1) != 0)
        {

          OUTLINED_FUNCTION_17_32();
          OUTLINED_FUNCTION_21_27();
          sub_1DCE2FDA8(v96, v97);
          OUTLINED_FUNCTION_18_37();
          v98 = v157;
          OUTLINED_FUNCTION_33_20();
          sub_1DD0DEF4C();
          v99 = OUTLINED_FUNCTION_3_87();
          v100(v99);
          OUTLINED_FUNCTION_5_74();
          OUTLINED_FUNCTION_40_22(v98);
          goto LABEL_8;
        }

        OUTLINED_FUNCTION_72_11();
        v104 = v147 == OUTLINED_FUNCTION_74_9() && v161 == v103;
        if (!v104 && (sub_1DD0DF0AC() & 1) == 0)
        {
          OUTLINED_FUNCTION_76_10();
          OUTLINED_FUNCTION_50_14();
          v112 = v75 && v111 == v161;
          if (v112 || (OUTLINED_FUNCTION_15_49() & 1) != 0)
          {

            OUTLINED_FUNCTION_54_15();
            sub_1DCB53E04();
            OUTLINED_FUNCTION_8_59();
            v113 = OUTLINED_FUNCTION_3_87();
            v114(v113);
            v115 = v168;
            v69 = v149;
            *v149 = v167;
            *(v69 + 16) = v115;
          }

          else
          {
            OUTLINED_FUNCTION_50_14();
            v121 = v75 && v161 == 0xE300000000000000;
            if (v121 || (OUTLINED_FUNCTION_15_49() & 1) != 0)
            {

              OUTLINED_FUNCTION_17_32();
              OUTLINED_FUNCTION_26_25();
              sub_1DCE2FDA8(v122, v123);
              OUTLINED_FUNCTION_18_37();
              OUTLINED_FUNCTION_33_20();
              sub_1DD0DEF4C();
              v124 = OUTLINED_FUNCTION_3_87();
              v125(v124);
              OUTLINED_FUNCTION_28_25();
              OUTLINED_FUNCTION_40_22(v156);
            }

            else
            {
              OUTLINED_FUNCTION_50_14();
              v128 = v75 && v161 == 0xE400000000000000;
              if (v128 || (OUTLINED_FUNCTION_15_49() & 1) != 0)
              {

                OUTLINED_FUNCTION_17_32();
                OUTLINED_FUNCTION_30_28();
                sub_1DCE2FDA8(v129, v130);
                OUTLINED_FUNCTION_18_37();
                OUTLINED_FUNCTION_9_57();
                v131 = OUTLINED_FUNCTION_3_87();
                v132(v131);
                OUTLINED_FUNCTION_32_21();
                OUTLINED_FUNCTION_40_22(v155);
              }

              else
              {
                OUTLINED_FUNCTION_77_8();
                OUTLINED_FUNCTION_49_15();
                v133 = v75 && v161 == 0xE800000000000000;
                if (v133 || (OUTLINED_FUNCTION_15_49() & 1) != 0)
                {

                  OUTLINED_FUNCTION_17_32();
                  OUTLINED_FUNCTION_24_26();
                  sub_1DCE2FDA8(v134, v135);
                  OUTLINED_FUNCTION_18_37();
                  OUTLINED_FUNCTION_9_57();
                  v136 = OUTLINED_FUNCTION_3_87();
                  v137(v136);
                  OUTLINED_FUNCTION_25_20();
                  OUTLINED_FUNCTION_40_22(v153);
                }

                else
                {
                  OUTLINED_FUNCTION_64_11();
                  OUTLINED_FUNCTION_65_10();
                  OUTLINED_FUNCTION_49_15();
                  v139 = v75 && v161 == v138;
                  if (!v139 && (OUTLINED_FUNCTION_15_49() & 1) == 0)
                  {
                    *&v167 = 0;
                    *(&v167 + 1) = 0xE000000000000000;
                    sub_1DD0DEC1C();

                    *&v167 = 0xD000000000000013;
                    *(&v167 + 1) = 0x80000001DD11F500;
                    MEMORY[0x1E12A6780](v147, v161);

                    MEMORY[0x1E12A6780](0xD000000000000017, 0x80000001DD11F520);
                    v144 = v167;
                    sub_1DCE0E1C0();
                    OUTLINED_FUNCTION_34();
                    *v145 = v144;
                    *(v145 + 16) = 1;
                    swift_willThrow();
                    (*(v164 + 8))(v60, v53);
                    goto LABEL_9;
                  }

                  OUTLINED_FUNCTION_17_32();
                  OUTLINED_FUNCTION_19_34();
                  sub_1DCE2FDA8(v140, v141);
                  OUTLINED_FUNCTION_18_37();
                  OUTLINED_FUNCTION_9_57();
                  v142 = OUTLINED_FUNCTION_3_87();
                  v143(v142);
                  OUTLINED_FUNCTION_20_23();
                  OUTLINED_FUNCTION_40_22(v151);
                }
              }
            }
          }

          goto LABEL_22;
        }

        OUTLINED_FUNCTION_54_15();
        sub_1DCB5414C();
        OUTLINED_FUNCTION_8_59();
        v162 = v60;
        v109 = v167;
        sub_1DCB10E5C(0, &qword_1EDE461C0, 0x1E696ACD0);
        OUTLINED_FUNCTION_26_6();
        sub_1DD0DD74C();
        v110 = sub_1DD0DE71C();
        v116 = v110;
        if (v110)
        {
          v117 = OUTLINED_FUNCTION_13_51();
          v118(v117);
          v119 = OUTLINED_FUNCTION_53_16();
          sub_1DCB21A14(v119, v120);
          v69 = v149;
          *v149 = v116;
          v78 = v71;
          goto LABEL_8;
        }

        OUTLINED_FUNCTION_80_7();
        OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_76_10();
        OUTLINED_FUNCTION_34_28(v127, v126 + 53);
        v108 = v109 >> 64;
        v107 = v109;
LABEL_48:
        sub_1DCB21A14(v107, v108);
        (*(v164 + 8))(v162, v53);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_54_15();
    sub_1DCB5414C();
    OUTLINED_FUNCTION_8_59();
    v162 = v60;
    v93 = v167;
    sub_1DCB10E5C(0, &qword_1EDE461C0, 0x1E696ACD0);
    sub_1DD0DE72C();
    if (v169)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7CD0, &qword_1DD0FAFD8);
      if (swift_dynamicCast())
      {
        v101 = OUTLINED_FUNCTION_13_51();
        v102(v101);
        sub_1DCB21A14(v93, *(&v93 + 1));
        v69 = v149;
        *v149 = a10;
        goto LABEL_8;
      }
    }

    else
    {
      sub_1DCC8BC14(&v167);
    }

    OUTLINED_FUNCTION_80_7();
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_76_10();
    OUTLINED_FUNCTION_34_28(v106, v105 + 49);
    v108 = v93 >> 64;
    v107 = v93;
    goto LABEL_48;
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v166);
  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCB53E04()
{
  result = qword_1EDE46648;
  if (!qword_1EDE46648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE46648);
  }

  return result;
}

void Parse.DirectInvocation.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v4 = v3;
  v33 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7D68, &unk_1DD0FB018);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_28_10();
  v10 = v2[4];
  OUTLINED_FUNCTION_57_1(v2, v2[3]);
  sub_1DCB34FA8();
  OUTLINED_FUNCTION_61_2();
  if (!v0)
  {
    LOBYTE(v31) = 0;
    OUTLINED_FUNCTION_52_19();
    v13 = sub_1DD0DEF0C();
    v15 = v14;
    LOBYTE(v30) = 1;
    sub_1DCB5414C();
    OUTLINED_FUNCTION_52_19();
    sub_1DD0DEEFC();
    v29 = v32;
    if (v32 >> 60 == 15)
    {
      v16 = OUTLINED_FUNCTION_13_45();
      v17(v16);
      v18 = 0;
    }

    else
    {
      v27 = objc_opt_self();
      v28 = v31;
      v26 = sub_1DD0DAEFC();
      v31 = 0;
      v19 = [v27 propertyListWithData:v26 options:0 format:0 error:&v31];

      if (!v19)
      {
        v25 = v31;

        sub_1DD0DAE0C();

        swift_willThrow();
        sub_1DCB2C520(v28, v29);
        v11 = OUTLINED_FUNCTION_13_45();
        v12(v11);
        goto LABEL_8;
      }

      v20 = v31;
      sub_1DD0DEA6C();
      sub_1DCB2C520(v28, v29);
      swift_unknownObjectRelease();
      v21 = OUTLINED_FUNCTION_13_45();
      v22(v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
      v23 = swift_dynamicCast();
      v18 = v30;
      if (!v23)
      {
        v18 = 0;
      }
    }

    *v4 = v13;
    v4[1] = v15;
    v4[2] = v18;
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  v24 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCB5414C()
{
  result = qword_1EDE4F1F0;
  if (!qword_1EDE4F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4F1F0);
  }

  return result;
}

uint64_t sub_1DCB541A0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_26_6();
  v6 = v5(v4);
  OUTLINED_FUNCTION_2(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1DCB541FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Parse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DCB54260()
{
  result = qword_1EDE481C8;
  if (!qword_1EDE481C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE481C8);
  }

  return result;
}

void InputContinuationState.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v57 = v0;
  v4 = v3;
  v54 = v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA49C8, &qword_1DD0EDE40);
  OUTLINED_FUNCTION_9(v56);
  v53 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA49D0, &qword_1DD0EDE48);
  OUTLINED_FUNCTION_9(v13);
  v52 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_15_3();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA49D8, &qword_1DD0EDE50);
  OUTLINED_FUNCTION_9(v19);
  v55 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_40_3();
  v25 = v4[4];
  OUTLINED_FUNCTION_57_1(v4, v4[3]);
  sub_1DCB347BC();
  OUTLINED_FUNCTION_79_5();
  v26 = v57;
  sub_1DD0DF23C();
  if (v26)
  {
    goto LABEL_10;
  }

  v50 = v13;
  v51 = v2;
  v57 = v4;
  v27 = v56;
  v28 = sub_1DD0DEF5C();
  v29 = sub_1DCB547F8(v28, 0);
  if (v31 == v32 >> 1)
  {
    v56 = v29;
LABEL_9:
    v42 = sub_1DD0DECAC();
    swift_allocError();
    v44 = v43;
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43D8, &qword_1DD0F0640) + 48);
    *v44 = &type metadata for InputContinuationState;
    sub_1DD0DEECC();
    OUTLINED_FUNCTION_89_0();
    v46 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_112(v42);
    (*(v47 + 104))(v44);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v55 + 8))(v1, v19);
    v4 = v57;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
LABEL_11:
    OUTLINED_FUNCTION_19_19();
    return;
  }

  v49[1] = 0;
  if (v31 < (v32 >> 1))
  {
    v33 = *(v30 + v31);
    v34 = sub_1DCB54800(v31 + 1);
    v36 = v35;
    v38 = v37;
    swift_unknownObjectRelease();
    if (v36 == v38 >> 1)
    {
      if (v33)
      {
        sub_1DCD1BA84();
        v39 = v12;
        OUTLINED_FUNCTION_68_8();
        v40 = v54;
        v41 = v55;
        swift_unknownObjectRelease();
        (*(v53 + 8))(v39, v27);
      }

      else
      {
        sub_1DCB34810();
        v48 = v51;
        OUTLINED_FUNCTION_68_8();
        v40 = v54;
        v41 = v55;
        swift_unknownObjectRelease();
        (*(v52 + 8))(v48, v50);
      }

      (*(v41 + 8))(v1, v36);
      *v40 = v33;
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      goto LABEL_11;
    }

    v56 = v34;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1DCB54700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCB54728(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCB54728(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496C616974696E69 && a2 == 0xEC0000007475706ELL;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61756E69746E6F63 && a2 == 0xEC0000006E6F6974)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

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

uint64_t sub_1DCB54844()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

void UserIdentityProvider.init(storage:)()
{
  OUTLINED_FUNCTION_50();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E90, &qword_1DD0E26F0);
  v2 = OUTLINED_FUNCTION_20_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1EEE9AC00](v6, v7);
  *(v0 + 16) = 0;
  type metadata accessor for IdentifiedUser();
  OUTLINED_FUNCTION_12_76();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCACEE0, &qword_1DD10D518);
  OUTLINED_FUNCTION_73_1(v8);
  sub_1DD0DCE9C();
}

uint64_t sub_1DCB54C30(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5FE8, &unk_1DD0F4BB0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[7] + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_1DD0DD17C();
    v10 = a4[14];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

void FlowTaskProvider.__allocating_init(storage:)()
{
  OUTLINED_FUNCTION_18_3();
  swift_allocObject();
  FlowTaskProvider.init(storage:)();
}

void FlowTaskProvider.init(storage:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v1 - 8, v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  *(v0 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA67E8, &qword_1DD0F67F0);
  OUTLINED_FUNCTION_73_1(v6);
  sub_1DD0DCE9C();
}

uint64_t sub_1DCB54EBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_98(a1, a2);
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_0_93(v6, v7, v8, v9, v10, v11, v12, v13, v20);
  v15(v14);
  OUTLINED_FUNCTION_10_62();
  v16 = OUTLINED_FUNCTION_39_24();
  v17 = OUTLINED_FUNCTION_3_97(v16);
  v18(v17);
  return OUTLINED_FUNCTION_11_56();
}

{
  OUTLINED_FUNCTION_1_98(a1, a2);
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_0_93(v6, v7, v8, v9, v10, v11, v12, v13, v20);
  v15(v14);
  OUTLINED_FUNCTION_10_62();
  v16 = OUTLINED_FUNCTION_39_24();
  v17 = OUTLINED_FUNCTION_3_97(v16);
  v18(v17);
  return OUTLINED_FUNCTION_11_56();
}

uint64_t RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = *(v1 + 72);
  result = sub_1DCB370A4(*(v1 + 64));
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t RCHChildFlowProducersAsync.handleIntentFlowProducer.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = *(v1 + 104);
  result = sub_1DCB370A4(*(v1 + 96));
  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

void TCCResponses.init()(uint64_t *a1@<X8>)
{
  if (qword_1EDE48CE8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE57D40;
  a1[3] = type metadata accessor for CATTemplateExecutor();
  a1[4] = &off_1F58563F0;
  *a1 = v2;

  sub_1DD0DCF8C();
}

uint64_t RCHChildFlowProducersAsync.needsDisambiguationFlowProducer.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = *(v1 + 40);
  result = sub_1DCB370A4(*(v1 + 32));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t RCHChildFlowProducersAsync.requestTCCAcceptanceFlowProducer.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = *(v1 + 168);
  result = sub_1DCB370A4(*(v1 + 160));
  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

void *ProtectedAppCheck.deinit()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  sub_1DCB0E9D8((v0 + 9), &qword_1ECCA2568, &unk_1DD0FE510);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 19);
  v2 = v0[24];

  OUTLINED_FUNCTION_2_80();
  sub_1DCB551D4(v0 + v3, v4);
  sub_1DCB5524C(*(v0 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_deviceUnlockResult), *(v0 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_deviceUnlockResult + 8));
  v5 = *(v0 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_statuses);

  return v0;
}

uint64_t sub_1DCB551D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1DCB5524C(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1DCB79378(a1, a2 & 1);
  }
}

uint64_t sub_1DCB55264()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  sub_1DCB7FCDC(v1);
  v4 = type metadata accessor for ConditionalFlowResult();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 2, v4);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 1)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v6 = sub_1DD0DD8FC();
      v7 = OUTLINED_FUNCTION_59_0(v6, qword_1EDE57E00);
      v8 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v8))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v9, v10, "ConditionalFlow is ongoing while waiting for pre-condition Flow.");
        OUTLINED_FUNCTION_62();
      }

      v12 = v0[2];
      v11 = v0[3];

      OUTLINED_FUNCTION_55_1();
      v14 = *(v11 + *(v13 + 96));
      sub_1DD0DCF8C();
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v25 = sub_1DD0DD8FC();
    v26 = OUTLINED_FUNCTION_59_0(v25, qword_1EDE57E00);
    v27 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v27))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v28, v29, "ConditionalFlow is ongoing while waiting for executable Flow.");
      OUTLINED_FUNCTION_62();
    }

    v31 = v0[2];
    v30 = v0[3];

    OUTLINED_FUNCTION_55_1();
    v33 = *(v30 + *(v32 + 104));
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v15 = sub_1DD0DD8FC();
  v16 = OUTLINED_FUNCTION_59_0(v15, qword_1EDE57E00);
  v17 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v17))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v18, v19, "ConditionalFlow is complete");
    OUTLINED_FUNCTION_62();
  }

  v21 = v0[6];
  v20 = v0[7];
  v22 = v0[5];
  v23 = v0[2];

  v24 = static ExecuteResponse.complete()();
  (*(v21 + 8))(v20, v22, v24);
  v34 = v0[7];

  v35 = v0[1];

  return v35();
}

uint64_t sub_1DCB55544()
{
  v130 = v0;
  v2 = v0[88];
  v3 = v0[71];
  sub_1DCB7AC2C(v0[91]);
  OUTLINED_FUNCTION_20();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v4 = v0[91];
      v5 = v0[86];
      v6 = v0[80];
      v7 = v0[77];
      OUTLINED_FUNCTION_60_14(v0[87]);
      v0[92] = swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_4_11();
      v0[93] = *(v4 + *(OUTLINED_FUNCTION_88_2() + 48));
      sub_1DCC333DC(v4, v5);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v8 = sub_1DD0DD8FC();
      v0[94] = __swift_project_value_buffer(v8, qword_1EDE57E00);
      v9 = sub_1DD0DD8EC();
      v10 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v10))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_120(&dword_1DCAFC000, v11, v12, "RCHFlow received direct input. Proceeding to app resolution.");
        OUTLINED_FUNCTION_80();
      }

      v13 = v0[71];

      v14 = *(v13 + *(*v13 + 104));
      v15 = swift_task_alloc();
      v0[95] = v15;
      *v15 = v0;
      v15[1] = sub_1DCEE6620;
      v16 = v0[86];
      OUTLINED_FUNCTION_33_5();

      return sub_1DCEB7328(v17, v18, v19);
    case 2u:
      v33 = v0[91];
      v34 = v0[90];
      v35 = v0[88];
      v36 = v0[71];
      v37 = v33[1];
      *v34 = *v33;
      v34[1] = v37;
      swift_storeEnumTagMultiPayload();
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      sub_1DCB7C864(v34);
    case 4u:
      v70 = v0[91];
      v71 = v0[83];
      v72 = v0[80];
      v73 = v0[77];
      OUTLINED_FUNCTION_60_14(v0[87]);
      swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_6_0();
      type metadata accessor for RCHFlowSharedData();
      OUTLINED_FUNCTION_6_0();
      sub_1DD0DE97C();
      OUTLINED_FUNCTION_4_11();
      v74 = OUTLINED_FUNCTION_88_2();
      v75 = *(v70 + *(v74 + 48));
      sub_1DCC333DC(v70, v71);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v76 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v76, qword_1EDE57E00);
      v77 = sub_1DD0DD8EC();
      v78 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_47_0(v79);
        _os_log_impl(&dword_1DCAFC000, v77, v78, "RCHFlow is replanning based on new input", v1, 2u);
        OUTLINED_FUNCTION_37();
      }

      v80 = v0[90];
      v81 = v0[88];
      v82 = v0[83];
      v83 = v0[71];
      v84 = v0[70];

      v85 = *(v74 + 48);
      sub_1DCEED3F8(v82, v80, type metadata accessor for Input);
      *(v80 + v85) = v75;
      swift_storeEnumTagMultiPayload();
      sub_1DD0DCF8C();
    case 5u:
      v86 = v0[91];
      v87 = v0[85];
      v88 = v0[80];
      v89 = v0[77];
      OUTLINED_FUNCTION_60_14(v0[87]);
      swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_6_0();
      type metadata accessor for RCHFlowSharedData();
      OUTLINED_FUNCTION_6_0();
      sub_1DD0DE97C();
      OUTLINED_FUNCTION_80_8();
      v90 = *(v86 + *(OUTLINED_FUNCTION_88_2() + 48));
      v0[97] = v90;
      sub_1DCC333DC(v86, v87);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v91 = sub_1DD0DD8FC();
      v0[98] = __swift_project_value_buffer(v91, qword_1EDE57E00);
      v92 = sub_1DD0DD8EC();
      v93 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_61_1(v93))
      {
        v94 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_47_0(v94);
        OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v95, v96, "RCHFlow received input. Attempting to extract intent.");
        OUTLINED_FUNCTION_37();
      }

      v97 = v0[87];
      v98 = v0[85];
      v99 = v0[84];
      v100 = v0[82];
      v101 = v0[81];
      v102 = v0[77];
      v103 = v0[71];

      OUTLINED_FUNCTION_2_94();
      sub_1DCEED3F8(v98, v99, v104);
      v105 = (*(v101 + 80) + 40) & ~*(v101 + 80);
      v106 = swift_allocObject();
      v0[99] = v106;
      v106[2] = v102;
      v106[3] = v97;
      v106[4] = v103;
      sub_1DCC333DC(v99, v106 + v105);
      *(v106 + ((v100 + v105 + 7) & 0xFFFFFFFFFFFFFFF8)) = v90;
      v107 = *(off_1E8648610 + 1);
      sub_1DD0DCF8C();
    case 6u:
      v108 = v0[91];
      v109 = v0[88];
      v110 = v0[87];
      v111 = v0[79];
      v112 = v0[78];
      v113 = v0[77];
      v114 = v0[76];
      v115 = v0[71];
      v127 = v0[75];
      v128 = v0[70];
      v116 = v108[1];
      *v0[90] = *v108;
      swift_storeEnumTagMultiPayload();
      sub_1DD0DCF8C();
    case 8u:
      v24 = v0[91];
      v25 = v0[71];
      v26 = *v24;
      v0[107] = *v24;
      v27 = v24[1];
      v0[108] = v27;
      v28 = v24[2];
      v0[109] = v28;
      v29 = *(v25 + *(*v25 + 104));
      v0[57] = v26;
      v0[58] = v27;
      v0[59] = v28;
      v30 = swift_task_alloc();
      v0[110] = v30;
      *v30 = v0;
      v30[1] = sub_1DCEE6E0C;
      OUTLINED_FUNCTION_33_5();

      return sub_1DCEB65FC(v31);
    case 0xAu:
      v38 = v0[91];
      v39 = v38[1];
      v40 = v38[2];
      v41 = *v38 >> 62;
      if (v41)
      {
        if (v41 == 1)
        {
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_1_2();
            swift_once();
          }

          v42 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v42, qword_1EDE57E00);
          v43 = sub_1DD0DD8EC();
          v44 = sub_1DD0DE6DC();
          if (!OUTLINED_FUNCTION_44_22(v44))
          {
            goto LABEL_49;
          }

          v45 = "RCHFlow is in an error state. Exiting...";
        }

        else
        {
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_1_2();
            swift_once();
          }

          v119 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v119, qword_1EDE57E00);
          v43 = sub_1DD0DD8EC();
          v120 = sub_1DD0DE6DC();
          if (!OUTLINED_FUNCTION_44_22(v120))
          {
LABEL_50:
            v124 = v0[70];

            static ExecuteResponse.complete()();
            OUTLINED_FUNCTION_4_95();

            OUTLINED_FUNCTION_29();
            OUTLINED_FUNCTION_33_5();

            __asm { BRAA            X1, X16 }
          }

          v45 = "RCHFlow was cancelled. Exiting...";
        }
      }

      else
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v117 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v117, qword_1EDE57E00);
        v43 = sub_1DD0DD8EC();
        v118 = sub_1DD0DE6DC();
        if (!OUTLINED_FUNCTION_44_22(v118))
        {
          goto LABEL_49;
        }

        v45 = "RCHFlow complete. Exiting...";
      }

      v121 = OUTLINED_FUNCTION_50_0();
      *v121 = 0;
      _os_log_impl(&dword_1DCAFC000, v43, v1, v45, v121, 2u);
      OUTLINED_FUNCTION_80();
LABEL_49:
      v122 = OUTLINED_FUNCTION_20();
      sub_1DCB070E0(v122, v123, v40);
      goto LABEL_50;
    case 0xBu:
      v46 = *v0[91];
      v0[112] = v46;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v47 = sub_1DD0DD8FC();
      v0[113] = OUTLINED_FUNCTION_92(v47, qword_1EDE57E00);
      v48 = v46;
      v49 = sub_1DD0DD8EC();
      v50 = sub_1DD0DE6DC();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = OUTLINED_FUNCTION_151();
        v52 = OUTLINED_FUNCTION_83();
        v129 = v52;
        *v51 = 136315138;
        swift_getErrorValue();
        v54 = v0[54];
        v53 = v0[55];
        v55 = v0[56];
        v56 = sub_1DD0DF18C();
        v58 = sub_1DCB10E9C(v56, v57, &v129);

        *(v51 + 4) = v58;
        _os_log_impl(&dword_1DCAFC000, v49, v50, "RCHFlow attempting to send error dialog for error: %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_37();
      }

      v59 = v0[71];
      v60 = (v59 + *(*v59 + 136));
      v61 = v60[4];
      __swift_project_boxed_opaque_existential_1(v60, v60[3]);
      v62 = swift_task_alloc();
      v0[114] = v62;
      *(v62 + 16) = v59;
      *(v62 + 24) = v46;
      v63 = swift_task_alloc();
      v0[115] = v63;
      *v63 = v0;
      v63[1] = sub_1DCEE70E0;
      OUTLINED_FUNCTION_33_5();

      return sub_1DCB63BBC(v64, v65, v66, v67, v68);
    default:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v22 = v0[71];
      v23 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v23, qword_1EDE57E00);
      sub_1DD0DCF8C();
  }
}

uint64_t sub_1DCB56628()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocObject();
}

uint64_t sub_1DCB56670()
{
  v2 = type metadata accessor for Input(0);
  v3 = (*(*(v2 - 1) + 80) + 40) & ~*(*(v2 - 1) + 80);
  v4 = *(*(v2 - 1) + 64);
  v5 = *(v0 + 32);

  v6 = v0 + v3;
  v7 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_13_1(v7);
  (*(v8 + 8))(v0 + v3);
  v9 = (v0 + v3 + v2[5]);
  type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v10 = sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      v23 = sub_1DD0DC76C();
      OUTLINED_FUNCTION_13_1(v23);
      (*(v24 + 8))(v9);
      v25 = *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

      break;
    case 2u:
      v12 = *(v9 + 1);

      v13 = *(v9 + 2);
      goto LABEL_17;
    case 3u:
      v14 = *v9;
      swift_unknownObjectRelease();
      break;
    case 4u:
      v10 = sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:
      v26 = *v9;
      goto LABEL_23;
    case 6u:
      v27 = sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1(v27);
      (*(v28 + 8))(v9);
      v29 = type metadata accessor for USOParse();
      v30 = *(v29 + 20);
      v31 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_12_25(v31))
      {
        OUTLINED_FUNCTION_112(v1);
        (*(v32 + 8))(&v9[v30], v1);
      }

      v22 = *(v29 + 24);
      goto LABEL_16;
    case 7u:
      v15 = sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1(v15);
      (*(v16 + 8))(v9);
      v17 = type metadata accessor for USOParse();
      v18 = *(v17 + 20);
      v19 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_12_25(v19))
      {
        OUTLINED_FUNCTION_112(v1);
        (*(v20 + 8))(&v9[v18], v1);
      }

      OUTLINED_FUNCTION_9_23(*(v17 + 24));

      v21 = type metadata accessor for LinkParse();
      OUTLINED_FUNCTION_9_23(v21[5]);

      OUTLINED_FUNCTION_9_23(v21[6]);

      v22 = v21[7];
LABEL_16:
      OUTLINED_FUNCTION_9_23(v22);
LABEL_17:

      break;
    case 8u:
      v33 = sub_1DD0DD12C();
      OUTLINED_FUNCTION_13_1(v33);
      (*(v34 + 8))(v9);
      v35 = type metadata accessor for NLRouterParse();
      OUTLINED_FUNCTION_9_23(v35[5]);

      v36 = &v9[v35[6]];
      v37 = type metadata accessor for USOParse();
      if (!__swift_getEnumTagSinglePayload(v36, 1, v37))
      {
        v38 = sub_1DD0DB4BC();
        OUTLINED_FUNCTION_13_1(v38);
        (*(v39 + 8))(v36);
        v51 = v37;
        v40 = *(v37 + 20);
        v41 = sub_1DD0DB3EC();
        v50 = v40;
        v42 = v36 + v40;
        v43 = v41;
        if (!__swift_getEnumTagSinglePayload(v42, 1, v41))
        {
          OUTLINED_FUNCTION_112(v43);
          (*(v44 + 8))(v36 + v50, v43);
        }

        v45 = *(v36 + *(v51 + 24) + 8);
      }

      v26 = *&v9[v35[7]];
LABEL_23:

      break;
    case 9u:
      v10 = sub_1DD0DD08C();
LABEL_5:
      OUTLINED_FUNCTION_13_1(v10);
      (*(v11 + 8))(v9);
      break;
    default:
      break;
  }

  v46 = *(v6 + v2[6]);

  v47 = (v6 + v2[7]);
  if (v47[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
  }

  v48 = *(v0 + ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

void sub_1DCB56B14(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*(*(*v9 + 80) - 8) + 32))(v9 + *(*v9 + 96), a1);
  OUTLINED_FUNCTION_66();
  *(v9 + *(v17 + 104)) = a2;
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a6, v9 + *(v18 + 112));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a3, v9 + *(v19 + 120));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a4, v9 + *(v20 + 128));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a5, v9 + *(v21 + 136));
  OUTLINED_FUNCTION_66();
  *(v9 + *(v22 + 144)) = a7;
  OUTLINED_FUNCTION_66();
  v24 = v9 + *(v23 + 152);
  *v24 = a8;
  *(v24 + 8) = a9;
  *(v24 + 24) = 0;
  *(v24 + 32) = 0;
  *(v24 + 16) = 0;
  *(v24 + 40) = 0;
  OUTLINED_FUNCTION_49();
}

id sub_1DCB56C84()
{
  [v0 copy];
  sub_1DD0DEA6C();
  swift_unknownObjectRelease();
  sub_1DCB10E5C(0, &qword_1EDE460C0, 0x1E696E880);
  if (swift_dynamicCast())
  {
    return v11;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v10 = v0;
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = INIntent.debugDescriptionLite.getter();
    v9 = sub_1DCB10E9C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DCAFC000, v3, v4, "Unexpected failure when cloning intent: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  return v10;
}

uint64_t RCHChildFlowProducersAsync.needsValueFlowProducer.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = v1[1];
  result = sub_1DCB370A4(*v1);
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t initializeWithCopy for CATINLRepresentationProducer.ProducerError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(a1 + 24) = v3;
  (**(v3 - 8))();
  return a1;
}

uint64_t sub_1DCB56EFC(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = *(v9 + 48);
  v19 = *(v9 + 52);
  v20 = swift_allocObject();
  sub_1DCB56B14(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v20;
}

uint64_t sub_1DCB56FE4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_13_70();
  v3 = *(v1 + 88);
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
}

uint64_t sub_1DCB57028()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_13_70();
  v3 = *(v1 + 104);
  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
}

uint64_t sub_1DCB57098()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_13_70();
  v3 = *(v1 + 56);
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
}

_BYTE *storeEnumTagSinglePayload for ActivityType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 119 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 119) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x89)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x88)
  {
    v6 = ((a2 - 137) >> 8) + 1;
    *result = a2 + 119;
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
        JUMPOUT(0x1DCB571A8);
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
          *result = a2 + 119;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DCB57244()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_13_70();
  v3 = *(v1 + 120);
  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
}

uint64_t SiriKitEvent.SiriKitHybridEventBuilder.deinit()
{
  SiriKitEvent.SiriKitEventBuilder.deinit();
  sub_1DCB0E9D8(v0 + 128, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v1 = *(v0 + 160);

  sub_1DCB0E9D8(v0 + 168, &unk_1ECCA3280, &unk_1DD0E23D0);
  return v0;
}

void *OUTLINED_FUNCTION_250(void *result)
{
  v2 = *(v1 - 224);
  result[2] = *(v1 - 216);
  result[3] = v2;
  v3 = *(v1 - 248);
  result[4] = *(v1 - 232);
  result[5] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ActivityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x89)
  {
    if (a2 + 119 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 119) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 120;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x78;
  v5 = v6 - 120;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for SiriKitEventPayload(0);
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_48_0();
  v16 = *v10;
  v22 = *v4;
  type metadata accessor for SiriKitEvent.SiriKitHybridEventBuilder();
  v17 = swift_allocObject();
  bzero(v17 + 2, 0xC0uLL);
  v23 = v17;
  if (v2)
  {
    v2(&v23);
    v17 = v23;
  }

  *v0 = v16;
  *(v0 + 8) = v8;
  *(v0 + 16) = v6;
  OUTLINED_FUNCTION_156();
  *(v0 + 24) = v17[2];
  OUTLINED_FUNCTION_156();
  v18 = v17[4];
  *(v0 + 32) = v17[3];
  *(v0 + 40) = v18;
  OUTLINED_FUNCTION_156();
  sub_1DCB09970((v17 + 16), v0 + 48, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  OUTLINED_FUNCTION_156();
  *(v0 + 80) = v17[20];
  OUTLINED_FUNCTION_156();
  *(v0 + 88) = v17[5];
  OUTLINED_FUNCTION_156();
  sub_1DCB09970((v17 + 21), v0 + 96, &unk_1ECCA3280, &unk_1DD0E23D0);
  OUTLINED_FUNCTION_156();
  v19 = v17[9];
  *(v0 + 136) = v17[8];
  *(v0 + 144) = v19;
  OUTLINED_FUNCTION_156();
  v20 = v17[11];
  *(v0 + 152) = v17[10];
  *(v0 + 160) = v20;
  OUTLINED_FUNCTION_156();
  v21 = v17[13];
  *(v0 + 168) = v17[12];
  *(v0 + 176) = v21;
  *(v0 + 184) = v22;
  swift_storeEnumTagMultiPayload();

  sub_1DD0DCF8C();
}

uint64_t sub_1DCB57634()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_13_70();
  v3 = *(v1 + 32);
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
}

void sub_1DCB5769C(uint64_t a1)
{
  OUTLINED_FUNCTION_13_70();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t OUTLINED_FUNCTION_48_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12[2] = a11;
  v12[3] = a12;
  v14 = v12[18];
  v12[18] = 0;
}

uint64_t OUTLINED_FUNCTION_48_6()
{
  v2 = v0[16];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
}

uint64_t OUTLINED_FUNCTION_48_10()
{

  return sub_1DD0DEFFC();
}

uint64_t OUTLINED_FUNCTION_48_13(__int128 *a1)
{
  result = sub_1DCAFF9E8(a1, v2 + 24);
  *(v2 + 64) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_48_14()
{

  return sub_1DCB6B180(1701869940, 0xE400000000000000, v0);
}

uint64_t OUTLINED_FUNCTION_48_15()
{
  v2 = v0[38];
  v3 = v0[36];
  v5 = v0[27];
  v4 = v0[28];

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_48_20(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2;
  v4 = *(v3 - 96);
  return result;
}

void OUTLINED_FUNCTION_48_22(__n128 a1)
{
  *(v1 + 72) = a1;
  *(v1 + 88) = 0;
  *(v1 + 56) = a1;
}

uint64_t sub_1DCB578A0(uint64_t a1)
{
  *(v1 + 16) = sub_1DD0DDE9C();
  v3 = OBJC_IVAR____TtC11SiriKitFlow21IntentServicesAdapter_appIntentRegistry;
  v4 = sub_1DD0DD39C();
  OUTLINED_FUNCTION_2(v4);
  (*(v5 + 32))(v1 + v3, a1);
  return v1;
}

uint64_t NLContextUpdate.weightedPromptTargetDomain.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = *(v1 + 192);

  *(v1 + 184) = v2;
  *(v1 + 192) = v0;
  return result;
}

uint64_t SiriKitEvent.SiriKitHybridEventBuilder.__deallocating_deinit()
{
  SiriKitEvent.SiriKitHybridEventBuilder.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB57994()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v162 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v161 = &v160 - v8;
  v178 = sub_1DD0DB93C();
  v192 = *(v178 - 8);
  v9 = *(v192 + 8);
  v11 = MEMORY[0x1EEE9AC00](v178, v10);
  v174 = &v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v177 = &v160 - v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v160 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA74C0, &qword_1DD0F8B38);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v23 = &v160 - v22;
  v181 = sub_1DD0DB83C();
  v169 = *(v181 - 8);
  v24 = *(v169 + 64);
  v26 = MEMORY[0x1EEE9AC00](v181, v25);
  v168 = &v160 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v193 = &v160 - v30;
  MEMORY[0x1EEE9AC00](v29, v31);
  v164 = &v160 - v32;
  v33 = sub_1DD0DD61C();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8, v35);
  v37 = &v160 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_1DD0DB8EC();
  v166 = *(v167 - 8);
  v38 = *(v166 + 64);
  v40 = MEMORY[0x1EEE9AC00](v167, v39);
  v165 = &v160 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v42);
  v172 = &v160 - v43;
  sub_1DD0DB8DC();
  v44 = *(v0 + 40);
  if (v44)
  {
    v45 = *(v0 + 32);
    v46 = *(v0 + 40);

    sub_1DD0DB85C();
    sub_1DD0DB84C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1DD0E07C0;
    *(v47 + 32) = v45;
    *(v47 + 40) = v44;
    sub_1DD0DB86C();
    v49 = *(v0 + 48);
    if (v49)
    {

      v49 = sub_1DD0DB8AC();
    }

    if (*(v0 + 24))
    {
      MEMORY[0x1EEE9AC00](v49, v48);
      v159 = v0;
      sub_1DCB58C90(sub_1DCB59498, (&v160 - 4), v50);
    }

    v171 = 0;
    sub_1DD0DB89C();
  }

  else
  {
    v171 = 0;
  }

  v52 = *(v0 + 88);
  v51 = *(v0 + 96);
  if (v51)
  {
    v53 = *(v0 + 96);

    sub_1DD0DB85C();
    sub_1DD0DB84C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1DD0E07C0;
    *(v54 + 32) = v52;
    *(v54 + 40) = v51;
    sub_1DD0DB86C();
    if ((*(v0 + 72) & 1) == 0)
    {
      v55 = *(v0 + 64);
      if (v55 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v55 <= 0x7FFFFFFF)
      {
        sub_1DD0DD62C();
        sub_1DD0DB88C();
        goto LABEL_13;
      }

      __break(1u);
      goto LABEL_73;
    }

LABEL_13:
    if (*(v0 + 80))
    {

      sub_1DD0DB8AC();
    }

    v56 = *(v0 + 200);
    v57 = sub_1DD0DB8CC();
    if (*(v0 + 56))
    {
      MEMORY[0x1EEE9AC00](v57, v58);
      v159 = v0;
      v59 = v171;
      sub_1DCB58C90(sub_1DCB58F84, (&v160 - 4), v60);
      v171 = v59;
    }

    sub_1DD0DB89C();
  }

  v61 = *(v0 + 192);
  if (v61)
  {
    v191 = v51;
    v62 = *(v0 + 184);
    v63 = *(v0 + 176);

    sub_1DD0DB84C();
    sub_1DD0DB85C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1DD0E07C0;
    *(v64 + 32) = v62;
    *(v64 + 40) = v61;
    sub_1DD0DB86C();
    v66 = v1[20];
    if (v66)
    {

      v66 = sub_1DD0DB8AC();
    }

    if (v1[21])
    {
      MEMORY[0x1EEE9AC00](v66, v65);
      v159 = v1;
      v67 = v171;
      sub_1DCB58C90(sub_1DCB59498, (&v160 - 4), v68);
      v171 = v67;
    }

    sub_1DD0DB89C();
    if (v1[35])
    {
      v69 = v192;
      goto LABEL_28;
    }

    v194 = v62;
    v195 = v61;
    v198 = 46;
    v199 = 0xE100000000000000;
    sub_1DCB1C4D8();
    v123 = sub_1DD0DEA0C();
    sub_1DCB1D5C0(v123);
    v125 = v124;

    if (v125)
    {

      sub_1DCB598EC(1);
      v126 = sub_1DD0DE98C();
      v128 = v127;

      v129 = sub_1DCB594B0(1uLL);
      v198 = v126;
      v199 = v128;
      v194 = v129;
      v195 = v130;
      v196 = v131;
      v197 = v132;
      sub_1DCB59970();

      sub_1DD0DE11C();

      sub_1DD0DB8BC();
      v69 = v192;
      goto LABEL_30;
    }

    v51 = v191;
    v69 = v192;
    if (v191)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v69 = v192;
    if (*(v0 + 280))
    {
LABEL_28:
      v70 = v1[34];

LABEL_29:
      sub_1DD0DB8BC();
      goto LABEL_30;
    }

    if (v51)
    {
LABEL_63:
      v194 = v52;
      v195 = v51;
      v198 = 46;
      v199 = 0xE100000000000000;
      sub_1DCB1C4D8();
      v133 = sub_1DD0DEA0C();
      sub_1DCB1D5C0(v133);
      v135 = v134;

      if (v135)
      {

        sub_1DCB598EC(1);
        v136 = v69;
        v137 = sub_1DD0DE98C();
        v139 = v138;

        v140 = sub_1DCB594B0(1uLL);
        v198 = v137;
        v199 = v139;
        v69 = v136;
        v194 = v140;
        v195 = v141;
        v196 = v142;
        v197 = v143;
        sub_1DCB59970();

        sub_1DD0DE11C();

        goto LABEL_29;
      }
    }
  }

  v37 = v69;
  if (qword_1EDE4F900 != -1)
  {
LABEL_73:
    swift_once();
  }

  v144 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v144, qword_1EDE57E00);
  v145 = sub_1DD0DD8EC();
  v146 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v145, v146))
  {
    v147 = swift_slowAlloc();
    *v147 = 0;
    _os_log_impl(&dword_1DCAFC000, v145, v146, "NLContextUpdate currentDomainName, weightedPromptTargetDomain, and disambiguationPromptTargetDomain are all nil. The previous domain for the NL context will not be set.", v147, 2u);
    MEMORY[0x1E12A8390](v147, -1, -1);
  }

  v69 = v37;
LABEL_30:
  v71 = v1[13];
  if (v71)
  {
    v72 = 0;
    v179 = *(v71 + 16);
    v176 = (v69 + 16);
    v175 = (v69 + 8);
    v180 = (v169 + 32);
    v170 = MEMORY[0x1E69E7CC0];
    v73 = v71 + 64;
    v187 = v71;
    v173 = v23;
    v163 = v71 + 64;
LABEL_32:
    v74 = (v73 + 96 * v72);
    while (v179 != v72)
    {
      if (v72 >= *(v71 + 16))
      {
        __break(1u);
        goto LABEL_70;
      }

      v75 = *(v74 - 4);
      v76 = *(v74 - 3);
      v77 = *(v74 - 2);
      v78 = *(v74 - 1);
      v79 = *v74;
      v80 = v74[1];
      v81 = v74[2];
      v82 = v74[3];
      v186 = v72;
      v83 = v23;
      v84 = v18;
      v86 = v74[4];
      v85 = v74[5];
      v87 = v74[6];
      v88 = v74[7];
      v190 = v75;
      v191 = v80;
      v182 = v78;
      v183 = v77;
      v188 = v79;
      sub_1DCB2502C(v75, v76);
      v189 = v81;
      v184 = v82;
      v185 = v86;
      v18 = v84;
      v23 = v83;
      v71 = v187;
      v192 = v88;
      sub_1DCB2502C(v81, v82);
      sub_1DD0DB82C();
      if (v76 != 1)
      {
        sub_1DD0DB92C();
        if (v191)
        {

          sub_1DD0DB91C();
        }

        if (v76)
        {

          sub_1DD0DB8FC();
        }

        v89 = v178;
        (*v176)(v177, v18, v178);
        sub_1DD0DB81C();
        (*v175)(v18, v89);
        v71 = v187;
      }

      v90 = v184;
      if (v184 != 1)
      {
        v91 = v174;
        sub_1DD0DB92C();
        if (v192)
        {

          sub_1DD0DB91C();
        }

        if (v90)
        {

          sub_1DD0DB8FC();
        }

        v92 = v178;
        (*v176)(v177, v91, v178);
        sub_1DD0DB80C();
        (*v175)(v91, v92);
        v23 = v173;
        v71 = v187;
      }

      v93 = *v180;
      v94 = v181;
      (*v180)(v23, v193, v181);
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v94);
      sub_1DCB22A50(v190, v76);
      sub_1DCB22A50(v189, v90);
      if (__swift_getEnumTagSinglePayload(v23, 1, v94) != 1)
      {
        v95 = v164;
        v96 = v181;
        v93(v164, v23, v181);
        v93(v168, v95, v96);
        v97 = v170;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v99 = v186;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v102 = *(v97 + 16);
          sub_1DCE18870();
          v97 = v103;
        }

        v100 = *(v97 + 16);
        if (v100 >= *(v97 + 24) >> 1)
        {
          sub_1DCE18870();
          v97 = v104;
        }

        v72 = v99 + 1;
        *(v97 + 16) = v100 + 1;
        v101 = (*(v169 + 80) + 32) & ~*(v169 + 80);
        v170 = v97;
        v93((v97 + v101 + *(v169 + 72) * v100), v168, v181);
        v73 = v163;
        goto LABEL_32;
      }

      sub_1DCB0E9D8(v23, &unk_1ECCA74C0, &qword_1DD0F8B38);
      v74 += 12;
      v72 = v186 + 1;
    }
  }

  sub_1DD0DB87C();
  if (qword_1EDE4F900 != -1)
  {
LABEL_70:
    swift_once();
  }

  v105 = sub_1DD0DD8FC();
  v106 = __swift_project_value_buffer(v105, qword_1EDE57E00);
  v107 = sub_1DD0DD8EC();
  v108 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v194 = v110;
    *v109 = 136315138;
    v111 = v172;
    swift_beginAccess();
    sub_1DCB4D8F4(&qword_1EDE464D8, MEMORY[0x1E69D1500]);
    v112 = v167;
    v113 = sub_1DD0DD64C();
    v115 = sub_1DCB10E9C(v113, v114, &v194);

    *(v109 + 4) = v115;
    _os_log_impl(&dword_1DCAFC000, v107, v108, "Produced prompt context: %s", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v110);
    MEMORY[0x1E12A8390](v110, -1, -1);
    MEMORY[0x1E12A8390](v109, -1, -1);

    v116 = v166;
    v117 = v165;
  }

  else
  {

    v112 = v167;
    v116 = v166;
    v117 = v165;
    v111 = v172;
  }

  swift_beginAccess();
  (*(v116 + 16))(v117, v111, v112);
  sub_1DCB4D8F4(&qword_1EDE464D8, MEMORY[0x1E69D1500]);
  v118 = v171;
  v119 = sub_1DD0DD63C();
  if (v118)
  {

    (*(v116 + 8))(v117, v112);
    v148 = *(v105 - 8);
    v149 = v161;
    (*(v148 + 16))(v161, v106, v105);
    __swift_storeEnumTagSinglePayload(v149, 0, 1, v105);
    v150 = v149;
    v151 = v162;
    sub_1DCB09910(v150, v162, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v151, 1, v105) == 1)
    {
      sub_1DCB0E9D8(v162, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v152 = sub_1DD0DD8EC();
      v153 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v152, v153))
      {
        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        v200 = v155;
        *v154 = 136315650;
        v156 = sub_1DD0DEC3C();
        v158 = sub_1DCB10E9C(v156, v157, &v200);

        *(v154 + 4) = v158;
        *(v154 + 12) = 2048;
        *(v154 + 14) = 213;
        *(v154 + 22) = 2080;
        *(v154 + 24) = sub_1DCB10E9C(0xD00000000000002BLL, 0x80000001DD11E890, &v200);
        _os_log_impl(&dword_1DCAFC000, v152, v153, "FatalError at %s:%lu - %s", v154, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v155, -1, -1);
        MEMORY[0x1E12A8390](v154, -1, -1);
      }

      (*(v148 + 8))(v162, v105);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000002BLL, 0x80000001DD11E890);
  }

  v120 = v119;
  v121 = *(v116 + 8);
  v121(v117, v112);
  v121(v111, v112);
  return v120;
}

uint64_t sub_1DCB58C90(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40[3] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA42C0, &qword_1DD0EB7B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v34 - v9;
  v11 = sub_1DD0DB93C();
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  OUTLINED_FUNCTION_10_2();
  v39 = (v16 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v35 = &v34 - v20;
  v36 = v21;
  v22 = *(a3 + 16);
  v38 = (v21 + 32);
  v23 = (a3 + 40);
  v24 = MEMORY[0x1E69E7CC0];
  v37 = a1;
  if (v22)
  {
    while (1)
    {
      v25 = *v23;
      v40[0] = *(v23 - 1);
      v40[1] = v25;

      a1(v40);
      if (v3)
      {
        break;
      }

      if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
      {
        sub_1DCCE3EFC(v10);
      }

      else
      {
        v26 = v11;
        v27 = *v38;
        v28 = v35;
        (*v38)(v35, v10, v26);
        v27(v39, v28, v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = *(v24 + 16);
          sub_1DCB59728();
          v24 = v31;
        }

        v29 = *(v24 + 16);
        if (v29 >= *(v24 + 24) >> 1)
        {
          sub_1DCB59728();
          v24 = v32;
        }

        *(v24 + 16) = v29 + 1;
        v27((v24 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v29), v39, v26);
        v11 = v26;
        a1 = v37;
      }

      v23 += 2;
      if (!--v22)
      {
        return v24;
      }
    }
  }

  return v24;
}

uint64_t sub_1DCB58F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DCB58FA0(*a1, *(a1 + 8), a2);
  sub_1DD0DB93C();
  v2 = OUTLINED_FUNCTION_61_0();
  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void sub_1DCB58FA0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1DD0DB93C();
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7, v12);
  OUTLINED_FUNCTION_16();
  v15 = v14 - v13;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v16 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v16, qword_1EDE57E00);

  v17 = sub_1DD0DD8EC();
  v18 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_151();
    v40 = OUTLINED_FUNCTION_83();
    *v19 = 136315138;
    *(v19 + 4) = OUTLINED_FUNCTION_31_20();
    _os_log_impl(&dword_1DCAFC000, v17, v18, "Converting %s to semantic value", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  sub_1DD0DB92C();
  v20 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v20 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    goto LABEL_19;
  }

  v21 = sub_1DD0DE1AC();

  if ((v21 & 1) == 0)
  {
    v35 = sub_1DD0DD8EC();
    v36 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = a3;
      v38 = OUTLINED_FUNCTION_151();
      v42 = OUTLINED_FUNCTION_83();
      *v38 = 136315138;
      *(v38 + 4) = OUTLINED_FUNCTION_31_20();
      _os_log_impl(&dword_1DCAFC000, v35, v36, "The responseValue=%s cannot be converted to a SemanticValue. It doesn't have prefix 'com.apple.siri.nl'", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      OUTLINED_FUNCTION_80();
      a3 = v37;
      OUTLINED_FUNCTION_80();
    }

    goto LABEL_19;
  }

  v39 = v6;
  v22 = sub_1DD0DE0CC();
  v23 = sub_1DCB594B0(v22);
  MEMORY[0x1E12A66E0](v23);

  sub_1DCB1C4D8();
  v24 = sub_1DD0DEA0C();

  if (v24[2] <= 2uLL)
  {

    v25 = sub_1DD0DD8EC();
    v26 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_151();
      v41 = OUTLINED_FUNCTION_83();
      *v27 = 136315138;
      *(v27 + 4) = OUTLINED_FUNCTION_31_20();
      _os_log_impl(&dword_1DCAFC000, v25, v26, "The responseValue=%s seems malformed. It should be of type 'com.apple.siri.nl.OntologyNodePojoClassName.InnerClass.serializedValue'", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    if (!v24[2])
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  v28 = a3;
  v29 = v24[4];
  v30 = v24[5];

  MEMORY[0x1E12A6780](v29, v30);

  sub_1DD0DB91C();

  MEMORY[0x1E12A6780](36, 0xE100000000000000);

  if (v24[2] < 2uLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v31 = v24[6];
  v32 = v24[7];

  MEMORY[0x1E12A6780](v31, v32);

  sub_1DD0DB90C();
  if (v24[2] >= 3uLL)
  {
    v33 = v24[8];
    v34 = v24[9];

    sub_1DD0DB8FC();
    a3 = v28;
    v6 = v39;
LABEL_19:
    (*(v9 + 32))(a3, v15, v6);
    return;
  }

LABEL_22:
  __break(1u);
}

unint64_t sub_1DCB594B0(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_41_20();
    if ((v2 & 0x2000000000000000) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = v1 & 0xFFFFFFFFFFFFLL;
    }

    v5 = 7;
    if (((v2 >> 60) & ((v1 & 0x800000000000000) == 0)) != 0)
    {
      v5 = 11;
    }

    v6 = v5 | (v4 << 16);
    result = OUTLINED_FUNCTION_42_23();
    if (v7)
    {
      result = v6;
    }

    if (4 * v4 >= result >> 14)
    {
      sub_1DD0DE1EC();
      OUTLINED_FUNCTION_35_26();
      return OUTLINED_FUNCTION_40_21();
    }
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_63_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_63_3()
{

  return sub_1DD0DE02C();
}

void OUTLINED_FUNCTION_63_4()
{
}

void OUTLINED_FUNCTION_63_6()
{
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = -4;
}

uint64_t OUTLINED_FUNCTION_63_7()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_63_11()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_63_13(uint64_t a1)
{
  *(v1 + 152) = a1;
  *(v1 + 160) = v2;
}

uint64_t OUTLINED_FUNCTION_63_15()
{

  return sub_1DCF17518(v0, v1);
}

void OUTLINED_FUNCTION_63_16()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_63_17()
{

  return swift_allocObject();
}

void sub_1DCB59728()
{
  OUTLINED_FUNCTION_6_54();
  if (v4)
  {
    OUTLINED_FUNCTION_3_83();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_18_35();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_30_27(v2, v5, &qword_1ECCA7990, &qword_1DD0F98B8);
  OUTLINED_FUNCTION_21_26();
  v9 = sub_1DD0DB93C();
  OUTLINED_FUNCTION_11_1(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_19_32();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_4_80(v12);
    sub_1DCB5E9F0(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_52();
  }
}

size_t sub_1DCB597F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DCB598EC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_42_23();
    sub_1DD0DE1EC();
    OUTLINED_FUNCTION_35_26();
    return OUTLINED_FUNCTION_40_21();
  }

  return result;
}

unint64_t sub_1DCB59970()
{
  result = qword_1EDE4F220;
  if (!qword_1EDE4F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4F220);
  }

  return result;
}

uint64_t NLContextUpdate.undoDirectInvocation.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[31];
  v3 = v1[32];
  v4 = v1[33];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1DCB599D8(v2, v3);
}

uint64_t sub_1DCB599D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DCB59A1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NLContextUpdate.pommesContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NLContextUpdate() + 128);

  return sub_1DCB59A1C(v3, a1);
}

uint64_t NLContextUpdate.contextUpdateScope.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NLContextUpdate();
  *a1 = *(v1 + *(result + 136));
  return result;
}

uint64_t NLContextUpdate.restoreSessionForRequestId.getter()
{
  v1 = (v0 + *(type metadata accessor for NLContextUpdate() + 140));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_33_1();
}

uint64_t storeEnumTagSinglePayload for ActionGroupTransition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1DCB59B90()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = *(v2 + 40);
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {
    v7 = sub_1DCD3A300;
  }

  else
  {
    v7 = sub_1DCB59C94;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCB59C94()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCB59CF0()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 688);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v2 + 696) = v0;

  if (v0)
  {
    v8 = *(v2 + 680);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCB59DFC()
{
  v4 = v0[76];
  OUTLINED_FUNCTION_2_17();
  sub_1DCB42D14(v5, v6);
  OUTLINED_FUNCTION_19_5();
  v7 = v0[72];
  v8 = v0[71];
  sub_1DCB09910(v10 + *(v9 + 36), v8, &unk_1ECCAAEC0, &qword_1DD103A40);
  if (__swift_getEnumTagSinglePayload(v8, 1, v7) == 1)
  {
    sub_1DCB0E9D8(v0[71], &unk_1ECCAAEC0, &qword_1DD103A40);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_6_3();
    v12(v11);
    v1 = *(v3 + 56);
    __swift_project_boxed_opaque_existential_1((v3 + 32), v1);
    v13 = OUTLINED_FUNCTION_8_9();
    v14(v13);
    v15 = *(v2 + 8);
    v16 = OUTLINED_FUNCTION_20();
    v17(v16);
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_26_1(v18);
  if (v1)
  {
    OUTLINED_FUNCTION_15_10();

    OUTLINED_FUNCTION_10_11();
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_22_7();
    v19 = *(v8 + 16);
    sub_1DCB41F3C((v0 + 12), (v0 + 32));
    v27 = (v19 + *v19);
    v20 = v19[1];
    v21 = swift_task_alloc();
    v22 = OUTLINED_FUNCTION_14_9(v21);
    *v22 = v23;
    v24 = OUTLINED_FUNCTION_1_10(v22);

    return v27(v24);
  }

  else
  {
    v26 = swift_task_alloc();
    v0[88] = v26;
    *v26 = v0;
    OUTLINED_FUNCTION_4_6(v26);

    return AceServiceInvokerAsync.submitAllSerial(_:executionSource:)();
  }
}

uint64_t AceServiceInvokerAsync.submitAllSerial(_:executionSource:)()
{
  OUTLINED_FUNCTION_41();
  v8 = *(OUTLINED_FUNCTION_56_0(v4, v5, v6, v7) + 40);
  OUTLINED_FUNCTION_8();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_30_1(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_31_0(v13);

  return v16(v3, 1, v2, v1, v0);
}

uint64_t sub_1DCB5A140(uint64_t a1, char a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCB5A1F0(a1, a2, a3);
}

uint64_t sub_1DCB5A1F0(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 96) = a2;
  *(v4 + 56) = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCB5A20C()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 72);
  sub_1DCB4BA5C();
}

uint64_t sub_1DCB5A314()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_34_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_2(v1);

  return v4(v3);
}

uint64_t sub_1DCB5A3A4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCB5A444(a1);
}

uint64_t sub_1DCB5A444(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCB5A84C(a1);
}

uint64_t sub_1DCB5A4E0()
{
  v28 = v0;
  v1 = v0[9];
  v2 = v1[2];
  v0[10] = v2;
  if (v2)
  {
    v3 = v1[3];
    v0[11] = v3;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v1[5];
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 40);
      v7 = swift_unknownObjectRetain();
      v6(v7, v3, ObjectType, v4);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRetain();
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v15 = sub_1DD0DD8FC();
    v0[12] = __swift_project_value_buffer(v15, qword_1EDE57E00);
    swift_unknownObjectRetain();
    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6DC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136315138;
      swift_getObjectType();
      v0[7] = v2;
      v20 = *(v3 + 8);
      v21 = sub_1DD0DF0BC();
      v23 = sub_1DCB10E9C(v21, v22, &v27);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1DCAFC000, v16, v17, "Running action: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    v24 = swift_task_alloc();
    v0[13] = v24;
    *(v24 + 16) = v2;
    *(v24 + 24) = v3;
    v25 = *(MEMORY[0x1E69E8920] + 4);
    v26 = swift_task_alloc();
    v0[14] = v26;
    *v26 = v0;
    v26[1] = sub_1DCB5ABA0;

    return MEMORY[0x1EEE6DE38]();
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v8 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v8, qword_1EDE57E00);
    v9 = sub_1DD0DD8EC();
    v10 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DCAFC000, v9, v10, "No more actions in action group. Action handling frame is complete", v11, 2u);
      OUTLINED_FUNCTION_80();
    }

    v12 = v0[8];

    static ExecuteResponse.complete()();
    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCB5A84C(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCB5A4E0, 0, 0);
}

uint64_t sub_1DCB5A874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C58, &unk_1DD0E32A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  ObjectType = swift_getObjectType();
  (*(v6 + 16))(v10, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v10, v5);
  (*(a3 + 24))(sub_1DCB5AAF4, v13, ObjectType, a3);
}

uint64_t sub_1DCB5A9EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C58, &unk_1DD0E32A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1DCB5AA80(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C58, &unk_1DD0E32A0);
    return sub_1DD0DE45C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C58, &unk_1DD0E32A0);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DCB5AAF4(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C58, &unk_1DD0E32A0) - 8) + 80);

  return sub_1DCB5AA80(a1);
}

uint64_t sub_1DCB5ABA0()
{
  OUTLINED_FUNCTION_42();
  v3 = *(*v1 + 112);
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v2;
  *(v2 + 120) = v0;

  if (v0)
  {
    v5 = sub_1DCBFD028;
  }

  else
  {
    v6 = *(v2 + 104);

    v5 = sub_1DCB5ACB0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DCB5ACB0()
{
  v2 = v0[10];
  v1 = v0[11];
  ObjectType = swift_getObjectType();
  v0[16] = ObjectType;
  v4 = *(v1 + 32);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_1DCBFCE24;

  return v8(ObjectType, v1);
}

uint64_t static Transformer<>.transformer.getter()
{
  if (qword_1EDE46468 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BA8, &qword_1DD0E84B8);
  __swift_project_value_buffer(v0, qword_1EDE46470);
  OUTLINED_FUNCTION_0_25();
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_76_0();

  return v4(v3);
}

{
  if (qword_1EDE46400 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BA0, &qword_1DD0E84B0);
  __swift_project_value_buffer(v0, qword_1EDE46408);
  OUTLINED_FUNCTION_0_25();
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_76_0();

  return v4(v3);
}

{
  if (qword_1EDE464B0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BB0, &qword_1DD0E84C0);
  __swift_project_value_buffer(v0, qword_1EDE464B8);
  OUTLINED_FUNCTION_0_25();
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_76_0();

  return v4(v3);
}

{
  if (qword_1EDE46488 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BB8, &qword_1DD0E84C8);
  __swift_project_value_buffer(v0, qword_1EDE46490);
  OUTLINED_FUNCTION_0_25();
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_76_0();

  return v4(v3);
}

{
  if (qword_1EDE46438 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BC0, qword_1DD0E84D0);
  __swift_project_value_buffer(v0, qword_1EDE46440);
  OUTLINED_FUNCTION_0_25();
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_76_0();

  return v4(v3);
}

uint64_t sub_1DCB5B150@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1DD0DC37C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_1DD0DC36C();
  sub_1DD0DACFC();
  if (v6)
  {
    sub_1DD0DC34C();
  }

  sub_1DD0DACEC();
  if (v7)
  {
    sub_1DD0DC33C();
  }

  sub_1DD0DAD0C();
  if (v8)
  {
    sub_1DD0DC35C();
  }

  sub_1DD0DAD1C();
  if (v9)
  {
    sub_1DD0DC30C();
  }

  sub_1DD0DAD2C();
  if (v10)
  {
    sub_1DD0DC31C();
  }

  result = sub_1DD0DAD6C();
  if (v12)
  {
    sub_1DD0DC32C();
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1DCB5B270@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DD0DB0FC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v7 = *a1;
  if ([*a1 label])
  {
    sub_1DD0DCA6C();
  }

  v8 = [v7 type];
  if (!v8)
  {
    goto LABEL_10;
  }

  if (v8 == 1)
  {
    v16 = sub_1DD0DC47C();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v12 = sub_1DD0DC46C();
    result = sub_1DCB5DE54(v7);
    if (!v19)
    {
      v15 = MEMORY[0x1E69D21B8];
      goto LABEL_16;
    }

    sub_1DD0DC45C();
    v15 = MEMORY[0x1E69D21B8];
    goto LABEL_12;
  }

  if (v8 == 2)
  {
    v9 = sub_1DD0DC3FC();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = sub_1DD0DC3EC();
    result = sub_1DCB5DE54(v7);
    if (!v14)
    {
      v15 = MEMORY[0x1E69D2198];
      goto LABEL_16;
    }

    sub_1DD0DC3DC();
    v15 = MEMORY[0x1E69D2198];
  }

  else
  {
LABEL_10:
    v20 = sub_1DD0DC4DC();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v12 = sub_1DD0DC4CC();
    result = sub_1DCB5DE54(v7);
    if (!v23)
    {
      v15 = MEMORY[0x1E69D2230];
      goto LABEL_16;
    }

    sub_1DD0DC4BC();
    v15 = MEMORY[0x1E69D2230];
  }

LABEL_12:

LABEL_16:
  *a2 = v12;
  a2[1] = v15;
  return result;
}

uint64_t static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5FE8, &unk_1DD0F4BB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v37 - v9;
  v11 = sub_1DD0DB0FC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DCB5B86C(a1);
  if (v17)
  {
    v19 = v17;
    v20 = v18;
    v37[2] = a3;
    v38 = v12;
    v37[1] = a2;
    v21 = sub_1DD0DDF8C();
    v22 = [v19 localizeForLanguage_];

    v23 = sub_1DD0DDFBC();
    v25 = v24;

    v26 = *MEMORY[0x1E696E618];
    v27 = sub_1DD0DDFBC();
    v29 = v28;
    if (v27 == sub_1DD0DDFBC() && v29 == v30)
    {
    }

    else
    {
      v32 = sub_1DD0DF0AC();

      if (v32)
      {
      }

      else
      {

        sub_1DD0DB05C();
        v39 = v23;
        v40 = v25;
        v36 = v38;
        (*(v38 + 16))(v10, v16, v11);
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_1DCB1C4D8();
        v23 = sub_1DD0DEA1C();

        sub_1DCB5DDEC(v10);
        (*(v36 + 8))(v16, v11);
      }
    }
  }

  else
  {
    sub_1DD0DDFBC();
    v33 = sub_1DD0DE1AC();

    v23 = sub_1DD0DDFBC();
    if (v33)
    {
      v34 = sub_1DCDADC04();

      return v34;
    }
  }

  return v23;
}

void *sub_1DCB5B86C(void *a1)
{
  if (qword_1EDE492A8 != -1)
  {
    swift_once();
  }

  v2 = off_1EDE492B0;
  if (*(off_1EDE492B0 + 2) && (v3 = sub_1DCB5B97C(a1), (v4 & 1) != 0))
  {
    v5 = *(v2[7] + 8 * v3);
    v6 = v5;
    v7 = a1;
  }

  else
  {
    sub_1DD0DDFBC();
    v8 = sub_1DD0DE1AC();

    if (v8)
    {
      sub_1DD0DDFBC();
      v9 = sub_1DCDADC94();

      if (v9)
      {
        v5 = sub_1DCC17CF4(v9, v2);
        if (!v5)
        {
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

unint64_t sub_1DCB5B97C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1DD0DDFBC();
  sub_1DD0DF1DC();
  sub_1DD0DDF2C();
  v4 = sub_1DD0DF20C();

  return sub_1DCB5BA10(a1, v4);
}

unint64_t sub_1DCB5BA10(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_1DD0DDFBC();
    v8 = v7;
    if (v6 == sub_1DD0DDFBC() && v8 == v9)
    {

      return i;
    }

    v11 = sub_1DD0DF0AC();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

void sub_1DCB5BB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_79();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v25 = *(v22 + 104);
  v26 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v26, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCB5BE58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8, v4);
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB5C6C0(uint64_t a1, uint64_t a2)
{
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 88), a1);
  *(v2 + *(*v2 + 96)) = a2;
  return v2;
}

uint64_t sub_1DCB5C758(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_1DCB5C6C0(a1, a2);
  return v7;
}

uint64_t sub_1DCB5C7A8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCB5C86C();
}

uint64_t sub_1DCB5C86C()
{
  OUTLINED_FUNCTION_42();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[8] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAABF0, &qword_1DD0FA700);
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 64);
  v1[13] = OUTLINED_FUNCTION_38();
  v9 = type metadata accessor for ParameterClause();
  v1[14] = v9;
  OUTLINED_FUNCTION_20_0(v9);
  v11 = *(v10 + 64);
  v1[15] = OUTLINED_FUNCTION_38();
  v12 = sub_1DD0DD85C();
  v1[16] = v12;
  OUTLINED_FUNCTION_99(v12);
  v1[17] = v13;
  v15 = *(v14 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1DCB5C97C()
{
  v91 = v0;
  if (qword_1EDE4F900 != -1)
  {
LABEL_33:
    OUTLINED_FUNCTION_0_0();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_5(v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_167(v5);
    OUTLINED_FUNCTION_15_8();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_92_0();
  }

  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5();
  }

  v11 = *(v0 + 152);
  v12 = sub_1DD0DD88C();
  __swift_project_value_buffer(v12, qword_1EDE57DD0);
  sub_1DD0DD84C();
  v13 = sub_1DD0DD87C();
  sub_1DD0DE7FC();
  if (sub_1DD0DE92C())
  {
    v14 = *(v0 + 152);
    v15 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_47_0(v15);
    sub_1DD0DD83C();
    OUTLINED_FUNCTION_121_3();
    _os_signpost_emit_with_name_impl(v16, v17, v18, v19, v20, v21, v1, 2u);
    OUTLINED_FUNCTION_37();
  }

  v22 = *(v0 + 144);
  v23 = *(v0 + 152);
  v24 = *(v0 + 128);
  v25 = *(v0 + 136);
  v26 = *(v0 + 96);
  v27 = *(v0 + 72);
  v28 = *(v0 + 80);

  v29 = OUTLINED_FUNCTION_120_3(v25);
  v30(v29);
  v31 = sub_1DD0DD8CC();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  *(v0 + 160) = OUTLINED_FUNCTION_13_64();
  v34 = *(v25 + 8);
  v35 = OUTLINED_FUNCTION_124();
  v36(v35);
  v37 = *(v27 + 16);
  sub_1DCB78C0C(v37, v28);
  v39 = v38;
  v89 = v38[2];
  if (v89)
  {
    v41 = *(v0 + 104);
    v40 = *(v0 + 112);
    v43 = v38[4];
    v42 = v38[5];
    v44 = *(*(v0 + 72) + 24);

    sub_1DCB77430(v43, v42, v41);
    if (__swift_getEnumTagSinglePayload(v41, 1, v40) != 1)
    {
      v64 = *(v0 + 120);
      v65 = *(v0 + 104);
      v66 = *(v0 + 64);

      sub_1DCB3998C(v65, v64, type metadata accessor for ParameterClause);
      v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAA6E8, &unk_1DD102D48) + 64);
      *v66 = v37;
      v66[1] = v43;
      v66[2] = v42;
      sub_1DCB3998C(v64, v66 + v67, type metadata accessor for ParameterClause);
      type metadata accessor for ResolveConfirmProcessingResult();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABD0, &qword_1DD0EA240);
      swift_storeEnumTagMultiPayload();
      v68 = v37;
      sub_1DCB3B864();

      OUTLINED_FUNCTION_108_8();

      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_141();

      __asm { BRAA            X1, X16 }
    }

    v45 = *(v0 + 104);

    sub_1DCB16D50(v45, qword_1ECCAABF0, &qword_1DD0FA700);
  }

  v46 = 0;
  v86 = v0 + 16;
  v87 = v37;
  v47 = v39 + 5;
  v1 = MEMORY[0x1E69E7CC0];
  for (i = v0; ; v0 = i)
  {
    *(v0 + 168) = v1;
    if (v89 == v46)
    {
      break;
    }

    if (v46 >= v39[2])
    {
      __break(1u);
      goto LABEL_33;
    }

    v48 = *(v0 + 72);
    v49 = *(v47 - 1);
    v50 = *v47;
    v90[0] = v49;
    v90[1] = v50;

    if (!sub_1DCB75224(v90, v48))
    {

      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = *(v1 + 16);
      sub_1DCB38954();
    }

    v53 = *(v1 + 16);
    v52 = *(v1 + 24);
    if (v53 >= v52 >> 1)
    {
      OUTLINED_FUNCTION_21_0(v52);
      sub_1DCB38954();
    }

    *(v1 + 16) = v53 + 1;
    v54 = v1 + 16 * v53;
    *(v54 + 32) = v49;
    *(v54 + 40) = v50;
    v47 += 2;
    ++v46;
  }

  v55 = *(v0 + 88);
  v56 = v55[2];
  *(v0 + 176) = v56;
  v57 = v55[3];
  *(v0 + 184) = v57;
  v58 = v55[4];
  *(v0 + 192) = v58;
  v59 = v55[5];
  *(v0 + 200) = v59;
  v60 = v55[6];
  *(v0 + 208) = v60;
  v61 = v55[7];
  *(v0 + 216) = v61;
  if (v56)
  {
    *&v62 = v58;
    *(&v62 + 1) = v59;
    *&v63 = v60;
    *(&v63 + 1) = v61;
    *(v0 + 16) = v56;
    *(v0 + 24) = v57;
    *(v0 + 32) = v62;
    *(v0 + 48) = v63;
    sub_1DD0DCF8C();
  }

  v71 = sub_1DD0DD8EC();
  v72 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v73);
    _os_log_impl(&dword_1DCAFC000, v71, v72, "ResolveConfirmHandleService.executeResolveConfirm with processIntentCommand", v60, 2u);
    OUTLINED_FUNCTION_62();
  }

  v74 = *(v0 + 96);

  [v87 setDidAuthenticateAppProtection_];
  OUTLINED_FUNCTION_124();
  sub_1DCB737CC();
  *(v0 + 240) = v75;

  v76 = [v87 typeName];
  sub_1DD0DDFBC();
  v78 = v77;

  *(v0 + 248) = v78;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 256) = v79;
  *v79 = v80;
  v79[1] = sub_1DCB399F4;
  v81 = *(v0 + 88);
  v82 = *(v0 + 96);
  v83 = *(v0 + 64);
  OUTLINED_FUNCTION_141();

  return sub_1DCB8EDFC();
}

uint64_t OUTLINED_FUNCTION_116_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DCB4F1DC(v4, v5 - 200, a3, a4);
}

uint64_t OUTLINED_FUNCTION_116_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DCB17C3C(v4, v5, a3, a4);
}

uint64_t OUTLINED_FUNCTION_116_2()
{
  v2 = *(v0 + 456);
  v3 = *(v0 + 432);
}

uint64_t OUTLINED_FUNCTION_116_3@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t OUTLINED_FUNCTION_116_4()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_116_7()
{

  return sub_1DCAFF9E8((v0 + 760), v0 + 976);
}

uint64_t OUTLINED_FUNCTION_115_0()
{

  return sub_1DD0DE33C();
}

uint64_t OUTLINED_FUNCTION_115_1(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1DCB10E9C(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_115_2()
{

  return swift_task_alloc();
}

id OUTLINED_FUNCTION_115_3(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_115_4()
{
  v2 = *(v0 + 72);

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_115_7(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DCB099BC(v5 + 80, v4 + 760, a3, a4);
}

uint64_t OUTLINED_FUNCTION_115_8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 104);
  return v2 + 16;
}

void sub_1DCB5D23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  sub_1DCB5D31C();
  v9 = *(*(v4 + 16) + 16);
  sub_1DCB5D3F4(v9);
  v10 = *(v4 + 16);
  *(v10 + 16) = v9 + 1;
  v11 = (v10 + 32 * v9);
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = a4;
  *(v4 + 16) = v10;
  swift_endAccess();
  sub_1DD0DCF8C();
}

void sub_1DCB5D334()
{
  OUTLINED_FUNCTION_10_15();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_17();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_3_6(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7948, &qword_1DD0F9840);
      v8 = OUTLINED_FUNCTION_33_19();
      OUTLINED_FUNCTION_9_14(v8);
      OUTLINED_FUNCTION_17_31(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_2_24();
        sub_1DCB5DF38(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7950, &unk_1DD0F9848);
    OUTLINED_FUNCTION_14_46();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DCB5D40C()
{
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];

    sub_1DCB38954();
    v3 = 0;
    v4 = (v1 + 56);
    while (v3 < *(v1 + 16))
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;

      MEMORY[0x1E12A6780](v5, v6);
      MEMORY[0x1E12A6780](6176094, 0xE300000000000000);
      MEMORY[0x1E12A6780](v7, v8);
      MEMORY[0x1E12A6780](94, 0xE100000000000000);

      v9 = *(v11 + 16);
      if (v9 >= *(v11 + 24) >> 1)
      {
        sub_1DCB38954();
      }

      ++v3;
      *(v11 + 16) = v9 + 1;
      v10 = v11 + 16 * v9;
      *(v10 + 32) = 94;
      *(v10 + 40) = 0xE100000000000000;
      v4 += 4;
      if (v2 == v3)
      {

        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
    sub_1DCB38974();
    sub_1DD0DDF6C();

    OUTLINED_FUNCTION_68();
  }
}

uint64_t MachineUtteranceBuilder.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t NLContextUpdate.nlInput.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = *(v1 + 120);

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t sub_1DCB5D668@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v47 = a2;
  v3 = sub_1DD0DBB1C();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA32B0, &qword_1DD0E8538);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v49 = &v42 - v11;
  v12 = sub_1DD0DAD7C();
  v51 = *(v12 - 8);
  v13 = *(v51 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v44 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v42 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v42 - v22;
  v24 = *a1;
  v25 = sub_1DD0DC13C();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_1DD0DC12C();
  v29 = [v24 displayName];
  sub_1DD0DDFBC();

  v52 = v28;
  sub_1DD0DC11C();

  v50 = v24;
  v30 = [v24 nameComponents];
  v48 = v7;
  if (v30)
  {
    v31 = v30;
    sub_1DD0DAD5C();

    v43 = *(v51 + 32);
    v43(v23, v20, v12);
    if (qword_1EDE463F0 != -1)
    {
      swift_once();
    }

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BE8, &qword_1DD0E8518);
    __swift_project_value_buffer(v32, qword_1EDE57CD8);
    sub_1DD0DCBBC();
  }

  v33 = v52;
  v34 = v50;
  if ([v50 personHandle])
  {
    if (qword_1EDE463D8 != -1)
    {
      swift_once();
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BE0, &qword_1DD0E8510);
    __swift_project_value_buffer(v35, qword_1EDE57CA8);
    sub_1DD0DCBBC();
  }

  if ([v34 relationship])
  {
    if (qword_1EDE463D0 != -1)
    {
      swift_once();
    }

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BD8, &qword_1DD0E8508);
    __swift_project_value_buffer(v36, qword_1EDE57C90);
    sub_1DD0DCBBC();
  }

  sub_1DCB5DEB8(v34);
  v37 = v48;
  if (v38 || (sub_1DCD953D0(v34), v39))
  {
    sub_1DD0DBAEC();
    sub_1DD0DBA0C();
    (*(v45 + 8))(v37, v46);
  }

  result = MEMORY[0x1E12A4450](v33);
  if (result)
  {
    sub_1DD0DBD9C();
    result = sub_1DD0DBEBC();
    v41 = v53;
    if (v53)
    {

      *v47 = v41;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DCB5DDEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5FE8, &unk_1DD0F4BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCB5DE54(void *a1)
{
  v1 = [a1 value];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DDFBC();

  return v3;
}

void sub_1DCB5DEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      sub_1DCB5D23C(a1, a2, a3, a4);
    }
  }

  sub_1DD0DCF8C();
}

char *sub_1DCB5DF38(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_51(a3, result);
  }

  return result;
}

uint64_t sub_1DCB5DF98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_15_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1_3(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_33_1();
  v9(v8);
  return v4;
}

void *ResponseFactory.init()()
{
  v1 = v0;
  v2 = sub_1DD0DD39C();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  v1[5] = &type metadata for DialogUsageProvider;
  v1[6] = &protocol witness table for DialogUsageProvider;
  sub_1DD0DD3DC();
  v10 = type metadata accessor for IntentServicesAdapter();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_1DCB578A0(v9);
  v1[10] = v10;
  v1[11] = &off_1F5862400;
  v1[7] = v13;
  return v1;
}

uint64_t type metadata accessor for IntentServicesAdapter()
{
  result = qword_1EDE484A0;
  if (!qword_1EDE484A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ExecuteResponse.nextPluginAction.getter()
{
  v0 = OUTLINED_FUNCTION_4();
  v1 = type metadata accessor for ExecuteResponse(v0);
  v2 = OUTLINED_FUNCTION_59_2(*(v1 + 36));
  return sub_1DCB099BC(v2, v3, v4, v5);
}

uint64_t ExecuteResponse.unhandledReason.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 48);
  *(a1 + 16) = v4;
  return sub_1DCB5E13C(v2, v3, v4);
}

uint64_t sub_1DCB5E13C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 <= 0xFBu)
  {
    return sub_1DCD1B9B8(result, a2, a3);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlowUnhandledReason(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3E && *(a1 + 17))
    {
      v2 = *a1 + 61;
    }

    else
    {
      v2 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
      if (v2 >= 0x3D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t OUTLINED_FUNCTION_129_0(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_1DCB17D04(v2 - 72, v2 - 112);
}

uint64_t OUTLINED_FUNCTION_129_1@<X0>(char a1@<W8>)
{
  *(v1 + 184) = a1;
  v4 = *(v2 - 184);

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_129_3()
{

  return sub_1DD0DF0AC();
}

uint64_t sub_1DCB5E21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v6 = sub_1DD0DB04C();
  v4[14] = v6;
  v7 = *(v6 - 8);
  v4[15] = v7;
  v8 = *(v7 + 64) + 15;
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCB5E3B0, 0, 0);
}

uint64_t sub_1DCB5E314()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_13_17(v5);
  OUTLINED_FUNCTION_26_18();

  return sub_1DCB5E21C(v7, v8, v9, v3);
}

uint64_t sub_1DCB5E3B0()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE4B4B8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE4B4C0;
  *(v0 + 136) = qword_1EDE4B4C0;

  return MEMORY[0x1EEE6DFA0](sub_1DCB5E444, v1, 0);
}

uint64_t sub_1DCB5E444()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 136);
  sub_1DCB66E20(v0 + 56);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

void sub_1DCB5E4A8()
{
  if (*(v0 + 80))
  {
    sub_1DCAFF9E8((v0 + 56), v0 + 16);
    sub_1DD0DCA6C();
  }

  sub_1DCB185D0(v0 + 56, &qword_1ECCA54E8, &unk_1DD0F2080);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "Failed to intialize Suggestions broker");
    OUTLINED_FUNCTION_62();
  }

  v7 = *(v0 + 128);
  v8 = *(v0 + 104);

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_76();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCB5E93C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_48_12();
  if (v8 && (v9 = (a4)(0), result = OUTLINED_FUNCTION_2(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_11_33();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_11_33();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t sub_1DCB5EA08@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_1DCB5F7AC();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for GuardFlowResult(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1DCB5EB0CLL);
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

void sub_1DCB5EB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_139();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  v21 = *(v18 + 224);
  v22 = *(v18 + 184);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB5ED0C()
{
  v1 = v0;
  sub_1DD0DEC1C();
  OUTLINED_FUNCTION_2_59();
  MEMORY[0x1E12A6780]();
  MEMORY[0x1E12A6780](v1[11], v1[12]);
  OUTLINED_FUNCTION_2_59();
  MEMORY[0x1E12A6780](0xD000000000000011);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  sub_1DCB5F168(*(v0 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F10, &qword_1DD0F40E8);
  v2 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v2);

  OUTLINED_FUNCTION_2_59();
  MEMORY[0x1E12A6780]();
  MEMORY[0x1E12A6780](v1[8], v1[9]);
  OUTLINED_FUNCTION_2_59();
  MEMORY[0x1E12A6780]();
  if (*(v0 + 80))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 80))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1E12A6780](v3, v4);

  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DCB5EE80()
{
  type metadata accessor for SiriKitIntentExecutionBehavior();
  static SiriKitIntentExecutionBehavior.standard()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DCB5EEE0()
{
  OUTLINED_FUNCTION_33();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  v0[23] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "HandleIntentFlow beginning execution of HandleIntent");
    OUTLINED_FUNCTION_62();
  }

  v8 = v0[21];
  v7 = v0[22];

  OUTLINED_FUNCTION_73_4();
  v10 = *(v9 + 96);
  v11 = *(v7 + 88);
  v0[24] = v11;
  v12 = *(v11 + 8);
  v0[25] = v12;
  v13 = *(v12 + 16);
  v14 = *(v7 + 80);
  v0[26] = v14;
  v20 = (v13 + *v13);
  v15 = v13[1];
  v16 = swift_task_alloc();
  v0[27] = v16;
  *v16 = v0;
  v16[1] = sub_1DCB5F8F0;
  v18 = v0[19];
  v17 = v0[20];

  return v20(v18, v17, v14, v12);
}

uint64_t sub_1DCB5F0A0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AD3C;

  return sub_1DCB5FF14(a1);
}

uint64_t sub_1DCB5F13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCB5F804, 0, 0);
}

uint64_t sub_1DCB5F168(uint64_t result)
{
  if (result)
  {
    sub_1DD0DCF8C();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_149(uint64_t a1, unint64_t a2)
{

  return sub_1DCB10E9C(a1, a2, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_149_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 464);
  v4 = *(v2 + 472);
  return 1;
}

void OUTLINED_FUNCTION_204()
{
}

uint64_t sub_1DCB5F220()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_34_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_2(v1);

  return v4(v3);
}

uint64_t sub_1DCB5F2B0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCB5F364(a1);
}

uint64_t SharingPolicyCheckFlow.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCB5F364(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return SharingPolicyCheckFlow.execute()(a1);
}

void sub_1DCB5F404()
{
  v14 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_151();
    v5 = OUTLINED_FUNCTION_83();
    v13 = v5;
    *v4 = 136315138;
    if (qword_1EDE4CC60 != -1)
    {
      OUTLINED_FUNCTION_5_103();
    }

    *(v4 + 4) = sub_1DCB10E9C(qword_1EDE4CC68, *algn_1EDE4CC70, &v13);
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v6, v7, "%s: Starting flow execution");
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v8 = sub_1DD0DD8EC();
  v9 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_151();
    v11 = OUTLINED_FUNCTION_83();
    v13 = v11;
    *v10 = 136315138;
    if (qword_1EDE4CC60 != -1)
    {
      OUTLINED_FUNCTION_5_103();
    }

    *(v10 + 4) = sub_1DCB10E9C(qword_1EDE4CC68, *algn_1EDE4CC70, &v13);
    _os_log_impl(&dword_1DCAFC000, v8, v9, "%s: Sharing policy is not applicable in the current context - flow will exit with PASS exit value", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v12 = *(v0 + 16);
  *(*(v0 + 24) + 16) = 1;
  sub_1DCB5F618();
}

void sub_1DCB5F618()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB5F804()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v1[1] = *(v0 + 40);
  v1[2] = v2;
  v1[3] = v3;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 80) = v5;
  *v5 = v6;
  v5[1] = sub_1DCB61FD4;
  v7 = *(v0 + 16);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1DCB5F8F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 216);
  *v2 = *v0;
  *(v1 + 224) = v5;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void static SiriKitIntentExecutionBehavior.standard()()
{
  type metadata accessor for SiriKitIntentExecutionBehavior();
  OUTLINED_FUNCTION_5_13();
  v0 = swift_allocObject();
  *(v0 + 88) = 0x647261646E617473;
  *(v0 + 96) = 0xE800000000000000;
  OUTLINED_FUNCTION_0_62(v0);
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
}

void sub_1DCB5FA24()
{
  v34 = v0;
  v1 = v0[10] + *(*v0[10] + 144);
  v2 = *v1;
  v0[12] = *v1;
  v3 = *(v1 + 8);
  v0[13] = v3;
  v4 = *(v1 + 16);
  v0[14] = v4;
  switch(*(v1 + 24))
  {
    case 0:
      v0[6] = v2;
      v0[7] = v3;
      v0[8] = v4;
      sub_1DD0DCF8C();
    case 2:
      OUTLINED_FUNCTION_26_18();
      sub_1DCB61AE4(v18, v19, v20, 2);
      sub_1DD0DCF8C();
    case 3:
      sub_1DCB79C24(v2, v3, v4 & 1);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v5 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v5, qword_1EDE57E00);
      v6 = sub_1DD0DD8EC();
      v7 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v7))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_61_3();
        _os_log_impl(v8, v9, v10, v11, v12, 2u);
        OUTLINED_FUNCTION_14_3();
      }

      v13 = v0[9];
      OUTLINED_FUNCTION_26_18();
      v17 = 3;
      break;
    case 4:
      v21 = v2;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v22 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v22, qword_1EDE57E00);
      v6 = sub_1DD0DD8EC();
      v23 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v23))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_61_3();
        _os_log_impl(v24, v25, v26, v27, v28, 2u);
        OUTLINED_FUNCTION_14_3();
      }

      v29 = v0[9];
      OUTLINED_FUNCTION_26_18();
      v17 = 4;
      break;
    default:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        v33 = v0[10];
      }

      v30 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v30, qword_1EDE57E00);
      sub_1DD0DCF8C();
  }

  sub_1DCB799DC(v14, v15, v16, v17);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_73();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCB5FF14(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = *v1;
  OUTLINED_FUNCTION_24();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCB5FF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v4[22] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1DCB5EEE0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_127()
{
  v2 = *(v0 + 352);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_127_0()
{
}

uint64_t getEnumTagSinglePayload for SiriKitIntentHandler(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DCB60054()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_17(v1);
  OUTLINED_FUNCTION_37_34();
  OUTLINED_FUNCTION_152();

  return sub_1DCB61028();
}

uint64_t sub_1DCB600E8()
{
  OUTLINED_FUNCTION_42();
  v0[6] = v1;
  v0[7] = v2;
  OUTLINED_FUNCTION_0_30(v3, v4, v5, v1, v2, v6);
  v8 = *(v7 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[8] = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_11_26(v9);

  return v12(v11);
}

uint64_t sub_1DCB6019C()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_121();

  return sub_1DCB600E8();
}

uint64_t sub_1DCB6022C()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_5(v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_167(v5);
    OUTLINED_FUNCTION_15_8();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_92_0();
  }

  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5();
  }

  v11 = *(v0 + 192);
  *(v0 + 200) = __swift_project_value_buffer(*(v0 + 136), qword_1EDE57DD0);
  sub_1DD0DD84C();
  v12 = sub_1DD0DD87C();
  sub_1DD0DE7FC();
  if (sub_1DD0DE92C())
  {
    v13 = *(v0 + 192);
    v14 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_47_0(v14);
    sub_1DD0DD83C();
    OUTLINED_FUNCTION_121_3();
    _os_signpost_emit_with_name_impl(v15, v16, v17, v18, v19, v20, v1, 2u);
    OUTLINED_FUNCTION_37();
  }

  v21 = *(v0 + 184);
  v22 = *(v0 + 192);
  v23 = *(v0 + 160);
  v24 = *(v0 + 168);
  v25 = *(v0 + 112);

  v26 = OUTLINED_FUNCTION_120_3(v24);
  v27(v26);
  v28 = sub_1DD0DD8CC();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *(v0 + 208) = OUTLINED_FUNCTION_13_64();
  *(v0 + 216) = *(v24 + 8);
  *(v0 + 224) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31 = OUTLINED_FUNCTION_124();
  v32(v31);
  v33 = v25[2];
  *(v0 + 232) = v33;
  v34 = v25[3];
  *(v0 + 240) = v34;
  v35 = v25[4];
  *(v0 + 248) = v35;
  v36 = v25[5];
  *(v0 + 256) = v36;
  v37 = v25[6];
  *(v0 + 264) = v37;
  v38 = v25[7];
  *(v0 + 272) = v38;
  if (v33)
  {
    *&v39 = v35;
    *(&v39 + 1) = v36;
    *&v40 = v37;
    *(&v40 + 1) = v38;
    *(v0 + 16) = v33;
    *(v0 + 24) = v34;
    *(v0 + 32) = v39;
    *(v0 + 48) = v40;
    sub_1DD0DCF8C();
  }

  v41 = sub_1DD0DD8EC();
  v42 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v43);
    _os_log_impl(&dword_1DCAFC000, v41, v42, "ResolveConfirmHandleService.executeHandle with processIntentCommand", v37, 2u);
    OUTLINED_FUNCTION_62();
  }

  v44 = *(v0 + 128);
  v45 = *(v0 + 104);

  sub_1DCB60DAC();
  *(v0 + 296) = v46;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 304) = v47;
  *v47 = v48;
  v47[1] = sub_1DCB74B6C;
  v49 = *(v0 + 128);
  v50 = *(v0 + 104);
  v51 = *(v0 + 112);
  v52 = *(v0 + 96);

  return sub_1DCB60D00();
}

void sub_1DCB60640()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 72);
  sub_1DCB4BA5C();
}

uint64_t sub_1DCB60748(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 104) = a2;
  *(v4 + 56) = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCB60764(uint64_t a1, char a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB65490;

  return sub_1DCB60748(a1, a2, a3);
}

uint64_t sub_1DCB60814()
{
  OUTLINED_FUNCTION_41();
  if (*(v0[14] + 80) == 1)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v1 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
    v2 = sub_1DD0DD8EC();
    v3 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v3))
    {
      v4 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v4);
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      OUTLINED_FUNCTION_62();
    }

    v10 = v0[15];

    v11 = v10[6];
    __swift_project_boxed_opaque_existential_1(v10 + 2, v10[5]);
    v12 = swift_task_alloc();
    v0[16] = v12;
    sub_1DCB10E5C(0, &qword_1EDE460D8, 0x1E69C7850);
    OUTLINED_FUNCTION_45_22();
    *v12 = v13;
    OUTLINED_FUNCTION_12_62();
    OUTLINED_FUNCTION_48();

    return AceServiceInvokerAsync.submitToCompanion<A>(_:)();
  }

  else
  {
    if (sub_1DCB610F0())
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v16 = v0[14];
      v17 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v17, qword_1EDE57E00);
      sub_1DD0DCF8C();
    }

    OUTLINED_FUNCTION_23_29(v0[15]);
    v18 = swift_task_alloc();
    v0[21] = v18;
    sub_1DCB10E5C(0, &qword_1EDE460D8, 0x1E69C7850);
    OUTLINED_FUNCTION_45_22();
    *v18 = v19;
    OUTLINED_FUNCTION_12_62();
    OUTLINED_FUNCTION_48();

    return AceServiceInvokerAsync.submit<A>(_:)();
  }
}

uint64_t sub_1DCB60B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCB60B84()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  v0[14] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_62();
  }

  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5();
  }

  v10 = v0[13];
  v11 = sub_1DD0DD88C();
  v0[15] = __swift_project_value_buffer(v11, qword_1EDE57DD0);
  sub_1DD0DD84C();
  OUTLINED_FUNCTION_103_8();
  sub_1DCB70034(v12, v13, v14, v15);
  v0[16] = v16;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[17] = v17;
  *v17 = v18;
  v17[1] = sub_1DCB73E3C;
  v19 = v0[9];
  v20 = v0[10];
  v21 = v0[7];

  return sub_1DCB60B6C((v0 + 2), v21, v19);
}

uint64_t sub_1DCB60D00()
{
  OUTLINED_FUNCTION_42();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[6] = v5;
  v6 = sub_1DD0DD85C();
  v1[11] = v6;
  OUTLINED_FUNCTION_99(v6);
  v1[12] = v7;
  v9 = *(v8 + 64);
  v1[13] = OUTLINED_FUNCTION_38();
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DCB60DAC()
{
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_70();
  v1 = sub_1DD0DB04C();
  v2 = OUTLINED_FUNCTION_9(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2, v7);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  [v0 setDidAuthenticateAppProtection_];
  v11 = [objc_allocWithZone(MEMORY[0x1E69C7848]) init];
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  (*(v4 + 8))(v10, v1);
  v12 = OUTLINED_FUNCTION_124();
  sub_1DCB4D8E8(v12, v13, v11);

  if ([v0 _type] == 2)
  {
    v14 = INIntent.jsonRepresentation()();
    sub_1DCB2C534(v14._countAndFlagsBits, v14._object, v11, &selRef_setJsonEncodedIntent_);
  }

  else
  {
    v15 = sub_1DCB61EDC(v0);
    [v11 setIntent_];
  }

  OUTLINED_FUNCTION_15_5();
}

uint64_t sub_1DCB60F10()
{
  OUTLINED_FUNCTION_42();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v1[12] = v5;
  v6 = sub_1DD0DD88C();
  v1[17] = v6;
  OUTLINED_FUNCTION_99(v6);
  v1[18] = v7;
  v9 = *(v8 + 64);
  v1[19] = OUTLINED_FUNCTION_38();
  v10 = sub_1DD0DD85C();
  v1[20] = v10;
  OUTLINED_FUNCTION_99(v10);
  v1[21] = v11;
  v13 = *(v12 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1DCB61028()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCB60F10();
}

BOOL sub_1DCB610F0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 64) & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

void *OUTLINED_FUNCTION_45_2()
{

  return memcpy((v0 + 256), (v1 - 160), 0x48uLL);
}

double OUTLINED_FUNCTION_45_4()
{

  return sub_1DCB90D40(1935893875, 0xE400000000000000, v0);
}

uint64_t OUTLINED_FUNCTION_45_6()
{

  return sub_1DD0DEC3C();
}

void OUTLINED_FUNCTION_45_8()
{
}

uint64_t OUTLINED_FUNCTION_45_11()
{

  return sub_1DD0DF0AC();
}

double OUTLINED_FUNCTION_45_13()
{
  *v0 = v2;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = -4;
  v3 = (v0 + *(v1 + 40));
  result = 0.0;
  *v3 = 0u;
  v3[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_45_16(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return *a1;
}

void OUTLINED_FUNCTION_45_18()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

void *OUTLINED_FUNCTION_45_19@<X0>(uint64_t a1@<X8>)
{
  v1[1] = 0;
  v1[2] = 0;
  *v1 = a1;
  return v1;
}

uint64_t OUTLINED_FUNCTION_45_20(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 344);
  return result;
}

uint64_t OUTLINED_FUNCTION_45_23(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v2[15];
  v3 = v2[16];
  v5 = v2[14];
  return v2[12];
}

void OUTLINED_FUNCTION_45_24()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t sub_1DCB61354()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  return v1();
}

uint64_t sub_1DCB613B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 48);
  a3[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_1Tm_0(a3);
  return v6(a1, a2);
}

uint64_t sub_1DCB61440(uint64_t a1, void (*a2)(void), char *a3, uint64_t a4)
{
  v53 = a3;
  v54 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v52 - v13;
  v15 = sub_1DD0DE97C();
  v52 = *(v15 - 8);
  v16 = *(v52 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v52 - v19;
  v21 = *(a4 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18, v23);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DCB099BC(a1, v56, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1ECCA3CE0, &unk_1DD0E4F80);
  if (!swift_dynamicCast())
  {
    v53 = v14;
    v54 = v11;
    v28 = v26;
    v29 = a4;
    __swift_storeEnumTagSinglePayload(v20, 1, 1, a4);
    (*(v52 + 8))(v20, v15);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v30 = sub_1DD0DD8FC();
    v31 = __swift_project_value_buffer(v30, qword_1EDE57E00);
    v32 = sub_1DD0DD8EC();
    v33 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v55 = v29;
      v56[0] = v35;
      *v34 = 136315394;
      swift_getMetatypeMetadata();
      v36 = sub_1DD0DE02C();
      v38 = sub_1DCB10E9C(v36, v37, v56);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v55 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v39 = sub_1DD0DE02C();
      v41 = sub_1DCB10E9C(v39, v40, v56);

      *(v34 + 14) = v41;
      _os_log_impl(&dword_1DCAFC000, v32, v33, "Expected exitValue of type %s but instead got value of type %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v35, -1, -1);
      MEMORY[0x1E12A8390](v34, -1, -1);
    }

    v42 = *(v30 - 8);
    v43 = v53;
    (*(v42 + 16))(v53, v31, v30);
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v30);
    v44 = v54;
    sub_1DCB099BC(v43, v54, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v44, 1, v30) == 1)
    {
      sub_1DCB0E9D8(v54, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v45 = sub_1DD0DD8EC();
      v46 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v56[0] = v48;
        *v47 = 136315650;
        v49 = sub_1DD0DEC3C();
        v51 = sub_1DCB10E9C(v49, v50, v56);

        *(v47 + 4) = v51;
        *(v47 + 12) = 2048;
        *(v47 + 14) = 446;
        *(v47 + 22) = 2080;
        *(v47 + 24) = sub_1DCB10E9C(0xD00000000000004CLL, 0x80000001DD1167C0, v56);
        _os_log_impl(&dword_1DCAFC000, v45, v46, "FatalError at %s:%lu - %s", v47, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v48, -1, -1);
        MEMORY[0x1E12A8390](v47, -1, -1);
      }

      (*(v42 + 8))(v54, v30);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000004CLL, 0x80000001DD1167C0);
  }

  __swift_storeEnumTagSinglePayload(v20, 0, 1, a4);
  (*(v21 + 32))(v25, v20, a4);
  v54(v25);
  return (*(v21 + 8))(v25, a4);
}

uint64_t sub_1DCB61A98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_1DCB61AE4(id result, void *a2, char a3, char a4)
{
  switch(a4)
  {
    case 0:
      sub_1DD0DCF8C();
    case 1:
    case 2:
      sub_1DD0DCF8C();
    case 3:
      v4 = a3 & 1;

      result = sub_1DCB79C24(result, a2, v4);
      break;
    case 4:

      result = result;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DCB61BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_20_10();
  a17 = v19;
  a18 = v20;
  v21 = v18;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &a9 - v37;
  OUTLINED_FUNCTION_136();
  v39 = swift_allocObject();
  v39[2] = v23;
  v39[3] = v21;
  v39[4] = v31;
  v39[5] = v29;
  v40 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v40);
  OUTLINED_FUNCTION_41_4();
  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = 0;
  v41[4] = v27;
  v41[5] = v25;
  v41[6] = &unk_1DD103658;
  v41[7] = v39;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB61CF8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_136();

  return swift_deallocObject();
}

uint64_t sub_1DCB61D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA54F0, &qword_1DD0F2090);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v20 - v15;
  (*(v12 + 16))(&v20 - v15, a1, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v17, v16, v11);
  (*(a7 + 72))(a3, a4, sub_1DCB74DDC, v18, v20, v21, a7);
}

id sub_1DCB61EDC(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7878]) init];
  v3 = [a1 typeName];
  v4 = sub_1DD0DDFBC();
  v6 = v5;

  sub_1DCB61FC8(v4, v6, v2);
  sub_1DCB3BE6C([a1 backingStore]);
  OUTLINED_FUNCTION_16_10();
  if (!v10 & v9)
  {
    v13 = 0;
  }

  else
  {
    v11 = v7;
    v12 = v8;
    v13 = sub_1DD0DAEFC();
    sub_1DCB2C520(v11, v12);
  }

  [v2 setData_];

  return v2;
}

uint64_t sub_1DCB61FD4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 72);

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCB620F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 248) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCB621E8()
{
  v5 = v0;
  v1 = v0[30];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[3];
  v0[32] = v0[2];
  v0[33] = v4;
  v0[34] = v0[4];
  sub_1DCB62570(v2);
}

void sub_1DCB62570(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v10 - v5;
  sub_1DD0DE48C();
  v7 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v9 = a1;
  sub_1DCBC61E8();
}

uint64_t sub_1DCB6265C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCB6269C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v4;
  *(v3 + 200) = *v4;
  v6 = sub_1DD0DD85C();
  *(v3 + 208) = v6;
  v7 = *(v6 - 8);
  *(v3 + 216) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = *a2;
  *(v3 + 248) = *(a2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DCB62798, 0, 0);
}

uint64_t sub_1DCB62798()
{
  v45 = v0;
  if ([*(v0 + 248) _requiresAuthentication])
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v1 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v1, qword_1EDE57E00);
    v2 = sub_1DD0DD8EC();
    v3 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v3))
    {
      v4 = OUTLINED_FUNCTION_50_0();
      *v4 = 0;
      OUTLINED_FUNCTION_43_16();
      _os_log_impl(v5, v6, v7, v8, v4, 2u);
      OUTLINED_FUNCTION_92_0();
    }

    v9 = *(v0 + 192);

    v10 = (v9 + *(*v9 + 128));
    v11 = v10[3];
    v12 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v11);
    if ((*(v12 + 8))(v11, v12) & 1) != 0 || (v13 = v10[3], v14 = v10[4], __swift_project_boxed_opaque_existential_1(v10, v13), ((*(v14 + 16))(v13, v14)))
    {
      v15 = sub_1DD0DD8EC();
      v16 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v16))
      {
        v17 = OUTLINED_FUNCTION_50_0();
        *v17 = 0;
        _os_log_impl(&dword_1DCAFC000, v15, v16, "HandleIntentFlow cannot request device unlock. Initiating Handoff", v17, 2u);
        OUTLINED_FUNCTION_92_0();
      }

      v18 = *(v0 + 192);
      v19 = *(v0 + 200);
      v20 = *(v0 + 184);

      type metadata accessor for HandoffSessionToCompanionFlowAsync();
      v21 = *(v19 + 80);
      v22 = *(v19 + 88);
      type metadata accessor for SiriKitHandleIntentFlow.StrategyToHandoffSessionToCompanionStrategyAdapter();
      *(v0 + 176) = sub_1DCC88710();
      sub_1DCB17D04(v10, v0 + 96);
      OUTLINED_FUNCTION_73_4();
      sub_1DCB17D04(v18 + *(v23 + 136), v0 + 136);
      HandoffSessionToCompanionFlowAsync.__allocating_init<A>(strategy:deviceState:outputPublisher:)();
      v42 = 0;
      v43 = 0uLL;
      v44 = 5;
      sub_1DCB79974(&v42);
    }

    v34 = *(v0 + 232);
    v36 = *(v0 + 192);
    v35 = *(v0 + 200);
    v41 = *(v0 + 184);
    OUTLINED_FUNCTION_73_4();
    v38 = *(v37 + 96);
    v42 = v34;
    v43 = *(v0 + 240);
    sub_1DCD7844C(&v42, *(v39 + 80), *(v39 + 88));
  }

  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5();
  }

  v24 = *(v0 + 248);
  v25 = *(v0 + 224);
  v26 = *(v0 + 192);
  v27 = sub_1DD0DD88C();
  v40 = *(v0 + 232);
  OUTLINED_FUNCTION_92(v27, qword_1EDE57DD0);
  v28 = swift_task_alloc();
  *(v0 + 256) = v28;
  *(v28 + 16) = v26;
  *(v28 + 24) = v40;
  *(v28 + 40) = v24;
  sub_1DD0DD84C();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 264) = v29;
  *v29 = v30;
  v29[1] = sub_1DCB7A1A0;
  v31 = *(v0 + 224);
  v32 = *(v0 + 184);
  OUTLINED_FUNCTION_68_10();

  return sub_1DCB62EFC();
}

uint64_t sub_1DCB62D4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_84_1()
{

  return sub_1DD0DEC3C();
}

uint64_t OUTLINED_FUNCTION_84_2()
{
  *v1 = v0;
  *(v1 + 8) = 257;
  return v1;
}

void OUTLINED_FUNCTION_84_3()
{
}

void OUTLINED_FUNCTION_84_6()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
}

void OUTLINED_FUNCTION_84_7()
{
  v2 = (v1 + v0);
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  v6 = v2[5];
}

uint64_t OUTLINED_FUNCTION_84_8()
{

  return sub_1DCE40E60(v1, v4, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_84_9@<X0>(char a1@<W8>)
{
  *(v1 + 184) = a1;

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_84_11()
{

  sub_1DCD1AC74();
}

void OUTLINED_FUNCTION_84_13()
{

  sub_1DCFE38DC(v0, v1);
}

uint64_t sub_1DCB62EFC()
{
  OUTLINED_FUNCTION_42();
  v8 = OUTLINED_FUNCTION_5_90(v1, v2, v3, v4, v5, v6, v7);
  v0[10] = v8;
  OUTLINED_FUNCTION_99(v8);
  v0[11] = v9;
  v11 = *(v10 + 64);
  v0[12] = OUTLINED_FUNCTION_38();
  v12 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1DCB62F98()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v2 = *(v0 + 72);
  v3 = sub_1DD0DD87C();
  sub_1DD0DE7FC();
  if (OUTLINED_FUNCTION_26_31())
  {
    OUTLINED_FUNCTION_21_41();
    if ((v4 & 1) == 0)
    {
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_17_39();
        v8 = OUTLINED_FUNCTION_25_26(v7);
        OUTLINED_FUNCTION_4_99(&dword_1DCAFC000, v9, v10, v8, v11, "");
        OUTLINED_FUNCTION_37();
        goto LABEL_9;
      }

      __break(1u);
    }

    if (HIDWORD(v1))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_11_59();
      if (v5)
      {
LABEL_14:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_20_29();
      if (!(!v5 & v6))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:

  v12 = OUTLINED_FUNCTION_1_109();
  v13(v12);
  v14 = sub_1DD0DD8CC();
  OUTLINED_FUNCTION_73_1(v14);
  v15 = OUTLINED_FUNCTION_13_64();
  OUTLINED_FUNCTION_0_105(v15);
  v16 = v3[1];
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_12_58(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_3_102(v18);
  OUTLINED_FUNCTION_152();

  v21(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_1DCB630E0()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCB63170(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCB63170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a5;
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_1DCB79F5C;

  return sub_1DCB63224(a1, (v5 + 2));
}

uint64_t sub_1DCB63224(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v4;
  *(v3 + 160) = *v4;
  v6 = sub_1DD0DD85C();
  *(v3 + 168) = v6;
  v7 = *(v6 - 8);
  *(v3 + 176) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = *a2;
  *(v3 + 216) = *(a2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DCB6332C, 0, 0);
}

uint64_t sub_1DCB6332C()
{
  v93 = v0;
  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5();
  }

  v1 = *(v0 + 192);
  v2 = sub_1DD0DD88C();
  __swift_project_value_buffer(v2, qword_1EDE57DD0);
  sub_1DD0DD84C();
  v3 = sub_1DD0DD87C();
  v4 = sub_1DD0DE7FC();
  if (sub_1DD0DE92C())
  {
    v5 = *(v0 + 192);
    v6 = OUTLINED_FUNCTION_50_0();
    *v6 = 0;
    v7 = sub_1DD0DD83C();
    _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v3, v4, v7, "ResponseRendering", "", v6, 2u);
    OUTLINED_FUNCTION_92_0();
  }

  v8 = *(v0 + 216);
  v9 = *(v0 + 184);
  v10 = *(v0 + 192);
  v11 = *(v0 + 168);
  v12 = *(v0 + 176);

  (*(v12 + 16))(v9, v10, v11);
  v13 = sub_1DD0DD8CC();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 224) = sub_1DD0DD8BC();
  (*(v12 + 8))(v10, v11);
  v16 = [v8 _intentResponseCode];
  switch(v16)
  {
    case 0uLL:
    case 1uLL:
    case 5uLL:
    case 7uLL:
    case 8uLL:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v18 = *(v0 + 208);
      v17 = *(v0 + 216);
      v19 = *(v0 + 200);
      v20 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v20, qword_1EDE57E00);
      sub_1DD0DCF8C();
    case 2uLL:
    case 6uLL:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v28 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v28, qword_1EDE57E00);
      v29 = sub_1DD0DD8EC();
      v30 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v30))
      {
        v31 = OUTLINED_FUNCTION_151();
        v32 = swift_slowAlloc();
        *&v90 = v32;
        *v31 = 136315138;
        if (v16 == 2)
        {
          v33 = 0x65756E69746E6F63;
        }

        else
        {
          v33 = 0xD000000000000019;
        }

        if (v16 == 2)
        {
          v34 = 0xED00007070416E49;
        }

        else
        {
          v34 = 0x80000001DD11BCF0;
        }

        v35 = sub_1DCB10E9C(v33, v34, &v90);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_1DCAFC000, v29, v30, "HandleIntentFlow Handle IntentResponse with type: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_62();
      }

      v36 = *(v0 + 152);
      v90 = *(v0 + 208);
      v91 = 0;
      v92 = 3;
      v37 = v90;
      sub_1DCB79974(&v90);
    case 3uLL:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v38 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v38, qword_1EDE57E00);
      sub_1DD0DD8EC();
      v39 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v39))
      {
        v40 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v40);
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v41, v42, "HandleIntentFlow Handle IntentResponse with type: inProgress");
        OUTLINED_FUNCTION_62();
      }

      OUTLINED_FUNCTION_78_9();
      v43 = &v8[*(*v8 + 136)];
      v45 = *(v43 + 3);
      v44 = *(v43 + 4);
      v46 = OUTLINED_FUNCTION_51_12(v43);
      *(v0 + 280) = v46;
      OUTLINED_FUNCTION_42_17(v46, v47, v48, v49, v50, v51, v52, v53, v54);
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 288) = v55;
      *v55 = v56;
      v55[1] = sub_1DCD78BD4;
      break;
    case 4uLL:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v57 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v57, qword_1EDE57E00);
      sub_1DD0DD8EC();
      v58 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v58))
      {
        v59 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v59);
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v60, v61, "HandleIntentFlow Handle IntentResponse with type: success");
        OUTLINED_FUNCTION_62();
      }

      OUTLINED_FUNCTION_78_9();
      v62 = &v8[*(*v8 + 136)];
      v64 = *(v62 + 3);
      v63 = *(v62 + 4);
      v65 = OUTLINED_FUNCTION_51_12(v62);
      *(v0 + 232) = v65;
      OUTLINED_FUNCTION_42_17(v65, v66, v67, v68, v69, v70, v71, v72, v73);
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 240) = v74;
      *v74 = v75;
      v74[1] = sub_1DCB645E0;
      break;
    default:

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v76 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v76, qword_1EDE57E00);
      v77 = sub_1DD0DD8EC();
      v78 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_75(v78))
      {
        OUTLINED_FUNCTION_151();
        v79 = OUTLINED_FUNCTION_52_0();
        *&v90 = v79;
        *v10 = 136315138;
        *(v0 + 136) = v16;
        type metadata accessor for INIntentResponseCode(0);
        v80 = sub_1DD0DE02C();
        v82 = sub_1DCB10E9C(v80, v81, &v90);

        *(v10 + 4) = v82;
        OUTLINED_FUNCTION_72_6(&dword_1DCAFC000, v77, v78, "HandleIntentFlow Handle IntentResponse received an unsupported response type: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v79);
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_92_0();
      }

      v84 = *(v0 + 152);
      v83 = *(v0 + 160);
      v85 = *(v0 + 144);
      v86 = *(v83 + 80);
      v87 = *(v83 + 88);
      type metadata accessor for SiriKitHandleIntentFlow.HandleIntentFlowError();
      OUTLINED_FUNCTION_4_59();
      swift_getWitnessTable();
      v88 = OUTLINED_FUNCTION_79_0();
      *(v89 + 8) = 0;
      *(v89 + 16) = 0;
      *v89 = v16;
      *(v89 + 24) = 0x80;
      v91 = 0;
      v90 = v88;
      v92 = 4;
      sub_1DCB79974(&v90);
  }

  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_77_5();

  return sub_1DCB63BBC(v21, v22, v23, v24, v25);
}

uint64_t sub_1DCB63BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[29] = a5;
  v6[30] = v5;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  return OUTLINED_FUNCTION_0_12(sub_1DCB63BDC);
}

uint64_t sub_1DCB63BDC()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  v0[31] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "SKFlow is deferring to output generating function");
    OUTLINED_FUNCTION_62();
  }

  v7 = v0[26];

  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[32] = v9;
  *v9 = v0;
  v9[1] = sub_1DCB64070;
  v10 = v0[27];

  return v12(v0 + 2);
}

uint64_t sub_1DCB63D48()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCB63DD8(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCB63DD8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v8 = *(*a2 + 96);
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a5;
  v9 = *(v7 + 88);
  v10 = *(v9 + 56);
  v11 = *(v7 + 80);
  v15 = (v10 + *v10);
  v12 = v10[1];
  v13 = swift_task_alloc();
  v5[5] = v13;
  *v13 = v5;
  v13[1] = sub_1DCB63F5C;

  return (v15)(a1, v5 + 2, v11, v9);
}

uint64_t sub_1DCB63F5C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DCB64070()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 256);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 264) = v0;

  if (v0)
  {
    v9 = sub_1DCE209DC;
  }

  else
  {
    v9 = sub_1DCB64170;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DCB64170()
{
  v21 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 200);
  sub_1DCAFF9E8((v0 + 16), v2);
  sub_1DCB17CA0(v2, v0 + 56);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_83();
    v20 = v6;
    *v5 = 136642819;
    sub_1DCB17CA0(v0 + 56, v0 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
    v7 = sub_1DD0DE02C();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    v10 = sub_1DCB10E9C(v7, v9, &v20);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1DCAFC000, v3, v4, "SKFlow is publishing output %{sensitive}s)", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  }

  v18 = (*(v0 + 232) + 8);
  v19 = (*v18 + **v18);
  v11 = (*v18)[1];
  v12 = swift_task_alloc();
  *(v0 + 272) = v12;
  *v12 = v0;
  v12[1] = sub_1DCB64D7C;
  v13 = *(v0 + 232);
  v14 = *(v0 + 240);
  v15 = *(v0 + 224);
  v16 = *(v0 + 200);

  return v19(v16, v15, v13);
}

void *sub_1DCB643AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DCB21038(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_1DCB643F4(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1DD0DDFBC();

  return v4;
}

uint64_t sub_1DCB64484(uint64_t a1)
{
  sub_1DCB17CA0(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  type metadata accessor for FlowOutput();
  v1 = swift_dynamicCast();
  if (v1)
  {
  }

  return v1;
}

uint64_t sub_1DCB64514()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  v1 = sub_1DD0DD8EC();
  v2 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v2))
  {
    v3 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v3);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v4, v5, "Output is empty. Nothing to do.");
    OUTLINED_FUNCTION_62();
  }

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCB645E0()
{
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v3;
  v5 = *(v2 + 240);
  *v4 = *v1;
  *(v3 + 248) = v0;

  v6 = *(v2 + 232);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCB64718()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  if (sub_1DCB651D0(v2))
  {
    LODWORD(v18) = *(v0 + 97);
    v3 = *(v0 + 96);
    v4 = *(v0 + 72);
    v17 = *(v0 + 64);
    v5 = *(v0 + 48);
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v8 = (*(v0 + 56) + *(**(v0 + 56) + 120));
    v9 = v8[4];
    v19 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    type metadata accessor for SiriKitEvent(0);
    *v4 = v3;
    v10 = [v6 typeName];
    v11 = sub_1DD0DDFBC();
    v13 = v12;

    *(v4 + 8) = v11;
    *(v4 + 16) = v13;
    *(v4 + 24) = v7;
    bzero((v4 + 32), 0x88uLL);
    *(v0 + 16) = v5;
    sub_1DD0DCF8C();
  }

  v14 = *(v0 + 72);

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_76();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCB649AC(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCB649C0(uint64_t *a1)
{
  v1 = *a1;
  if (a1[3])
  {
    type metadata accessor for CommandFailure();
    sub_1DCC7AE30();
    swift_allocError();
    *v2 = v1;
    sub_1DD0DCF8C();
  }

  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB64A8C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 56);
  (*(v0 + 48))(v0 + 16);
  sub_1DCB64AFC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCB64AFC(void *a1, uint64_t a2, void *a3, char a4)
{
  if ((a4 & 1) == 0)
  {

    v4 = vars8;
  }
}

uint64_t objectdestroy_156Tm()
{
  OUTLINED_FUNCTION_18_43();
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_96_4()
{

  return sub_1DCB41F98(v0);
}

void OUTLINED_FUNCTION_89_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_96_6(uint64_t a1)
{
  *(v1 + 32) = a1;

  sub_1DD0DCC3C();
}

void OUTLINED_FUNCTION_96_9()
{
  v4 = *(v3 - 144);
  *v0 = *(v3 - 136);
  *(v0 + 8) = v2;
  *(v0 + 16) = v1;
  *(v0 + 24) = v4;
}

uint64_t OUTLINED_FUNCTION_96_10()
{
  v3 = *(v0 + 280);
}

void OUTLINED_FUNCTION_96_11()
{
  v2 = *(v0 - 248);
  v3 = *(v0 - 264);

  sub_1DD0DCB0C();
}

uint64_t sub_1DCB64CF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCB64CDC();
}

uint64_t sub_1DCB64D7C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 272);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 280) = v0;

  if (v0)
  {
    v9 = sub_1DCE20B20;
  }

  else
  {
    v9 = sub_1DCB64E7C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DCB64E7C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 248);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "SKFlow output publication complete");
    OUTLINED_FUNCTION_62();
  }

  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t sub_1DCB64F14()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  *(v0 + 348) = 7;
  v3 = v1;
  v4 = [v2 _code];
  *(v0 + 349) = 47;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 256) = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_59_11(v5);

  return sub_1DCB64FD8(v0 + 96, (v0 + 348), v7, v8, v4, (v0 + 349));
}

uint64_t sub_1DCB64FD8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  *(v7 + 48) = a5;
  *(v7 + 56) = v6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 24) = a1;
  v10 = type metadata accessor for SiriKitEventPayload(0);
  *(v7 + 64) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 96) = *a2;
  *(v7 + 97) = *a6;

  return MEMORY[0x1EEE6DFA0](sub_1DCB64718, 0, 0);
}

uint64_t OUTLINED_FUNCTION_77_2(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 96);
  v4 = *(v2 + 72);
  return result;
}

__n128 OUTLINED_FUNCTION_77_4()
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *(v0 + 32) = result;
  *(v0 + 48) = v3;
  *(v0 + 64) = *(v1 + 64);
  return result;
}

double OUTLINED_FUNCTION_77_9(uint64_t a1)
{

  return sub_1DCB90D40(a1, 0xEA0000000000657ALL, v1);
}

double OUTLINED_FUNCTION_77_10()
{
  result = 0.0;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_77_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_77_15(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t sub_1DCB651D0(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_9(a1);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  OUTLINED_FUNCTION_16();
  (*(v7 + 16))(v6 - v5);
  type metadata accessor for RCHAdaptedEmptyOutput();
  v8 = swift_dynamicCast();
  if (v8)
  {
  }

  return v8 ^ 1u;
}

uint64_t sub_1DCB652A0()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *v0;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DCB22EC8;

  return sub_1DCB649AC(v3);
}

uint64_t sub_1DCB65494()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v4 = *(v3 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

void *OUTLINED_FUNCTION_73_5(void *a1)
{

  return memcpy(a1, v1, 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_73_9()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_73_12(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (a1 + a2);
  v6 = *v5;
  v7 = v5[1];
  *v5 = v3;
  v5[1] = v2;
  v8 = *(v5 + 16);
  *(v5 + 16) = 0;

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_73_13()
{
  v2 = *(v0 + 104);

  return sub_1DCB17CA0(v2, v0 + 16);
}

void OUTLINED_FUNCTION_73_14()
{
  sub_1DCFE38DC(v0, v2);
  v3 = *(v1 + 16);
}

uint64_t *OUTLINED_FUNCTION_73_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 48) = a3;
  *(v4 - 40) = a4;

  return __swift_allocate_boxed_opaque_existential_1Tm((v4 - 72));
}

uint64_t OUTLINED_FUNCTION_73_17(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_73_18()
{
  result = v0 + 1168;
  v2 = *(v0 + 304);
  return result;
}

uint64_t OUTLINED_FUNCTION_73_19@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 - 256) + a1 + 8);

  return sub_1DD0DED9C();
}

uint64_t sub_1DCB656F0(uint64_t a1, void (*a2)(void))
{
  sub_1DCB17CA0(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  a2(0);
  v3 = swift_dynamicCast();
  if (v3)
  {
  }

  return v3;
}

uint64_t RefreshableDeviceState.isPad.getter()
{
  sub_1DCB4E718(v5);
  OUTLINED_FUNCTION_4_38(v5);
  v1 = *(v0 + 56);
  v2 = OUTLINED_FUNCTION_7_1();
  v3(v2);
  return OUTLINED_FUNCTION_11_28(v5);
}

uint64_t RefreshableDeviceState.isXRDevice.getter()
{
  sub_1DCB4E718(v5);
  OUTLINED_FUNCTION_4_38(v5);
  v1 = *(v0 + 240);
  v2 = OUTLINED_FUNCTION_7_1();
  v3(v2);
  return OUTLINED_FUNCTION_11_28(v5);
}

uint64_t RefreshableDeviceState.isCarDNDMode.getter()
{
  sub_1DCB4E718(v5);
  OUTLINED_FUNCTION_4_38(v5);
  v1 = *(v0 + 72);
  v2 = OUTLINED_FUNCTION_7_1();
  v3(v2);
  return OUTLINED_FUNCTION_11_28(v5);
}

uint64_t RefreshableDeviceState.isSidekick.getter()
{
  sub_1DCB4E718(v5);
  OUTLINED_FUNCTION_4_38(v5);
  v1 = *(v0 + 224);
  v2 = OUTLINED_FUNCTION_7_1();
  v3(v2);
  return OUTLINED_FUNCTION_11_28(v5);
}

uint64_t RefreshableDeviceState.isAuthenticated(for:)(uint64_t a1)
{
  sub_1DCB4E718(v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 248))(a1, v2, v3);
  return OUTLINED_FUNCTION_11_28(v5);
}

void sub_1DCB65AE4()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_16();
  (*(v7 + 16))(v13 - v12);
  if ((*(v1 + 104))(v3, v1))
  {
    v14 = *v5;
    if ((*v5 & 4) == 0 || (v15 = OUTLINED_FUNCTION_51_30(), v16(v15), v17 = v32, v18 = v33, __swift_project_boxed_opaque_existential_1(v31, v32), v19 = (*(v18 + 16))(v17, v18), __swift_destroy_boxed_opaque_existential_1Tm(v31), (v19 & 1) == 0))
    {
      if ((v14 & 2) != 0)
      {
        v20 = OUTLINED_FUNCTION_51_30();
        v21(v20);
        __swift_project_boxed_opaque_existential_1(v31, v32);
        v22 = OUTLINED_FUNCTION_62_16();
        v24 = v23(v22);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        if (v24)
        {
          v25 = v5[5];
          __swift_project_boxed_opaque_existential_1(v5 + 1, v5[4]);
          v26 = OUTLINED_FUNCTION_62_16();
          v27(v26);
        }
      }
    }
  }

  v28 = *(v7 + 8);
  v29 = OUTLINED_FUNCTION_86();
  v30(v29);
  OUTLINED_FUNCTION_49();
}

uint64_t RefreshableDeviceState.isEyesFree.getter()
{
  sub_1DCB4E718(v5);
  OUTLINED_FUNCTION_4_38(v5);
  v1 = *(v0 + 112);
  v2 = OUTLINED_FUNCTION_7_1();
  v3(v2);
  return OUTLINED_FUNCTION_11_28(v5);
}

uint64_t RefreshableDeviceState.isVoiceTriggerEnabled.getter()
{
  sub_1DCB4E718(v5);
  OUTLINED_FUNCTION_4_38(v5);
  v1 = *(v0 + 120);
  v2 = OUTLINED_FUNCTION_7_1();
  v3(v2);
  return OUTLINED_FUNCTION_11_28(v5);
}

uint64_t RefreshableDeviceState.interactionType.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_18_17(a1);
  OUTLINED_FUNCTION_9_25(v6);
  v2 = *(v1 + 128);
  v3 = OUTLINED_FUNCTION_12_3();
  v4(v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_1DCB66024(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_1DCB4D8F4(a4, a5);
  sub_1DD0DE26C();
  sub_1DD0DE26C();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_18_33();
  }

  return v8 & 1;
}

uint64_t RefreshableDeviceState.inputOrigin.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_18_17(a1);
  OUTLINED_FUNCTION_9_25(v6);
  v2 = *(v1 + 136);
  v3 = OUTLINED_FUNCTION_12_3();
  v4(v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t DeviceState.userAssignedDeviceName.getter()
{
  if (qword_1EDE49020 != -1)
  {
    OUTLINED_FUNCTION_10_25();
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2900, &qword_1DD0E7ED0);
  sub_1DD0DE77C();
  return v1;
}

uint64_t sub_1DCB6622C@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EDE48290)
  {
    v2 = qword_1EDE48288;
    v3 = qword_1EDE48290;
LABEL_9:
    *a1 = v2;
    a1[1] = v3;
  }

  result = MGGetStringAnswer();
  if (result)
  {
    v5 = result;
    v2 = sub_1DD0DDFBC();
    v3 = v6;

    if (!qword_1EDE489E0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA42A0, &qword_1DD0EB720);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1DD0E07C0;
      *(v7 + 32) = @"UserAssignedDeviceName";
      v8 = @"UserAssignedDeviceName";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA42A8, &qword_1DD0EB728);
      v9 = sub_1DD0DE2DC();

      if (qword_1EDE49020 != -1)
      {
        OUTLINED_FUNCTION_10_25();
        swift_once();
      }

      v12[4] = sub_1DCCDF704;
      v12[5] = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1107296256;
      v12[2] = sub_1DCCDF718;
      v12[3] = &block_descriptor_4;
      v10 = _Block_copy(v12);
      v11 = MGRegisterForUpdates();
      _Block_release(v10);

      qword_1EDE489E0 = v11;
    }

    qword_1EDE48288 = v2;
    qword_1EDE48290 = v3;

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t RefreshableDeviceState.isHeadGestureRecognitionAvailable.getter()
{
  sub_1DCB4E718(v5);
  OUTLINED_FUNCTION_4_38(v5);
  v1 = *(v0 + 80);
  v2 = OUTLINED_FUNCTION_7_1();
  v3(v2);
  return OUTLINED_FUNCTION_11_28(v5);
}

uint64_t sub_1DCB6656C()
{
  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

void sub_1DCB665D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v19 - v15;
  v17 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  sub_1DCB17D04(a1, v20);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a6;
  v18[5] = a4;
  v18[6] = a5;
  sub_1DCAFF9E8(v20, (v18 + 7));
  v18[12] = a2;
  v18[13] = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB66710()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  __swift_destroy_boxed_opaque_existential_1Tm_0(v0 + 7);
  v3 = v0[13];

  return swift_deallocObject();
}

uint64_t AceServiceInvokerAsync.submit<A>(_:)()
{
  OUTLINED_FUNCTION_41();
  v4 = *(OUTLINED_FUNCTION_56_0(v0, v1, v2, v3) + 8);
  OUTLINED_FUNCTION_8();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_30_1(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_31_0(v9);
  v11 = OUTLINED_FUNCTION_96_5();

  return v12(v11);
}

void OUTLINED_FUNCTION_110_2(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = v3[6];
}

void OUTLINED_FUNCTION_110_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[51] = a4;
  v5[52] = a5;
  v5[49] = a2;
  v5[50] = a3;
  v5[48] = a1;

  sub_1DD0DCC3C();
}

id OUTLINED_FUNCTION_110_6()
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];

  return v0;
}

uint64_t OUTLINED_FUNCTION_110_7@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = a1[1];
  v3 = a1[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_110_8(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_1DCB66938()
{
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_95();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[6];
  v4 = v0[12];
  v5 = v0[13];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_11_0(v6);
  *v7 = v8;
  v7[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_107_0();

  return sub_1DCB66A78(v9, v10, v11, v12, v13, v14, v4, v5);
}

void OUTLINED_FUNCTION_121_2(uint64_t a1, ...)
{
  va_start(va, a1);

  sub_1DCBC546C(va, v4, v3, v1, v2);
}

void OUTLINED_FUNCTION_89_2()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = *(v2 + 32);
}

void OUTLINED_FUNCTION_121_4()
{
  v3 = *(v1 - 128);

  sub_1DD0221C4(v0);
}

uint64_t OUTLINED_FUNCTION_121_5()
{

  return sub_1DD0768E0(v0, v2 + v1);
}

uint64_t sub_1DCB66A78(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v22;
  v8[5] = a7;
  sub_1DCB66C54();
  v11 = sub_1DD0DF22C();
  v8[8] = v11;
  v12 = *(v11 - 8);
  v8[9] = v12;
  v13 = *(v12 + 64) + 15;
  v8[10] = swift_task_alloc();
  v14 = *(v22 - 8);
  v8[11] = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v8[12] = v16;
  v20 = (a4 + *a4);
  v17 = a4[1];
  v18 = swift_task_alloc();
  v8[13] = v18;
  *v18 = v8;
  v18[1] = sub_1DCB6DA78;

  return v20(v16, a6);
}

unint64_t sub_1DCB66C54()
{
  result = qword_1EDE48E40[0];
  if (!qword_1EDE48E40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE48E40);
  }

  return result;
}

uint64_t sub_1DCB66CA8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_14_11(v4);

  return sub_1DCB66D38(v6, v7, v8, v9);
}

uint64_t sub_1DCB66D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCB66D5C, 0, 0);
}

uint64_t sub_1DCB66D5C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_70_1(*(v0 + 24));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_140(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_43_4(v2);

  return AceServiceInvokerAsync.submit<A>(_:)();
}

void OUTLINED_FUNCTION_135_1()
{
  v3 = (v1 + *(v2 + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v0 + 3896);
}

double sub_1DCB66E20@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  sub_1DCB28B08(v1 + 112, &v10, &qword_1ECCA54E8, &unk_1DD0F2080);
  if (v11)
  {
    sub_1DCB18FF0(&v10, a1);
  }

  else
  {
    sub_1DCB16D50(&v10, &qword_1ECCA54E8, &unk_1DD0F2080);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v4 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v4, qword_1EDE57E00);
    v5 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6EC();
    v7 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_5_109();
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DCAFC000, v5, v6, "Siri suggestions (async) has not been initialized in time. Ensure that setInstance (async) has been called by the runtime prior to getting any client instance", v9, 2u);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DCB66F7C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  OUTLINED_FUNCTION_77_3();
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v8[1] = sub_1DCB4AE1C;

  return sub_1DCB67054(v2, v0 + v6, v3, v4);
}

uint64_t sub_1DCB67054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 40);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1DCB4AE1C;

  return v12(a1, a3, a4);
}

void SiriCorrectionsClientProvider.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_5_105(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12, v13, v14, v15, v16, v17, v18, v19);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4C8, &qword_1DD105AC0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1DD0DCE9C();
}

void SiriEnvironment.correctionsClientProvider.setter()
{
  type metadata accessor for SiriCorrectionsClientProvider();
  OUTLINED_FUNCTION_0_115(&qword_1EDE4B5E0);
  OUTLINED_FUNCTION_20();

  sub_1DD0DCA8C();
}

uint64_t sub_1DCB672F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriCorrectionsClientProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void SiriEnvironment.correctionsClientProvider.getter()
{
  type metadata accessor for SiriCorrectionsClientProvider();
  OUTLINED_FUNCTION_0_115(&qword_1EDE4B5E0);

  sub_1DD0DCA7C();
}

uint64_t sub_1DCB673A4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SiriCorrectionsClientProvider();
  result = sub_1DD0DDAFC();
  *a1 = result;
  return result;
}

uint64_t dispatch thunk of ResponseFactory.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_50_1();
  v1 = *(v0 + 112);
  v15 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_29_2(v4);
  OUTLINED_FUNCTION_150();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DCB67618@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = *a3;
  *a4 = *a2;
  a4[1] = v7;
}

void OutputGenerationManifest.init(dialogPhase:_:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v33 = sub_1DD0DB04C();
  v4 = OUTLINED_FUNCTION_9(v33);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  OUTLINED_FUNCTION_13_49();
  v31 = a1[1];
  v32 = *a1;
  v8 = type metadata accessor for OutputGenerationManifest();
  *(a2 + v8[6]) = 0;
  *(a2 + v8[7]) = 0;
  v30 = v8[8];
  *(a2 + v8[9]) = 256;
  v9 = v8[10];
  *(a2 + v8[11]) = 0;
  v10 = v8[12];
  v11 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  v15 = v8[13];
  v16 = (a2 + v8[14]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a2 + v8[15]);
  *v17 = 0;
  v17[1] = 0;
  *(a2 + v8[16]) = 0;
  *(a2 + v8[18]) = 0;
  v18 = a2 + v8[19];
  *v18 = 0;
  *(v18 + 4) = 512;
  *(a2 + v8[20]) = 0;
  *(a2 + v8[21]) = 0;
  *(a2 + v8[22]) = 0;
  *(a2 + v8[23]) = 0;
  *(a2 + v8[24]) = 0;
  *(a2 + v8[25]) = 0;
  v19 = (a2 + v8[26]);
  *v19 = 0;
  v19[1] = 0;
  *(a2 + v8[27]) = 0;
  *(a2 + v8[28]) = MEMORY[0x1E69E7CC0];
  v20 = v8[29];
  v21 = *MEMORY[0x1E69D0678];
  v22 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3(v22);
  (*(v23 + 104))(a2 + v20, v21);
  v24 = v8[30];
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  *(a2 + v8[31]) = 2;
  *a2 = v32;
  a2[1] = v31;
  v29 = a2 + v8[5];
  sub_1DCB67914();
}

void sub_1DCB67914()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1818, &qword_1DD0E0F80);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  sub_1DD0DCA6C();
}

uint64_t OutputGenerationManifest.canUseServerTTS.setter()
{
  result = OUTLINED_FUNCTION_5_73();
  *(v1 + *(result + 40)) = v0;
  return result;
}

uint64_t OutputGenerationManifest.listenAfterSpeaking.setter()
{
  result = OUTLINED_FUNCTION_5_73();
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t RefreshableDeviceState.isDirectAction.getter()
{
  sub_1DCB4E718(v5);
  OUTLINED_FUNCTION_4_38(v5);
  v1 = *(v0 + 88);
  v2 = OUTLINED_FUNCTION_7_1();
  v3(v2);
  return OUTLINED_FUNCTION_11_28(v5);
}

uint64_t sub_1DCB67B88()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCB67C88()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[2];
  v2 = v0[3];
  v0[12] = v1;
  v0[13] = v2;
  v0[4] = v1;
  v0[5] = v2;
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1DCB6BE28;
  v5 = v0[7];
  v4 = v0[8];

  return sub_1DCB67D30();
}

uint64_t sub_1DCB67D30()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  v5 = type metadata accessor for OutputGenerationManifest();
  *(v0 + 32) = v5;
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_38();
  *(v0 + 48) = *v2;
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1DCB67DB8()
{
  v61 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[5];
  v2 = v0[3];
  v3 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v3, qword_1EDE57E00);
  sub_1DCB68600(v2, v1);
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  v59 = v0;
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_151();
    v60[0] = OUTLINED_FUNCTION_83();
    *v8 = 136315138;
    OutputGenerationManifest.description.getter();
  }

  sub_1DCB6970C(v7);
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[7];
  v57 = *(v9 + v10[8]);
  v58 = *(v9 + v10[10]);
  v12 = v9[1];
  v60[0] = *v9;
  v60[1] = v12;
  v13 = (v9 + v10[14]);
  v55 = v13[1];
  v56 = *v13;
  v14 = *(v9 + v10[20]);
  v15 = *(v9 + v10[22]);
  if (v11)
  {
    v16 = v0[6];
    v17 = v16;
  }

  else
  {
    v16 = 0;
  }

  v18 = v0[2];
  v19 = (v9 + v10[17]);
  v20 = *v19;
  v21 = v19[1];
  v22 = (v9 + v10[26]);
  v23 = *v22;
  v24 = v22[1];

  v25 = OutputGenerationManifest.getRequestEndBehavior()();
  v26 = sub_1DCB6981C(v58, v57, v60, v56, v55, v14, v15, v16, v20, v21, v23, v24, v25);

  v27 = sub_1DCB6BDAC(v26);
  if (!v27)
  {
    __break(1u);
LABEL_24:

    __break(1u);
    goto LABEL_25;
  }

  v28 = sub_1DCB08B14(v27);

  v29 = v59;
  if (!v28)
  {
    v30 = v59[2];
    v31 = sub_1DD0DD8EC();
    v32 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = v59[2];
      v34 = OUTLINED_FUNCTION_151();
      v35 = OUTLINED_FUNCTION_83();
      v60[0] = v35;
      *v34 = 136315138;
      v36 = [v33 patternId];
      v37 = sub_1DD0DDFBC();
      v39 = v38;

      v40 = sub_1DCB10E9C(v37, v39, v60);
      v29 = v59;

      *(v34 + 4) = v40;
      _os_log_impl(&dword_1DCAFC000, v31, v32, "ResponseFactory: Pattern '%s' generated an AddViews with no views. If this is not expected check CAT execution to ensure it was successful. Sending downstream anyway for logging, testing, etc.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }
  }

  v26 = v26;
  v41 = sub_1DD0DD8EC();
  v42 = sub_1DD0DE6DC();
  if (!OUTLINED_FUNCTION_75(v42))
  {

    goto LABEL_20;
  }

  v43 = swift_slowAlloc();
  v60[0] = swift_slowAlloc();
  *v43 = 136315906;
  v44 = sub_1DCB6BE1C(v26);
  if (!v45)
  {
    goto LABEL_24;
  }

  sub_1DCB10E9C(v44, v45, v60);
  OUTLINED_FUNCTION_74_19();
  *(v43 + 4) = v29;
  *(v43 + 12) = 2048;
  v46 = sub_1DCB6BDAC(v26);
  if (!v46)
  {
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  sub_1DCB08B14(v46);
  OUTLINED_FUNCTION_74_19();

  *(v43 + 14) = v29;
  *(v43 + 22) = 2080;
  v47 = sub_1DCB35468(v26, &selRef_patternId);
  v49 = v48;

  if (!v49)
  {
LABEL_26:

    __break(1u);
    goto LABEL_27;
  }

  sub_1DCB10E9C(v47, v49, v60);
  OUTLINED_FUNCTION_74_19();
  *(v43 + 24) = v29;
  *(v43 + 32) = 2080;
  v50 = sub_1DCB35468(v26, &selRef_patternType);
  v52 = v51;

  if (!v52)
  {
LABEL_27:
    __break(1u);
    return;
  }

  sub_1DCB10E9C(v50, v52, v60);
  OUTLINED_FUNCTION_74_19();
  *(v43 + 34) = v29;
  _os_log_impl(&dword_1DCAFC000, v41, v42, "ResponseFactory: Built SAUIAddViews aceId=%s views.count=%ld patternId=%s patternType=%s", v43, 0x2Au);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_80();

  v29 = v59;
LABEL_20:
  v53 = v29[5];

  v54 = v29[1];

  v54(v26);
}

uint64_t OUTLINED_FUNCTION_146()
{

  return sub_1DD0DD8FC();
}

void OUTLINED_FUNCTION_146_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = *(a30 + 800);

  sub_1DD0DCF8C();
}

uint64_t sub_1DCB68330()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v0[8] = v3;
  v0[9] = v1;
  v0[7] = v5;
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1DCB6C344;

  return sub_1DCB683D8(v4, v2);
}

uint64_t sub_1DCB683D8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3[8] = a2;
  v3[9] = v4;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t storeEnumTagSinglePayload for DialogPhase(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DCB6845C()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  v3 = *(*v1 + 216);
  v8 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_1DCFF2790;
  }

  else
  {
    v5 = *(v2 + 192);
    v6 = *(v2 + 176);

    swift_bridgeObjectRelease_n();
    v4 = sub_1DCB68584;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DCB68584()
{
  OUTLINED_FUNCTION_42();
  (*(v0[18] + 8))(v0[19], v0[17]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_5_114();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCB68600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OutputGenerationManifest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void initializeWithCopy for OutputGenerationManifest(void *a1, void *a2, uint64_t a3)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = *(a3 + 20);
  sub_1DD0DCC3C();
}

void OutputGenerationManifest.description.getter()
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEC0, &qword_1DD103A40);
  v1 = OUTLINED_FUNCTION_2(v12);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v11[2] = v11 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1DD0DEC1C();
  OUTLINED_FUNCTION_15_48();
  MEMORY[0x1E12A6780](0x676F6C616964203ALL, 0xEE003D6573616850);
  v9 = v0[1];
  v13 = *v0;
  v14 = v9;
  sub_1DD0DEDBC();
  MEMORY[0x1E12A6780](0x736E6F7073657220, 0xEE003D65646F4D65);
  v10 = v0 + *(type metadata accessor for OutputGenerationManifest() + 20);
  sub_1DD0DCC1C();
}

void *sub_1DCB69698(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

unint64_t sub_1DCB696C8()
{
  result = qword_1EDE460A0;
  if (!qword_1EDE460A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE460A0);
  }

  return result;
}

uint64_t sub_1DCB6970C(uint64_t a1)
{
  v2 = type metadata accessor for OutputGenerationManifest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id OutputGenerationManifest.getRequestEndBehavior()()
{
  v1 = 0;
  v2 = (v0 + *(type metadata accessor for OutputGenerationManifest() + 76));
  v3 = *(v2 + 4);
  if ((v3 & 0xFF00) != 0x200)
  {
    v4 = *v2;
    v1 = [objc_allocWithZone(MEMORY[0x1E69C7B98]) init];
    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = sub_1DD0DE5BC();
    }

    [v1 setMinimumAutoDismissalTimeInMs_];

    [v1 setPremptivelyResumeMedia_];
  }

  return v1;
}

id sub_1DCB6981C(int a1, int a2, uint64_t a3, uint64_t a4, uint8_t *a5, int a6, int a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v195 = a8;
  LODWORD(v14) = a7;
  LODWORD(v15) = a6;
  v203 = a5;
  v192 = a4;
  v193 = a2;
  v206 = a1;
  v17 = sub_1DD0DB04C();
  v201 = *(v17 - 8);
  v202 = v17;
  v18 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v17, v19);
  v200 = v188 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a3;
  v22 = *(a3 + 8);
  if (qword_1EDE4F900 != -1)
  {
LABEL_83:
    swift_once();
  }

  v198 = v21;
  v188[1] = a11;
  v191 = a10;
  v190 = a9;
  v23 = sub_1DD0DD8FC();
  v24 = __swift_project_value_buffer(v23, qword_1EDE57E00);
  v25 = v13;
  v204 = v24;
  v26 = sub_1DD0DD8EC();
  v27 = sub_1DD0DE6DC();
  v28 = os_log_type_enabled(v26, v27);
  v21 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
  v207 = v25;
  v199 = v15;
  v197 = v22;
  v194 = v14;
  if (v28)
  {
    v29 = swift_slowAlloc();
    *v29 = 134218240;
    v30 = sub_1DCB6A848(v25);
    if (v31 >> 60 == 15)
    {
      v32 = 0;
    }

    else
    {
      v33 = v30;
      v34 = v31;
      v32 = MEMORY[0x1E12A3590]();
      sub_1DCB2C520(v33, v34);
    }

    *(v29 + 4) = v32;
    v25 = v207;

    *(v29 + 12) = 2048;
    v35 = [v25 dialog];
    sub_1DCB10E5C(0, &qword_1EDE46168, 0x1E699A0C0);
    v36 = sub_1DD0DE2EC();

    v37 = sub_1DCB08B14(v36);

    *(v29 + 14) = v37;

    _os_log_impl(&dword_1DCAFC000, v26, v27, "ResponseFactory: Building AddViews with %ld visual bytes and %ld dialogs", v29, 0x16u);
    OUTLINED_FUNCTION_80();
  }

  else
  {

    v26 = v25;
  }

  v196 = a13;
  v189 = a12;

  v38 = MEMORY[0x1E69E7CC0];
  v209 = MEMORY[0x1E69E7CC0];
  v39 = [v25 dialog];
  sub_1DCB10E5C(0, &qword_1EDE46168, 0x1E699A0C0);
  v40 = sub_1DD0DE2EC();

  v205 = v38;
  v208[0] = v38;
  v22 = sub_1DCB08B14(v40);
  v14 = 0;
  v41 = v40 & 0xC000000000000001;
  while (v22 != v14)
  {
    sub_1DCB35460(v14, v41 == 0, v40);
    if (v41)
    {
      v42 = MEMORY[0x1E12A72C0](v14, v40);
    }

    else
    {
      v42 = *(v40 + 8 * v14 + 32);
    }

    v13 = v42;
    v43 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_83;
    }

    v44 = [v207 meta];
    v21 = sub_1DD0DDE6C();

    v45 = sub_1DCB6B180(0x79726F6765746163, 0xE800000000000000, v21);
    v15 = v46;

    v47 = sub_1DCB6B1C8(v206 & 1, 0, v45, v15);

    ++v14;
    if (v47)
    {
      MEMORY[0x1E12A6920](v48);
      if (*((v208[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v208[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD0DE33C();
      }

      sub_1DD0DE3AC();
      v205 = v208[0];
      v14 = v43;
    }
  }

  v49 = v207;
  v50 = sub_1DCB6A848(v207);
  if (v51 >> 60 != 15)
  {
    if (!sub_1DCB6A8AC(v50, v51))
    {
      v64 = sub_1DD0DD8EC();
      v65 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_22(v65))
      {
        v66 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v66);
        OUTLINED_FUNCTION_9_3();
        _os_log_impl(v67, v68, v69, v70, v71, 2u);
        OUTLINED_FUNCTION_62();
      }

      v72 = [v49 visualInfo];
      v73 = [v72 visualLocation];

      v74 = sub_1DCB6A910(v73);
      v76 = v75;

      v77 = sub_1DD0DD8EC();
      v78 = sub_1DD0DE6DC();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v208[0] = v80;
        *v79 = 136315138;
        *(v79 + 4) = sub_1DCB10E9C(v74, v76, v208);
        _os_log_impl(&dword_1DCAFC000, v77, v78, "ResponseFactory: VisualLocation is set to %s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_62();
      }

      v81 = v191;
      v82 = [objc_allocWithZone(MEMORY[0x1E69C7BF0]) init];
      v83 = v200;
      sub_1DD0DB03C();
      v84 = sub_1DD0DAFFC();
      v86 = v85;
      (*(v201 + 8))(v83, v202);
      sub_1DCB4D8E8(v84, v86, v82);
      v62 = v82;
      sub_1DCB6B9B8(v190, v81, v62);
      sub_1DCB2C534(v74, v76, v62, &selRef_setItemType_);
      v87 = OUTLINED_FUNCTION_68_1();
      sub_1DCB6BA10(v87, v88, v62);
      if (v189)
      {
        v89 = [objc_allocWithZone(MEMORY[0x1E69C7BA8]) init];
        v90 = sub_1DD0DDF8C();
        [v89 setApplicationBundleIdentifier_];

        v91 = v89;
        [v62 setSash_];
        v92 = OUTLINED_FUNCTION_68_1();
        sub_1DCB2C520(v92, v93);
      }

      else
      {

        v94 = OUTLINED_FUNCTION_68_1();
        sub_1DCB2C520(v94, v95);
      }

      v49 = v207;
      v63 = v199;
      if ((v193 & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_33;
    }

    v52 = OUTLINED_FUNCTION_68_1();
    sub_1DCB2C520(v52, v53);
  }

  v54 = sub_1DD0DD8EC();
  v55 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_22(v55))
  {
    v56 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v56);
    OUTLINED_FUNCTION_9_3();
    _os_log_impl(v57, v58, v59, v60, v61, 2u);
    OUTLINED_FUNCTION_62();
  }

  v62 = 0;
  v63 = v199;
  if ((v193 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_33:
  v96 = sub_1DD0DD8EC();
  v97 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_22(v97))
  {
    v98 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v98);
    OUTLINED_FUNCTION_9_3();
    _os_log_impl(v99, v100, v101, v102, v103, 2u);
    OUTLINED_FUNCTION_62();
  }

  v104 = v205;
  if (sub_1DCB08B14(v205))
  {
    v105 = sub_1DCB6BA68(v104);
    if (!v105)
    {
      goto LABEL_45;
    }

    v106 = v105;
    sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
    v107 = sub_1DD0DE8CC();
    [v106 setListenAfterSpeaking_];
  }

  else
  {
    v108 = sub_1DD0DD8EC();
    v109 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_22(v109))
    {
      v110 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v110);
      OUTLINED_FUNCTION_9_3();
      _os_log_impl(v111, v112, v113, v114, v115, 2u);
      OUTLINED_FUNCTION_62();
    }

    if (v62)
    {
      sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
      v116 = v62;
      v107 = sub_1DD0DE8CC();
      [v116 setListenAfterSpeaking_];
    }

    else
    {
      v107 = sub_1DD0DD8EC();
      v117 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_22(v117))
      {
        v118 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v118);
        OUTLINED_FUNCTION_9_3();
        _os_log_impl(v119, v120, v121, v122, v123, 2u);
        OUTLINED_FUNCTION_62();
      }
    }
  }

LABEL_45:
  v124 = v205;

  v125 = sub_1DD0DD8EC();
  v126 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_22(v126))
  {
    v127 = swift_slowAlloc();
    *v127 = 134217984;
    *(v127 + 4) = sub_1DCB08B14(v124);

    OUTLINED_FUNCTION_9_3();
    _os_log_impl(v128, v129, v130, v131, v132, 0xCu);
    OUTLINED_FUNCTION_62();
  }

  else
  {
  }

  v133 = v203;
  if (v124 >> 62)
  {
    sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);

    v134 = sub_1DD0DEE0C();
  }

  else
  {

    sub_1DD0DF0CC();
    sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);
    v134 = v124;
  }

  sub_1DCB673E0(v134);
  if (v62)
  {
    v135 = v62;
    MEMORY[0x1E12A6920]();
    if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DD0DE33C();
    }

    sub_1DD0DE3AC();
  }

  if (!v133)
  {
    v145 = sub_1DD0DD8EC();
    v146 = sub_1DD0DE6DC();
    v147 = OUTLINED_FUNCTION_22(v146);
    v148 = v198;
    if (v147)
    {
      v149 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v149);
      OUTLINED_FUNCTION_9_3();
      _os_log_impl(v150, v151, v152, v153, v154, 2u);
      OUTLINED_FUNCTION_62();
    }

    goto LABEL_69;
  }

  v136 = sub_1DD0DD8EC();
  v137 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    v208[0] = swift_slowAlloc();
    *v138 = 136315394;
    *(v138 + 4) = sub_1DCB10E9C(v192, v133, v208);
    *(v138 + 12) = 2080;
    swift_beginAccess();
    v139 = v209;
    if (sub_1DCB08B14(v209))
    {
      sub_1DCB35460(0, (v139 & 0xC000000000000001) == 0, v139);
      if ((v139 & 0xC000000000000001) != 0)
      {

        v140 = MEMORY[0x1E12A72C0](0, v139);
      }

      else
      {
        v140 = *(v139 + 32);
      }

      v141 = [v140 description];

      v142 = sub_1DD0DDFBC();
      v144 = v143;
    }

    else
    {
      v144 = 0xE500000000000000;
      v142 = 0x3E6C696E3CLL;
    }

    v155 = sub_1DCB10E9C(v142, v144, v208);

    *(v138 + 14) = v155;
    _os_log_impl(&dword_1DCAFC000, v136, v137, "ResponseFactory: Setting correspondingSessionID to %s on view %s", v138, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();

    v49 = v207;
    v133 = v203;
  }

  else
  {
  }

  swift_beginAccess();
  v156 = v209;
  v157 = sub_1DCB08B14(v209);
  v148 = v198;
  if (v157)
  {
    sub_1DCB35460(0, (v156 & 0xC000000000000001) == 0, v156);
    if ((v156 & 0xC000000000000001) != 0)
    {

      v145 = MEMORY[0x1E12A72C0](0, v156);
    }

    else
    {
      v145 = *(v156 + 32);
    }

    sub_1DCF7766C(v192, v133, v145);
LABEL_69:
  }

  swift_beginAccess();
  v158 = v209;
  if (sub_1DCB08B14(v209))
  {
    sub_1DCB35460(0, (v158 & 0xC000000000000001) == 0, v158);
    if ((v158 & 0xC000000000000001) != 0)
    {

      v159 = MEMORY[0x1E12A72C0](0, v158);
    }

    else
    {
      v159 = *(v158 + 32);
    }
  }

  else
  {
    v159 = 0;
  }

  [v159 setPreserveResultSpaceIfPossible_];

  if (v195)
  {
    v160 = v195;
    v161 = sub_1DD0DD8EC();
    v162 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v161, v162))
    {
      v163 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v163);
      _os_log_impl(&dword_1DCAFC000, v161, v162, "ResponseFactory v1.0: Adding a suggestion Space Snippet to Response.", v133, 2u);
      OUTLINED_FUNCTION_62();
    }

    v164 = swift_beginAccess();
    MEMORY[0x1E12A6920](v164);
    sub_1DCBBF95C(*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1DD0DE3AC();
    swift_endAccess();
  }

  v165 = [objc_allocWithZone(MEMORY[0x1E69C7AF8]) init];
  v166 = v200;
  sub_1DD0DB03C();
  v167 = sub_1DD0DAFFC();
  v169 = v168;
  (*(v201 + 8))(v166, v202);
  sub_1DCB4D8E8(v167, v169, v165);

  sub_1DCB6BB04(v148, v197, v165);
  v170 = [v49 patternId];
  sub_1DD0DDFBC();

  v171 = OUTLINED_FUNCTION_5_76();
  sub_1DCB2C534(v171, v172, v173, v174);
  v175 = [objc_opt_self() patternNameFromType_];
  sub_1DD0DDFBC();

  v176 = OUTLINED_FUNCTION_5_76();
  sub_1DCB2C534(v176, v177, v178, v179);
  v180 = [v49 responseMode];
  sub_1DD0DDFBC();

  v181 = OUTLINED_FUNCTION_5_76();
  sub_1DCB6BB5C(v181, v182, v183);

  sub_1DCB6BBC0(v184, v165);
  [v165 setImmersiveExperience_];
  v185 = sub_1DCB6BC44(MEMORY[0x1E69E7CC0]);
  sub_1DCB6BD3C(v185, v165);
  if (v196)
  {
    v186 = v196;
    [v165 setRequestEndBehavior_];
  }

  else
  {
  }

  return v165;
}

uint64_t sub_1DCB6A848(void *a1)
{
  v1 = [a1 visual];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DAF2C();

  return v3;
}

BOOL sub_1DCB6A8AC(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_1DCB6A910(uint64_t a1)
{
  v1 = MEMORY[0x1E69C7C48];
  v2 = MEMORY[0x1E69C7C58];
  if (a1)
  {
    v2 = MEMORY[0x1E69C7C68];
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  v3 = *v1;
  return sub_1DD0DDFBC();
}

uint64_t sub_1DCB6A940()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[7];
  v0[6] = MEMORY[0x1E69E7CC0];
  v2 = [v1 patternId];
  sub_1DD0DDFBC();
  v4 = v3;

  v0[10] = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[11] = v5;
  *v5 = v6;
  v5[1] = sub_1DCB67B88;
  v7 = v0[8];
  OUTLINED_FUNCTION_60_17();

  return sub_1DCB6AA14();
}

uint64_t sub_1DCB6AA14()
{
  OUTLINED_FUNCTION_42();
  v0[14] = v1;
  v0[15] = v2;
  v0[12] = v3;
  v0[13] = v4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50) - 8) + 64) + 15;
  v0[16] = swift_task_alloc();
  v6 = sub_1DD0DB04C();
  v0[17] = v6;
  v7 = *(v6 - 8);
  v0[18] = v7;
  v8 = *(v7 + 64) + 15;
  v0[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCB6AB0C, 0, 0);
}

void sub_1DCB6AB0C()
{
  v1 = *(v0 + 104);
  v2 = type metadata accessor for OutputGenerationManifest();
  *(v0 + 160) = v2;
  v3 = *(v1 + *(v2 + 52));
  if (v3)
  {
    v4 = sub_1DCB08B14(v3) != 0;
  }

  else
  {
    v4 = 0;
  }

  *(v0 + 232) = v4;
  if (*(v0 + 120))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 112);
    v7 = *(v0 + 120);
  }

  else
  {
    v5 = *(v0 + 104);
    v8 = (v5 + *(v2 + 60));
    v6 = *v8;
    v7 = v8[1];
  }

  *(v0 + 168) = v6;
  *(v0 + 176) = v7;
  *(v0 + 184) = *v5;
  *(v0 + 192) = v5[1];
  sub_1DD0DCA6C();
}

uint64_t sub_1DCB6AE64()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 208);
  sub_1DCB66E20(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DCB6AECC, 0, 0);
}

uint64_t sub_1DCB6AECC()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v3 = *(v0 + 184);
    v2 = *(v0 + 192);
    v4 = *(v0 + 168);
    v22 = *(v0 + 176);
    v5 = *(v0 + 232);
    v6 = *(v0 + 160);
    v7 = *(v0 + 104);
    v8 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    v9 = (v7 + *(v6 + 56));
    v10 = *v9;
    v11 = v9[1];
    *(v0 + 56) = v3;
    *(v0 + 64) = v2;
    *(v0 + 72) = v5;
    *(v0 + 80) = v4;
    *(v0 + 88) = v22;
    v12 = *(v8 + 40);
    v23 = v12 + *v12;
    v13 = v12[1];
    v14 = swift_task_alloc();
    *(v0 + 216) = v14;
    *v14 = v0;
    v14[1] = sub_1DCB6845C;
    v15 = *(v0 + 152);
    v16 = *(v0 + 96);

    __asm { BRAA            X8, X16 }
  }

  v17 = *(v0 + 192);
  v18 = *(v0 + 176);
  v19 = *(v0 + 96);
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  swift_bridgeObjectRelease_n();

  sub_1DCB16D50(v0 + 16, &qword_1ECCA54E8, &unk_1DD0F2080);
  *v19 = 0;
  v19[1] = 0;
  OUTLINED_FUNCTION_5_114();

  OUTLINED_FUNCTION_29();

  return v20();
}

uint64_t SuggestionContextData.patternId.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t SuggestionContextData.dialogPhase.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1DCB6B180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DCB21038(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_11(v4);
  return v3;
}

id sub_1DCB6B1C8(int a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v63[1] = a3;
  v67 = a2;
  v68 = a1;
  v7 = sub_1DD0DB04C();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v64 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x1E69C7B08]) init];
  v12 = [v4 fullSpeak];
  sub_1DD0DDFBC();

  v13 = [v4 supportingSpeak];
  sub_1DD0DDFBC();

  OUTLINED_FUNCTION_2_76();
  v15 = v14;

  if (v15)
  {
    v16 = sub_1DD0DDF8C();
  }

  else
  {
    v16 = 0;
  }

  [v11 setSpeakableText_];

  v17 = [v5 fullPrint];
  sub_1DD0DDFBC();

  v18 = [v5 supportingPrint];
  sub_1DD0DDFBC();

  OUTLINED_FUNCTION_2_76();
  v20 = v19;

  if (v20)
  {
    v21 = sub_1DD0DDF8C();
  }

  else
  {
    v21 = 0;
  }

  [v11 setText_];

  sub_1DCB696C8();
  v22 = [v5 printOnly];
  v23 = sub_1DD0DE8CC();
  v24 = sub_1DD0DE8EC();

  if (v24)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v25 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v25, qword_1EDE57E00);
    v26 = sub_1DD0DD8EC();
    v27 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v26, v27))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v28, v29, "ResponseFactory: The printOnly flag is set to 1. Removing speakable text.");
      OUTLINED_FUNCTION_80();
    }

    [v11 setSpeakableText_];
  }

  v30 = [v5 spokenOnly];
  v31 = sub_1DD0DE8CC();
  v32 = sub_1DD0DE8EC();

  if (v32)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v33 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v33, qword_1EDE57E00);
    v34 = sub_1DD0DD8EC();
    v35 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v34, v35))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v36, v37, "ResponseFactory: The spokenOnly flag is set to 1. Removing printed text.");
      OUTLINED_FUNCTION_80();
    }

    [v11 setText_];
  }

  if (sub_1DCB6B8AC())
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v38 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v38, qword_1EDE57E00);
    v39 = v5;
    v40 = sub_1DD0DD8EC();
    v41 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v63[0] = swift_slowAlloc();
      v69 = v63[0];
      *v42 = 136315138;
      v43 = [v39 dialogId];
      v44 = sub_1DD0DDFBC();
      v45 = v5;
      v46 = v11;
      v47 = a4;
      v49 = v48;

      v50 = sub_1DCB10E9C(v44, v49, &v69);
      a4 = v47;
      v11 = v46;
      v5 = v45;

      *(v42 + 4) = v50;
      _os_log_impl(&dword_1DCAFC000, v40, v41, "ResponseFactory: .text and .speakableText are empty for dialog '%s'. Sending downstream anyway for logging, testing, etc.", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v63[0]);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }
  }

  v51 = v11;
  v52 = v64;
  sub_1DD0DB03C();
  v53 = sub_1DD0DAFFC();
  v55 = v54;
  (*(v65 + 8))(v52, v66);
  sub_1DCB4D8E8(v53, v55, v51);

  v56 = sub_1DD0DE8CC();
  [v51 setListenAfterSpeaking_];

  v57 = [v5 dialogId];
  v58 = sub_1DD0DDFBC();
  v60 = v59;

  sub_1DCB6B954(v58, v60, v51);
  [v51 setCanUseServerTTS_];

  if (a4)
  {
    v61 = sub_1DD0DDF8C();
  }

  else
  {
    v61 = 0;
  }

  [v51 setDialogCategory_];

  return v51;
}