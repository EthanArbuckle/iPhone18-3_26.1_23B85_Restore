uint64_t sub_2236227C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_223622868(void *a1)
{
  v2 = sub_22372AC78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  (MEMORY[0x28223BE20])();
  v85 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22372A548();
  v86 = *(v6 - 8);
  v87 = v6;
  v7 = *(v86 + 64);
  (MEMORY[0x28223BE20])();
  v91 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_223727408();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  (MEMORY[0x28223BE20])();
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v14 = sub_22372AC98();
  __swift_project_value_buffer(v14, qword_28132B680);
  v15 = sub_22372AC88();
  v16 = sub_22372B268();
  v17 = os_log_type_enabled(v15, v16);
  v89 = v9;
  v90 = v10;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v107[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_223623274(0xD00000000000001FLL, 0x8000000223736C00, v107);
    _os_log_impl(&dword_223620000, v15, v16, "%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x223DE8A80](v19, -1, -1);
    MEMORY[0x223DE8A80](v18, -1, -1);
  }

  v20 = a1;
  v21 = sub_22372AC88();
  v22 = sub_22372B288();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v84 = v2;
    v107[0] = v83;
    *v23 = 136446210;
    sub_223729D58();
    sub_223623398(&qword_28132B600, MEMORY[0x277CC95F0]);
    v24 = v3;
    v25 = v89;
    v26 = sub_22372B6B8();
    v28 = v27;
    v29 = v25;
    v3 = v24;
    (*(v90 + 8))(v13, v29);
    v30 = sub_223623274(v26, v28, v107);

    *(v23 + 4) = v30;
    _os_log_impl(&dword_223620000, v21, v22, "handleSessionStartedMessage with sessionId: %{public}s", v23, 0xCu);
    v31 = v83;
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    v2 = v84;
    MEMORY[0x223DE8A80](v31, -1, -1);
    MEMORY[0x223DE8A80](v23, -1, -1);
  }

  sub_223729D58();
  sub_223728468();
  LODWORD(v84) = sub_223728458();
  v32 = type metadata accessor for TTManagerProxy();
  v33 = swift_allocObject();
  sub_223623470();
  v34 = v85;
  sub_22372A7D8();
  *(v33 + 16) = [objc_allocWithZone(sub_22372AB18()) init];
  sub_22372A7B8();
  (*(v3 + 8))(v34, v2);
  v35 = type metadata accessor for PromptStateManager();
  v80 = v35;
  v36 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EA50, &qword_22372D710);
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v36 + 16) = v37;
  *(v36 + 24) = 0;
  v38 = sub_22372AC68();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v85 = sub_22372AC58();
  v41 = type metadata accessor for RequestStateInfo();
  v42 = swift_allocObject();
  *(v42 + 16) = sub_223625FB8(MEMORY[0x277D84F90]);
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v42 + 24) = v43;
  v107[3] = v32;
  v107[4] = &off_2836C76D8;
  v107[0] = v33;
  v105 = v35;
  v106 = &off_2836C61C0;
  v104[0] = v36;
  v102 = v41;
  v103 = &off_2836C7D58;
  v101[0] = v42;
  v44 = type metadata accessor for RequestControllerBridge.SessionContext(0);
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  v47 = swift_allocObject();
  v48 = __swift_mutable_project_boxed_opaque_existential_1(v107, v32);
  v83 = &v79;
  v49 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v48, v48);
  v51 = (&v79 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v52 + 16))(v51);
  v53 = v105;
  v54 = __swift_mutable_project_boxed_opaque_existential_1(v104, v105);
  v82 = &v79;
  v55 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v54, v54);
  v57 = (&v79 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v58 + 16))(v57);
  v59 = v102;
  v60 = __swift_mutable_project_boxed_opaque_existential_1(v101, v102);
  v81 = &v79;
  v61 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v60, v60);
  v63 = v13;
  v64 = (&v79 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v65 + 16))(v64);
  v66 = *v51;
  v67 = *v57;
  v68 = *v64;
  v99 = v32;
  v100 = &off_2836C76D8;
  *&v98 = v66;
  v96 = v80;
  v97 = &off_2836C61C0;
  *&v95 = v67;
  v94 = &off_2836C7D58;
  v69 = MEMORY[0x277D84F90];
  *(v47 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_deferredRequests) = MEMORY[0x277D84F90];
  v93 = v41;
  *&v92 = v68;
  v70 = v89;
  v71 = v90;
  (*(v90 + 56))(v47 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_ongoingOrchestrationTaskId, 1, 1, v89);
  v72 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestIdToMuxRequestContext;
  *(v47 + v72) = sub_22362654C(v69);
  (*(v71 + 32))(v47 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_sessionId, v63, v70);
  (*(v86 + 32))(v47 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_sessionUserId, v91, v87);
  *(v47 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_isSystemAssistantExperienceEnabled) = v84 & 1;
  sub_2236241E8(&v98, v47 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_ttManagerProxy);
  sub_2236241E8(&v95, v47 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_promptStateManager);
  v73 = v47 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_contextRetrievalHelper;
  *v73 = v85;
  *(v73 + 8) = v108;
  *(v73 + 24) = v38;
  *(v73 + 32) = &off_2836C58E0;
  v74 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_userSessionState;
  v75 = *MEMORY[0x277D5D0D0];
  v76 = sub_22372A298();
  (*(*(v76 - 8) + 104))(v47 + v74, v75, v76);
  sub_2236241E8(&v92, v47 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestStateInfoManager);
  __swift_destroy_boxed_opaque_existential_1Tm(v101);
  __swift_destroy_boxed_opaque_existential_1Tm(v104);
  __swift_destroy_boxed_opaque_existential_1Tm(v107);
  v77 = *(v88 + qword_28132AB08);
  *(v88 + qword_28132AB08) = v47;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_223623274(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_223623560(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2236227C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_223623398(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2236233E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_223623428(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_223623470()
{
  result = qword_28132AA90;
  if (!qword_28132AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28132AA90);
  }

  return result;
}

id sub_2236234C4()
{
  if (qword_28132AA98 != -1)
  {
    swift_once();
  }

  v1 = qword_28132B930;

  return v1;
}

unint64_t sub_223623560(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22362EA68(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_22372B4C8();
    a6 = v11;
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

uint64_t sub_22362366C(uint64_t *a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2236242EC;

  return sub_2236237F8(a1, v7, v6, a2);
}

uint64_t sub_223623750(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2236242EC;

  return sub_223623998(a1, v2, a2);
}

uint64_t sub_2236237F8(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v7 = *(*(type metadata accessor for IntelligenceFlowSessionBridge.Error(0) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v4[3] = v8;
  v9 = *a1;
  v13 = (a2 + *a2);
  v10 = a2[1];
  v11 = swift_task_alloc();
  v4[4] = v11;
  *v11 = v4;
  v11[1] = sub_2236264D8;

  return v13(v9, v8);
}

uint64_t sub_223623934(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_223623998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *(*(type metadata accessor for IntelligenceFlowSessionBridge.Error(0) - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v3[3] = v6;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_223624D18;

  return sub_223623A70(a1, v6);
}

uint64_t sub_223623A70(uint64_t a1, uint64_t a2)
{
  v3[16] = v2;
  v3[17] = a2;
  v3[15] = a1;
  v4 = *(*(type metadata accessor for IntelligenceFlowSessionBridge.Error(0) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v5 = sub_22372A548();
  v3[19] = v5;
  v6 = *(v5 - 8);
  v3[20] = v6;
  v7 = *(v6 + 64) + 15;
  v3[21] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EDA8, &qword_22372E738) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v9 = sub_22372A3B8();
  v3[23] = v9;
  v10 = *(v9 - 8);
  v3[24] = v10;
  v11 = *(v10 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223623C00, v2, 0);
}

uint64_t sub_223623C00()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[15];
  sub_223728448();
  LOBYTE(v4) = sub_22372A388();
  v5 = *(v3 + 8);
  v0[27] = v5;
  v0[28] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  if (v4)
  {
    v6 = v0[23];
    v7 = v0[24];
    v8 = v0[22];
    v9 = v0[15];
    v10 = v0[16];
    sub_223728448();
    (*(v7 + 56))(v8, 0, 1, v6);
    v11 = OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_conversationSessionInfo;
    swift_beginAccess();
    sub_223623F04(v8, v10 + v11);
    swift_endAccess();
    v0[29] = *(v10 + 112);
    v12 = *(v10 + 120);
    v0[30] = v12;
    v0[31] = swift_getObjectType();
    v0[5] = sub_223728478();
    v0[6] = &protocol witness table for SessionStartedMessage;
    v0[2] = v9;
    v13 = *(v12 + 48);
    v12 += 48;
    v0[32] = v13;
    v0[33] = v12 & 0xFFFFFFFFFFFFLL | 0xBE22000000000000;
    v14 = *(v12 - 40);
    v15 = v9;
    v17 = sub_22372B168();
    v0[34] = v17;
    v0[35] = v16;

    return MEMORY[0x2822009F8](sub_223623F74, v17, v16);
  }

  else
  {
    if (qword_281328E50 != -1)
    {
      swift_once();
    }

    v18 = v0[15];
    v19 = sub_22372AC98();
    __swift_project_value_buffer(v19, qword_28132B668);
    v20 = v18;
    v21 = sub_22372AC88();
    v22 = sub_22372B268();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = v0[15];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v23;
      *v25 = v23;
      v26 = v23;
      _os_log_impl(&dword_223620000, v21, v22, "SAE is not enabled. Ignoring %@. Not saving conversationSessionInfo.", v24, 0xCu);
      sub_223626478(v25, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v25, -1, -1);
      MEMORY[0x223DE8A80](v24, -1, -1);
    }

    v28 = v0[25];
    v27 = v0[26];
    v30 = v0[21];
    v29 = v0[22];
    v31 = v0[18];

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_223623F04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EDA8, &qword_22372E738);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_223623F74()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v0 + 232);
  (*(v0 + 256))(v0 + 16, *(v0 + 248), v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  *(v0 + 288) = *(v2 + 40);
  *(v0 + 296) = (v2 + 40) & 0xFFFFFFFFFFFFLL | 0xFF31000000000000;
  v4 = *(v0 + 272);
  v5 = *(v0 + 280);

  return MEMORY[0x2822009F8](sub_223623FFC, v4, v5);
}

uint64_t sub_223623FFC()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 232);
  v3 = *(v0 + 128);
  (*(v0 + 288))(*(v0 + 248), *(v0 + 240));

  return MEMORY[0x2822009F8](sub_223624394, v3, 0);
}

uint64_t sub_223624074()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 232);
  (*(v0 + 304))(*(v0 + 168), *(v0 + 144), *(v0 + 248), *(v0 + 240));
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v7 = *(v0 + 144);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t type metadata accessor for IFSessionMetadata()
{
  result = qword_281329B70;
  if (!qword_281329B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2236241E8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_223624220(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2236242EC;

  return sub_2236251FC(a1, v4, v5, v7);
}

uint64_t sub_2236242F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_223729DC8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22362435C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223624394()
{
  v26 = v0;
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  (*(v2 + 8))(&v25, v1, v2);
  v3 = v25;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  if (v3)
  {
    goto LABEL_3;
  }

  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[26];
  v7 = v0[23];
  v8 = v0[15];
  sub_223728448();
  LOBYTE(v8) = sub_22372A378();
  v5(v6, v7);
  if (v8)
  {
LABEL_3:
    v10 = v0[25];
    v9 = v0[26];
    v12 = v0[21];
    v11 = v0[22];
    v13 = v0[18];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v0[30];
    v18 = v0[27];
    v17 = v0[28];
    v19 = v0[25];
    v20 = v0[23];
    v21 = v0[21];
    v22 = v0[15];
    sub_223728448();
    sub_22372A398();
    v18(v19, v20);
    v0[38] = *(v16 + 64);
    v0[39] = (v16 + 64) & 0xFFFFFFFFFFFFLL | 0x2E000000000000;
    v23 = v0[34];
    v24 = v0[35];

    return MEMORY[0x2822009F8](sub_223624074, v23, v24);
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_22362457C(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v2 + 112))
  {
    v11 = sub_22372AC88();
    v12 = sub_22372B258();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_223623274(0xD000000000000022, 0x8000000223734C40, &v17);
      _os_log_impl(&dword_223620000, v11, v12, "%{public}s Intelligence Flow Session is already being set up, not interfering with it", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x223DE8A80](v14, -1, -1);
      MEMORY[0x223DE8A80](v13, -1, -1);
    }
  }

  else
  {
    sub_223624734(a1, &v17);
    if (v3)
    {
      sub_22366E5FC(v10, a2);
    }

    else
    {
      v15 = *(v2 + 112);
      *(v2 + 112) = v17;
    }
  }
}

uint64_t sub_223624734@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2;
  v48 = a1;
  v6 = sub_22372AC98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v54 = v10;
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F640, &unk_22372D770);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v42 - v19;
  swift_beginAccess();
  sub_223634890(v4 + 120, &v49, &qword_27D08EC00, &unk_22372E0B8);
  if (v50)
  {
    sub_2236241E8(&v49, v51);
    v21 = type metadata accessor for IFSessionMetadata();
    v47 = v3;
    v22 = v21;
    v44 = swift_allocBox();
    v45 = v17;
    v24 = v23;
    v43 = v6;
    v25 = v52;
    v26 = v53;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    v27 = *(v26 + 8);
    v46 = a2;
    v27(v25, v26);
    v28 = *(v22 + 24);
    v29 = sub_22372A548();
    (*(*(v29 - 8) + 24))(v24 + v28, v48, v29);
    sub_22372B188();
    v30 = sub_22372B1A8();
    (*(*(v30 - 8) + 56))(v20, 0, 1, v30);
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = *(v7 + 16);
    v48 = v20;
    v33 = v43;
    v32(v11, v4 + OBJC_IVAR____TtC24RequestDispatcherBridges33IntelligenceFlowSessionController_logger, v43);
    sub_223623934(v4 + 160, &v49);
    v34 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v35 = (v54 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    *(v36 + 16) = v31;
    (*(v7 + 32))(v36 + v34, v11, v33);
    sub_2236241E8(&v49, v36 + v35);
    *(v36 + ((v35 + 47) & 0xFFFFFFFFFFFFFFF8)) = v44;
    v37 = v48;
    v38 = v45;
    sub_223634890(v48, v45, &qword_27D08F640, &unk_22372D770);
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = &unk_22372E428;
    v39[5] = v36;

    v40 = sub_2236C76B8(0, 0, v38, &unk_22372E438, v39);
    sub_223626478(v37, &qword_27D08F640, &unk_22372D770);

    *v46 = v40;
    return __swift_destroy_boxed_opaque_existential_1Tm(v51);
  }

  else
  {
    sub_223626478(&v49, &qword_27D08EC00, &unk_22372E0B8);
    type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
    swift_storeEnumTagMultiPayload();
    sub_22366FDD0(&unk_281329528, type metadata accessor for IntelligenceFlowSessionBridge.Error);
    return swift_willThrowTypedImpl();
  }
}

uint64_t sub_223624BB0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_223624BE8()
{
  v1 = sub_22372AC98();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v5));
  v8 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_223624CD8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_223624D18()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_223675324, 0, 0);
  }

  else
  {
    v5 = *(v2 + 24);

    v6 = *(v4 + 8);

    return v6();
  }
}

unint64_t sub_223624E58()
{
  result = qword_281328D38;
  if (!qword_281328D38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281328D38);
  }

  return result;
}

uint64_t sub_223624EA4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_223624F98()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    sub_22366E5FC(*(v2 + 24), *(v2 + 16));
  }

  else
  {
    v6 = *(v2 + 24);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_2236250BC(int *a1)
{
  v3 = type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  v1[3] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[5] = v5;
  v9 = (a1 + *a1);
  v6 = a1[1];
  v7 = swift_task_alloc();
  v1[6] = v7;
  *v7 = v1;
  v7[1] = sub_223639880;

  return (v9)(v1 + 2, v5);
}

uint64_t sub_2236251FC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_223628910;

  return sub_2236250BC(a4);
}

uint64_t sub_22362529C(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_22372AC98() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = *(v2 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_223624EA4;

  return sub_2236253D4(a1, v9, v2 + v7, v2 + v8, v10, a2);
}

uint64_t sub_2236253D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a4;
  v6[32] = a6;
  v6[29] = a2;
  v6[30] = a3;
  v6[28] = a1;
  v7 = sub_223727408();
  v6[33] = v7;
  v8 = *(v7 - 8);
  v6[34] = v8;
  v9 = *(v8 + 64) + 15;
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v10 = *(*(type metadata accessor for IFSessionMetadata() - 8) + 64) + 15;
  v6[37] = swift_task_alloc();
  v6[38] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_2236254F4, 0, 0);
}

uint64_t sub_2236254F4()
{
  v1 = v0[29];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[39] = Strong;
  if (Strong)
  {
    v4 = v0[37];
    v3 = v0[38];
    v5 = v0[31];
    v6 = v5[3];
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v6);
    swift_beginAccess();
    sub_22366FCFC(v3, v4, type metadata accessor for IFSessionMetadata);
    v8 = *(v7 + 24);
    v22 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[40] = v10;
    *v10 = v0;
    v10[1] = sub_2236400E8;
    v11 = v0[37];

    return v22(v11, v6, v7);
  }

  else
  {
    v13 = v0[30];
    v14 = sub_22372AC88();
    v15 = sub_22372B278();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_223620000, v14, v15, "Controller went out of scope while opening session", v16, 2u);
      MEMORY[0x223DE8A80](v16, -1, -1);
    }

    v17 = v0[32];

    type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
    swift_storeEnumTagMultiPayload();
    sub_22366FDD0(&unk_281329528, type metadata accessor for IntelligenceFlowSessionBridge.Error);
    swift_willThrowTypedImpl();
    v19 = v0[36];
    v18 = v0[37];
    v20 = v0[35];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_2236257B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22363FFE8;

  return LocalIntelligenceFlowClientProvider.openSession(with:)(a1, a2);
}

uint64_t LocalIntelligenceFlowClientProvider.openSession(with:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v5 = sub_22372A548();
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v7 = *(v6 + 64) + 15;
  v3[11] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE40, &qword_22372EB28) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v9 = sub_223727408();
  v3[13] = v9;
  v10 = *(v9 - 8);
  v3[14] = v10;
  v11 = *(v10 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE58, &unk_22372EB50) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE48, &unk_22372EB30) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE50, &qword_22372EB60) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE60, &qword_22372EB68) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE68, &qword_22372EB70) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE70, &qword_22372EB78) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE78, &qword_22372EB80) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v19 = sub_223727DD8();
  v3[27] = v19;
  v20 = *(v19 - 8);
  v3[28] = v20;
  v21 = *(v20 + 64) + 15;
  v3[29] = swift_task_alloc();
  v22 = *(a2 + 16);
  v3[30] = v22;
  v23 = *(v22 - 8);
  v3[31] = v23;
  v24 = *(v23 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v25 = sub_223727E78();
  v3[34] = v25;
  v26 = *(v25 - 8);
  v3[35] = v26;
  v27 = *(v26 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223625C98, 0, 0);
}

uint64_t sub_223625C98()
{
  v21 = v0;
  v1 = *(v0 + 64);
  *(v0 + 368) = *(*(v0 + 56) + 36);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_223623274(0xD000000000000012, 0x8000000223735080, &v20);
    _os_log_impl(&dword_223620000, v2, v3, "%{public}s Creating SessionClient", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = *(v0 + 288);
  v7 = *(v0 + 296);
  v8 = *(v0 + 272);
  v9 = *(v0 + 280);
  v10 = *(v0 + 56);
  sub_223727A48();
  sub_223727E68();
  (*(v9 + 16))(v6, v7, v8);
  v11 = *(v10 + 24);
  *(v0 + 304) = v11;
  v12 = *(v11 + 16);
  v19 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 312) = v14;
  *v14 = v0;
  v14[1] = sub_223628A20;
  v15 = *(v0 + 288);
  v16 = *(v0 + 264);
  v17 = *(v0 + 240);

  return v19(v16, v15);
}

uint64_t sub_223625ED0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_223624EA4;

  return LocalIFSessionClient.init(configuration:)(a1, a2);
}

unint64_t sub_223625FB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F150, &qword_22372FB78);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EAF0, &unk_22372D7C0);
    v8 = sub_22372B598();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_223634890(v10, v6, &unk_27D08F150, &qword_22372FB78);
      v12 = *v6;
      v13 = v6[1];
      result = sub_2236261A0(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for RequestState();
      result = sub_2236378A8(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for RequestState);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2236261A0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22372B7A8();
  sub_22372B078();
  v6 = sub_22372B7C8();

  return sub_22362ED48(a1, a2, v6);
}

uint64_t sub_223626218(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return sub_2236262C8(a1, v6, a2);
}

uint64_t sub_2236262C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_223727E78();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22362638C, 0, 0);
}

