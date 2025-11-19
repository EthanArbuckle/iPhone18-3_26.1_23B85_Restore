void sub_2237613A8()
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_250();
  v30 = sub_2237B5C7C();
  v2 = OUTLINED_FUNCTION_0_2(v30);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_112();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27_1();
  v34 = v0;
  v35 = v0;
  v13 = sub_223761B80();
  v32 = v1;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_363();
  v14 = OUTLINED_FUNCTION_169(OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  (v13)(v14);
  OUTLINED_FUNCTION_170();
  v13();
  v15 = v4;
  v29 = v4;
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  OUTLINED_FUNCTION_53_0();
  v18 = v17 & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = *(v15 + 32);
  OUTLINED_FUNCTION_139();
  v20();
  v21 = OUTLINED_FUNCTION_67();
  (v20)(v21);
  OUTLINED_FUNCTION_76((&type metadata for Logger + v19));
  *(v22 + 8) = 0x80000002237BA380;
  v23 = (v19 + v18);
  *v23 = sub_223762ACC;
  v23[1] = &v33;
  OUTLINED_FUNCTION_5_3();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_223761F8C;
  *(v24 + 24) = v19;
  v36[4] = sub_223761F78;
  v36[5] = v24;
  OUTLINED_FUNCTION_7_5();
  v36[1] = 1107296256;
  OUTLINED_FUNCTION_0_5();
  v36[2] = v25;
  v36[3] = &block_descriptor_102;
  v26 = _Block_copy(v36);

  dispatch_sync(v31, v26);
  _Block_release(v26);
  v27 = *(v29 + 8);
  v28 = OUTLINED_FUNCTION_231();
  v27(v28);
  (v27)(v32, v9);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_90();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_16_2()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return sub_2237B53DC();
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_273()
{
  v2 = v0[2];
  result = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return result;
}

void OUTLINED_FUNCTION_104(uint64_t a1@<X5>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  *(a4 - 256) = a3;
  *(v4 - 328) = a2;
  *(v4 - 336) = a1;
}

uint64_t OUTLINED_FUNCTION_49_1@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_20()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_37()
{
  v1 = *(v0 - 264);
  v2 = *(v0 - 224);
  v3 = *(v0 - 208);
  v4 = *(v0 - 152);
}

uint64_t OUTLINED_FUNCTION_37_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2 + 16;
}

void OUTLINED_FUNCTION_8()
{

  JUMPOUT(0x223DEB690);
}

uint64_t OUTLINED_FUNCTION_26_0()
{
}

BOOL OUTLINED_FUNCTION_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_14_7@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return swift_getObjectType();
}

void OUTLINED_FUNCTION_330()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
}

uint64_t OUTLINED_FUNCTION_15_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_15_2()
{

  return sub_2237B5DBC();
}

BOOL OUTLINED_FUNCTION_15_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_15_4()
{
  *(v7 - 256) = v6;
  *(v7 - 248) = v0;
  *(v7 - 240) = v2;
  *(v7 - 232) = v4;
  *(v7 - 280) = v4;
  *(v7 - 224) = v5;
  *(v7 - 216) = v3;
  *(v7 - 208) = v1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_15_6@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

id OUTLINED_FUNCTION_15_7()
{

  return [v0 (v2 + 888)];
}

unint64_t sub_223761B80()
{
  result = qword_28131A9F0;
  if (!qword_28131A9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131A9F0);
  }

  return result;
}

