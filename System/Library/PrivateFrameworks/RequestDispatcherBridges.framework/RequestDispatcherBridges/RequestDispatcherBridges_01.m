uint64_t sub_22363951C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483644)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v6 = -1;
    }

    else
    {
      v6 = v5;
    }

    v7 = v6 - 1;
    if (v5 >= 2)
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9C0, &qword_223731E30);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2236395EC()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_postponedExternalAgentEventPublishers;
  v0[12] = OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_postponedExternalAgentEventPublishers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[13] = v3;
  v4 = *(v3 + 16);
  v0[14] = v4;
  if (v4)
  {
    v5 = v0[10];
    v6 = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_userID;
    v0[15] = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_userID;
    v0[16] = 0;

    sub_223623934(v7 + 32, (v0 + 2));
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v8 = swift_task_alloc();
    v0[17] = v8;
    *v8 = v0;
    v8[1] = sub_2236742C4;
    v9 = v0[10];

    return sub_223646C78(v5 + v6, v9);
  }

  else
  {
    *(v0[11] + v0[12]) = MEMORY[0x277D84F90];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_223639740(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2236397B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_223639818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_223639880()
{
  v2 = *(*v1 + 48);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_22366FBE8;
  }

  else
  {
    v3 = sub_223639990;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_223639990()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_223639A04(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_22372B558();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_22372B558();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_22363AFD0(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_223639B54(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_223727408();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v32 = a1;
    v16 = v6;
    v17 = v15;
    v18 = swift_slowAlloc();
    v33 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_223623274(0xD00000000000001FLL, 0x8000000223736B90, &v33);
    _os_log_impl(&dword_223620000, v13, v14, "%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x223DE8A80](v18, -1, -1);
    v19 = v17;
    v6 = v16;
    v3 = v2;
    MEMORY[0x223DE8A80](v19, -1, -1);
  }

  sub_223729D58();
  v20 = *(v4 + qword_28132AB08);
  if (!v20)
  {
    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
    swift_allocError();
    (*(v7 + 16))(v27, v11, v6);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_11:
    (*(v7 + 8))(v11, v6);
    return;
  }

  v21 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_sessionId;

  if ((sub_2237273D8() & 1) == 0)
  {
    v32 = type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
    swift_allocError();
    v29 = v28;
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F648, &qword_2237317B8) + 48);
    v30 = *(v7 + 16);
    v30(v29, v20 + v21, v6);
    v30(v29 + v31, v11, v6);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_11;
  }

  (*(v7 + 8))(v11, v6);
  v22 = __swift_project_boxed_opaque_existential_1((v20 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_promptStateManager), *(v20 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_promptStateManager + 24));
  v23 = *(*v22 + 16);
  MEMORY[0x28223BE20](v22, v24);
  *(&v31 - 2) = sub_223639FB8;
  *(&v31 - 1) = v25;
  os_unfair_lock_lock(v23 + 4);
  sub_22363107C(v26);
  os_unfair_lock_unlock(v23 + 4);
  if (v3)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_223639FD4(uint64_t a1)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);

  v3 = sub_22372AC88();
  v4 = sub_22372B268();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223736620, &v13);
    *(v5 + 12) = 2080;
    v7 = 0xEA00000000007470;
    v8 = 0x6D6F72506C6C6977;
    if (*(a1 + 24) != 1)
    {
      v8 = 0xD000000000000016;
      v7 = 0x8000000223734320;
    }

    if (*(a1 + 24))
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x706D6F7250746F6ELL;
    }

    if (*(a1 + 24))
    {
      v10 = v7;
    }

    else
    {
      v10 = 0xEC000000676E6974;
    }

    v11 = sub_223623274(v9, v10, &v13);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_223620000, v3, v4, "%s PromptState: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v6, -1, -1);
    MEMORY[0x223DE8A80](v5, -1, -1);
  }

  v12 = *(a1 + 24);
  if (v12 != 1)
  {
    *(a1 + 24) = 1;
    sub_22363A1EC(v12);
  }
}

void sub_22363A1EC(char a1)
{
  v2 = v1;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v4 = sub_22372AC98();
  __swift_project_value_buffer(v4, qword_28132B680);

  oslog = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315394;
    if (a1)
    {
      if (a1 == 1)
      {
        v8 = 0x6D6F72506C6C6977;
      }

      else
      {
        v8 = 0xD000000000000016;
      }

      if (a1 == 1)
      {
        v9 = 0xEA00000000007470;
      }

      else
      {
        v9 = 0x8000000223734320;
      }
    }

    else
    {
      v8 = 0x706D6F7250746F6ELL;
      v9 = 0xEC000000676E6974;
    }

    v10 = sub_223623274(v8, v9, &v17);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = 0x6D6F72506C6C6977;
    v12 = 0xEA00000000007470;
    if (*(v2 + 24) != 1)
    {
      v11 = 0xD000000000000016;
      v12 = 0x8000000223734320;
    }

    if (*(v2 + 24))
    {
      v13 = v11;
    }

    else
    {
      v13 = 0x706D6F7250746F6ELL;
    }

    if (*(v2 + 24))
    {
      v14 = v12;
    }

    else
    {
      v14 = 0xEC000000676E6974;
    }

    v15 = sub_223623274(v13, v14, &v17);

    *(v6 + 14) = v15;
    _os_log_impl(&dword_223620000, oslog, v5, "Transitioned PromptState from %s to %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }
}

void sub_22363A440(uint64_t a1)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);

  v3 = sub_22372AC88();
  v4 = sub_22372B268();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_223623274(0xD000000000000018, 0x8000000223736600, &v23);
    *(v5 + 12) = 2080;
    v7 = 0x6D6F72506C6C6977;
    v8 = 0xEA00000000007470;
    if (*(a1 + 24) != 1)
    {
      v7 = 0xD000000000000016;
      v8 = 0x8000000223734320;
    }

    if (*(a1 + 24))
    {
      v9 = v7;
    }

    else
    {
      v9 = 0x706D6F7250746F6ELL;
    }

    if (*(a1 + 24))
    {
      v10 = v8;
    }

    else
    {
      v10 = 0xEC000000676E6974;
    }

    v11 = sub_223623274(v9, v10, &v23);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_223620000, v3, v4, "%s PromptState: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v6, -1, -1);
    MEMORY[0x223DE8A80](v5, -1, -1);
  }

  v12 = *(a1 + 24);
  if (*(a1 + 24))
  {
    if (v12 == 1)
    {
      v13 = 2;
    }

    else
    {

      v14 = sub_22372AC88();
      v15 = sub_22372B278();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v23 = v17;
        *v16 = 136315138;
        v18 = 0x6D6F72506C6C6977;
        v19 = 0xEA00000000007470;
        if (*(a1 + 24) != 1)
        {
          v18 = 0xD000000000000016;
          v19 = 0x8000000223734320;
        }

        if (*(a1 + 24))
        {
          v20 = v18;
        }

        else
        {
          v20 = 0x706D6F7250746F6ELL;
        }

        if (*(a1 + 24))
        {
          v21 = v19;
        }

        else
        {
          v21 = 0xEC000000676E6974;
        }

        v22 = sub_223623274(v20, v21, &v23);

        *(v16 + 4) = v22;
        _os_log_impl(&dword_223620000, v14, v15, "Unexpected PromptState at start of request: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        MEMORY[0x223DE8A80](v17, -1, -1);
        MEMORY[0x223DE8A80](v16, -1, -1);
      }

      v13 = 0;
      LOBYTE(v12) = *(a1 + 24);
    }

    *(a1 + 24) = v13;
    sub_22363A1EC(v12);
  }
}

uint64_t sub_22363A79C()
{
  if (v0[43])
  {
    v32 = v0[44];
    v1 = v0[39];
    ObjectType = swift_getObjectType();
    v3 = sub_22366FDD0(&qword_2813291E8, type metadata accessor for IntelligenceFlowSessionController);
    v4 = *(v32 + 8);

    v31 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[45] = v6;
    *v6 = v0;
    v6[1] = sub_22363AB40;
    v8 = v0[43];
    v7 = v0[44];
    v9 = v0[41];
    v10 = v0[39];

    return v31(v10, v3, v9, ObjectType, v7);
  }

  else if (sub_22372B1D8())
  {
    v12 = v0[41];
    v13 = v0[36];
    v14 = v0[33];
    v15 = v0[34];
    sub_223623934(v12 + 16, (v0 + 2));
    v16 = v0[5];
    v17 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v16);
    v18 = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_intelligenceFlowSessionID;
    v0[46] = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_intelligenceFlowSessionID;
    v19 = *(v15 + 16);
    v0[47] = v19;
    v0[48] = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v19(v13, v12 + v18, v14);
    v20 = *(v17 + 32);
    v33 = (v20 + *v20);
    v21 = v20[1];
    v22 = swift_task_alloc();
    v0[49] = v22;
    *v22 = v0;
    v22[1] = sub_223669270;
    v23 = v0[36];

    return v33(v23, v16, v17);
  }

  else
  {
    v24 = v0[41];
    v25 = v0[39];
    v26 = v0[36];
    v27 = v0[37];
    v28 = v0[35];
    v29 = v0[28];

    *v29 = v24;

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_22363AB04(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_2236395EC, v1, 0);
}

uint64_t sub_22363AB40()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 312);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_22363ADA8, 0, 0);
}

uint64_t sub_22363AC74()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_2236ECAE4;
  }

  else
  {
    v3 = sub_22363AFB4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22363ADA8()
{
  if (sub_22372B1D8())
  {
    v1 = v0[41];
    v2 = v0[36];
    v3 = v0[33];
    v4 = v0[34];
    sub_223623934(v1 + 16, (v0 + 2));
    v5 = v0[5];
    v6 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
    v7 = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_intelligenceFlowSessionID;
    v0[46] = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_intelligenceFlowSessionID;
    v8 = *(v4 + 16);
    v0[47] = v8;
    v0[48] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v8(v2, v1 + v7, v3);
    v9 = *(v6 + 32);
    v21 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    v0[49] = v11;
    *v11 = v0;
    v11[1] = sub_223669270;
    v12 = v0[36];

    return v21(v12, v5, v6);
  }

  else
  {
    v14 = v0[41];
    v15 = v0[39];
    v16 = v0[36];
    v17 = v0[37];
    v18 = v0[35];
    v19 = v0[28];

    *v19 = v14;

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_22363AFD0(uint64_t a1)
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
    sub_22372B558();
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
  result = sub_22372B498();
  *v1 = result;
  return result;
}

uint64_t sub_22363B070(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22372B558();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22372B558();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_223660728(&qword_27D08F718, &qword_27D08F710, &unk_223731D90);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F710, &unk_223731D90);
            v9 = sub_2236F47D8(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for RequestInfo(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22363B214(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22363B274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v30 - v19;
  v22 = *(a2 + 16);
  v21 = *(a2 + 24);

  sub_223729118();
  sub_223729D38();
  sub_2237290C8();
  sub_223729D58();
  v23 = sub_223727408();
  (*(*(v23 - 8) + 56))(v20, 0, 1, v23);
  sub_223729128();
  sub_223729D98();
  sub_2237290D8();
  sub_223728FA8();
  v24 = sub_223729EE8();
  (*(*(v24 - 8) + 56))(v15, 0, 1, v24);
  sub_2237290E8();
  v25 = *(a4 + qword_28132B8A0);
  sub_2237290F8();
  v26 = *MEMORY[0x277D5CDE8];
  v27 = sub_223729DE8();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v10, v26, v27);
  (*(v28 + 56))(v10, 0, 1, v27);
  return sub_223729108();
}

uint64_t sub_22363B540(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_22372A758();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_223729D88();
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v8 = sub_22372AC98();
  __swift_project_value_buffer(v8, qword_28132B680);
  v9 = a1;
  v10 = sub_22372AC88();
  v11 = sub_22372B268();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_223620000, v10, v11, "Posted child request starter message: %@", v12, 0xCu);
    sub_223626478(v13, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v13, -1, -1);
    MEMORY[0x223DE8A80](v12, -1, -1);
  }

  v15 = *(a3 + qword_28132A1D8);
  v16 = a4();
  v18 = v17;
  v19 = sub_223729D38();
  sub_22363B768(v16, v18, v19, v20, a2);

  v22 = (a4)(v21);
  v24 = v23;
  v25 = sub_223729D38();
  sub_22363B9F8(v22, v24, v25, v26);
}

void sub_22363B768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = *(v5 + 24);
  v9 = sub_22372A868();
  if (v9)
  {
    v10 = v9;
    v11 = sub_22372A888();
    if (v11)
    {
      v12 = v11;
      v13 = [objc_allocWithZone(MEMORY[0x277D59850]) init];
      [v13 setSubRequestType_];
      v14 = [objc_allocWithZone(MEMORY[0x277D59838]) init];
      v21 = v14;
      if (v14)
      {
        [v14 setSubRequestId:v12];
        v14 = v21;
      }

      [v14 setStartedOrChanged:v13];
      [v10 setSubRequestContext_];
      [*(v6 + 16) emitMessage_];
    }

    else
    {
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v18 = sub_22372AC98();
      __swift_project_value_buffer(v18, qword_28132B680);
      v21 = sub_22372AC88();
      v19 = sub_22372B278();
      if (os_log_type_enabled(v21, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_223620000, v21, v19, "The subRequestId is not a valid UUID, will not emit for logChildRequestStarted", v20, 2u);
        MEMORY[0x223DE8A80](v20, -1, -1);
      }
    }
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v15 = sub_22372AC98();
    __swift_project_value_buffer(v15, qword_28132B680);
    v21 = sub_22372AC88();
    v16 = sub_22372B278();
    if (os_log_type_enabled(v21, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_223620000, v21, v16, "Could not build wrapper when logging logChildRequestStarted", v17, 2u);
      MEMORY[0x223DE8A80](v17, -1, -1);
    }
  }
}

void sub_22363B9F8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 24);
  v11 = sub_22372A858();
  if (v11)
  {
    oslog = v11;
    [*(v5 + 16) emitMessage_];
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v12 = sub_22372AC98();
    __swift_project_value_buffer(v12, qword_28132B680);

    oslog = sub_22372AC88();
    v13 = sub_22372B278();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_223623274(a1, a2, &v17);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_223623274(a3, a4, &v17);
      _os_log_impl(&dword_223620000, oslog, v13, "Unable to logRequestSubRequestLink for rootRequestId=%s and childRequestId=%s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v15, -1, -1);
      MEMORY[0x223DE8A80](v14, -1, -1);
    }
  }
}

void sub_22363BC24(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v10 = sub_22372AC98();
  __swift_project_value_buffer(v10, qword_28132B680);
  v11 = sub_22372AC88();
  v12 = sub_22372B268();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_223620000, v11, v12, "RequestControllerBridgeRequestProcessor: Handling RunSiriKitExecutor ace command", v13, 2u);
    MEMORY[0x223DE8A80](v13, -1, -1);
  }

  v14 = [a1 refId];
  if (v14 || (v14 = [a2 requestID]) != 0)
  {
    v15 = v14;
    v16 = sub_22372AFE8();
    v18 = v17;

    if (v16 == sub_22372A768() && v18 == v19)
    {
    }

    else
    {
      v20 = sub_22372B6E8();

      if ((v20 & 1) == 0)
      {

        v52 = sub_22372AC88();
        v31 = sub_22372B278();

        if (os_log_type_enabled(v52, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v53[0] = v33;
          *v32 = 136315394;
          v34 = sub_223623274(v16, v18, v53);

          *(v32 + 4) = v34;
          *(v32 + 12) = 2080;
          v35 = sub_22372A768();
          v37 = sub_223623274(v35, v36, v53);

          *(v32 + 14) = v37;
          _os_log_impl(&dword_223620000, v52, v31, "requestId of RSKE: %s does not match the requestId of the RequestProcessor %s, dropping.", v32, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DE8A80](v33, -1, -1);
          MEMORY[0x223DE8A80](v32, -1, -1);

          return;
        }

        goto LABEL_26;
      }
    }

    v21 = *(v5 + qword_28132B8C0);
    if (v21)
    {
      v23 = *(v21 + 16);
      v22 = *(v21 + 24);

      [a1 copy];
      sub_22372B3D8();
      swift_unknownObjectRelease();
      sub_223630584(0, &qword_281328D20, 0x277D47438);
      if (swift_dynamicCast())
      {
        v24 = v54;
        v25 = sub_22372AFD8();
        [v24 setRefId_];
        v51 = v24;

        if (a3)
        {
          v26 = swift_allocObject();
          *(v26 + 16) = a3;
          *(v26 + 24) = a4;
          v27 = sub_22363FFA8;
        }

        else
        {
          v27 = 0;
          v26 = 0;
        }

        v41 = qword_28132B880;
        swift_beginAccess();

        sub_22363C4E4(a3);
        v42 = *(v5 + v41);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = *(v5 + v41);
        *(v5 + v41) = 0x8000000000000000;
        sub_22363C35C(v27, v26, v23, v22, isUniquelyReferenced_nonNull_native);

        *(v5 + v41) = v54;
        v44 = swift_endAccess();
        MEMORY[0x28223BE20](v44, v45);
        v46 = objc_allocWithZone(sub_223729C88());
        v47 = sub_223729C18();

        if (v47)
        {
          sub_22372A758();
          __swift_project_boxed_opaque_existential_1(v53, v53[3]);
          sub_223729D88();

          __swift_destroy_boxed_opaque_existential_1Tm(v53);
        }

        else
        {
          v48 = sub_22372AC88();
          v49 = sub_22372B278();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&dword_223620000, v48, v49, "Could not build RunSiriKitExecutorMessage. Missing fields?", v50, 2u);
            MEMORY[0x223DE8A80](v50, -1, -1);
          }
        }
      }

      else
      {

        v38 = sub_22372AC88();
        v39 = sub_22372B278();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_223620000, v38, v39, "Unable to copy command as SAIntentGroupRunSiriKitExecutor. Dropping.", v40, 2u);
          MEMORY[0x223DE8A80](v40, -1, -1);
        }
      }

      return;
    }

    v52 = sub_22372AC88();
    v28 = sub_22372B278();
    if (os_log_type_enabled(v52, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "Unable to find eager child info for the local request, dropping.";
LABEL_24:
      _os_log_impl(&dword_223620000, v52, v28, v30, v29, 2u);
      MEMORY[0x223DE8A80](v29, -1, -1);
    }
  }

  else
  {
    v52 = sub_22372AC88();
    v28 = sub_22372B278();
    if (os_log_type_enabled(v52, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "Could not find a refId in the RSKE ace command, dropping.";
      goto LABEL_24;
    }
  }

LABEL_26:
}