uint64_t sub_22362638C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  sub_223727B18();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_223727AE8();
  v6 = *(v0 + 56);
  **(v0 + 16) = v5;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_223626478(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
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

unint64_t sub_22362654C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB20, &qword_22372D7F0);
    v3 = sub_22372B598();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2236261A0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_223626650(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v10 = v8;
  v274 = a7;
  v275 = a8;
  v273 = a6;
  v277 = a4;
  v272 = a3;
  v279 = a1;
  v280 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F640, &unk_22372D770);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v269 = &v231 - v15;
  v268 = type metadata accessor for RootRequestController.RequestContext(0);
  v16 = *(*(v268 - 8) + 64);
  MEMORY[0x28223BE20](v268, v17);
  v267 = &v231 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v330 = sub_223727408();
  v19 = *(v330 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v330, v21);
  v276 = &v231 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v271 = (&v231 - v26);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v231 - v28;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v30 = sub_22372AC98();
  v31 = __swift_project_value_buffer(v30, qword_28132B680);
  v32 = sub_22372AC88();
  v33 = sub_22372B268();
  v34 = os_log_type_enabled(v32, v33);
  v278 = v29;
  v270 = v9;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v329[0] = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_223623274(0xD00000000000005DLL, 0x8000000223736780, v329);
    _os_log_impl(&dword_223620000, v32, v33, "%s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x223DE8A80](v36, -1, -1);
    MEMORY[0x223DE8A80](v35, -1, -1);
  }

  v37 = *(v10 + qword_28132AB08);
  if (!v37)
  {
    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
    swift_allocError();
    (*(v19 + 16))(v48, a5, v330);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v31;
  }

  v38 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_sessionId;
  v39 = *(v10 + qword_28132AB08);

  if ((sub_2237273D8() & 1) == 0)
  {
    v280 = type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
    v31 = v37;
    swift_allocError();
    v50 = v49;
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F648, &qword_2237317B8) + 48);
    v52 = *(v19 + 16);
    v53 = v37 + v38;
    v54 = a5;
    v55 = v330;
    v52(v50, v53, v330);
    v52(v50 + v51, v54, v55);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_29:

    return v31;
  }

  v263 = v38;
  v264 = a5;

  v40 = sub_22372AC88();
  v41 = sub_22372B268();

  v42 = os_log_type_enabled(v40, v41);
  v265 = v19;
  v266 = v37;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v329[0] = v44;
    *v43 = 136315138;
    v45 = __swift_project_boxed_opaque_existential_1((v37 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_promptStateManager), *(v37 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_promptStateManager + 24));
    if (*(*v45 + 24))
    {
      if (*(*v45 + 24) == 1)
      {
        v46 = 0x6D6F72506C6C6977;
        v47 = 0xEA00000000007470;
      }

      else
      {
        v46 = 0xD000000000000016;
        v47 = 0x8000000223734320;
      }
    }

    else
    {
      v46 = 0x706D6F7250746F6ELL;
      v47 = 0xEC000000676E6974;
    }

    v56 = sub_223623274(v46, v47, v329);

    *(v43 + 4) = v56;
    _os_log_impl(&dword_223620000, v40, v41, "PromptState during RequestProcessor creation: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x223DE8A80](v44, -1, -1);
    MEMORY[0x223DE8A80](v43, -1, -1);

    v19 = v265;
    v37 = v266;
  }

  else
  {
  }

  sub_22372A978();
  __swift_project_boxed_opaque_existential_1(v328, v328[3]);
  v57 = v264;
  sub_22372A4E8();
  if (!v327)
  {
    sub_223626478(&v326, &qword_27D08F650, qword_2237317C0);
    __swift_destroy_boxed_opaque_existential_1Tm(v328);

    v198 = sub_22372AC88();
    v199 = sub_22372B278();

    if (os_log_type_enabled(v198, v199))
    {
      v200 = swift_slowAlloc();
      v280 = swift_slowAlloc();
      v329[0] = v280;
      *v200 = 136315138;
      v201 = *(v19 + 16);
      LODWORD(v279) = v199;
      v202 = v271;
      v203 = v330;
      v201(v271, v37 + v263, v330);
      sub_223623398(&qword_28132B600, MEMORY[0x277CC95F0]);
      v31 = sub_22372B6B8();
      v205 = v204;
      (*(v19 + 8))(v202, v203);
      v206 = sub_223623274(v31, v205, v329);

      *(v200 + 4) = v206;
      _os_log_impl(&dword_223620000, v198, v279, "ConversationSessionState not found for sessionId: %s", v200, 0xCu);
      v207 = v280;
      __swift_destroy_boxed_opaque_existential_1Tm(v280);
      MEMORY[0x223DE8A80](v207, -1, -1);
      MEMORY[0x223DE8A80](v200, -1, -1);
    }

    else
    {

      v203 = v330;
    }

    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
    swift_allocError();
    (*(v19 + 16))(v229, v57, v203);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_29;
  }

  sub_2236241E8(&v326, v329);
  __swift_destroy_boxed_opaque_existential_1Tm(v328);
  v259 = *(v19 + 16);
  v260 = v19 + 16;
  v259(v278, v57, v330);
  v246 = "peech:isCandidateRequest:)";
  sub_22372A958();
  v264 = sub_22372A948();
  sub_223623934(v37 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_ttManagerProxy, &v326);
  v58 = *(v10 + qword_28132AC90 + 8);
  v237 = *(v10 + qword_28132AC90);
  v256 = (v10 + qword_28132AC90);
  LODWORD(v249) = v273 ^ 1;
  v59 = *(v10 + qword_28132AB18 + 32);
  __swift_project_boxed_opaque_existential_1((v10 + qword_28132AB18), *(v10 + qword_28132AB18 + 24));
  v245 = v58;

  LODWORD(v236) = sub_22372A7F8();
  v262 = *(v10 + qword_28132ACA0);
  sub_223623934(v10 + qword_28132AAF8, v324);
  sub_223623934(v329, v323);
  sub_223623934(v329, &v320);

  v60 = AFIsInternalInstall();
  v61 = type metadata accessor for RequestSummaryUpdater();
  v62 = swift_allocObject();
  sub_2236241E8(&v320, v62 + 16);
  *(v62 + 56) = v60;
  if (qword_28132A8E8 != -1)
  {
    swift_once();
  }

  v234 = *(v10 + qword_28132AAF0);
  v261 = *(v37 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_isSystemAssistantExperienceEnabled);
  LODWORD(v235) = *(v10 + qword_28132AAE8);
  v263 = qword_28132B928;
  v250 = *(v10 + qword_28132AAE0);
  v63 = v327;
  v64 = __swift_mutable_project_boxed_opaque_existential_1(&v326, v327);
  v255 = &v231;
  v65 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v64, v64);
  v67 = (&v231 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v68 + 16))(v67);
  v69 = v325;
  v70 = __swift_mutable_project_boxed_opaque_existential_1(v324, v325);
  v254 = &v231;
  v71 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v70, v70);
  v73 = (&v231 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v74 + 16))(v73);
  v75 = *v67;
  v76 = *v73;
  v77 = type metadata accessor for TTManagerProxy();
  v322 = &off_2836C76D8;
  v321 = v77;
  *&v320 = v75;
  v257 = type metadata accessor for SiriActivationHelper();
  v319 = &off_2836C75B0;
  v318 = v257;
  v317[0] = v76;
  v316 = &off_2836C6F00;
  v315 = v61;
  v314[0] = v62;
  v78 = type metadata accessor for RequestControllerBridgeRequestProcessor();
  v79 = *(v78 + 48);
  v80 = *(v78 + 52);
  v81 = swift_allocObject();
  v82 = __swift_mutable_project_boxed_opaque_existential_1(&v320, v77);
  v253 = &v231;
  v243 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v82, v82);
  v244 = ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = (&v231 - v244);
  v86 = *(v85 + 16);
  v241 = v85 + 16;
  v242 = v86;
  v258 = v77;
  (v86)(&v231 - v244);
  v87 = v318;
  v88 = __swift_mutable_project_boxed_opaque_existential_1(v317, v318);
  v252 = &v231;
  v89 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v88, v88);
  v91 = (&v231 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v92 + 16))(v91);
  v93 = v315;
  v94 = __swift_mutable_project_boxed_opaque_existential_1(v314, v315);
  v251 = &v231;
  v95 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v94, v94);
  v97 = (&v231 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v98 + 16))(v97);
  v99 = *v84;
  v100 = *v91;
  v101 = *v97;
  v102 = v234;
  v233 = v234;

  v313[4] = &off_2836C76D8;
  v313[3] = v77;
  v313[0] = v99;
  v312[4] = &off_2836C6F00;
  v312[3] = v61;
  v312[0] = v101;
  *(v81 + qword_28132A1C8) = 0;
  v103 = qword_28132A1E0;
  *(v81 + qword_28132A1E0) = 0;
  v104 = qword_28132B8A8;
  v105 = sub_22372A548();
  (*(*(v105 - 8) + 56))(v81 + v104, 1, 1, v105);
  v106 = qword_28132B848;
  v107 = MEMORY[0x277D84F90];
  *(v81 + v106) = sub_2236285A4(MEMORY[0x277D84F90]);
  *(v81 + qword_28132B8A0) = 0;
  v108 = qword_28132B858;
  v109 = sub_223729EE8();
  v110 = *(v109 - 8);
  v111 = *(v110 + 56);
  v231 = v109;
  v247 = v110 + 56;
  v248 = v111;
  (v111)(v81 + v108, 1, 1);
  *(v81 + qword_28132B878) = 0;
  *(v81 + qword_28132B860) = 0;
  *(v81 + qword_28132B8B0) = 2;
  v112 = qword_28132B888;
  v239 = sub_223729F08();
  v113 = *(v239 - 8);
  v238 = *(v113 + 56);
  v240 = v113 + 56;
  v238(v81 + v112, 1, 1, v239);
  v114 = qword_28132B898;
  v115 = sub_22372A218();
  (*(*(v115 - 8) + 56))(v81 + v114, 1, 1, v115);
  *(v81 + qword_28132B880) = MEMORY[0x277D84F98];
  *(v81 + qword_28132B870) = v107;
  *(v81 + qword_28132B8C0) = 0;
  *(v81 + qword_28132B8B8) = 0;
  *(v81 + qword_28132B828) = 0;
  v116 = qword_28132B830;
  *(v81 + v116) = sub_22362A37C(v107);
  v117 = qword_28132B850;
  *(v81 + v117) = sub_22362A568(v107);
  v118 = qword_28132B838;
  *(v81 + v118) = sub_22362A754(v107);
  v119 = (v81 + qword_28132B868);
  *v119 = 0;
  v119[1] = 0;
  v120 = qword_28132B840;
  *(v81 + v120) = sub_2236287D8(v107);
  *(v81 + qword_28132B890) = 2;
  v121 = (v81 + qword_28132A200);
  v122 = v245;
  *v121 = v237;
  v121[1] = v122;
  *(v81 + qword_28132A1B0) = v235;
  *(v81 + qword_28132A1F8) = v236 & 1;
  *(v81 + qword_28132A190) = v261;
  sub_223623934(v312, v81 + qword_28132A1C0);
  *(v81 + qword_28132A1D8) = v263;
  *(v81 + qword_28132A1E8) = v266;
  sub_223623934(v323, v81 + qword_28132A1A0);
  LODWORD(v245) = v249 & 1;
  *(v81 + qword_28132A188) = v249 & 1;
  v123 = *(v81 + v103);
  *(v81 + v103) = v102;

  v249 = v233;

  type metadata accessor for MUXRequestContext();
  swift_allocObject();
  *(v81 + qword_28132A208) = sub_22362A78C(v279, v280);
  v124 = type metadata accessor for MUXUserSelector();
  v125 = swift_allocObject();
  type metadata accessor for MUXNLParseUtils();
  *(v125 + 16) = swift_allocObject();
  v126 = (v81 + qword_28132A1F0);
  v126[3] = v124;
  v126[4] = &off_2836C5AC8;
  *v126 = v125;
  v127 = v278;
  v128 = v330;
  v129 = v259;
  v259(v271, v278, v330);
  sub_223623934(v328, v311);
  swift_bridgeObjectRetain_n();

  swift_unknownObjectRetain();

  v130 = sub_22372A718();
  v129(v276, v127, v128);
  sub_223623934(v328, v311);
  sub_223623934(v313, v309);
  v131 = *(v130 + qword_28132A200 + 8);
  v235 = *(v130 + qword_28132A200);
  v233 = v131;
  v132 = v266;
  sub_223623934(v266 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_promptStateManager, v307);
  sub_223623934(v132 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestStateInfoManager, v305);
  sub_22362A7DC(v132 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_contextRetrievalHelper, v303);
  v133 = v257;
  v134 = swift_allocObject();
  v135 = sub_223727C78();
  v136 = *(v135 + 48);
  v137 = *(v135 + 52);
  swift_allocObject();

  swift_unknownObjectRetain();
  v232 = v130;

  v246 = sub_223727C68();
  v138 = v310;
  v139 = __swift_mutable_project_boxed_opaque_existential_1(v309, v310);
  v271 = &v231;
  v140 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v139, v139);
  v142 = (&v231 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v143 + 16))(v142);
  v144 = v308;
  v145 = __swift_mutable_project_boxed_opaque_existential_1(v307, v308);
  v237 = &v231;
  v146 = *(*(v144 - 8) + 64);
  MEMORY[0x28223BE20](v145, v145);
  v148 = (&v231 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v149 + 16))(v148);
  v150 = v306;
  v151 = __swift_mutable_project_boxed_opaque_existential_1(v305, v306);
  v236 = &v231;
  v152 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v151, v151);
  v154 = (&v231 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v155 + 16))(v154);
  v156 = *v142;
  v157 = *v148;
  v158 = *v154;
  v302[4] = &off_2836C76D8;
  v159 = v258;
  v302[3] = v258;
  v302[0] = v156;
  v160 = type metadata accessor for PromptStateManager();
  v301 = &off_2836C61C0;
  v300 = v160;
  v299[0] = v157;
  v161 = type metadata accessor for RequestStateInfo();
  v298 = &off_2836C7D58;
  v297 = v161;
  v296[0] = v158;
  v295 = &off_2836C75B0;
  v294 = v133;
  v293[0] = v134;
  v162 = type metadata accessor for RootRequestController(0);
  v163 = *(v162 + 48);
  v164 = *(v162 + 52);
  v165 = swift_allocObject();
  v166 = __swift_mutable_project_boxed_opaque_existential_1(v302, v159);
  v234 = &v231;
  MEMORY[0x28223BE20](v166, v166);
  v167 = (&v231 - v244);
  (v242)(&v231 - v244);
  v168 = v300;
  v169 = __swift_mutable_project_boxed_opaque_existential_1(v299, v300);
  v244 = &v231;
  v170 = *(*(v168 - 8) + 64);
  MEMORY[0x28223BE20](v169, v169);
  v172 = (&v231 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v173 + 16))(v172);
  v174 = v297;
  v175 = __swift_mutable_project_boxed_opaque_existential_1(v296, v297);
  v243 = &v231;
  v176 = *(*(v174 - 8) + 64);
  MEMORY[0x28223BE20](v175, v175);
  v178 = (&v231 - ((v177 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v179 + 16))(v178);
  v180 = v294;
  v181 = __swift_mutable_project_boxed_opaque_existential_1(v293, v294);
  v242 = &v231;
  v182 = *(*(v180 - 8) + 64);
  MEMORY[0x28223BE20](v181, v181);
  v184 = (&v231 - ((v183 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v185 + 16))(v184);
  v186 = *v167;
  v187 = *v172;
  v188 = *v178;
  v189 = *v184;
  v292 = &off_2836C76D8;
  v291 = v258;
  *&v290 = v186;
  v288 = v160;
  v289 = &off_2836C61C0;
  v287[0] = v187;
  v285 = v161;
  v286 = &off_2836C7D58;
  *&v284 = v188;
  v282 = v257;
  v283 = &off_2836C75B0;
  *&v281 = v189;
  swift_defaultActor_initialize();
  v238(v165 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_requestType, 1, 1, v239);
  *(v165 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_pendingSpeechRecognizedCommand) = 0;
  *(v165 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) = 0;
  v190 = v276;
  v191 = v277;
  v165[16] = v272;
  v165[17] = v191;
  v192 = v280;
  v165[14] = v279;
  v165[15] = v192;
  v259(v165 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_sessionId, v190, v330);
  *(v165 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_serviceHelper) = v264;
  sub_223623934(v311, v165 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher);
  v193 = (v165 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_prevRequestId);
  v194 = v233;
  *v193 = v235;
  v193[1] = v194;
  sub_223623934(v287, v165 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_promptStateManager);
  v195 = __swift_project_boxed_opaque_existential_1(v287, v288);
  if (*(*v195 + 24) && *(*v195 + 24) == 1)
  {
    v196 = 1;
    v197 = v231;
  }

  else
  {
    v197 = v231;
    v196 = sub_22372B6E8();
  }

  swift_unknownObjectRetain();

  v208 = v268;
  v209 = *(v268 + 60);
  v210 = sub_22372A1D8();
  v211 = v267;
  (*(*(v210 - 8) + 56))(&v267[v209], 1, 1, v210);
  v248(v211 + v208[17], 1, 1, v197);
  v212 = MEMORY[0x277D84F90];
  v213 = sub_22362A858(MEMORY[0x277D84F90]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v311);
  v214 = *(v265 + 8);
  v265 += 8;
  v214(v276, v330);
  *v211 = v273 & 1;
  *(v211 + 1) = 0;
  *(v211 + 2) = v196 & 1;
  *(v211 + 3) = 0;
  *(v211 + 4) = v245;
  *(v211 + 5) = 0;
  *(v211 + 8) = v213;
  *(v211 + 16) = v212;
  *(v211 + 56) = 0u;
  *(v211 + 24) = 0u;
  *(v211 + 40) = 0u;
  v215 = v211 + v208[16];
  *v215 = 0;
  *(v215 + 8) = 1;
  *(v211 + v208[18]) = 0;
  *(v211 + v208[19]) = 0;
  sub_22362AA40(v211, v165 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context);
  sub_2236241E8(&v290, v165 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_ttManagerProxy);
  *(v165 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_requestControllerMitigationHandler) = v262;
  sub_2236241E8(&v281, v165 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_activationHelper);
  *(v165 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_instrumentationUtil) = v263;
  *(v165 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_isSystemAssistantExperienceEnabled) = v261;
  *(v165 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_isPatientSiriSupported) = v250;
  v216 = v165 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_contextRetrievalHelper;
  v217 = v303[1];
  *v216 = v303[0];
  *(v216 + 1) = v217;
  *(v216 + 4) = v304;
  sub_2236241E8(&v284, v165 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_requestStateManager);
  *(v165 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_queryDecorationClient) = v246;
  __swift_destroy_boxed_opaque_existential_1Tm(v287);
  __swift_destroy_boxed_opaque_existential_1Tm(v293);
  __swift_destroy_boxed_opaque_existential_1Tm(v296);
  __swift_destroy_boxed_opaque_existential_1Tm(v299);
  __swift_destroy_boxed_opaque_existential_1Tm(v302);
  __swift_destroy_boxed_opaque_existential_1Tm(v305);
  __swift_destroy_boxed_opaque_existential_1Tm(v307);
  __swift_destroy_boxed_opaque_existential_1Tm(v309);
  sub_22372A8E8();
  v311[0] = 0;
  v311[1] = 0xE000000000000000;

  sub_22372B458();
  MEMORY[0x223DE7AD0](0xD00000000000004ALL, 0x8000000223736730);
  v218 = v274;
  v219 = v275;
  MEMORY[0x223DE7AD0](v274, v275);
  v220 = v269;
  sub_22372B188();
  v221 = sub_22372B1A8();
  (*(*(v221 - 8) + 56))(v220, 0, 1, v221);
  v222 = sub_22372A8B8();
  v223 = qword_28132B848;
  v31 = v232;
  swift_beginAccess();

  v224 = *(v31 + v223);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v309[0] = *(v31 + v223);
  *(v31 + v223) = 0x8000000000000000;
  sub_22362AAA4(v165, &off_2836C7138, v222, v218, v219, isUniquelyReferenced_nonNull_native);

  *(v31 + v223) = v309[0];
  swift_endAccess();
  sub_22362AC54();
  sub_22362F0D4();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v323);
  __swift_destroy_boxed_opaque_existential_1Tm(v328);
  v214(v278, v330);
  __swift_destroy_boxed_opaque_existential_1Tm(v329);
  __swift_destroy_boxed_opaque_existential_1Tm(v312);
  __swift_destroy_boxed_opaque_existential_1Tm(v313);
  __swift_destroy_boxed_opaque_existential_1Tm(v314);
  __swift_destroy_boxed_opaque_existential_1Tm(v317);
  __swift_destroy_boxed_opaque_existential_1Tm(&v320);
  __swift_destroy_boxed_opaque_existential_1Tm(v324);
  __swift_destroy_boxed_opaque_existential_1Tm(&v326);
  v226 = v256;
  v227 = v256[1];
  v228 = v280;
  *v256 = v279;
  v226[1] = v228;

  return v31;
}

unint64_t sub_2236285A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F190, &qword_22372FBA0);
    v3 = sub_22372B598();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v15 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();

      result = sub_2236261A0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[7] + 24 * result;
      *v11 = v15;
      *(v11 + 16) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2236286DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_22372B598();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_2236261A0(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2236287D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F120, &unk_22372FB50);
    v3 = sub_22372B598();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2236261A0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_223628910(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_223628A20()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_2236764C8;
  }

  else
  {
    v3 = sub_223628B34;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_223628B34()
{
  v59 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  sub_223727DC8();
  sub_22367692C();
  sub_223676978(v2);
  v3 = sub_223727D58();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = *(v0 + 200);
  v7 = *(v0 + 208);
  if (v5 == 1)
  {
    sub_223626478(*(v0 + 200), &qword_27D08EE78, &qword_22372EB80);
    (*(v4 + 104))(v7, *MEMORY[0x277D1CE88], v3);
  }

  else
  {
    (*(v4 + 32))(*(v0 + 208), *(v0 + 200), v3);
  }

  v8 = *(v0 + 232);
  v9 = *(v0 + 208);
  v10 = *(v0 + 48);
  (*(v4 + 56))(v9, 0, 1, v3);
  MEMORY[0x223DE47B0](v9);
  v11 = type metadata accessor for IFSessionMetadata();
  *(v0 + 328) = v11;
  v12 = (v10 + *(v11 + 28));
  if ((v12[4] & 1) == 0)
  {
    v14 = *(v0 + 184);
    v13 = *(v0 + 192);
    v16 = v12[2];
    v15 = v12[3];
    v18 = *v12;
    v17 = v12[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE80, &qword_22372EB88);
    v19 = *(sub_223727B38() - 8);
    v20 = *(v19 + 72);
    v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    *(swift_allocObject() + 16) = xmmword_22372E090;
    MEMORY[0x223DE44B0](v18, v17, v16, v15);
    v22 = sub_223727A58();
    (*(*(v22 - 8) + 56))(v13, 0, 1, v22);
    v23 = sub_223727CD8();
    (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
    sub_223727B28();
  }

  v56 = *(v0 + 368);
  v24 = *(v0 + 232);
  v26 = *(v0 + 168);
  v25 = *(v0 + 176);
  v27 = *(v0 + 152);
  v28 = *(v0 + 160);
  v30 = *(v0 + 56);
  v29 = *(v0 + 64);
  v31 = *(v0 + 48);
  sub_223727CF8();
  v32 = sub_223727D08();
  (*(*(v32 - 8) + 56))(v25, 0, 1, v32);
  sub_223727D78();
  sub_2236291DC(*(v31 + *(v11 + 20)), *(v31 + *(v11 + 20) + 8), v30, &protocol witness table for LocalIntelligenceFlowClientProvider<A>, v26);
  v33 = sub_223727B98();
  (*(*(v33 - 8) + 56))(v26, 0, 1, v33);
  sub_223727DA8();
  sub_223629A60();
  v34 = sub_223727B68();
  (*(*(v34 - 8) + 56))(v28, 0, 1, v34);
  sub_223727D88();
  v35 = sub_2237273B8();
  v37 = v36;
  *(v0 + 336) = v36;

  sub_223727E58();
  v38 = sub_223727E48();
  (*(*(v38 - 8) + 56))(v27, 0, 1, v38);
  sub_223727DB8();
  v39 = sub_22372AC88();
  v40 = sub_22372B268();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v58 = v42;
    *v41 = 136446210;
    *(v41 + 4) = sub_223623274(0xD000000000000012, 0x8000000223735080, &v58);
    _os_log_impl(&dword_223620000, v39, v40, "%{public}s Sending startSession to SessionClient", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x223DE8A80](v42, -1, -1);
    MEMORY[0x223DE8A80](v41, -1, -1);
  }

  v43 = *(v0 + 304);
  v44 = *(v0 + 224);
  v45 = *(v0 + 216);
  v46 = *(v0 + 96);
  (*(v44 + 16))(v46, *(v0 + 232), v45);
  (*(v44 + 56))(v46, 0, 1, v45);
  v47 = *(v43 + 8);
  *(v0 + 344) = v47;
  v48 = *(v47 + 24);
  v57 = (v48 + *v48);
  v49 = v48[1];
  v50 = swift_task_alloc();
  *(v0 + 352) = v50;
  *v50 = v0;
  v50[1] = sub_22362DF7C;
  v51 = *(v0 + 264);
  v52 = *(v0 + 240);
  v53 = *(v0 + 136);
  v54 = *(v0 + 96);

  return v57(v53, v35, v37, v54, v52, v47);
}

uint64_t sub_2236291DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v93 = a1;
  v94 = a2;
  v101 = a5;
  v107 = sub_223727448();
  v7 = *(v107 - 8);
  v8 = v7[8];
  v10 = MEMORY[0x28223BE20](v107, v9);
  v100 = &v90[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10, v12);
  v99 = &v90[-v14];
  v16 = MEMORY[0x28223BE20](v13, v15);
  v98 = &v90[-v17];
  v19 = MEMORY[0x28223BE20](v16, v18);
  v103 = &v90[-v20];
  v22 = MEMORY[0x28223BE20](v19, v21);
  v96 = &v90[-v23];
  v25 = MEMORY[0x28223BE20](v22, v24);
  v95 = &v90[-v26];
  v28 = MEMORY[0x28223BE20](v25, v27);
  v106 = &v90[-v29];
  MEMORY[0x28223BE20](v28, v30);
  v105 = &v90[-v31];
  v32 = sub_22372AC98();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v36 = MEMORY[0x28223BE20](v32, v35);
  v38 = &v90[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = MEMORY[0x28223BE20](v36, v39);
  v42 = &v90[-v41];
  MEMORY[0x28223BE20](v40, v43);
  v45 = &v90[-v44];
  v46 = _AFPreferencesOutputVoice();
  v97 = v32;
  v102 = v33;
  v104 = v38;
  if (v46)
  {
    v47 = v46;
    v48 = [v46 languageCode];
    if (v48)
    {
      v49 = v48;
      sub_22372AFE8();

      v50 = a4;
    }

    else
    {
      (*(a4 + 16))(a3, a4);
      v55 = sub_22372AC88();
      v56 = sub_22372B268();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = v7;
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_223620000, v55, v56, "AFVoiceInfo does not contain a valid language code, responseLocale will default to the Siri locale.", v58, 2u);
        v59 = v58;
        v7 = v57;
        v33 = v102;
        MEMORY[0x223DE8A80](v59, -1, -1);
      }

      (*(v33 + 8))(v45, v32);

      v50 = a4;
    }
  }

  else
  {
    (*(a4 + 16))(a3, a4);
    v51 = sub_22372AC88();
    v52 = sub_22372B268();
    v50 = a4;
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_223620000, v51, v52, "AFVoiceInfo is nil, responseLocale will default to the Siri locale.", v53, 2u);
      v54 = v53;
      v50 = a4;
      MEMORY[0x223DE8A80](v54, -1, -1);
    }

    (*(v33 + 8))(v42, v32);
  }

  v60 = v105;
  sub_223727418();
  v61 = v106;
  sub_223727418();
  (*(v50 + 16))(a3, v50);
  v62 = v7[2];
  v63 = v95;
  v64 = v107;
  v62(v95, v60, v107);
  v65 = v96;
  v62(v96, v60, v64);
  v66 = v103;
  v62(v103, v61, v64);
  v67 = sub_22372AC88();
  v68 = sub_22372B268();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v108 = v93;
    *v69 = 136315650;
    sub_223629A08();
    v92 = v67;
    v70 = sub_22372B6B8();
    v71 = v7;
    v73 = v72;
    v91 = v68;
    v74 = v71[1];
    v94 = (v71 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v74(v63, v107);
    v75 = sub_223623274(v70, v73, &v108);

    *(v69 + 4) = v75;
    *(v69 + 12) = 2080;
    v76 = sub_22372B6B8();
    v78 = v77;
    v74(v65, v107);
    v79 = sub_223623274(v76, v78, &v108);

    *(v69 + 14) = v79;
    *(v69 + 22) = 2080;
    v80 = v103;
    v81 = sub_22372B6B8();
    v83 = v82;
    v74(v80, v107);
    v64 = v107;
    v84 = sub_223623274(v81, v83, &v108);

    *(v69 + 24) = v84;
    v85 = v92;
    _os_log_impl(&dword_223620000, v92, v91, "LocaleSettings: deviceLocale = %s, userLocale = %s, responseLocale = %s", v69, 0x20u);
    v86 = v93;
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v86, -1, -1);
    MEMORY[0x223DE8A80](v69, -1, -1);
  }

  else
  {

    v74 = v7[1];
    v94 = (v7 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v74(v66, v64);
    v74(v65, v64);
    v74(v63, v64);
  }

  (*(v102 + 8))(v104, v97);
  v87 = v105;
  v62(v98, v105, v64);
  v62(v99, v87, v64);
  v88 = v106;
  v62(v100, v106, v64);
  sub_223727B78();
  v74(v88, v64);
  return (v74)(v87, v64);
}