id sub_223761BD4()
{
  if (qword_28131AA00 != -1)
  {
    swift_once();
  }

  v1 = qword_28131B548;

  return v1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_5_1()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

char *OUTLINED_FUNCTION_5_4@<X0>(unint64_t a1@<X8>)
{

  return sub_2237A69B8((a1 > 1), v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_70()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_10()
{

  JUMPOUT(0x223DEB690);
}

uint64_t OUTLINED_FUNCTION_7_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_7_6()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_74()
{

  JUMPOUT(0x223DEB690);
}

void OUTLINED_FUNCTION_74_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_137()
{

  return swift_slowAlloc();
}

uint64_t sub_223761F50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_223761F94()
{
  v1 = sub_2237B5C7C();
  OUTLINED_FUNCTION_270(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  OUTLINED_FUNCTION_268();
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v0 + v10);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v0 + v11);
  v16 = *(v0 + v11 + 8);

  return sub_223762034(v0 + v9, v0 + v8, v13, v14, v15);
}

uint64_t sub_223762034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v12 = a5;
  v5 = sub_2237B5C7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223761B80();
  sub_2237B572C();
  sub_2237B572C();
  v10 = sub_2237B573C();
  v12(v10);
  sub_2237B572C();
  return (*(v6 + 8))(v9, v5);
}

void sub_2237621E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_191();
  v26 = sub_2237B5CCC();
  v27 = OUTLINED_FUNCTION_0_2(v26);
  v146 = v28;
  v147 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v31);
  v32 = sub_2237B5D0C();
  v33 = OUTLINED_FUNCTION_8_6(v32, &a18);
  v143 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v37);
  v38 = sub_2237B559C();
  v39 = OUTLINED_FUNCTION_0_2(v38);
  v151 = v40;
  v152 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3_4();
  v150 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  OUTLINED_FUNCTION_1(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_4_6();
  v149 = v48;
  OUTLINED_FUNCTION_12();
  v155 = sub_2237B56DC();
  v49 = OUTLINED_FUNCTION_0_2(v155);
  v148 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_69();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_20_0();
  v156 = v54;
  OUTLINED_FUNCTION_12();
  v55 = sub_2237B563C();
  v56 = OUTLINED_FUNCTION_0_2(v55);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_17_4();
  v61 = sub_2237B412C();
  v62 = OUTLINED_FUNCTION_0_2(v61);
  v158 = v63;
  v159 = v62;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_39_0();
  v153 = v66;
  OUTLINED_FUNCTION_204(&a14);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_50_0();
  v68 = [v22 assistantId];
  sub_2237B5E2C();

  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_14_3();
  sub_223764358(v69, v70, v71, v72, 1, 0, v73, v74, v141[0], v141[1], v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);

  v154 = v20;
  v75 = *(v20 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  v76 = [v22 assistantId];
  sub_2237B5E2C();

  v77 = *MEMORY[0x277D5D258];
  OUTLINED_FUNCTION_355();
  v78(v23);
  v157 = v21;
  OUTLINED_FUNCTION_186();
  sub_223763E48();

  v80 = *(v58 + 8);
  v79 = v58 + 8;
  v81 = OUTLINED_FUNCTION_240();
  v82 = v22;
  v83(v81);
  sub_223767020(v22, &selRef_sharedUserId);
  if (v84)
  {
    OUTLINED_FUNCTION_298();
    v85 = v148;
  }

  else
  {
    OUTLINED_FUNCTION_296(&a13);
    sub_2237B56CC();
    sub_2237B56BC();
    OUTLINED_FUNCTION_298();
    v85 = v148;
    (*(v148 + 8))(v79, v155);
  }

  OUTLINED_FUNCTION_19_2();
  sub_2237B56AC();
  v86 = *(v85 + 16);
  v87 = v149;
  v88 = OUTLINED_FUNCTION_16();
  v89(v88);
  v90 = [v82 languageCode];
  v91 = sub_2237B5E2C();
  v93 = v92;

  LOBYTE(v90) = [v82 isSystemAssistantExperienceEnabled];
  v94 = type metadata accessor for RequestDispatcher.SessionContext(0);
  v95 = (v149 + *(v94 + 20));
  *v95 = v91;
  v95[1] = v93;
  *(v87 + *(v94 + 24)) = v90;
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
  v100 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
  v101 = v154;
  swift_beginAccess();
  sub_22376C89C(v87, v154 + v100);
  swift_endAccess();
  v102 = v157;
  v103 = *(v158 + 16);
  v103(v153, v157, v159);
  v104 = v82;
  v105 = v150;
  OUTLINED_FUNCTION_193();
  v106 = sub_2237B558C();
  MEMORY[0x28223BE20](v106);
  v141[-2] = v102;
  v141[-1] = v105;
  v107 = objc_allocWithZone(sub_2237B44EC());
  OUTLINED_FUNCTION_34_0();
  v108 = sub_2237B44AC();
  if (v108)
  {
    v109 = v108;
    v110 = *(v101 + OBJC_IVAR___SRDRequestDispatcherInternal_assetLogger);
    if ((*(v110 + 32) & 1) != 0 || (OUTLINED_FUNCTION_138(), v111))
    {
      v149 = *(v110 + 16);
      v112 = v153;
      v113 = v159;
      v103(v153, v157, v159);
      v114 = v158;
      v115 = ((*(v158 + 80) + 24) & ~*(v158 + 80));
      v116 = swift_allocObject();
      *(v116 + 16) = v110;
      (*(v114 + 32))(&v115[v116], v112, v113);
      v161[4] = sub_22376CCA0;
      v161[5] = v116;
      OUTLINED_FUNCTION_7_5();
      v161[1] = 1107296256;
      OUTLINED_FUNCTION_6_6();
      v161[2] = v117;
      v161[3] = &block_descriptor_435;
      _Block_copy(v161);
      OUTLINED_FUNCTION_249();

      v118 = v142;
      sub_2237B5CEC();
      v160 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_5_5();
      sub_223766F90(v119, v120);
      v121 = OUTLINED_FUNCTION_256();
      __swift_instantiateConcreteTypeFromMangledNameV2(v121, v122);
      OUTLINED_FUNCTION_4_8();
      sub_223766FD8(v123, &unk_27D097C90, qword_2237B7940);
      OUTLINED_FUNCTION_287(&a17);
      v124 = v147;
      sub_2237B60FC();
      MEMORY[0x223DEACD0](0, v118, v101, v115);
      _Block_release(v115);
      (*(v146 + 8))(v101, v124);
      OUTLINED_FUNCTION_96(&a16);
      v125(v118, v145);

      v101 = v154;
    }

    v126 = *(v101 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
    sub_2237654A4(v109);

    goto LABEL_15;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v127 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v127, qword_28131B550);
  v128 = v104;
  v129 = sub_2237B5C8C();
  sub_2237B5FFC();

  if (!OUTLINED_FUNCTION_218())
  {

LABEL_15:
    (*(v85 + 8))(v156, v155);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_20();
  v161[0] = OUTLINED_FUNCTION_32();
  *v102 = 136315138;
  v130 = [v128 assistantId];
  v131 = sub_2237B5E2C();
  v132 = v85;
  v134 = v133;

  v135 = sub_223763694(v131, v134, v161);

  *(v102 + 4) = v135;
  OUTLINED_FUNCTION_33();
  _os_log_impl(v136, v137, v138, v139, v140, 0xCu);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_3_0();

  (*(v132 + 8))(v156, v155);
LABEL_16:
  (*(v151 + 8))(v105, v152);
  (*(v158 + 8))(v157, v159);
  OUTLINED_FUNCTION_14_2();
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return sub_2237B627C();
}

uint64_t OUTLINED_FUNCTION_11_3()
{

  return sub_2237B606C();
}

uint64_t OUTLINED_FUNCTION_11_5()
{
  v5 = v0[4];
  v4 = v0[3];
  v2 = v0[2];

  return swift_getObjectType();
}

unint64_t OUTLINED_FUNCTION_11_8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_60()
{
  result = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  return result;
}

double OUTLINED_FUNCTION_60_0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_56()
{
}

uint64_t OUTLINED_FUNCTION_56_0(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_223762CDC()
{
  OUTLINED_FUNCTION_17_0();
  v1 = *(v0 + 40);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_22376504C();
  if (v3)
  {
    v4 = *(*(v1 + 56) + 8 * v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_223762D6C(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v75 = a3;
  v68 = a1;
  v73 = sub_2237B40DC();
  v6 = OUTLINED_FUNCTION_0_2(v73);
  v69 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v71 = v10;
  MEMORY[0x28223BE20](v11);
  v70 = &v60 - v12;
  v67 = sub_2237B563C();
  v13 = OUTLINED_FUNCTION_0_2(v67);
  v74 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  v72 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  v21 = sub_2237B412C();
  v22 = OUTLINED_FUNCTION_0_2(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId;
  sub_2237B411C();
  v30 = OBJC_IVAR____TtC14SiriMessageBus7Session_lastAccessedTime;
  sub_2237B40CC();
  v31 = OBJC_IVAR____TtC14SiriMessageBus7Session_userSessionState;
  v32 = *MEMORY[0x277D5D0D0];
  v33 = sub_2237B551C();
  OUTLINED_FUNCTION_4(v33);
  (*(v34 + 104))(v4 + v31, v32);
  v35 = (v4 + OBJC_IVAR____TtC14SiriMessageBus7Session_assistantId);
  *v35 = v68;
  v35[1] = a2;
  v63 = v29;
  v64 = v24;
  v36 = *(v24 + 16);
  v65 = v21;
  v62 = v24 + 16;
  v61 = v36;
  v36(v28, v4 + v29, v21);
  v66 = *(v74 + 16);
  v37 = v67;
  v66(v20, v75, v67);
  v38 = type metadata accessor for ConversationSession();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();

  v68 = v28;
  sub_223766280();
  v41 = OBJC_IVAR____TtC14SiriMessageBus7Session_conversationSession;
  *(v4 + OBJC_IVAR____TtC14SiriMessageBus7Session_conversationSession) = v42;
  swift_beginAccess();
  v43 = v69;
  v44 = v4 + v30;
  v45 = v37;
  v46 = v71;
  v47 = v73;
  (*(v69 + 16))(v71, v44, v73);
  v48 = v70;
  sub_2237B409C();
  (*(v43 + 8))(v46, v47);
  (*(v43 + 32))(v4 + OBJC_IVAR____TtC14SiriMessageBus7Session_expirationTime, v48, v47);
  v66(v20, *(v4 + v41) + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionType, v45);
  v49 = v74;
  v50 = v72;
  (*(v74 + 104))(v72, *MEMORY[0x277D5D258], v45);
  LOBYTE(v28) = sub_223766744();
  v51 = *(v49 + 8);
  v51(v50, v45);
  v51(v20, v45);
  if (v28)
  {
    v76 = 0;
    v77 = 0xE000000000000000;
    sub_2237B613C();

    v76 = 0xD00000000000002ALL;
    v77 = 0x80000002237BB2A0;
    v52 = v68;
    v53 = v65;
    v61(v68, v4 + v63, v65);
    sub_22376514C(&qword_28131B4D0, MEMORY[0x277CC95F0]);
    v54 = sub_2237B627C();
    MEMORY[0x223DEAAD0](v54);

    (*(v64 + 8))(v52, v53);
    v55 = v77;
    v56 = (v4 + OBJC_IVAR____TtC14SiriMessageBus7Session_transactionName);
    *v56 = v76;
    v56[1] = v55;
    sub_2237B5E4C();
    v57 = os_transaction_create();
    v51(v75, v45);
  }

  else
  {
    v51(v75, v45);
    v57 = 0;
    v58 = (v4 + OBJC_IVAR____TtC14SiriMessageBus7Session_transactionName);
    *v58 = 0;
    v58[1] = 0xE000000000000000;
  }

  *(v4 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionTransaction) = v57;
  return v4;
}

uint64_t sub_223763314(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 40))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6(unint64_t *a1)
{

  return sub_2237650C0(a1);
}

uint64_t OUTLINED_FUNCTION_6_5()
{
  result = 0;
  v2 = *(v0 - 280);
  v3 = *(v0 - 288);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void OUTLINED_FUNCTION_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_18_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_18_4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v5 = *v3;
  v4 = v3[1];

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t a1)
{

  return MEMORY[0x2821FD9B8](a1, v3 - 216, v2, a1, v1);
}

uint64_t OUTLINED_FUNCTION_9_1()
{
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[11];
}

uint64_t OUTLINED_FUNCTION_9_2()
{
  v2 = *(*(v1 - 264) + 8);
  result = v0;
  v4 = *(v1 - 256);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_3()
{

  return swift_isEscapingClosureAtFileLocation();
}

void OUTLINED_FUNCTION_3_0()
{

  JUMPOUT(0x223DEB690);
}

uint64_t OUTLINED_FUNCTION_9_4(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_2237B5C8C();
}

uint64_t sub_223763694(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_17();
  v9 = sub_22376AF24(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_22376AEC8(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  return v10;
}

uint64_t OUTLINED_FUNCTION_21()
{
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];
  v8 = v0[13];

  return sub_2237818D8(v8);
}

uint64_t OUTLINED_FUNCTION_21_0(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

void OUTLINED_FUNCTION_21_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 72);

  _os_log_impl(a1, v8, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_21_2()
{
  v3 = *(v1 - 304);

  return __swift_getEnumTagSinglePayload(v0, 1, v3);
}

char *OUTLINED_FUNCTION_4_5()
{
  v2 = *(v0 + 16) + 1;

  return sub_2237A69B8(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_4_7()
{
  v2 = *(v0 - 288);

  return sub_2237B58AC();
}

uint64_t OUTLINED_FUNCTION_4_9()
{
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[77];
  v7 = v0[76];
  v8 = v0[75];
  v9 = v0[74];
  v10 = v0[71];
  v11 = v0[70];
  v14 = v0[67];
  v15 = v0[66];
  v12 = v0[65];
  v16 = v0[64];
  v17 = v0[63];
  v18 = v0[62];
}

uint64_t type metadata accessor for ConversationSession()
{
  result = qword_28131AFF0;
  if (!qword_28131AFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2237639EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void OUTLINED_FUNCTION_36(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_19_1()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v0 + 16;
}

uint64_t OUTLINED_FUNCTION_19_6()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return MEMORY[0x2821FDAF0](v6 - 96, v6 - 65, v4, a4, v5);
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return sub_2237B606C();
}

void OUTLINED_FUNCTION_10_3(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_223763694(v3, v2, va);
}

uint64_t OUTLINED_FUNCTION_12_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return MEMORY[0x28211B658](va, v8, a1);
}

uint64_t OUTLINED_FUNCTION_12_6(float a1)
{
  *v1 = a1;

  return sub_223763694(v3, v2, (v4 - 152));
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t a1)
{

  return MEMORY[0x28211B570](v2, v3, v1, v2, a1);
}

void OUTLINED_FUNCTION_8_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_8_3()
{
}

void OUTLINED_FUNCTION_8_5()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
}

uint64_t OUTLINED_FUNCTION_8_6@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t type metadata accessor for Session()
{
  result = qword_28131A9D8;
  if (!qword_28131A9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_2_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  v5 = *(v3 + a3);
  v6 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  return sub_22377B32C(v5, v6);
}

void OUTLINED_FUNCTION_2_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_223763E48()
{
  OUTLINED_FUNCTION_20_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v48 = v8;
  v9 = sub_2237B40DC();
  v10 = OUTLINED_FUNCTION_0_2(v9);
  v46 = v11;
  v47 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v45 = v15 - v14;
  v16 = sub_2237B412C();
  v17 = OUTLINED_FUNCTION_0_2(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v24 = v23 - v22;
  v25 = sub_2237B563C();
  v26 = OUTLINED_FUNCTION_0_2(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_0();
  v31 = v30 - v29;
  v32 = v1[2];
  (*(v33 + 16))(v30 - v29, v3);
  v34 = type metadata accessor for Session();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();

  v37 = sub_223762D6C(v7, v5, v31);
  OUTLINED_FUNCTION_17_0();
  v38 = *(v1[5] + 16);
  v39 = v1[8];
  v1[7] = v7;
  v1[8] = v5;

  OUTLINED_FUNCTION_19_6();
  swift_retain_n();
  v40 = v1[5];
  swift_isUniquelyReferenced_nonNull_native();
  v49 = v1[5];
  sub_223766824(v37, v7, v5);
  v1[5] = v49;
  swift_endAccess();
  v41 = OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId;
  v42 = *(v19 + 16);
  v42(v24, v37 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v16);
  OUTLINED_FUNCTION_19_6();
  v43 = v1[6];
  swift_isUniquelyReferenced_nonNull_native();
  v50 = v1[6];
  sub_2237669A8(v37, v24);
  v1[6] = v50;
  (*(v19 + 8))(v24, v16);
  swift_endAccess();
  if (!v38)
  {
    v44 = OBJC_IVAR____TtC14SiriMessageBus7Session_expirationTime;
    OUTLINED_FUNCTION_17_0();
    (*(v46 + 16))(v45, v37 + v44, v47);
    sub_223766C20();
    (*(v46 + 8))(v45, v47);
  }

  v42(v48, v37 + v41, v16);

  OUTLINED_FUNCTION_21_5();
}

id OUTLINED_FUNCTION_24(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return v2;
}

uint64_t OUTLINED_FUNCTION_17_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return sub_2237B5DBC();
}

void OUTLINED_FUNCTION_24_1(void *a1)
{

  _os_log_impl(a1, v1, v2, v3, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_3_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  v5 = *(v3 + a3 + 8);
  *v4 = a1;
  v4[1] = a2;
}

uint64_t OUTLINED_FUNCTION_3_3()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_5()
{

  return sub_2237B623C();
}

id OUTLINED_FUNCTION_27(float a1)
{
  *v2 = a1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_27_0()
{
  v3 = *(v1 - 312);

  return sub_22378ED08(v0, v3);
}

uint64_t OUTLINED_FUNCTION_27_2@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return swift_getObjectType();
}

void sub_223764358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  LODWORD(v187) = v26;
  LODWORD(v180) = v27;
  v179 = v28;
  v182 = v29;
  v31 = v30;
  OUTLINED_FUNCTION_174();
  v32 = sub_2237B5CCC();
  v33 = OUTLINED_FUNCTION_8_6(v32, &a17);
  v173 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v37);
  v38 = sub_2237B5D0C();
  v39 = OUTLINED_FUNCTION_8_6(v38, &a15);
  v171 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v43);
  v44 = sub_2237B412C();
  v45 = OUTLINED_FUNCTION_0_2(v44);
  v176 = v46;
  v177 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  v175 = &v168[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0) - 4];
  OUTLINED_FUNCTION_12();
  v49 = sub_2237B563C();
  v50 = OUTLINED_FUNCTION_0_2(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_272();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_345();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_29_1();
  v174 = v20;
  v57 = *(v20 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  v58 = v31;
  v181 = v21;
  OUTLINED_FUNCTION_136();
  v178 = v57;
  v183 = sub_223762CDC();
  if (!v183)
  {
    v104 = v182;
    if ((v187 & 1) == 0)
    {
      goto LABEL_30;
    }

    if (!v182)
    {
      goto LABEL_30;
    }

    v105 = *MEMORY[0x277D5D258];
    OUTLINED_FUNCTION_304();
    v107 = v106(v22);
    MEMORY[0x28223BE20](v107);
    OUTLINED_FUNCTION_279();
    *(v108 - 16) = v22;
    v110 = sub_2237A6E28(sub_2237A8EF4, v109, v104);
    v111 = *(v52 + 8);
    v112 = OUTLINED_FUNCTION_171();
    v114 = v113(v112);
    if (!v110)
    {
      goto LABEL_30;
    }

    MEMORY[0x28223BE20](v114);
    v115 = v181;
    v116 = objc_allocWithZone(sub_2237B55EC());
    OUTLINED_FUNCTION_144();
    v117 = sub_2237B55AC();
    if (v117)
    {
      v118 = v117;
      v119 = *(v174 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
      sub_2237654A4(v117);
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v161 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v161, qword_28131B550);

      v118 = sub_2237B5C8C();
      sub_2237B5FFC();

      if (OUTLINED_FUNCTION_218())
      {
        OUTLINED_FUNCTION_20();
        v189[0] = OUTLINED_FUNCTION_32();
        v167 = 136315138;
        *v168 = sub_223763694(v115, v58, v189);
        OUTLINED_FUNCTION_33();
        _os_log_impl(v162, v163, v164, v165, v166, 0xCu);
        OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_3_0();
      }
    }

LABEL_29:

    goto LABEL_30;
  }

  v59 = v182;
  if (v182)
  {
    *&v168[4] = OBJC_IVAR____TtC14SiriMessageBus7Session_conversationSession;
    v60 = *(v183 + OBJC_IVAR____TtC14SiriMessageBus7Session_conversationSession);
    v61 = OUTLINED_FUNCTION_81();
    v186 = v63;
    v187 = v62;
    v64 = (v63)(v61);
    v169 = v58;
    MEMORY[0x28223BE20](v64);
    OUTLINED_FUNCTION_279();
    *(v65 - 16) = v22;
    v67 = sub_2237A6E28(sub_2237A93F4, v66, v59);
    v68 = *(v52 + 8);
    v69 = OUTLINED_FUNCTION_171();
    v184 = v71;
    v185 = v70;
    v71(v69);
    if (!v67)
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v120 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v120, qword_28131B550);
      v121 = v183;

      v122 = sub_2237B5C8C();
      v123 = sub_2237B5FFC();

      v180 = v122;
      if (!os_log_type_enabled(v122, v123))
      {

        goto LABEL_30;
      }

      LODWORD(v179) = v123;
      v124 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v189[0] = v174;
      *v124 = 136315906;
      v186(v22, *(v121 + *&v168[4]) + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionType, v49);
      v125 = sub_2237B562C();
      v127 = v126;
      v128 = OUTLINED_FUNCTION_171();
      v184(v128);
      v129 = sub_223763694(v125, v127, v189);

      *(v124 + 4) = v129;
      v178 = v124;
      *(v124 + 12) = 2080;
      v130 = *(v59 + 16);
      if (v130)
      {
        v131 = v59 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
        v132 = *(v52 + 72);
        v133 = MEMORY[0x277D84F90];
        do
        {
          v134 = OUTLINED_FUNCTION_19_3();
          (v186)(v134);
          v135 = sub_2237B562C();
          v137 = v136;
          v138 = OUTLINED_FUNCTION_292();
          v184(v138);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v133 = sub_2237A68B0(0, *(v133 + 2) + 1, 1, v133);
          }

          v140 = *(v133 + 2);
          v139 = *(v133 + 3);
          if (v140 >= v139 >> 1)
          {
            v133 = sub_2237A68B0((v139 > 1), v140 + 1, 1, v133);
          }

          *(v133 + 2) = v140 + 1;
          v141 = &v133[16 * v140];
          *(v141 + 4) = v135;
          *(v141 + 5) = v137;
          v131 += v132;
          --v130;
        }

        while (v130);
      }

      else
      {
        v133 = MEMORY[0x277D84F90];
      }

      v188 = v133;
      v142 = OUTLINED_FUNCTION_193();
      __swift_instantiateConcreteTypeFromMangledNameV2(v142, v143);
      OUTLINED_FUNCTION_291();
      sub_223766FD8(v144, v145, v146);
      sub_2237B5DFC();

      v147 = OUTLINED_FUNCTION_193();
      v150 = sub_223763694(v147, v148, v149);

      v151 = v177;
      v152 = v178;
      *(v178 + 14) = v150;
      *(v152 + 22) = 2080;
      v153 = v176;
      (*(v176 + 16))(v175, v183 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v151);
      sub_223766F90(&qword_28131B4D0, MEMORY[0x277CC95F0]);
      v154 = sub_2237B627C();
      v155 = *(v153 + 8);
      v156 = OUTLINED_FUNCTION_119();
      v157(v156);
      v158 = OUTLINED_FUNCTION_1_1();
      sub_223763694(v158, v159, v160);
      OUTLINED_FUNCTION_249();

      *(v152 + 24) = v154;
      *(v152 + 32) = 2080;
      *(v152 + 34) = sub_223763694(v181, v169, v189);
      v118 = v180;
      _os_log_impl(&dword_22375F000, v180, v179, "Current session type: %s is different from given types: %s not ending sessionId: %s for assistantId: %s", v152, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_74();
      OUTLINED_FUNCTION_13_5();

      goto LABEL_29;
    }
  }

  v72 = v183;
  v73 = v180;
  if (v180)
  {
    v74 = *(v183 + OBJC_IVAR____TtC14SiriMessageBus7Session_conversationSession);
    v75 = OUTLINED_FUNCTION_81();
    v76(v75);
    v77 = *MEMORY[0x277D5D258];
    OUTLINED_FUNCTION_304();
    v78(v23);
    OUTLINED_FUNCTION_352();
    v79 = sub_223766744();
    v80 = *(v52 + 8);
    v81 = OUTLINED_FUNCTION_100();
    v80(v81);
    v82 = OUTLINED_FUNCTION_171();
    v80(v82);
    if (v79)
    {
      v83 = *(v174 + OBJC_IVAR___SRDRequestDispatcherInternal_assetLogger);
      if ((*(v83 + 32) & 1) != 0 || *(v83 + 33) == 1)
      {
        v84 = *(v83 + 16);
        v86 = v175;
        v85 = v176;
        v87 = v72 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId;
        v88 = v177;
        (*(v176 + 16))(v175, v87, v177);
        v89 = (*(v85 + 80) + 24) & ~*(v85 + 80);
        v90 = swift_allocObject();
        v91 = OUTLINED_FUNCTION_192(v90);
        (*(v85 + 32))(v91 + v89, v86, v88);
        v189[4] = sub_223775ED4;
        v189[5] = v73;
        OUTLINED_FUNCTION_1_7();
        v189[1] = 1107296256;
        OUTLINED_FUNCTION_6_6();
        v189[2] = v92;
        v189[3] = &block_descriptor_428;
        _Block_copy(v189);
        OUTLINED_FUNCTION_254();

        v93 = v170;
        sub_2237B5CEC();
        v188 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_5_5();
        sub_223766F90(v94, v95);
        v96 = OUTLINED_FUNCTION_19_2();
        __swift_instantiateConcreteTypeFromMangledNameV2(v96, v97);
        OUTLINED_FUNCTION_4_8();
        OUTLINED_FUNCTION_209();
        sub_223766FD8(v98, v99, v100);
        sub_2237B60FC();
        OUTLINED_FUNCTION_173();
        _Block_release(v73);
        OUTLINED_FUNCTION_96(&a16);
        v101 = OUTLINED_FUNCTION_233();
        v102(v101);
        OUTLINED_FUNCTION_96(&a13);
        v103(v93, v172);
      }
    }
  }

  sub_2237697FC();

LABEL_30:
  OUTLINED_FUNCTION_14_2();
}

BOOL OUTLINED_FUNCTION_315(os_log_type_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t oslog)
{

  return os_log_type_enabled(oslog, a1);
}

void OUTLINED_FUNCTION_17_2(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = *v2;
  v4 = v2[1];
}

void OUTLINED_FUNCTION_17_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_1_2(unint64_t *a1)
{

  return sub_2237650C0(a1);
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_6()
{

  return sub_2237B61DC();
}

unint64_t sub_22376504C()
{
  OUTLINED_FUNCTION_31_2();
  v3 = *(v0 + 40);
  sub_2237B634C();
  sub_2237B5E6C();
  v4 = sub_2237B636C();

  return sub_22376535C(v2, v1, v4);
}

uint64_t sub_2237650C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2237B412C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_223765104(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22376514C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_223765194(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2237651DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_223765224()
{
  result = qword_28131A820;
  if (!qword_28131A820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D097C90, qword_2237B7940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131A820);
  }

  return result;
}

void sub_223765288()
{
  v1 = *(v0 + 40);
  sub_2237B412C();
  sub_2237651DC(&qword_28131B4E0, MEMORY[0x277CC95F0]);
  sub_2237B5DDC();
  sub_22376AD50();
}

unint64_t sub_22376535C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2237B629C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void OUTLINED_FUNCTION_20_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_20_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_20_7()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 232);
  return result;
}

uint64_t sub_2237654A4(void *a1)
{
  v2 = v1;
  v4 = sub_2237B5CCC();
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_4();
  v157 = v10;
  OUTLINED_FUNCTION_12();
  v11 = sub_2237B5D0C();
  v12 = OUTLINED_FUNCTION_0_2(v11);
  v156 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_4();
  v154 = v16;
  OUTLINED_FUNCTION_12();
  v162 = sub_2237B5C7C();
  v17 = OUTLINED_FUNCTION_0_2(v162);
  v155 = v18;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  v153 = &v140[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_20_0();
  v152 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_20_0();
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_20_0();
  v159 = v26;
  OUTLINED_FUNCTION_12();
  v151 = sub_2237B540C();
  v27 = OUTLINED_FUNCTION_0_2(v151);
  v150 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  v32 = &v140[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = sub_2237B412C();
  v34 = OUTLINED_FUNCTION_0_2(v33);
  v158 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  aBlock[0] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097458, &qword_2237B7938);
  v163 = sub_2237B5E3C();
  v39 = v38;
  v161 = v2;
  if ((*(v2 + 32) & 1) == 0)
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v55 = sub_2237B5C9C();
    __swift_project_value_buffer(v55, qword_28131B550);
    OUTLINED_FUNCTION_8_2();

    v56 = a1;
    v42 = sub_2237B5C8C();
    v43 = sub_2237B5FFC();

    if (os_log_type_enabled(v42, v43))
    {
      OUTLINED_FUNCTION_25_0();
      aBlock[0] = OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_23_0(4.8151e-34);
      sub_223763694(v163, v39, v57);
      OUTLINED_FUNCTION_8_2();

      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_1_4();
      sub_223765194(v58, v59);
      v60 = OUTLINED_FUNCTION_11_2();
      v62 = v61;
      v63 = OUTLINED_FUNCTION_4_3();
      v64(v63);
      v65 = OUTLINED_FUNCTION_13_2();
      sub_223763694(v65, v62, v66);
      OUTLINED_FUNCTION_8_2();

      *(v4 + 14) = v60;
      v54 = "MessageBus was not started rejected posting message type %s, message id: %s";
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  v149 = v11;
  if (sub_2237B53AC())
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v40 = sub_2237B5C9C();
    __swift_project_value_buffer(v40, qword_28131B550);
    OUTLINED_FUNCTION_8_2();

    v41 = a1;
    v42 = sub_2237B5C8C();
    v43 = sub_2237B5FFC();

    if (os_log_type_enabled(v42, v43))
    {
      OUTLINED_FUNCTION_25_0();
      aBlock[0] = OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_23_0(4.8151e-34);
      sub_223763694(v163, v39, v44);
      OUTLINED_FUNCTION_8_2();

      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_1_4();
      sub_223765194(v45, v46);
      v47 = OUTLINED_FUNCTION_11_2();
      v49 = v48;
      v50 = OUTLINED_FUNCTION_4_3();
      v51(v50);
      v52 = OUTLINED_FUNCTION_13_2();
      sub_223763694(v52, v49, v53);
      OUTLINED_FUNCTION_8_2();

      *(v4 + 14) = v47;
      v54 = "Ignoring posting again message type: %s with msgId: %s back to the bus";
LABEL_11:
      _os_log_impl(&dword_22375F000, v42, v43, v54, v4, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_10();
LABEL_13:

      return 0;
    }

    goto LABEL_12;
  }

  v148 = v4;
  sub_2237B53BC();
  sub_2237B536C();
  v68 = swift_dynamicCastClass();
  v69 = qword_28131AA10;
  v147 = v7;
  v146 = a1;
  if (v68)
  {
    v145 = v68;
    v70 = a1;
    if (v69 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v71 = sub_2237B5C9C();
    __swift_project_value_buffer(v71, qword_28131B550);

    v72 = v70;
    v73 = sub_2237B5C8C();
    v74 = sub_2237B601C();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      aBlock[0] = v144;
      OUTLINED_FUNCTION_23_0(4.8755e-34);
      v142 = v73;
      v77 = sub_223763694(v163, v39, v76);
      OUTLINED_FUNCTION_21_0(v77);
      v141 = v74;
      sub_2237B53DC();
      OUTLINED_FUNCTION_1_4();
      sub_223765194(v78, v79);
      v80 = OUTLINED_FUNCTION_11_2();
      v143 = v72;
      v82 = v81;
      v83 = OUTLINED_FUNCTION_4_3();
      v84(v83);
      v85 = OUTLINED_FUNCTION_13_2();
      sub_223763694(v85, v82, v86);
      OUTLINED_FUNCTION_26_0();
      *(v75 + 14) = v80;
      *(v75 + 22) = 2082;
      v87 = sub_2237B535C();
      v89 = sub_223763694(v87, v88, aBlock);

      *(v75 + 24) = v89;
      *(v75 + 32) = 2082;
      sub_2237B53CC();
      sub_2237B53FC();
      v90 = OUTLINED_FUNCTION_9_2();
      v91(v90);
      v92 = OUTLINED_FUNCTION_13_2();
      sub_223763694(v92, v89, v93);
      OUTLINED_FUNCTION_26_0();
      *(v75 + 34) = v32;
      v94 = v142;
      _os_log_impl(&dword_22375F000, v142, v141, "Posting message type: %{public}s with msgId: %{public}s for requestId: %{public}s from source: %{public}s to the message bus", v75, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_10();
    }

    else
    {
    }
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v95 = sub_2237B5C9C();
    __swift_project_value_buffer(v95, qword_28131B550);
    OUTLINED_FUNCTION_8_2();

    v96 = a1;
    v97 = sub_2237B5C8C();
    v98 = sub_2237B601C();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      aBlock[0] = v145;
      OUTLINED_FUNCTION_23_0(4.8754e-34);
      LODWORD(v144) = v98;
      v101 = sub_223763694(v163, v39, v100);
      OUTLINED_FUNCTION_21_0(v101);
      v143 = v97;
      sub_2237B53DC();
      OUTLINED_FUNCTION_1_4();
      sub_223765194(v102, v103);
      v104 = OUTLINED_FUNCTION_11_2();
      v106 = v105;
      v107 = OUTLINED_FUNCTION_4_3();
      v108(v107);
      v109 = OUTLINED_FUNCTION_13_2();
      sub_223763694(v109, v106, v110);
      OUTLINED_FUNCTION_26_0();
      *(v99 + 14) = v104;
      *(v99 + 22) = 2082;
      sub_2237B53CC();
      sub_2237B53FC();
      v111 = OUTLINED_FUNCTION_9_2();
      v112(v111);
      v113 = OUTLINED_FUNCTION_13_2();
      sub_223763694(v113, v106, v114);
      OUTLINED_FUNCTION_26_0();
      *(v99 + 24) = v32;
      v115 = v143;
      _os_log_impl(&dword_22375F000, v143, v144, "Posting message type: %{public}s with msgId: %{public}s from source: %{public}s to the message bus", v99, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_10();
    }

    else
    {
    }
  }

  sub_223761B80();
  v116 = v159;
  sub_2237B574C();
  v117 = v160;
  sub_2237B573C();

  v163 = *(v161 + 16);
  v118 = v155;
  v119 = *(v155 + 16);
  v120 = v152;
  v121 = v116;
  v122 = v162;
  v119(v152, v121, v162);
  v123 = v153;
  v119(v153, v117, v122);
  v124 = *(v118 + 80);
  v125 = (v124 + 16) & ~v124;
  v126 = (v20 + v124 + v125) & ~v124;
  OUTLINED_FUNCTION_18_2();
  v127 = swift_allocObject();
  v128 = *(v118 + 32);
  v129 = v120;
  v130 = v162;
  v128(v127 + v125, v129, v162);
  v128(v127 + v126, v123, v130);
  *(v127 + v20) = v161;
  v131 = v146;
  *(v127 + v117) = v146;
  aBlock[4] = sub_22376C630;
  aBlock[5] = v127;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2237639EC;
  aBlock[3] = &block_descriptor_19;
  v132 = _Block_copy(aBlock);
  v133 = v131;

  v134 = v154;
  sub_2237B5CEC();
  v164 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_5_2();
  sub_223765194(v135, v136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C90, qword_2237B7940);
  sub_223765224();
  v137 = v157;
  v138 = v148;
  sub_2237B60FC();
  MEMORY[0x223DEACD0](0, v134, v137, v132);
  _Block_release(v132);
  (*(v147 + 8))(v137, v138);
  (*(v156 + 8))(v134, v149);
  v139 = *(v118 + 8);
  v139(v160, v130);
  v139(v159, v130);

  return 1;
}

uint64_t sub_223766144()
{
  v3 = sub_2237B5C7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v6 = *(v4 + 80);
  v7 = (*(v4 + 64) + v6 + ((v6 + 16) & ~v6)) & ~v6;
  OUTLINED_FUNCTION_18_2();
  v5(v0 + v8, v3);
  v5(v0 + v7, v3);
  v9 = *(v0 + v1);

  return MEMORY[0x2821FE8E8](v0, v2 + 8, v6 | 7);
}

uint64_t sub_223766240(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_223766280()
{
  OUTLINED_FUNCTION_16_3();
  v1 = v0;
  v40 = v2;
  v4 = v3;
  v35 = v3;
  v6 = v5;
  v8 = v7;
  v39 = sub_2237B603C();
  v9 = OUTLINED_FUNCTION_4(v39);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_4();
  v12 = sub_2237B605C();
  v13 = OUTLINED_FUNCTION_0_2(v12);
  v37 = v14;
  v38 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_4();
  v36 = v17;
  v18 = sub_2237B5D0C();
  v19 = OUTLINED_FUNCTION_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_4();
  v22 = (v0 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionState);
  sub_2237B560C();
  sub_223766698(qword_28131A8A8, 255, MEMORY[0x277D5D1F0]);
  v23 = MEMORY[0x277D84F90];
  v24 = OUTLINED_FUNCTION_15_2();
  v25 = OUTLINED_FUNCTION_15_2();
  *v22 = v24;
  v22[1] = v25;
  v26 = OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_snapshots;
  *(v1 + v26) = sub_2237B5DBC();
  *(v1 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_snapshotRequestIds) = v23;
  v27 = (v1 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_assistantId);
  *v27 = v8;
  v27[1] = v6;
  v28 = OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionId;
  v34 = sub_2237B412C();
  v29 = *(v34 - 8);
  (*(v29 + 16))(v1 + v28, v4, v34);
  v30 = OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionType;
  v31 = sub_2237B563C();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v1 + v30, v40, v31);
  sub_223766240(0, &qword_28131A7D8, 0x277D85C78);

  sub_2237B613C();

  MEMORY[0x223DEAAD0](v8, v6);

  sub_2237B5CFC();
  (*(v37 + 104))(v36, *MEMORY[0x277D85268], v38);
  sub_223766698(&qword_28131A7E0, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0979A8, &qword_2237B8500);
  sub_2237666E0();
  sub_2237B60FC();
  v33 = sub_2237B608C();
  (*(v32 + 8))(v40, v31);
  (*(v29 + 8))(v35, v34);
  *(v1 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_syncQueue) = v33;
  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_223766698(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_2237666E0()
{
  result = qword_28131A810;
  if (!qword_28131A810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0979A8, &qword_2237B8500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131A810);
  }

  return result;
}

uint64_t sub_223766744()
{
  sub_2237B563C();
  sub_22376514C(&unk_28131A888, MEMORY[0x277D5D268]);
  sub_2237B5EFC();
  sub_2237B5EFC();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_2237B629C();
  }

  return v1 & 1;
}

uint64_t sub_223766824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_22376504C();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E78, &qword_2237B9478);
  if ((sub_2237B618C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_22376504C();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_2237B62CC();
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
    sub_223766960(v11, a2, a3, a1, v16);
  }
}

unint64_t sub_223766960(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_2237669A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2237B412C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_223765288();
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E80, &qword_2237B9480);
  if ((sub_2237B618C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v3;
  sub_223765288();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    result = sub_2237B62CC();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v3;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
  }

  else
  {
    (*(v7 + 16))(v10, a2, v6);
    return sub_223766B68(v14, v10, a1, v19);
  }
}

uint64_t sub_223766B68(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2237B412C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void sub_223766C20()
{
  OUTLINED_FUNCTION_20_6();
  v1 = v0;
  v37 = v2;
  v38 = sub_2237B5D2C();
  v3 = OUTLINED_FUNCTION_0_2(v38);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E70, &qword_2237B9470);
  OUTLINED_FUNCTION_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  v20 = sub_2237B5CCC();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v40[4] = sub_223767224;
  v41 = v0;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 1107296256;
  v40[2] = sub_2237639EC;
  v40[3] = &block_descriptor_3;
  _Block_copy(v40);
  v39 = MEMORY[0x277D84F90];
  sub_2237651DC(&qword_28131A840, MEMORY[0x277D85198]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C90, qword_2237B7940);
  sub_223765224();
  sub_2237B60FC();
  v24 = sub_2237B5D5C();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_2237B5D3C();

  v28 = *(v0 + OBJC_IVAR____TtC14SiriMessageBus15SessionsManager_expirationScheduleTask);
  *(v1 + OBJC_IVAR____TtC14SiriMessageBus15SessionsManager_expirationScheduleTask) = v27;

  v29 = sub_2237B40DC();
  OUTLINED_FUNCTION_4(v29);
  (*(v30 + 16))(v19, v37, v29);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v29);
  v31 = OBJC_IVAR____TtC14SiriMessageBus15SessionsManager_nextExpirationTaskTimeCheck;
  OUTLINED_FUNCTION_19_6();
  sub_223763314(v19, v1 + v31, &qword_27D097E70, &qword_2237B9470);
  swift_endAccess();
  v32 = *(v1 + 32);
  sub_2237B5D1C();
  sub_2237B5D7C();
  v33 = *(v5 + 8);
  v34 = v10;
  v35 = v38;
  v33(v34, v38);
  sub_2237B604C();

  v33(v13, v35);
  OUTLINED_FUNCTION_21_5();
}

uint64_t sub_223766F90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_223766FD8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_223767020(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_2237B5E2C();
  }

  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_2237670BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_250();
  result = sub_2237B56DC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_223767178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_297();
  v6 = sub_2237B56DC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

void sub_223767228()
{
  OUTLINED_FUNCTION_20_6();
  v1 = sub_2237B412C();
  v2 = OUTLINED_FUNCTION_0_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = sub_2237B40DC();
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v118 = v16 - v17;
  v19 = MEMORY[0x28223BE20](v18);
  v112 = &v101 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_29_2(v21, v22, v23, v24, v25, v26, v27, v28, v101);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E70, &qword_2237B9470);
  OUTLINED_FUNCTION_1(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v32);
  v34 = &v101 - v33;
  v113 = v10;
  __swift_storeEnumTagSinglePayload(&v101 - v33, 1, 1, v10);
  v35 = OBJC_IVAR____TtC14SiriMessageBus15SessionsManager_nextExpirationTaskTimeCheck;
  OUTLINED_FUNCTION_19_6();
  sub_223763314(v34, v0 + v35, &qword_27D097E70, &qword_2237B9470);
  swift_endAccess();
  v36 = *(v0 + OBJC_IVAR____TtC14SiriMessageBus15SessionsManager_expirationScheduleTask);
  *(v0 + OBJC_IVAR____TtC14SiriMessageBus15SessionsManager_expirationScheduleTask) = 0;

  OUTLINED_FUNCTION_38_0();
  v119 = v0;
  if (*(*(v0 + 40) + 16))
  {
    if (!swift_weakLoadStrong())
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v90 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v90, qword_28131B550);
      v91 = sub_2237B5C8C();
      v92 = sub_2237B601C();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = OUTLINED_FUNCTION_7_3();
        *v93 = 0;
        _os_log_impl(&dword_22375F000, v91, v92, "Broker does not exist anymore so just remove all sessions", v93, 2u);
        OUTLINED_FUNCTION_8();
      }

      type metadata accessor for Session();
      v94 = sub_2237B5DBC();
      v95 = v119;
      v96 = *(v119 + 40);
      *(v119 + 40) = v94;

      OUTLINED_FUNCTION_1_8();
      sub_2237651DC(v97, v98);
      v99 = sub_2237B5DBC();
      OUTLINED_FUNCTION_38_0();
      v100 = *(v95 + 48);
      *(v95 + 48) = v99;

      goto LABEL_35;
    }

    v106 = v9;
    v107 = v1;

    v37 = v119;
    v38 = *(v119 + 16);
    sub_2237B40CC();
    sub_2237B409C();
    v39 = *(v37 + 40);
    v40 = v39 + 64;
    v41 = 1 << *(v39 + 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v43 = v42 & *(v39 + 64);
    v44 = (v41 + 63) >> 6;
    v114 = (v13 + 16);
    v45 = (v13 + 8);
    v102 = (v13 + 32);
    v105 = (v4 + 16);
    v104 = (v4 + 8);
    v116 = v39;

    v46 = 0;
    *&v47 = 136315394;
    v103 = v47;
    v48 = v113;
    v115 = (v13 + 8);
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (!v43)
          {
            while (1)
            {
              v49 = v46 + 1;
              if (__OFADD__(v46, 1))
              {
                __break(1u);
                goto LABEL_37;
              }

              if (v49 >= v44)
              {
                break;
              }

              v43 = *(v40 + 8 * v49);
              ++v46;
              if (v43)
              {
                v46 = v49;
                goto LABEL_11;
              }
            }

            v78 = v112;
            if (*(*(v119 + 40) + 16))
            {
              sub_223766C20();
            }

            v79 = *v45;
            (*v45)(v78, v48);
            v80 = OUTLINED_FUNCTION_19_2();
            v79(v80);
            goto LABEL_35;
          }

LABEL_11:
          v50 = __clz(__rbit64(v43));
          v43 &= v43 - 1;
          v51 = v50 | (v46 << 6);
          v52 = *(v116 + 56);
          v53 = (*(v116 + 48) + 16 * v51);
          v54 = v53[1];
          v117 = *v53;
          v55 = *(v52 + 8 * v51);
          v56 = OBJC_IVAR____TtC14SiriMessageBus7Session_expirationTime;
          OUTLINED_FUNCTION_17_0();
          v57 = v118;
          (*v114)(v118, v55 + v56, v48);

          if ((sub_2237B40AC() & 1) == 0)
          {
            break;
          }

          if (qword_28131AA10 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v58 = sub_2237B5C9C();
          OUTLINED_FUNCTION_13(v58, qword_28131B550);

          v59 = sub_2237B5C8C();
          v60 = sub_2237B601C();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = OUTLINED_FUNCTION_25_0();
            v110 = v60;
            v62 = v61;
            v111 = swift_slowAlloc();
            v120[0] = v111;
            *v62 = v103;
            v63 = *v105;
            v109 = v59;
            v63(v106, v55 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v107);
            OUTLINED_FUNCTION_1_8();
            sub_2237651DC(&qword_28131B4D0, v64);
            v108 = sub_2237B627C();
            v66 = v65;
            v67 = *v104;
            v68 = OUTLINED_FUNCTION_19_2();
            v69(v68);
            v70 = sub_223763694(v108, v66, v120);

            *(v62 + 4) = v70;
            *(v62 + 12) = 2080;
            *(v62 + 14) = sub_223763694(v117, v54, v120);
            v71 = v109;
            _os_log_impl(&dword_22375F000, v109, v110, "Session id: %s for assistant Id: %s is expired", v62, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_8();
            OUTLINED_FUNCTION_8();

            v48 = v113;
          }

          else
          {
          }

          sub_2237697FC();

          v45 = v115;
          (*v115)(v118, v48);
        }

        sub_2237B40BC();
        v73 = v72;

        if (v73 > 0.0)
        {
          break;
        }

        v45 = v115;
        v74 = *v115;
LABEL_22:
        v74(v57, v48);
      }

      v45 = v115;
      v74 = *v115;
      if (v73 >= v38)
      {
        goto LABEL_22;
      }

      v75 = v112;
      v76 = OUTLINED_FUNCTION_19_2();
      v77(v76);
      (*v102)(v75, v57, v48);
      v38 = v73;
    }
  }

  if (qword_28131AA10 != -1)
  {
LABEL_37:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v81 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v81, qword_28131B550);
  v82 = sub_2237B5C8C();
  v83 = sub_2237B5FEC();
  if (OUTLINED_FUNCTION_5(v83))
  {
    v84 = OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_4_4(v84);
    OUTLINED_FUNCTION_33();
    _os_log_impl(v85, v86, v87, v88, v89, 2u);
    OUTLINED_FUNCTION_3_0();
  }

LABEL_35:
  OUTLINED_FUNCTION_21_5();
}

uint64_t OUTLINED_FUNCTION_38()
{
  v3 = *(v0 - 240);
  v2 = *(v0 - 232);
  return *(v0 - 272);
}

uint64_t OUTLINED_FUNCTION_38_0()
{

  return swift_beginAccess();
}

uint64_t sub_223767B00(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_2237B5E8C())
  {
    result = sub_223767C18(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2237B612C();
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
          result = sub_2237B617C();
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

void *sub_223767C18(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097338, &qword_2237B77F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void sub_223767CBC(void *a1, char a2, uint64_t a3, void *a4)
{
  v7 = [a1 level];
  if (!v7)
  {
    __break(1u);
    goto LABEL_58;
  }

  v8 = v7;
  v9 = [v7 directoryValue];

  if (!v9)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v10 = sub_223768704(v9, &selRef_path);
  if (!v11)
  {
    return;
  }

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    return;
  }

  v13 = [a1 level];
  if (!v13)
  {
    goto LABEL_59;
  }

  v14 = v13;
  v15 = [v13 metadata];

  if (!v15)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  *&v84 = 0x6E6F6973726576;
  *(&v84 + 1) = 0xE700000000000000;
  v16 = [v15 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v16)
  {
    sub_2237B60EC();
    swift_unknownObjectRelease();
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
  }

  v86 = v84;
  v87 = v85;
  if (*(&v85 + 1))
  {
    if (swift_dynamicCast())
    {
      v81 = a4;
      v82 = a2;
      v17 = v83;
      if (qword_28131A9F8 != -1)
      {
        swift_once();
      }

      v18 = sub_2237B5C9C();
      __swift_project_value_buffer(v18, qword_28131B530);
      v19 = a1;

      v20 = sub_2237B5C8C();
      v21 = sub_2237B5FEC();
      if (!os_log_type_enabled(v20, v21))
      {

        goto LABEL_32;
      }

      v22 = v19;
      v23 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v84 = v79;
      *v23 = 136315650;
      v24 = [v22 factor];
      v80 = v22;

      if (v24)
      {
        *&v86 = sub_223768704(v24, &selRef_name);
        *(&v86 + 1) = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097358, &qword_2237B7810);
        v26 = sub_2237B5E3C();
        v28 = sub_223763694(v26, v27, &v84);

        *(v23 + 4) = v28;
        *(v23 + 12) = 2080;
        *(v23 + 14) = sub_223763694(v83, *(&v83 + 1), &v84);
        *(v23 + 22) = 2080;
        v29 = sub_22376AC64(v82);
        v31 = sub_223763694(v29, v30, &v84);

        *(v23 + 24) = v31;
        v17 = v83;
        _os_log_impl(&dword_22375F000, v20, v21, "Found asset=%s, version=%s, namespace=%s", v23, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223DEB690](v79, -1, -1);
        MEMORY[0x223DEB690](v23, -1, -1);

        v19 = v80;
LABEL_32:
        v44 = sub_223768770(v17, *(&v83 + 1));
        if (v44)
        {
          v45 = v44;
          v46 = [objc_allocWithZone(MEMORY[0x277D5A798]) init];
          if (!v46)
          {

            v63 = sub_2237B5C8C();
            v64 = sub_2237B5FFC();
            if (os_log_type_enabled(v63, v64))
            {
              v65 = v45;
              v66 = swift_slowAlloc();
              *v66 = 0;
              _os_log_impl(&dword_22375F000, v63, v64, "Failed to create an event for asset", v66, 2u);
              MEMORY[0x223DEB690](v66, -1, -1);

              return;
            }

            goto LABEL_56;
          }

          v47 = v46;
          v48 = [v19 factor];
          if (v48)
          {
            sub_223768704(v48, &selRef_name);
            if (v49)
            {
              v50 = sub_2237B5E1C();
            }

            else
            {
              v50 = 0;
            }

            [v47 setAssetName_];

            [v47 setAssetVersion_];
            v67 = [v19 level];
            if (v67)
            {
              v68 = v67;
              v69 = [v67 metadata];

              if (v69)
              {

                *&v84 = 0x656C61636F6CLL;
                *(&v84 + 1) = 0xE600000000000000;
                v70 = [v69 __swift_objectForKeyedSubscript_];
                swift_unknownObjectRelease();

                if (v70)
                {
                  sub_2237B60EC();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v84 = 0u;
                  v85 = 0u;
                }

                v86 = v84;
                v87 = v85;
                if (*(&v85 + 1))
                {
                  v71 = MEMORY[0x277D837D0];
                  if (swift_dynamicCast())
                  {
                    v86 = v83;
                    *&v84 = 95;
                    *(&v84 + 1) = 0xE100000000000000;
                    v77 = v71;
                    v78 = sub_223768F34();
                    sub_2237B60DC();

                    v72 = objc_opt_self();
                    v73 = sub_2237B5E1C();

                    v74 = [v72 convertLanguageCodeToSchemaLocale_];

LABEL_54:
                    [v47 setAssetLocale_];
                    v75 = sub_22376AC64(v82);
                    sub_223769350(v75, v76, v47, &selRef_setTrialNamespace_);
                    MEMORY[0x223DEAB60]();
                    sub_2237693BC(*((*v81 & 0xFFFFFFFFFFFFFF8) + 0x10));
                    sub_2237B5F5C();
LABEL_56:

                    return;
                  }
                }

                else
                {
                  sub_2237692F0(&v86, &qword_27D097350, qword_2237B7EC0);
                }

                v74 = 0;
                goto LABEL_54;
              }

              goto LABEL_65;
            }

LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v51 = v19;
        v34 = sub_2237B5C8C();
        v52 = sub_2237B5FFC();
        if (!os_log_type_enabled(v34, v52))
        {

          goto LABEL_29;
        }

        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *&v84 = v54;
        *v53 = 136315394;
        v55 = sub_22376AC64(v82);
        v57 = sub_223763694(v55, v56, &v84);

        *(v53 + 4) = v57;
        *(v53 + 12) = 2080;
        v58 = [v51 factor];

        if (!v58)
        {
LABEL_66:
          __break(1u);
          return;
        }

        *&v86 = sub_223768704(v58, &selRef_name);
        *(&v86 + 1) = v59;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097358, &qword_2237B7810);
        v60 = sub_2237B5E3C();
        v62 = sub_223763694(v60, v61, &v84);

        *(v53 + 14) = v62;
        _os_log_impl(&dword_22375F000, v34, v52, "Failed to find version for namespace %s and asset %s", v53, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DEB690](v54, -1, -1);
        v43 = v53;
        goto LABEL_27;
      }

LABEL_62:
      __break(1u);
      goto LABEL_63;
    }
  }

  else
  {

    sub_2237692F0(&v86, &qword_27D097350, qword_2237B7EC0);
  }

  if (qword_28131A9F8 != -1)
  {
    swift_once();
  }

  v32 = sub_2237B5C9C();
  __swift_project_value_buffer(v32, qword_28131B530);
  v33 = a1;
  v34 = sub_2237B5C8C();
  v35 = sub_2237B5FFC();
  if (!os_log_type_enabled(v34, v35))
  {

    goto LABEL_29;
  }

  v36 = swift_slowAlloc();
  v37 = swift_slowAlloc();
  *&v84 = v37;
  *v36 = 136315138;
  v38 = [v33 factor];

  if (!v38)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  *&v86 = sub_223768704(v38, &selRef_name);
  *(&v86 + 1) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097358, &qword_2237B7810);
  v40 = sub_2237B5E3C();
  v42 = sub_223763694(v40, v41, &v84);

  *(v36 + 4) = v42;
  _os_log_impl(&dword_22375F000, v34, v35, "Failed to find the version for asset: %s", v36, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v37);
  MEMORY[0x223DEB690](v37, -1, -1);
  v43 = v36;
LABEL_27:
  MEMORY[0x223DEB690](v43, -1, -1);
LABEL_29:
}

uint64_t sub_223768704(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_2237B5E2C();

  return v4;
}

NSObject *sub_223768770(uint64_t a1, uint64_t a2)
{
  v65 = a1;
  v66 = a2;
  sub_223768F34();
  v4 = &v65;
  v5 = sub_2237B60CC();
  v6 = v5[2];
  if (v6 <= 1)
  {

    if (qword_28131A9F8 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v7 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v7, qword_28131B530);

    v2 = sub_2237B5C8C();
    v8 = sub_2237B5FFC();

    if (!os_log_type_enabled(v2, v8))
    {
      goto LABEL_104;
    }

    v9 = OUTLINED_FUNCTION_20();
    v10 = OUTLINED_FUNCTION_19_0();
    v65 = v10;
    *v9 = 136315138;
    *(v9 + 4) = OUTLINED_FUNCTION_12_0(v10, v11, 46, 0xE100000000000000, v65, v66);
    _os_log_impl(&dword_22375F000, v2, v8, "The assertVersion=%s doesn't follow semantic version scheme", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    OUTLINED_FUNCTION_8();
LABEL_32:
    OUTLINED_FUNCTION_8();
LABEL_104:

    return 0;
  }

  v12 = objc_allocWithZone(MEMORY[0x277D5ACA0]);
  v13 = [v12 init];
  if (!v13)
  {

    if (qword_28131A9F8 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v25 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v25, qword_28131B530);
    v2 = sub_2237B5C8C();
    v26 = sub_2237B5FFC();
    if (!os_log_type_enabled(v2, v26))
    {
      goto LABEL_104;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_22375F000, v2, v26, "Failed to create SISchemaVersion", v27, 2u);
    goto LABEL_32;
  }

  if (!v5[2])
  {
    __break(1u);
    goto LABEL_87;
  }

  v2 = v13;
  v4 = v5[4];
  v3 = v5[5];
  v14 = HIBYTE(v3) & 0xF;
  v15 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v16 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
LABEL_82:

    if (qword_28131A9F8 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v38 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v38, qword_28131B530);

    v39 = sub_2237B5C8C();
    v40 = sub_2237B5FFC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_20();
      v42 = OUTLINED_FUNCTION_19_0();
      v65 = v42;
      *v41 = 136315138;
      *(v41 + 4) = OUTLINED_FUNCTION_12_0(v42, v43);
      v44 = "Failed to convert major version to UInt for version=%s";
LABEL_101:
      _os_log_impl(&dword_22375F000, v39, v40, v44, v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      OUTLINED_FUNCTION_8();
LABEL_102:
      OUTLINED_FUNCTION_8();
    }

LABEL_103:

    goto LABEL_104;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
LABEL_87:

    v19 = sub_223779500(v4, v3, 10);

    if ((v19 & 0x100000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_82;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    v65 = v5[4];
    v66 = v3 & 0xFFFFFFFFFFFFFFLL;
    if (v4 == 43)
    {
      if (v14)
      {
        if (v14 != 1)
        {
          OUTLINED_FUNCTION_18();
          while (1)
          {
            OUTLINED_FUNCTION_4_0();
            if (!v21 & v20)
            {
              break;
            }

            OUTLINED_FUNCTION_11();
            if (!v21)
            {
              break;
            }

            v19 = v33 + v32;
            if (__CFADD__(v33, v32))
            {
              break;
            }

            OUTLINED_FUNCTION_10_0();
            if (v21)
            {
              goto LABEL_81;
            }
          }
        }

        goto LABEL_80;
      }
    }

    else
    {
      if (v4 != 45)
      {
        if (v14)
        {
          while (1)
          {
            OUTLINED_FUNCTION_4_0();
            if (!v21 & v20)
            {
              break;
            }

            OUTLINED_FUNCTION_11();
            if (!v21)
            {
              break;
            }

            v19 = v37 + v36;
            if (__CFADD__(v37, v36))
            {
              break;
            }

            OUTLINED_FUNCTION_10_0();
            if (v21)
            {
              goto LABEL_81;
            }
          }
        }

        goto LABEL_80;
      }

      if (v14)
      {
        if (v14 != 1)
        {
          OUTLINED_FUNCTION_18();
          while (1)
          {
            OUTLINED_FUNCTION_4_0();
            if (!v21 & v20)
            {
              break;
            }

            OUTLINED_FUNCTION_11();
            if (!v21)
            {
              break;
            }

            v19 = v29 - v28;
            if (v29 < v28)
            {
              break;
            }

            OUTLINED_FUNCTION_10_0();
            if (v21)
            {
              goto LABEL_81;
            }
          }
        }

        goto LABEL_80;
      }

LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
    }

    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    OUTLINED_FUNCTION_0_1();
    goto LABEL_108;
  }

  if ((v4 & 0x1000000000000000) == 0)
  {
    goto LABEL_112;
  }

  for (i = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_2237B617C())
  {
    v18 = *i;
    if (v18 == 43)
    {
      if (v15 < 1)
      {
        goto LABEL_115;
      }

      if (v15 != 1)
      {
        v19 = 0;
        if (!i)
        {
          goto LABEL_71;
        }

        while (1)
        {
          OUTLINED_FUNCTION_4_0();
          if (!v21 & v20)
          {
            break;
          }

          OUTLINED_FUNCTION_11();
          if (!v21)
          {
            break;
          }

          v19 = v31 + v30;
          if (__CFADD__(v31, v30))
          {
            break;
          }

          OUTLINED_FUNCTION_10_0();
          if (v21)
          {
            goto LABEL_81;
          }
        }
      }
    }

    else if (v18 == 45)
    {
      if (v15 < 1)
      {
        __break(1u);
        goto LABEL_114;
      }

      if (v15 != 1)
      {
        v19 = 0;
        if (!i)
        {
          goto LABEL_71;
        }

        while (1)
        {
          OUTLINED_FUNCTION_4_0();
          if (!v21 & v20)
          {
            break;
          }

          OUTLINED_FUNCTION_11();
          if (!v21)
          {
            break;
          }

          v19 = v23 - v22;
          if (v23 < v22)
          {
            break;
          }

          OUTLINED_FUNCTION_10_0();
          if (v21)
          {
            goto LABEL_81;
          }
        }
      }
    }

    else if (v15)
    {
      v19 = 0;
      if (!i)
      {
LABEL_71:
        v24 = 0;
        goto LABEL_81;
      }

      while (1)
      {
        v34 = *i - 48;
        if (v34 > 9)
        {
          break;
        }

        v35 = 10 * v19;
        if ((v35 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        v19 = v35 + v34;
        if (__CFADD__(v35, v34))
        {
          break;
        }

        ++i;
        if (!--v15)
        {
          goto LABEL_71;
        }
      }
    }

LABEL_80:
    v19 = 0;
    v24 = 1;
LABEL_81:
    LOBYTE(v64) = v24;
    if (v24)
    {
      goto LABEL_82;
    }

LABEL_88:
    if (v5[2] >= 2uLL)
    {
      break;
    }

    __break(1u);
LABEL_112:
    ;
  }

  v45 = v5[6];
  v46 = v5[7];

  v47 = sub_223769010(v45, v46);
  if ((v47 & 0x100000000) != 0)
  {

    if (qword_28131A9F8 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v54 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v54, qword_28131B530);

    v39 = sub_2237B5C8C();
    v40 = sub_2237B5FFC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_20();
      v42 = OUTLINED_FUNCTION_19_0();
      v65 = v42;
      *v41 = 136315138;
      *(v41 + 4) = OUTLINED_FUNCTION_12_0(v42, v55);
      v44 = "Failed to convert minor version to UInt for version=%s";
      goto LABEL_101;
    }

    goto LABEL_103;
  }

  v48 = v47;
  if (v6 != 2)
  {
    if (v5[2] < 3uLL)
    {
      goto LABEL_117;
    }

    v49 = v5[8];
    v50 = v5[9];

    v51 = sub_223769010(v49, v50);
    if ((v51 & 0x100000000) == 0)
    {
      [v2 setPatch:v51];
      goto LABEL_94;
    }

    if (qword_28131A9F8 != -1)
    {
      goto LABEL_119;
    }

LABEL_108:
    v57 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v57, qword_28131B530);

    v39 = sub_2237B5C8C();
    v58 = sub_2237B5FFC();

    if (os_log_type_enabled(v39, v58))
    {
      v59 = OUTLINED_FUNCTION_20();
      v60 = OUTLINED_FUNCTION_19_0();
      v65 = v60;
      *v59 = 136315138;
      v61 = v5[8];
      v62 = v5[9];

      v63 = sub_223763694(v61, v62, &v65);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_22375F000, v39, v58, "Malformed value for patch=%s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
      OUTLINED_FUNCTION_8();
      goto LABEL_102;
    }

    goto LABEL_103;
  }

LABEL_94:
  [v2 setMajor:v19, v64];
  [v2 setMinor:v48];
  if (v6 == 4)
  {
    if (v5[2] < 4uLL)
    {
      goto LABEL_118;
    }

    v52 = v5[10];
    v53 = v5[11];

    sub_223769350(v52, v53, v2, &selRef_setPrerelease_);
  }

  else
  {
  }

  return v2;
}

unint64_t sub_223768F34()
{
  result = qword_28131A830;
  if (!qword_28131A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131A830);
  }

  return result;
}

void OUTLINED_FUNCTION_13_1()
{

  JUMPOUT(0x223DEB690);
}

void OUTLINED_FUNCTION_13_5()
{

  JUMPOUT(0x223DEB690);
}

uint64_t OUTLINED_FUNCTION_13_6()
{

  return sub_2237B618C();
}

uint64_t sub_223769010(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    v26 = 0;
    LOBYTE(v25) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v25;
    return v26 | ((v25 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v7 = sub_223779500(result, a2, 10);

    v25 = (v7 >> 32) & 1;
LABEL_63:
    v26 = v7;
    if (v25)
    {
      v26 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_2237B617C();
    }

    v6 = *result;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          LODWORD(v7) = 0;
          if (result)
          {
            v14 = (result + 1);
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_61;
              }

              v16 = 10 * v7;
              if ((v16 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v7) = v16 + v15;
              if (__CFADD__(v16, v15))
              {
                goto LABEL_61;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v6 != 45)
    {
      if (v4)
      {
        LODWORD(v7) = 0;
        if (result)
        {
          while (1)
          {
            v20 = *result - 48;
            if (v20 > 9)
            {
              goto LABEL_61;
            }

            v21 = 10 * v7;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v7) = v21 + v20;
            if (__CFADD__(v21, v20))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LODWORD(v7) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v4 >= 1)
    {
      v3 = v4 - 1;
      if (v4 != 1)
      {
        LODWORD(v7) = 0;
        if (result)
        {
          v8 = (result + 1);
          while (1)
          {
            v9 = *v8 - 48;
            if (v9 > 9)
            {
              goto LABEL_61;
            }

            v10 = 10 * v7;
            if ((v10 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v7) = v10 - v9;
            if (v10 < v9)
            {
              goto LABEL_61;
            }

            ++v8;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v25) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        LODWORD(v7) = 0;
        v22 = v27;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v7;
          if ((v24 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v7) = v24 + v23;
          if (__CFADD__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3)
    {
      if (--v3)
      {
        LODWORD(v7) = 0;
        v11 = v27 + 1;
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            break;
          }

          v13 = 10 * v7;
          if ((v13 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v7) = v13 - v12;
          if (v13 < v12)
          {
            break;
          }

          ++v11;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v3)
  {
    if (--v3)
    {
      LODWORD(v7) = 0;
      v17 = v27 + 1;
      while (1)
      {
        v18 = *v17 - 48;
        if (v18 > 9)
        {
          break;
        }

        v19 = 10 * v7;
        if ((v19 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v7) = v19 + v18;
        if (__CFADD__(v19, v18))
        {
          break;
        }

        ++v17;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_2237692F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_223769350(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_2237B5E1C();

  [a3 *a4];
}

uint64_t sub_2237693BC(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return MEMORY[0x2821FC280](v2 > 1);
  }

  return result;
}

uint64_t sub_223769410(void *a1)
{
  v3 = *(v1 + 16);
  swift_unownedRetainStrong();
  LOBYTE(a1) = sub_2237654A4(a1);

  return a1 & 1;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2237694E4()
{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E88, &qword_2237B9488);
  return sub_2237B606C();
}

uint64_t OUTLINED_FUNCTION_23(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t sub_223769618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_22376504C();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

double sub_223769668@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_17_0();
  v3 = *(v1 + 48);
  if (*(v3 + 16))
  {

    sub_223765288();
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);

      v7 = *(v6 + OBJC_IVAR____TtC14SiriMessageBus7Session_conversationSession);

      *(a1 + 24) = type metadata accessor for ConversationSession();
      *(a1 + 32) = sub_2237651DC(&unk_28131B000, type metadata accessor for ConversationSession);
      *a1 = v7;
      return result;
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_223769760@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  return sub_223769668(a1);
}

uint64_t OUTLINED_FUNCTION_229()
{
  v2 = *(v0 - 192);
  v3 = *(v0 - 168);

  return sub_2237B60FC();
}

uint64_t OUTLINED_FUNCTION_235(uint64_t a1)
{
  *(v3 - 168) = a1;
  v4 = *(v1 + 8);
  return v2;
}

void sub_2237697FC()
{
  OUTLINED_FUNCTION_20_6();
  v1 = v0;
  v3 = v2;
  v156 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_2237B412C();
  v160 = OUTLINED_FUNCTION_0_2(v9);
  v161 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v160);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  v163 = sub_2237B563C();
  v16 = OUTLINED_FUNCTION_0_2(v163);
  v159 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v157 = v20 - v21;
  v23 = MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_29_2(v23, v24, v25, v26, v27, v28, v29, v30, v147);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E70, &qword_2237B9470);
  OUTLINED_FUNCTION_1(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v34);
  v36 = &v147 - v35;
  v37 = sub_2237B40DC();
  v38 = OUTLINED_FUNCTION_0_2(v37);
  v155 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3();
  v44 = (v42 - v43);
  MEMORY[0x28223BE20](v45);
  v47 = &v147 - v46;
  OUTLINED_FUNCTION_38_0();
  v48 = v1[5];

  v158 = v8;
  v49 = v8;
  v50 = v6;
  v51 = sub_223769618(v49, v6, v48);

  if (!v51)
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v64 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v64, qword_28131B550);
    v65 = sub_2237B5C8C();
    v66 = sub_2237B5FFC();
    if (OUTLINED_FUNCTION_5(v66))
    {
      v67 = OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_4_4(v67);
      OUTLINED_FUNCTION_33();
      _os_log_impl(v68, v69, v70, v71, v72, 2u);
      OUTLINED_FUNCTION_3_0();
    }

    goto LABEL_50;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v94 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v94, qword_28131B550);
    v95 = sub_2237B5C8C();
    v96 = sub_2237B601C();
    if (OUTLINED_FUNCTION_5(v96))
    {
      v97 = OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_4_4(v97);
      OUTLINED_FUNCTION_33();
      _os_log_impl(v98, v99, v100, v101, v102, 2u);
      OUTLINED_FUNCTION_3_0();
    }

    type metadata accessor for Session();
    OUTLINED_FUNCTION_1_8();
    sub_2237651DC(v103, v104);
    v105 = sub_2237B5DBC();
    OUTLINED_FUNCTION_38_0();
    v106 = v1[6];
    v1[6] = v105;

    v107 = v1[8];
    v1[7] = 0;
    v1[8] = 0;

    v108 = sub_2237B5DBC();

    v109 = v1[5];
    v1[5] = v108;

    goto LABEL_50;
  }

  v153 = Strong;
  v154 = v51;
  if ((v3 & 1) != 0 || v156 <= 0.0)
  {
    v73 = v159;
    v74 = *(v51 + OBJC_IVAR____TtC14SiriMessageBus7Session_conversationSession) + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionType;
    v155 = *(v159 + 16);
    *&v156 = v159 + 16;
    (v155)(v162, v74, v163);
    v75 = v161;
    v76 = *(v161 + 16);
    v150 = OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId;
    v77 = v160;
    v152 = v76;
    v76(v15, v51 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v160);
    OUTLINED_FUNCTION_19_6();
    sub_22376A5A0();
    v78 = *(v75 + 8);
    v161 = v75 + 8;
    v151 = v78;
    v78(v15, v77);
    swift_endAccess();

    OUTLINED_FUNCTION_19_6();
    v79 = v158;
    sub_22376A6E0();
    swift_endAccess();

    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v80 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v80, qword_28131B550);
    swift_retain_n();

    v149 = v1 + 5;
    v81 = sub_2237B5C8C();
    v82 = sub_2237B5FEC();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = v51;
      v84 = OUTLINED_FUNCTION_19_0();
      v148 = swift_slowAlloc();
      v164[0] = v148;
      *v84 = 136315650;
      v85 = v79;
      v86 = v160;
      v152(v15, v83 + v150, v160);
      OUTLINED_FUNCTION_1_8();
      sub_2237651DC(v87, v88);
      v89 = sub_2237B627C();
      v91 = v90;
      v151(v15, v86);
      v92 = sub_223763694(v89, v91, v164);

      *(v84 + 4) = v92;
      *(v84 + 12) = 2080;
      *(v84 + 14) = sub_223763694(v85, v50, v164);
      *(v84 + 22) = 2048;
      v93 = *(v1[6] + 16);

      *(v84 + 24) = v93;

      _os_log_impl(&dword_22375F000, v81, v82, "Remove session id: %s for assistantId: %s, remaining sessions: %ld", v84, 0x20u);
      swift_arrayDestroy();
      v73 = v159;
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_8();
    }

    else
    {
    }

    v110 = v157;
    v111 = v163;
    (v155)(v157, v162, v163);
    v112 = (*(v73 + 88))(v110, v111);
    if (v112 == *MEMORY[0x277D5D258])
    {
      MEMORY[0x28223BE20](v112);
      OUTLINED_FUNCTION_8_8();
      *(v113 - 16) = v154;
      v114 = objc_allocWithZone(sub_2237B433C());
      v115 = sub_2237B432C();
      if (!v115)
      {

        v116 = OUTLINED_FUNCTION_39_1();
        v117 = sub_2237B5FFC();

        if (os_log_type_enabled(v116, v117))
        {
          goto LABEL_47;
        }

        goto LABEL_48;
      }
    }

    else
    {
      v118 = v154;
      if (v112 == *MEMORY[0x277D5D260])
      {
        MEMORY[0x28223BE20](v112);
        OUTLINED_FUNCTION_8_8();
        *(v119 - 16) = v118;
        v120 = objc_allocWithZone(sub_2237B4D0C());
        v115 = sub_2237B432C();
        if (!v115)
        {

          v116 = OUTLINED_FUNCTION_39_1();
          v121 = sub_2237B5FFC();

          if (os_log_type_enabled(v116, v121))
          {
            goto LABEL_47;
          }

          goto LABEL_48;
        }
      }

      else
      {
        if (v112 != *MEMORY[0x277D5D250])
        {
          v129 = OUTLINED_FUNCTION_39_1();
          v130 = sub_2237B5FFC();
          if (OUTLINED_FUNCTION_5(v130))
          {
            v131 = OUTLINED_FUNCTION_7_3();
            OUTLINED_FUNCTION_4_4(v131);
            OUTLINED_FUNCTION_33();
            _os_log_impl(v132, v133, v134, v135, v136, 2u);
            OUTLINED_FUNCTION_3_0();
          }

          else
          {
          }

          v137 = *(v73 + 8);
          v138 = v163;
          v137(v162, v163);
          v137(v110, v138);
          goto LABEL_50;
        }

        MEMORY[0x28223BE20](v112);
        OUTLINED_FUNCTION_8_8();
        *(v122 - 16) = v118;
        v123 = objc_allocWithZone(sub_2237B513C());
        v115 = sub_2237B432C();
        if (!v115)
        {

          v116 = OUTLINED_FUNCTION_39_1();
          v139 = sub_2237B5FFC();

          if (os_log_type_enabled(v116, v139))
          {
LABEL_47:
            v140 = OUTLINED_FUNCTION_20();
            v141 = OUTLINED_FUNCTION_19_0();
            v164[0] = v141;
            *(v140 + 4) = OUTLINED_FUNCTION_12_6(4.8149e-34);
            OUTLINED_FUNCTION_33();
            _os_log_impl(v142, v143, v144, v145, v146, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v141);
            OUTLINED_FUNCTION_8();
            OUTLINED_FUNCTION_3_0();

            goto LABEL_49;
          }

LABEL_48:

          goto LABEL_49;
        }
      }
    }

    v124 = v115;
    sub_2237654A4(v115);

LABEL_49:

    (*(v73 + 8))(v162, v163);
    goto LABEL_50;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v53 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v53, qword_28131B550);

  v54 = sub_2237B5C8C();
  v55 = sub_2237B5FEC();

  v56 = v37;
  if (os_log_type_enabled(v54, v55))
  {
    v57 = OUTLINED_FUNCTION_25_0();
    v58 = OUTLINED_FUNCTION_19_0();
    v164[0] = v58;
    *v57 = 136315394;
    *(v57 + 4) = sub_223763694(v158, v50, v164);
    *(v57 + 12) = 2048;
    *(v57 + 14) = v156;
    _os_log_impl(&dword_22375F000, v54, v55, "Asked to endSession for assistantId: %s with a delay of %f seconds, so not ending it now", v57, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    OUTLINED_FUNCTION_8();
    v56 = v37;
    OUTLINED_FUNCTION_8();
  }

  sub_2237B40CC();
  sub_2237B409C();
  v59 = v155;
  v163 = *(v155 + 8);
  v163(v44, v56);
  v60 = OBJC_IVAR____TtC14SiriMessageBus7Session_expirationTime;
  v61 = v154;
  OUTLINED_FUNCTION_19_6();
  (*(v59 + 40))(v61 + v60, v47, v56);
  swift_endAccess();
  v62 = OBJC_IVAR____TtC14SiriMessageBus15SessionsManager_nextExpirationTaskTimeCheck;
  OUTLINED_FUNCTION_17_0();
  sub_2237B2754(v1 + v62, v36);
  if (__swift_getEnumTagSinglePayload(v36, 1, v56))
  {
    sub_2237B27C4(v36);
    v63 = v163;
  }

  else
  {
    v125 = *(v59 + 16);
    v125(v47, v36, v56);
    sub_2237B27C4(v36);
    v125(v44, (v61 + v60), v56);
    v59 = v155;
    sub_2237B40BC();
    v127 = v126;
    v63 = v163;
    v163(v44, v56);
    v63(v47, v56);
    if (v127 > 0.0)
    {

      goto LABEL_50;
    }
  }

  if (*(v1 + OBJC_IVAR____TtC14SiriMessageBus15SessionsManager_expirationScheduleTask))
  {
    v128 = *(v1 + OBJC_IVAR____TtC14SiriMessageBus15SessionsManager_expirationScheduleTask);

    sub_2237B5D4C();
  }

  (*(v59 + 16))(v47, v154 + v60, v56);
  sub_223766C20();

  v63(v47, v56);
LABEL_50:
  OUTLINED_FUNCTION_21_5();
}

uint64_t sub_22376A5A0()
{
  v1 = v0;
  v2 = *v0;
  sub_223765288();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v7 = *(*v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E80, &qword_2237B9480);
  sub_2237B618C();
  v8 = *(v12 + 48);
  v9 = sub_2237B412C();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v12 + 56) + 8 * v5);
  type metadata accessor for Session();
  sub_2237651DC(&qword_28131B4E0, MEMORY[0x277CC95F0]);
  sub_2237B619C();
  *v1 = v12;
  return v10;
}

uint64_t sub_22376A6E0()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_22376504C();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *v1;
  v7 = *(*v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E78, &qword_2237B9478);
  sub_2237B618C();
  v8 = *(*(v11 + 48) + 16 * v5 + 8);

  v9 = *(*(v11 + 56) + 8 * v5);
  type metadata accessor for Session();
  sub_2237B619C();
  *v1 = v11;
  return v9;
}

uint64_t sub_22376A7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  OUTLINED_FUNCTION_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  v17 = *MEMORY[0x277D5CDC8];
  v18 = sub_2237B540C();
  OUTLINED_FUNCTION_4(v18);
  (*(v19 + 104))(v16, v17, v18);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v18);
  sub_2237B538C();

  sub_2237B537C();
  v20 = OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId;
  v21 = sub_2237B412C();
  OUTLINED_FUNCTION_4(v21);
  (*(v22 + 16))(v10, a4 + v20, v21);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v21);
  return sub_2237B539C();
}

uint64_t sub_22376A984()
{
  sub_22376A9DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22376A9DC()
{
  v1 = OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId;
  v2 = sub_2237B412C();
  OUTLINED_FUNCTION_4(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC14SiriMessageBus7Session_assistantId + 8);

  v5 = *(v0 + OBJC_IVAR____TtC14SiriMessageBus7Session_transactionName + 8);

  v6 = *(v0 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionTransaction);
  swift_unknownObjectRelease();
  v7 = OBJC_IVAR____TtC14SiriMessageBus7Session_lastAccessedTime;
  v8 = sub_2237B40DC();
  OUTLINED_FUNCTION_4(v8);
  v10 = *(v9 + 8);
  v10(v0 + v7, v8);
  v10(v0 + OBJC_IVAR____TtC14SiriMessageBus7Session_expirationTime, v8);
  v11 = *(v0 + OBJC_IVAR____TtC14SiriMessageBus7Session_conversationSession);

  v12 = OBJC_IVAR____TtC14SiriMessageBus7Session_userSessionState;
  v13 = sub_2237B551C();
  OUTLINED_FUNCTION_4(v13);
  (*(v14 + 8))(v0 + v12);
  return v0;
}

void sub_22376AB1C(void *a1, char a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = sub_22376AC64(a2);
  v10 = (*(v8 + 8))(v9);

  v11 = sub_223767CB4(v10);
  for (i = 0; ; ++i)
  {
    if (v11 == i)
    {

      return;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x223DEADA0](i, v10);
    }

    else
    {
      if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v13 = *(v10 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = MEMORY[0x223DEB0D0]();
    sub_223767CBC(v14, a2, a3, a4);
    if (v5)
    {
      goto LABEL_13;
    }

    v5 = 0;
    objc_autoreleasePoolPop(v7);
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  objc_autoreleasePoolPop(v7);
  __break(1u);
}

unint64_t sub_22376AC64(char a1)
{
  result = 0xD000000000000015;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    case 4:
    case 6:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

void sub_22376AD50()
{
  OUTLINED_FUNCTION_16_3();
  v22 = v1;
  v23 = v2;
  v21 = v3;
  v5 = v4;
  v19 = v6;
  v8 = v7(0);
  OUTLINED_FUNCTION_0_2(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  v24 = v0 + 64;
  v20 = v0;
  v16 = ~(-1 << *(v0 + 32));
  for (i = v5 & v16; ((1 << i) & *(v24 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v16)
  {
    (*(v10 + 16))(v15, *(v20 + 48) + *(v10 + 72) * i, v8);
    sub_2237651DC(v21, v22);
    v18 = sub_2237B5E0C();
    (*(v10 + 8))(v15, v8);
    if (v18)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_22376AEC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_22376AF24(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22376B024(a5, a6);
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
    result = sub_2237B617C();
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

uint64_t sub_22376B024(uint64_t a1, unint64_t a2)
{
  v4 = sub_223767B00(a1, a2);
  sub_22376B070(&unk_2836D1888);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22376B070(uint64_t result)
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

    result = sub_2237B15B8(result, v8, 1, v3);
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

void sub_22376B158(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  if (qword_28131A9F8 != -1)
  {
LABEL_11:
    swift_once();
  }

  v6 = sub_2237B5C9C();
  __swift_project_value_buffer(v6, qword_28131B530);
  v7 = sub_2237B5C8C();
  v8 = sub_2237B5FEC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22375F000, v7, v8, "Requesting asset factors for logging from Trial client", v9, 2u);
    MEMORY[0x223DEB690](v9, -1, -1);
  }

  sub_2237791F4(v15);
  v16 = MEMORY[0x277D84F90];
  v10 = sub_22376C77C();
  v11 = 0;
  v12 = *(v10 + 2);
  while (1)
  {
    if (v12 == v11)
    {

      *a2 = v16;
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      return;
    }

    if (v11 >= *(v10 + 2))
    {
      __break(1u);
      goto LABEL_11;
    }

    v13 = v10[v11 + 32];
    v14 = MEMORY[0x223DEB0D0]();
    sub_22376AB1C(v15, v13, a1, &v16);
    if (v3)
    {
      break;
    }

    v3 = 0;
    ++v11;
    objc_autoreleasePoolPop(v14);
  }

  objc_autoreleasePoolPop(v14);
  __break(1u);
}

uint64_t sub_22376B30C(_DWORD *a1)
{
  v116 = sub_2237B5CCC();
  v3 = OUTLINED_FUNCTION_0_2(v116);
  v124 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_4();
  v115 = v7;
  OUTLINED_FUNCTION_12();
  v114 = sub_2237B5D0C();
  v8 = OUTLINED_FUNCTION_0_2(v114);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_4();
  v113 = v13;
  OUTLINED_FUNCTION_12();
  v122 = sub_2237B412C();
  v14 = OUTLINED_FUNCTION_0_2(v122);
  v109 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_4();
  v110 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097988, &qword_2237B8328);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v103 - v21;
  OUTLINED_FUNCTION_12();
  v119 = sub_2237B5C7C();
  v23 = OUTLINED_FUNCTION_0_2(v119);
  v126 = v24;
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v23);
  v112 = v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_20_0();
  v125 = v29;
  v123 = v30;
  MEMORY[0x28223BE20](v31);
  v33 = v103 - v32;
  ObjectType = swift_getObjectType();
  aBlock = ObjectType;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097458, &qword_2237B7938);
  v34 = sub_2237B5E3C();
  v36 = v35;
  v118 = sub_223761B80();
  sub_2237B573C();
  OUTLINED_FUNCTION_17_0();
  v37 = *(v1 + 40);

  v38 = sub_22376C774(v34);

  v121 = v38;
  if (v38)
  {
  }

  else
  {
    v135 = MEMORY[0x277D84F90];
    v134 = MEMORY[0x277D84FA0];
    v130 = sub_2237B53EC();
    aBlock = a1;
    v39 = a1;
    sub_2237B638C();
    v40 = sub_2237B63AC();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v40);
    sub_2237769B4(v22, &v134, &v135);
    sub_223777F4C(v22);

    v41 = v135;
    swift_beginAccess();

    v42 = *(v1 + 40);
    swift_isUniquelyReferenced_nonNull_native();
    v133 = *(v1 + 40);
    v121 = v41;
    sub_223777FC0(v41, v34, v36);
    *(v1 + 40) = v133;

    swift_endAccess();
  }

  v120 = *(v121 + 16);
  if (v120)
  {
    if (qword_28131AA10 != -1)
    {
LABEL_25:
      OUTLINED_FUNCTION_0_4();
    }

    v43 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v43, qword_28131B550);
    v44 = a1;
    v45 = sub_2237B5C8C();
    v46 = sub_2237B5FEC();

    v47 = os_log_type_enabled(v45, v46);
    v110 = v44;
    v103[0] = v33;
    if (v47)
    {
      v48 = swift_slowAlloc();
      a1 = swift_slowAlloc();
      aBlock = a1;
      *v48 = 136315138;
      v49 = [v44 debugDescription];
      v50 = v10;
      v51 = sub_2237B5E2C();
      v53 = v52;

      v44 = v110;
      v54 = sub_223763694(v51, v53, &aBlock);

      *(v48 + 4) = v54;
      v10 = v50;
      _os_log_impl(&dword_22375F000, v45, v46, "Posting following message to bus %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(a1);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_8();
    }

    v33 = 0;
    v109 = v126 + 16;
    v108 = v123 + 7;
    v107 = v126 + 32;
    v106 = &v129;
    v105 = (v124 + 8);
    v104 = (v10 + 8);
    v103[1] = v126 + 8;
    v55 = (v121 + 40);
    v56 = v119;
    do
    {
      if (v33 >= *(v121 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v58 = *(v55 - 1);
      v57 = *v55;
      swift_getObjectType();
      v59 = dynamic_cast_existential_1_conditional(v58);
      if (v59)
      {
        v61 = v59;
        v62 = v60;
        swift_getObjectType();
        v63 = *(v62 + 8);
        swift_unknownObjectRetain();
        OUTLINED_FUNCTION_22();
        aBlock = sub_2237B568C();
        v128 = v64;
        MEMORY[0x223DEAAD0](58, 0xE100000000000000);
        v135 = ObjectType;
        v65 = sub_2237B5E3C();
        MEMORY[0x223DEAAD0](v65);

        v122 = v58;
        v66 = v125;
        sub_2237B573C();

        v123 = sub_2237B555C();
        v67 = v126;
        v68 = v112;
        (*(v126 + 16))(v112, v66, v56);
        v69 = v67;
        v70 = (*(v67 + 80) + 16) & ~*(v67 + 80);
        v71 = (v108 + v70) & 0xFFFFFFFFFFFFFFF8;
        v124 = v33;
        v72 = swift_allocObject();
        v73 = v72 + v70;
        v74 = v68;
        v75 = MEMORY[0x277D84F90];
        v44 = v110;
        (*(v69 + 32))(v73, v74, v56);
        v76 = (v72 + v71);
        *v76 = v61;
        v76[1] = v62;
        *(v72 + ((v71 + 23) & 0xFFFFFFFFFFFFFFF8)) = v44;
        v131 = sub_22376C06C;
        v132 = v72;
        aBlock = MEMORY[0x277D85DD0];
        v128 = 1107296256;
        v129 = sub_2237639EC;
        v130 = &block_descriptor_0;
        v77 = _Block_copy(&aBlock);
        v78 = v44;
        swift_unknownObjectRetain();
        v10 = v113;
        sub_2237B5CEC();
        v135 = v75;
        OUTLINED_FUNCTION_5_2();
        a1 = sub_223765194(&qword_28131A840, v79);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C90, qword_2237B7940);
        sub_223765224();
        v80 = v115;
        v81 = v116;
        sub_2237B60FC();
        v82 = v123;
        MEMORY[0x223DEACD0](0, v10, v80, v77);
        _Block_release(v77);

        v83 = v80;
        v33 = v124;
        (*v105)(v83, v81);
        (*v104)(v10, v114);
        (*(v126 + 8))(v125, v56);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_getObjectType();
        if (dynamic_cast_existential_1_conditional(v58))
        {
          v85 = v84;
          a1 = swift_getObjectType();
          v10 = *(v85 + 8);
          swift_unknownObjectRetain();
          sub_2237B564C();
        }

        else
        {
          swift_getObjectType();
          v86 = swift_unknownObjectRetain();
          sub_22376C158(v86, v44);
        }

        swift_unknownObjectRelease();
      }

      ++v33;
      v55 += 2;
    }

    while (v120 != v33);

    v33 = v103[0];
  }

  else
  {

    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v87 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v87, qword_28131B550);
    v88 = a1;
    v89 = sub_2237B5C8C();
    v90 = sub_2237B601C();

    if (os_log_type_enabled(v89, v90))
    {
      OUTLINED_FUNCTION_25_0();
      aBlock = OUTLINED_FUNCTION_15_1();
      *a1 = 136446466;
      v91 = sub_2237B63FC();
      v93 = sub_223763694(v91, v92, &aBlock);

      *(a1 + 1) = v93;
      *(a1 + 6) = 2082;
      v94 = v110;
      sub_2237B53DC();
      OUTLINED_FUNCTION_1_4();
      sub_223765194(v95, v96);
      v97 = v122;
      v98 = sub_2237B627C();
      v100 = v99;
      (*(v109 + 8))(v94, v97);
      v101 = sub_223763694(v98, v100, &aBlock);

      *(a1 + 14) = v101;
      _os_log_impl(&dword_22375F000, v89, v90, "There is no bridge that registered to consume message type %{public}s and message id: %{public}s", a1, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_10();
    }
  }

  sub_2237B572C();
  return (*(v126 + 8))(v33, v119);
}

uint64_t sub_22376BF38()
{
  v1 = sub_2237B5C7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_22376BFE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_223761B80();
  sub_2237B572C();
  swift_getObjectType();
  v7 = *(a3 + 8);

  return sub_22376C158(a2, a4);
}

uint64_t sub_22376C06C()
{
  v1 = *(sub_2237B5C7C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  return sub_22376BFE4(v0 + v2, v6, v7, v8);
}

uint64_t sub_22376C108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_22376504C();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_22376C158(uint64_t a1, void *a2)
{
  v3 = sub_2237B412C();
  v37 = OUTLINED_FUNCTION_0_2(v3);
  v38 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = sub_2237B5C7C();
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v39 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v17 = v16 - v15;
  v40[0] = sub_2237B568C();
  v40[1] = v18;
  MEMORY[0x223DEAAD0](58, 0xE100000000000000);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097458, &qword_2237B7938);
  v19 = sub_2237B5E3C();
  MEMORY[0x223DEAAD0](v19);

  sub_223761B80();
  sub_2237B573C();

  if (qword_28131AA10 != -1)
  {
    swift_once();
  }

  v20 = sub_2237B5C9C();
  __swift_project_value_buffer(v20, qword_28131B550);
  v21 = a2;
  swift_unknownObjectRetain();
  v22 = sub_2237B5C8C();
  v23 = sub_2237B601C();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v40[0] = v36;
    *v24 = 136446722;
    sub_2237B53DC();
    sub_223765104(&qword_28131B4D0, MEMORY[0x277CC95F0]);
    v25 = sub_2237B627C();
    v27 = v26;
    (*(v38 + 8))(v9, v37);
    v28 = sub_223763694(v25, v27, v40);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    v29 = sub_2237B63FC();
    v31 = sub_223763694(v29, v30, v40);

    *(v24 + 14) = v31;
    *(v24 + 22) = 2082;
    v32 = sub_2237B568C();
    v34 = sub_223763694(v32, v33, v40);

    *(v24 + 24) = v34;
    _os_log_impl(&dword_22375F000, v22, v23, "Posting messageId: %{public}s of type %{public}s to bridge %{public}s", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DEB690](v36, -1, -1);
    MEMORY[0x223DEB690](v24, -1, -1);
  }

  sub_2237B564C();
  sub_2237B572C();
  return (*(v39 + 8))(v17, v10);
}

uint64_t OUTLINED_FUNCTION_73(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2080;
}

BOOL OUTLINED_FUNCTION_28()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_22376C630()
{
  v1 = *(sub_2237B5C7C() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_22376C6D8(v0 + v4, v0 + v5, v7, v8);
}

uint64_t sub_22376C6D8(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  sub_223761B80();
  sub_2237B572C();
  sub_2237B572C();
  return sub_22376B30C(a4);
}

unsigned __int8 *sub_22376C77C()
{
  if (*(v0 + 33) == 1)
  {
    v1 = 0;
    v2 = MEMORY[0x277D84F90];
    do
    {
      v3 = byte_2836D1860[v1 + 32];
      if (v3 > 7 || ((1 << v3) & 0x8C) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_223779F04(0, *(v2 + 16) + 1, 1);
        }

        v6 = *(v2 + 16);
        v5 = *(v2 + 24);
        if (v6 >= v5 >> 1)
        {
          sub_223779F04(v5 > 1, v6 + 1, 1);
        }

        *(v2 + 16) = v6 + 1;
        *(v2 + v6 + 32) = v3;
      }

      ++v1;
    }

    while (v1 != 8);
  }

  else if (*(v0 + 32))
  {
    return byte_2836D1860;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_22376C89C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22376C938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097CE0, &unk_2237B9290);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v22 - v15;
  v17 = *MEMORY[0x277D5CDC8];
  v18 = sub_2237B540C();
  (*(*(v18 - 8) + 104))(v16, v17, v18);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v18);
  sub_2237B44CC();
  v19 = sub_2237B412C();
  (*(*(v19 - 8) + 16))(v12, a2, v19);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v19);
  sub_2237B44DC();
  v20 = sub_2237B559C();
  (*(*(v20 - 8) + 16))(v8, a3, v20);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v20);
  return sub_2237B44BC();
}

uint64_t sub_22376CBEC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22376CC24()
{
  v1 = *v0;
  v2 = MEMORY[0x223DEB0D0]();
  sub_22376B158(v0, &v4);
  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t sub_22376CCB8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = sub_2237B412C();
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a1(v4, v5);
}

uint64_t sub_22376CD2C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_2237B412C();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_currentSessionId;
  swift_beginAccess();
  sub_22376CE70(v6, v1 + v8);
  swift_endAccess();
  v9 = sub_22376CC24();
  v10 = *(v1 + OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_assetsForLogging);
  *(v1 + OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_assetsForLogging) = v9;
}

uint64_t sub_22376CE70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_88()
{
  v2 = v0[2];
  result = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  return result;
}

void OUTLINED_FUNCTION_22_0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x223DEB690);
}

uint64_t OUTLINED_FUNCTION_22_1()
{

  return swift_isEscapingClosureAtFileLocation();
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = sub_2237B5C7C();
  OUTLINED_FUNCTION_4(v1);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);
  v9 = *(v0 + v8 + 8);

  return MEMORY[0x2821FE8E8](v0, ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v4 | 7);
}

void sub_22376D090()
{
  v1 = sub_2237B412C();
  OUTLINED_FUNCTION_270(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  OUTLINED_FUNCTION_268();
  v9 = *(v0 + 16);
  v11 = (v0 + v10);
  v12 = *v11;
  v13 = v11[1];

  sub_22376D8E0(v9, v0 + v8, v12, v13);
}

void sub_22376D114(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = v4;
  v79 = a2;
  v80 = a3;
  v7 = sub_2237B412C();
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v87 = v13;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v78 = &v76[-v15];
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  v83 = &v76[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097340, &qword_2237B77F8);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v76[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  OUTLINED_FUNCTION_2();
  v82 = v25;
  OUTLINED_FUNCTION_7();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v76[-v28];
  MEMORY[0x28223BE20](v27);
  v31 = &v76[-v30];
  v32 = OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_currentSessionId;
  swift_beginAccess();
  v33 = *(v10 + 16);
  v84 = a1;
  v86 = v33;
  v33(v31, a1, v3);
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v3);
  v34 = *(v19 + 56);
  v81 = v32;
  sub_22376D910(v5 + v32, v22);
  sub_22376D910(v31, &v22[v34]);
  OUTLINED_FUNCTION_3_1(v22);
  v85 = v10;
  if (!v36)
  {
    sub_22376D910(v22, v29);
    OUTLINED_FUNCTION_3_1(&v22[v34]);
    if (!v36)
    {
      (*(v10 + 32))(v83, &v22[v34], v3);
      OUTLINED_FUNCTION_6(&qword_28131B4D8);
      v77 = sub_2237B5E0C();
      v39 = *(v10 + 8);
      v40 = OUTLINED_FUNCTION_14();
      v39(v40);
      sub_2237692F0(v31, &qword_27D097A50, &unk_2237B7800);
      v41 = OUTLINED_FUNCTION_16();
      v39(v41);
      v35 = v87;
      sub_2237692F0(v22, &qword_27D097A50, &unk_2237B7800);
      if ((v77 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    sub_2237692F0(v31, &qword_27D097A50, &unk_2237B7800);
    OUTLINED_FUNCTION_15();
    v37 = OUTLINED_FUNCTION_16();
    v38(v37);
    v35 = v87;
LABEL_9:
    sub_2237692F0(v22, &unk_27D097340, &qword_2237B77F8);
    goto LABEL_14;
  }

  sub_2237692F0(v31, &qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_3_1(&v22[v34]);
  v35 = v87;
  if (!v36)
  {
    goto LABEL_9;
  }

  sub_2237692F0(v22, &qword_27D097A50, &unk_2237B7800);
LABEL_11:
  if (*(v5 + OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_assetsForLogging))
  {
    if (sub_223767CB4(*(v5 + OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_assetsForLogging)))
    {
      v42 = *(v5 + 24);

      sub_22376D980(v43);
    }

    else
    {
      if (qword_28131A9F8 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v63 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v63, qword_28131B530);
      v86(v78, v84, v3);
      v64 = v80;

      v65 = sub_2237B5C8C();
      v66 = sub_2237B5FFC();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        *v67 = 136315394;
        OUTLINED_FUNCTION_1_2(&qword_28131B4D0);
        v68 = sub_2237B627C();
        v70 = v69;
        v71 = OUTLINED_FUNCTION_17_1();
        v72(v71);
        v73 = sub_223763694(v68, v70, &v88);

        *(v67 + 4) = v73;
        *(v67 + 12) = 2080;
        *(v67 + 14) = sub_223763694(v79, v64, &v88);
        _os_log_impl(&dword_22375F000, v65, v66, "Failed to find any assets for instrumentation, for sessionId: %s and requestId: %s", v67, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_8();
      }

      else
      {

        v74 = OUTLINED_FUNCTION_17_1();
        v75(v74);
      }
    }

    return;
  }

LABEL_14:
  if (qword_28131A9F8 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v44 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v44, qword_28131B530);
  v86(v35, v84, v3);

  v45 = sub_2237B5C8C();
  v46 = v35;
  v47 = sub_2237B5FFC();

  v48 = os_log_type_enabled(v45, v47);
  v49 = v85;
  if (v48)
  {
    v50 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *v50 = 136315394;
    v51 = v82;
    sub_22376D910(v5 + v81, v82);
    if (__swift_getEnumTagSinglePayload(v51, 1, v3))
    {
      sub_2237692F0(v51, &qword_27D097A50, &unk_2237B7800);
      v52 = 0xE300000000000000;
      v53 = 7104878;
    }

    else
    {
      v86(v83, v51, v3);
      sub_2237692F0(v51, &qword_27D097A50, &unk_2237B7800);
      v53 = sub_2237B40FC();
      v52 = v54;
      OUTLINED_FUNCTION_15();
      v55 = OUTLINED_FUNCTION_14();
      v56(v55);
    }

    v57 = sub_223763694(v53, v52, &v88);

    *(v50 + 4) = v57;
    *(v50 + 12) = 2080;
    OUTLINED_FUNCTION_1_2(&qword_28131B4D0);
    v58 = v87;
    v59 = sub_2237B627C();
    v61 = v60;
    (*(v49 + 8))(v58, v3);
    v62 = sub_223763694(v59, v61, &v88);

    *(v50 + 14) = v62;
    _os_log_impl(&dword_22375F000, v45, v47, "currentSessionId: %s is not the same as sessionId: %s", v50, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_8();
  }

  else
  {

    (*(v49 + 8))(v46, v3);
  }
}

uint64_t sub_22376D910(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22376D980(uint64_t a1)
{
  v3 = v2;
  v5 = *(v2 + 24);
  OUTLINED_FUNCTION_14_3();
  v6 = sub_2237B583C();
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x277D595C0]) init];
    if (v8)
    {
      oslog = v8;
      sub_22376DBBC(a1, v8);
      [v7 setAvailableAssets_];
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v9 = sub_2237B5C9C();
      v10 = OUTLINED_FUNCTION_9_4(v9, qword_28131B550);
      v11 = sub_2237B5FEC();
      if (OUTLINED_FUNCTION_15_3(v11))
      {
        *OUTLINED_FUNCTION_7_3() = 0;
        OUTLINED_FUNCTION_20_3(&dword_22375F000, v12, v13, "ORCHAssetsReported event is being emitted now");
        OUTLINED_FUNCTION_8();
      }

      [*(v3 + 16) emitMessage_];
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v17 = sub_2237B5C9C();
      oslog = OUTLINED_FUNCTION_9_4(v17, qword_28131B550);
      v18 = sub_2237B5FFC();
      if (os_log_type_enabled(oslog, v18))
      {
        v19 = OUTLINED_FUNCTION_7_3();
        OUTLINED_FUNCTION_4_4(v19);
        OUTLINED_FUNCTION_10_3(&dword_22375F000, oslog, v18, "Failed to create message to report assets");
        OUTLINED_FUNCTION_3_0();
      }
    }
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v14 = sub_2237B5C9C();
    oslog = OUTLINED_FUNCTION_9_4(v14, qword_28131B550);
    sub_2237B5FFC();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = OUTLINED_FUNCTION_7_3();
      *v16 = 0;
      _os_log_impl(&dword_22375F000, oslog, v1, "The Orchestration SELF Assets event wrapper failed to build", v16, 2u);
      OUTLINED_FUNCTION_8();
    }
  }
}

void sub_22376DBBC(uint64_t a1, void *a2)
{
  sub_223766240(0, &unk_28131A7F8, 0x277D5A798);
  v3 = sub_2237B5F1C();
  [a2 setAssets_];
}

uint64_t sub_22376DC38@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = *a1;
  v7 = a2(0);
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 16);

  return v10(a3, v5 + v6, v8);
}

uint64_t sub_22376DCCC()
{
  OUTLINED_FUNCTION_16_3();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_2237B5E2C();
  v7 = v6;
  v8 = sub_2237B5E2C();
  v10 = v9;
  v11 = sub_2237B5E2C();
  v13 = v12;
  v14 = v3;
  v15 = v5;
  v16 = OUTLINED_FUNCTION_148();
  v1(v16, v7, v8, v10, v11, v13, v14);

  OUTLINED_FUNCTION_14_2();
}

void sub_22376DDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_51_0(v26, v27, v28, v29, v30, v31);
  OUTLINED_FUNCTION_250();
  v32 = sub_2237B5C7C();
  v33 = OUTLINED_FUNCTION_8_6(v32, &a17);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_28_1(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_27_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_29_1();
  v59 = v22;
  v60 = v23;
  v61 = v20;
  v62 = v57;
  OUTLINED_FUNCTION_42_0();
  v43 = OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_364();
  v44 = OUTLINED_FUNCTION_43_0(OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v22(v44);
  v45 = OUTLINED_FUNCTION_111();
  v22(v45);
  v46 = *(v23 + 80);
  OUTLINED_FUNCTION_21_3();
  v47 = OUTLINED_FUNCTION_260();
  v48 = OUTLINED_FUNCTION_54_0(v47);
  (v21)(v48);
  OUTLINED_FUNCTION_230();
  v21();
  OUTLINED_FUNCTION_76((v47 + v37));
  OUTLINED_FUNCTION_84(v49);
  v50 = (&type metadata for Logger + v47);
  *v50 = sub_22376E26C;
  v50[1] = &v58;
  OUTLINED_FUNCTION_5_3();
  v51 = swift_allocObject();
  *(v51 + 16) = sub_223761F8C;
  *(v51 + 24) = v47;
  v63[4] = sub_223761F78;
  v63[5] = v51;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v63[2] = v52;
  v63[3] = &block_descriptor_124;
  _Block_copy(v63);
  OUTLINED_FUNCTION_175();

  v53 = OUTLINED_FUNCTION_335();
  dispatch_sync(v53, v54);
  _Block_release(v43);
  v55 = OUTLINED_FUNCTION_83();
  (type metadata for Logger.Kind)(v55);
  v56 = OUTLINED_FUNCTION_324();
  (type metadata for Logger.Kind)(v56);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_90();

  if (v35)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t OUTLINED_FUNCTION_50_1@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_284()
{
  v2 = *v0;
  result = *(v1 - 304);
  v4 = *(v1 - 296);
  return result;
}

BOOL OUTLINED_FUNCTION_41()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_29()
{
}

uint64_t OUTLINED_FUNCTION_29_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_42()
{
  v2 = *(v0 - 344);

  return sub_2237B58AC();
}

void OUTLINED_FUNCTION_42_0()
{
  v1 = *(v0 - 304);
  *(v0 - 192) = *(v0 - 312);
  *(v0 - 184) = v1;
}

void OUTLINED_FUNCTION_87(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 192) = v1;
  *(v2 - 184) = v3;
  v4 = *(v2 - 272);
}

uint64_t OUTLINED_FUNCTION_54()
{
  v3 = (v0 + *(v1 + 20));
  v5 = *v3;
  v4 = v3[1];
}

uint64_t sub_22376E238()
{
  v1 = OUTLINED_FUNCTION_60();
  v4 = *(v0 + 80);
  return v2(v1);
}

uint64_t sub_22376E2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a8;
  v12 = sub_2237B544C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22376E3D4(v16);
  sub_22376E5FC(a2, a3, a4, a5, v16, v21, v17, v18, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_22376E3D4@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C70, &qword_2237B9250);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_299();
  OUTLINED_FUNCTION_19_3();
  sub_2237B543C();
  sub_2237B544C();
  v9 = OUTLINED_FUNCTION_254();
  OUTLINED_FUNCTION_312(v9, 1, v2);
  if (v10)
  {
    sub_2237710FC(v1, &qword_27D097C70, &qword_2237B9250);
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v11 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v11, qword_28131B550);

    v12 = sub_2237B5C8C();
    v13 = sub_2237B5FFC();

    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_44();
      *v3 = 136315138;
      v14 = OUTLINED_FUNCTION_19_3();
      *(v3 + 4) = sub_223763694(v14, v15, v16);
      OUTLINED_FUNCTION_308(&dword_22375F000, v12, v13, "Unknown input origin %s, using default .homeButton");
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_13_5();
    }

    return (*(*(v2 - 8) + 104))(a1, *MEMORY[0x277D5CE88], v2);
  }

  else
  {
    v17 = *(*(v2 - 8) + 32);
    v18 = OUTLINED_FUNCTION_1_1();
    return v19(v18);
  }
}

uint64_t OUTLINED_FUNCTION_271(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

void sub_22376E5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v23;
  a20 = v24;
  v25 = v21;
  v235 = v26;
  v234 = v27;
  v241 = v28;
  v242 = v29;
  v31 = v30;
  OUTLINED_FUNCTION_297();
  v32 = sub_2237B5CCC();
  v33 = OUTLINED_FUNCTION_8_6(v32, &a14);
  v231 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v37);
  v38 = sub_2237B5D0C();
  v39 = OUTLINED_FUNCTION_8_6(v38, &a12);
  v228 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_62(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_25_2(v48);
  v237 = sub_2237B412C();
  v49 = OUTLINED_FUNCTION_0_2(v237);
  v239 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_62(v53);
  OUTLINED_FUNCTION_204(&v246);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_158(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097A40, &unk_2237B8850);
  OUTLINED_FUNCTION_1(v56);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_25_2(v60);
  v61 = sub_2237B563C();
  v62 = OUTLINED_FUNCTION_0_2(v61);
  v238 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_3();
  v68 = v66 - v67;
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_50_0();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  OUTLINED_FUNCTION_1(v70);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v73);
  v75 = &v222 - v74;
  v76 = type metadata accessor for RequestDispatcher.SessionContext(0);
  v77 = OUTLINED_FUNCTION_4(v76);
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_1_0();
  v82 = v81 - v80;
  v83 = *(v21 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  v240 = v20;
  v243 = v31;
  sub_22376F45C();
  if (v84)
  {
    v85 = v84;
    v86 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
    OUTLINED_FUNCTION_14_3();
    swift_beginAccess();
    v224 = v25;
    sub_22376F91C(v25 + v86, v75, &unk_27D097C80, &unk_2237B9260);
    OUTLINED_FUNCTION_312(v75, 1, v76);
    if (v87)
    {
      sub_2237710FC(v75, &unk_27D097C80, &unk_2237B9260);
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v88 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v88, qword_28131B550);
      v89 = v242;

      v90 = v243;

      v91 = sub_2237B5C8C();
      sub_2237B5FFC();
      OUTLINED_FUNCTION_26_0();

      if (OUTLINED_FUNCTION_218())
      {
        OUTLINED_FUNCTION_25_0();
        v245[0] = OUTLINED_FUNCTION_137();
        OUTLINED_FUNCTION_302(4.8151e-34);
        v93 = sub_223763694(v240, v90, v92);
        OUTLINED_FUNCTION_56_0(v93);
        *(v22 + 14) = sub_223763694(v241, v89, v245);
        OUTLINED_FUNCTION_33();
        _os_log_impl(v94, v95, v96, v97, v98, 0x16u);
        OUTLINED_FUNCTION_310();
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_3_0();
      }

      goto LABEL_39;
    }

    v103 = v76;
    sub_22376F978(v75, v82);
    v104 = *(v85 + OBJC_IVAR____TtC14SiriMessageBus7Session_conversationSession);
    v105 = v238;
    OUTLINED_FUNCTION_141();
    v106(v22);
    v107 = *(v105 + 104);
    LODWORD(v223) = *MEMORY[0x277D5D258];
    *(&v222 + 1) = v107;
    v107(v68);
    v108 = sub_223766744();
    v109 = v82;
    v110 = *(v105 + 8);
    v110(v68, v61);
    v111 = OUTLINED_FUNCTION_356();
    (v110)(v111);
    if ((v108 & 1) == 0)
    {
      v240 = v109;
      v243 = v85;
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v151 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v151, qword_28131B550);
      v152 = sub_2237B5C8C();
      v153 = sub_2237B5FFC();
      if (os_log_type_enabled(v152, v153))
      {
        v154 = OUTLINED_FUNCTION_20();
        v155 = OUTLINED_FUNCTION_19_0();
        v245[0] = v155;
        *v154 = 136315138;
        (*(&v222 + 1))(v22, v223, v61);
        v156 = sub_2237B562C();
        v158 = v157;
        v159 = OUTLINED_FUNCTION_356();
        (v110)(v159);
        v160 = sub_223763694(v156, v158, v245);

        *(v154 + 4) = v160;
        OUTLINED_FUNCTION_317(&dword_22375F000, v161, v153, "Current session is not of type %s, cannot start local request");
        __swift_destroy_boxed_opaque_existential_0Tm(v155);
        OUTLINED_FUNCTION_13_1();
        OUTLINED_FUNCTION_71();
      }

      sub_223771D44(v240);
      goto LABEL_39;
    }

    v117 = v240;
    v118 = v243;
    v119 = v224;
    sub_22376F9F8(v85, v240, v243, v112, v113, v114, v115, v116, v222, *(&v222 + 1), v223, v224, v225, v226, v227, v228, v229, v230, v231, v232);
    v120 = *(v119 + OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil);
    v121 = OBJC_IVAR____TtC14SiriMessageBus7Session_userSessionState;
    OUTLINED_FUNCTION_14_3();
    swift_beginAccess();
    v122 = sub_2237B551C();
    OUTLINED_FUNCTION_4(v122);
    v124 = v85 + v121;
    v125 = v233;
    (*(v123 + 16))(v233, v124, v122);
    OUTLINED_FUNCTION_12_4();
    __swift_storeEnumTagSinglePayload(v126, v127, v128, v122);
    v129 = v241;
    v130 = v242;
    OUTLINED_FUNCTION_230();
    *(&v222 + 1) = v120;
    sub_223770A64(v131, v132, v133, 0);
    sub_2237710FC(v125, &unk_27D097A40, &unk_2237B8850);
    v134 = *(v239 + 16);
    v135 = v236;
    v136 = v237;
    v238 = v239 + 16;
    v233 = v134;
    v134(v236, v85 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v237);
    OUTLINED_FUNCTION_347();
    v137 = *(v109 + *(v103 + 24));
    MEMORY[0x28223BE20](v138);
    OUTLINED_FUNCTION_277();
    *(v139 - 64) = v117;
    *(v139 - 56) = v118;
    *(v139 - 48) = v135;
    *(v139 - 40) = v129;
    OUTLINED_FUNCTION_210();
    *(v140 - 32) = v130;
    *(v140 - 24) = v141;
    *(v140 - 16) = v235;
    LODWORD(v235) = v142;
    v143 = v109;
    if (v142 == 1)
    {
      v144 = objc_allocWithZone(sub_2237B49EC());
      OUTLINED_FUNCTION_144();
      v145 = sub_2237B497C();
      if (!v145)
      {
        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v146 = sub_2237B5C9C();
        OUTLINED_FUNCTION_13(v146, qword_28131B550);
        v147 = v242;

        v148 = sub_2237B5C8C();
        sub_2237B5FFC();

        if (!OUTLINED_FUNCTION_218())
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v162 = objc_allocWithZone(sub_2237B45DC());
      OUTLINED_FUNCTION_144();
      v145 = sub_2237B451C();
      if (!v145)
      {
        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v209 = sub_2237B5C9C();
        OUTLINED_FUNCTION_13(v209, qword_28131B550);
        v147 = v242;

        v148 = sub_2237B5C8C();
        sub_2237B5FFC();

        if (!OUTLINED_FUNCTION_218())
        {
          goto LABEL_37;
        }

LABEL_36:
        OUTLINED_FUNCTION_20();
        v210 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_333(v210);
        OUTLINED_FUNCTION_302(4.8149e-34);
        *(&v222 + 4) = sub_223763694(v241, v147, v211);
        OUTLINED_FUNCTION_33();
        _os_log_impl(v212, v213, v214, v215, v216, 0xCu);
        OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_3_0();
        v136 = v118;
LABEL_37:

        sub_223771D44(v143);
        (*(v239 + 8))(v135, v136);
        goto LABEL_39;
      }
    }

    v163 = v145;
    v243 = v85;
    v164 = v224;
    v165 = *(v224 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
    sub_2237654A4(v145);

    OUTLINED_FUNCTION_185(&a15);
    OUTLINED_FUNCTION_227();
    v166();
    OUTLINED_FUNCTION_12_4();
    __swift_storeEnumTagSinglePayload(v167, v168, v169, v136);
    LODWORD(v234) = AFDeviceSupportsSiriUOD();
    DWORD1(v222) = AFShouldRunAsrOnServerForUOD();
    v170 = (v164 + OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils);
    v171 = v170[4];
    OUTLINED_FUNCTION_259(v170, v170[3]);
    v172 = *(v223 + 20);
    v240 = v109;
    v173 = (v109 + v172);
    v175 = *v173;
    v174 = v173[1];
    v176 = v241;
    v177 = v242;
    OUTLINED_FUNCTION_295();
    sub_2237B58AC();
    v179 = v170[3];
    v178 = v170[4];
    v180 = OUTLINED_FUNCTION_171();
    OUTLINED_FUNCTION_259(v180, v181);
    OUTLINED_FUNCTION_295();
    sub_2237B58AC();
    v221 = v235;
    OUTLINED_FUNCTION_295();
    sub_223771484(v182, v183, v184, 5, v234, SBYTE4(v222), v185, v186, v221);
    sub_2237710FC(v136, &qword_27D097A50, &unk_2237B7800);
    v187 = *(v224 + OBJC_IVAR___SRDRequestDispatcherInternal_assetLogger);
    if ((*(v187 + 32) & 1) != 0 || (OUTLINED_FUNCTION_138(), v87))
    {
      v235 = *(v187 + 16);
      OUTLINED_FUNCTION_155(&v247);
      v188 = v237;
      OUTLINED_FUNCTION_227();
      v189();
      v217 = v239;
      OUTLINED_FUNCTION_228();
      v192 = v191 & ~v190;
      OUTLINED_FUNCTION_85();
      v193 = OUTLINED_FUNCTION_309();
      v194 = OUTLINED_FUNCTION_89(v193);
      v195(v194 + v192, v178, v188);
      v196 = (v176 + v136);
      *v196 = v241;
      v196[1] = v177;
      OUTLINED_FUNCTION_127();
      v245[1] = 1107296256;
      OUTLINED_FUNCTION_6_6();
      v245[2] = v197;
      v245[3] = &block_descriptor_422;
      v198 = _Block_copy(v245);

      OUTLINED_FUNCTION_296(&a9);
      sub_2237B5CEC();
      v244 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_5_5();
      sub_223766F90(v199, v200);
      v201 = OUTLINED_FUNCTION_19_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(v201, v202);
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_209();
      sub_223766FD8(v203, v204, v205);
      OUTLINED_FUNCTION_263(&a11);
      OUTLINED_FUNCTION_197();
      MEMORY[0x223DEACD0](0, v178, v177, v198);
      _Block_release(v198);

      OUTLINED_FUNCTION_96(&a13);
      v206 = OUTLINED_FUNCTION_238();
      v207(v206);
      OUTLINED_FUNCTION_96(&a10);
      v208(v178, v230);
    }

    else
    {

      v217 = v239;
    }

    sub_223771D44(v240);
    v218 = *(v217 + 8);
    v219 = OUTLINED_FUNCTION_340();
    v220(v219);
    goto LABEL_39;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v99 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v99, qword_28131B550);
  v100 = v243;

  v242 = sub_2237B5C8C();
  sub_2237B600C();
  OUTLINED_FUNCTION_282();
  if (os_log_type_enabled(v242, v20))
  {
    v101 = OUTLINED_FUNCTION_20();
    v102 = OUTLINED_FUNCTION_19_0();
    v245[0] = v102;
    *v101 = 136315138;
    *(v101 + 4) = sub_223763694(v240, v100, v245);
    OUTLINED_FUNCTION_360(&dword_22375F000, v242, v20, "No active session for assistantId: %s cannot start local request");
    __swift_destroy_boxed_opaque_existential_0Tm(v102);
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

LABEL_39:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_22376F45C()
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_31_2();
  v3 = sub_2237B412C();
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v55 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v54 = v9 - v8;
  v10 = sub_2237B40DC();
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v50 - v20;
  OUTLINED_FUNCTION_17_0();
  v22 = *(v0 + 40);

  v23 = sub_223769618(v2, v1, v22);

  if (v23)
  {
    v52 = v2;
    v53 = v3;
    sub_2237B40CC();
    v24 = OBJC_IVAR____TtC14SiriMessageBus7Session_lastAccessedTime;
    OUTLINED_FUNCTION_19_6();
    v25 = *(v13 + 40);
    v25(v23 + v24, v21, v10);
    swift_endAccess();
    (*(v13 + 16))(v18, v23 + v24, v10);
    v26 = *(v0 + 16);
    sub_2237B409C();
    (*(v13 + 8))(v18, v10);
    v27 = OBJC_IVAR____TtC14SiriMessageBus7Session_expirationTime;
    OUTLINED_FUNCTION_19_6();
    v25(v23 + v27, v21, v10);
    swift_endAccess();
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v28 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v28, qword_28131B550);

    v29 = sub_2237B5C8C();
    v30 = sub_2237B5FEC();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v53;
    if (v31)
    {
      v33 = OUTLINED_FUNCTION_25_0();
      v51 = swift_slowAlloc();
      v56[0] = v51;
      *v33 = 136315394;
      v34 = v55;
      (*(v55 + 16))(v54, v23 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v32);
      OUTLINED_FUNCTION_1_8();
      sub_2237651DC(v35, v36);
      v37 = sub_2237B627C();
      v39 = v38;
      v40 = *(v34 + 8);
      v41 = OUTLINED_FUNCTION_19_2();
      v42(v41);
      v43 = sub_223763694(v37, v39, v56);

      *(v33 + 4) = v43;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_223763694(v52, v1, v56);
      _os_log_impl(&dword_22375F000, v29, v30, "Extending session id: %s for assistant id: %s", v33, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_8();
    }
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v44 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v44, qword_28131B550);

    v45 = sub_2237B5C8C();
    v46 = sub_2237B601C();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = v2;
      v48 = OUTLINED_FUNCTION_20();
      v49 = OUTLINED_FUNCTION_19_0();
      v56[0] = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_223763694(v47, v1, v56);
      _os_log_impl(&dword_22375F000, v45, v46, "Cannot find session for assistant id: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_8();
    }
  }

  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_22376F91C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_1_1();
  v9(v8);
  return a2;
}

uint64_t sub_22376F978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestDispatcher.SessionContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *OUTLINED_FUNCTION_306(void *a1, int64_t a2)
{
  v4 = *(v2 - 280);

  return sub_223776EFC(a1, a2, 1, v4);
}

void sub_22376F9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  v26 = v20;
  v234 = v27;
  v233 = v28;
  v241 = v29;
  v30 = sub_2237B561C();
  v31 = OUTLINED_FUNCTION_8_6(v30, &a18);
  v237 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_69();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_62(v36);
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C30, ">-");
  OUTLINED_FUNCTION_4(v238);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4_6();
  v242 = v40;
  OUTLINED_FUNCTION_12();
  v239 = sub_2237B551C();
  v41 = OUTLINED_FUNCTION_0_2(v239);
  v244 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_69();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_13_4();
  v240 = v46;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_345();
  v49 = MEMORY[0x28223BE20](v48);
  v51 = &v222 - v50;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_13_4();
  v243 = v52;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_35();
  v54 = sub_2237B5D6C();
  v55 = OUTLINED_FUNCTION_0_2(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_348();
  v60 = *(v26 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  *v21 = v60;
  v61 = *MEMORY[0x277D85200];
  OUTLINED_FUNCTION_355();
  v62(v21);
  v63 = v60;
  v64 = sub_2237B5D8C();
  (*(v57 + 8))(v21, v54);
  if ((v64 & 1) == 0)
  {
    __break(1u);
LABEL_57:
    OUTLINED_FUNCTION_0_6();
    swift_once();
    goto LABEL_9;
  }

  v65 = *(v26 + OBJC_IVAR___SRDRequestDispatcherInternal_featureChecker + 32);
  __swift_project_boxed_opaque_existential_1((v26 + OBJC_IVAR___SRDRequestDispatcherInternal_featureChecker), *(v26 + OBJC_IVAR___SRDRequestDispatcherInternal_featureChecker + 24));
  OUTLINED_FUNCTION_8_2();
  if (sub_2237B57BC())
  {
    v228 = v26;
    sub_22376F91C(v26 + OBJC_IVAR___SRDRequestDispatcherInternal_activeUserSessionObserver, &v246, &qword_27D097C38, "&-");
    if (v247)
    {
      sub_2237709BC(&v246, v248);
      v66 = v249[1];
      __swift_project_boxed_opaque_existential_1(v248, v249[0]);
      v67 = *(v66 + 8);
      v68 = OUTLINED_FUNCTION_8_2();
      v69(v68, v66);
      v70 = OBJC_IVAR____TtC14SiriMessageBus7Session_userSessionState;
      v71 = v241;
      OUTLINED_FUNCTION_14_3();
      swift_beginAccess();
      v72 = v244 + 2;
      isa = v244[2].isa;
      v226 = v70;
      v74 = v243;
      v75 = v239;
      isa(v243, v71 + v70, v239);
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v76 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v76, qword_28131B550);
      isa(v51, v22, v75);
      v77 = OUTLINED_FUNCTION_100();
      (isa)(v77);
      v229 = v70;
      v78 = sub_2237B5C8C();
      v79 = sub_2237B5FEC();
      v80 = OUTLINED_FUNCTION_5(v79);
      v231 = v22;
      v227 = isa;
      if (v80)
      {
        v81 = OUTLINED_FUNCTION_25_0();
        v225 = OUTLINED_FUNCTION_198();
        v245 = v225;
        *v81 = 136315394;
        v22 = sub_223766F90(&qword_27D097C58, MEMORY[0x277D5D0E0]);
        LODWORD(v224) = v70;
        v82 = sub_2237B627C();
        v223 = v78;
        v83 = v244[1].isa;
        v84 = OUTLINED_FUNCTION_13_3();
        v83(v84);
        v85 = OUTLINED_FUNCTION_193();
        sub_223763694(v85, v86, v87);
        OUTLINED_FUNCTION_8_2();

        *(v81 + 4) = v82;
        *(v81 + 12) = 2080;
        OUTLINED_FUNCTION_120();
        OUTLINED_FUNCTION_245();
        v88 = sub_2237B627C();
        v89 = OUTLINED_FUNCTION_100();
        v230 = v83;
        v83(v89);
        v90 = OUTLINED_FUNCTION_193();
        sub_223763694(v90, v91, v92);
        OUTLINED_FUNCTION_8_2();
        v74 = v243;

        *(v81 + 14) = v88;
        v93 = v223;
        _os_log_impl(&dword_22375F000, v223, v224, "#user-session: Current UserSessionState=%s. Previous UserSessionState=%s", v81, 0x16u);
        OUTLINED_FUNCTION_155(v249);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_116();
        isa = v227;
        OUTLINED_FUNCTION_8();
      }

      else
      {

        v104 = v244[1].isa;
        v104(v23, v75);
        v105 = OUTLINED_FUNCTION_342();
        v230 = v104;
        (v104)(v105);
      }

      v106 = v242;
      v107 = v242 + *(v238 + 48);
      v108 = OUTLINED_FUNCTION_332();
      (isa)(v108);
      isa(v107, v22, v75);
      v109 = v244;
      v110 = &v244[11];
      v111 = v244[11].isa;
      v112 = OUTLINED_FUNCTION_119();
      v113 = v111(v112);
      v114 = v72;
      v115 = v113;
      v116 = *MEMORY[0x277D5D0D8];
      v117 = isa;
      v118 = v109;
      v119 = v240;
      if (v113 == *MEMORY[0x277D5D0D8])
      {
        v223 = v114;
        v117(v240, v106, v75);
        v120 = v75;
        v121 = v118[12].isa;
        v121(v119, v120);
        v122 = *(v119 + 1);
        v224 = *v119;
        v225 = v122;
        v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C40, &unk_2237B9230);
        v238 = *(v123 + 48);
        v124 = *(v123 + 64);
        v125 = OUTLINED_FUNCTION_13_3();
        if (v111(v125) != v115)
        {

          (*(v237 + 8))(&v119[v124], v236);
          v75 = v120;
          v106 = v242;
LABEL_34:
          sub_2237710FC(&v119[v238], &qword_27D097900, &qword_2237B8860);
          v74 = v243;
          goto LABEL_35;
        }

        v126 = v235;
        v222 = v107;
        v227(v235, v107, v120);
        v127 = OUTLINED_FUNCTION_100();
        (v121)(v127);
        v110 = *v126;
        v128 = v126[1];
        v129 = *(v123 + 48);
        v130 = *(v123 + 64);
        v131 = *(v237 + 32);
        v132 = OUTLINED_FUNCTION_101();
        v133 = v236;
        v131(v132);
        v134 = v126 + v130;
        v135 = v232;
        (v131)(v232, v134, v133);
        if (v224 == v110 && v225 == v128)
        {

          v106 = v242;
          v118 = v244;
        }

        else
        {
          v137 = sub_2237B629C();

          v106 = v242;
          v118 = v244;
          if ((v137 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        sub_223766F90(&qword_27D097C50, MEMORY[0x277D5D240]);
        OUTLINED_FUNCTION_101();
        if (sub_2237B5E0C())
        {
LABEL_33:
          v151 = *(v237 + 8);
          v151(v135, v133);
          v152 = OUTLINED_FUNCTION_101();
          v151(v152, v133);
          OUTLINED_FUNCTION_211();
          sub_2237710FC(v153 + v129, v154, v155);
          v75 = v239;
          v119 = v240;
          goto LABEL_34;
        }

        v171 = sub_2237B5C8C();
        v172 = sub_2237B5FEC();
        v173 = OUTLINED_FUNCTION_261(v172);
        v174 = v239;
        if (v173)
        {
          v110 = v118;
          *OUTLINED_FUNCTION_7_3() = 0;
          OUTLINED_FUNCTION_157();
          _os_log_impl(v175, v176, v177, v178, v179, 2u);
          OUTLINED_FUNCTION_8();
        }

        v180 = *(v237 + 8);
        v181 = v135;
        v182 = v236;
        v180(v181, v236);
        v183 = OUTLINED_FUNCTION_101();
        v180(v183, v182);
        OUTLINED_FUNCTION_211();
        OUTLINED_FUNCTION_291();
        sub_2237710FC(v184, v185, v186);
        OUTLINED_FUNCTION_291();
        sub_2237710FC(v187, v188, v189);
        v75 = v174;
        v230(v222, v174);
        OUTLINED_FUNCTION_245();
      }

      else
      {
        if (v113 != *MEMORY[0x277D5D0D0])
        {
LABEL_35:
          v156 = sub_2237B5C8C();
          v157 = sub_2237B5FFC();
          if (OUTLINED_FUNCTION_261(v157))
          {
            *OUTLINED_FUNCTION_7_3() = 0;
            OUTLINED_FUNCTION_163();
            _os_log_impl(v158, v159, v160, v161, v162, 2u);
            v74 = v243;
            OUTLINED_FUNCTION_8();
          }

          v163 = v230;
          v230(v74, v75);
          sub_2237710FC(v106, &qword_27D097C30, ">-");
          v163(v231, v75);
LABEL_54:
          __swift_destroy_boxed_opaque_existential_0Tm(v248);
          goto LABEL_55;
        }

        v138 = OUTLINED_FUNCTION_342();
        v139 = v111(v138);
        if (v139 == v116)
        {
          (v118[12].isa)(v107, v75);
          v140 = *(v107 + 8);

          v141 = sub_2237B5C8C();
          v142 = sub_2237B5FEC();
          OUTLINED_FUNCTION_261(v142);
          OUTLINED_FUNCTION_245();
          if (v143)
          {
            *OUTLINED_FUNCTION_7_3() = 0;
            OUTLINED_FUNCTION_157();
            _os_log_impl(v144, v145, v146, v147, v148, 2u);
            OUTLINED_FUNCTION_8();
          }

          v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C40, &unk_2237B9230);
          v150 = *(v149 + 48);
          (*(v237 + 8))(v107 + *(v149 + 64), v236);
          sub_2237710FC(v107 + v150, &qword_27D097900, &qword_2237B8860);
        }

        else
        {
          if (v139 != *MEMORY[0x277D5D0C8])
          {
            goto LABEL_35;
          }

          v164 = sub_2237B5C8C();
          v165 = sub_2237B5FEC();
          if (OUTLINED_FUNCTION_261(v165))
          {
            *OUTLINED_FUNCTION_7_3() = 0;
            OUTLINED_FUNCTION_163();
            _os_log_impl(v166, v167, v168, v169, v170, 2u);
            OUTLINED_FUNCTION_8();
          }

          OUTLINED_FUNCTION_245();
        }
      }

      v190 = OUTLINED_FUNCTION_119();
      v191 = v230;
      (v230)(v190);
      v192 = v241;
      v193 = v226;
      swift_beginAccess();
      v194 = v75;
      (v118[3].isa)(v192 + v193, v110, v75);
      v195 = swift_endAccess();
      MEMORY[0x28223BE20](v195);
      OUTLINED_FUNCTION_275();
      v196 = v233;
      *(v197 - 32) = v110;
      *(v197 - 24) = v196;
      *(v197 - 16) = v234;
      *(v197 - 8) = v192;
      v198 = objc_allocWithZone(sub_2237B4CEC());
      OUTLINED_FUNCTION_34_0();
      v199 = sub_2237B4C9C();
      if (v199)
      {
        v200 = v199;
        v201 = sub_2237B5C8C();
        v202 = sub_2237B5FEC();
        if (OUTLINED_FUNCTION_261(v202))
        {
          v203 = OUTLINED_FUNCTION_20();
          v204 = OUTLINED_FUNCTION_19_0();
          v245 = v204;
          *v203 = 136315138;
          v205 = [v200 debugDescription];
          v206 = v194;
          v207 = sub_2237B5E2C();
          v209 = v208;

          v110 = sub_223763694(v207, v209, &v245);

          *(v203 + 4) = v110;
          OUTLINED_FUNCTION_245();
          _os_log_impl(&dword_22375F000, v201, v202, "#user-session: Posting message=%s", v203, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v204);
          v191 = v230;
          OUTLINED_FUNCTION_8();
          OUTLINED_FUNCTION_71();

          v210 = v228;
        }

        else
        {

          v210 = v228;
          v206 = v75;
        }

        v220 = *(v210 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
        sub_2237654A4(v200);

        v221 = OUTLINED_FUNCTION_352();
        v191(v221);
        v218 = v110;
        v219 = v206;
      }

      else
      {
        v211 = sub_2237B5C8C();
        v212 = sub_2237B5FEC();
        if (OUTLINED_FUNCTION_261(v212))
        {
          *OUTLINED_FUNCTION_7_3() = 0;
          OUTLINED_FUNCTION_163();
          _os_log_impl(v213, v214, v215, v216, v217, 2u);
          OUTLINED_FUNCTION_71();
        }

        (v191)(v243, v75);
        v218 = OUTLINED_FUNCTION_234();
      }

      (v191)(v218, v219);
      goto LABEL_54;
    }

    sub_2237710FC(&v246, &qword_27D097C38, "&-");
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v97 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v97, qword_28131B550);
    v95 = sub_2237B5C8C();
    v98 = sub_2237B5FEC();
    if (OUTLINED_FUNCTION_5(v98))
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (qword_28131AA10 != -1)
  {
    goto LABEL_57;
  }

LABEL_9:
  v94 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v94, qword_28131B550);
  v95 = sub_2237B5C8C();
  v96 = sub_2237B5FEC();
  if (OUTLINED_FUNCTION_5(v96))
  {
LABEL_14:
    *OUTLINED_FUNCTION_7_3() = 0;
    OUTLINED_FUNCTION_33();
    _os_log_impl(v99, v100, v101, v102, v103, 2u);
    OUTLINED_FUNCTION_3_0();
  }

LABEL_15:

LABEL_55:
  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_2237709BC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t OUTLINED_FUNCTION_316@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;

  return sub_2237B5C7C();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_223770A64(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v50 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A38, &qword_2237B8848);
  OUTLINED_FUNCTION_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v49[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097A40, &unk_2237B8850);
  OUTLINED_FUNCTION_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v49[-v17];
  v19 = sub_2237B551C();
  v20 = OUTLINED_FUNCTION_0_2(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v27 = v26 - v25;
  v29 = v28;
  sub_223770E88(a1, v18, &unk_27D097A40, &unk_2237B8850);
  if (__swift_getEnumTagSinglePayload(v18, 1, v29) == 1)
  {
    return sub_223770EE8(v18, &unk_27D097A40, &unk_2237B8850);
  }

  v31 = v22;
  (*(v22 + 32))(v27, v18, v29);
  v32 = *(v5 + 24);
  OUTLINED_FUNCTION_14_3();
  v33 = sub_2237B583C();
  if (!v33)
  {
    v39 = v27;
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v40 = sub_2237B5C9C();
    v41 = OUTLINED_FUNCTION_9_4(v40, qword_28131B550);
    v42 = sub_2237B5FFC();
    if (OUTLINED_FUNCTION_15_3(v42))
    {
      *OUTLINED_FUNCTION_7_3() = 0;
      OUTLINED_FUNCTION_20_3(&dword_22375F000, v43, v44, "The Orchestration SELF event wrapper failed to build");
      OUTLINED_FUNCTION_8();
    }

    goto LABEL_15;
  }

  v34 = v33;
  v35 = [objc_allocWithZone(MEMORY[0x277D596E8]) init];
  if (!v35)
  {
    v39 = v27;
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v45 = sub_2237B5C9C();
    v41 = OUTLINED_FUNCTION_9_4(v45, qword_28131B550);
    v46 = sub_2237B5FFC();
    if (!OUTLINED_FUNCTION_15_3(v46))
    {

      return (*(v31 + 8))(v39, v29);
    }

    v47 = OUTLINED_FUNCTION_7_3();
    *v47 = 0;
    _os_log_impl(&dword_22375F000, v41, v27, "The Orchestration UserSessionState event wrapper failed to build", v47, 2u);
    OUTLINED_FUNCTION_8();

LABEL_15:
    return (*(v31 + 8))(v39, v29);
  }

  v36 = v35;
  [v35 setIsEndOfRequest_];
  sub_2237B550C();
  v37 = sub_2237B561C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v37) == 1)
  {
    sub_223770EE8(v12, &qword_27D097A38, &qword_2237B8848);
    v38 = 0;
  }

  else
  {
    v38 = sub_22378675C();
    OUTLINED_FUNCTION_8_4(v37);
    (*(v48 + 8))(v12, v37);
  }

  [v36 setAccessLevel_];
  [v36 setState_];
  [v34 setUserSessionState_];
  [*(v5 + 16) emitMessage_];

  return (*(v31 + 8))(v27, v29);
}

uint64_t sub_223770E88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_8_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_1_1();
  v9(v8);
  return a2;
}

uint64_t sub_223770EE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_8_4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_223770F44()
{
  v1 = v0;
  v2 = sub_2237B551C();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  (*(v5 + 16))(v9 - v8, v1, v2);
  v11 = *(v5 + 88);
  v12 = OUTLINED_FUNCTION_1_1();
  v14 = v13(v12);
  if (v14 == *MEMORY[0x277D5D0D8])
  {
    v15 = *(v5 + 96);
    v16 = OUTLINED_FUNCTION_1_1();
    v17(v16);
    v18 = *(v10 + 8);

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C40, &unk_2237B9230);
    v20 = *(v19 + 48);
    v21 = *(v19 + 64);
    v22 = sub_2237B561C();
    OUTLINED_FUNCTION_8_4(v22);
    (*(v23 + 8))(v10 + v21);
    sub_223770EE8(v10 + v20, &qword_27D097900, &qword_2237B8860);
    return 3;
  }

  else if (v14 == *MEMORY[0x277D5D0D0])
  {
    return 1;
  }

  else if (v14 == *MEMORY[0x277D5D0C8])
  {
    return 2;
  }

  else
  {
    v25 = *(v5 + 8);
    v26 = OUTLINED_FUNCTION_1_1();
    v27(v26);
    return 0;
  }
}

uint64_t sub_2237710FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_89(uint64_t result)
{
  *(result + 16) = v1;
  v3 = *(v2 + 32);
  return result;
}

uint64_t sub_223771198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v30 = a5;
  v31 = a7;
  v29 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C70, &qword_2237B9250);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v28 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v28 - v19;
  v21 = *MEMORY[0x277D5CDC8];
  v22 = sub_2237B540C();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v22);
  sub_2237B49BC();

  sub_2237B498C();
  v23 = sub_2237B412C();
  (*(*(v23 - 8) + 16))(v16, v29, v23);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v23);
  sub_2237B49DC();

  sub_2237B49CC();
  v24 = sub_2237B544C();
  (*(*(v24 - 8) + 16))(v12, v31, v24);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v24);
  result = sub_2237B499C();
  if (a8)
  {
    v26 = objc_allocWithZone(sub_2237B553C());
    v27 = a8;
    sub_2237B552C();
    return sub_2237B49AC();
  }

  return result;
}