uint64_t sub_22363C320()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22363C35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2236261A0(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_22363C4E8(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_2236261A0(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_22372B708();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_22365FB9C();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = *v25;
    v27 = v25[1];
    *v25 = a1;
    v25[1] = a2;

    return sub_22363FFD8(v26);
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v29 = (v24[6] + 16 * v13);
  *v29 = a3;
  v29[1] = a4;
  v30 = (v24[7] + 16 * v13);
  *v30 = a1;
  v30[1] = a2;
  v31 = v24[2];
  v17 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v32;
}

uint64_t sub_22363C4E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EA90, &unk_22372FB60);
  v36 = a2;
  result = sub_22372B588();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        sub_22363038C(v37);
      }

      v26 = *(v8 + 40);
      sub_22372B7A8();
      sub_22372B078();
      result = sub_22372B7C8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22363C7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v25 - v16;

  sub_223729C68();
  sub_22372A728();
  sub_223729C28();
  sub_22372A778();
  v18 = sub_223727408();
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  sub_223729C78();
  v19 = *MEMORY[0x277D5CDE8];
  v20 = sub_223729DE8();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v12, v19, v20);
  (*(v21 + 56))(v12, 0, 1, v20);
  sub_223729C48();
  v22 = a5;
  sub_223729C58();
  v23 = a6;
  return sub_223729C38();
}

uint64_t sub_22363C9E0()
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

  return sub_22363DF48(v2, v3, v4, v5, v6);
}

uint64_t sub_22363CADC(uint64_t *a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2236242EC;

  return sub_2236237F8(a1, v7, v6, a2);
}

id sub_22363CBD0(void *a1, uint64_t a2, uint64_t a3)
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
      *(v21 + 4) = sub_223623274(0xD00000000000001DLL, 0x8000000223737A70, &v39);
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

uint64_t sub_22363D000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *(*(type metadata accessor for IntelligenceFlowSessionBridge.Error(0) - 8) + 64) + 15;
  v3[3] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_223624D18;

  return sub_22363D390(a1);
}

uint64_t sub_22363D0C8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2236242EC;

  return sub_22363D000(a1, v2, a2);
}

uint64_t sub_22363D170()
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
    *(v4 + 4) = sub_223623274(0xD00000000000001DLL, 0x8000000223737A70, &v14);
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

uint64_t sub_22363D390(uint64_t a1)
{
  v2[39] = a1;
  v2[40] = v1;
  v3 = sub_223727408();
  v2[41] = v3;
  v4 = *(v3 - 8);
  v2[42] = v4;
  v5 = *(v4 + 64) + 15;
  v2[43] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EDA8, &qword_22372E738) - 8) + 64) + 15;
  v2[44] = swift_task_alloc();
  v7 = sub_22372A3B8();
  v2[45] = v7;
  v8 = *(v7 - 8);
  v2[46] = v8;
  v9 = *(v8 + 64) + 15;
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22363D4FC, v1, 0);
}

uint64_t sub_22363D4FC()
{
  v109 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);
  v4 = *(v0 + 320);
  v5 = OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_conversationSessionInfo;
  swift_beginAccess();
  sub_223634890(v4 + v5, v3, &qword_27D08EDA8, &qword_22372E738);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_223626478(*(v0 + 352), &qword_27D08EDA8, &qword_22372E738);
    if (qword_281328E50 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 312);
    v7 = sub_22372AC98();
    __swift_project_value_buffer(v7, qword_28132B668);
    v8 = v6;
    v9 = sub_22372AC88();
    v10 = sub_22372B268();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 312);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v11;
      *v13 = v11;
      v14 = v11;
      _os_log_impl(&dword_223620000, v9, v10, "No ConversationSessionInfo. Ignoring %@", v12, 0xCu);
      sub_223626478(v13, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v13, -1, -1);
      MEMORY[0x223DE8A80](v12, -1, -1);
    }
  }

  else
  {
    v15 = *(v0 + 344);
    v16 = *(v0 + 328);
    v17 = *(v0 + 336);
    v18 = *(v0 + 320);
    (*(*(v0 + 368) + 32))(*(v0 + 392), *(v0 + 352), *(v0 + 360));
    v19 = *(v18 + OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_sessionsManager + 32);
    __swift_project_boxed_opaque_existential_1((v18 + OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_sessionsManager), *(v18 + OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_sessionsManager + 24));
    sub_22372A3A8();
    sub_22372A4E8();
    v20 = *(v17 + 8);
    v20(v15, v16);
    if (*(v0 + 80))
    {
      v21 = *(v0 + 312);
      sub_2236241E8((v0 + 56), v0 + 16);
      *(v0 + 304) = v21;
      sub_223728068();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EDB0, &qword_22372E990);
      if (swift_dynamicCast())
      {
        v23 = *(v0 + 312);
        v24 = *(v0 + 320);
        sub_2236241E8((v0 + 136), v0 + 96);
        *(v0 + 200) = &type metadata for ExternalAgentEventPublisher;
        *(v0 + 208) = &off_2836C4310;
        v25 = swift_allocObject();
        *(v0 + 176) = v25;
        sub_223623934(v0 + 16, (v25 + 2));
        v26 = sub_223729D38();
        v28 = v27;
        v29 = *(v0 + 128);
        __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
        v30 = sub_22372A228();
        v25[7] = v26;
        v25[8] = v28;
        v25[9] = v30;
        v25[10] = v31;
        v32 = OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_externalAgentEventPublishers;
        swift_beginAccess();
        v33 = *(v24 + v32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v24 + v32) = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = sub_2236409A8(0, v33[2] + 1, 1, v33);
          *(v24 + v32) = v33;
        }

        v36 = v33[2];
        v35 = v33[3];
        if (v36 >= v35 >> 1)
        {
          *(v24 + v32) = sub_2236409A8((v35 > 1), v36 + 1, 1, v33);
        }

        v37 = *(v0 + 368);
        v102 = *(v0 + 360);
        v105 = *(v0 + 392);
        v38 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 176, &type metadata for ExternalAgentEventPublisher);
        v39 = off_2836C4248;
        v40 = *(off_2836C4248 + 8) + 15;
        v41 = swift_task_alloc();
        v39[2](v41, v38, &type metadata for ExternalAgentEventPublisher);
        *(v0 + 240) = &type metadata for ExternalAgentEventPublisher;
        *(v0 + 248) = &off_2836C4310;
        v42 = swift_allocObject();
        *(v0 + 216) = v42;
        *(v42 + 16) = *v41;
        v44 = *(v41 + 32);
        v43 = *(v41 + 48);
        v45 = *(v41 + 16);
        *(v42 + 80) = *(v41 + 64);
        *(v42 + 48) = v44;
        *(v42 + 64) = v43;
        *(v42 + 32) = v45;
        v46 = *(v24 + v32);
        *(v46 + 16) = v36 + 1;
        sub_2236241E8((v0 + 216), v46 + 40 * v36 + 32);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));

        *(v24 + v32) = v46;
        swift_endAccess();
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
        (*(v37 + 8))(v105, v102);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
      }

      else
      {
        *(v0 + 168) = 0;
        *(v0 + 152) = 0u;
        *(v0 + 136) = 0u;
        sub_223626478(v0 + 136, qword_27D08EDB8, &qword_22372E998);
        if (qword_281328E50 != -1)
        {
          swift_once();
        }

        v67 = *(v0 + 384);
        v68 = *(v0 + 392);
        v69 = *(v0 + 360);
        v70 = *(v0 + 368);
        v71 = sub_22372AC98();
        __swift_project_value_buffer(v71, qword_28132B668);
        (*(v70 + 16))(v67, v68, v69);
        v72 = sub_22372AC88();
        v73 = sub_22372B258();
        v74 = os_log_type_enabled(v72, v73);
        v76 = *(v0 + 384);
        v75 = *(v0 + 392);
        v78 = *(v0 + 360);
        v77 = *(v0 + 368);
        if (v74)
        {
          v99 = *(v0 + 360);
          v79 = *(v0 + 344);
          v80 = *(v0 + 328);
          v107 = v20;
          v81 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v108 = v104;
          *v81 = 136315138;
          v97 = v73;
          sub_22372A3A8();
          sub_223674BEC(&qword_28132B600, MEMORY[0x277CC95F0]);
          v82 = sub_22372B6B8();
          v101 = v75;
          v84 = v83;
          v107(v79, v80);
          v85 = *(v77 + 8);
          v85(v76, v99);
          v86 = sub_223623274(v82, v84, &v108);

          *(v81 + 4) = v86;
          _os_log_impl(&dword_223620000, v72, v97, "Message is not RootRequestAware for session: %s", v81, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v104);
          MEMORY[0x223DE8A80](v104, -1, -1);
          MEMORY[0x223DE8A80](v81, -1, -1);

          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
          v85(v101, v99);
        }

        else
        {

          v88 = *(v77 + 8);
          v88(v76, v78);
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
          v88(v75, v78);
        }
      }
    }

    else
    {
      sub_223626478(v0 + 56, &qword_27D08F650, qword_2237317C0);
      if (qword_281328E50 != -1)
      {
        swift_once();
      }

      v47 = *(v0 + 392);
      v49 = *(v0 + 368);
      v48 = *(v0 + 376);
      v50 = *(v0 + 360);
      v51 = sub_22372AC98();
      __swift_project_value_buffer(v51, qword_28132B668);
      (*(v49 + 16))(v48, v47, v50);
      v52 = sub_22372AC88();
      v53 = sub_22372B278();
      v54 = os_log_type_enabled(v52, v53);
      v55 = *(v0 + 392);
      v56 = *(v0 + 368);
      v57 = *(v0 + 376);
      v58 = *(v0 + 360);
      if (v54)
      {
        v98 = *(v0 + 360);
        v59 = *(v0 + 344);
        v60 = *(v0 + 328);
        v106 = v20;
        v61 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v108 = v103;
        *v61 = 136315138;
        v96 = v53;
        sub_22372A3A8();
        sub_223674BEC(&qword_28132B600, MEMORY[0x277CC95F0]);
        v62 = sub_22372B6B8();
        v100 = v55;
        v64 = v63;
        v106(v59, v60);
        v65 = *(v56 + 8);
        v65(v57, v98);
        v66 = sub_223623274(v62, v64, &v108);

        *(v61 + 4) = v66;
        _os_log_impl(&dword_223620000, v52, v96, "Failed to fetch ConversationSession for sessionId: %s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v103);
        MEMORY[0x223DE8A80](v103, -1, -1);
        MEMORY[0x223DE8A80](v61, -1, -1);

        v65(v100, v98);
      }

      else
      {

        v87 = *(v56 + 8);
        v87(v57, v58);
        v87(v55, v58);
      }
    }
  }

  v90 = *(v0 + 384);
  v89 = *(v0 + 392);
  v91 = *(v0 + 376);
  v93 = *(v0 + 344);
  v92 = *(v0 + 352);

  v94 = *(v0 + 8);

  return v94();
}

uint64_t sub_22363DF00()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22363DF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22363D170, 0, 0);
}

void sub_22363DF70(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v53 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v51 - v10;
  v12 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state;
  v13 = *(v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
  if (v13 <= 1)
  {
    v51 = a2;
    v52 = a1;
  }

  else if (v13 == 2)
  {
    v51 = a2;
    v52 = a1;
  }

  else
  {
    if (v13 != 3)
    {
      v14 = 0x8000000223734390;

      goto LABEL_20;
    }

    v51 = a2;
    v52 = a1;
  }

  v14 = 0x8000000223734390;
  v15 = sub_22372B6E8();

  if ((v15 & 1) == 0)
  {
    v16 = sub_223729F08();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v11, v53, v16);
    (*(v17 + 56))(v11, 0, 1, v16);
    v18 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_requestType;
    swift_beginAccess();
    sub_2236719F4(v11, v4 + v18, &qword_27D08E9D0, &qword_22372D1E0);
    swift_endAccess();
    v19 = __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_promptStateManager), *(v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_promptStateManager + 24));
    v20 = *(*v19 + 16);
    MEMORY[0x28223BE20](v19, v21);
    *(&v51 - 2) = sub_22363AB24;
    *(&v51 - 1) = v22;
    os_unfair_lock_lock(v20 + 4);
    v23 = v55[4];
    sub_22363107C(v24);
    if (v23)
    {
      os_unfair_lock_unlock(v20 + 4);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v20 + 4);
      v25 = v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
      swift_beginAccess();
      v26 = v51;
      if (*(v25 + 3))
      {
        if (qword_281328E80 != -1)
        {
          swift_once();
        }

        v27 = sub_22372A648();
        __swift_project_value_buffer(v27, qword_28132B6C8);

        sub_22372A628();

        v28 = *(v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_instrumentationUtil);
        v29 = *(v4 + 112);
        v30 = *(v4 + 120);
        sub_2236C52C0();
      }

      swift_beginAccess();
      *(v25 + 4) = 1;
      v31 = type metadata accessor for RootRequestController.RequestContext(0);
      sub_223639740(v52, v25 + *(v31 + 68));
      swift_endAccess();
      if (v26)
      {
        v32 = *(v31 + 72);
        v33 = *(v25 + v32);
        *(v25 + v32) = v26;
        v34 = v26;
      }

      v35 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_pendingSpeechRecognizedCommand;
      v36 = *(v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_pendingSpeechRecognizedCommand);
      if (v36)
      {
        v37 = *(v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_serviceHelper);
        if ([v37 respondsToSelector_])
        {
          aBlock[4] = sub_2236F68B4;
          aBlock[5] = 0;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_22365AC5C;
          aBlock[3] = &block_descriptor_140;
          v38 = _Block_copy(aBlock);
          v39 = v36;

          [v37 handleSpeechRecognized:v39 completion:v38];
          _Block_release(v38);
        }

        v40 = *(v4 + v35);
        *(v4 + v35) = 0;
      }
    }

    return;
  }

LABEL_20:
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v41 = sub_22372AC98();
  __swift_project_value_buffer(v41, qword_28132B680);
  swift_retain_n();
  v42 = sub_22372AC88();
  v43 = sub_22372B278();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v55[0] = v45;
    *v44 = 136315394;
    v46 = *(v4 + v12);
    if (v46 <= 1)
    {
      if (*(v4 + v12))
      {
        v47 = 0x6E69766965636572;
        v14 = 0xED00007350525467;
      }

      else
      {
        v47 = 0x696C616974696E69;
        v14 = 0xEB0000000064657ALL;
      }
    }

    else if (v46 == 2)
    {
      v14 = 0x8000000223734360;
      v47 = 0xD00000000000001FLL;
    }

    else
    {
      v47 = 0xD000000000000010;
      if (v46 == 3)
      {
        v47 = 0x6C616E6946707274;
        v14 = 0xEC00000064657A69;
      }
    }

    v48 = sub_223623274(v47, v14, v55);

    *(v44 + 4) = v48;
    *(v44 + 12) = 1024;
    v49 = v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
    swift_beginAccess();
    LODWORD(v49) = *(v49 + 4);

    *(v44 + 14) = v49;

    _os_log_impl(&dword_223620000, v42, v43, "Received StartSpeechRequestMessage while the controller's state is: %s and isActive: %{BOOL}d", v44, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x223DE8A80](v45, -1, -1);
    MEMORY[0x223DE8A80](v44, -1, -1);
  }

  else
  {
  }

  sub_223657180();
  swift_allocError();
  *v50 = xmmword_223732A20;
  *(v50 + 16) = 4;
  swift_willThrow();
}