unint64_t sub_223629A08()
{
  result = qword_28132B5E8;
  if (!qword_28132B5E8)
  {
    sub_223727448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28132B5E8);
  }

  return result;
}

uint64_t sub_223629A60()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ED28, &qword_22372E558);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v8 - v3;
  v5 = _AFPreferencesOutputVoice();
  sub_223727108();
  v6 = sub_223727118();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  sub_223629B64(v5, v4);

  return sub_223626478(v4, &qword_27D08ED28, &qword_22372E558);
}

uint64_t sub_223629B64(uint64_t a1, uint64_t a2)
{
  v4 = sub_223727B58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](a1, v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v28 - v13;
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v28 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v28 - v21;
  if (v20)
  {
    v23 = [v20 gender];
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = MEMORY[0x277D1C608];
        goto LABEL_11;
      }

      if (v23 == 3)
      {
        v24 = MEMORY[0x277D1C610];
        goto LABEL_11;
      }
    }

    else if (v23 == 1)
    {
      v24 = MEMORY[0x277D1C600];
LABEL_11:
      (*(v5 + 104))(v22, *v24, v4);
      goto LABEL_12;
    }

    v24 = MEMORY[0x277D1C5F8];
    goto LABEL_11;
  }

  (*(v5 + 104))(v22, *MEMORY[0x277D1C5F8], v4);
LABEL_12:
  sub_223629DA4(a2, v18);
  v25 = *(v5 + 16);
  v25(v14, v22, v4);
  v25(v10, v18, v4);
  sub_223727B48();
  v26 = *(v5 + 8);
  v26(v18, v4);
  return (v26)(v22, v4);
}

uint64_t sub_223629DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ED28, &qword_22372E558);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ED30, &qword_22372E560);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v37 - v12;
  v14 = sub_2237270E8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v37 - v22;
  sub_22362E738(a1, v8);
  v24 = sub_223727118();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v8, 1, v24) == 1)
  {
    sub_223626478(v8, &qword_27D08ED28, &qword_22372E558);
    (*(v15 + 56))(v13, 1, 1, v14);
LABEL_4:
    sub_223626478(v13, &qword_27D08ED30, &qword_22372E560);
    v26 = MEMORY[0x277D1C5F8];
LABEL_5:
    v27 = *v26;
    v28 = sub_223727B58();
    v29 = *(*(v28 - 8) + 104);
    v30 = a2;
    v31 = v27;
    return v29(v30, v31, v28);
  }

  sub_2237270F8();
  (*(v25 + 8))(v8, v24);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_4;
  }

  v33 = *(v15 + 32);
  v33(v23, v13, v14);
  v33(v20, v23, v14);
  v34 = (*(v15 + 88))(v20, v14);
  if (v34 == *MEMORY[0x277CC8638])
  {
    v26 = MEMORY[0x277D1C608];
    goto LABEL_5;
  }

  if (v34 == *MEMORY[0x277CC8640])
  {
    v26 = MEMORY[0x277D1C600];
    goto LABEL_5;
  }

  v35 = *MEMORY[0x277CC8630];
  v36 = v34;
  v28 = sub_223727B58();
  v29 = *(*(v28 - 8) + 104);
  if (v36 == v35)
  {
    v31 = *MEMORY[0x277D1C610];
    v30 = a2;
    return v29(v30, v31, v28);
  }

  v29(a2, *MEMORY[0x277D1C5F8], v28);
  return (*(v15 + 8))(v20, v14);
}

uint64_t sub_22362A188(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2236242EC;

  return sub_22362A250(a1, v6, v7, v9, v8, a2);
}

uint64_t sub_22362A250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22362A278, 0, 0);
}

uint64_t sub_22362A278()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  sub_223727AD8();
  v6 = v0[1];

  return v6();
}

uint64_t type metadata accessor for RequestControllerBridgeRequestProcessor()
{
  result = qword_28132A178;
  if (!qword_28132A178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22362A37C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F1A8, &qword_22372FBB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EA80, qword_22372D730);
    v9 = sub_22372B598();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_223634890(v11, v7, &qword_27D08F1A8, &qword_22372FBB8);
      v13 = *v7;
      v14 = v7[1];
      result = sub_2236261A0(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = sub_2237287C8();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22362A568(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F1A0, &qword_22372FBB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F130, &unk_22372D750);
    v9 = sub_22372B598();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_223634890(v11, v7, &qword_27D08F1A0, &qword_22372FBB0);
      v13 = *v7;
      v14 = v7[1];
      result = sub_2236261A0(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = sub_223729D78();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22362A78C(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  v3 = MEMORY[0x277D84F98];
  *(v2 + 48) = MEMORY[0x277D84F98];
  *(v2 + 56) = v3;
  *(v2 + 64) = v3;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

unint64_t sub_22362A858(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F198, &qword_22372FBA8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EA70, &unk_22372D720);
    v9 = sub_22372B598();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_223634890(v11, v7, &qword_27D08F198, &qword_22372FBA8);
      v13 = *v7;
      v14 = v7[1];
      result = sub_2236261A0(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for RootRequestController.TRPCache(0);
      result = sub_2236378A8(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for RootRequestController.TRPCache);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22362AA40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootRequestController.RequestContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22362AAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_2236261A0(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_22362EE00(v20, a6 & 1);
      v24 = *v7;
      v15 = sub_2236261A0(a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_22372B708();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_22365F2C4();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = (v26[7] + 24 * v15);
    v28 = *v27;
    v29 = v27[2];
    *v27 = a1;
    v27[1] = a2;
    v27[2] = a3;

    return swift_unknownObjectRelease();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v31 = (v26[6] + 16 * v15);
  *v31 = a4;
  v31[1] = a5;
  v32 = (v26[7] + 24 * v15);
  *v32 = a1;
  v32[1] = a2;
  v32[2] = a3;
  v33 = v26[2];
  v19 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v34;
}

uint64_t sub_22362AC54()
{
  v1 = v0;
  v2 = *(v0 + qword_28132A1E8);
  v3 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_deferredRequests;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
    goto LABEL_28;
  }

  for (result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); result >= 1; result = sub_22372B558())
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v6 = sub_22372AC98();
    __swift_project_value_buffer(v6, qword_28132B680);

    v7 = sub_22372AC88();
    v8 = sub_22372B268();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      v10 = *(v2 + v3);
      if (v10 >> 62)
      {
        if (v10 < 0)
        {
          v18 = *(v2 + v3);
        }

        v11 = sub_22372B558();
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v9 + 4) = v11;

      _os_log_impl(&dword_223620000, v7, v8, "Recovering %ld deferred requests from prior conjunctions, for execution in this turn", v9, 0xCu);
      MEMORY[0x223DE8A80](v9, -1, -1);
    }

    else
    {
    }

    v12 = *(v2 + v3);
    v20 = v3;
    v21 = v2;
    if (v12 >> 62)
    {
      v13 = sub_22372B558();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = qword_28132B870;

    if (!v13)
    {
LABEL_24:

      v17 = *(v21 + v20);
      *(v21 + v20) = MEMORY[0x277D84F90];
    }

    v2 = 0;
    while ((v12 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x223DE7ED0](v2, v12);
      v15 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_26;
      }

LABEL_17:
      swift_beginAccess();

      MEMORY[0x223DE7B50](v16);
      if (*((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22372B148();
      }

      sub_22372B158();
      swift_endAccess();
      sub_2236402A0(*(v3 + 16), *(v3 + 24));

      ++v2;
      if (v15 == v13)
      {
        goto LABEL_24;
      }
    }

    if (v2 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

    v3 = *(v12 + 8 * v2 + 32);

    v15 = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      goto LABEL_17;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  return result;
}

void sub_22362AFF8(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_223727408();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v44 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v41 - v13;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v15 = sub_22372AC98();
  __swift_project_value_buffer(v15, qword_28132B680);
  v16 = sub_22372AC88();
  v17 = sub_22372B268();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v42 = a1;
    v43[0] = v19;
    v20 = v6;
    v21 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_223623274(0xD00000000000001DLL, 0x8000000223736AF0, v43);
    _os_log_impl(&dword_223620000, v16, v17, "%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v22 = v21;
    v6 = v20;
    v3 = v2;
    MEMORY[0x223DE8A80](v22, -1, -1);
    MEMORY[0x223DE8A80](v18, -1, -1);
  }

  sub_223729D58();
  sub_223729D98();
  sub_22362B4E0();
  if (v3)
  {
    (*(v7 + 8))(v14, v6);

    return;
  }

  v41 = *(v7 + 8);
  v42 = v7 + 8;
  v41(v14, v6);

  v23 = sub_22372A658();
  v24 = v6;
  v26 = v25;
  v27 = *v25;

  *v26 = MEMORY[0x277D84F98];
  v23(v43, 0);
  v28 = v44;
  sub_223729D58();
  v29 = qword_28132AB08;
  v30 = *(v4 + qword_28132AB08);
  if (v30)
  {
    v31 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_sessionId;
    v32 = *(v4 + qword_28132AB08);

    if (sub_2237273D8())
    {
      v41(v28, v24);

      v33 = *(v4 + v29);
      *(v4 + v29) = 0;

      v34 = *(v4 + qword_28132AAF0);
      *(v4 + qword_28132AAF0) = 0;

      return;
    }

    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
    swift_allocError();
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F648, &qword_2237317B8) + 48);
    v39 = *(v7 + 16);
    v39(v37, v30 + v31, v24);
    v40 = v37 + v38;
    v28 = v44;
    v39(v40, v44, v24);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
    swift_allocError();
    (*(v7 + 16))(v35, v28, v24);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v41(v28, v24);
}

void sub_22362B4E0()
{
  v0 = sub_22372A668();
  v1 = 0;
  v3 = v0 + 64;
  v2 = *(v0 + 64);
  v28 = v0;
  v4 = 1 << *(v0 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v2;
  v7 = (v4 + 63) >> 6;
  v25 = v7;
  v26 = v0 + 64;
  while (v6)
  {
    v8 = v1;
LABEL_11:
    v9 = *(*(v28 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));

    v10 = sub_22372A768();
    MEMORY[0x28223BE20](v10, v11);
    v12 = objc_allocWithZone(sub_223728188());
    v13 = sub_223728118();

    if (!v13)
    {
      type metadata accessor for RequestControllerBridgeInternalErrors(0);
      sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
      swift_allocError();
      *v23 = 0xD000000000000014;
      v23[1] = 0x8000000223736AD0;
LABEL_20:
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return;
    }

    sub_22372A958();
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    v14 = sub_223729D88();
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    if ((v14 & 1) == 0)
    {
      type metadata accessor for RequestControllerBridgeInternalErrors(0);
      sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
      swift_allocError();
      *v24 = v13;
      goto LABEL_20;
    }

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v6 &= v6 - 1;
    v15 = sub_22372AC98();
    __swift_project_value_buffer(v15, qword_28132B680);

    v16 = sub_22372AC88();
    v17 = sub_22372B268();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27[0] = v19;
      *v18 = 136315138;
      v20 = sub_22372A768();
      v22 = sub_223623274(v20, v21, v27);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_223620000, v16, v17, "Posted CancelRequestMessage for requestId: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x223DE8A80](v19, -1, -1);
      MEMORY[0x223DE8A80](v18, -1, -1);
    }

    else
    {
    }

    v1 = v8;
    v7 = v25;
    v3 = v26;
  }

  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v8);
    ++v1;
    if (v6)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22362B914()
{
  sub_22362B96C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22362B96C()
{
  v1 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_sessionId;
  v2 = sub_223727408();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_sessionUserId;
  v4 = sub_22372A548();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_userSessionState;
  v6 = sub_22372A298();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_ttManagerProxy));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_promptStateManager));
  sub_22362CB14(v0 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_contextRetrievalHelper);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestStateInfoManager));
  v7 = *(v0 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_deferredRequests);

  sub_223626478(v0 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_ongoingOrchestrationTaskId, &unk_27D08E530, &unk_22372CB10);
  v8 = *(v0 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestIdToMuxRequestContext);

  return v0;
}

uint64_t sub_22362BACC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22362BB04(uint64_t *a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2236242EC;

  return sub_2236237F8(a1, v7, v6, a2);
}

uint64_t sub_22362BBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *(*(type metadata accessor for IntelligenceFlowSessionBridge.Error(0) - 8) + 64) + 15;
  v3[3] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_223624D18;

  return sub_22362BD30();
}

uint64_t sub_22362BC88(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2236242EC;

  return sub_22362BBC8(a1, v2, a2);
}

uint64_t sub_22362BD30()
{
  *(v1 + 88) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EDA8, &qword_22372E738) - 8) + 64) + 15;
  *(v1 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22362BDCC, v0, 0);
}

uint64_t sub_22362BDCC()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_externalAgentEventPublishers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = MEMORY[0x277D84F90];
  *(v1 + v2) = MEMORY[0x277D84F90];

  v5 = OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_postponedExternalAgentEventPublishers;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v1 + v5) = v4;

  v0[13] = *(v1 + 112);
  v7 = *(v1 + 120);
  v0[14] = v7;
  ObjectType = swift_getObjectType();
  v0[15] = ObjectType;
  v9 = *(v7 + 72);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[16] = v11;
  *v11 = v0;
  v11[1] = sub_22362CD14;

  return v13(ObjectType, v7);
}

uint64_t sub_22362BF58()
{
  v1[17] = v0;
  v2 = sub_223727408();
  v1[18] = v2;
  v3 = *(v2 - 8);
  v1[19] = v3;
  v4 = *(v3 + 64) + 15;
  v1[20] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EC08, &qword_22372E0D0);
  v1[21] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v7 = type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  v1[23] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22362C0B4, v0, 0);
}

uint64_t sub_22362C0B4()
{
  v23 = v0;
  v1 = v0[17];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v0[29] = v2;
  if (v2)
  {
    *(v1 + 112) = 0;
    v3 = type metadata accessor for SessionClientBox(0);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
    v0[30] = v4;
    v5 = MEMORY[0x277D84950];
    sub_22372B1B8();
    v6 = *(MEMORY[0x277D857D0] + 4);
    v7 = swift_task_alloc();
    v0[31] = v7;
    *v7 = v0;
    v7[1] = sub_22362C338;

    return MEMORY[0x282200440](v0 + 13, v2, v3, v4, v5);
  }

  else
  {
    v8 = v0[17] + OBJC_IVAR____TtC24RequestDispatcherBridges33IntelligenceFlowSessionController_logger;
    v9 = sub_22372AC88();
    v10 = sub_22372B258();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_223623274(0xD000000000000024, 0x8000000223734C70, &v22);
      _os_log_impl(&dword_223620000, v9, v10, "%{public}s Intelligence Flow Session Client does not exist, nothing to end.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x223DE8A80](v12, -1, -1);
      MEMORY[0x223DE8A80](v11, -1, -1);
    }

    v14 = v0[27];
    v13 = v0[28];
    v16 = v0[25];
    v15 = v0[26];
    v17 = v0[24];
    v18 = v0[22];
    v19 = v0[20];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_22362C338()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22362C434, 0, 0);
}

uint64_t sub_22362C434()
{
  v1 = *(v0 + 104);
  if (*(v0 + 112))
  {
    *(v0 + 120) = v1;
    v2 = *(v0 + 240);
    v4 = *(v0 + 176);
    v3 = *(v0 + 184);
    v5 = *(v0 + 168);
    swift_dynamicCast();
  }

  else
  {
    v6 = *(v0 + 168);
    **(v0 + 176) = v1;
  }

  swift_storeEnumTagMultiPayload();
  v7 = *(v0 + 168);
  v8 = *(v0 + 176);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(v0 + 208);
    v9 = *(v0 + 216);
    v11 = *(v0 + 184);
    v12 = *(v0 + 136);
    sub_22366E5FC(v8, v10);
    sub_22366FCFC(v10, v9, type metadata accessor for IntelligenceFlowSessionBridge.Error);
    *(v0 + 280) = sub_22366FDD0(&unk_281329528, type metadata accessor for IntelligenceFlowSessionBridge.Error);
    swift_willThrowTypedImpl();
    sub_223640240(v10, type metadata accessor for IntelligenceFlowSessionBridge.Error);
    v13 = sub_223668A8C;
    v14 = v12;
  }

  else
  {
    v14 = *(v0 + 136);
    *(v0 + 256) = *v8;
    v13 = sub_223668784;
  }

  return MEMORY[0x2822009F8](v13, v14, 0);
}

uint64_t sub_22362C5B8(uint64_t a1)
{
  v2[3] = a1;
  v3 = sub_22372AE98();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *v1;
  v2[6] = v6;
  v2[7] = v7;

  return MEMORY[0x2822009F8](sub_22362C67C, 0, 0);
}

uint64_t sub_22362C67C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  sub_223624E58();
  (*(v4 + 104))(v1, *MEMORY[0x277D851B8], v3);
  v6 = sub_22372B2F8();
  v0[8] = v6;
  (*(v4 + 8))(v1, v3);
  v7 = sub_223687724(&unk_281328D40, sub_223624E58);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *(v8 + 16) = v2;
  *(v8 + 24) = v5;
  v9 = *(MEMORY[0x277D85A08] + 4);
  v10 = swift_task_alloc();
  v0[10] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  *v10 = v0;
  v10[1] = sub_22362C9A0;
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200828](v11, v6, v7, 0, 0, &unk_22372EE00, v8, v12);
}

uint64_t sub_22362C83C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2236242EC;

  return sub_22362C8F0(a1, v7, v6, a2);
}

uint64_t sub_22362C8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return MEMORY[0x2822009F8](sub_22362C914, 0, 0);
}

uint64_t sub_22362C914()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_223727AB8();
  v3 = v0[1];

  return v3();
}

uint64_t sub_22362C9A0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 64);
  v8 = *v1;

  if (v0)
  {
    v5 = sub_223688190;
  }

  else
  {
    v6 = *(v2 + 72);

    v5 = sub_22362CAD8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22362CADC()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22362CB68()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t SessionClientBox.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_messageDispatchTask;
  if (*(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_messageDispatchTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_messageDispatchTask);

    sub_22372B1B8();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_conversationSessionID;
  v4 = sub_223727408();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_intelligenceFlowSessionID, v4);
  v6 = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_userID;
  v7 = sub_22372A548();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_jsonEncoder);

  v9 = *(v0 + v1);

  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22362CD14()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);
  v5 = *(*v0 + 104);
  v11 = *v0;

  v6 = *(v4 + 56);
  v4 += 56;
  *(v1 + 136) = v6;
  *(v1 + 144) = v4 & 0xFFFFFFFFFFFFLL | 0xAAE4000000000000;
  v7 = *(v4 - 48);
  v9 = sub_22372B168();

  return MEMORY[0x2822009F8](sub_22362CE78, v9, v8);
}

uint64_t sub_22362CE78()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  (*(v0 + 136))(*(v0 + 120), *(v0 + 112));

  return MEMORY[0x2822009F8](sub_22362CEEC, v3, 0);
}

uint64_t sub_22362CEEC()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = sub_22372A3B8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_conversationSessionInfo;
  swift_beginAccess();
  sub_223623F04(v2, v1 + v4);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_genAIPreWarmInitiated) = 0;

  v5 = v0[1];

  return v5();
}