BOOL OUTLINED_FUNCTION_318()
{

  return os_log_type_enabled(v0, v1);
}

void sub_223771484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, int a7, int a8, os_log_type_t a9)
{
  v94 = a2;
  v96 = a7;
  LODWORD(v97) = a8;
  v95 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v14 = OUTLINED_FUNCTION_1(v13);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v92 = v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v91 - v19;
  v21 = sub_2237B412C();
  v22 = OUTLINED_FUNCTION_0_2(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v22);
  v29 = v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v91 - v30;
  v33 = v32;
  sub_223770E88(a1, v20, &qword_27D097A50, &unk_2237B7800);
  if (__swift_getEnumTagSinglePayload(v20, 1, v33) != 1)
  {
    (*(v24 + 32))(v31, v20, v33);
    sub_223766240(0, &qword_28131A808, 0x277D5AC78);
    (*(v24 + 16))(v29, v31, v33);
    v40 = sub_223771C3C(v29);
    v41 = [objc_allocWithZone(MEMORY[0x277D597D0]) init];
    if (v41)
    {
      v42 = v41;
      [v41 setOrchestratorSessionId_];
      [v42 setRequestType_];
      if (a5)
      {
        LODWORD(v43) = 2;
      }

      else
      {
        LODWORD(v43) = 1;
      }

      [v42 setSiriUODEnabled_];
      if (a6)
      {
        v44 = 1;
      }

      else
      {
        v44 = v43;
      }

      if (a6)
      {
        v43 = 2;
      }

      else
      {
        v43 = v43;
      }

      [v42 setSiriAsrMode_];
      [v42 setSiriNlMode_];
      v45 = [objc_allocWithZone(MEMORY[0x277D59710]) init];
      if (v45)
      {
        v46 = v45;
        v91[1] = v31;
        v47 = v24;
        [v45 setIsNLServerFallbackDisabled_];
        [v46 setIsDomainServerFallbackDisabled_];
        [v42 setNlv3DeprecationFlags_];
        [v42 setIsAssistantEngineRequest_];
        v48 = [objc_allocWithZone(MEMORY[0x277D597B0]) init];
        if (v48)
        {
          v49 = v48;
          [v48 setStartedOrChanged_];
          v50 = v93;
          v51 = *(v93 + 24);
          OUTLINED_FUNCTION_14_3();
          v52 = sub_2237B583C();
          if (v52)
          {
            v53 = v52;
            [v52 setRequestContext_];
            [*(v50 + 16) emitMessage_];
            v54 = sub_2237B582C();
            if (!v54 || (v55 = v54, v56 = [v54 captureSnapshot], v55, !v56))
            {
              v84 = OUTLINED_FUNCTION_16_4();
              v85(v84, v33);

              return;
            }

            v97 = v46;
            v57 = [objc_opt_self() context];
            if (!v57)
            {
              __break(1u);
              return;
            }

            v58 = v57;
            v59 = v92;
            sub_2237B40EC();
            if (__swift_getEnumTagSinglePayload(v59, 1, v33) == 1)
            {
              v60 = 0;
            }

            else
            {
              v90 = v59;
              v60 = sub_2237B410C();
              (*(v47 + 8))(v90, v33);
            }

            [v56 logWithEventContext:v58 requestIdentifier:v60];

            goto LABEL_52;
          }

          if (qword_28131AA10 != -1)
          {
            OUTLINED_FUNCTION_0_4();
          }

          v86 = sub_2237B5C9C();
          v87 = OUTLINED_FUNCTION_9_4(v86, qword_28131B550);
          sub_2237B5FFC();
          OUTLINED_FUNCTION_12_3();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = OUTLINED_FUNCTION_7_3();
            OUTLINED_FUNCTION_4_4(v89);
            OUTLINED_FUNCTION_10_3(&dword_22375F000, v87, v50, "The Orchestration SELF event wrapper failed to build");
            OUTLINED_FUNCTION_3_0();

            v70 = OUTLINED_FUNCTION_16_4();
            v79 = v33;
            goto LABEL_41;
          }

LABEL_49:
LABEL_52:
          v70 = OUTLINED_FUNCTION_16_4();
          v79 = v33;
          goto LABEL_41;
        }

        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_4();
        }

        v80 = sub_2237B5C9C();
        v81 = OUTLINED_FUNCTION_9_4(v80, qword_28131B550);
        sub_2237B5FFC();
        OUTLINED_FUNCTION_12_3();
        if (!os_log_type_enabled(v81, v82))
        {

          goto LABEL_49;
        }

        v83 = OUTLINED_FUNCTION_7_3();
        OUTLINED_FUNCTION_4_4(v83);
        OUTLINED_FUNCTION_10_3(&dword_22375F000, v81, a9, "Failed to create the RequestContext message for start of request");
        OUTLINED_FUNCTION_3_0();

        v70 = OUTLINED_FUNCTION_16_4();
        v79 = v33;
LABEL_41:
        v69(v70, v79);
        return;
      }

      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v71 = sub_2237B5C9C();
      v72 = OUTLINED_FUNCTION_9_4(v71, qword_28131B550);
      v73 = sub_2237B5FFC();
      if (OUTLINED_FUNCTION_5(v73))
      {
        v74 = OUTLINED_FUNCTION_7_3();
        v75 = v40;
        v76 = v31;
        v66 = v33;
        OUTLINED_FUNCTION_4_4(v74);
        OUTLINED_FUNCTION_2_4(&dword_22375F000, v77, v78, "Failed to create the nlClassicDeprecationFlags message");
        OUTLINED_FUNCTION_3_0();

        v69 = *(v24 + 8);
        v70 = v76;
        goto LABEL_33;
      }
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v61 = sub_2237B5C9C();
      v62 = OUTLINED_FUNCTION_9_4(v61, qword_28131B550);
      v63 = sub_2237B5FFC();
      if (OUTLINED_FUNCTION_5(v63))
      {
        v64 = OUTLINED_FUNCTION_7_3();
        v65 = v31;
        v66 = v33;
        OUTLINED_FUNCTION_4_4(v64);
        OUTLINED_FUNCTION_2_4(&dword_22375F000, v67, v68, "Failed to create the RequestStarted message");
        OUTLINED_FUNCTION_3_0();

        v69 = *(v24 + 8);
        v70 = v65;
LABEL_33:
        v79 = v66;
        goto LABEL_41;
      }
    }

    v69 = *(v24 + 8);
    v70 = v31;
    v79 = v33;
    goto LABEL_41;
  }

  sub_223770EE8(v20, &qword_27D097A50, &unk_2237B7800);
  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v34 = sub_2237B5C9C();
  v35 = OUTLINED_FUNCTION_9_4(v34, qword_28131B550);
  v36 = sub_2237B5FFC();
  if (OUTLINED_FUNCTION_5(v36))
  {
    v37 = OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_4_4(v37);
    OUTLINED_FUNCTION_2_4(&dword_22375F000, v38, v39, "Starting a request without a sessinId");
    OUTLINED_FUNCTION_3_0();
  }
}