uint64_t sub_22363E70C(void *a1)
{
  v2 = sub_22372A098();
  v80 = *(v2 - 8);
  v3 = *(v80 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v81 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F798, &qword_223731E90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v71 - v9;
  v11 = sub_22372A058();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v71 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v71 - v23;
  v25 = a1;
  v83 = a1;
  sub_223729FE8();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_223626478(v10, &qword_27D08F798, &qword_223731E90);
  }

  v79 = v2;
  (*(v12 + 32))(v24, v10, v11);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v27 = sub_22372AC98();
  v28 = __swift_project_value_buffer(v27, qword_28132B680);
  v29 = *(v12 + 16);
  v77 = v24;
  v75 = v29;
  v29(v21, v24, v11);
  v30 = v25;
  v31 = sub_22372AC88();
  v32 = sub_22372B268();

  v33 = os_log_type_enabled(v31, v32);
  v78 = v12;
  v76 = v11;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v74 = v28;
    v72 = v31;
    v35 = v34;
    v73 = swift_slowAlloc();
    v84[0] = v73;
    *v35 = 136315650;
    v75(v17, v21, v11);
    v36 = sub_22372B038();
    v38 = v37;
    v75 = *(v12 + 8);
    (v75)(v21, v11);
    v39 = sub_223623274(v36, v38, v84);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2080;
    v40 = v81;
    sub_223728A28();
    v41 = v79;
    v42 = sub_22372B038();
    v44 = sub_223623274(v42, v43, v84);

    *(v35 + 14) = v44;
    *(v35 + 22) = 2080;
    v45 = sub_223729D38();
    v47 = sub_223623274(v45, v46, v84);

    *(v35 + 24) = v47;
    v48 = v72;
    _os_log_impl(&dword_223620000, v72, v32, "Adding DialogResponse %s with executionSource: %s to request with requestId: %s", v35, 0x20u);
    v49 = v73;
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v49, -1, -1);
    MEMORY[0x223DE8A80](v35, -1, -1);
  }

  else
  {

    v75 = *(v12 + 8);
    (v75)(v21, v11);
    v41 = v79;
    v40 = v81;
  }

  v50 = qword_28132B870;
  v51 = v82;
  swift_beginAccess();
  v52 = *(v51 + v50);
  if (v52 >> 62)
  {
    if (v52 < 0)
    {
      v69 = *(v51 + v50);
    }

    v53 = sub_22372B558();
  }

  else
  {
    v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v53 >= 2)
  {
    v54 = sub_22372AC88();
    v55 = sub_22372B278();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_223620000, v54, v55, "Found more than one child request while attempting to handle dialog engine output at root level, will choose the first child request", v56, 2u);
      MEMORY[0x223DE8A80](v56, -1, -1);
    }
  }

  v57 = *(v51 + v50);
  if (!(v57 >> 62))
  {
    result = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_16;
    }

    return (v75)(v77, v76);
  }

  if (v57 < 0)
  {
    v70 = *(v51 + v50);
  }

  result = sub_22372B558();
  if (!result)
  {
    return (v75)(v77, v76);
  }

LABEL_16:
  if ((v57 & 0xC000000000000001) != 0)
  {

    v58 = MEMORY[0x223DE7ED0](0, v57);
  }

  else
  {
    if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v58 = *(v57 + 32);
  }

  v60 = *(v58 + 16);
  v59 = *(v58 + 24);

  if (v60 == sub_223729D38() && v59 == v61)
  {
    goto LABEL_21;
  }

  v62 = sub_22372B6E8();

  if (v62)
  {
    goto LABEL_23;
  }

  v64 = sub_22372A708();
  v66 = v65;
  if (v64 == sub_223729D38() && v66 == v67)
  {
LABEL_21:

LABEL_23:
    sub_223728A28();
    v63 = v77;
    sub_22363EF04(v77, v40);
    (*(v80 + 8))(v40, v41);
    sub_223630E28(v58);

    return (v75)(v63, v76);
  }

  v68 = sub_22372B6E8();

  if (v68)
  {
    goto LABEL_23;
  }

  (v75)(v77, v76);
}

uint64_t sub_22363EE98()
{
  sub_223728A58();
  sub_22372A018();
  sub_223728A68();
  sub_22372A028();
  sub_223728A38();
  sub_223729FF8();
  sub_223728A48();
  return sub_22372A008();
}

uint64_t sub_22363EF04(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9C0, &qword_223731E30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v25 - v8;
  v10 = sub_22372A058();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v15, a1, v10);
  v16 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_responseList;
  swift_beginAccess();
  v17 = *(v2 + v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v16) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_22363F19C(0, v17[2] + 1, 1, v17);
    *(v2 + v16) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_22363F19C(v19 > 1, v20 + 1, 1, v17);
  }

  v17[2] = v20 + 1;
  (*(v11 + 32))(v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v15, v10);
  *(v2 + v16) = v17;
  swift_endAccess();
  v21 = sub_22372A098();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v9, a2, v21);
  (*(v22 + 56))(v9, 0, 1, v21);
  v23 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_systemResponseSource;
  swift_beginAccess();
  sub_223630DB8(v9, v2 + v23);
  return swift_endAccess();
}

void sub_22363F208(void *a1)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = a1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_223620000, v4, v5, "Handling RunSiriKitExecutor message: %@", v6, 0xCu);
    sub_223626478(v7, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  v9 = sub_223729D38();
  v11 = v10;
  swift_beginAccess();
  v12 = sub_22363F538(v9, v11);
  swift_endAccess();

  if (v12)
  {
    if (v12 == 1)
    {
      if (sub_22372A688())
      {
        type metadata accessor for RequestControllerBridgeRequestProcessor();
        if (swift_dynamicCastClass())
        {
          sub_22363F5E8(v3);

          return;
        }
      }

      v15 = v3;
      v16 = sub_22372AC88();
      v17 = sub_22372B278();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v24[0] = v19;
        *v18 = 136315138;
        v20 = sub_223729D38();
        v22 = sub_223623274(v20, v21, v24);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_223620000, v16, v17, "Could not find the AceCommandReply for RSKE response with requestId = %s, dropping.", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x223DE8A80](v19, -1, -1);
        MEMORY[0x223DE8A80](v18, -1, -1);
      }
    }

    else
    {
      sub_22363038C(v12);
      v13 = sub_223729CA8();
      v14 = sub_223729C98();
      v23 = v14;
      v24[0] = v13;
      v12(v24, &v23);
      sub_2236C3810(v12);
      sub_2236C3810(v12);
    }
  }
}

uint64_t sub_22363F538(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_2236261A0(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 1;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v16 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_22365FB9C();
    v10 = v16;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = (*(v10 + 56) + 16 * v7);
  v14 = *v12;
  v13 = v12[1];
  sub_22363FDB4(v7, v10);
  *v3 = v10;
  return v14;
}

void sub_22363F5E8(void *a1)
{
  v2 = *(v1 + qword_28132B8C0);
  if (!v2)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    oslog = sub_22372AC88();
    v19 = sub_22372B278();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_223620000, oslog, v19, "Unable to find eager child info, unable to process RSKE command.", v20, 2u);
      MEMORY[0x223DE8A80](v20, -1, -1);
    }

LABEL_33:

    return;
  }

  v5 = *(v2 + 16);
  v4 = *(v2 + 24);

  if (sub_223729D38() == v5 && v6 == v4)
  {
  }

  else
  {
    v8 = sub_22372B6E8();

    if ((v8 & 1) == 0)
    {
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v9 = sub_22372AC98();
      __swift_project_value_buffer(v9, qword_28132B680);

      v10 = a1;
      oslog = sub_22372AC88();
      v11 = sub_22372B278();

      if (os_log_type_enabled(oslog, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v66[0] = v13;
        *v12 = 136315394;
        v14 = sub_223729D38();
        v16 = sub_223623274(v14, v15, v66);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2080;
        v17 = sub_223623274(v5, v4, v66);

        *(v12 + 14) = v17;
        _os_log_impl(&dword_223620000, oslog, v11, "RSKE response requestId: %s must match eagerChildRequestId: %s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE8A80](v13, -1, -1);
        MEMORY[0x223DE8A80](v12, -1, -1);

        return;
      }

      goto LABEL_33;
    }
  }

  swift_beginAccess();
  v21 = sub_22363F538(v5, v4);
  v23 = v22;
  swift_endAccess();

  if (v21 != 1)
  {
    if (v21)
    {
      v33 = swift_allocObject();
      *(v33 + 16) = v21;
      *(v33 + 24) = v23;
      v34 = sub_22363FF64;
    }

    else
    {
      v34 = 0;
    }

    v35 = sub_223729CA8();
    if (!v35)
    {
      sub_22363FFD8(v34);
      return;
    }

    v36 = v35;
    v37 = [v35 refId];
    if (v37)
    {
      v38 = v37;
      v39 = sub_22372AFE8();
      v41 = v40;

      v42 = sub_22372A708();
      if (v41)
      {
        if (v39 == v42 && v41 == v43)
        {

          goto LABEL_45;
        }

        v60 = sub_22372B6E8();

        if (v60)
        {
LABEL_45:
          if (v21)
          {

            v58 = sub_223729CA8();
            v59 = sub_223729C98();
            v34(v58, v59);

            sub_22363FFD8(v34);
            sub_22363FFD8(v34);
          }

          else
          {
          }

          return;
        }

LABEL_38:
        if (qword_281328E58 != -1)
        {
          swift_once();
        }

        v44 = sub_22372AC98();
        __swift_project_value_buffer(v44, qword_28132B680);
        v45 = v36;

        v46 = sub_22372AC88();
        v47 = sub_22372B268();
        if (os_log_type_enabled(v46, v47))
        {
          v62 = v47;
          osloga = v34;
          v48 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v66[0] = v61;
          *v48 = 136315394;
          v49 = [v45 &selRef_setUserId_ + 1];
          v63 = v45;

          if (!v49)
          {
            __break(1u);
            return;
          }

          v50 = sub_22372AFE8();
          v52 = v51;

          v53 = sub_223623274(v50, v52, v66);

          *(v48 + 4) = v53;
          *(v48 + 12) = 2080;
          v54 = sub_22372A708();
          v56 = sub_223623274(v54, v55, v66);

          *(v48 + 14) = v56;
          _os_log_impl(&dword_223620000, v46, v62, "Replacing RSKEResponseMessage refId : %s with the root request: %s.", v48, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DE8A80](v61, -1, -1);
          MEMORY[0x223DE8A80](v48, -1, -1);

          v45 = v63;
          v34 = osloga;
        }

        else
        {
        }

        sub_22372A708();
        v57 = sub_22372AFD8();

        [v45 setRefId_];

        goto LABEL_45;
      }
    }

    else
    {
      sub_22372A708();
    }

    goto LABEL_38;
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v24 = sub_22372AC98();
  __swift_project_value_buffer(v24, qword_28132B680);
  v25 = a1;
  v26 = sub_22372AC88();
  v27 = sub_22372B278();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v66[0] = v29;
    *v28 = 136315138;
    v30 = sub_223729D38();
    v32 = sub_223623274(v30, v31, v66);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_223620000, v26, v27, "Could not find the AceCommandReply for requestId = %s in request processor", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x223DE8A80](v29, -1, -1);
    MEMORY[0x223DE8A80](v28, -1, -1);
  }
}

uint64_t sub_22363FDB4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22372B408() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22372B7A8();

      sub_22372B078();
      v13 = sub_22372B7C8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22363FF64(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  v7 = a1;
  return v3(&v7, &v6);
}

uint64_t sub_22363FFA8(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_22363FFD8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22363FFE8(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2236400E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 320);
  v5 = *(*v2 + 296);
  v9 = *v2;
  v3[41] = a1;
  v3[42] = v1;

  sub_223640240(v5, type metadata accessor for IFSessionMetadata);
  if (v1)
  {
    v6 = sub_2236694F8;
    v7 = 0;
  }

  else
  {
    v7 = v3[39];
    v6 = sub_223640660;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_223640240(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2236402A0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F640, &unk_22372D770);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v37 = &v36 - v9;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v10 = sub_22372AC98();
  __swift_project_value_buffer(v10, qword_28132B680);

  v11 = sub_22372AC88();
  v12 = sub_22372B268();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v39[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_223623274(a1, a2, v39);
    _os_log_impl(&dword_223620000, v11, v12, "Creating a ChildRequestController for requestId: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x223DE8A80](v14, -1, -1);
    MEMORY[0x223DE8A80](v13, -1, -1);
  }

  v15 = a2;
  v16 = a1;
  v17 = sub_22372A768();
  v19 = v18;
  sub_22372A758();
  v20 = sub_22372A748();
  v21 = *(v3 + qword_28132A1E8);
  v22 = *(v3 + qword_28132A1D8);
  v23 = type metadata accessor for ChildRequestController();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v26 + 208) = 0;
  v27 = OBJC_IVAR____TtC24RequestDispatcherBridges22ChildRequestController_requestType;
  v28 = sub_223729F08();
  (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
  *(v26 + 112) = v16;
  *(v26 + 120) = v15;
  *(v26 + 128) = v17;
  *(v26 + 136) = v19;
  sub_2236241E8(v39, v26 + 144);
  *(v26 + 184) = v20;
  *(v26 + 192) = v21;
  *(v26 + 200) = v22;
  sub_22372A8E8();
  *&v39[0] = 0;
  *(&v39[0] + 1) = 0xE000000000000000;

  sub_22372B458();
  MEMORY[0x223DE7AD0](0xD00000000000004ALL, 0x8000000223736730);
  MEMORY[0x223DE7AD0](v16, v15);
  v29 = v37;
  sub_22372B188();
  v30 = sub_22372B1A8();
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  v31 = sub_22372A8B8();
  v32 = qword_28132B848;
  swift_beginAccess();
  v33 = *(v3 + v32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v3 + v32);
  *(v3 + v32) = 0x8000000000000000;
  sub_22362AAA4(v26, &off_2836C4478, v31, v16, v15, isUniquelyReferenced_nonNull_native);
  *(v3 + v32) = v38;
  swift_endAccess();
}

uint64_t sub_223640660()
{
  v1 = v0[39];
  v0[43] = swift_unknownObjectWeakLoadStrong();
  v0[44] = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_22363A79C, 0, 0);
}

uint64_t type metadata accessor for ChildRequestController()
{
  result = qword_28132AF78;
  if (!qword_28132AF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_223640724(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_2237319B0;
}

uint64_t sub_223640790()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2236407CC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_223640874(a1, v5, v4);
}

uint64_t sub_223640874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, ObjectType, a3);
}

void *sub_2236409A8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FA68, &qword_2237333C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FA70, &unk_2237333D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_223640AF0(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223640C20, v1, 0);
}

uint64_t sub_223640B8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223640AF0(a1);
}

uint64_t sub_223640C20()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
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

  v11 = v0[10];
  v10 = v0[11];

  sub_223623934(*(v10 + 192) + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestStateInfoManager, (v0 + 2));
  v12 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v13 = sub_223729D38();
  v15 = v14;
  v16 = *v12;
  v17 = *(v16 + 24);
  v18 = swift_task_alloc();
  v18[2] = v13;
  v18[3] = v15;
  v18[4] = v16;
  v19 = swift_task_alloc();
  *(v19 + 16) = sub_223641574;
  *(v19 + 24) = v18;
  os_unfair_lock_lock(v17 + 4);
  sub_223637034(v20);
  v22 = v0[11];
  v21 = v0[12];
  os_unfair_lock_unlock(v17 + 4);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v23 = *MEMORY[0x277D5CF30];
  v24 = sub_223729F08();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v21, v23, v24);
  (*(v25 + 56))(v21, 0, 1, v24);
  v26 = OBJC_IVAR____TtC24RequestDispatcherBridges22ChildRequestController_requestType;
  swift_beginAccess();
  sub_223641E48(v21, v22 + v26);
  swift_endAccess();

  v27 = v0[1];

  return v27();
}

void sub_223640F54(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v50 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F930, &qword_223733380);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v48 = &v47 - v12;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v13 = sub_22372AC98();
  v14 = __swift_project_value_buffer(v13, qword_28132B680);

  v49 = v14;
  v15 = sub_22372AC88();
  v16 = sub_22372B268();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v52[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_223623274(0x6575716552646461, 0xEE00293A5F287473, v52);
    *(v17 + 12) = 2080;
    v19 = v50;
    *(v17 + 14) = sub_223623274(v50, a2, v52);
    _os_log_impl(&dword_223620000, v15, v16, "%s addRequest: for requestId: %s ", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v18, -1, -1);
    MEMORY[0x223DE8A80](v17, -1, -1);
  }

  else
  {

    v19 = v50;
  }

  swift_beginAccess();
  v20 = *(a3 + 16);
  if (*(v20 + 16))
  {
    v21 = *(a3 + 16);

    v22 = sub_2236261A0(v19, a2);
    if (v23)
    {
      v24 = v22;
      v25 = *(v20 + 56);
      v26 = type metadata accessor for RequestState();
      v27 = *(v26 - 8);
      v28 = v25 + *(v27 + 72) * v24;
      v29 = v48;
      sub_22371C754(v28, v48);

      (*(v27 + 56))(v29, 0, 1, v26);
      sub_223626478(v29, &qword_27D08F930, &qword_223733380);
      v30 = sub_22372AC88();
      v31 = sub_22372B268();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v51[0] = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_223623274(0x6575716552646461, 0xEE00293A5F287473, v51);
        _os_log_impl(&dword_223620000, v30, v31, "%s: entry found", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        v34 = v33;
LABEL_13:
        MEMORY[0x223DE8A80](v34, -1, -1);
        MEMORY[0x223DE8A80](v32, -1, -1);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  v35 = type metadata accessor for RequestState();
  v36 = *(*(v35 - 8) + 56);
  v37 = v48;
  v36(v48, 1, 1, v35);
  sub_223626478(v37, &qword_27D08F930, &qword_223733380);
  v38 = *(v35 + 20);
  v39 = sub_22372A098();
  (*(*(v39 - 8) + 56))(&v10[v38], 1, 1, v39);
  *v10 = 1;
  v36(v10, 0, 1, v35);
  swift_beginAccess();

  sub_2236415AC(v10, v19, a2);
  swift_endAccess();

  v30 = sub_22372AC88();
  v40 = sub_22372B268();

  if (os_log_type_enabled(v30, v40))
  {
    v32 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v51[0] = v41;
    *v32 = 136315394;
    *(v32 + 4) = sub_223623274(0x6575716552646461, 0xEE00293A5F287473, v51);
    *(v32 + 12) = 2080;
    v42 = *(a3 + 16);

    v43 = sub_22372AF68();
    v45 = v44;

    v46 = sub_223623274(v43, v45, v51);

    *(v32 + 14) = v46;
    _os_log_impl(&dword_223620000, v30, v40, "%s: entry added. New self.requestIdToState: %s", v32, 0x16u);
    swift_arrayDestroy();
    v34 = v41;
    goto LABEL_13;
  }

LABEL_14:
}

uint64_t sub_2236415AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F930, &qword_223733380);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for RequestState();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v17 + 48))(a1, 1) == 1)
  {
    sub_223626478(a1, &qword_27D08F930, &qword_223733380);
    sub_223718EDC(a2, a3, type metadata accessor for RequestState, type metadata accessor for RequestState, sub_223637910, sub_2236601E8, v11);

    return sub_223626478(v11, &qword_27D08F930, &qword_223733380);
  }

  else
  {
    sub_223641828(a1, v16, type metadata accessor for RequestState);
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_223641890(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v22;
  }

  return result;
}