uint64_t sub_22362CFEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F738, &unk_2237324D0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F730, &unk_223731DB0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22362D128(uint64_t a1)
{
  v2 = v1;
  v82 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F760, &qword_223731DD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v90 = &v77 - v6;
  v7 = sub_2237287C8();
  v93 = *(v7 - 8);
  v94 = v7;
  v8 = *(v93 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v92 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RequestInfo.RequestRoute(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v91 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_22372A548();
  v83 = *(v89 - 8);
  v15 = *(v83 + 64);
  MEMORY[0x28223BE20](v89, v16);
  v88 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RequestInfo.UserInput(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v87 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22 - 8, v24);
  v27 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v77 - v29;
  v31 = sub_223727408();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v35 = MEMORY[0x28223BE20](v31, v34);
  v37 = &v77 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v38);
  v40 = &v77 - v39;
  sub_2237273F8();
  v41 = sub_2237273B8();
  v43 = v42;
  v44 = *(v32 + 8);
  v45 = v40;
  v85 = v32 + 8;
  v84 = v44;
  v44(v40, v31);
  v80 = v41;
  v79 = v43;
  sub_2236402A0(v41, v43);
  v86 = v2;
  v46 = *(v2 + qword_28132A1E8);
  v47 = v31;
  v48 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_ongoingOrchestrationTaskId;
  swift_beginAccess();
  sub_223634890(v46 + v48, v30, &unk_27D08E530, &unk_22372CB10);
  v49 = *(v32 + 48);
  if (v49(v30, 1, v31) == 1)
  {
    sub_2237273F8();
    if (v49(v30, 1, v31) != 1)
    {
      sub_223626478(v30, &unk_27D08E530, &unk_22372CB10);
    }
  }

  else
  {
    (*(v32 + 32))(v37, v30, v31);
  }

  v50 = *(v32 + 16);
  v81 = v37;
  v50(v27, v37, v31);
  (*(v32 + 56))(v27, 0, 1, v31);
  swift_beginAccess();
  sub_2236719F4(v27, v46 + v48, &unk_27D08E530, &unk_22372CB10);
  swift_endAccess();
  v78 = v45;
  v50(v45, v37, v31);
  sub_2236397B0(v82, v87, type metadata accessor for RequestInfo.UserInput);
  v51 = v83;
  (*(v83 + 16))(v88, v46 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_sessionUserId, v89);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
  (*(*(v52 - 8) + 56))(v91, 1, 1, v52);
  (*(v93 + 104))(v92, *MEMORY[0x277D5CB80], v94);
  v53 = sub_223729D68();
  (*(*(v53 - 8) + 56))(v90, 1, 1, v53);
  v54 = type metadata accessor for RequestInfo(0);
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  v57 = swift_allocObject();
  v58 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_aceCommands;
  v59 = MEMORY[0x277D84F90];
  *(v57 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_aceCommands) = MEMORY[0x277D84F90];
  v60 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_responseList;
  *(v57 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_responseList) = v59;
  v61 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_ongoingExecutionSource;
  v62 = sub_22372A098();
  v63 = v47;
  v64 = *(*(v62 - 8) + 56);
  v64(v57 + v61, 1, 1, v62);
  v64(v57 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_systemResponseSource, 1, 1, v62);
  v65 = v79;
  *(v57 + 16) = v80;
  *(v57 + 24) = v65;
  (*(v32 + 32))(v57 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId, v78, v63);
  sub_223639818(v87, v57 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userInput, type metadata accessor for RequestInfo.UserInput);
  (*(v51 + 32))(v57 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userId, v88, v89);
  swift_beginAccess();
  v66 = MEMORY[0x277D84F90];
  *(v57 + v58) = MEMORY[0x277D84F90];
  swift_beginAccess();
  *(v57 + v60) = v66;
  sub_223639818(v91, v57 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_route, type metadata accessor for RequestInfo.RequestRoute);
  (*(v93 + 32))(v57 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_nlRoutingDecision, v92, v94);
  v67 = v57 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceIndex;
  *v67 = 0;
  *(v67 + 8) = 1;
  v68 = v57 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceCount;
  *v68 = 0;
  *(v68 + 8) = 1;
  *(v57 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_isLLMFallbackWithRewrite) = 0;
  sub_2236EA450(v90, v57 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_siriXRedirectContext);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB48, qword_2237329D0);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_22372FCE0;
  *(v69 + 32) = v57;
  v70 = qword_28132B870;
  v71 = v86;
  swift_beginAccess();
  v72 = *(v71 + v70);
  v95 = v69;

  sub_22363AFB8(v73);
  v84(v81, v63);
  v74 = *(v71 + v70);
  *(v71 + v70) = v95;

  v75 = *(v71 + qword_28132B8C0);
  *(v71 + qword_28132B8C0) = v57;

  return v57;
}

uint64_t sub_22362DA4C()
{
  v35 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B680);
  v4 = v2;

  v5 = sub_22372AC88();
  v6 = sub_22372B268();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    v12 = *(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v34 = v11;
    v13 = 0xEB0000000064657ALL;
    v14 = 0x696C616974696E69;
    v15 = 0x8000000223734360;
    v16 = 0xD00000000000001FLL;
    v17 = 0xEC00000064657A69;
    v18 = 0x6C616E6946707274;
    if (v12 != 3)
    {
      v18 = 0xD000000000000010;
      v17 = 0x8000000223734390;
    }

    if (v12 != 2)
    {
      v16 = v18;
      v15 = v17;
    }

    if (v12)
    {
      v14 = 0x6E69766965636572;
      v13 = 0xED00007350525467;
    }

    if (v12 <= 1)
    {
      v19 = v14;
    }

    else
    {
      v19 = v16;
    }

    if (v12 <= 1)
    {
      v20 = v13;
    }

    else
    {
      v20 = v15;
    }

    v21 = v11;
    v22 = *(v0 + 16);
    v23 = sub_223623274(v19, v20, &v34);

    *(v9 + 14) = v23;
    _os_log_impl(&dword_223620000, v5, v6, "Received %@ when state: %s", v9, 0x16u);
    sub_223626478(v10, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x223DE8A80](v21, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  v24 = *(v0 + 48);
  v25 = *(v0 + 56);
  v26 = *(v0 + 32);
  v27 = *(v0 + 40);
  v28 = *(v0 + 16);
  v29 = *(v0 + 24);
  sub_223728FA8();
  v30 = sub_223729EE8();
  (*(*(v30 - 8) + 56))(v25, 0, 1, v30);
  v31 = sub_223728F98();
  (*(v27 + 104))(v24, *MEMORY[0x277D5CF30], v26);
  sub_22363DF70(v25, v31, v24);

  (*(v27 + 8))(v24, v26);
  sub_223626478(v25, &unk_27D08F6F0, &qword_223732CD0);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_22362DE10()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 88);
  v5 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_223688194, 0, 0);
  }

  else
  {
    v6 = *(v2 + 96);
    v7 = *(v2 + 72);

    v8 = *(v5 + 8);

    return v8();
  }
}

uint64_t sub_22362DF7C()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 336);
  sub_223626478(*(v2 + 96), &qword_27D08EE40, &qword_22372EB28);

  if (v0)
  {
    v6 = sub_223676634;
  }

  else
  {
    v6 = sub_22362E0DC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22362E0DC()
{
  v61 = v0;
  v49 = *(v0 + 328);
  v55 = *(v0 + 368);
  v58 = *(v0 + 344);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v36 = *(v0 + 264);
  v4 = *(v0 + 144);
  v38 = *(v0 + 128);
  v41 = *(v0 + 120);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v46 = *(v0 + 72);
  v52 = *(v0 + 64);
  v9 = *(v0 + 48);
  (*(v5 + 32))(v4, *(v0 + 136), v6);
  type metadata accessor for SessionClientBox(0);
  (*(v2 + 16))(v1, v36, v3);
  v10 = *(v5 + 16);
  v10(v38, v9, v6);
  v10(v41, v4, v6);
  (*(v7 + 16))(v8, v9 + *(v49 + 24), v46);
  v59 = sub_22362E4DC(v1, v38, v41, v8, v3, v58);
  v11 = sub_22372AC88();
  v12 = sub_22372B268();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 296);
  v15 = *(v0 + 272);
  v16 = *(v0 + 280);
  v17 = *(v0 + 248);
  v53 = *(v0 + 240);
  v56 = *(v0 + 264);
  v18 = *(v0 + 224);
  v47 = *(v0 + 216);
  v50 = *(v0 + 232);
  v44 = *(v0 + 144);
  v19 = *(v0 + 104);
  v20 = *(v0 + 112);
  if (v13)
  {
    v42 = *(v0 + 296);
    v21 = swift_slowAlloc();
    v39 = v15;
    v22 = swift_slowAlloc();
    v60 = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_223623274(0xD000000000000012, 0x8000000223735080, &v60);
    _os_log_impl(&dword_223620000, v11, v12, "%{public}s Set up InteligenceFlow Session successfully", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x223DE8A80](v22, -1, -1);
    MEMORY[0x223DE8A80](v21, -1, -1);

    (*(v20 + 8))(v44, v19);
    (*(v18 + 8))(v50, v47);
    (*(v17 + 8))(v56, v53);
    (*(v16 + 8))(v42, v39);
  }

  else
  {

    (*(v20 + 8))(v44, v19);
    (*(v18 + 8))(v50, v47);
    (*(v17 + 8))(v56, v53);
    (*(v16 + 8))(v14, v15);
  }

  v24 = *(v0 + 288);
  v23 = *(v0 + 296);
  v26 = *(v0 + 256);
  v25 = *(v0 + 264);
  v27 = *(v0 + 232);
  v29 = *(v0 + 200);
  v28 = *(v0 + 208);
  v31 = *(v0 + 184);
  v30 = *(v0 + 192);
  v32 = *(v0 + 176);
  v35 = *(v0 + 168);
  v37 = *(v0 + 160);
  v40 = *(v0 + 152);
  v43 = *(v0 + 144);
  v45 = *(v0 + 136);
  v48 = *(v0 + 128);
  v51 = *(v0 + 120);
  v54 = *(v0 + 96);
  v57 = *(v0 + 88);

  v33 = *(v0 + 8);

  return v33(v59);
}

uint64_t sub_22362E4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  v15 = swift_allocObject();
  sub_22362E55C(a1, a2, a3, a4, a5, a6);
  return v15;
}

uint64_t *sub_22362E55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_jsonEncoder;
  v15 = sub_223727178();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v6 + v14) = sub_223727168();
  *(v6 + OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_messageDispatchTask) = 0;
  v6[5] = a5;
  v6[6] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6 + 2);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  v19 = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_conversationSessionID;
  v20 = sub_223727408();
  v21 = *(*(v20 - 8) + 32);
  v21(v7 + v19, a2, v20);
  v21(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_intelligenceFlowSessionID, a3, v20);
  v22 = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_userID;
  v23 = sub_22372A548();
  (*(*(v23 - 8) + 32))(v7 + v22, a4, v23);
  return v7;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_22362E738(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ED28, &qword_22372E558);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22362E7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a3;
  v5[6] = a4;
  v5[3] = a1;
  v5[4] = a2;
  v6 = sub_22372AE98();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *v4;
  v5[9] = v9;
  v5[10] = v10;

  return MEMORY[0x2822009F8](sub_22362E870, 0, 0);
}

uint64_t sub_22362E870()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  v14 = *(v0 + 32);
  sub_223624E58();
  (*(v4 + 104))(v1, *MEMORY[0x277D851B8], v3);
  v6 = sub_22372B2F8();
  *(v0 + 88) = v6;
  (*(v4 + 8))(v1, v3);
  v7 = sub_223687724(&unk_281328D40, sub_223624E58);
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *(v8 + 16) = v2;
  *(v8 + 24) = v14;
  *(v8 + 40) = v5;
  v9 = *(MEMORY[0x277D85A08] + 4);
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  v11 = sub_223727408();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  *v10 = v0;
  v10[1] = sub_22362DE10;
  v12 = *(v0 + 24);

  return MEMORY[0x282200828](v12, v6, v7, 0, 0, &unk_22372EE08, v8, v11);
}

uint64_t sub_22362EA68(uint64_t a1, unint64_t a2)
{
  v4 = sub_22362EBA0(a1, a2);
  sub_22362EAB4(&unk_2836C3FA0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22362EAB4(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_22370DDD4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22362EBA0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_22362ECD0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22372B4C8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22372B098();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22362ECD0(v10, 0);
        result = sub_22372B448();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_22362ECD0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FA08, &unk_223733200);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_22362ED48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22372B6E8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_22362EE00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F190, &qword_22372FBA0);
  v39 = a2;
  result = sub_22372B588();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 24 * v22;
      v40 = *v26;
      v27 = *(v26 + 16);
      if ((v39 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      v28 = *(v8 + 40);
      sub_22372B7A8();
      sub_22372B078();
      result = sub_22372B7C8();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v40;
      *(v18 + 16) = v27;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void sub_22362F0D4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v33 - v5;
  v7 = *(v0 + qword_28132A1E0);
  if (!v7)
  {
    return;
  }

  v8 = *(v0 + qword_28132A1E8);
  v9 = v7;
  v10 = sub_22372A768();
  v12 = v11;
  v13 = qword_28132A208;
  v14 = *(v0 + qword_28132A208);
  v15 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestIdToMuxRequestContext;
  swift_beginAccess();

  v16 = *(v8 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v8 + v15);
  *(v8 + v15) = 0x8000000000000000;
  sub_22368D88C(v14, v10, v12, isUniquelyReferenced_nonNull_native);

  *(v8 + v15) = v34;
  swift_endAccess();
  sub_223727F08();
  sub_22372A9D8();

  v18 = qword_28132B8A8;
  swift_beginAccess();
  sub_2236719F4(v6, v0 + v18, &unk_27D08E990, &qword_22372FCF0);
  swift_endAccess();
  v19 = sub_223727F08();
  v20 = v19;
  v21 = *(v19 + 16);
  if (!v21)
  {
    goto LABEL_5;
  }

  v22 = sub_22369C0C4(*(v19 + 16), 0);
  v23 = sub_22369BC24(&v33, (v22 + 32), v21, v20);
  sub_223685A24();
  if (v23 != v21)
  {
    __break(1u);
LABEL_5:
  }

  v24 = sub_223727EF8();
  sub_223634890(v1 + v18, v6, &unk_27D08E990, &qword_22372FCF0);
  v25 = sub_22372AA58();

  sub_223626478(v6, &unk_27D08E990, &qword_22372FCF0);
  if (v24)
  {

    v9 = v25;
  }

  else
  {
    v26 = *(v1 + v13);

    sub_2236B3B58(v25);

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v27 = sub_22372AC98();
    __swift_project_value_buffer(v27, qword_28132B680);
    v28 = v25;
    v29 = sub_22372AC88();
    v30 = sub_22372B268();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412546;
      *(v31 + 4) = v28;
      *v32 = v25;
      *(v31 + 12) = 1024;
      *(v31 + 14) = 0;
      v28 = v28;
      _os_log_impl(&dword_223620000, v29, v30, "MUX: Generated default voice id score card : %@ when RMV=%{BOOL}d.", v31, 0x12u);
      sub_223626478(v32, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v32, -1, -1);
      MEMORY[0x223DE8A80](v31, -1, -1);
    }
  }
}

void sub_22362F498(void *a1)
{
  v2 = v1;
  v78 = a1;
  v3 = type metadata accessor for RequestInfo.UserInput(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v74 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_223729F08();
  v77 = *(v7 - 8);
  v8 = *(v77 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v75 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v73 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v73 - v19;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v21 = sub_22372AC98();
  v73 = __swift_project_value_buffer(v21, qword_28132B680);
  v22 = sub_22372AC88();
  v23 = sub_22372B268();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_223620000, v22, v23, "RequestControllerBridgeRequestProcessor: Handling StartRootLocalRequestMessage", v24, 2u);
    MEMORY[0x223DE8A80](v24, -1, -1);
  }

  v25 = *MEMORY[0x277D5CF30];
  v26 = v77;
  v27 = *(v77 + 104);
  v27(v20, v25, v7);
  (*(v26 + 56))(v20, 0, 1, v7);
  v28 = qword_28132B888;
  swift_beginAccess();
  sub_2236719F4(v20, v2 + v28, &qword_27D08E9D0, &qword_22372D1E0);
  swift_endAccess();
  v29 = sub_223729D38();
  v31 = v30;
  if (v29 == sub_22372A708() && v31 == v32)
  {

    v33 = v78;
  }

  else
  {
    v34 = sub_22372B6E8();

    v33 = v78;
    if ((v34 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  sub_223728FA8();
  v35 = sub_223729EE8();
  (*(*(v35 - 8) + 56))(v15, 0, 1, v35);
  v36 = qword_28132B858;
  swift_beginAccess();
  sub_2236719F4(v15, v2 + v36, &unk_27D08F6F0, &qword_223732CD0);
  swift_endAccess();
LABEL_10:
  if (*(v2 + qword_28132A1F8) == 1)
  {
    v37 = sub_223729D38();
    v39 = v38;
    v40 = v75;
    v27(v75, v25, v7);
    sub_223676D90(v37, v39, v40);

    (*(v77 + 8))(v40, v7);
  }

  v41 = v76;
  sub_223630694(v33, sub_223635D6C, 0);
  if (!v41)
  {
    v42 = sub_223728F98();
    if (v42)
    {
      v43 = v42;
      v44 = qword_28132B870;
      swift_beginAccess();
      v46 = *(v2 + v44);
      if (v46 >> 62)
      {
        if (v46 < 0)
        {
          v57 = *(v2 + v44);
        }

        v47 = sub_22372B558();
        if (v47 >= 2)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v47 >= 2)
        {
LABEL_16:
          v48 = objc_allocWithZone(sub_22372A408());
          v47 = sub_22372A3D8();
          v49 = v47;
          goto LABEL_24;
        }
      }

      v49 = 0;
LABEL_24:
      MEMORY[0x28223BE20](v47, v45);
      *(&v73 - 2) = v43;
      *(&v73 - 1) = v49;
      v58 = objc_allocWithZone(sub_22372A328());
      v59 = sub_22372A2E8();

      v60 = *(v2 + qword_28132B8A0);
      *(v2 + qword_28132B8A0) = v59;

      v61 = type metadata accessor for RequestInfo.UserQuery(0);
      v62 = v74;
      (*(*(v61 - 8) + 56))(v74, 1, 1, v61);
      v63 = sub_22362D128(v62);
      v64 = sub_22363B214(v62, type metadata accessor for RequestInfo.UserInput);
      MEMORY[0x28223BE20](v64, v65);
      v66 = v78;
      *(&v73 - 4) = v63;
      *(&v73 - 3) = v66;
      *(&v73 - 2) = v2;
      v67 = objc_allocWithZone(sub_223729138());
      v68 = sub_2237290B8();
      if (v68)
      {
        v69 = v68;
        sub_22363B540(v68, 1, v2, MEMORY[0x277D5CC70]);
      }

      else
      {
        v70 = sub_22372AC88();
        v71 = sub_22372B278();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          *v72 = 0;
          _os_log_impl(&dword_223620000, v70, v71, "Could not construct StartChildLocalRequestMessage. Missing fields?", v72, 2u);
          MEMORY[0x223DE8A80](v72, -1, -1);
        }
      }

      return;
    }

    v50 = v33;
    v51 = sub_22372AC88();
    v52 = sub_22372B278();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      *(v53 + 4) = v50;
      *v54 = v50;
      v55 = v50;
      _os_log_impl(&dword_223620000, v51, v52, "Message %@ didn't contain requestContextData", v53, 0xCu);
      sub_223626478(v54, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v54, -1, -1);
      MEMORY[0x223DE8A80](v53, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v56 = xmmword_22372CE90;
    *(v56 + 16) = 2;
    swift_willThrow();
  }
}

void sub_22362FD58(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v9 = sub_22372AC98();
  __swift_project_value_buffer(v9, qword_28132B680);
  v10 = sub_22372AC88();
  v11 = sub_22372B268();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_223620000, v10, v11, "Handling RunSiriKitExecutor command", v12, 2u);
    MEMORY[0x223DE8A80](v12, -1, -1);
  }

  if (sub_2236303D4(a1))
  {
    v48 = sub_22372AC88();
    v13 = sub_22372B268();
    if (!os_log_type_enabled(v48, v13))
    {
LABEL_9:

      return;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "🫨 Gesture invocation detected, ignoring RunSiriKitExecutor command";
LABEL_8:
    _os_log_impl(&dword_223620000, v48, v13, v15, v14, 2u);
    MEMORY[0x223DE8A80](v14, -1, -1);
    goto LABEL_9;
  }

  v16 = [a2 originPeerInfo];
  if (v16)
  {

    goto LABEL_26;
  }

  if (sub_22372A688())
  {
    type metadata accessor for RequestControllerBridgeRequestProcessor();
    if (swift_dynamicCastClass())
    {
      v17 = sub_22372A768();
      v19 = v18;
      v20 = [a1 refId];
      if (v20)
      {
        v21 = v20;
        v45 = sub_22372AFE8();
        v46 = v19;
        v23 = v22;

        if (v17 == v45 && v46 == v23)
        {

LABEL_22:
          sub_223630584(0, &qword_281328D20, 0x277D47438);
          sub_22372A6A8();

          return;
        }

        v24 = sub_22372B6E8();

        if (v24)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }
    }
  }

LABEL_26:
  v25 = [a1 refId];
  if (!v25)
  {
    v25 = [a2 requestID];
    if (!v25)
    {
      v48 = sub_22372AC88();
      v13 = sub_22372B278();
      if (!os_log_type_enabled(v48, v13))
      {
        goto LABEL_9;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Could not find a refId in the RSKE command, dropping.";
      goto LABEL_8;
    }
  }

  v26 = v25;
  v27 = sub_22372AFE8();
  v29 = v28;

  if (a3)
  {
    v30 = swift_allocObject();
    *(v30 + 16) = a3;
    *(v30 + 24) = a4;
    v31 = sub_22363FFA0;
  }

  else
  {
    v31 = 0;
    v30 = 0;
  }

  v32 = qword_28132AC88;
  swift_beginAccess();
  sub_22363038C(a3);

  v33 = *(v5 + v32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *(v5 + v32);
  *(v5 + v32) = 0x8000000000000000;
  sub_22363C35C(v31, v30, v27, v29, isUniquelyReferenced_nonNull_native);

  *(v5 + v32) = v50;
  swift_endAccess();
  v35 = sub_22372AC88();
  v36 = sub_22372B268();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_223620000, v35, v36, "RCB has no active request processor with matching requestId, will post RSKE Message to be handled by Conversation Bridge.", v37, 2u);
    MEMORY[0x223DE8A80](v37, -1, -1);
  }

  MEMORY[0x28223BE20](v38, v39);
  v40 = objc_allocWithZone(sub_223729C88());
  v41 = sub_223729C18();

  if (v41)
  {
    sub_22372A958();
    __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    sub_223729D88();

    __swift_destroy_boxed_opaque_existential_1Tm(v49);
  }

  else
  {
    v42 = sub_22372AC88();
    v43 = sub_22372B278();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_223620000, v42, v43, "Could not build RunSiriKitExecutorMessage. Missing fields?", v44, 2u);
      MEMORY[0x223DE8A80](v44, -1, -1);
    }
  }
}