id sub_223771C3C(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2237B410C();
  v4 = [v2 initWithNSUUID_];

  v5 = sub_2237B412C();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_154@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 224) = *(v3 + a1);
  v5 = *(v1 + 16);
  result = v2;
  v7 = *(v4 - 240);
  return result;
}

void OUTLINED_FUNCTION_289()
{
  v1 = *(v0 - 200);
  v2 = *(v0 - 216);
  v3 = *(v0 - 360);
  v4 = *(v0 - 232);
}

uint64_t sub_223771D44(uint64_t a1)
{
  v2 = type metadata accessor for RequestDispatcher.SessionContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_217(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_223771EBC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_223771EF4()
{
  OUTLINED_FUNCTION_16_3();
  v5 = v4;
  v45 = v7;
  v46 = v6;
  v9 = v8;
  v10 = sub_2237B5C7C();
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v47 = v12;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_29_1();
  v18 = sub_223767020(v9, &selRef_encodedClassName);
  v48 = v18;
  if (v19)
  {
    v20 = v19;
    v42 = &v42;
    MEMORY[0x28223BE20](v18);
    v44 = (&v42 - 8);
    *(&v42 - 6) = v0;
    *(&v42 - 5) = v9;
    *(&v42 - 4) = v45;
    *(&v42 - 3) = v5;
    v21 = sub_223761B80();
    OUTLINED_FUNCTION_15_5();
    sub_2237B574C();
    v40 = &type metadata for Logger;
    v41 = v21;
    OUTLINED_FUNCTION_14_6();
    sub_2237B573C();
    v46 = *(v0 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
    v22 = v47;
    v23 = *(v47 + 16);
    OUTLINED_FUNCTION_139();
    v23();
    OUTLINED_FUNCTION_147();
    v23();
    v24 = *(v22 + 80);
    v25 = (v24 + 16) & ~v24;
    v45 = v2;
    v26 = (v14 + ((v14 + v24 + v25) & ~v24) + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = v1;
    v27 = OUTLINED_FUNCTION_305();
    v28 = v10;
    v29 = v20;
    v30 = *(v22 + 32);
    v31 = v27 + v25;
    v32 = v28;
    (v30)(v31, v3);
    OUTLINED_FUNCTION_230();
    v30();
    v33 = (v27 + v26);
    *v33 = v48;
    v33[1] = v29;
    v34 = (v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8));
    v35 = v44;
    *v34 = sub_2237725A0;
    v34[1] = v35;
    OUTLINED_FUNCTION_5_3();
    v36 = swift_allocObject();
    *(v36 + 16) = sub_223761F8C;
    *(v36 + 24) = v27;
    v49[4] = sub_223761F78;
    v49[5] = v36;
    OUTLINED_FUNCTION_7_5();
    v49[1] = 1107296256;
    OUTLINED_FUNCTION_0_5();
    v49[2] = v37;
    v49[3] = &block_descriptor_36;
    v38 = _Block_copy(v49);

    dispatch_sync(v46, v38);
    _Block_release(v38);

    v39 = *(v22 + 8);
    v39(v43, v32);
    v39(v45, v32);
    LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

    if ((v29 & 1) == 0)
    {
      OUTLINED_FUNCTION_14_2();
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_32()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_82(uint64_t a1@<X8>)
{
  *(v5 - 192) = v4;
  *(v5 - 184) = v2;
  *(v5 - 264) = (a1 - 32) | 0x8000000000000000;
  *(v5 - 176) = v1;
  *(v5 - 168) = v3;
}

void OUTLINED_FUNCTION_317(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_281(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_223772394(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sub_223767020(a2, &selRef_groupIdentifier);
  if (!v11)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = result;
  v13 = OBJC_IVAR___SRDRequestDispatcherInternal_aceCommandDispatcher;
  swift_beginAccess();
  v14 = *(a1 + v13);

  v15 = sub_22376C774(v12);

  if (v15)
  {
    result = sub_223767020(a2, &selRef_encodedClassName);
    if (v16)
    {
      v17 = sub_2237725B0(result, v16, v15);
      v19 = v18;

      if (v17)
      {
        sub_223772600(v17, v19, a2, a5, a3, a4);
        return swift_unknownObjectRelease();
      }

      if (a3)
      {
        v22 = swift_allocObject();
        *(v22 + 16) = a3;
        *(v22 + 24) = a4;
        v21 = sub_2237A9418;
        goto LABEL_10;
      }

LABEL_11:
      v23 = 0;
      goto LABEL_12;
    }

LABEL_15:
    __break(1u);
    return result;
  }

  if (!a3)
  {
    goto LABEL_11;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  v21 = sub_2237A9284;
LABEL_10:
  v23 = v21;
LABEL_12:
  sub_223772C60(a3);
  sub_2237929D8();
  return sub_223772558(v23);
}

uint64_t sub_223772558(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_223772568()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_5_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2237725B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_22376504C();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];
  return swift_unknownObjectRetain();
}

uint64_t sub_223772600(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v73 = a5;
  v74 = a6;
  v72 = a4;
  v9 = sub_2237B5CCC();
  v10 = OUTLINED_FUNCTION_0_2(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v71 = v16 - v15;
  v17 = sub_2237B5D0C();
  v18 = OUTLINED_FUNCTION_0_2(v17);
  v70 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v69 = v23 - v22;
  v76 = sub_2237B5C7C();
  v24 = OUTLINED_FUNCTION_0_2(v76);
  v26 = v25;
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v24);
  v30 = &v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v75 = &v63 - v31;
  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(a1))
  {
    v65 = v32;
    swift_getObjectType();
    v68 = v12;
    swift_unknownObjectRetain();
    v67 = v9;
    v64 = a2;
    aBlock = sub_2237B568C();
    v78 = v33;
    MEMORY[0x223DEAAD0](58, 0xE100000000000000);
    v63 = a3;
    v83 = sub_223772C54(a3);
    v84 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097358, &qword_2237B7810);
    v35 = sub_2237B5E3C();
    MEMORY[0x223DEAAD0](v35);

    v66 = v17;
    sub_223761B80();
    v36 = v75;
    sub_2237B573C();

    swift_getObjectType();
    v65 = sub_2237B555C();
    v37 = *(v26 + 16);
    v38 = v26;
    v39 = v76;
    v37(v30, v36);
    v40 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v41 = (v28 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    (*(v38 + 32))(v44 + v40, v30, v39);
    v45 = (v44 + v41);
    v46 = v64;
    *v45 = a1;
    v45[1] = v46;
    v47 = v63;
    *(v44 + v42) = v63;
    v49 = v72;
    v48 = v73;
    *(v44 + v43) = v72;
    v50 = (v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8));
    v51 = v74;
    *v50 = v48;
    v50[1] = v51;
    v81 = sub_223772D18;
    v82 = v44;
    aBlock = MEMORY[0x277D85DD0];
    v78 = 1107296256;
    v79 = sub_2237639EC;
    v80 = &block_descriptor;
    v52 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v53 = v47;
    v54 = v49;
    sub_223772C60(v48);
    v55 = v69;
    sub_2237B5CEC();
    v83 = MEMORY[0x277D84F90];
    sub_223765104(&qword_28131A840, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C90, qword_2237B7940);
    sub_223765224();
    v56 = v71;
    v57 = v67;
    sub_2237B60FC();
    v58 = v65;
    MEMORY[0x223DEACD0](0, v55, v56, v52);
    _Block_release(v52);
    swift_unknownObjectRelease();

    (*(v68 + 8))(v56, v57);
    (*(v70 + 8))(v55, v66);
    (*(v38 + 8))(v75, v76);
  }

  else
  {
    v60 = v72;
    v61 = v73;
    v62 = v74;

    return sub_223772DD0(a1, a2, a3, v60, v61, v62);
  }
}

uint64_t sub_223772B74()
{
  v1 = sub_2237B5C7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5);
  swift_unknownObjectRelease();

  if (*(v0 + v8))
  {
    v10 = *(v0 + v8 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + 16, v3 | 7);
}

uint64_t sub_223772C60(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_223772C74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_223761B80();
  sub_2237B572C();

  return sub_223772DD0(a2, a3, a4, a5, a6, a7);
}

uint64_t sub_223772D18()
{
  v1 = *(sub_2237B5C7C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);
  v10 = *(v0 + v5);
  v11 = (v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_223772C74(v0 + v2, v7, v8, v9, v10, v12, v13);
}

uint64_t sub_223772DD0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a5;
  v36 = a6;
  v34 = a4;
  v7 = sub_2237B5C7C();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v7);
  v33 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131AA10 != -1)
  {
    swift_once();
  }

  v10 = sub_2237B5C9C();
  __swift_project_value_buffer(v10, qword_28131B550);
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = sub_2237B5C8C();
  v13 = sub_2237B5FEC();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v39[0] = v15;
    *v14 = 136315650;
    v40 = sub_223772C54(v11);
    v41 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097358, &qword_2237B7810);
    v17 = sub_2237B5E3C();
    v19 = sub_223763694(v17, v18, v39);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v40 = sub_223773198(v11);
    v41 = v20;
    v21 = sub_2237B5E3C();
    v23 = sub_223763694(v21, v22, v39);

    *(v14 + 14) = v23;
    *(v14 + 22) = 2080;
    swift_getObjectType();
    v24 = sub_2237B568C();
    v26 = sub_223763694(v24, v25, v39);

    *(v14 + 24) = v26;
    _os_log_impl(&dword_22375F000, v12, v13, "Forwarding ace command %s with aceId: %s to bridge: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DEB690](v15, -1, -1);
    MEMORY[0x223DEB690](v14, -1, -1);
  }

  ObjectType = swift_getObjectType();
  v40 = sub_2237B568C();
  v41 = v27;
  MEMORY[0x223DEAAD0](58, 0xE100000000000000);
  v39[0] = sub_223772C54(v11);
  v39[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097358, &qword_2237B7810);
  v29 = sub_2237B5E3C();
  MEMORY[0x223DEAAD0](v29);

  sub_223761B80();
  v30 = v33;
  sub_2237B573C();

  sub_2237B569C();
  sub_2237B572C();
  return (*(v37 + 8))(v30, v38);
}

uint64_t sub_2237731A4()
{
  sub_2237731FC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2237731FC()
{
  v1 = OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionId;
  v2 = sub_2237B412C();
  OUTLINED_FUNCTION_4(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_assistantId + 8);

  v5 = OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionType;
  v6 = sub_2237B563C();
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 8))(v0 + v5);

  v9 = *(v0 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionState);
  v8 = *(v0 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionState + 8);

  v10 = *(v0 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_snapshots);

  v11 = *(v0 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_snapshotRequestIds);

  return v0;
}

uint64_t sub_2237732EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_syncQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097350, qword_2237B7EC0);
  return OUTLINED_FUNCTION_11_3();
}