uint64_t sub_2236417C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_223641828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_223641890(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2236261A0(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for RequestState();
      return sub_223691154(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for RequestState);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_2236601E8();
    goto LABEL_7;
  }

  sub_223641A5C(v15, a4 & 1, type metadata accessor for RequestState, &unk_27D08EAF0, &unk_22372D7C0, type metadata accessor for RequestState);
  v22 = *v5;
  v23 = sub_2236261A0(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_22372B708();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_223641D9C(v12, a2, a3, a1, v18, type metadata accessor for RequestState, type metadata accessor for RequestState);
}

uint64_t sub_223641A5C(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v54 = a6;
  v9 = v6;
  v12 = a3(0);
  v51 = *(v12 - 8);
  v13 = *(v51 + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v53 = &v48 - v15;
  v16 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v17 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v52 = a2;
  result = sub_22372B588();
  v19 = result;
  if (*(v16 + 16))
  {
    v49 = v9;
    v50 = v16;
    v20 = 0;
    v21 = (v16 + 64);
    v22 = 1 << *(v16 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v16 + 64);
    v25 = (v22 + 63) >> 6;
    v26 = result + 64;
    while (v24)
    {
      v29 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_17:
      v32 = v29 | (v20 << 6);
      v33 = *(v16 + 56);
      v34 = (*(v16 + 48) + 16 * v32);
      v36 = *v34;
      v35 = v34[1];
      v37 = *(v51 + 72);
      v38 = v33 + v37 * v32;
      if (v52)
      {
        sub_2236378A8(v38, v53, v54);
      }

      else
      {
        sub_2236911BC(v38, v53, v54);
      }

      v39 = *(v19 + 40);
      sub_22372B7A8();
      sub_22372B078();
      result = sub_22372B7C8();
      v40 = -1 << *(v19 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v26 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v26 + 8 * v42);
          if (v46 != -1)
          {
            v27 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v41) & ~*(v26 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      v28 = (*(v19 + 48) + 16 * v27);
      *v28 = v36;
      v28[1] = v35;
      result = sub_2236378A8(v53, *(v19 + 56) + v37 * v27, v54);
      ++*(v19 + 16);
      v16 = v50;
    }

    v30 = v20;
    while (1)
    {
      v20 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v20 >= v25)
      {
        break;
      }

      v31 = v21[v20];
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v24 = (v31 - 1) & v31;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v9 = v49;
      goto LABEL_36;
    }

    v47 = 1 << *(v16 + 32);
    v9 = v49;
    if (v47 >= 64)
    {
      bzero(v21, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v47;
    }

    *(v16 + 16) = 0;
  }

LABEL_36:
  *v9 = v19;
  return result;
}

uint64_t sub_223641D9C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_2236378A8(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_223641E48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_223641EF8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F640, &unk_22372D770);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v35 - v8;
  result = sub_223642408(a1, sub_223643B10, 0);
  if (!v2)
  {
    v11 = 0;
    v12 = sub_223729D38();
    v14 = v13;
    if (v12 == sub_22372A708() && v14 == v15)
    {
    }

    else
    {
      v16 = sub_22372B6E8();

      if ((v16 & 1) == 0)
      {
        return result;
      }
    }

    v17 = 0;
    if (qword_281328E58 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v39 = v17;
      v18 = sub_22372AC98();
      __swift_project_value_buffer(v18, qword_28132B680);
      v19 = sub_22372AC88();
      v20 = sub_22372B268();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_223620000, v19, v20, "Posting RequestCompletedMessage for all child requests", v21, 2u);
        MEMORY[0x223DE8A80](v21, -1, -1);
      }

      v36 = v9;

      v22 = sub_223642834();
      v11 = v22;
      v37 = *(v22 + 16);
      if (!v37)
      {
        break;
      }

      v9 = 0;
      v24 = (v22 + 40);
      while (v9 < *(v11 + 16))
      {
        v25 = *(v24 - 1);
        v26 = *v24;
        MEMORY[0x28223BE20](v22, v23);
        *(&v35 - 4) = v3;
        *(&v35 - 3) = v27;
        *(&v35 - 2) = v26;
        objc_allocWithZone(sub_223728498());

        v28 = sub_223728488();
        if (!v28)
        {

          type metadata accessor for RequestControllerBridgeInternalErrors(0);
          sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
          swift_allocError();
          *v34 = 0xD000000000000017;
          v34[1] = 0x8000000223737390;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }

        v29 = v28;
        sub_22372A758();
        __swift_project_boxed_opaque_existential_1(v38, v38[3]);
        sub_223729D88();
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        v30 = v39;
        sub_223642C1C(v29, sub_223643350, 0);
        if (v30)
        {
        }

        v39 = 0;
        ++v9;

        v24 += 2;
        if (v37 == v9)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_23:
      swift_once();
      v17 = v11;
    }

LABEL_15:

    if (*(v3 + qword_28132A1F8) == 1)
    {
      v31 = sub_22372B1A8();
      v32 = v36;
      (*(*(v31 - 8) + 56))(v36, 1, 1, v31);
      v33 = swift_allocObject();
      v33[2] = 0;
      v33[3] = 0;
      v33[4] = v3;

      sub_223667A54(0, 0, v32, &unk_223731EE0, v33);
    }
  }

  return result;
}

uint64_t sub_2236423B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_223642408(void *a1, uint64_t a2, uint64_t a3)
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
      *(v21 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223737400, &v39);
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

uint64_t sub_223642834()
{
  v1 = v0;
  v2 = qword_28132B848;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = *(v1 + v2);

  v10 = 0;
  for (i = MEMORY[0x277D84F90]; v6; *(v23 + 40) = v14)
  {
LABEL_11:
    while (1)
    {
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = (*(v3 + 48) + ((v10 << 10) | (16 * v12)));
      v15 = *v13;
      v14 = v13[1];

      if (v15 != sub_22372A768() || v14 != v16)
      {
        break;
      }

LABEL_6:

      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v18 = sub_22372B6E8();

    if (v18)
    {
      goto LABEL_6;
    }

    v19 = i;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2236387B4(0, *(i + 16) + 1, 1);
      v19 = i;
    }

    v21 = *(v19 + 16);
    v20 = *(v19 + 24);
    v22 = v21 + 1;
    if (v21 >= v20 >> 1)
    {
      result = sub_2236387B4((v20 > 1), v21 + 1, 1);
      v22 = v21 + 1;
      v19 = i;
    }

    *(v19 + 16) = v22;
    i = v19;
    v23 = v19 + 16 * v21;
    *(v23 + 32) = v15;
  }

LABEL_7:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return i;
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_223642A20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = *MEMORY[0x277D5CDE8];
  v11 = sub_223729DE8();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v9, v10, v11);
  (*(v12 + 56))(v9, 0, 1, v11);
  sub_223729D08();
  sub_22372A728();
  sub_223729CF8();
  sub_22372A778();
  v13 = sub_223727408();
  (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
  sub_223729D28();

  return sub_223729D18();
}

uint64_t sub_223642C10()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_223642A20();
}

id sub_223642C1C(void *a1, uint64_t a2, uint64_t a3)
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
      *(v21 + 4) = sub_223623274(0xD000000000000017, 0x8000000223737390, &v39);
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

uint64_t sub_22364304C()
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

  return sub_223643108(v2, v3, v4, v5, v6);
}

uint64_t sub_223643108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_223643130, 0, 0);
}

uint64_t sub_223643130()
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
    *(v4 + 4) = sub_223623274(0xD000000000000017, 0x8000000223737390, &v14);
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

void *sub_223643350(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731F00;
}

uint64_t sub_2236433C0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_223643468(a1, v5, v4);
}

uint64_t sub_223643468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 128);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, ObjectType, a3);
}

uint64_t sub_22364359C()
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

  return sub_22364370C(v2, v3, v4, v5, v6);
}

uint64_t sub_223643658(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236436EC(a1);
}

uint64_t sub_2236436EC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_223643954, v1, 0);
}

uint64_t sub_22364370C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_223643734, 0, 0);
}

uint64_t sub_223643734()
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
    *(v4 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223737400, &v14);
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

uint64_t sub_223643954()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
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

  v10 = v0[2];
  v11 = v0[3];

  *(v11 + 208) = 1;
  v12 = *(v11 + 200);
  v13 = *(v11 + 128);
  v14 = *(v11 + 136);
  sub_223729D38();
  sub_223643E0C();

  v15 = v0[1];

  return v15();
}

void *sub_223643B10(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731F20;
}

uint64_t sub_223643B7C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_223624EA4;

  return sub_223643C24(a1, v5, v4);
}

uint64_t sub_223643C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 136);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_223624EA4;

  return v11(a1, ObjectType, a3);
}

uint64_t sub_223643D58(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223643DEC(a1);
}

uint64_t sub_223643DEC(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2236446F8, v1, 0);
}

void sub_223643E0C()
{
  v1 = v0;
  v2 = *(v0 + 24);
  v3 = sub_22372A868();
  if (v3)
  {
    v4 = v3;
    v5 = sub_22372A888();
    if (v5)
    {
      v6 = v5;
      v7 = [objc_allocWithZone(MEMORY[0x277D59840]) init];
      v8 = v7;
      if (v7)
      {
        [v7 setExists_];
      }

      v9 = [objc_allocWithZone(MEMORY[0x277D59838]) init];
      v16 = v9;
      if (v9)
      {
        [v9 setSubRequestId:v6];
        v9 = v16;
      }

      [v9 setEnded:v8];
      [v4 setSubRequestContext_];
      [*(v1 + 16) emitMessage_];
    }

    else
    {
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v13 = sub_22372AC98();
      __swift_project_value_buffer(v13, qword_28132B680);
      v16 = sub_22372AC88();
      v14 = sub_22372B278();
      if (os_log_type_enabled(v16, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_223620000, v16, v14, "The subRequestId is not a valid UUID, will not emit for logChildRequestEnded", v15, 2u);
        MEMORY[0x223DE8A80](v15, -1, -1);
      }
    }
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v10 = sub_22372AC98();
    __swift_project_value_buffer(v10, qword_28132B680);
    v16 = sub_22372AC88();
    v11 = sub_22372B278();
    if (os_log_type_enabled(v16, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_223620000, v16, v11, "Could not build wrapper when logging logChildRequestEnded", v12, 2u);
      MEMORY[0x223DE8A80](v12, -1, -1);
    }
  }
}

uint64_t sub_2236440A0()
{
  v0 = *sub_2236440F4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2236440F4()
{
  v0 = sub_22372A788();
  v1 = *(v0 + qword_28132A200 + 8);

  v2 = *(v0 + qword_28132A1E8);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28132A1A0));
  v3 = *(v0 + qword_28132A1D8);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28132A1C0));

  v4 = *(v0 + qword_28132A208);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28132A1F0));
  sub_223626478(v0 + qword_28132B8A8, &unk_27D08E990, &qword_22372FCF0);
  v5 = *(v0 + qword_28132B848);

  sub_223626478(v0 + qword_28132B858, &unk_27D08F6F0, &qword_223732CD0);
  v6 = *(v0 + qword_28132B878);

  sub_223626478(v0 + qword_28132B888, &qword_27D08E9D0, &qword_22372D1E0);
  sub_223626478(v0 + qword_28132B898, &unk_27D08F700, &qword_223731D88);
  v7 = *(v0 + qword_28132B880);

  v8 = *(v0 + qword_28132B870);

  v9 = *(v0 + qword_28132B8C0);

  v10 = *(v0 + qword_28132B8B8);

  v11 = *(v0 + qword_28132B830);

  v12 = *(v0 + qword_28132B850);

  v13 = *(v0 + qword_28132B838);

  v14 = *(v0 + qword_28132B868 + 8);

  v15 = *(v0 + qword_28132B840);

  return v0;
}

uint64_t sub_223644304()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_22364433C()
{
  sub_223644370();

  return swift_deallocClassInstance();
}

uint64_t sub_223644370()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  return v0;
}

uint64_t sub_2236443D0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_223644408()
{
  v1 = v0[15];

  v2 = v0[17];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
  v3 = v0[23];
  swift_unknownObjectRelease();
  v4 = v0[24];

  v5 = v0[25];

  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges22ChildRequestController_requestType, &qword_27D08E9D0, &qword_22372D1E0);
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_223644488()
{
  sub_2236444E0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2236444E0()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId;
  v3 = sub_223727408();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userId;
  v5 = sub_22372A548();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_223644698(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userInput, type metadata accessor for RequestInfo.UserInput);
  v6 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_aceCommands);

  v7 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_responseList);

  sub_223644698(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_route, type metadata accessor for RequestInfo.RequestRoute);
  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_ongoingExecutionSource, &unk_27D08E9C0, &qword_223731E30);
  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_systemResponseSource, &unk_27D08E9C0, &qword_223731E30);
  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_siriXRedirectContext, &qword_27D08F760, &qword_223731DD0);
  v8 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_nlRoutingDecision;
  v9 = sub_2237287C8();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t sub_223644698(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2236446F8()
{
  v38 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B680);
  v4 = v2;

  v5 = sub_22372AC88();
  v6 = sub_22372B268();

  v7 = &unk_28132B000;
  if (os_log_type_enabled(v5, v6))
  {
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    v13 = *(v8 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v37 = v12;
    v14 = 0x8000000223734360;
    v15 = 0xD00000000000001FLL;
    v16 = 0x6C616E6946707274;
    v17 = 0xEC00000064657A69;
    if (v13 != 3)
    {
      v16 = 0xD000000000000010;
      v17 = 0x8000000223734390;
    }

    if (v13 != 2)
    {
      v15 = v16;
      v14 = v17;
    }

    v18 = 0x6E69766965636572;
    v19 = 0xED00007350525467;
    if (!v13)
    {
      v18 = 0x696C616974696E69;
      v19 = 0xEB0000000064657ALL;
    }

    if (v13 <= 1)
    {
      v20 = v18;
    }

    else
    {
      v20 = v15;
    }

    if (v13 <= 1)
    {
      v21 = v19;
    }

    else
    {
      v21 = v14;
    }

    v22 = v12;
    v23 = *(v0 + 40);
    v24 = sub_223623274(v20, v21, &v37);

    *(v10 + 14) = v24;
    _os_log_impl(&dword_223620000, v5, v6, "Received %@ when state: %s", v10, 0x16u);
    sub_223626478(v11, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x223DE8A80](v22, -1, -1);
    MEMORY[0x223DE8A80](v10, -1, -1);

    v7 = &unk_28132B000;
  }

  else
  {
  }

  v25 = *(v0 + 48);
  v26 = v7[311];
  v27 = *(v25 + v26);
  if (v27 >= 4)
  {
  }

  else
  {
    v28 = sub_22372B6E8();

    if ((v28 & 1) == 0)
    {
      v29 = *(v0 + 48);
      sub_223644B14();
      v30 = __swift_project_boxed_opaque_existential_1((v29 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_promptStateManager), *(v29 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_promptStateManager + 24));
      v31 = v29 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
      swift_beginAccess();
      v32 = *(v31 + 5);
      v33 = *(v31 + 4);
      v34 = *v30;
      sub_223644DFC(v32, (v33 & 1) == 0);
      *(v25 + v26) = 4;
    }
  }

  v35 = *(v0 + 8);

  return v35();
}

void sub_223644B14()
{
  v1 = (v0 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context);
  swift_beginAccess();
  if ((v1[2] & 1) != 0 || (*v1 & 1) == 0 && v1[1] != 1)
  {
    return;
  }

  v2 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state;
  if (*(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u && !*(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
  {
LABEL_9:

    goto LABEL_11;
  }

  v3 = sub_22372B6E8();

  if ((v3 & 1) == 0)
  {
    if (*(v0 + v2) > 1u || !*(v0 + v2))
    {
      v4 = sub_22372B6E8();

      if ((v4 & 1) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_11:
  v5 = v0;
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
    *v9 = 0;
    _os_log_impl(&dword_223620000, v7, v8, "Triggering log redaction as request is going to completion before stoppedListeningForContinuation", v9, 2u);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  v10 = *(v5 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_instrumentationUtil);
  sub_2236C495C(5, *(v5 + 112), *(v5 + 120));
}

void sub_223644DFC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v3 = sub_22372AC98();
    __swift_project_value_buffer(v3, qword_28132B680);
    v10 = sub_22372AC88();
    v4 = sub_22372B268();
    if (os_log_type_enabled(v10, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_223620000, v10, v4, "Not changing PromptState because request is in candidate phase", v5, 2u);
      MEMORY[0x223DE8A80](v5, -1, -1);
    }
  }

  else
  {
    v6 = *(v2 + 16);
    v7 = MEMORY[0x28223BE20](a1, a2);
    MEMORY[0x28223BE20](v7, v8);
    os_unfair_lock_lock(v6 + 4);
    sub_22363107C(v9);
    os_unfair_lock_unlock(v6 + 4);
  }
}

void sub_223644FB0(uint64_t a1, char a2, char a3)
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
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315906;
    *(v9 + 4) = sub_223623274(0xD00000000000003DLL, 0x8000000223736640, &v16);
    *(v9 + 12) = 2080;
    v11 = 0xEA00000000007470;
    v12 = 0x6D6F72506C6C6977;
    if (*(a1 + 24) != 1)
    {
      v12 = 0xD000000000000016;
      v11 = 0x8000000223734320;
    }

    if (*(a1 + 24))
    {
      v13 = v12;
    }

    else
    {
      v13 = 0x706D6F7250746F6ELL;
    }

    if (*(a1 + 24))
    {
      v14 = v11;
    }

    else
    {
      v14 = 0xEC000000676E6974;
    }

    v15 = sub_223623274(v13, v14, &v16);

    *(v9 + 14) = v15;
    *(v9 + 22) = 1024;
    *(v9 + 24) = a2 & 1;
    *(v9 + 28) = 1024;
    *(v9 + 30) = a3 & 1;
    _os_log_impl(&dword_223620000, v7, v8, "%s PromptState: %s, isEmptySpeech: %{BOOL}d, isCandidateRequest:%{BOOL}d", v9, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v10, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  else
  {
  }

  if (*(a1 + 24) >= 2u)
  {
    *(a1 + 24) = a2 & 1;
    sub_22363A1EC(2);
  }
}

uint64_t sub_223645208()
{
  sub_223645244();

  return swift_defaultActor_deallocate();
}

uint64_t sub_223645244()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  v3 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_sessionId;
  v4 = sub_223727408();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_serviceHelper);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher));
  v6 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_prevRequestId + 8);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_ttManagerProxy));
  v7 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_requestControllerMitigationHandler);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_activationHelper));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_promptStateManager));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_requestStateManager));
  sub_22362CB14(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_contextRetrievalHelper);
  v8 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_queryDecorationClient);

  sub_2236453C4(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context, type metadata accessor for RootRequestController.RequestContext);
  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_requestType, &qword_27D08E9D0, &qword_22372D1E0);

  v9 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_instrumentationUtil);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2236453C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_223645424(uint64_t *a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_223624EA4;

  return sub_2236454E8(a1, v7, v6, a2);
}