uint64_t sub_22363038C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22363039C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2236303D4(void *a1)
{
  v1 = [a1 parse];
  if (v1 && (v2 = v1, v3 = [v1 directInvocation], v2, v3) && (v4 = objc_msgSend(v3, sel_invocationIdentifier), v3, v4))
  {
    v5 = sub_22372AFE8();
    v7 = v6;

    if (v5 == sub_2237274E8() && v7 == v8)
    {

      return 1;
    }

    else
    {
      v10 = sub_22372B6E8();

      return v10 & 1;
    }
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v12 = sub_22372AC98();
    __swift_project_value_buffer(v12, qword_28132B680);
    v13 = sub_22372AC88();
    v14 = sub_22372B268();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_223620000, v13, v14, "Not a gesture invocation, unable to get the payload identifier", v15, 2u);
      MEMORY[0x223DE8A80](v15, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_223630584(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2236305CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_223635D44(v2, v3, v4, v5, v6);
}

id sub_223630694(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = *(v12 + 56) + 24 * v13;
    v17 = *(v16 + 16);
    v38 = *v16;
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    v19 = sub_22372AC88();
    v20 = sub_22372B268();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(0xD00000000000001CLL, 0x8000000223737720, &v39);
      _os_log_impl(&dword_223620000, v19, v20, "Dispatching message %s to a RequestController async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    *(v23 + 32) = v38;
    *(v23 + 48) = a1;
    swift_unknownObjectRetain_n();
    v24 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);
    v27 = a1;
    v28 = sub_22372AC88();
    v29 = sub_22372B278();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      v32 = [v27 debugDescription];
      v33 = sub_22372AFE8();
      v35 = v34;

      v36 = sub_223623274(v33, v35, &v39);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_223620000, v28, v29, "Could not find a RequestProcessor for message: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x223DE8A80](v31, -1, -1);
      MEMORY[0x223DE8A80](v30, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v37 = v27;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    swift_willThrow();
    return v27;
  }
}

uint64_t sub_223630AC8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_22372A308();
  (*(*(v5 - 8) + 8))(a1, v5);
  sub_22372A318();
  v6 = a3;
  return sub_22372A2F8();
}

uint64_t sub_223630B48()
{
  v0 = sub_22372A738();
  sub_22372B2C8();

  return v2;
}

uint64_t sub_223630BD8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = qword_28132B848;
  swift_beginAccess();
  v4 = *(a1 + v3);
  v24 = v4 + 64;
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  v25 = v4;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  while (v7)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = (*(v25 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = (*(v25 + 56) + 24 * v12);
    v17 = *v16;
    v18 = v16[2];

    swift_unknownObjectRetain();

    if (v15 == sub_223729D38() && v14 == v19)
    {

      swift_unknownObjectRelease();

LABEL_17:

      v22 = 1;
LABEL_18:
      *a2 = v22;
      return result;
    }

    v7 &= v7 - 1;
    v21 = sub_22372B6E8();

    swift_unknownObjectRelease();

    if (v21)
    {
      goto LABEL_17;
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

      v22 = 0;
      goto LABEL_18;
    }

    v7 = *(v24 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_223630DB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9C0, &qword_223731E30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_223630E28(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v19 - v6;
  v8 = sub_22372A548();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2236310E8(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_223626478(v7, &unk_27D08E990, &qword_22372FCF0);
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v14 = sub_22372AC98();
    __swift_project_value_buffer(v14, qword_28132B680);
    v15 = sub_22372AC88();
    v16 = sub_22372B278();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_223620000, v15, v16, "Need selectedUserId in order to update SessionState", v17, 2u);
      MEMORY[0x223DE8A80](v17, -1, -1);
    }
  }

  else
  {
    (*(v9 + 32))(v13, v7, v8);
    v18 = *__swift_project_boxed_opaque_existential_1((v1 + qword_28132A1C0), *(v1 + qword_28132A1C0 + 24));
    sub_223631398(v13, a1);
    (*(v9 + 8))(v13, v8);
  }
}

uint64_t sub_223631098()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2236310E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22372A3C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + qword_28132A1F8) == 1)
  {
    v9 = *(v1 + qword_28132A1A0 + 32);
    __swift_project_boxed_opaque_existential_1((v1 + qword_28132A1A0), *(v1 + qword_28132A1A0 + 24));
    (*(v4 + 104))(v8, *MEMORY[0x277D5D1C0], v3);
    sub_22372A478();
    (*(v4 + 8))(v8, v3);
    if (v21)
    {
      v10 = sub_22372A548();
      v11 = swift_dynamicCast();
      return (*(*(v10 - 8) + 56))(a1, v11 ^ 1u, 1, v10);
    }

    else
    {
      sub_223626478(v20, &unk_27D08F750, &qword_22372C960);
      v17 = sub_22372A548();
      return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
    }
  }

  else
  {
    v13 = *(v1 + qword_28132A1E8);
    v14 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_sessionUserId;
    v15 = sub_22372A548();
    v19 = *(v15 - 8);
    (*(v19 + 16))(a1, v13 + v14, v15);
    v16 = *(v19 + 56);

    return v16(a1, 0, 1, v15);
  }
}

uint64_t sub_223631398(uint64_t a1, uint64_t a2)
{
  v549 = a2;
  v540 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E4F0, &qword_22372C958);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v532 = &v511 - v6;
  v7 = sub_22372A1B8();
  v8 = *(v7 - 8);
  v535 = v7;
  v536 = v8;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v528 = &v511 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v519 = &v511 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v518 = &v511 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v517 = &v511 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v527 = &v511 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v534 = &v511 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F798, &qword_223731E90);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v541 = &v511 - v30;
  v556 = sub_223727198();
  v543 = *(v556 - 1);
  v31 = *(v543 + 64);
  MEMORY[0x28223BE20](v556, v32);
  v555 = &v511 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v554 = sub_22372A058();
  v537 = *(v554 - 8);
  v34 = *(v537 + 64);
  v36 = MEMORY[0x28223BE20](v554, v35);
  v550 = &v511 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v551 = &v511 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v552 = (&v511 - v43);
  MEMORY[0x28223BE20](v42, v44);
  *&v553 = &v511 - v45;
  v544 = sub_22372A138();
  v546 = *(v544 - 8);
  v46 = *(v546 + 64);
  MEMORY[0x28223BE20](v544, v47);
  v542 = &v511 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7E8, &qword_2237325D8);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8, v51);
  v533 = &v511 - v52;
  v530 = sub_22372A188();
  v548 = *(v530 - 8);
  v53 = *(v548 + 64);
  MEMORY[0x28223BE20](v530, v54);
  v529 = &v511 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for RequestInfo.UserQuery(0);
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56, v59);
  v538 = &v511 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for RequestInfo.UserInput(0);
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61 - 8, v63);
  v65 = &v511 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7F0, &qword_2237325E0);
  v67 = *(*(v66 - 8) + 64);
  v69 = MEMORY[0x28223BE20](v66 - 8, v68);
  v547 = &v511 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69, v71);
  v545 = &v511 - v72;
  v73 = sub_22372A3C8();
  v74 = *(v73 - 8);
  v75 = v74[8];
  MEMORY[0x28223BE20](v73, v76);
  v78 = &v511 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v2[5];
  v80 = v2[6];
  v531 = v2;
  __swift_project_boxed_opaque_existential_1(v2 + 2, v79);
  v81 = v74[13];
  v522 = *MEMORY[0x277D5D1E0];
  v523 = v74 + 13;
  v521 = v81;
  v81(v78);
  sub_22372A4C8();
  v82 = v74[1];
  v524 = v78;
  v525 = v74 + 1;
  v82(v78, v73);
  if (*&v559[8])
  {
    v83 = swift_dynamicCast();
    v85 = v548;
    v84 = v549;
    if (v83)
    {
      v86 = v557[0];
      goto LABEL_6;
    }
  }

  else
  {
    sub_223626478(&v558, &unk_27D08F750, &qword_22372C960);
    v85 = v548;
    v84 = v549;
  }

  v86 = MEMORY[0x277D84F90];
LABEL_6:
  v539 = v86;
  v87 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userInput;
  swift_beginAccess();
  sub_2236346D0(v84 + v87, v65);
  if ((*(v57 + 48))(v65, 1, v56) == 1)
  {
    v89 = v545;
    v88 = v546;
    v90 = v544;
    (*(v546 + 104))(v545, *MEMORY[0x277D5D058], v544);
LABEL_8:
    v91 = 0;
    goto LABEL_17;
  }

  v92 = v65;
  v93 = v538;
  v94 = sub_2236F1E0C(v92, v538);
  v90 = v544;
  if (*(v93 + 1) && *(v93 + 3))
  {
    v96 = *v93;
    v97 = *(v93 + 2);
    MEMORY[0x28223BE20](v94, v95);
    *(&v511 - 4) = v99;
    *(&v511 - 3) = v98;
    *(&v511 - 2) = v101;
    *(&v511 - 1) = v100;
    v102 = v533;
    sub_22372A158();
    v103 = v102;
    v104 = v102;
    v105 = v530;
    if ((*(v85 + 48))(v104, 1, v530) == 1)
    {

      sub_223626478(v103, &qword_27D08F7E8, &qword_2237325D8);
      if (qword_281328E58 == -1)
      {
LABEL_13:
        v106 = sub_22372AC98();
        __swift_project_value_buffer(v106, qword_28132B680);
        v107 = sub_22372AC88();
        v108 = sub_22372B278();
        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          *v109 = 0;
          _os_log_impl(&dword_223620000, v107, v108, "Couldn't construct UserQuery. Missing required fields?", v109, 2u);
          MEMORY[0x223DE8A80](v109, -1, -1);
        }

        return sub_2236F1E70(v93);
      }

LABEL_366:
      swift_once();
      goto LABEL_13;
    }

    sub_2236F1E70(v93);
    v307 = *(v85 + 32);
    v308 = v529;
    v307(v529, v103, v105);
    v89 = v545;
    v307(v545, v308, v105);
    v88 = v546;
    (*(v546 + 104))(v89, *MEMORY[0x277D5D060], v90);
    goto LABEL_8;
  }

  sub_2236F1E70(v93);
  v91 = 1;
  v89 = v545;
  v88 = v546;
LABEL_17:
  (*(v88 + 56))(v89, v91, 1, v90);
  v111 = v547;
  sub_223634890(v89, v547, &qword_27D08F7F0, &qword_2237325E0);
  if ((*(v88 + 48))(v111, 1, v90) == 1)
  {

    sub_223626478(v111, &qword_27D08F7F0, &qword_2237325E0);
    if (qword_281328E58 == -1)
    {
LABEL_19:
      v112 = sub_22372AC98();
      __swift_project_value_buffer(v112, qword_28132B680);
      v113 = sub_22372AC88();
      v114 = sub_22372B278();
      v115 = os_log_type_enabled(v113, v114);
      v116 = v545;
      if (v115)
      {
        v117 = swift_slowAlloc();
        *v117 = 0;
        _os_log_impl(&dword_223620000, v113, v114, "Empty userInput. Can't create RequestSummary.", v117, 2u);
        MEMORY[0x223DE8A80](v117, -1, -1);
      }

      return sub_223626478(v116, &qword_27D08F7F0, &qword_2237325E0);
    }

LABEL_359:
    swift_once();
    goto LABEL_19;
  }

  v514 = v82;
  v515 = v73;
  (*(v88 + 32))(v542, v111, v90);
  v118 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_responseList;
  swift_beginAccess();
  v533 = v118;
  v119 = *(v84 + v118);
  v120 = *(v119 + 16);
  if (v120)
  {
    v121 = *(v537 + 16);
    v122 = v119 + ((*(v537 + 80) + 32) & ~*(v537 + 80));
    v547 = *(v537 + 72);
    v548 = v121;
    v123 = (v537 + 8);
    v538 = v119;

    v124 = MEMORY[0x277D84F90];
    do
    {
      v126 = v553;
      v127 = v554;
      (v548)(v553, v122, v554);
      v128 = sub_22372A038();
      v130 = v129;
      (*v123)(v126, v127);
      if (v130)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v124 = sub_223637D3C(0, *(v124 + 2) + 1, 1, v124);
        }

        v132 = *(v124 + 2);
        v131 = *(v124 + 3);
        if (v132 >= v131 >> 1)
        {
          v124 = sub_223637D3C((v131 > 1), v132 + 1, 1, v124);
        }

        *(v124 + 2) = v132 + 1;
        v125 = &v124[16 * v132];
        *(v125 + 4) = v128;
        *(v125 + 5) = v130;
      }

      v122 += v547;
      --v120;
    }

    while (v120);

    v133 = *(v124 + 2);
    if (v133)
    {
      goto LABEL_32;
    }

LABEL_47:
    v530 = MEMORY[0x277D84F90];
    goto LABEL_48;
  }

  v124 = MEMORY[0x277D84F90];
  v133 = *(MEMORY[0x277D84F90] + 16);
  if (!v133)
  {
    goto LABEL_47;
  }

LABEL_32:
  v134 = 0;
  *&v553 = v543 + 8;
  v135 = (v124 + 40);
  v548 = v133;
  v538 = v133 - 1;
  v530 = MEMORY[0x277D84F90];
  v547 = (v124 + 40);
  v136 = v555;
  do
  {
    v137 = (v135 + 16 * v134);
    v138 = v134;
    while (1)
    {
      if (v138 >= *(v124 + 2))
      {
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
        goto LABEL_351;
      }

      v139 = *(v137 - 1);
      v140 = *v137;
      v134 = v138 + 1;
      *&v558 = v139;
      *(&v558 + 1) = v140;

      sub_223727188();
      sub_223637E48();
      v141 = sub_22372B3B8();
      v143 = v142;
      (*v553)(v136, v556);

      v144 = HIBYTE(v143) & 0xF;
      if ((v143 & 0x2000000000000000) == 0)
      {
        v144 = v141 & 0xFFFFFFFFFFFFLL;
      }

      if (v144)
      {
        break;
      }

      v137 += 2;
      ++v138;
      if (v548 == v134)
      {
        goto LABEL_48;
      }
    }

    v145 = v530;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v557[0] = v145;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2236387B4(0, *(v145 + 16) + 1, 1);
      v145 = v557[0];
    }

    v148 = *(v145 + 16);
    v147 = *(v145 + 24);
    if (v148 >= v147 >> 1)
    {
      sub_2236387B4((v147 > 1), v148 + 1, 1);
      v145 = v557[0];
    }

    *(v145 + 16) = v148 + 1;
    v530 = v145;
    v149 = v145 + 16 * v148;
    *(v149 + 32) = v139;
    *(v149 + 40) = v140;
    v135 = v547;
  }

  while (v538 != v138);
LABEL_48:

  *&v558 = v530;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB98, &qword_22372DE50);
  v151 = sub_2236348F8();
  v547 = v150;
  v538 = v151;
  v152 = sub_22372AFA8();
  v154 = v153;

  v529 = v154;
  v530 = v152;
  v566 = v152;
  v567 = v154;
  v155 = *&v533[v549];
  v156 = *(v155 + 16);
  if (v156)
  {
    *&v553 = *(v537 + 16);
    v157 = v155 + ((*(v537 + 80) + 32) & ~*(v537 + 80));
    v548 = *(v537 + 72);
    v158 = (v537 + 8);

    v526 = v155;

    v159 = MEMORY[0x277D84F90];
    do
    {
      v161 = v552;
      v162 = v554;
      (v553)(v552, v157, v554);
      v163 = sub_22372A048();
      v165 = v164;
      (*v158)(v161, v162);
      if (v165)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v159 = sub_223637D3C(0, *(v159 + 2) + 1, 1, v159);
        }

        v167 = *(v159 + 2);
        v166 = *(v159 + 3);
        if (v167 >= v166 >> 1)
        {
          v159 = sub_223637D3C((v166 > 1), v167 + 1, 1, v159);
        }

        *(v159 + 2) = v167 + 1;
        v160 = &v159[16 * v167];
        *(v160 + 4) = v163;
        *(v160 + 5) = v165;
      }

      v157 += v548;
      --v156;
    }

    while (v156);

    v168 = *(v159 + 2);
    if (v168)
    {
      goto LABEL_58;
    }

LABEL_73:
    v548 = MEMORY[0x277D84F90];
  }

  else
  {

    v159 = MEMORY[0x277D84F90];
    v168 = *(MEMORY[0x277D84F90] + 16);
    if (!v168)
    {
      goto LABEL_73;
    }

LABEL_58:
    v169 = 0;
    v552 = v168;
    *&v553 = v543 + 8;
    v170 = v159 + 40;
    v520 = &v168[-1].isa + 7;
    v548 = MEMORY[0x277D84F90];
    v526 = v159 + 40;
    do
    {
      v171 = &v170[16 * v169];
      v172 = v169;
      while (1)
      {
        if (v172 >= *(v159 + 2))
        {
          goto LABEL_348;
        }

        v173 = *(v171 - 1);
        v174 = *v171;
        v169 = (&v172->isa + 1);
        *&v558 = v173;
        *(&v558 + 1) = v174;

        v175 = v555;
        sub_223727188();
        sub_223637E48();
        v176 = sub_22372B3B8();
        v178 = v177;
        (*v553)(v175, v556);

        v179 = HIBYTE(v178) & 0xF;
        if ((v178 & 0x2000000000000000) == 0)
        {
          v179 = v176 & 0xFFFFFFFFFFFFLL;
        }

        if (v179)
        {
          break;
        }

        v171 += 16;
        v172 = (v172 + 1);
        if (v552 == v169)
        {
          goto LABEL_74;
        }
      }

      v180 = v548;
      v181 = swift_isUniquelyReferenced_nonNull_native();
      v557[0] = v180;
      if ((v181 & 1) == 0)
      {
        sub_2236387B4(0, *(v180 + 2) + 1, 1);
        v180 = v557[0];
      }

      v183 = *(v180 + 2);
      v182 = *(v180 + 3);
      if (v183 >= v182 >> 1)
      {
        sub_2236387B4((v182 > 1), v183 + 1, 1);
        v180 = v557[0];
      }

      *(v180 + 2) = v183 + 1;
      v548 = v180;
      v184 = &v180[16 * v183];
      *(v184 + 4) = v173;
      *(v184 + 5) = v174;
      v170 = v526;
    }

    while (v520 != v172);
  }

LABEL_74:

  *&v558 = v548;
  v185 = sub_22372AFA8();
  v187 = v186;

  v516 = v185;
  v564 = v185;
  v565 = v187;
  v526 = v187;
  v188 = *&v533[v549];
  v189 = *(v188 + 16);
  if (v189)
  {
    v190 = *(v537 + 16);
    v191 = v188 + ((*(v537 + 80) + 32) & ~*(v537 + 80));
    v552 = *(v537 + 72);
    *&v553 = v190;
    v192 = (v537 + 8);
    v548 = v188;

    v193 = MEMORY[0x277D84F90];
    do
    {
      v195 = v551;
      v196 = v554;
      (v553)(v551, v191, v554);
      v197 = sub_223729FC8();
      v199 = v198;
      (*v192)(v195, v196);
      if (v199)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v193 = sub_223637D3C(0, *(v193 + 2) + 1, 1, v193);
        }

        v201 = *(v193 + 2);
        v200 = *(v193 + 3);
        if (v201 >= v200 >> 1)
        {
          v193 = sub_223637D3C((v200 > 1), v201 + 1, 1, v193);
        }

        *(v193 + 2) = v201 + 1;
        v194 = &v193[16 * v201];
        *(v194 + 4) = v197;
        *(v194 + 5) = v199;
      }

      v191 += v552;
      --v189;
    }

    while (v189);

    v202 = *(v193 + 2);
    if (v202)
    {
      goto LABEL_84;
    }

LABEL_99:
    v551 = MEMORY[0x277D84F90];
  }

  else
  {
    v193 = MEMORY[0x277D84F90];
    v202 = *(MEMORY[0x277D84F90] + 16);
    if (!v202)
    {
      goto LABEL_99;
    }

LABEL_84:
    v203 = 0;
    v552 = v202;
    *&v553 = v543 + 8;
    v204 = v193 + 40;
    v520 = &v202[-1].isa + 7;
    v551 = MEMORY[0x277D84F90];
    v548 = (v193 + 40);
    do
    {
      v205 = &v204[16 * v203];
      v206 = v203;
      while (1)
      {
        if (v206 >= *(v193 + 2))
        {
          goto LABEL_349;
        }

        v207 = *(v205 - 1);
        v208 = *v205;
        v203 = (&v206->isa + 1);
        *&v558 = v207;
        *(&v558 + 1) = v208;

        v209 = v555;
        sub_223727188();
        sub_223637E48();
        v210 = sub_22372B3B8();
        v212 = v211;
        (*v553)(v209, v556);

        v213 = HIBYTE(v212) & 0xF;
        if ((v212 & 0x2000000000000000) == 0)
        {
          v213 = v210 & 0xFFFFFFFFFFFFLL;
        }

        if (v213)
        {
          break;
        }

        v205 += 16;
        v206 = (v206 + 1);
        if (v552 == v203)
        {
          goto LABEL_100;
        }
      }

      v214 = v551;
      v215 = swift_isUniquelyReferenced_nonNull_native();
      v557[0] = v214;
      if ((v215 & 1) == 0)
      {
        sub_2236387B4(0, *(v214 + 2) + 1, 1);
        v214 = v557[0];
      }

      v217 = *(v214 + 2);
      v216 = *(v214 + 3);
      if (v217 >= v216 >> 1)
      {
        sub_2236387B4((v216 > 1), v217 + 1, 1);
        v214 = v557[0];
      }

      *(v214 + 2) = v217 + 1;
      v551 = v214;
      v218 = &v214[16 * v217];
      *(v218 + 4) = v207;
      *(v218 + 5) = v208;
      v204 = v548;
    }

    while (v520 != v206);
  }

LABEL_100:

  *&v558 = v551;
  v219 = sub_22372AFA8();
  v221 = v220;

  v520 = v219;
  v562 = v219;
  v563 = v221;
  v548 = v221;
  v222 = *&v533[v549];
  v223 = *(v222 + 2);
  if (v223)
  {
    v224 = *(v537 + 16);
    v225 = &v222[(*(v537 + 80) + 32) & ~*(v537 + 80)];
    v552 = *(v537 + 72);
    *&v553 = v224;
    v226 = (v537 + 8);
    v551 = v222;

    v227 = MEMORY[0x277D84F90];
    do
    {
      v229 = v550;
      v230 = v554;
      (v553)(v550, v225, v554);
      v231 = sub_223729FD8();
      v233 = v232;
      (*v226)(v229, v230);
      if (v233)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v227 = sub_223637D3C(0, *(v227 + 2) + 1, 1, v227);
        }

        v235 = *(v227 + 2);
        v234 = *(v227 + 3);
        if (v235 >= v234 >> 1)
        {
          v227 = sub_223637D3C((v234 > 1), v235 + 1, 1, v227);
        }

        *(v227 + 2) = v235 + 1;
        v228 = &v227[16 * v235];
        *(v228 + 4) = v231;
        *(v228 + 5) = v233;
      }

      v225 = v552 + v225;
      --v223;
    }

    while (v223);

    v236 = *(v227 + 2);
    if (v236)
    {
      goto LABEL_110;
    }