uint64_t sub_223773380@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_2237733A0(v1[2], a1);
}

uint64_t sub_2237733A0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (a1 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionState);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  sub_223773444(v5, v4, a2);
}

double sub_223773444@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, _OWORD *a3@<X8>)
{
  if (*(a1 + 16) && (sub_223774D10(), (v7 & 1) != 0))
  {
    sub_22376AEC8(*(a1 + 56) + 32 * v6, v16);
    sub_223774DE4(v16, a3);
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v9 = sub_2237B5C9C();
    __swift_project_value_buffer(v9, qword_28131B550);
    v10 = sub_2237B5C8C();
    v11 = sub_2237B601C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22375F000, v10, v11, "Could not find key in user-specific session data. Falling back to shared space", v12, 2u);
      OUTLINED_FUNCTION_8();
    }

    if (*(a2 + 16) && (sub_223774D10(), (v14 & 1) != 0))
    {
      v15 = *(a2 + 56) + 32 * v13;

      sub_22376AEC8(v15, a3);
    }

    else
    {
      result = 0.0;
      *a3 = 0u;
      a3[1] = 0u;
    }
  }

  return result;
}

uint64_t sub_2237735F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_syncQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097350, qword_2237B7EC0);
  return OUTLINED_FUNCTION_11_3();
}