uint64_t sub_2236454E8(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4)
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
  v11[1] = sub_223624F98;

  return v13(v9, v8);
}

uint64_t sub_223645624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *(*(type metadata accessor for IntelligenceFlowSessionBridge.Error(0) - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v3[3] = v6;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_223649A90;

  return sub_2236457C4(a1, v6);
}

uint64_t sub_2236456FC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2236242EC;

  return sub_223645624(a1, v2, a2);
}

uint64_t sub_2236457C4(uint64_t a1, uint64_t a2)
{
  v3[39] = v2;
  v3[40] = a2;
  v3[38] = a1;
  v4 = type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  v3[41] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v6 = sub_22372A548();
  v3[43] = v6;
  v7 = *(v6 - 8);
  v3[44] = v7;
  v8 = *(v7 + 64) + 15;
  v3[45] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EC08, &qword_22372E0D0);
  v3[46] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EDA8, &qword_22372E738) - 8) + 64) + 15;
  v3[48] = swift_task_alloc();
  v12 = sub_22372A3B8();
  v3[49] = v12;
  v13 = *(v12 - 8);
  v3[50] = v13;
  v14 = *(v13 + 64) + 15;
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2236459A0, v2, 0);
}

uint64_t sub_2236459A0()
{
  v57 = v0;
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[48];
  v4 = v0[39];
  v5 = OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_conversationSessionInfo;
  swift_beginAccess();
  sub_223634890(v4 + v5, v3, &qword_27D08EDA8, &qword_22372E738);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_223626478(v0[48], &qword_27D08EDA8, &qword_22372E738);
    if (qword_281328E50 != -1)
    {
LABEL_28:
      swift_once();
    }

    v6 = v0[38];
    v7 = sub_22372AC98();
    __swift_project_value_buffer(v7, qword_28132B668);
    v8 = v6;
    v9 = sub_22372AC88();
    v10 = sub_22372B268();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[38];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v11;
      *v13 = v11;
      v14 = v11;
      _os_log_impl(&dword_223620000, v9, v10, "No ConversationSessionInfo. Ignoring %@", v12, 0xCu);
      sub_223626478(v13, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v13, -1, -1);
      MEMORY[0x223DE8A80](v12, -1, -1);
    }

    goto LABEL_20;
  }

  v15 = v0[39];
  (*(v0[50] + 32))(v0[51], v0[48], v0[49]);
  v16 = OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_externalAgentEventPublishers;
  swift_beginAccess();
  v17 = *(v15 + v16);
  v18 = *(v17 + 16);

  if (!v18)
  {
LABEL_15:

    if (qword_281328E50 != -1)
    {
      swift_once();
    }

    v28 = v0[38];
    v29 = sub_22372AC98();
    __swift_project_value_buffer(v29, qword_28132B668);
    v30 = v28;
    v31 = sub_22372AC88();
    v32 = sub_22372B278();

    v33 = os_log_type_enabled(v31, v32);
    v35 = v0[50];
    v34 = v0[51];
    v36 = v0[49];
    if (v33)
    {
      v37 = v0[38];
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v56 = v39;
      *v38 = 136446210;
      v40 = sub_223729D38();
      v42 = sub_223623274(v40, v41, &v56);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_223620000, v31, v32, "Not publishing external agent outcome. Unexpected bridge state: external agent event publisher not found for request: %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x223DE8A80](v39, -1, -1);
      MEMORY[0x223DE8A80](v38, -1, -1);
    }

    (*(v35 + 8))(v34, v36);
LABEL_20:
    v43 = v0[51];
    v44 = v0[47];
    v45 = v0[48];
    v46 = v0[45];
    v47 = v0[42];

    v48 = v0[1];

    return v48();
  }

  v19 = 0;
  v20 = v17 + 32;
  while (1)
  {
    if (v19 >= *(v17 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    v21 = v0[38];
    sub_223623934(v20, (v0 + 2));
    v22 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v24 = v22[5];
    v23 = v22[6];

    if (v24 == sub_223729D38() && v23 == v25)
    {
      break;
    }

    v27 = sub_22372B6E8();

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    if (v27)
    {
      goto LABEL_24;
    }

    ++v19;
    v20 += 40;
    if (v18 == v19)
    {
      goto LABEL_15;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
LABEL_24:
  v50 = v0[39];

  swift_beginAccess();
  sub_223646508(v19, (v0 + 7));
  swift_endAccess();
  v0[52] = *(v50 + 112);
  v51 = *(v50 + 120);
  v0[53] = v51;
  v0[54] = swift_getObjectType();
  v52 = *(v51 + 32);
  v51 += 32;
  v0[55] = v52;
  v0[56] = v51 & 0xFFFFFFFFFFFFLL | 0x156A000000000000;
  v53 = *(v51 - 24);
  v55 = sub_22372B168();

  return MEMORY[0x2822009F8](sub_2236465A4, v55, v54);
}

void sub_223645F40()
{
  v1 = v0;
  v2 = sub_223727408();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v8 = sub_22372AC98();
  __swift_project_value_buffer(v8, qword_28132B680);
  v9 = sub_22372AC88();
  v10 = sub_22372B268();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v40 = v1;
    v12 = v2;
    v13 = v11;
    v14 = swift_slowAlloc();
    v42 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_223623274(0xD000000000000021, 0x8000000223736B10, &v42);
    _os_log_impl(&dword_223620000, v9, v10, "%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x223DE8A80](v14, -1, -1);
    v15 = v13;
    v2 = v12;
    v1 = v40;
    MEMORY[0x223DE8A80](v15, -1, -1);
  }

  sub_223729D58();
  v16 = *(v1 + qword_28132AB08);
  if (!v16)
  {
    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
    v25 = swift_allocError();
    (*(v3 + 16))(v26, v7, v2);
    swift_storeEnumTagMultiPayload();
    v41 = v25;
    swift_willThrow();
LABEL_13:
    (*(v3 + 8))(v7, v2);
    return;
  }

  v17 = v2;
  v18 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_sessionId;
  v19 = *(v1 + qword_28132AB08);

  if ((sub_2237273D8() & 1) == 0)
  {
    v40 = type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
    v41 = swift_allocError();
    v28 = v27;
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F648, &qword_2237317B8) + 48);
    v30 = *(v3 + 16);
    v31 = v16 + v18;
    v2 = v17;
    v30(v28, v31, v17);
    v30(v28 + v29, v7, v17);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_13;
  }

  (*(v3 + 8))(v7, v17);
  v20 = *(v16 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_isSystemAssistantExperienceEnabled);
  v21 = sub_22372AC88();
  v22 = sub_22372B268();
  v23 = os_log_type_enabled(v21, v22);
  if (v20)
  {
    if (v23)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_223620000, v21, v22, "SAE enabled. Not dispatching Request Completed message to RequestProcessor as this is not the terminal message", v24, 2u);
      MEMORY[0x223DE8A80](v24, -1, -1);
    }
  }

  else
  {
    if (v23)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_223620000, v21, v22, "SAE disabled. Dispatching Request Completed message to RequestProcessor", v32, 2u);
      MEMORY[0x223DE8A80](v32, -1, -1);
    }

    v33 = sub_223729D38();
    v35 = sub_2236C18BC(v33, v34);

    if (v35)
    {
      type metadata accessor for RequestControllerBridgeRequestProcessor();
      sub_223728498();

      sub_22372A6B8();
    }

    else
    {
      type metadata accessor for RequestControllerBridgeInternalErrors(0);
      sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
      v36 = swift_allocError();
      v38 = v37;
      *v37 = sub_223729D38();
      v38[1] = v39;
      swift_storeEnumTagMultiPayload();
      v41 = v36;
      swift_willThrow();
    }
  }
}

uint64_t sub_223646508@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2236F1DB0(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[5 * a1];
    sub_2236241E8(v9 + 2, a2);
    result = memmove(v9 + 2, v9 + 72, 40 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2236465A4()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 416);
  v3 = *(v0 + 312);
  (*(v0 + 440))(*(v0 + 432), *(v0 + 424));

  return MEMORY[0x2822009F8](sub_22364661C, v3, 0);
}

uint64_t sub_22364661C()
{
  v1 = *(v0 + 288);
  *(v0 + 456) = v1;
  if (v1)
  {
    v2 = *(MEMORY[0x277D857D0] + 4);
    v3 = swift_task_alloc();
    *(v0 + 464) = v3;
    v4 = type metadata accessor for SessionClientBox(0);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
    *(v0 + 472) = v5;
    *v3 = v0;
    v3[1] = sub_223646A08;
    v6 = MEMORY[0x277D84950];

    return MEMORY[0x282200440](v0 + 272, v1, v4, v5, v6);
  }

  else
  {
    if (qword_281328E50 != -1)
    {
      swift_once();
    }

    v7 = sub_22372AC98();
    __swift_project_value_buffer(v7, qword_28132B668);
    v8 = sub_22372AC88();
    v9 = sub_22372B268();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_223620000, v8, v9, "Postponing publishing external agent outcome", v10, 2u);
      MEMORY[0x223DE8A80](v10, -1, -1);
    }

    v11 = *(v0 + 312);

    sub_223623934(v0 + 56, v0 + 96);
    v12 = OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_postponedExternalAgentEventPublishers;
    swift_beginAccess();
    v13 = *(v11 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_2236409A8(0, v13[2] + 1, 1, v13);
      *(v11 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      *(v11 + v12) = sub_2236409A8((v15 > 1), v16 + 1, 1, v13);
    }

    v17 = *(v0 + 400);
    v35 = *(v0 + 392);
    v36 = *(v0 + 408);
    v18 = *(v0 + 120);
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 96, v18);
    v20 = *(v18 - 8);
    v21 = *(v20 + 64) + 15;
    v22 = swift_task_alloc();
    (*(v20 + 16))(v22, v19, v18);
    *(v0 + 160) = &type metadata for ExternalAgentEventPublisher;
    *(v0 + 168) = &off_2836C4310;
    v23 = swift_allocObject();
    *(v0 + 136) = v23;
    *(v23 + 16) = *v22;
    v25 = *(v22 + 32);
    v24 = *(v22 + 48);
    v26 = *(v22 + 16);
    *(v23 + 80) = *(v22 + 64);
    *(v23 + 48) = v25;
    *(v23 + 64) = v24;
    *(v23 + 32) = v26;
    v27 = *(v11 + v12);
    *(v27 + 16) = v16 + 1;
    sub_2236241E8((v0 + 136), v27 + 40 * v16 + 32);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));

    *(v11 + v12) = v27;
    swift_endAccess();
    (*(v17 + 8))(v36, v35);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    v28 = *(v0 + 408);
    v29 = *(v0 + 376);
    v30 = *(v0 + 384);
    v31 = *(v0 + 360);
    v32 = *(v0 + 336);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_223646A08()
{
  v1 = *(*v0 + 464);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_223646B04, 0, 0);
}

uint64_t sub_223646B04()
{
  v1 = *(v0 + 272);
  if (*(v0 + 280))
  {
    v2 = *(v0 + 472);
    v3 = *(v0 + 368);
    v4 = *(v0 + 376);
    v5 = *(v0 + 328);
    *(v0 + 296) = v1;
    swift_dynamicCast();
  }

  else
  {
    v6 = *(v0 + 368);
    **(v0 + 376) = v1;
  }

  swift_storeEnumTagMultiPayload();
  v7 = *(v0 + 368);
  v8 = *(v0 + 376);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(v0 + 456);
  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(v0 + 336);
    v13 = *(v0 + 312);
    v12 = *(v0 + 320);
    sub_22366E5FC(v8, v11);
    sub_2236750B0(v11, v12);
    sub_223674BEC(&unk_281329528, type metadata accessor for IntelligenceFlowSessionBridge.Error);
    swift_willThrowTypedImpl();

    sub_223675114(v11);
    v14 = sub_223673A10;
    v15 = v13;
  }

  else
  {
    v16 = *(v0 + 312);
    v17 = *(v0 + 456);

    *(v0 + 480) = *v8;
    v14 = sub_2236737C4;
    v15 = v16;
  }

  return MEMORY[0x2822009F8](v14, v15, 0);
}

uint64_t sub_223646C78(uint64_t a1, uint64_t a2)
{
  v3[36] = a2;
  v3[37] = v2;
  v3[35] = a1;
  v4 = sub_22372AE58();
  v3[38] = v4;
  v5 = *(v4 - 8);
  v3[39] = v5;
  v6 = *(v5 + 64) + 15;
  v3[40] = swift_task_alloc();
  v7 = *(*(sub_223727C58() - 8) + 64) + 15;
  v3[41] = swift_task_alloc();
  v8 = sub_223727408();
  v3[42] = v8;
  v9 = *(v8 - 8);
  v3[43] = v9;
  v10 = *(v9 + 64) + 15;
  v3[44] = swift_task_alloc();
  v11 = sub_223727D38();
  v3[45] = v11;
  v12 = *(v11 - 8);
  v3[46] = v12;
  v13 = *(v12 + 64) + 15;
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v14 = sub_22372A098();
  v3[52] = v14;
  v15 = *(v14 - 8);
  v3[53] = v15;
  v16 = *(v15 + 64) + 15;
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v17 = sub_22372A1B8();
  v3[56] = v17;
  v18 = *(v17 - 8);
  v3[57] = v18;
  v19 = *(v18 + 64) + 15;
  v3[58] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E4F0, &qword_22372C958) - 8) + 64) + 15;
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v21 = sub_22372A3C8();
  v3[61] = v21;
  v22 = *(v21 - 8);
  v3[62] = v22;
  v23 = *(v22 + 64) + 15;
  v3[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223646FB4, 0, 0);
}