LABEL_125:
    v552 = MEMORY[0x277D84F90];
  }

  else
  {
    v227 = MEMORY[0x277D84F90];
    v236 = *(MEMORY[0x277D84F90] + 16);
    if (!v236)
    {
      goto LABEL_125;
    }

LABEL_110:
    v237 = 0;
    *&v554 = v543 + 8;
    v238 = v227 + 40;
    *&v553 = v236;
    v550 = (v236 - 1);
    v551 = v227 + 40;
    v552 = MEMORY[0x277D84F90];
    v239 = v555;
    do
    {
      v240 = &v238[16 * v237];
      v241 = v237;
      while (1)
      {
        if (v241 >= *(v227 + 2))
        {
          goto LABEL_350;
        }

        v242 = *(v240 - 1);
        v243 = *v240;
        v237 = v241 + 1;
        *&v558 = v242;
        *(&v558 + 1) = v243;

        sub_223727188();
        sub_223637E48();
        v244 = sub_22372B3B8();
        v246 = v245;
        (*v554)(v239, v556);

        v247 = HIBYTE(v246) & 0xF;
        if ((v246 & 0x2000000000000000) == 0)
        {
          v247 = v244 & 0xFFFFFFFFFFFFLL;
        }

        if (v247)
        {
          break;
        }

        v240 += 2;
        ++v241;
        if (v553 == v237)
        {
          goto LABEL_126;
        }
      }

      v248 = v552;
      v249 = swift_isUniquelyReferenced_nonNull_native();
      v557[0] = v248;
      if ((v249 & 1) == 0)
      {
        sub_2236387B4(0, v248[2].isa + 1, 1);
        v248 = v557[0];
      }

      isa = v248[2].isa;
      v250 = v248[3].isa;
      if (isa >= v250 >> 1)
      {
        sub_2236387B4((v250 > 1), isa + 1, 1);
        v248 = v557[0];
      }

      v248[2].isa = (isa + 1);
      v552 = v248;
      v252 = &v248[2 * isa];
      v252[4].isa = v242;
      v252[5].isa = v243;
      v238 = v551;
    }

    while (v550 != v241);
  }

LABEL_126:

  *&v558 = v552;
  v253 = sub_22372AFA8();
  v255 = v254;

  v560 = v253;
  v561 = v255;
  v537 = v255;
  v256 = v529;

  if ((v256 & 0x2000000000000000) != 0)
  {
    v259 = HIBYTE(v256) & 0xF;
  }

  else
  {
    v259 = v530 & 0xFFFFFFFFFFFFLL;
  }

  if (v259)
  {
    v260 = v516 & 0xFFFFFFFFFFFFLL;
    if ((v526 & 0x2000000000000000) != 0)
    {
      v260 = (v526 >> 56) & 0xF;
    }

    if (v260)
    {
      v261 = v546;
      v262 = v549;
      goto LABEL_304;
    }
  }

  v533 = v259;
  v512 = v253;
  v513 = (v526 >> 56) & 0xF;
  v261 = v546;
  v262 = v549;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v263 = sub_22372AC98();
  __swift_project_value_buffer(v263, qword_28132B680);
  v264 = sub_22372AC88();
  v265 = sub_22372B268();
  if (os_log_type_enabled(v264, v265))
  {
    v266 = swift_slowAlloc();
    *v266 = 0;
    _os_log_impl(&dword_223620000, v264, v265, "Empty DialogEngineOutput. Falling back to AceCommands for RequestSummary.", v266, 2u);
    MEMORY[0x223DE8A80](v266, -1, -1);
  }

  v267 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_aceCommands;
  swift_beginAccess();
  v268 = *(v262 + v267);
  if (v268 >> 62)
  {
    v510 = *(v262 + v267);
    v269 = sub_22372B558();
    v268 = v510;
  }

  else
  {
    v269 = *((v268 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v270 = MEMORY[0x277D84F90];
  if (!v269)
  {
LABEL_164:
    v293 = v530;
    if (v533)
    {
      v294 = v529;
LABEL_198:
      v529 = v294;
      v530 = v293;
      v566 = v293;
      v567 = v294;
      v327 = v516 & 0xFFFFFFFFFFFFLL;
      if ((v526 & 0x2000000000000000) != 0)
      {
        v327 = v513;
      }

      if (v327)
      {
        v564 = v516;
        v565 = v526;
LABEL_233:
        v360 = v520;
        if ((v548 & 0x2000000000000000) != 0)
        {
          if ((v548 & 0xF00000000000000) != 0)
          {
            goto LABEL_235;
          }
        }

        else if ((v520 & 0xFFFFFFFFFFFFLL) != 0)
        {
LABEL_235:
          v361 = v548;
LABEL_268:
          v520 = v360;
          v562 = v360;
          v563 = v361;
          v548 = v361;
          v392 = v537;
          v393 = HIBYTE(v537) & 0xF;
          v394 = v512;
          if ((v537 & 0x2000000000000000) == 0)
          {
            v393 = v512 & 0xFFFFFFFFFFFFLL;
          }

          if (v393)
          {

LABEL_303:
            v560 = v394;
            v561 = v392;
LABEL_304:
            v426 = v532;
            if (*(v531 + 56) == 1)
            {
              *&v558 = v530;
              *(&v558 + 1) = v529;
              v427 = sub_223637E48();

              v428 = MEMORY[0x223DE7E10](0xD000000000000015, 0x8000000223737D10, 1, 1, MEMORY[0x277D837D0], v427);

              if (v428[2])
              {
                v429 = v428[4];
                v430 = v428[5];
                v431 = v428[6];
                v432 = v428[7];

                v433 = MEMORY[0x223DE7AB0](v429, v430, v431, v432);
                v435 = v434;
                v262 = v549;

                v566 = v433;
                v567 = v435;
              }

              else
              {
              }

              *&v558 = v520;
              *(&v558 + 1) = v548;

              v436 = MEMORY[0x223DE7E10](0xD000000000000015, 0x8000000223737D10, 1, 1, MEMORY[0x277D837D0], v427);

              if (v436[2])
              {
                v437 = v436[4];
                v438 = v436[5];
                v439 = v436[6];
                v440 = v436[7];

                v441 = MEMORY[0x223DE7AB0](v437, v438, v439, v440);
                v443 = v442;

                v562 = v441;
                v563 = v443;
              }

              else
              {
              }

              v426 = v532;
            }

            MEMORY[0x28223BE20](v257, v258);
            *(&v511 - 4) = &v566;
            *(&v511 - 3) = &v564;
            *(&v511 - 2) = &v562;
            *(&v511 - 1) = &v560;
            v444 = sub_223729FE8();
            if (*(v262 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceIndex + 8) & 1) != 0 || (*(v262 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceCount + 8))
            {
              v446 = 0;
            }

            else
            {
              v447 = *(v262 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceIndex);
              v448 = *(v262 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceCount);
              MEMORY[0x28223BE20](v444, v445);
              *(&v511 - 2) = v450;
              *(&v511 - 1) = v449;
              v451 = objc_allocWithZone(sub_22372A408());
              v446 = sub_22372A3D8();
              v444 = v446;
            }

            MEMORY[0x28223BE20](v444, v445);
            v452 = v541;
            v453 = v542;
            *(&v511 - 4) = v262;
            *(&v511 - 3) = v453;
            *(&v511 - 2) = v452;
            *(&v511 - 1) = v446;
            sub_22372A0C8();

            v454 = v535;
            v455 = v536;
            if ((*(v536 + 48))(v426, 1, v535) == 1)
            {

              sub_223626478(v426, &unk_27D08E4F0, &qword_22372C958);
              if (qword_281328E58 != -1)
              {
                swift_once();
              }

              v456 = sub_22372AC98();
              __swift_project_value_buffer(v456, qword_28132B680);
              v457 = sub_22372AC88();
              v458 = sub_22372B278();
              if (os_log_type_enabled(v457, v458))
              {
                v459 = swift_slowAlloc();
                *v459 = 0;
                _os_log_impl(&dword_223620000, v457, v458, "Couldn't create RequestSummary. Missing required fields?", v459, 2u);
                MEMORY[0x223DE8A80](v459, -1, -1);
              }

              sub_223626478(v545, &qword_27D08F7F0, &qword_2237325E0);
              sub_223626478(v541, &qword_27D08F798, &qword_223731E90);

              return (*(v261 + 8))(v542, v544);
            }

            *&v553 = *(v455 + 32);
            (v553)(v534, v426, v454);
            v460 = v539[2];
            v555 = v446;
            *&v554 = v455 + 32;
            if (v460)
            {
              v461 = *(v455 + 16);
              v462 = (*(v455 + 80) + 32) & ~*(v455 + 80);
              v552 = *(v455 + 72);
              v556 = v461;
              (v461)(v527, v539 + v462 + v552 * (v460 - 1), v454);
              v463 = sub_22372A198();
              v465 = *(v262 + 16);
              v93 = *(v262 + 24);
              if (v463 == v465 && v464 == v93)
              {

                goto LABEL_327;
              }

              v466 = *(v262 + 16);
              v467 = *(v262 + 24);
              v468 = sub_22372B6E8();

              if (v468)
              {
LABEL_327:
                v551 = v462;
                if (qword_281328E58 != -1)
                {
                  swift_once();
                }

                v469 = sub_22372AC98();
                __swift_project_value_buffer(v469, qword_28132B680);
                v470 = v517;
                v471 = v535;
                v472 = v556;
                v556(v517, v534, v535);

                v473 = sub_22372AC88();
                v474 = sub_22372B268();

                if (os_log_type_enabled(v473, v474))
                {
                  v475 = swift_slowAlloc();
                  v550 = swift_slowAlloc();
                  *&v558 = v550;
                  *v475 = 136315395;
                  *(v475 + 4) = sub_223623274(v465, v93, &v558);
                  *(v475 + 12) = 2081;
                  v472(v518, v470, v471);
                  v476 = sub_22372B038();
                  v93 = v477;
                  v478 = *(v536 + 8);
                  v478(v470, v471);
                  v479 = sub_223623274(v476, v93, &v558);

                  *(v475 + 14) = v479;
                  _os_log_impl(&dword_223620000, v473, v474, "Updating request summary for requestId %s to %{private}s", v475, 0x16u);
                  v480 = v550;
                  swift_arrayDestroy();
                  MEMORY[0x223DE8A80](v480, -1, -1);
                  MEMORY[0x223DE8A80](v475, -1, -1);
                }

                else
                {

                  v478 = *(v536 + 8);
                  v478(v470, v471);
                }

                v481 = v539;
                if (v539[2])
                {
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    v482 = *(v481 + 16);
                    if (v482)
                    {
LABEL_335:
                      v483 = v482 - 1;
                      v484 = &v551[v481 + v483 * v552];
                      *(v481 + 16) = v483;
                      v485 = v535;
                      v478(v484, v535);
                      v478(v527, v485);
                      v486 = v485;
                      goto LABEL_342;
                    }

                    goto LABEL_365;
                  }
                }

                else
                {
                  __break(1u);
                }

                v481 = sub_2236388E0(v481);
                v482 = *(v481 + 16);
                if (v482)
                {
                  goto LABEL_335;
                }

LABEL_365:
                __break(1u);
                goto LABEL_366;
              }

              (*(v536 + 8))(v527, v535);
            }

            if (qword_281328E58 != -1)
            {
              goto LABEL_362;
            }

            goto LABEL_338;
          }

          v395 = v270[2].isa;
          if (!v395)
          {
            v398 = MEMORY[0x277D84F90];
LABEL_286:

            v407 = *(v398 + 2);
            *&v554 = v398;
            if (!v407)
            {
              v552 = MEMORY[0x277D84F90];
LABEL_302:

              *&v558 = v552;
              v394 = sub_22372AFA8();
              v392 = v425;

              v261 = v546;
              v262 = v549;
              goto LABEL_303;
            }

            v408 = 0;
            v409 = (v543 + 8);
            v410 = v398 + 40;
            *&v553 = v407;
            v550 = (v407 - 1);
            v551 = v398 + 40;
            v552 = MEMORY[0x277D84F90];
            v411 = v555;
LABEL_288:
            v412 = &v410[16 * v408];
            v413 = v408;
            while (v413 < *(v554 + 16))
            {
              v414 = *(v412 - 1);
              v415 = *v412;
              v408 = v413 + 1;
              *&v558 = v414;
              *(&v558 + 1) = v415;

              sub_223727188();
              sub_223637E48();
              v416 = sub_22372B3B8();
              v418 = v417;
              (*v409)(v411, v556);

              v419 = HIBYTE(v418) & 0xF;
              if ((v418 & 0x2000000000000000) == 0)
              {
                v419 = v416 & 0xFFFFFFFFFFFFLL;
              }

              if (v419)
              {
                v420 = v552;
                v421 = swift_isUniquelyReferenced_nonNull_native();
                v557[0] = v420;
                if ((v421 & 1) == 0)
                {
                  sub_2236387B4(0, v420[2].isa + 1, 1);
                  v420 = v557[0];
                }

                v423 = v420[2].isa;
                v422 = v420[3].isa;
                if (v423 >= v422 >> 1)
                {
                  sub_2236387B4((v422 > 1), v423 + 1, 1);
                  v420 = v557[0];
                }

                v420[2].isa = (v423 + 1);
                v552 = v420;
                v424 = &v420[2 * v423];
                v424[4].isa = v414;
                v424[5].isa = v415;
                v410 = v551;
                if (v550 != v413)
                {
                  goto LABEL_288;
                }

                goto LABEL_302;
              }

              v412 += 2;
              ++v413;
              if (v553 == v408)
              {
                goto LABEL_302;
              }
            }

LABEL_358:
            __break(1u);
            goto LABEL_359;
          }

          v396 = 0;
          v397 = v270 + 4;
          *&v553 = v270[2];
          v551 = v395 - 1;
          v398 = MEMORY[0x277D84F90];
          v552 = v270 + 4;
LABEL_274:
          *&v554 = v398;
          v399 = &v397[8 * v396];
          v400 = v396;
          while (v400 < v270[2].isa)
          {
            v401 = *&v399[2].isa;
            v402 = *&v399[4].isa;
            v403 = *&v399[6].isa;
            v558 = *&v399->isa;
            *v559 = v401;
            *&v559[16] = v402;
            *&v559[32] = v403;
            v404 = v403;
            v396 = v400 + 1;
            sub_223634890(&v558, v557, &qword_27D08F7F8, &qword_2237325E8);

            if (*(&v404 + 1))
            {
              v398 = v554;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v398 = sub_223637D3C(0, *(v398 + 2) + 1, 1, v398);
              }

              v406 = *(v398 + 2);
              v405 = *(v398 + 3);
              if (v406 >= v405 >> 1)
              {
                v398 = sub_223637D3C((v405 > 1), v406 + 1, 1, v398);
              }

              *(v398 + 2) = v406 + 1;
              *&v398[16 * v406 + 32] = v404;
              v397 = v552;
              if (v551 != v400)
              {
                goto LABEL_274;
              }

              goto LABEL_286;
            }

            v399 += 8;
            ++v400;
            if (v553 == v396)
            {
              v398 = v554;
              goto LABEL_286;
            }
          }

          goto LABEL_356;
        }

        v362 = v270[2].isa;
        if (!v362)
        {
          v365 = MEMORY[0x277D84F90];
LABEL_251:
          v374 = *(v365 + 2);
          *&v554 = v365;
          if (v374)
          {
            v375 = 0;
            v552 = v374;
            *&v553 = v543 + 8;
            v376 = v365 + 40;
            v533 = &v374[-1].isa + 7;
            v550 = v365 + 40;
            v551 = MEMORY[0x277D84F90];
LABEL_253:
            v377 = &v376[16 * v375];
            v378 = v375;
            while (v378 < *(v554 + 16))
            {
              v379 = *(v377 - 1);
              v380 = *v377;
              v375 = (&v378->isa + 1);
              *&v558 = v379;
              *(&v558 + 1) = v380;

              v381 = v555;
              sub_223727188();
              sub_223637E48();
              v382 = sub_22372B3B8();
              v384 = v383;
              (*v553)(v381, v556);

              v385 = HIBYTE(v384) & 0xF;
              if ((v384 & 0x2000000000000000) == 0)
              {
                v385 = v382 & 0xFFFFFFFFFFFFLL;
              }

              if (v385)
              {
                v386 = v551;
                v387 = swift_isUniquelyReferenced_nonNull_native();
                v557[0] = v386;
                if ((v387 & 1) == 0)
                {
                  sub_2236387B4(0, *(v386 + 2) + 1, 1);
                  v386 = v557[0];
                }

                v389 = *(v386 + 2);
                v388 = *(v386 + 3);
                if (v389 >= v388 >> 1)
                {
                  sub_2236387B4((v388 > 1), v389 + 1, 1);
                  v386 = v557[0];
                }

                *(v386 + 2) = v389 + 1;
                v551 = v386;
                v390 = &v386[16 * v389];
                *(v390 + 4) = v379;
                *(v390 + 5) = v380;
                v376 = v550;
                if (v533 != v378)
                {
                  goto LABEL_253;
                }

                goto LABEL_267;
              }

              v377 += 16;
              v378 = (v378 + 1);
              if (v552 == v375)
              {
                goto LABEL_267;
              }
            }

            goto LABEL_357;
          }

          v551 = MEMORY[0x277D84F90];
LABEL_267:

          *&v558 = v551;
          v360 = sub_22372AFA8();
          v361 = v391;

          v261 = v546;
          v262 = v549;
          goto LABEL_268;
        }

        v363 = 0;
        v364 = v270 + 4;
        *&v553 = v270[2];
        v551 = v362 - 1;
        v365 = MEMORY[0x277D84F90];
        v552 = v270 + 4;
LABEL_239:
        *&v554 = v365;
        v366 = &v364[8 * v363];
        v367 = v363;
        while (v367 < v270[2].isa)
        {
          v368 = *&v366[2].isa;
          v370 = *&v366[4].isa;
          v369 = *&v366[6].isa;
          v558 = *&v366->isa;
          *v559 = v368;
          *&v559[16] = v370;
          *&v559[32] = v369;
          v371 = v370;
          v363 = v367 + 1;
          sub_223634890(&v558, v557, &qword_27D08F7F8, &qword_2237325E8);

          if (*(&v371 + 1))
          {
            v365 = v554;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v365 = sub_223637D3C(0, *(v365 + 2) + 1, 1, v365);
            }

            v364 = v552;
            v373 = *(v365 + 2);
            v372 = *(v365 + 3);
            if (v373 >= v372 >> 1)
            {
              v365 = sub_223637D3C((v372 > 1), v373 + 1, 1, v365);
            }

            *(v365 + 2) = v373 + 1;
            *&v365[16 * v373 + 32] = v371;
            if (v551 != v367)
            {
              goto LABEL_239;
            }

            goto LABEL_251;
          }

          v366 += 8;
          ++v367;
          if (v553 == v363)
          {
            v365 = v554;
            goto LABEL_251;
          }
        }

        goto LABEL_354;
      }

      v328 = v270[2].isa;
      if (!v328)
      {
        v331 = MEMORY[0x277D84F90];
LABEL_216:
        v340 = *(v331 + 2);
        *&v554 = v331;
        if (v340)
        {
          v341 = 0;
          v552 = v340;
          *&v553 = v543 + 8;
          v342 = v331 + 40;
          v533 = &v340[-1].isa + 7;
          v550 = v331 + 40;
          v551 = MEMORY[0x277D84F90];
LABEL_218:
          v343 = &v342[16 * v341];
          v344 = v341;
          while (v344 < *(v554 + 16))
          {
            v345 = *(v343 - 1);
            v346 = *v343;
            v341 = (&v344->isa + 1);
            *&v558 = v345;
            *(&v558 + 1) = v346;

            v347 = v555;
            sub_223727188();
            sub_223637E48();
            v348 = sub_22372B3B8();
            v350 = v349;
            (*v553)(v347, v556);

            v351 = HIBYTE(v350) & 0xF;
            if ((v350 & 0x2000000000000000) == 0)
            {
              v351 = v348 & 0xFFFFFFFFFFFFLL;
            }

            if (v351)
            {
              v352 = v551;
              v353 = swift_isUniquelyReferenced_nonNull_native();
              v557[0] = v352;
              if ((v353 & 1) == 0)
              {
                sub_2236387B4(0, *(v352 + 2) + 1, 1);
                v352 = v557[0];
              }

              v355 = *(v352 + 2);
              v354 = *(v352 + 3);
              if (v355 >= v354 >> 1)
              {
                sub_2236387B4((v354 > 1), v355 + 1, 1);
                v352 = v557[0];
              }

              *(v352 + 2) = v355 + 1;
              v551 = v352;
              v356 = &v352[16 * v355];
              *(v356 + 4) = v345;
              *(v356 + 5) = v346;
              v342 = v550;
              if (v533 != v344)
              {
                goto LABEL_218;
              }

              goto LABEL_232;
            }

            v343 += 16;
            v344 = (v344 + 1);
            if (v552 == v341)
            {
              goto LABEL_232;
            }
          }

          goto LABEL_355;
        }

        v551 = MEMORY[0x277D84F90];
LABEL_232:

        *&v558 = v551;
        v357 = sub_22372AFA8();
        v359 = v358;

        v564 = v357;
        v565 = v359;
        v261 = v546;
        v262 = v549;
        goto LABEL_233;
      }

      v329 = 0;
      v330 = v270 + 4;
      *&v553 = v270[2];
      v551 = v328 - 1;
      v331 = MEMORY[0x277D84F90];
      v552 = v270 + 4;
LABEL_204:
      *&v554 = v331;
      v332 = &v330[8 * v329];
      v333 = v329;
      while (v333 < v270[2].isa)
      {
        v335 = *&v332[4].isa;
        v334 = *&v332[6].isa;
        v336 = *&v332[2].isa;
        v558 = *&v332->isa;
        *v559 = v336;
        *&v559[16] = v335;
        *&v559[32] = v334;
        v329 = v333 + 1;
        v337 = v336;
        sub_223634890(&v558, v557, &qword_27D08F7F8, &qword_2237325E8);

        if (*(&v337 + 1))
        {
          v331 = v554;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v331 = sub_223637D3C(0, *(v331 + 2) + 1, 1, v331);
          }

          v339 = *(v331 + 2);
          v338 = *(v331 + 3);
          if (v339 >= v338 >> 1)
          {
            v331 = sub_223637D3C((v338 > 1), v339 + 1, 1, v331);
          }

          *(v331 + 2) = v339 + 1;
          *&v331[16 * v339 + 32] = v337;
          v330 = v552;
          if (v551 != v333)
          {
            goto LABEL_204;
          }

          goto LABEL_216;
        }

        v332 += 8;
        ++v333;
        if (v553 == v329)
        {
          v331 = v554;
          goto LABEL_216;
        }
      }

      goto LABEL_352;
    }

    v295 = v270[2].isa;
    if (!v295)
    {
      v298 = MEMORY[0x277D84F90];
LABEL_181:
      v309 = *(v298 + 2);
      *&v554 = v298;
      if (v309)
      {
        v310 = 0;
        v552 = v309;
        *&v553 = v543 + 8;
        v311 = v298 + 40;
        v533 = &v309[-1].isa + 7;
        v550 = v298 + 40;
        v551 = MEMORY[0x277D84F90];
LABEL_183:
        v312 = &v311[16 * v310];
        v313 = v310;
        while (v313 < *(v554 + 16))
        {
          v314 = *(v312 - 1);
          v315 = *v312;
          v310 = (&v313->isa + 1);
          *&v558 = v314;
          *(&v558 + 1) = v315;

          v316 = v555;
          sub_223727188();
          sub_223637E48();
          v317 = sub_22372B3B8();
          v319 = v318;
          (*v553)(v316, v556);

          v320 = HIBYTE(v319) & 0xF;
          if ((v319 & 0x2000000000000000) == 0)
          {
            v320 = v317 & 0xFFFFFFFFFFFFLL;
          }

          if (v320)
          {
            v321 = v551;
            v322 = swift_isUniquelyReferenced_nonNull_native();
            v557[0] = v321;
            if ((v322 & 1) == 0)
            {
              sub_2236387B4(0, *(v321 + 2) + 1, 1);
              v321 = v557[0];
            }

            v324 = *(v321 + 2);
            v323 = *(v321 + 3);
            if (v324 >= v323 >> 1)
            {
              sub_2236387B4((v323 > 1), v324 + 1, 1);
              v321 = v557[0];
            }

            *(v321 + 2) = v324 + 1;
            v551 = v321;
            v325 = &v321[16 * v324];
            *(v325 + 4) = v314;
            *(v325 + 5) = v315;
            v311 = v550;
            if (v533 != v313)
            {
              goto LABEL_183;
            }

            goto LABEL_197;
          }

          v312 += 16;
          v313 = (v313 + 1);
          if (v552 == v310)
          {
            goto LABEL_197;
          }
        }

        goto LABEL_353;
      }

      v551 = MEMORY[0x277D84F90];
LABEL_197:

      *&v558 = v551;
      v293 = sub_22372AFA8();
      v294 = v326;

      v261 = v546;
      v262 = v549;
      goto LABEL_198;
    }

    v296 = 0;
    v297 = v270 + 4;
    *&v553 = v270[2];
    v551 = v295 - 1;
    v298 = MEMORY[0x277D84F90];
    v552 = v270 + 4;