uint64_t sub_223773664(uint64_t a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_syncQueue);
  OUTLINED_FUNCTION_5_3();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  OUTLINED_FUNCTION_5_3();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2237738C0;
  *(v6 + 24) = v5;
  v9[4] = sub_2237750B8;
  v9[5] = v6;
  OUTLINED_FUNCTION_2_3();
  v9[1] = 1107296256;
  OUTLINED_FUNCTION_0_5();
  v9[2] = v7;
  v9[3] = &block_descriptor_59;
  _Block_copy(v9);
  OUTLINED_FUNCTION_8_3();

  dispatch_sync(v4, v2);
  _Block_release(v2);
  LOBYTE(v4) = OUTLINED_FUNCTION_9_3();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_223773794()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_5_3();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

double sub_2237737F4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (a1 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionState);
  swift_beginAccess();
  v4 = v3[1];
  if (*(v4 + 16))
  {
    v5 = *v3;

    sub_223774D10();
    if (v7)
    {
      sub_22376AEC8(*(v4 + 56) + 32 * v6, a2);

      return result;
    }
  }

  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

uint64_t sub_2237738C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_223773D18();
}

void sub_2237738C8()
{
  OUTLINED_FUNCTION_16_3();
  v23 = v0;
  v24 = v1;
  v25 = v2;
  v4 = v3;
  v5 = sub_2237B56DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_2237B560C();
  v9 = OUTLINED_FUNCTION_0_2(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v0 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_syncQueue);
  sub_223773DA0(v4, v28);
  (*(v11 + 16))(v14, v24, v8);
  v15 = v5;
  (*(v6 + 16))(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v5);
  v16 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v17 = (v13 + *(v6 + 80) + v16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v23;
  v19 = v28[1];
  *(v18 + 24) = v28[0];
  *(v18 + 40) = v19;
  (*(v11 + 32))(v18 + v16, v14, v8);
  (*(v6 + 32))(v18 + v17, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  OUTLINED_FUNCTION_5_3();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_223774BD8;
  *(v20 + 24) = v18;
  v27[4] = sub_2237750B8;
  v27[5] = v20;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 1107296256;
  OUTLINED_FUNCTION_0_5();
  v27[2] = v21;
  v27[3] = &block_descriptor_49;
  v22 = _Block_copy(v27);

  dispatch_sync(v26, v22);
  _Block_release(v22);
  LOBYTE(v22) = OUTLINED_FUNCTION_9_3();

  if (v22)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_223773BB4()
{
  OUTLINED_FUNCTION_16_3();
  v1 = sub_2237B560C();
  OUTLINED_FUNCTION_0_2(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_2237B56DC();
  OUTLINED_FUNCTION_0_2(v7);
  v9 = v8;
  v10 = *(v8 + 80);
  v12 = *(v11 + 64);
  v13 = v0[2];

  if (v0[6])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  }

  v14 = (v4 + 56) & ~v4;
  v15 = (v14 + v6 + v10) & ~v10;
  (*(v3 + 8))(v0 + v14, v1);
  (*(v9 + 8))(v0 + v15, v7);
  OUTLINED_FUNCTION_14_2();

  return MEMORY[0x2821FE8E8](v16, v17, v18);
}

uint64_t sub_223773D18()
{
  swift_beginAccess();
  sub_223773E10();
  return swift_endAccess();
}

uint64_t sub_223773DA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097350, qword_2237B7EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_223773E10()
{
  OUTLINED_FUNCTION_16_3();
  v155 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097EB0, &qword_2237B94F8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_3();
  v7 = v5 - v6;
  v9 = MEMORY[0x28223BE20](v8);
  isUniquelyReferenced_nonNull_native = &v144 - v10;
  MEMORY[0x28223BE20](v9);
  v159 = &v144 - v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20_0();
  v152 = v14;
  v15 = sub_2237B560C();
  v16 = OUTLINED_FUNCTION_0_2(v15);
  v157 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v22 = v20 - v21;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v144 - v25;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_20_0();
  v151 = v27;
  if (qword_28131AA10 != -1)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v28 = sub_2237B5C9C();
    __swift_project_value_buffer(v28, qword_28131B550);

    v29 = sub_2237B5C8C();
    v30 = sub_2237B5FEC();

    v31 = os_log_type_enabled(v29, v30);
    v146 = v7;
    v145 = isUniquelyReferenced_nonNull_native;
    v150 = v22;
    v158 = v15;
    v154 = v26;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v164 = v33;
      *v32 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097350, qword_2237B7EC0);
      OUTLINED_FUNCTION_0_8();
      sub_223774B1C(v34, v35);
      v36 = sub_2237B5DCC();
      v38 = sub_223763694(v36, v37, &v164);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_22375F000, v29, v30, "Updating shared value for keys: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_8();
    }

    v22 = v152;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097EC0, qword_2237B9508);
    v39 = sub_2237B61BC();
    v7 = 0;
    v147 = v2;
    v40 = *(v2 + 64);
    v2 += 64;
    v148 = v2;
    v41 = 1 << *(v2 - 32);
    OUTLINED_FUNCTION_8_9();
    isUniquelyReferenced_nonNull_native = (v42 >> 6);
    v156 = v157 + 16;
    v44 = v43 + 64;
    v160 = (v157 + 32);
    v149 = v43;
    v45 = v157;
    if (!v2)
    {
      break;
    }

    while (1)
    {
      v46 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
LABEL_11:
      v22 = v46 | (v7 << 6);
      v26 = *(v45 + 72) * v22;
      v49 = v151;
      v15 = v158;
      (*(v45 + 16))(v151, *(v147 + 48) + v26, v158);
      *(v44 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v50 = v49;
      v39 = v149;
      (*(v45 + 32))(*(v149 + 48) + v26, v50, v15);
      v51 = (*(v39 + 56) + 32 * v22);
      *v51 = 0u;
      v51[1] = 0u;
      v52 = *(v39 + 16);
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        break;
      }

      *(v39 + 16) = v54;
      v22 = v152;
      if (!v2)
      {
        goto LABEL_6;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

LABEL_6:
  v47 = v7;
  while (1)
  {
    v7 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    if (v7 >= isUniquelyReferenced_nonNull_native)
    {
      break;
    }

    v48 = *(v148 + 8 * v7);
    ++v47;
    if (v48)
    {
      v46 = __clz(__rbit64(v48));
      v2 = (v48 - 1) & v48;
      goto LABEL_11;
    }
  }

  v55 = 1 << *(v39 + 32);
  v56 = *(v39 + 64);
  OUTLINED_FUNCTION_22_2();
  v2 = v58 & v57;
  v7 = (v59 + 63) >> 6;
  v153 = (v157 + 8);

  v26 = 0;
  v15 = &qword_27D097EB8;
  isUniquelyReferenced_nonNull_native = v159;
  v144 = v44;
  while (1)
  {
    while (1)
    {
      if (!v2)
      {
        while (1)
        {
          v60 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v60 >= v7)
          {
            v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097EB8, &qword_2237B9500);
            __swift_storeEnumTagSinglePayload(isUniquelyReferenced_nonNull_native, 1, 1, v102);
            v2 = 0;
            goto LABEL_21;
          }

          v2 = *(v44 + 8 * v60);
          ++v26;
          if (v2)
          {
            v26 = v60;
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_65;
      }

LABEL_20:
      OUTLINED_FUNCTION_19_7();
      v63 = v62 | (v61 << 6);
      v64 = v149;
      v65 = v157;
      v66 = v158;
      v67 = v151;
      (*(v157 + 16))(v151, *(v149 + 48) + *(v157 + 72) * v63, v158);
      sub_223773DA0(*(v64 + 56) + 32 * v63, &v164);
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097EB8, &qword_2237B9500);
      v69 = &v159[*(v68 + 48)];
      (*(v65 + 32))(v159, v67, v66);
      v70 = v165;
      *v69 = v164;
      *(v69 + 1) = v70;
      isUniquelyReferenced_nonNull_native = v159;
      __swift_storeEnumTagSinglePayload(v159, 0, 1, v68);
      v22 = v152;
      v44 = v144;
LABEL_21:
      sub_223774B68(isUniquelyReferenced_nonNull_native, v22);
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097EB8, &qword_2237B9500);
      if (__swift_getEnumTagSinglePayload(v22, 1, v71) == 1)
      {

        v103 = 1 << *(v147 + 32);
        v104 = *(v147 + 64);
        OUTLINED_FUNCTION_22_2();
        v7 = v106 & v105;
        v108 = (v107 + 63) >> 6;

        v2 = 0;
        OUTLINED_FUNCTION_7_7();
        v15 = v158;
        v26 = v155;
        v159 = v108;
        while (v7)
        {
          v110 = v2;
LABEL_45:
          v111 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v112 = v111 | (v110 << 6);
          v113 = v147;
          v114 = v157;
          v15 = v158;
          v115 = v151;
          (*(v157 + 16))(v151, *(v147 + 48) + *(v157 + 72) * v112, v158);
          sub_223773DA0(*(v113 + 56) + 32 * v112, &v164);
          v116 = (v22 + *(v71 + 48));
          (*(v114 + 32))(v22, v115, v15);
          v117 = v165;
          *v116 = v164;
          v116[1] = v117;
          __swift_storeEnumTagSinglePayload(v22, 0, 1, v71);
LABEL_46:
          isUniquelyReferenced_nonNull_native = v145;
          sub_223774B68(v22, v145);
          if (__swift_getEnumTagSinglePayload(isUniquelyReferenced_nonNull_native, 1, v71) == 1)
          {

            OUTLINED_FUNCTION_14_2();
            return;
          }

          v118 = &isUniquelyReferenced_nonNull_native[*(v71 + 48)];
          v119 = v150;
          (*v160)(v150, isUniquelyReferenced_nonNull_native, v15);
          v120 = *(v118 + 1);
          v164 = *v118;
          v165 = v120;
          if (*(&v120 + 1))
          {
            sub_223774DE4(&v164, &v162);
            v121 = *(v26 + 8);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v161 = *(v26 + 8);
            sub_223774D10();
            OUTLINED_FUNCTION_11_9();
            if (__OFADD__(v124, v125))
            {
              goto LABEL_68;
            }

            v126 = v122;
            v22 = v123;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E90, &qword_2237B9490);
            OUTLINED_FUNCTION_6_7();
            if (sub_2237B618C())
            {
              sub_223774D10();
              v26 = v155;
              if ((v22 & 1) != (v128 & 1))
              {
                goto LABEL_73;
              }

              v126 = v127;
            }

            else
            {
              v26 = v155;
            }

            isUniquelyReferenced_nonNull_native = v161;
            if (v22)
            {
              v139 = (*(v161 + 7) + 32 * v126);
              __swift_destroy_boxed_opaque_existential_0Tm(v139);
              sub_223774DE4(&v162, v139);
              (*v153)(v150, v15);
            }

            else
            {
              OUTLINED_FUNCTION_4_10(&v161[8 * (v126 >> 6)]);
              v22 = v150;
              (*(v157 + 16))(*(isUniquelyReferenced_nonNull_native + 6) + *(v157 + 72) * v126, v150, v15);
              sub_223774DE4(&v162, (*(isUniquelyReferenced_nonNull_native + 7) + 32 * v126));
              v140 = OUTLINED_FUNCTION_20_7();
              v141(v140);
              v142 = *(isUniquelyReferenced_nonNull_native + 2);
              v53 = __OFADD__(v142, 1);
              v143 = v142 + 1;
              if (v53)
              {
                goto LABEL_70;
              }

              *(isUniquelyReferenced_nonNull_native + 2) = v143;
            }

            *(v26 + 8) = isUniquelyReferenced_nonNull_native;
            OUTLINED_FUNCTION_7_7();
            v108 = v159;
          }

          else
          {
            sub_223774CA8(&v164);
            v129 = *(v26 + 8);
            sub_223774D10();
            if (v131)
            {
              v132 = v130;
              v133 = *(v26 + 8);
              swift_isUniquelyReferenced_nonNull_native();
              v161 = *(v26 + 8);
              v134 = *(v161 + 3);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E90, &qword_2237B9490);
              OUTLINED_FUNCTION_6_7();
              sub_2237B618C();
              OUTLINED_FUNCTION_16_7();
              isUniquelyReferenced_nonNull_native = *(v137 + 8);
              v22 = v153;
              (isUniquelyReferenced_nonNull_native)(v135 + v136 * v132, v15);
              sub_223774DE4((*(v129 + 56) + 32 * v132), &v162);
              OUTLINED_FUNCTION_0_8();
              sub_223774B1C(qword_28131A8A8, v138);
              sub_2237B619C();
              (isUniquelyReferenced_nonNull_native)(v119, v15);
              *(v26 + 8) = v129;
            }

            else
            {
              (*v153)(v119, v15);
              v162 = 0u;
              v163 = 0u;
            }

            v108 = v159;
            sub_223774CA8(&v162);
            OUTLINED_FUNCTION_7_7();
          }
        }

        while (1)
        {
          v110 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            break;
          }

          if (v110 >= v108)
          {
            __swift_storeEnumTagSinglePayload(v22, 1, 1, v71);
            v7 = 0;
            goto LABEL_46;
          }

          v7 = *(v109 + 8 * v110);
          ++v2;
          if (v7)
          {
            v2 = v110;
            goto LABEL_45;
          }
        }

LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v72 = (v22 + *(v71 + 48));
      v73 = v154;
      v15 = v158;
      (*v160)(v154, v22, v158);
      v74 = v72[1];
      v164 = *v72;
      v165 = v74;
      v75 = v155;
      if (*(&v74 + 1))
      {
        break;
      }

      sub_223774CA8(&v164);
      v86 = *v75;
      sub_223774D10();
      if (v88)
      {
        v89 = v87;
        v90 = *v75;
        swift_isUniquelyReferenced_nonNull_native();
        v161 = *v75;
        v91 = *(v161 + 3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E90, &qword_2237B9490);
        OUTLINED_FUNCTION_6_7();
        sub_2237B618C();
        OUTLINED_FUNCTION_16_7();
        v95 = *(v94 + 8);
        v95(v92 + v93 * v89, v15);
        sub_223774DE4((*(v86 + 7) + 32 * v89), &v162);
        OUTLINED_FUNCTION_0_8();
        sub_223774B1C(qword_28131A8A8, v96);
        sub_2237B619C();
        v95(v154, v15);
        v22 = v152;
        isUniquelyReferenced_nonNull_native = v159;
        *v75 = v86;
      }

      else
      {
        (*v153)(v73, v15);
        v162 = 0u;
        v163 = 0u;
      }

      v15 = &qword_27D097EB8;
      sub_223774CA8(&v162);
    }

    sub_223774DE4(&v164, &v162);
    v76 = *v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v161 = *v75;
    sub_223774D10();
    OUTLINED_FUNCTION_11_9();
    if (__OFADD__(v79, v80))
    {
      goto LABEL_67;
    }

    v81 = v77;
    v82 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E90, &qword_2237B9490);
    OUTLINED_FUNCTION_6_7();
    if (sub_2237B618C())
    {
      break;
    }

    v85 = v155;