uint64_t sub_223646FB4()
{
  v104 = v0;
  v2 = *(v0 + 496);
  v1 = *(v0 + 504);
  v3 = *(v0 + 488);
  v4 = *(v0 + 296);
  v5 = *(v0 + 280);
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v7 = *MEMORY[0x277D5D1E0];
  v8 = *(v2 + 104);
  *(v0 + 512) = v8;
  *(v0 + 520) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v1, v7, v3);
  sub_22372A4C8();
  v9 = *(v2 + 8);
  *(v0 + 528) = v9;
  *(v0 + 536) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v3);
  if (*(v0 + 232))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E510, &qword_22372C978);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v0 + 120) = 0;
      *(v0 + 104) = 0u;
      *(v0 + 88) = 0u;
    }
  }

  else
  {
    sub_223626478(v0 + 208, &unk_27D08F750, &qword_22372C960);
    *(v0 + 88) = 0u;
    *(v0 + 104) = 0u;
    *(v0 + 120) = 0;
  }

  sub_223634890(v0 + 88, v0 + 168, &qword_27D08E500, &qword_22372C968);
  if (!*(v0 + 192))
  {
    sub_223626478(v0 + 168, &qword_27D08E500, &qword_22372C968);
    if (qword_281328E50 != -1)
    {
      swift_once();
    }

    v30 = sub_22372AC98();
    __swift_project_value_buffer(v30, qword_28132B668);
    v31 = sub_22372AC88();
    v32 = sub_22372B278();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_223620000, v31, v32, "No transcript events to send to IF", v33, 2u);
      MEMORY[0x223DE8A80](v33, -1, -1);
    }

    goto LABEL_29;
  }

  v10 = *(v0 + 472);
  v11 = *(v0 + 480);
  v12 = *(v0 + 448);
  v13 = *(v0 + 456);
  v14 = *(v0 + 296);
  sub_2236241E8((v0 + 168), v0 + 128);
  v15 = *(v0 + 160);
  __swift_project_boxed_opaque_existential_1((v0 + 128), *(v0 + 152));
  v16 = sub_22372A468();
  *(swift_task_alloc() + 16) = v14;
  sub_223647A14(sub_223647BE8, v16, v11);

  sub_223634890(v11, v10, &unk_27D08E4F0, &qword_22372C958);
  v17 = (*(v13 + 48))(v10, 1, v12);
  v18 = *(v0 + 472);
  if (v17 == 1)
  {
    sub_223626478(*(v0 + 472), &unk_27D08E4F0, &qword_22372C958);
    if (qword_281328E50 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 296);
    v20 = sub_22372AC98();
    __swift_project_value_buffer(v20, qword_28132B668);
    sub_22364DE84(v19, v0 + 16);
    v21 = sub_22372AC88();
    v22 = sub_22372B278();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 480);
    if (v23)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v103[0] = v26;
      *v25 = 136315138;
      v27 = *(v0 + 56);
      v28 = *(v0 + 64);

      sub_22364DEBC(v0 + 16);
      v29 = sub_223623274(v27, v28, v103);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_223620000, v21, v22, "Could not find a RequestSummary for requestId: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x223DE8A80](v26, -1, -1);
      MEMORY[0x223DE8A80](v25, -1, -1);
    }

    else
    {

      sub_22364DEBC(v0 + 16);
    }

    v67 = v24;
LABEL_28:
    sub_223626478(v67, &unk_27D08E4F0, &qword_22372C958);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
LABEL_29:
    v76 = *(v0 + 504);
    v78 = *(v0 + 472);
    v77 = *(v0 + 480);
    v79 = *(v0 + 464);
    v81 = *(v0 + 432);
    v80 = *(v0 + 440);
    v82 = *(v0 + 400);
    v83 = *(v0 + 408);
    v84 = *(v0 + 392);
    v96 = *(v0 + 384);
    v97 = *(v0 + 376);
    v98 = *(v0 + 352);
    v99 = *(v0 + 328);
    v101 = *(v0 + 320);
    sub_223626478(v0 + 88, &qword_27D08E500, &qword_22372C968);

    v85 = *(v0 + 8);

    return v85();
  }

  v34 = *(v0 + 440);
  v36 = *(v0 + 424);
  v35 = *(v0 + 432);
  v37 = *(v0 + 416);
  (*(*(v0 + 456) + 32))(*(v0 + 464), *(v0 + 472), *(v0 + 448));
  sub_22372A0A8();
  (*(v36 + 32))(v35, v34, v37);
  if ((*(v36 + 88))(v35, v37) != *MEMORY[0x277D5D010])
  {
    (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));
    if (qword_281328E50 != -1)
    {
      swift_once();
    }

    v68 = sub_22372AC98();
    __swift_project_value_buffer(v68, qword_28132B668);
    v69 = sub_22372AC88();
    v70 = sub_22372B268();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_223620000, v69, v70, "RequestSummary is not SiriX, we need not write this data back to the Transcript", v71, 2u);
      MEMORY[0x223DE8A80](v71, -1, -1);
    }

    v72 = *(v0 + 480);
    v74 = *(v0 + 456);
    v73 = *(v0 + 464);
    v75 = *(v0 + 448);

    (*(v74 + 8))(v73, v75);
    v67 = v72;
    goto LABEL_28;
  }

  v38 = *(v0 + 464);
  v39 = *(v0 + 408);
  v40 = *(v0 + 344);
  v41 = *(v0 + 352);
  v43 = *(v0 + 328);
  v42 = *(v0 + 336);
  v44 = *(v0 + 288);
  v45 = *(v0 + 296);
  v46 = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_intelligenceFlowSessionID;
  *(v0 + 544) = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_intelligenceFlowSessionID;
  v47 = *(v40 + 16);
  *(v0 + 552) = v47;
  *(v0 + 560) = (v40 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v47(v41, v44 + v46, v42);
  *(v0 + 568) = *(v45 + 56);
  *(v0 + 576) = *(v45 + 64);

  sub_223647C78(v43);
  sub_223727D28();
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v48 = *(v0 + 400);
  v49 = *(v0 + 408);
  v50 = *(v0 + 360);
  v51 = *(v0 + 368);
  v52 = sub_22372AC98();
  *(v0 + 584) = __swift_project_value_buffer(v52, qword_28132B668);
  v53 = *(v51 + 16);
  *(v0 + 592) = v53;
  *(v0 + 600) = (v51 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v53(v48, v49, v50);
  v54 = sub_22372AC88();
  v55 = sub_22372B268();
  v56 = os_log_type_enabled(v54, v55);
  v57 = *(v0 + 400);
  if (v56)
  {
    v58 = *(v0 + 392);
    v60 = *(v0 + 360);
    v59 = *(v0 + 368);
    v61 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v103[0] = v100;
    *v61 = 136315138;
    v53(v58, v57, v60);
    v62 = sub_22372B038();
    v64 = v63;
    v65 = *(v59 + 8);
    v65(v57, v60);
    v66 = sub_223623274(v62, v64, v103);

    *(v61 + 4) = v66;
    _os_log_impl(&dword_223620000, v54, v55, "Sending ExternalAgentRequest to IntelligenceFlow: %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v100);
    MEMORY[0x223DE8A80](v100, -1, -1);
    MEMORY[0x223DE8A80](v61, -1, -1);
  }

  else
  {
    v87 = *(v0 + 360);
    v88 = *(v0 + 368);

    v65 = *(v88 + 8);
    v65(v57, v87);
  }

  *(v0 + 608) = v65;
  v89 = *(v0 + 288);
  v90 = v89[5];
  v91 = v89[6];
  __swift_project_boxed_opaque_existential_1(v89 + 2, v90);
  v92 = *(v91 + 40);
  v102 = (v92 + *v92);
  v93 = v92[1];
  v94 = swift_task_alloc();
  *(v0 + 616) = v94;
  *v94 = v0;
  v94[1] = sub_223648580;
  v95 = *(v0 + 408);

  return v102(v95, v90, v91);
}

uint64_t sub_223647A14@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v25 = a1;
  v6 = sub_22372A1B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v7;
    v23 = a3;
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v6);
      v18 = v25(v11);
      if (v3)
      {
        return (*v15)(v11, v6);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v6);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v7 = v22;
        a3 = v23;
        return (*(v7 + 56))(a3, v19, 1, v6);
      }
    }

    v7 = v22;
    a3 = v23;
    (*(v22 + 32))(v23, v11, v6);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v7 + 56))(a3, v19, 1, v6);
}

uint64_t sub_223647C08(uint64_t a1, uint64_t a2)
{
  if (sub_22372A198() == *(a2 + 40) && v3 == *(a2 + 48))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_22372B6E8();
  }

  return v5 & 1;
}

uint64_t sub_223647C78@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E528, &unk_22372C990);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v48 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v47 = &v44 - v8;
  v9 = sub_22372A188();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22372A138();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v45 = sub_223727BF8();
  v25 = *(v45 - 8);
  v26 = *(v25 + 64);
  v28 = MEMORY[0x28223BE20](v45, v27);
  v46 = &v44 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v44 - v31;
  sub_22372A1A8();
  (*(v16 + 16))(v21, v24, v15);
  v33 = (*(v16 + 88))(v21, v15);
  if (v33 == *MEMORY[0x277D5D060])
  {
    (*(v16 + 96))(v21, v15);
    (*(v10 + 32))(v14, v21, v9);
    sub_22372A148();
    (*(v10 + 8))(v14, v9);
    (*(v16 + 8))(v24, v15);
  }

  else
  {
    v34 = v33;
    v35 = *MEMORY[0x277D5D058];
    v36 = *(v16 + 8);
    v36(v24, v15);
    if (v34 != v35)
    {
      v36(v21, v15);
    }
  }

  sub_223727BA8();
  v37 = v45;
  (*(v25 + 104))(v32, *MEMORY[0x277D1C6B8], v45);
  (*(v25 + 16))(v46, v32, v37);
  v38 = sub_223727408();
  (*(*(v38 - 8) + 56))(v47, 1, 1, v38);
  v39 = sub_223727C28();
  (*(*(v39 - 8) + 56))(v48, 1, 1, v39);
  v40 = v49;
  sub_223727C18();
  (*(v25 + 8))(v32, v37);
  v41 = *MEMORY[0x277D1C778];
  v42 = sub_223727C58();
  return (*(*(v42 - 8) + 104))(v40, v41, v42);
}

uint64_t sub_223648190(uint64_t a1)
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

  return MEMORY[0x2822009F8](sub_223648254, 0, 0);
}

uint64_t sub_223648254()
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

  return MEMORY[0x282200828](v11, v6, v7, 0, 0, &unk_22372EDF8, v8, v12);
}

uint64_t sub_223648414(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2236242EC;

  return sub_2236484C8(a1, v7, v6, a2);
}

uint64_t sub_2236484C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return MEMORY[0x2822009F8](sub_2236484EC, 0, 0);
}

uint64_t sub_2236484EC()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_223727AF8();

  v3 = v0[1];

  return v3();
}

uint64_t sub_223648580()
{
  v2 = *(*v1 + 616);
  v5 = *v1;
  *(*v1 + 624) = v0;

  if (v0)
  {
    v3 = sub_22364D7C0;
  }

  else
  {
    v3 = sub_223648694;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_223648694()
{
  v57 = v0;
  v52 = v0[67];
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[63];
  v4 = v0[64];
  v5 = v0[61];
  v6 = v0[37];
  v7 = v0[35];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4(v3, *MEMORY[0x277D5D1E8], v5);
  sub_22372A4C8();
  v1(v3, v5);
  if (v0[33])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E508, &qword_22372C970);
    if (swift_dynamicCast())
    {
      v9 = v0[34];
      goto LABEL_6;
    }
  }

  else
  {
    sub_223626478((v0 + 30), &unk_27D08F750, &qword_22372C960);
  }

  v9 = MEMORY[0x277D84F90];
LABEL_6:
  v49 = v0[74];
  v50 = v0[75];
  v53 = v0[73];
  v10 = v0[72];
  v43 = v0[69];
  v44 = v0[70];
  v11 = v0[68];
  v45 = v0[58];
  v12 = v0[48];
  v46 = v0[47];
  v47 = v0[71];
  v13 = v0[44];
  v48 = v0[45];
  v15 = v0[41];
  v14 = v0[42];
  v16 = v0[40];
  v17 = v0[36];
  sub_223648AC0(v9, v16);

  v43(v13, v17 + v11, v14);

  sub_223649614(v16, v15);
  sub_223727D28();
  v49(v46, v12, v48);
  v18 = sub_22372AC88();
  v19 = sub_22372B268();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[76];
  if (v20)
  {
    v22 = v0[74];
    v23 = v0[49];
    v24 = v0[47];
    v51 = v0[75];
    v54 = v0[46];
    v25 = v0[45];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v56 = v27;
    *v26 = 136315138;
    v22(v23, v24, v25);
    v28 = sub_22372B038();
    v30 = v29;
    v21(v24, v25);
    v31 = sub_223623274(v28, v30, &v56);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_223620000, v18, v19, "Sending ExternalAgentOutcome to IntelligenceFlow: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x223DE8A80](v27, -1, -1);
    MEMORY[0x223DE8A80](v26, -1, -1);
  }

  else
  {
    v33 = v0[46];
    v32 = v0[47];
    v34 = v0[45];

    v21(v32, v34);
  }

  v35 = v0[36];
  v36 = v35[5];
  v37 = v35[6];
  __swift_project_boxed_opaque_existential_1(v35 + 2, v36);
  v38 = *(v37 + 40);
  v55 = (v38 + *v38);
  v39 = v38[1];
  v40 = swift_task_alloc();
  v0[79] = v40;
  *v40 = v0;
  v40[1] = sub_223649D9C;
  v41 = v0[48];

  return v55(v41, v36, v37);
}

uint64_t sub_223648AC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v87 = a2;
  v3 = sub_22372AE78();
  v86 = *(v3 - 8);
  v4 = *(v86 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v85 = (&v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22372AE58();
  v90 = *(v7 - 8);
  v8 = *(v90 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v98 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22372ACD8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F1F0, &qword_22372FCB0);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8, v19);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = (&v77 - v25);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v77 - v28;
  v30 = *(a1 + 16);
  if (v30 != 1)
  {
    v84 = v3;
    v31 = MEMORY[0x277D72A58];
    if (!v30)
    {
      v32 = sub_22372AE48();
      v33 = swift_allocBox();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D729A0], v32);
      *v87 = v33;
      v35 = *v31;
      v36 = *(v90 + 104);

      return v36();
    }

    v47 = *(v12 + 16);
    v46 = v12 + 16;
    v48 = a1 + ((*(v46 + 64) + 32) & ~*(v46 + 64));
    v92 = *(v46 + 56);
    v93 = v47;
    v97 = (v90 + 48);
    v94 = v46;
    v91 = (v46 - 8);
    v88 = (v90 + 56);
    v89 = (v90 + 32);
    v81 = 0x80000002237354F0;
    v80 = *MEMORY[0x277D729B8];
    v82 = *MEMORY[0x277D72A58];
    v83 = (v90 + 104);
    v49 = MEMORY[0x277D84F90];
    v95 = v11;
    v96 = v7;
    v47(v16, v48, v11);
    while (1)
    {
      sub_22372ACB8();
      v50 = *v97;
      if ((*v97)(v22, 1, v7) != 1)
      {
        (*v91)(v16, v11);
        v54 = *v89;
        (*v89)(v26, v22, v7);
        (*v88)(v26, 0, 1, v7);
        v54(v98, v26, v7);
        goto LABEL_24;
      }

      sub_223626478(v22, &qword_27D08F1F0, &qword_22372FCB0);
      sub_22372ACC8();
      v51 = sub_2237279C8();
      v53 = v52;

      if (v51 == 0x505F6E6F6D6D6F63 && v53 == 0xED00006E6F737265 || (sub_22372B6E8() & 1) != 0)
      {

        sub_22372ACC8();
        sub_223693930(v26);
      }

      else if (v51 == 0x445F6E6F6D6D6F63 && v53 == 0xEB00000000657461 || (sub_22372B6E8() & 1) != 0)
      {

        sub_22372ACC8();
        sub_223694214(v26);
      }

      else
      {
        if ((v51 != 0x445F6E6F6D6D6F63 || v53 != 0xEF656D6954657461) && (sub_22372B6E8() & 1) == 0)
        {
          if (v51 == 0xD000000000000012 && v81 == v53)
          {
          }

          else
          {
            v59 = sub_22372B6E8();

            if ((v59 & 1) == 0)
            {
              v11 = v95;
              (*v91)(v16, v95);
              v7 = v96;
              (*v88)(v26, 1, 1, v96);
LABEL_12:
              sub_223626478(v26, &qword_27D08F1F0, &qword_22372FCB0);
              goto LABEL_13;
            }
          }

          sub_22372ACC8();
          sub_223727978();
          sub_2237278F8();
          if (v99 && (, v60 = sub_223727968(), , v60) && (v78 = sub_223727998(), v79 = v61, , v79))
          {
          }

          else
          {

            v78 = 0;
            v79 = 0xE000000000000000;
          }

          v62 = sub_22372AE48();
          v63 = swift_allocBox();
          v64 = v79;
          *v65 = v78;
          v65[1] = v64;
          (*(*(v62 - 8) + 104))(v65, v80, v62);
          *v26 = v63;
          v7 = v96;
          (*v83)(v26, v82, v96);
          (*v88)(v26, 0, 1, v7);
          goto LABEL_21;
        }

        sub_22372ACC8();
        sub_2236948F8(v26);
      }

      v7 = v96;
LABEL_21:

      v11 = v95;
      (*v91)(v16, v95);
      if (v50(v26, 1, v7) == 1)
      {
        goto LABEL_12;
      }

      v54 = *v89;
      (*v89)(v98, v26, v7);
LABEL_24:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_2237111D0(0, v49[2] + 1, 1, v49);
      }

      v56 = v49[2];
      v55 = v49[3];
      v57 = v90;
      if (v56 >= v55 >> 1)
      {
        v66 = sub_2237111D0(v55 > 1, v56 + 1, 1, v49);
        v57 = v90;
        v49 = v66;
      }

      v49[2] = v56 + 1;
      v58 = v49 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v56;
      v7 = v96;
      v54(v58, v98, v96);
      v11 = v95;