LABEL_168:
    *&v554 = v298;
    v299 = &v297[8 * v296];
    v300 = v296;
    while (v300 < v270[2].isa)
    {
      v302 = *&v299[4].isa;
      v301 = *&v299[6].isa;
      v303 = *&v299[2].isa;
      v558 = *&v299->isa;
      *v559 = v303;
      *&v559[16] = v302;
      *&v559[32] = v301;
      v304 = v558;
      v296 = v300 + 1;
      sub_223634890(&v558, v557, &qword_27D08F7F8, &qword_2237325E8);

      if (*(&v304 + 1))
      {
        v298 = v554;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v298 = sub_223637D3C(0, *(v298 + 2) + 1, 1, v298);
        }

        v297 = v552;
        v306 = *(v298 + 2);
        v305 = *(v298 + 3);
        if (v306 >= v305 >> 1)
        {
          v298 = sub_223637D3C((v305 > 1), v306 + 1, 1, v298);
        }

        *(v298 + 2) = v306 + 1;
        *&v298[16 * v306 + 32] = v304;
        if (v551 != v300)
        {
          goto LABEL_168;
        }

        goto LABEL_181;
      }

      v299 += 8;
      ++v300;
      if (v553 == v296)
      {
        v298 = v554;
        goto LABEL_181;
      }
    }

LABEL_351:
    __break(1u);
LABEL_352:
    __break(1u);
LABEL_353:
    __break(1u);
LABEL_354:
    __break(1u);
LABEL_355:
    __break(1u);
LABEL_356:
    __break(1u);
LABEL_357:
    __break(1u);
    goto LABEL_358;
  }

  v557[0] = MEMORY[0x277D84F90];
  v271 = v268;

  sub_223634A90(0, v269 & ~(v269 >> 63), 0);
  if ((v269 & 0x8000000000000000) == 0)
  {
    v272 = 0;
    v273 = v271;
    v550 = (v271 & 0xC000000000000001);
    v551 = v269;
    v270 = v557[0];
    v552 = v273;
    while (1)
    {
      v274 = v550 ? MEMORY[0x223DE7ED0](v272) : v273[v272 + 4].isa;
      v275 = v274;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v276 = v275;
        sub_22370E3E0(&v558);
        goto LABEL_150;
      }

      objc_opt_self();
      v279 = swift_dynamicCastObjCClass();
      if (!v279)
      {

        v277 = 0;
        v278 = 0;
LABEL_163:
        v280 = 0;
        v553 = 0u;
        v554 = 0u;
        goto LABEL_151;
      }

      v285 = v275;
      v286 = [v279 message];
      if (v286)
      {
        v287 = v286;
        v277 = sub_22372AFE8();
        v278 = v288;
      }

      else
      {
        v277 = 0;
        v278 = 0;
      }

      v289 = [v279 message];
      if (!v289)
      {

        v279 = 0;
        goto LABEL_163;
      }

      v290 = v289;
      v279 = sub_22372AFE8();
      v292 = v291;

      v280 = 0;
      v553 = 0u;
      v554 = v292;
LABEL_151:
      v557[0] = v270;
      v282 = v270[2].isa;
      v281 = v270[3].isa;
      if (v282 >= v281 >> 1)
      {
        sub_223634A90((v281 > 1), v282 + 1, 1);
        v270 = v557[0];
      }

      ++v272;
      v270[2].isa = (v282 + 1);
      v283 = &v270[8 * v282];
      v283[4].isa = v277;
      v283[5].isa = v278;
      v283[6].isa = v279;
      v284 = v553;
      *&v283[7].isa = v554;
      *&v283[9].isa = v284;
      v283[11].isa = v280;
      v273 = v552;
      v261 = v546;
      v262 = v549;
      if (v551 == v272)
      {

        goto LABEL_164;
      }
    }

    v276 = v275;
    sub_223634AB0(&v558);
LABEL_150:
    v278 = *(&v558 + 1);
    v277 = v558;
    v279 = *v559;
    v553 = *&v559[24];
    v554 = *&v559[8];
    v280 = *&v559[40];

    goto LABEL_151;
  }

  __break(1u);
LABEL_362:
  swift_once();
LABEL_338:
  v487 = sub_22372AC98();
  __swift_project_value_buffer(v487, qword_28132B680);
  v488 = v535;
  v489 = *(v536 + 16);
  v490 = v519;
  v489(v519, v534, v535);
  v491 = v549;

  v492 = sub_22372AC88();
  v493 = sub_22372B268();

  LODWORD(v551) = v493;
  v552 = v492;
  v494 = os_log_type_enabled(v492, v493);
  v556 = v489;
  if (v494)
  {
    v495 = v490;
    v496 = swift_slowAlloc();
    v550 = swift_slowAlloc();
    *&v558 = v550;
    *v496 = 136315394;
    *(v496 + 4) = sub_223623274(*(v491 + 16), *(v491 + 24), &v558);
    *(v496 + 12) = 2080;
    v489(v518, v495, v488);
    v497 = sub_22372B038();
    v499 = v498;
    v478 = *(v536 + 8);
    v478(v495, v488);
    v500 = sub_223623274(v497, v499, &v558);

    *(v496 + 14) = v500;
    v501 = v552;
    _os_log_impl(&dword_223620000, v552, v551, "Adding new request summary for requestId %s: %s", v496, 0x16u);
    v502 = v550;
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v502, -1, -1);
    MEMORY[0x223DE8A80](v496, -1, -1);
  }

  else
  {

    v478 = *(v536 + 8);
    v478(v490, v488);
  }

  v486 = v488;
  v481 = v539;
LABEL_342:
  v556(v528, v534, v486);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v481 = sub_22363878C(0, *(v481 + 16) + 1, 1, v481);
  }

  v503 = v545;
  v505 = *(v481 + 16);
  v504 = *(v481 + 24);
  if (v505 >= v504 >> 1)
  {
    v481 = sub_22363878C(v504 > 1, v505 + 1, 1, v481);
  }

  *(v481 + 16) = v505 + 1;
  v506 = v535;
  (v553)(v481 + ((*(v536 + 80) + 32) & ~*(v536 + 80)) + *(v536 + 72) * v505, v528, v535);
  v507 = v531[6];
  __swift_project_boxed_opaque_existential_1(v531 + 2, v531[5]);
  *&v559[8] = &type metadata for RequestSummaryContainerImpl;
  *&v558 = v481;
  v508 = v524;
  v509 = v515;
  v521(v524, v522, v515);
  sub_22372A488();

  v514(v508, v509);
  v478(v534, v506);
  sub_223626478(v503, &qword_27D08F7F0, &qword_2237325E0);
  sub_223626478(&v558, &unk_27D08F750, &qword_22372C960);
  sub_223626478(v541, &qword_27D08F798, &qword_223731E90);

  return (*(v546 + 8))(v542, v544);
}

uint64_t sub_2236346D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestInfo.UserInput(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223634748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F738, &unk_2237324D0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 28);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F730, &unk_223731DB0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_223634890(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2236348F8()
{
  result = qword_281328DC8;
  if (!qword_281328DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D08EB98, &qword_22372DE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281328DC8);
  }

  return result;
}

void *sub_22363495C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F800, &qword_2237325F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7F8, &qword_2237325E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_223634A90(void *a1, int64_t a2, char a3)
{
  result = sub_22363495C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_223634AB0@<X0>(uint64_t *a1@<X8>)
{
  v183 = a1;
  v193 = sub_223727198();
  v186 = *(v193 - 8);
  v2 = *(v186 + 8);
  MEMORY[0x28223BE20](v193, v3);
  v5 = &v176 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 views];
  if (result)
  {
    v7 = result;
    sub_223630584(0, &qword_281328D00, 0x277D47140);
    v8 = sub_22372B128();

    if (v8 >> 62)
    {
      result = sub_22372B558();
      if (result)
      {
LABEL_4:
        if (result >= 1)
        {
          v9 = 0;
          v189 = v8 & 0xC000000000000001;
          v10 = MEMORY[0x277D84F90];
          v11 = MEMORY[0x277D84F90];
          v191 = MEMORY[0x277D84F90];
          v192 = MEMORY[0x277D84F90];
          v188 = v8;
          v190 = result;
          while (1)
          {
            if (v189)
            {
              v12 = MEMORY[0x223DE7ED0](v9, v8);
            }

            else
            {
              v12 = *(v8 + 8 * v9 + 32);
            }

            v13 = v12;
            objc_opt_self();
            v14 = swift_dynamicCastObjCClass();
            if (v14)
            {
              v15 = v14;
              v16 = v13;
            }

            else
            {
              objc_opt_self();
              v27 = swift_dynamicCastObjCClass();
              if (!v27 || (v15 = [v27 utteranceView]) == 0)
              {
                objc_opt_self();
                v28 = swift_dynamicCastObjCClass();
                if (v28 && (v29 = v28, v30 = v13, v31 = [v29 dialog], v30, v31))
                {
                  v32 = [v31 content];
                  if (!v32)
                  {

                    goto LABEL_9;
                  }

                  v33 = v32;
                  sub_22370E8FC(&v194);
                  v34 = v195;
                  v182 = v194;
                  v35 = v197;
                  v184 = v196;
                  v185 = v198;

                  if (v34)
                  {
                    v187 = v11;
                    v36 = v10;
                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
                      v37 = v191;
                    }

                    else
                    {
                      v37 = sub_223637D3C(0, *(v191 + 2) + 1, 1, v191);
                    }

                    v39 = *(v37 + 2);
                    v38 = *(v37 + 3);
                    if (v39 >= v38 >> 1)
                    {
                      v37 = sub_223637D3C((v38 > 1), v39 + 1, 1, v37);
                    }

                    *(v37 + 2) = v39 + 1;
                    v191 = v37;
                    v40 = &v37[16 * v39];
                    *(v40 + 4) = v182;
                    *(v40 + 5) = v34;
                    v10 = v36;
                    v11 = v187;
                  }

                  if (v35)
                  {
                    v41 = v35;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v8 = v188;
                    if (isUniquelyReferenced_nonNull_native)
                    {
                      v43 = v192;
                    }

                    else
                    {
                      v43 = sub_223637D3C(0, *(v192 + 2) + 1, 1, v192);
                    }

                    v45 = *(v43 + 2);
                    v44 = *(v43 + 3);
                    v192 = v43;
                    if (v45 >= v44 >> 1)
                    {
                      v192 = sub_223637D3C((v44 > 1), v45 + 1, 1, v192);
                    }

                    v46 = v192;
                    *(v192 + 2) = v45 + 1;
                    v47 = &v46[16 * v45];
                    *(v47 + 4) = v184;
                    *(v47 + 5) = v41;
                    goto LABEL_9;
                  }
                }

                else
                {
                  v76 = [v13 dialog];
                  if (!v76)
                  {

                    goto LABEL_9;
                  }

                  v77 = v76;
                  v78 = [v76 content];
                  if (!v78)
                  {

                    goto LABEL_9;
                  }

                  v187 = v11;
                  v185 = v10;
                  v79 = v78;
                  sub_22370E8FC(&v194);
                  v81 = v194;
                  v80 = v195;
                  v83 = v196;
                  v82 = v197;
                  v182 = v198;

                  v184 = v82;
                  if (v80)
                  {
                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
                      v84 = v191;
                    }

                    else
                    {
                      v84 = sub_223637D3C(0, *(v191 + 2) + 1, 1, v191);
                    }

                    v86 = *(v84 + 2);
                    v85 = *(v84 + 3);
                    if (v86 >= v85 >> 1)
                    {
                      v84 = sub_223637D3C((v85 > 1), v86 + 1, 1, v84);
                    }

                    *(v84 + 2) = v86 + 1;
                    v191 = v84;
                    v87 = &v84[16 * v86];
                    *(v87 + 4) = v81;
                    *(v87 + 5) = v80;
                    v82 = v184;
                  }

                  v10 = v185;
                  if (v82)
                  {
                    v88 = swift_isUniquelyReferenced_nonNull_native();
                    v11 = v187;
                    v8 = v188;
                    if (v88)
                    {
                      v89 = v192;
                    }

                    else
                    {
                      v89 = sub_223637D3C(0, *(v192 + 2) + 1, 1, v192);
                    }

                    v91 = *(v89 + 2);
                    v90 = *(v89 + 3);
                    v192 = v89;
                    if (v91 >= v90 >> 1)
                    {
                      v192 = sub_223637D3C((v90 > 1), v91 + 1, 1, v192);
                    }

                    v92 = v192;
                    *(v192 + 2) = v91 + 1;
                    v93 = &v92[16 * v91];
                    v94 = v184;
                    *(v93 + 4) = v83;
                    *(v93 + 5) = v94;
                    goto LABEL_9;
                  }

                  v11 = v187;
                }

                goto LABEL_8;
              }
            }

            v17 = [v15 text];
            if (v17)
            {
              v18 = v17;
              v19 = sub_22372AFE8();
              v21 = v20;

              v22 = HIBYTE(v21) & 0xF;
              if ((v21 & 0x2000000000000000) == 0)
              {
                v22 = v19 & 0xFFFFFFFFFFFFLL;
              }

              if (v22)
              {
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  v23 = v191;
                }

                else
                {
                  v23 = sub_223637D3C(0, *(v191 + 2) + 1, 1, v191);
                }

                v25 = *(v23 + 2);
                v24 = *(v23 + 3);
                if (v25 >= v24 >> 1)
                {
                  v23 = sub_223637D3C((v24 > 1), v25 + 1, 1, v23);
                }

                *(v23 + 2) = v25 + 1;
                v191 = v23;
                v26 = &v23[16 * v25];
                *(v26 + 4) = v19;
                *(v26 + 5) = v21;
              }

              else
              {
              }
            }

            v48 = v15;
            v49 = [v48 speakableText];
            if (v49)
            {
              v50 = v49;
              v51 = sub_22372AFE8();
              v53 = v52;

              v54 = HIBYTE(v53) & 0xF;
              if ((v53 & 0x2000000000000000) == 0)
              {
                v54 = v51 & 0xFFFFFFFFFFFFLL;
              }

              if (v54)
              {
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  v55 = v192;
                }

                else
                {
                  v55 = sub_223637D3C(0, *(v192 + 2) + 1, 1, v192);
                }

                v57 = *(v55 + 2);
                v56 = *(v55 + 3);
                if (v57 >= v56 >> 1)
                {
                  v55 = sub_223637D3C((v56 > 1), v57 + 1, 1, v55);
                }

                *(v55 + 2) = v57 + 1;
                v192 = v55;
                v58 = &v55[16 * v57];
                *(v58 + 4) = v51;
                *(v58 + 5) = v53;
              }

              else
              {
              }
            }

            v59 = [v48 redactedText];
            if (v59)
            {
              v60 = v59;
              v61 = sub_22372AFE8();
              v63 = v62;

              v64 = HIBYTE(v63) & 0xF;
              if ((v63 & 0x2000000000000000) == 0)
              {
                v64 = v61 & 0xFFFFFFFFFFFFLL;
              }

              if (v64)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v11 = sub_223637D3C(0, *(v11 + 2) + 1, 1, v11);
                }

                v66 = *(v11 + 2);
                v65 = *(v11 + 3);
                if (v66 >= v65 >> 1)
                {
                  v11 = sub_223637D3C((v65 > 1), v66 + 1, 1, v11);
                }

                *(v11 + 2) = v66 + 1;
                v67 = &v11[16 * v66];
                *(v67 + 4) = v61;
                *(v67 + 5) = v63;
              }

              else
              {
              }
            }

            v68 = [v48 redactedSpeakableText];

            if (v68)
            {
              v69 = sub_22372AFE8();
              v71 = v70;

              v72 = HIBYTE(v71) & 0xF;
              if ((v71 & 0x2000000000000000) == 0)
              {
                v72 = v69 & 0xFFFFFFFFFFFFLL;
              }

              if (v72)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v10 = sub_223637D3C(0, *(v10 + 2) + 1, 1, v10);
                }

                v74 = *(v10 + 2);
                v73 = *(v10 + 3);
                if (v74 >= v73 >> 1)
                {
                  v10 = sub_223637D3C((v73 > 1), v74 + 1, 1, v10);
                }

                *(v10 + 2) = v74 + 1;
                v75 = &v10[16 * v74];
                *(v75 + 4) = v69;
                *(v75 + 5) = v71;
                goto LABEL_8;
              }
            }

LABEL_8:
            v8 = v188;
LABEL_9:
            if (v190 == ++v9)
            {
              goto LABEL_99;
            }
          }
        }

        goto LABEL_169;
      }
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_4;
      }
    }

    v10 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D84F90];
    v191 = MEMORY[0x277D84F90];
    v192 = MEMORY[0x277D84F90];
LABEL_99:

    v95 = v191;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D84F90];
    v192 = MEMORY[0x277D84F90];
    v95 = MEMORY[0x277D84F90];
  }

  v187 = v11;
  v185 = v10;
  v96 = *(v95 + 2);
  v190 = v96;
  v191 = v95;
  if (v96)
  {
    v97 = 0;
    v98 = (v186 + 8);
    v99 = v95 + 40;
    v184 = v96 - 1;
    v100 = MEMORY[0x277D84F90];
    v188 = (v95 + 40);
    do
    {
      v189 = v100;
      v101 = &v99[16 * v97];
      v102 = v97;
      while (1)
      {
        if (v102 >= *(v95 + 2))
        {
          __break(1u);
          goto LABEL_166;
        }

        v103 = *(v101 - 1);
        v104 = *v101;
        v97 = v102 + 1;
        v194 = v103;
        v195 = v104;

        sub_223727188();
        sub_223637E48();
        v105 = sub_22372B3B8();
        v107 = v106;
        (*v98)(v5, v193);

        v108 = HIBYTE(v107) & 0xF;
        if ((v107 & 0x2000000000000000) == 0)
        {
          v108 = v105 & 0xFFFFFFFFFFFFLL;
        }

        if (v108)
        {
          break;
        }

        v101 += 16;
        ++v102;
        v95 = v191;
        if (v190 == v97)
        {
          v100 = v189;
          goto LABEL_116;
        }
      }

      v100 = v189;
      result = swift_isUniquelyReferenced_nonNull_native();
      v199 = v100;
      if ((result & 1) == 0)
      {
        result = sub_2236387B4(0, *(v100 + 16) + 1, 1);
        v100 = v199;
      }

      v110 = *(v100 + 16);
      v109 = *(v100 + 24);
      if (v110 >= v109 >> 1)
      {
        result = sub_2236387B4((v109 > 1), v110 + 1, 1);
        v100 = v199;
      }

      *(v100 + 16) = v110 + 1;
      v111 = v100 + 16 * v110;
      *(v111 + 32) = v103;
      *(v111 + 40) = v104;
      v95 = v191;
      v99 = v188;
    }

    while (v184 != v102);
  }

  else
  {
    v100 = MEMORY[0x277D84F90];
  }