LABEL_30:
    isUniquelyReferenced_nonNull_native = v161;
    if (v82)
    {
      v97 = (*(v161 + 7) + 32 * v81);
      __swift_destroy_boxed_opaque_existential_0Tm(v97);
      sub_223774DE4(&v162, v97);
      (*v153)(v154, v15);
    }

    else
    {
      *&v161[8 * (v81 >> 6) + 64] |= 1 << v81;
      v22 = v154;
      (*(v157 + 16))(*(isUniquelyReferenced_nonNull_native + 6) + *(v157 + 72) * v81, v154, v15);
      sub_223774DE4(&v162, (*(isUniquelyReferenced_nonNull_native + 7) + 32 * v81));
      v98 = OUTLINED_FUNCTION_20_7();
      v99(v98);
      v100 = *(isUniquelyReferenced_nonNull_native + 2);
      v53 = __OFADD__(v100, 1);
      v101 = v100 + 1;
      if (v53)
      {
        goto LABEL_69;
      }

      *(isUniquelyReferenced_nonNull_native + 2) = v101;
    }

    *v85 = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = v159;
    v22 = v152;
    v15 = &qword_27D097EB8;
  }

  sub_223774D10();
  v85 = v155;
  if ((v82 & 1) == (v84 & 1))
  {
    v81 = v83;
    goto LABEL_30;
  }