LABEL_13:
      v48 += v92;
      if (!--v30)
      {
        if (v49[2])
        {
          sub_22372AE28();
          v67 = swift_allocBox();
          v68 = sub_22372AE68();
          v69 = swift_allocBox();
          (*(*(v68 - 8) + 104))(v70, *MEMORY[0x277D72CD8], v68);
          v72 = v85;
          v71 = v86;
          *v85 = v69;
          (*(v71 + 104))(v72, *MEMORY[0x277D72D50], v84);
          sub_22372AE18();
          *v87 = v67;
          v73 = *MEMORY[0x277D729E0];
        }

        else
        {

          v74 = sub_22372AE48();
          v75 = swift_allocBox();
          (*(*(v74 - 8) + 104))(v76, *MEMORY[0x277D729A0], v74);
          *v87 = v75;
        }

        return (*v83)();
      }

      v93(v16, v48, v11);
    }
  }

  v38 = *(v12 + 80);
  sub_223693604((&v77 - v28));
  v39 = *(v90 + 48);
  if (v39(v29, 1, v7) != 1)
  {
    return (*(v90 + 32))(v87, v29, v7);
  }

  v40 = sub_22372AE48();
  v41 = swift_allocBox();
  v42 = v7;
  v43 = v87;
  v44 = v41;
  (*(*(v40 - 8) + 104))(v45, *MEMORY[0x277D729A0], v40);
  *v43 = v44;
  (*(v90 + 104))(v43, *MEMORY[0x277D72A58], v42);
  result = (v39)(v29, 1, v42);
  if (result != 1)
  {
    return sub_223626478(v29, &qword_27D08F1F0, &qword_22372FCB0);
  }

  return result;
}

uint64_t sub_223649614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v55 = a2;
  v53 = sub_22372A058();
  v2 = *(v53 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v53, v4);
  v51 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E518, &qword_22372C980);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v50 - v13;
  v15 = sub_22372AE58();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_223727A78();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x28223BE20](v21, v24);
  v54 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v50 - v28;
  (*(v16 + 16))(v20, v52, v15);
  v30 = sub_223727A88();
  (*(*(v30 - 8) + 56))(v14, 1, 1, v30);
  MEMORY[0x223DE44E0](v20, 0, v14);
  (*(v22 + 104))(v29, *MEMORY[0x277D1C470], v21);
  sub_22372A068();
  v31 = sub_22372A038();
  v33 = v32;
  v34 = *(v2 + 8);
  v35 = v9;
  v36 = v53;
  v34(v35, v53);
  if (!v33)
  {
    v37 = v51;
    sub_22372A068();
    v38 = sub_22372A048();
    v40 = v39;
    v34(v37, v36);
    if (!v40)
    {
      goto LABEL_7;
    }

    v31 = sub_22364DB20(v38, v40);
    v33 = v41;
  }

  v42 = sub_223637D3C(0, 1, 1, MEMORY[0x277D84F90]);
  v44 = *(v42 + 2);
  v43 = *(v42 + 3);
  if (v44 >= v43 >> 1)
  {
    v42 = sub_223637D3C((v43 > 1), v44 + 1, 1, v42);
  }

  *(v42 + 2) = v44 + 1;
  v45 = &v42[16 * v44];
  *(v45 + 4) = v31;
  *(v45 + 5) = v33;
LABEL_7:
  (*(v22 + 16))(v54, v29, v21);
  v46 = v55;
  sub_223727C08();
  (*(v22 + 8))(v29, v21);
  v47 = *MEMORY[0x277D1C770];
  v48 = sub_223727C58();
  return (*(*(v48 - 8) + 104))(v46, v47, v48);
}

uint64_t sub_223649A90()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_223672DF0, 0, 0);
  }

  else
  {
    v5 = *(v2 + 24);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_223649BC8()
{
  v1 = v0[76];
  v2 = v0[57];
  v23 = v0[58];
  v25 = v0[60];
  v3 = v0[56];
  v4 = v0[51];
  v5 = v0[45];
  v6 = v0[39];
  v7 = v0[40];
  v8 = v0[38];
  v1(v0[48], v5);
  (*(v6 + 8))(v7, v8);
  v1(v4, v5);
  (*(v2 + 8))(v23, v3);
  sub_223626478(v25, &unk_27D08E4F0, &qword_22372C958);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v9 = v0[63];
  v11 = v0[59];
  v10 = v0[60];
  v12 = v0[58];
  v14 = v0[54];
  v13 = v0[55];
  v15 = v0[50];
  v16 = v0[51];
  v17 = v0[49];
  v20 = v0[48];
  v21 = v0[47];
  v22 = v0[44];
  v24 = v0[41];
  v26 = v0[40];
  sub_223626478((v0 + 11), &qword_27D08E500, &qword_22372C968);

  v18 = v0[1];

  return v18();
}

uint64_t sub_223649D9C()
{
  v2 = *(*v1 + 632);
  v5 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v3 = sub_22364D954;
  }

  else
  {
    v3 = sub_223649BC8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

id sub_223649F20(void *a1, uint64_t a2, uint64_t a3)
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
      *(v21 + 4) = sub_223623274(0xD00000000000001ELL, 0x8000000223737A20, &v39);
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

uint64_t sub_22364A350()
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

  return sub_22364A40C(v2, v3, v4, v5, v6);
}

uint64_t sub_22364A40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22364A434, 0, 0);
}

uint64_t sub_22364A434()
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
    *(v4 + 4) = sub_223623274(0xD00000000000001ELL, 0x8000000223737A20, &v14);
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

void *sub_22364A654(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_2237319A8;
}

uint64_t sub_22364A6C4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_22364A76C(a1, v5, v4);
}

uint64_t sub_22364A76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, ObjectType, a3);
}

uint64_t sub_22364A8A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_22364A934(a1);
}

uint64_t sub_22364A934(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22364A9D0, v1, 0);
}

uint64_t sub_22364A9D0()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
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

  v11 = v0[11];
  v10 = v0[12];
  v12 = v0[10];

  v13 = *MEMORY[0x277D5CF40];
  v14 = sub_223729F08();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v10, v13, v14);
  (*(v15 + 56))(v10, 0, 1, v14);
  v16 = OBJC_IVAR____TtC24RequestDispatcherBridges22ChildRequestController_requestType;
  swift_beginAccess();
  sub_223641E48(v10, v11 + v16);
  swift_endAccess();
  sub_223623934(*(v11 + 192) + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestStateInfoManager, (v0 + 2));
  v17 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v18 = sub_223729D38();
  v20 = v19;
  v21 = *v17;
  v22 = *(v21 + 24);
  v23 = swift_task_alloc();
  v23[2] = v18;
  v23[3] = v20;
  v23[4] = v21;
  v24 = swift_task_alloc();
  *(v24 + 16) = sub_22364158C;
  *(v24 + 24) = v23;
  os_unfair_lock_lock(v22 + 4);
  sub_223637034(v25);
  v26 = v0[12];
  os_unfair_lock_unlock(v22 + 4);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v27 = v0[1];

  return v27();
}

uint64_t sub_22364AD24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E860, &qword_22372CAA0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22364AD9C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E860, &qword_22372CAA0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22364AE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22364AEF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22364AFBC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22364AFF4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22364B034()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22364B06C()
{
  v1 = sub_223727408();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22364B150()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22364B188()
{
  v1 = sub_22372AC98();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22364B268()
{
  v1 = v0[2];

  sub_223661270(v0[3], v0[4]);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22364B2A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22364B2E0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22364B320()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_223661270(*(v0 + 40), *(v0 + 48));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v2 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_22364B3C8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22364B410@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_22364B460()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22364B4C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22364B504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_223727408();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_22372A548();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22364B62C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_223727408();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_22372A548();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22364B754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ED38, &qword_22372E568);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 2)
  {
    v15 = ((v14 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v15 = -2;
  }

  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_22364B894(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ED38, &qword_22372E568);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22364B9B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22364B9FC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22372AC98();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 36)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_22364BAA0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_22372AC98();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 36)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22364BB58()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_22372A548();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);

  v10 = *(v0 + 32);

  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v11 = (((v4 + v3 + 9) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + v7 + 8) & ~v7;
  v13 = (v12 + v8) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + v11);

  (*(v6 + 8))(v0 + v12, v5);

  v16 = *(v0 + v14);

  return MEMORY[0x2821FE8E8](v0, v14 + 8, v2 | v7 | 7);
}

uint64_t sub_22364BD1C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22364BDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F288, qword_22372FDB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A8, &qword_22372CB20);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_22364BEE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F288, qword_22372FDB0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A8, &qword_22372CB20);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_22364BFFC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22364C060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22372A548();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22364C12C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22372A548();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_22364C1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_22364C2BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_22364C3A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22364C420(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22364C49C()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22364C4E4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22364C524()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22364C56C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22364C5B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22364C67C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22364C6F4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22364C780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestInfo.UserQuery(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22364C7EC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for RequestInfo.UserQuery(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22364C8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F8D0, &qword_223732CC8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 60);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 68);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22364CA0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F8D0, &qword_223732CC8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 60);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 68);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22364CB48(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_22364CC10(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22364CCC4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22364CD14()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22364CD60()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22364CDB0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22364CDE8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22364CE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_22364CF3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_22364D000(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[10];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_2237287C8();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F930, &qword_223733380);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_22364D184(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[10];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2237287C8();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F930, &qword_223733380);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_22364D308(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22364D380(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22364D3FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22364D434()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22364D46C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22364D60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_223624EA4;

  return v13(a1, a2, a3, a4);
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22364D74C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22364D76C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_22364D7C0()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 368) + 8;
  (*(v0 + 608))(*(v0 + 408), *(v0 + 360));
  v18 = *(v0 + 624);
  v3 = *(v0 + 504);
  v5 = *(v0 + 472);
  v4 = *(v0 + 480);
  v6 = *(v0 + 440);
  v7 = *(v0 + 432);
  v8 = *(v0 + 400);
  v9 = *(v0 + 408);
  v12 = *(v0 + 392);
  v13 = *(v0 + 384);
  v14 = *(v0 + 376);
  v15 = *(v0 + 352);
  v16 = *(v0 + 328);
  v17 = *(v0 + 320);
  (*(v1 + 8))(*(v0 + 464), *(v0 + 448));
  sub_223626478(v4, &unk_27D08E4F0, &qword_22372C958);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  sub_223626478(v0 + 88, &qword_27D08E500, &qword_22372C968);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22364D954()
{
  v1 = v0[76];
  v2 = v0[51];
  v3 = v0[45];
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[38];
  v1(v0[48], v3);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);
  v22 = v0[80];
  v7 = v0[63];
  v9 = v0[59];
  v8 = v0[60];
  v10 = v0[55];
  v11 = v0[54];
  v12 = v0[50];
  v13 = v0[51];
  v14 = v0[49];
  v18 = v0[48];
  v19 = v0[47];
  v15 = v0[44];
  v20 = v0[41];
  v21 = v0[40];
  (*(v0[57] + 8))(v0[58], v0[56]);
  sub_223626478(v8, &unk_27D08E4F0, &qword_22372C958);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_223626478((v0 + 11), &qword_27D08E500, &qword_22372C968);

  v16 = v0[1];

  return v16();
}

uint64_t sub_22364DB20(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v5 = sub_22364DD3C(0x2E3D3F2B2E5C5C1BLL, 0xEC0000005C5C3F2ALL, 0);
  v6 = sub_22372AFD8();
  v15 = a2;
  v14 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E520, &qword_22372C988);
  sub_22364DEEC();
  sub_223637E48();
  v7 = sub_22372B378();
  v9 = v8;
  v10 = sub_22372AFD8();
  v11 = [v5 stringByReplacingMatchesInString:v6 options:0 range:v7 withTemplate:{v9, v10, v14, v15, 15}];

  v12 = sub_22372AFE8();
  return v12;
}

id sub_22364DD3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22372AFD8();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_2237272F8();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

void *sub_22364DE2C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
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

unint64_t sub_22364DEEC()
{
  result = qword_281328CE8;
  if (!qword_281328CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D08E520, &qword_22372C988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281328CE8);
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22364DFBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22364E004(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22364E084(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22364E0A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_22364E0E0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_22364E1D4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RemoteIFSession.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v33[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v9 = sub_22372AC98();
  __swift_project_value_buffer(v9, qword_28132B668);

  v10 = sub_22372AC88();
  v11 = sub_22372B268();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = a1;
    v33[0] = v13;
    *v12 = 136315138;
    type metadata accessor for StartedRemoteIntelligenceSessionMessage(0);

    v14 = sub_22372B038();
    v16 = sub_223623274(v14, v15, v33);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_223620000, v10, v11, "Received %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DE8A80](v13, -1, -1);
    MEMORY[0x223DE8A80](v12, -1, -1);
  }

  v17 = qword_27D097250;
  v18 = sub_223727408();
  (*(*(v18 - 8) + 16))(v8, a1 + v17, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E860, &qword_22372CAA0);
  (*(*(v19 - 8) + 56))(v8, 0, 3, v19);
  v20 = OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_state;
  swift_beginAccess();
  sub_22364FD20(v8, v2 + v20);
  swift_endAccess();
  v33[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8C0, &qword_22372CB28);
  sub_22372B228();
  v21 = (v2 + OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_serviceStore);
  v22 = *(v2 + OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_serviceStore + 24);
  v23 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v24 = sub_2237273B8();
  v26 = v25;
  v33[0] = a1;
  v27 = *(v23 + 8);
  v28 = type metadata accessor for StartedRemoteIntelligenceSessionMessage(0);
  v29 = sub_22364FD84(&qword_27D08E8C8, type metadata accessor for StartedRemoteIntelligenceSessionMessage);
  v30 = sub_22364FD84(&qword_27D08E8D0, type metadata accessor for StartedRemoteIntelligenceSessionMessage);
  v27(v24, v26, v33, v28, v29, v30, v22, v23);
}

uint64_t sub_22364E574(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A0, &qword_223733FD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v45 - v6;
  v8 = sub_223727E38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v14 = sub_22372AC98();
  __swift_project_value_buffer(v14, qword_28132B668);

  v15 = sub_22372AC88();
  v16 = sub_22372B268();

  v17 = os_log_type_enabled(v15, v16);
  v46 = v9;
  v47 = v13;
  v45 = v3;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v53 = a1;
    v54 = v19;
    *v18 = 136315138;
    type metadata accessor for RemoteIntelligenceSessionServerMessage(0);

    v20 = sub_22372B038();
    v22 = sub_223623274(v20, v21, &v54);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_223620000, v15, v16, "Received %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x223DE8A80](v19, -1, -1);
    MEMORY[0x223DE8A80](v18, -1, -1);
  }

  v51 = v8;
  v52 = v2;
  v48 = a1;
  v23 = *(a1 + qword_27D097040);
  v24 = *(v23 + 16);
  v26 = v46;
  v25 = v47;
  if (v24)
  {
    v50 = v49 + OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_eventSubscription;
    v27 = *(type metadata accessor for RemoteEventSubscription() + 20);
    v30 = *(v26 + 16);
    v29 = v26 + 16;
    v28 = v30;
    v31 = v23 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
    v32 = *(v29 + 56);
    v33 = (v45 + 8);
    do
    {
      v28(v25, v31, v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A8, &qword_22372CB20);
      sub_22372B218();
      (*v33)(v7, v52);
      v31 += v32;
      --v24;
    }

    while (v24);
  }

  v34 = *(v49 + OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_serviceStore + 24);
  v35 = *(v49 + OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_serviceStore + 32);
  __swift_project_boxed_opaque_existential_1((v49 + OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_serviceStore), v34);
  v36 = v48;
  v37 = sub_2237273B8();
  v39 = v38;
  v54 = v36;
  v40 = *(v35 + 8);
  v41 = type metadata accessor for RemoteIntelligenceSessionServerMessage(0);
  v42 = sub_22364FD84(&qword_27D08E8B0, type metadata accessor for RemoteIntelligenceSessionServerMessage);
  v43 = sub_22364FD84(&qword_27D08E8B8, type metadata accessor for RemoteIntelligenceSessionServerMessage);
  v40(v37, v39, &v54, v41, v42, v43, v34, v35);
}

void sub_22364E9B8(void (*a1)(uint64_t, uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v68 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = v64 - v5;
  v7 = sub_223727408();
  v69 = *(v7 - 8);
  v70 = v7;
  v8 = *(v69 + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v66 = (v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v12);
  v67 = v64 - v13;
  v14 = type metadata accessor for RemoteIFSession.State(0);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v19 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v64 - v21;
  v23 = OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_state;
  swift_beginAccess();
  sub_22364FC4C(v1 + v23, v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E860, &qword_22372CAA0);
  v25 = *(*(v24 - 8) + 56);
  v25(v19, 3, 3, v24);
  v26 = sub_22364F6C8(v22, v19);
  sub_22364FDCC(v19, type metadata accessor for RemoteIFSession.State);
  sub_22364FDCC(v22, type metadata accessor for RemoteIFSession.State);
  if (v26)
  {
    if (qword_281328E50 != -1)
    {
      swift_once();
    }

    v27 = sub_22372AC98();
    __swift_project_value_buffer(v27, qword_28132B668);
    v28 = sub_22372AC88();
    v29 = sub_22372B268();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_7;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "Session already ended, dropping incoming error";
LABEL_6:
    _os_log_impl(&dword_223620000, v28, v29, v31, v30, 2u);
    MEMORY[0x223DE8A80](v30, -1, -1);
LABEL_7:

    return;
  }

  sub_22364FC4C(v1 + v23, v22);
  v25(v19, 2, 3, v24);
  v32 = sub_22364F6C8(v22, v19);
  sub_22364FDCC(v19, type metadata accessor for RemoteIFSession.State);
  sub_22364FDCC(v22, type metadata accessor for RemoteIFSession.State);
  if ((v32 & 1) == 0)
  {
    sub_22364FCB0(v68 + qword_27D097238, v6);
    v33 = v69;
    v34 = v70;
    if ((*(v69 + 48))(v6, 1, v70) == 1)
    {
      sub_223626478(v6, &unk_27D08E530, &unk_22372CB10);
      if (qword_281328E50 != -1)
      {
        swift_once();
      }

      v35 = sub_22372AC98();
      __swift_project_value_buffer(v35, qword_28132B668);
      v28 = sub_22372AC88();
      v29 = sub_22372B268();
      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_7;
      }

      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "Incoming error missing session identifier";
      goto LABEL_6;
    }

    v36 = v67;
    (*(v33 + 32))();
    if (sub_2237273D8())
    {
      v25(v22, 2, 3, v24);
      swift_beginAccess();
      sub_22364FD20(v22, v1 + v23);
      swift_endAccess();
      v38 = *(v1 + OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_serviceStore + 24);
      v37 = *(v1 + OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_serviceStore + 32);
      v66 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_serviceStore), v38);
      v39 = sub_2237273B8();
      v41 = v40;
      v71[0] = v68;
      v68 = *(v37 + 8);
      v42 = type metadata accessor for RemoteIntelligenceFlowErrorMessage(0);
      v43 = sub_22364FD84(&qword_27D08E890, type metadata accessor for RemoteIntelligenceFlowErrorMessage);
      v44 = sub_22364FD84(&qword_27D08E898, type metadata accessor for RemoteIntelligenceFlowErrorMessage);
      v68(v39, v41, v71, v42, v43, v44, v38, v37);

      (*(v33 + 8))(v36, v70);
    }

    else
    {
      if (qword_281328E50 != -1)
      {
        swift_once();
      }

      v45 = sub_22372AC98();
      __swift_project_value_buffer(v45, qword_28132B668);
      v46 = v69;
      v47 = v66;
      (*(v69 + 16))(v66, v36, v34);

      v48 = v1;
      v49 = sub_22372AC88();
      v50 = sub_22372B268();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v71[0] = v68;
        *v51 = 136315394;
        sub_22364FD84(&qword_28132B600, MEMORY[0x277CC95F0]);
        v65 = v50;
        v64[1] = v48;
        v52 = sub_22372B6B8();
        v53 = v34;
        v55 = v54;
        v56 = *(v46 + 8);
        v56(v47, v53);
        v57 = sub_223623274(v52, v55, v71);

        *(v51 + 4) = v57;
        *(v51 + 12) = 2080;
        v58 = sub_22372B6B8();
        v60 = sub_223623274(v58, v59, v71);

        *(v51 + 14) = v60;
        _os_log_impl(&dword_223620000, v49, v65, "Incoming session identifier %s is not equal to local session identifier %s, dropping", v51, 0x16u);
        v61 = v68;
        swift_arrayDestroy();
        MEMORY[0x223DE8A80](v61, -1, -1);
        MEMORY[0x223DE8A80](v51, -1, -1);

        v62 = v67;
        v63 = v53;
      }

      else
      {

        v56 = *(v46 + 8);
        v56(v47, v34);
        v62 = v36;
        v63 = v34;
      }

      v56(v62, v63);
    }
  }
}