LABEL_116:
  v194 = v100;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB98, &qword_22372DE50);
  v188 = sub_2236348F8();
  v189 = v112;
  v182 = sub_22372AFA8();
  v181 = v113;

  v114 = v192;
  v115 = *(v192 + 2);
  if (v115)
  {
    v116 = 0;
    v117 = (v186 + 8);
    v118 = v192 + 40;
    v179 = (v115 - 1);
    v119 = MEMORY[0x277D84F90];
    v180 = v192 + 40;
LABEL_118:
    v184 = v119;
    v120 = &v118[16 * v116];
    v121 = v116;
    while (v121 < *(v114 + 2))
    {
      v123 = *(v120 - 1);
      v122 = *v120;
      v116 = v121 + 1;
      v194 = v123;
      v195 = v122;

      sub_223727188();
      sub_223637E48();
      v124 = sub_22372B3B8();
      v126 = v125;
      (*v117)(v5, v193);

      v127 = HIBYTE(v126) & 0xF;
      if ((v126 & 0x2000000000000000) == 0)
      {
        v127 = v124 & 0xFFFFFFFFFFFFLL;
      }

      if (v127)
      {
        v128 = v184;
        result = swift_isUniquelyReferenced_nonNull_native();
        v119 = v128;
        v199 = v128;
        if ((result & 1) == 0)
        {
          result = sub_2236387B4(0, *(v128 + 16) + 1, 1);
          v119 = v199;
        }

        v130 = *(v119 + 16);
        v129 = *(v119 + 24);
        if (v130 >= v129 >> 1)
        {
          result = sub_2236387B4((v129 > 1), v130 + 1, 1);
          v119 = v199;
        }

        *(v119 + 16) = v130 + 1;
        v131 = v119 + 16 * v130;
        *(v131 + 32) = v123;
        *(v131 + 40) = v122;
        v114 = v192;
        v118 = v180;
        if (v179 != v121)
        {
          goto LABEL_118;
        }

        goto LABEL_132;
      }

      v120 += 16;
      ++v121;
      v114 = v192;
      if (v115 == v116)
      {
        v119 = v184;
        goto LABEL_132;
      }
    }

LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  v119 = MEMORY[0x277D84F90];
LABEL_132:
  v180 = v115;
  v194 = v119;
  v179 = sub_22372AFA8();
  v178 = v132;

  if (v190)
  {
    v133 = 0;
    v134 = (v186 + 8);
    v135 = v191;
    v136 = v191 + 40;
    v137 = v190;
    v176 = (v190 - 1);
    v138 = MEMORY[0x277D84F90];
    v177 = v191 + 40;
LABEL_134:
    v184 = v138;
    v139 = &v136[16 * v133];
    v140 = v133;
    while (v140 < *(v135 + 2))
    {
      v142 = *(v139 - 1);
      v141 = *v139;
      v133 = v140 + 1;
      v194 = v142;
      v195 = v141;

      sub_223727188();
      sub_223637E48();
      v143 = sub_22372B3B8();
      v145 = v144;
      (*v134)(v5, v193);

      v146 = HIBYTE(v145) & 0xF;
      if ((v145 & 0x2000000000000000) == 0)
      {
        v146 = v143 & 0xFFFFFFFFFFFFLL;
      }

      if (v146)
      {
        v147 = v184;
        result = swift_isUniquelyReferenced_nonNull_native();
        v138 = v147;
        v199 = v147;
        if ((result & 1) == 0)
        {
          result = sub_2236387B4(0, *(v147 + 16) + 1, 1);
          v138 = v199;
        }

        v149 = *(v138 + 16);
        v148 = *(v138 + 24);
        if (v149 >= v148 >> 1)
        {
          result = sub_2236387B4((v148 > 1), v149 + 1, 1);
          v138 = v199;
        }

        *(v138 + 16) = v149 + 1;
        v150 = v138 + 16 * v149;
        *(v150 + 32) = v142;
        *(v150 + 40) = v141;
        v135 = v191;
        v136 = v177;
        if (v176 != v140)
        {
          goto LABEL_134;
        }

        goto LABEL_148;
      }

      v139 += 16;
      ++v140;
      v135 = v191;
      if (v137 == v133)
      {
        v138 = v184;
        goto LABEL_148;
      }
    }

LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    return result;
  }

  v138 = MEMORY[0x277D84F90];
LABEL_148:
  v194 = v138;
  v184 = sub_22372AFA8();
  v177 = v151;

  v152 = v180;
  if (v180)
  {
    v153 = 0;
    v154 = (v186 + 8);
    v155 = v192 + 40;
    v176 = v180 - 1;
    v190 = MEMORY[0x277D84F90];
    v186 = v192 + 40;
LABEL_150:
    v156 = &v155[16 * v153];
    v157 = v153;
    while (v157 < *(v192 + 2))
    {
      v158 = *(v156 - 1);
      v159 = *v156;
      v153 = v157 + 1;
      v194 = v158;
      v195 = v159;

      sub_223727188();
      sub_223637E48();
      v160 = sub_22372B3B8();
      v162 = v161;
      (*v154)(v5, v193);

      v163 = HIBYTE(v162) & 0xF;
      if ((v162 & 0x2000000000000000) == 0)
      {
        v163 = v160 & 0xFFFFFFFFFFFFLL;
      }

      if (v163)
      {
        v164 = v190;
        result = swift_isUniquelyReferenced_nonNull_native();
        v165 = v164;
        v199 = v164;
        if ((result & 1) == 0)
        {
          result = sub_2236387B4(0, *(v164 + 16) + 1, 1);
          v165 = v199;
        }

        v167 = *(v165 + 16);
        v166 = *(v165 + 24);
        if (v167 >= v166 >> 1)
        {
          result = sub_2236387B4((v166 > 1), v167 + 1, 1);
          v165 = v199;
        }

        *(v165 + 16) = v167 + 1;
        v190 = v165;
        v168 = v165 + 16 * v167;
        *(v168 + 32) = v158;
        *(v168 + 40) = v159;
        v155 = v186;
        if (v176 != v157)
        {
          goto LABEL_150;
        }

        goto LABEL_164;
      }

      v156 += 16;
      ++v157;
      if (v152 == v153)
      {
        goto LABEL_164;
      }
    }

    goto LABEL_168;
  }

  v190 = MEMORY[0x277D84F90];
LABEL_164:

  v194 = v190;
  v169 = sub_22372AFA8();
  v171 = v170;

  v172 = v183;
  v173 = v181;
  *v183 = v182;
  v172[1] = v173;
  v174 = v178;
  v172[2] = v179;
  v172[3] = v174;
  v175 = v177;
  v172[4] = v184;
  v172[5] = v175;
  v172[6] = v169;
  v172[7] = v171;
  return result;
}

uint64_t sub_223635AD4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_223635B24()
{
  v15 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD00000000000001CLL, 0x8000000223737720, &v14);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = *(v0 + 24);
  v7 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v8;
  v13 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_22363AC74;
  v11 = *(v0 + 48);

  return v13(v11);
}

uint64_t sub_223635D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_223635B24, 0, 0);
}

void *sub_223635D6C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223732040;
}

uint64_t sub_223635DD8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_223635E14(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_223635EBC(a1, v5, v4);
}

uint64_t sub_223635EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, ObjectType, a3);
}

uint64_t sub_223635FF0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223636084(a1);
}

uint64_t sub_223636084(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_223729F08();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22362DA4C, v1, 0);
}

id sub_2236361D4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = *(v12 + 56) + 24 * v13;
    v17 = *(v16 + 16);
    v38 = *v16;
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    v19 = sub_22372AC88();
    v20 = sub_22372B268();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(0xD000000000000011, 0x8000000223737350, &v39);
      _os_log_impl(&dword_223620000, v19, v20, "Dispatching message %s to a RequestController async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    *(v23 + 32) = v38;
    *(v23 + 48) = a1;
    swift_unknownObjectRetain_n();
    v24 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);
    v27 = a1;
    v28 = sub_22372AC88();
    v29 = sub_22372B278();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      v32 = [v27 debugDescription];
      v33 = sub_22372AFE8();
      v35 = v34;

      v36 = sub_223623274(v33, v35, &v39);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_223620000, v28, v29, "Could not find a RequestProcessor for message: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x223DE8A80](v31, -1, -1);
      MEMORY[0x223DE8A80](v30, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v37 = v27;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    swift_willThrow();
    return v27;
  }
}

uint64_t sub_223636604()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236366C0(v2, v3, v4, v5, v6);
}

uint64_t sub_2236366C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236366E8, 0, 0);
}

uint64_t sub_2236366E8()
{
  v15 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000011, 0x8000000223737350, &v14);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = *(v0 + 24);
  v7 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v8;
  v13 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_223637BE0;
  v11 = *(v0 + 48);

  return v13(v11);
}

void *sub_223636908(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731E88;
}

uint64_t sub_223636978(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_223636A20(a1, v5, v4);
}

uint64_t sub_223636A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 152);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, ObjectType, a3);
}

uint64_t sub_223636B54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223636BE8(a1);
}

uint64_t sub_223636BE8(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_223636DBC, v1, 0);
}

uint64_t sub_223636C08(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9C0, &qword_223731E30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_aceCommands;
  swift_beginAccess();
  v12 = a1;
  MEMORY[0x223DE7B50]();
  if (*((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v17 = *((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22372B148();
  }

  sub_22372B158();
  swift_endAccess();
  v13 = sub_22372A098();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v10, a2, v13);
  (*(v14 + 56))(v10, 0, 1, v13);
  v15 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_systemResponseSource;
  swift_beginAccess();
  sub_223630DB8(v10, v3 + v15);
  return swift_endAccess();
}

uint64_t sub_223636DBC()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_223620000, v4, v5, "ChildRequestController received %@", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v11 = v0[7];
  v10 = v0[8];

  sub_223623934(*(v10 + 192) + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestStateInfoManager, (v0 + 2));
  v12 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v13 = sub_223729D38();
  v15 = v14;
  v16 = sub_223727ED8();
  v17 = *v12;
  v18 = *(*v12 + 24);
  v19 = swift_task_alloc();
  v19[2] = v13;
  v19[3] = v15;
  v19[4] = v16;
  v19[5] = v17;
  v20 = swift_task_alloc();
  *(v20 + 16) = sub_223645988;
  *(v20 + 24) = v19;
  os_unfair_lock_lock(v18 + 4);
  sub_223637034(v21);
  os_unfair_lock_unlock(v18 + 4);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v22 = v0[1];

  return v22();
}

void sub_22363704C(uint64_t a1, unint64_t a2, char *a3, uint64_t a4)
{
  v60 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F930, &qword_223733380);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v55 = &v54 - v10;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v11 = sub_22372AC98();
  __swift_project_value_buffer(v11, qword_28132B680);

  sub_2236377FC(a3);
  v12 = sub_22372AC88();
  v13 = sub_22372B268();

  sub_223637810(a3);
  v14 = os_log_type_enabled(v12, v13);
  v57 = a3;
  v56 = a2;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v59[0] = v16;
    *v15 = 136315650;
    *(v15 + 4) = sub_223623274(0xD000000000000033, 0x8000000223738550, v59);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_223623274(v60, a2, v59);
    *(v15 + 22) = 2080;
    v58[0] = a3;
    sub_2236377FC(a3);
    v17 = sub_22372B038();
    v19 = sub_223623274(v17, v18, v59);

    *(v15 + 24) = v19;
    _os_log_impl(&dword_223620000, v12, v13, "%s ProcessingState: requestId: %s, with state: %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v16, -1, -1);
    MEMORY[0x223DE8A80](v15, -1, -1);
  }

  v20 = sub_22372AC88();
  v21 = sub_22372B268();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v59[0] = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_223623274(0xD000000000000033, 0x8000000223738550, v59);
    *(v22 + 12) = 2080;
    swift_beginAccess();
    v24 = a4;
    v25 = *(a4 + 16);
    type metadata accessor for RequestState();

    v26 = sub_22372AF68();
    v28 = v27;

    v29 = sub_223623274(v26, v28, v59);

    *(v22 + 14) = v29;
    _os_log_impl(&dword_223620000, v20, v21, "%s Pre updateProcessingState processing: %s ", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v23, -1, -1);
    MEMORY[0x223DE8A80](v22, -1, -1);
  }

  else
  {
    v24 = a4;
  }

  v30 = v57;
  if ((v57 - 1) <= 1)
  {
    v31 = v24;
    v32 = sub_22371A788();
    v33 = sub_22371BA00(v58, v60, v56);
    v35 = v34;
    v36 = type metadata accessor for RequestState();
    if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
    {
      v37 = *v35;
      v38 = v57;
      *v35 = v57;
      sub_2236377FC(v38);
      sub_223637810(v37);
    }

    (v33)(v58, 0);
    (v32)(v59, 0);
LABEL_19:

    v41 = sub_22372AC88();
    v42 = sub_22372B268();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v58[0] = v44;
      *v43 = 136315394;
      *(v43 + 4) = sub_223623274(0xD000000000000033, 0x8000000223738550, v58);
      *(v43 + 12) = 2080;
      swift_beginAccess();
      v45 = *(v31 + 16);
      type metadata accessor for RequestState();

      v46 = sub_22372AF68();
      v48 = v47;

      v49 = sub_223623274(v46, v48, v58);

      *(v43 + 14) = v49;
      _os_log_impl(&dword_223620000, v41, v42, "%s Post updateProcessingState processing: %s ", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v44, -1, -1);
      MEMORY[0x223DE8A80](v43, -1, -1);
    }

    return;
  }

  if (v57)
  {
    v31 = v24;
    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      swift_beginAccess();
      v39 = v30;
      v40 = v55;
      sub_223718E98(v60, v56, v55);
      sub_223626478(v40, &qword_27D08F930, &qword_223733380);
      swift_endAccess();
      sub_223637810(v30);
    }

    goto LABEL_19;
  }

  v50 = sub_22372AC88();
  v51 = sub_22372B278();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v59[0] = v53;
    *v52 = 136315138;
    *(v52 + 4) = sub_223623274(0xD000000000000033, 0x8000000223738550, v59);
    _os_log_impl(&dword_223620000, v50, v51, "%s executionResult command is nil! ", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x223DE8A80](v53, -1, -1);
    MEMORY[0x223DE8A80](v52, -1, -1);
  }
}

id sub_2236377FC(id result)
{
  if (result - 1 >= 2)
  {
    return result;
  }

  return result;
}

void sub_223637810(id a1)
{
  if (a1 - 1 >= 2)
  {
  }
}

uint64_t get_enum_tag_for_layout_string_24RequestDispatcherBridges15ProcessingStateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t type metadata accessor for RequestState()
{
  result = qword_28132A390;
  if (!qword_28132A390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2236378A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_223637928(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_22372B408() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_22372B7A8();

      sub_22372B078();
      v15 = sub_22372B7C8();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_223637B30(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483644)
  {
    *result = (a2 + 2);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9C0, &qword_223731E30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_223637BE0()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_2236E2920;
  }

  else
  {
    v3 = sub_2236E28BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t objectdestroy_18Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

char *sub_223637D3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F808, &qword_2237325F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_223637E48()
{
  result = qword_281328E30;
  if (!qword_281328E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281328E30);
  }

  return result;
}

uint64_t sub_223637EA8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v11 = a2[1];
  }

  sub_22372A018();
  v13 = *a3;
  v12 = a3[1];
  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
  }

  sub_22372A028();
  v16 = *a4;
  v15 = a4[1];
  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
  }

  sub_223729FF8();
  v19 = *a5;
  v18 = a5[1];
  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
  }

  return sub_22372A008();
}

uint64_t sub_223637FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v38 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9C0, &qword_223731E30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F798, &qword_223731E90);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = &v38 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7F0, &qword_2237325E0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v27 = &v38 - v26;
  v28 = *(a2 + 16);
  v29 = *(a2 + 24);
  v30 = a5;

  sub_22372A118();
  v31 = sub_22372A138();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v27, a3, v31);
  (*(v32 + 56))(v27, 0, 1, v31);
  sub_22372A128();
  sub_223634890(v38, v22, &qword_27D08F798, &qword_223731E90);
  sub_22372A0D8();
  sub_22363831C(v17);
  v33 = sub_22372A098();
  (*(*(v33 - 8) + 56))(v17, 0, 1, v33);
  sub_22372A0F8();
  sub_22372A0E8();
  v34 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_nlRoutingDecision;
  swift_beginAccess();
  v35 = sub_2237287C8();
  v36 = *(v35 - 8);
  (*(v36 + 16))(v12, a2 + v34, v35);
  (*(v36 + 56))(v12, 0, 1, v35);
  return sub_22372A108();
}

uint64_t sub_22363831C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RequestInfo.RequestRoute(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9C0, &qword_223731E30);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v24 - v15;
  v17 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_systemResponseSource;
  swift_beginAccess();
  sub_223634890(v1 + v17, v16, &unk_27D08E9C0, &qword_223731E30);
  v18 = sub_22372A098();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v16, 1, v18) != 1)
  {
    return (*(v19 + 32))(a1, v16, v18);
  }

  v24 = a1;
  sub_223626478(v16, &unk_27D08E9C0, &qword_223731E30);
  v21 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_ongoingExecutionSource;
  swift_beginAccess();
  sub_223634890(v1 + v21, v13, &unk_27D08E9C0, &qword_223731E30);
  if (v20(v13, 1, v18) != 1)
  {
    return (*(v19 + 32))(v24, v13, v18);
  }

  sub_223626478(v13, &unk_27D08E9C0, &qword_223731E30);
  v22 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_route;
  swift_beginAccess();
  sub_2236F16E0(v1 + v22, v7, type metadata accessor for RequestInfo.RequestRoute);
  return sub_2236EFE0C(v7, v24);
}

size_t sub_2236385B0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2236387B4(char *a1, int64_t a2, char a3)
{
  result = sub_2236387D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2236387D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F808, &qword_2237325F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2236388F4(void *a1)
{
  v2 = v1;
  v117 = sub_22372A098();
  v115 = *(v117 - 8);
  v4 = *(v115 + 64);
  MEMORY[0x28223BE20](v117, v5);
  v116 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_223729F08();
  v119 = *(v7 - 8);
  v120 = v7;
  v8 = v119[8];
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F740, &unk_223731DC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v109 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8, v19);
  v22 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v109 - v24;
  v26 = a1;
  v27 = v2;
  v28 = v122;
  sub_2236361D4(a1, sub_223636908, 0);
  if (v28)
  {
    return;
  }

  v113 = v25;
  v114 = 0;
  v110 = v11;
  v111 = v22;
  v29 = v119;
  v30 = v120;
  v122 = v16;
  v31 = sub_223729D38();
  v33 = v32;
  v118 = v27;
  v34 = sub_22372A768();
  v112 = a1;
  if (v31 == v34 && v33 == v35)
  {

    v36 = v30;
    v37 = v29;
  }

  else
  {
    v38 = sub_22372B6E8();

    v36 = v30;
    v37 = v29;
    if ((v38 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v39 = qword_28132B888;
  v40 = v118;
  swift_beginAccess();
  v41 = v113;
  (v37[13])(v113, *MEMORY[0x277D5CF30], v36);
  (v37[7])(v41, 0, 1, v36);
  v42 = *(v12 + 48);
  v43 = v40 + v39;
  v44 = v41;
  v45 = v122;
  sub_223634890(v43, v122, &qword_27D08E9D0, &qword_22372D1E0);
  sub_223634890(v44, v45 + v42, &qword_27D08E9D0, &qword_22372D1E0);
  v46 = v37[6];
  if (v46(v45, 1, v36) == 1)
  {
    sub_223626478(v44, &qword_27D08E9D0, &qword_22372D1E0);
    if (v46(v45 + v42, 1, v36) == 1)
    {
      sub_223626478(v45, &qword_27D08E9D0, &qword_22372D1E0);
      v26 = v112;
      goto LABEL_13;
    }

LABEL_11:
    sub_223626478(v45, &qword_27D08F740, &unk_223731DC0);
    return;
  }

  v47 = v111;
  sub_223634890(v45, v111, &qword_27D08E9D0, &qword_22372D1E0);
  if (v46(v45 + v42, 1, v36) == 1)
  {
    sub_223626478(v44, &qword_27D08E9D0, &qword_22372D1E0);
    (v37[1])(v47, v36);
    goto LABEL_11;
  }

  v48 = v45 + v42;
  v49 = v110;
  (v37[4])(v110, v48, v36);
  sub_2236233E0(&unk_28132B540, MEMORY[0x277D5CF58]);
  v50 = sub_22372AFC8();
  v51 = v37[1];
  v51(v49, v36);
  sub_223626478(v44, &qword_27D08E9D0, &qword_22372D1E0);
  v51(v47, v36);
  sub_223626478(v45, &qword_27D08E9D0, &qword_22372D1E0);
  v26 = v112;
  if ((v50 & 1) == 0)
  {
    return;
  }

LABEL_13:
  v52 = sub_223727ED8();
  if (!v52)
  {
    goto LABEL_42;
  }

  v53 = v52;
  if (qword_281328E58 != -1)
  {
LABEL_65:
    swift_once();
  }

  v54 = sub_22372AC98();
  __swift_project_value_buffer(v54, qword_28132B680);
  v55 = v26;
  v56 = v53;
  v57 = sub_22372AC88();
  v58 = sub_22372B268();

  v59 = os_log_type_enabled(v57, v58);
  v122 = v55;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v121[0] = v62;
    *v60 = 138412802;
    *(v60 + 4) = v56;
    *v61 = v53;
    v53 = 2080;
    *(v60 + 12) = 2080;
    v63 = v56;
    sub_223727EC8();
    v64 = sub_22372B038();
    v66 = sub_223623274(v64, v65, v121);

    *(v60 + 14) = v66;
    *(v60 + 22) = 2080;
    v67 = sub_223729D38();
    v69 = sub_223623274(v67, v68, v121);

    *(v60 + 24) = v69;
    _os_log_impl(&dword_223620000, v57, v58, "Adding aceCommand: %@ with executionSource: %s to request with requestId: %s", v60, 0x20u);
    sub_223626478(v61, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v61, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v62, -1, -1);
    MEMORY[0x223DE8A80](v60, -1, -1);
  }

  v70 = v118;
  v71 = qword_28132B870;
  swift_beginAccess();
  v113 = v71;
  v72 = *(v70 + v71);
  v119 = v56;
  v120 = v72 & 0xFFFFFFFFFFFFFF8;
  if (v72 >> 62)
  {
    v73 = sub_22372B558();
  }

  else
  {
    v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = -v73;
  v74 = 4;
  while (1)
  {
    if (v74 - v73 == 4)
    {

      v26 = v112;
      goto LABEL_42;
    }

    v75 = v74 - 4;
    if ((v72 & 0xC000000000000001) != 0)
    {
      v53 = MEMORY[0x223DE7ED0](v74 - 4, v72);
    }

    else
    {
      if (v75 >= *(v120 + 16))
      {
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v53 = *(v72 + 8 * v74);
    }

    v76 = *(v53 + 16);
    v77 = *(v53 + 24);
    if (v76 == sub_223729D38() && v77 == v78)
    {
      break;
    }

    v80 = sub_22372B6E8();

    if (v80)
    {
      goto LABEL_35;
    }

    ++v74;
    if (__OFADD__(v75, 1))
    {
      goto LABEL_64;
    }
  }

LABEL_35:
  v81 = v117;
  v82 = v115;

  v83 = v118;
  v26 = v112;
  v84 = *&v113[v118];
  v85 = v116;
  if ((v84 & 0xC000000000000001) != 0)
  {
    v107 = *&v113[v118];

    MEMORY[0x223DE7ED0](v74 - 4, v84);
  }

  else
  {
    if (v75 >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_70;
    }

    v86 = *(v84 + 8 * v74);
  }

  sub_223727EC8();
  sub_223636C08(v119, v85);

  (*(v82 + 8))(v85, v81);
  v84 = *&v113[v83];
  if ((v84 & 0xC000000000000001) != 0)
  {
    v108 = *&v113[v83];

    v87 = MEMORY[0x223DE7ED0](v74 - 4, v84);

    goto LABEL_41;
  }

  if (v75 >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v87 = *(v84 + 8 * v74);

LABEL_41:
  v88 = v119;
  sub_223630E28(v87);

LABEL_42:
  v89 = sub_223727ED8();
  if (!v89)
  {
    return;
  }

  if (*(v118 + qword_28132A1B0) == 1)
  {
    v90 = qword_28132B870;
    swift_beginAccess();
    v91 = *(v118 + v90);
    v84 = v118;
    if (!(v91 >> 62))
    {
      v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_46;
    }

LABEL_71:
    v92 = sub_22372B558();
LABEL_46:
    if (v92 >= 2 && *(v84 + qword_28132A1C8) == 1)
    {
      v93 = v84;
      v94 = sub_223727ED8();
      if (v94)
      {
        v95 = v94;
        objc_opt_self();
        v96 = swift_dynamicCastObjCClass();
        if (v96)
        {
          v97 = v96;
          if (qword_281328E58 != -1)
          {
            swift_once();
          }

          v98 = sub_22372AC98();
          __swift_project_value_buffer(v98, qword_28132B680);
          v99 = sub_22372AC88();
          v100 = sub_22372B268();
          if (os_log_type_enabled(v99, v100))
          {
            v101 = swift_slowAlloc();
            *v101 = 0;
            _os_log_impl(&dword_223620000, v99, v100, "Got AddViews from supplemental child request as part of multi-request conjunction. Setting supplemental field", v101, 2u);
            v102 = v101;
            v93 = v118;
            MEMORY[0x223DE8A80](v102, -1, -1);
          }

          [v97 setSupplemental_];
          v84 = v93;
        }
      }
    }

    *(v84 + qword_28132A1C8) = 1;
    sub_2236E732C(v26);
    return;
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v103 = sub_22372AC98();
  __swift_project_value_buffer(v103, qword_28132B680);
  v104 = sub_22372AC88();
  v105 = sub_22372B268();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    *v106 = 0;
    _os_log_impl(&dword_223620000, v104, v105, "Not handling FlowOutput here: output capturing is disabled by feature flag", v106, 2u);
    MEMORY[0x223DE8A80](v106, -1, -1);
  }
}