LABEL_73:
  sub_2237B62CC();
  __break(1u);
}

uint64_t sub_223774B1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_223774B68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097EB0, &qword_2237B94F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_223774BD8()
{
  v1 = *(sub_2237B560C() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_2237B56DC();
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v0 + 16);
  v7 = v0 + ((v2 + v3 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_2237751BC();
}

uint64_t sub_223774CA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097350, qword_2237B7EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_223774D10()
{
  v1 = *(v0 + 40);
  sub_2237B560C();
  sub_2237651DC(qword_28131A8A8, MEMORY[0x277D5D1F0]);
  sub_2237B5DDC();
  sub_22376AD50();
}

_OWORD *sub_223774DE4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_223774DF4()
{
  OUTLINED_FUNCTION_16_3();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_2237B560C();
  v7 = OUTLINED_FUNCTION_0_2(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v18 = sub_2237B5C9C();
  __swift_project_value_buffer(v18, qword_28131B550);
  v40 = *(v9 + 16);
  v40(v17, v3, v6);
  v19 = v6;
  v20 = sub_2237B5C8C();
  v21 = sub_2237B5FEC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = v3;
    v23 = v22;
    v24 = swift_slowAlloc();
    v38 = v5;
    v25 = v24;
    v42[0] = v24;
    *v23 = 136315138;
    v36 = v14;
    v26 = v19;
    v27 = sub_2237B55FC();
    v39 = v1;
    v29 = v28;
    (*(v9 + 8))(v17, v26);
    v30 = sub_223763694(v27, v29, v42);

    *(v23 + 4) = v30;
    _os_log_impl(&dword_22375F000, v20, v21, "Updating shared value for key: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    v5 = v38;
    OUTLINED_FUNCTION_8();
    v3 = v37;
    OUTLINED_FUNCTION_8();

    v31 = v26;
    v14 = v36;
  }

  else
  {

    (*(v9 + 8))(v17, v19);
    v31 = v19;
  }

  memset(v42, 0, sizeof(v42));
  v32 = v40;
  v40(v14, v3, v31);
  v33 = OUTLINED_FUNCTION_15_8();
  sub_223773DA0(v33, v34);
  sub_2237750BC(&v41, v14);
  sub_223774CA8(v42);
  v32(v14, v3, v31);
  sub_223773DA0(v5, v42);
  sub_2237750BC(v42, v14);
  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_2237750BC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_223774DE4(a1, v9);
    v4 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_2237755FC();
    *v2 = v8;
    v5 = sub_2237B560C();
    return (*(*(v5 - 8) + 8))(a2, v5);
  }

  else
  {
    sub_223774CA8(a1);
    sub_223775C50(v9);
    v7 = sub_2237B560C();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_223774CA8(v9);
  }
}

uint64_t sub_2237751BC()
{
  swift_beginAccess();
  sub_223775238();
  return swift_endAccess();
}

void sub_223775238()
{
  OUTLINED_FUNCTION_16_3();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v53 = v6;
  v7 = sub_2237B56DC();
  v8 = OUTLINED_FUNCTION_0_2(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  v54 = sub_2237B560C();
  v16 = OUTLINED_FUNCTION_0_2(v54);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v51 = v21 - v22;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  v25 = &v47 - v24;
  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v26 = sub_2237B5C9C();
  __swift_project_value_buffer(v26, qword_28131B550);
  v27 = *(v18 + 16);
  v52 = v5;
  v50 = v27;
  v27(v25, v5, v54);
  (*(v10 + 16))(v15, v3, v7);
  v28 = sub_2237B5C8C();
  v29 = sub_2237B5FEC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    HIDWORD(v47) = v29;
    v31 = v30;
    v48 = swift_slowAlloc();
    v55[0] = v48;
    *v31 = 136315394;
    v32 = sub_2237B55FC();
    v49 = v1;
    v34 = v33;
    v35 = v25;
    v36 = v54;
    (*(v18 + 8))(v35, v54);
    v37 = sub_223763694(v32, v34, v55);

    *(v31 + 4) = v37;
    *(v31 + 12) = 2080;
    OUTLINED_FUNCTION_5_8();
    sub_223774B1C(v38, v39);
    v40 = sub_2237B627C();
    v42 = v41;
    (*(v10 + 8))(v15, v7);
    v43 = sub_223763694(v40, v42, v55);

    *(v31 + 14) = v43;
    _os_log_impl(&dword_22375F000, v28, BYTE4(v47), "Updating value for key: %s userId: %s", v31, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_8();

    v44 = v36;
  }

  else
  {

    (*(v10 + 8))(v15, v7);
    v45 = v54;
    (*(v18 + 8))(v25, v54);
    v44 = v45;
  }

  v46 = v51;
  v50(v51, v52, v44);
  sub_223773DA0(v53, v55);
  sub_2237750BC(v55, v46);
  OUTLINED_FUNCTION_14_2();
}

void OUTLINED_FUNCTION_239(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void sub_2237755FC()
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_23_4();
  v1 = sub_2237B560C();
  v2 = OUTLINED_FUNCTION_0_2(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_30_3();
  sub_223774D10();
  OUTLINED_FUNCTION_5_7(v5, v6);
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E90, &qword_2237B9490);
  if ((OUTLINED_FUNCTION_13_6() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = *v0;
  sub_223774D10();
  if ((v11 & 1) != (v14 & 1))
  {
LABEL_11:
    sub_2237B62CC();
    __break(1u);
    return;
  }

  v10 = v13;
LABEL_5:
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_0Tm((*(*v0 + 56) + 32 * v10));
    OUTLINED_FUNCTION_14_2();

    sub_223774DE4(v15, v16);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_32_1();
    v19(v18);
    v20 = OUTLINED_FUNCTION_34_1();
    sub_223775AD8(v20, v21, v22, v23);
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_223775770(uint64_t a1, uint64_t a2)
{
  v6 = sub_2237B560C();
  v7 = OUTLINED_FUNCTION_0_2(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_2();
  v12 = *(v2 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_syncQueue);
  sub_223773DA0(a1, v21);
  (*(v9 + 16))(v3, a2, v6);
  v13 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  v15 = v21[1];
  *(v14 + 24) = v21[0];
  *(v14 + 40) = v15;
  (*(v9 + 32))(v14 + v13, v3, v6);
  OUTLINED_FUNCTION_5_3();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_223775BE8;
  *(v16 + 24) = v14;
  aBlock[4] = sub_2237750B8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_0_5();
  aBlock[2] = v17;
  aBlock[3] = &block_descriptor_69;
  v18 = _Block_copy(aBlock);

  dispatch_sync(v12, v18);
  _Block_release(v18);
  LOBYTE(v12) = OUTLINED_FUNCTION_9_3();

  if (v12)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_223775998()
{
  v1 = sub_2237B560C();
  OUTLINED_FUNCTION_0_2(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);
  v7 = v0[2];

  if (v0[6])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  }

  v8 = (v4 + 56) & ~v4;
  (*(v3 + 8))(v0 + v8, v1);

  return MEMORY[0x2821FE8E8](v0, v8 + v6, v4 | 7);
}

uint64_t sub_223775A6C()
{
  swift_beginAccess();
  sub_223774DF4();
  return swift_endAccess();
}

_OWORD *sub_223775AD8(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_31_2();
  *(v9 + 8 * (v8 >> 6) + 64) |= 1 << v8;
  v10 = *(v9 + 48);
  v11 = sub_2237B560C();
  OUTLINED_FUNCTION_4(v11);
  (*(v12 + 32))(v10 + *(v12 + 72) * v5, v4);
  result = sub_223774DE4(a3, (*(a4 + 56) + 32 * v5));
  v14 = *(a4 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v16;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_31()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_31_1()
{
  v2 = v0[30];
  result = v0[31];
  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[14];
  v11 = v0[15];
  v12 = v0[12];
  v13 = v0[13];
  return result;
}

uint64_t sub_223775BE8()
{
  v1 = sub_2237B560C();
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);

  return sub_223775A6C();
}

double sub_223775C50@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  sub_223774D10();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    v9 = *(*v2 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E90, &qword_2237B9490);
    sub_2237B618C();
    v10 = *(v14 + 48);
    v11 = sub_2237B560C();
    OUTLINED_FUNCTION_4(v11);
    (*(v12 + 8))(v10 + *(v12 + 72) * v7, v11);
    sub_223774DE4((*(v14 + 56) + 32 * v7), a1);
    sub_2237651DC(qword_28131A8A8, MEMORY[0x277D5D1F0]);
    sub_2237B619C();
    *v2 = v14;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

void sub_223775DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2237B405C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}