uint64_t sub_22364F1E4()
{
  v1 = OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_localSessionId;
  v2 = sub_223727408();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22364FDCC(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_eventSubscription, type metadata accessor for RemoteEventSubscription);
  sub_22364FDCC(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_state, type metadata accessor for RemoteIFSession.State);
  v3 = OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_sessionStartedStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8D8, &qword_22372CB30);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_sessionStartedStreamContinuation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8C0, &qword_22372CB28);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC24RequestDispatcherBridges15RemoteIFSession_serviceStore));
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_22364F398()
{
  v0 = sub_223727408();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    v2 = type metadata accessor for RemoteEventSubscription();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      v4 = type metadata accessor for RemoteIFSession.State(319);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_22364F574(319, &qword_27D08E850, MEMORY[0x277D858D8]);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_22364F574(319, &qword_27D08E858, MEMORY[0x277D858B0]);
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

void sub_22364F574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D08EAD0, &qword_22372CA80);
    v7 = a3(a1, MEMORY[0x277D84F78] + 8, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22364F61C()
{
  sub_22364F674();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_22364F674()
{
  if (!qword_27D08E878)
  {
    v0 = sub_223727408();
    if (!v1)
    {
      atomic_store(v0, &qword_27D08E878);
    }
  }
}

uint64_t sub_22364F6C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_223727408();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RemoteIFSession.State(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E888, &qword_22372CB08);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v20 = &v28 - v19;
  v21 = *(v18 + 56);
  sub_22364FC4C(a1, &v28 - v19);
  sub_22364FC4C(a2, &v20[v21]);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E860, &qword_22372CAA0);
  v23 = *(*(v22 - 8) + 48);
  v24 = v23(v20, 3, v22);
  if (v24 > 1)
  {
    if (v24 == 2)
    {
      if (v23(&v20[v21], 3, v22) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v23(&v20[v21], 3, v22) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_223626478(v20, &qword_27D08E888, &qword_22372CB08);
    v25 = 0;
    return v25 & 1;
  }

  if (!v24)
  {
    sub_22364FC4C(v20, v14);
    if (!v23(&v20[v21], 3, v22))
    {
      (*(v5 + 32))(v9, &v20[v21], v4);
      v25 = sub_2237273D8();
      v27 = *(v5 + 8);
      v27(v9, v4);
      v27(v14, v4);
      sub_22364FDCC(v20, type metadata accessor for RemoteIFSession.State);
      return v25 & 1;
    }

    (*(v5 + 8))(v14, v4);
    goto LABEL_11;
  }

  if (v23(&v20[v21], 3, v22) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_22364FDCC(v20, type metadata accessor for RemoteIFSession.State);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_22364F9FC(uint64_t a1)
{
  sub_223623934(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E880, &qword_22372CB00);
  type metadata accessor for StartedRemoteIntelligenceSessionMessage(0);
  if (swift_dynamicCast())
  {
    sub_22364E1D4(v14[0]);
LABEL_7:

    return __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  type metadata accessor for RemoteIntelligenceSessionServerMessage(0);
  if (swift_dynamicCast())
  {
    sub_22364E574(v14[0]);
    goto LABEL_7;
  }

  type metadata accessor for RemoteIntelligenceFlowErrorMessage(0);
  if (swift_dynamicCast())
  {
    sub_22364E9B8(v14[0]);
    goto LABEL_7;
  }

  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B668);
  sub_223623934(a1, v14);
  v4 = sub_22372AC88();
  v5 = sub_22372B278();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    sub_223623934(v14, &v12);
    v8 = sub_22372B038();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    v11 = sub_223623274(v8, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_223620000, v4, v5, "Unexepcted message received=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v15);
}

uint64_t sub_22364FC4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteIFSession.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22364FCB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22364FD20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteIFSession.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22364FD84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22364FDCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22364FE2C()
{
  v1 = *v0;
  sub_22372B7A8();
  MEMORY[0x223DE8200](v1);
  return sub_22372B7C8();
}

uint64_t sub_22364FE74()
{
  v1 = *v0;
  sub_22372B7A8();
  MEMORY[0x223DE8200](v1);
  return sub_22372B7C8();
}

unint64_t sub_22364FEB8()
{
  if (*v0)
  {
    result = 0x695465746F6D6572;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_22364FF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000002237345F0 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x695465746F6D6572 && a2 == 0xEE00734D6E49656DLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_22372B6E8();

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

uint64_t sub_223650000(uint64_t a1)
{
  v2 = sub_2236507AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22365003C(uint64_t a1)
{
  v2 = sub_2236507AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemoteIntelligenceSessionServerMessage.__allocating_init(build:)(void (*a1)(_BYTE *))
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return RemoteIntelligenceSessionServerMessage.init(build:)(a1);
}

uint64_t RemoteIntelligenceSessionServerMessage.init(build:)(void (*a1)(_BYTE *))
{
  v3 = type metadata accessor for RemoteIntelligenceSessionServerMessage.Builder(0);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_223727408();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);
  v10(&v8[v4[7]], 1, 1, v9);
  v11 = v4[8];
  *&v8[v11] = MEMORY[0x277D84F90];
  v12 = &v8[v4[9]];
  *v12 = 0;
  v12[4] = 1;
  v8[v4[10]] = 2;
  a1(v8);
  *(v1 + qword_27D097040) = *&v8[v11];
  v13 = v12[4];
  v14 = v1 + qword_27D097048;
  *v14 = *v12;
  *(v14 + 4) = v13;
  v18 = v8;

  v15 = RemoteIntelligenceSessionMessage.init(build:)(sub_22365030C);
  sub_223650314(v8);
  return v15;
}

uint64_t sub_2236502BC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_223651744(a2, a1);
  LOBYTE(v2) = *(v2 + *(type metadata accessor for RemoteIntelligenceSessionServerMessage.Builder(0) + 32));
  result = type metadata accessor for RemoteIntelligenceSessionMessage.Builder(0);
  *(a1 + *(result + 20)) = v2;
  return result;
}

uint64_t sub_223650314(uint64_t a1)
{
  v2 = type metadata accessor for RemoteIntelligenceSessionServerMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NSObject *RemoteIntelligenceSessionServerMessage.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return RemoteIntelligenceSessionServerMessage.init(from:)(a1);
}

NSObject *RemoteIntelligenceSessionServerMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8E0, &unk_22372CB40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v26[-1] - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2236507AC();
  sub_22372B7D8();
  if (v2)
  {
    if (qword_27D08E2D0 != -1)
    {
      swift_once();
    }

    v12 = sub_22372AC98();
    __swift_project_value_buffer(v12, qword_27D097088);
    v13 = v2;
    v24 = sub_22372AC88();
    v14 = sub_22372B278();

    if (os_log_type_enabled(v24, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v2;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_223620000, v24, v14, "Failed to decode. Error=%@", v15, 0xCu);
      sub_223651020(v16);
      MEMORY[0x223DE8A80](v16, -1, -1);
      MEMORY[0x223DE8A80](v15, -1, -1);
    }

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for RemoteIntelligenceSessionServerMessage(0);
    v19 = *(*v3 + 48);
    v20 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8F0, &qword_22372CB50);
    v27 = 0;
    sub_223651088(&qword_27D08E8F8, &qword_27D08E900);
    sub_22372B648();
    *(v1 + qword_27D097040) = v26[0];
    LOBYTE(v26[0]) = 1;
    v22 = sub_22372B658();
    v23 = v1 + qword_27D097048;
    *v23 = v22;
    *(v23 + 4) = 0;
    sub_223623934(a1, v26);
    v24 = RemoteIntelligenceSessionMessage.init(from:)(v26);
    (*(v6 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v24;
}

unint64_t sub_2236507AC()
{
  result = qword_27D08E8E8;
  if (!qword_27D08E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08E8E8);
  }

  return result;
}

uint64_t sub_223650800(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E908, &qword_22372CB58);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2236507AC();
  sub_22372B7E8();
  v17 = *(v1 + qword_27D097040);
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8F0, &qword_22372CB50);
  sub_223651088(&qword_27D08E910, &qword_28132B5E0);
  sub_22372B6A8();
  if (!v2)
  {
    v11 = *(v1 + qword_27D097048 + 4);
    v14 = *(v1 + qword_27D097048);
    v15 = v11;
    v13[7] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E918, &unk_22372CB60);
    sub_223651154();
    sub_22372B6A8();
    sub_22370D2DC(a1);
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t RemoteIntelligenceSessionServerMessage.Builder.messageId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RemoteIntelligenceSessionServerMessage.Builder(0) + 20);

  return sub_22364FCB0(v3, a1);
}

uint64_t RemoteIntelligenceSessionServerMessage.Builder.messageId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RemoteIntelligenceSessionServerMessage.Builder(0) + 20);

  return sub_2236511D0(a1, v3);
}

uint64_t RemoteIntelligenceSessionServerMessage.Builder.sessionServerMessages.getter()
{
  v1 = *(v0 + *(type metadata accessor for RemoteIntelligenceSessionServerMessage.Builder(0) + 24));
}

uint64_t RemoteIntelligenceSessionServerMessage.Builder.sessionServerMessages.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoteIntelligenceSessionServerMessage.Builder(0) + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t RemoteIntelligenceSessionServerMessage.Builder.remoteTimeInMs.setter(uint64_t a1)
{
  result = type metadata accessor for RemoteIntelligenceSessionServerMessage.Builder(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t RemoteIntelligenceSessionServerMessage.Builder.optedInToDataSharing.setter(char a1)
{
  result = type metadata accessor for RemoteIntelligenceSessionServerMessage.Builder(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t RemoteIntelligenceSessionServerMessage.deinit()
{
  v0 = sub_223727548();
  v1 = qword_28132B758;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_28132B760, v2);
  v4 = *(v0 + qword_27D097040);

  return v0;
}

uint64_t RemoteIntelligenceSessionServerMessage.__deallocating_deinit()
{
  v0 = sub_223727548();
  v1 = qword_28132B758;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_28132B760, v2);
  v4 = *(v0 + qword_27D097040);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_223650F4C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_223650FAC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_223651020(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F250, &unk_22372D1D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_223651088(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D08E8F0, &qword_22372CB50);
    sub_223651110(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_223651110(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_223727E38();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_223651154()
{
  result = qword_27D08E920;
  if (!qword_27D08E920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D08E918, &unk_22372CB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08E920);
  }

  return result;
}

uint64_t sub_2236511D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2236512FC()
{
  sub_223651430(319, &qword_28132B5F0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_223651430(319, &qword_27D08E948, MEMORY[0x277D1CEE8], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_223651494(319, &qword_27D08E950);
      if (v2 <= 0x3F)
      {
        sub_223651494(319, &qword_281328DB0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_223651430(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_223651494(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22372B3A8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for RemoteIntelligenceSessionServerMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RemoteIntelligenceSessionServerMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223651640()
{
  result = qword_27D08E958;
  if (!qword_27D08E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08E958);
  }

  return result;
}

unint64_t sub_223651698()
{
  result = qword_27D08E960;
  if (!qword_27D08E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08E960);
  }

  return result;
}

unint64_t sub_2236516F0()
{
  result = qword_27D08E968;
  if (!qword_27D08E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08E968);
  }

  return result;
}

uint64_t sub_223651744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_223651834()
{
  sub_223651B50();
  result = sub_22372B388();
  qword_28132B930 = result;
  return result;
}

uint64_t sub_2236518BC()
{
  sub_223651B50();
  result = sub_22372B388();
  qword_28132B798 = result;
  return result;
}

uint64_t sub_22365194C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_223651B50();
  result = sub_22372B388();
  *a4 = result;
  return result;
}

uint64_t sub_2236519B4()
{
  sub_223651B50();
  result = sub_22372B388();
  qword_27D097068 = result;
  return result;
}

uint64_t sub_223651AA0()
{
  v0 = sub_22372A648();
  __swift_allocate_value_buffer(v0, qword_28132B6C8);
  __swift_project_value_buffer(v0, qword_28132B6C8);
  return sub_22372A638();
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

unint64_t sub_223651B50()
{
  result = qword_281328D08;
  if (!qword_281328D08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281328D08);
  }

  return result;
}

uint64_t sub_223651C4C(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_22372AC98();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_22372ACA8();
}

uint64_t getEnumTagSinglePayload for CaptureOutputFeatureFlag(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CaptureOutputFeatureFlag(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_223651DD4()
{
  result = qword_27D08E970;
  if (!qword_27D08E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08E970);
  }

  return result;
}

uint64_t sub_223651E30()
{
  sub_22372B7A8();
  MEMORY[0x223DE8200](0);
  return sub_22372B7C8();
}

uint64_t sub_223651E74()
{
  sub_22372B7A8();
  MEMORY[0x223DE8200](0);
  return sub_22372B7C8();
}

uint64_t sub_223651EF8(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223651F94, v1, 0);
}

uint64_t sub_223651F94()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
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

  v11 = v0[11];
  v10 = v0[12];
  v12 = v0[10];

  v13 = *MEMORY[0x277D5CF28];
  v14 = sub_223729F08();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v10, v13, v14);
  (*(v15 + 56))(v10, 0, 1, v14);
  v16 = OBJC_IVAR____TtC24RequestDispatcherBridges22ChildRequestController_requestType;
  swift_beginAccess();
  sub_223641E48(v10, v11 + v16);
  swift_endAccess();
  sub_223623934(*(v11 + 192) + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestStateInfoManager, (v0 + 2));
  v17 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v18 = sub_223729D38();
  v20 = v19;
  v21 = *v17;
  v22 = *(v21 + 24);
  v23 = swift_task_alloc();
  v23[2] = v18;
  v23[3] = v20;
  v23[4] = v21;
  v24 = swift_task_alloc();
  *(v24 + 16) = sub_223641574;
  *(v24 + 24) = v23;
  os_unfair_lock_lock(v22 + 4);
  sub_223637034(v25);
  v26 = v0[12];
  os_unfair_lock_unlock(v22 + 4);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v27 = v0[1];

  return v27();
}