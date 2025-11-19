uint64_t sub_22745CBB0()
{
  v0 = sub_22766D1E0();

  if (v0 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for OfflineScriptRequest(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OfflineScriptRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22745CD58()
{
  result = qword_27D7BDD20;
  if (!qword_27D7BDD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDD20);
  }

  return result;
}

uint64_t sub_22745CDAC()
{
  v1[2] = v0;
  v2 = sub_22766B390();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22745CE6C, 0, 0);
}

uint64_t sub_22745CE6C()
{
  v1 = *__swift_project_boxed_opaque_existential_0((*(v0 + 16) + OBJC_IVAR____TtC15SeymourServices19PushServiceObserver_container), *(*(v0 + 16) + OBJC_IVAR____TtC15SeymourServices19PushServiceObserver_container + 24));
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_22745CF18;

  return sub_22745D918(v1);
}

uint64_t sub_22745CF18(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v6 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;

  return MEMORY[0x2822009F8](sub_22745D018, 0, 0);
}

uint64_t sub_22745D018()
{
  v21 = v0;
  v1 = v0[8];
  v2 = v0[5];
  sub_22766A730();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[7];
    v5 = v0[8];
    v8 = v0[4];
    v7 = v0[5];
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_226E97AE8(v6, v5, &v20);
    _os_log_impl(&dword_226E8E000, v3, v4, "Environment: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v13 = v0[4];
    v12 = v0[5];
    v14 = v0[3];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[2];
  sub_22745D1E8(v0[7], v0[8], &unk_283A93C80);
  v16 = v0[8];
  v17 = v0[5];

  v18 = v0[1];

  return v18();
}

void sub_22745D1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v3 = sub_22766B390();
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B3C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226EA1CF4();
  (*(v8 + 104))(v11, *MEMORY[0x277D851C8], v7);
  v12 = sub_22766C980();
  (*(v8 + 8))(v11, v7);
  v13 = objc_allocWithZone(MEMORY[0x277CEEA10]);
  v14 = sub_22766BFD0();
  v15 = sub_22766BFD0();
  v16 = [v13 initWithEnvironmentName:v14 namedDelegatePort:v15 queue:v12];

  if (v16)
  {
    v17 = sub_22766C2B0();
    [v16 _setEnabledTopics_];

    v18 = v28;
    [v16 setDelegate_];
    v19 = *(v18 + OBJC_IVAR____TtC15SeymourServices19PushServiceObserver_connection);
    *(v18 + OBJC_IVAR____TtC15SeymourServices19PushServiceObserver_connection) = v16;
  }

  else
  {
    v20 = v25;
    v21 = v26;
    sub_22766A730();
    v22 = sub_22766B380();
    v23 = sub_22766C890();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_226E8E000, v22, v23, "Could not create APS Connection.", v24, 2u);
      MEMORY[0x22AA9A450](v24, -1, -1);
    }

    (*(v20 + 8))(v6, v21);
    sub_22745EBF0();
    swift_allocError();
    swift_willThrow();
  }
}

id sub_22745D540()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PushServiceObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22745D844(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = sub_22766C000();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_22745D918(uint64_t a1)
{
  v3 = sub_22766B390();
  v1[33] = v3;
  v4 = *(v3 - 8);
  v1[34] = v4;
  v5 = *(v4 + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[21] = type metadata accessor for ServerContainer();
  v1[22] = &off_283AC6E68;
  v1[18] = a1;

  return MEMORY[0x2822009F8](sub_22745D9FC, 0, 0);
}

uint64_t sub_22745D9FC()
{
  v1 = xpc_copy_entitlement_for_self();
  v0[36] = v1;
  if (!v1)
  {
    goto LABEL_6;
  }

  if (!xpc_string_get_string_ptr(v1))
  {
    swift_unknownObjectRelease();
LABEL_6:
    v8 = *MEMORY[0x277CEE9F0];
    v2 = sub_22766C000();
    v4 = v9;
    goto LABEL_7;
  }

  v2 = sub_22766C140();
  v4 = v3;
  v0[26] = v2;
  v0[27] = v3;
  v5 = *MEMORY[0x277CBBFB8];
  v0[28] = sub_22766C000();
  v0[29] = v6;
  sub_226FB2548();
  v7 = sub_22766CBE0();

  if (v7)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v10 = v0[35];
    __swift_destroy_boxed_opaque_existential_0(v0 + 18);

    v11 = v0[1];

    return v11(v2, v4);
  }

  v13 = *__swift_project_boxed_opaque_existential_0(v0 + 18, v0[21]);
  v14 = sub_2274FD99C();
  v0[37] = v14;
  v0[2] = v0;
  v0[7] = v0 + 30;
  v0[3] = sub_22745DC38;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDDD8, &qword_2276862B8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22745D844;
  v0[13] = &block_descriptor_32;
  v0[14] = v15;
  [v14 serverPreferredPushEnvironmentWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22745DC38()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 304) = v2;
  if (v2)
  {
    v3 = sub_22745DDD8;
  }

  else
  {
    v3 = sub_22745DD48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22745DD48()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);

  swift_unknownObjectRelease();
  v4 = *(v0 + 280);
  __swift_destroy_boxed_opaque_existential_0((v0 + 144));

  v5 = *(v0 + 8);

  return v5(v2, v3);
}

uint64_t sub_22745DDD8()
{
  v30 = v0;
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[35];
  swift_willThrow();

  sub_22766A730();
  v4 = v2;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[38];
    v9 = v0[34];
    v8 = v0[35];
    v10 = v0[33];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = v0[23];
    v14 = MEMORY[0x22AA995D0](v0[24], v0[25]);
    v16 = sub_226E97AE8(v14, v15, &v29);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_226E8E000, v5, v6, "Error querying container for push environment: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v18 = v0[34];
    v17 = v0[35];
    v19 = v0[33];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[38];
  v21 = v0[36];
  v22 = *MEMORY[0x277CEE9F0];
  v23 = sub_22766C000();
  v25 = v24;

  swift_unknownObjectRelease();
  v26 = v0[35];
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);

  v27 = v0[1];

  return v27(v23, v25);
}

uint64_t sub_22745DFEC(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  if (a3 >> 60 == 15)
  {
    sub_22766A730();
    v13 = sub_22766B380();
    v14 = sub_22766C890();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_226E8E000, v13, v14, "Public APS Token was nil.", v15, 2u);
      MEMORY[0x22AA9A450](v15, -1, -1);
    }

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    sub_22766A730();
    v17 = a1;
    v18 = sub_22766B380();
    v19 = sub_22766C8B0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      result = swift_slowAlloc();
      v30 = result;
      *v20 = 136446210;
      if (!a1)
      {
        __break(1u);
        return result;
      }

      v21 = result;

      v22 = [v17 enabledTopics];
      if (v22)
      {
        v23 = v22;
        v24 = sub_22766C2C0();
      }

      else
      {
        v24 = 0;
      }

      v29 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BDDB8, &qword_2276862A8);
      v25 = sub_22766CB80();
      v27 = v26;

      v28 = sub_226E97AE8(v25, v27, &v30);

      *(v20 + 4) = v28;
      _os_log_impl(&dword_226E8E000, v18, v19, "Received public token on connection with topics: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AA9A450](v21, -1, -1);
      MEMORY[0x22AA9A450](v20, -1, -1);
    }

    else
    {
    }

    return (*(v6 + 8))(v12, v5);
  }
}

uint64_t sub_22745E2CC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  if (a2 >> 60 == 15)
  {
    sub_22766A730();

    v19 = sub_22766B380();
    v20 = sub_22766C890();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v45 = a4;
      v46 = v22;
      *v21 = 136315138;
      v44 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v23 = sub_22766CB80();
      v25 = sub_226E97AE8(v23, v24, &v46);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_226E8E000, v19, v20, "Topic APS Token was nil for %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x22AA9A450](v22, -1, -1);
      MEMORY[0x22AA9A450](v21, -1, -1);
    }

    v26 = *(v12 + 8);
    v27 = v15;
  }

  else
  {
    sub_22766A730();

    v28 = sub_22766B380();
    v29 = sub_22766C8B0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v43 = v11;
      v31 = v30;
      v32 = swift_slowAlloc();
      v42 = a5;
      v33 = v32;
      v45 = a4;
      v46 = v32;
      *v31 = 136315394;
      v44 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v34 = sub_22766CB80();
      v36 = sub_226E97AE8(v34, v35, &v46);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2080;
      v44 = v42;
      v45 = a6;
      v37 = sub_22766CB80();
      v39 = sub_226E97AE8(v37, v38, &v46);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_226E8E000, v28, v29, "Received per-topic push token for topic %s identifier %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v33, -1, -1);
      MEMORY[0x22AA9A450](v31, -1, -1);

      return (*(v12 + 8))(v18, v43);
    }

    v26 = *(v12 + 8);
    v27 = v18;
  }

  return v26(v27, v11);
}

uint64_t *sub_22745E654(void *a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v54 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v53 - v8;
  sub_22766A730();
  v10 = a1;
  v11 = sub_22766B380();
  v12 = sub_22766C8B0();
  v13 = os_log_type_enabled(v11, v12);
  v55 = v4;
  if (!v13)
  {

    v14 = *(v4 + 8);
    (v14)(v9, v3);
    if (a1)
    {
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_7;
  }

  v14 = swift_slowAlloc();
  result = swift_slowAlloc();
  v58 = result;
  *v14 = 136315138;
  if (!a1)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  v1 = result;

  v16 = [v10 topic];
  if (!v16)
  {
LABEL_7:
    v18 = 0;
    v20 = 0;
    goto LABEL_8;
  }

  v17 = v16;
  v18 = sub_22766C000();
  v20 = v19;

LABEL_8:
  v56 = v18;
  v57 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v21 = sub_22766CB80();
  v23 = v22;

  v24 = sub_226E97AE8(v21, v23, &v58);

  *(v14 + 4) = v24;
  _os_log_impl(&dword_226E8E000, v11, v12, "APS Push received: %s", v14, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v1);
  MEMORY[0x22AA9A450](v1, -1, -1);
  MEMORY[0x22AA9A450](v14, -1, -1);

  v14 = *(v55 + 8);
  (v14)(v9, v3);
LABEL_9:
  v25 = [v10 topic];
  if (v25)
  {
    v26 = v25;
    v27 = sub_22766C000();
    v29 = v28;

    if (v27 == 0xD00000000000002DLL && 0x8000000227691DF0 == v29 || (sub_22766D190() & 1) != 0)
    {

      v31 = *(v53 + OBJC_IVAR____TtC15SeymourServices19PushServiceObserver_eventHub);
      v30 = *(v53 + OBJC_IVAR____TtC15SeymourServices19PushServiceObserver_eventHub + 8);
      swift_getObjectType();
      sub_2271DC0A8();
      return sub_2276699D0();
    }

    if (v27 == 0xD000000000000012 && 0x8000000227691DD0 == v29)
    {

      goto LABEL_18;
    }

    v32 = sub_22766D190();

    if (v32)
    {
LABEL_18:
      v34 = *(v53 + OBJC_IVAR____TtC15SeymourServices19PushServiceObserver_eventHub);
      v33 = *(v53 + OBJC_IVAR____TtC15SeymourServices19PushServiceObserver_eventHub + 8);
      result = [v10 userInfo];
      if (result)
      {
        v35 = result;
        swift_getObjectType();
        v36 = sub_22766BEB0();

        v56 = v36;
        sub_2271BFCE8();
        sub_2276699D0();
      }

      goto LABEL_29;
    }
  }

  v37 = v54;
  sub_22766A730();
  v38 = v10;
  v39 = sub_22766B380();
  v40 = sub_22766C890();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v58 = v42;
    *v41 = 136446210;
    v43 = [v38 topic];
    if (v43)
    {
      v44 = v43;
      v45 = sub_22766C000();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0;
    }

    v56 = v45;
    v57 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v49 = sub_22766CB80();
    v51 = v50;

    v52 = sub_226E97AE8(v49, v51, &v58);

    *(v41 + 4) = v52;
    _os_log_impl(&dword_226E8E000, v39, v40, "APS Push for unknown topic: %{public}s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x22AA9A450](v42, -1, -1);
    MEMORY[0x22AA9A450](v41, -1, -1);

    v48 = v54;
  }

  else
  {

    v48 = v37;
  }

  return (v14)(v48, v3);
}

unint64_t sub_22745EBF0()
{
  result = qword_27D7BDDC8;
  if (!qword_27D7BDDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDDC8);
  }

  return result;
}

uint64_t sub_22745EC74(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, unint64_t))
{
  v4 = sub_22745ED30();
  v5 = sub_2271E0640();

  return a3(a1, v4, v5);
}

unint64_t sub_22745ECDC()
{
  result = qword_27D7BDDE0;
  if (!qword_27D7BDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDDE0);
  }

  return result;
}

unint64_t sub_22745ED30()
{
  result = qword_27D7BDDE8;
  if (!qword_27D7BDDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDDE8);
  }

  return result;
}

uint64_t sub_22745ED8C(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  do
  {
    if (!v6)
    {
      while (1)
      {
        v8 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v8 >= v7)
        {
          goto LABEL_13;
        }

        v6 = *(v3 + 8 * v8);
        ++v1;
        if (v6)
        {
          v1 = v8;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

    v8 = v1;
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(*(result + 56) + ((v8 << 9) | (8 * v9)));
    v11 = __OFADD__(v2, v10);
    v2 += v10;
  }

  while (!v11);
  __break(1u);
LABEL_13:
  if (v2 >= 1)
  {
    v12 = 0;
    v13 = 1 << *(result + 32);
    v14 = *(result + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    v18 = v2;
    v19 = 0.0;
    if ((v15 & v14) == 0)
    {
      goto LABEL_19;
    }

    do
    {
LABEL_17:
      while (1)
      {
        v20 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v21 = *(*(result + 56) + ((v12 << 9) | (8 * v20)));
        if (v21)
        {
          break;
        }

        if (!v16)
        {
          goto LABEL_19;
        }
      }

      v23 = v21 / v18;
      v24 = v19;
      v25 = result;
      v26 = log(v23);
      result = v25;
      v19 = v24 - v23 * v26;
    }

    while (v16);
LABEL_19:
    while (1)
    {
      v22 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v22 >= v17)
      {
        return result;
      }

      v16 = *(v3 + 8 * v22);
      ++v12;
      if (v16)
      {
        v12 = v22;
        goto LABEL_17;
      }
    }

LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_22745EF20(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_226EB3F78(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_2274CDC28(&v43, &v4[16 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v4 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v46 = v24;
          v47 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v40 = v15;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    *(v4 + 2) = v19;
  }

  result = v43;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = *(v4 + 2);
  v14 = v44;
  v15 = v45;
  v2 = v46;
  v42 = v44;
  if (!v47)
  {
    goto LABEL_19;
  }

  v20 = (v47 - 1) & v47;
  v21 = __clz(__rbit64(v47)) | (v46 << 6);
  v40 = v45;
  v22 = (v45 + 64) >> 6;
LABEL_27:
  v41 = result;
  v27 = (*(result + 56) + 16 * v21);
  v29 = *v27;
  v28 = v27[1];

  v30 = v42;
LABEL_29:
  while (1)
  {
    v31 = *(v4 + 3);
    v32 = v31 >> 1;
    if ((v31 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v32)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v13;
  }

  v38 = sub_226EB3F78((v31 > 1), v13 + 1, 1, v4);
  v30 = v42;
  v4 = v38;
  v32 = *(v38 + 3) >> 1;
  if (v13 >= v32)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v33 = &v4[16 * v13 + 32];
    *v33 = v29;
    *(v33 + 1) = v28;
    ++v13;
    if (!v20)
    {
      break;
    }

    result = v41;
LABEL_38:
    v36 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v37 = (*(result + 56) + ((v2 << 10) | (16 * v36)));
    v29 = *v37;
    v28 = v37[1];

    v30 = v42;
    if (v13 == v32)
    {
      v13 = v32;
      *(v4 + 2) = v32;
      goto LABEL_29;
    }
  }

  v34 = v2;
  result = v41;
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v35 >= v22)
    {
      break;
    }

    v20 = *(v30 + 8 * v35);
    ++v34;
    if (v20)
    {
      v2 = v35;
      goto LABEL_38;
    }
  }

  if (v22 <= v2 + 1)
  {
    v39 = v2 + 1;
  }

  else
  {
    v39 = v22;
  }

  v45 = v40;
  v46 = v39 - 1;
  v47 = 0;
  *(v4 + 2) = v13;
LABEL_13:
  result = sub_226EBB21C();
  *v1 = v4;
  return result;
}

uint64_t sub_22745F204(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_226EB3F78(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22745F310(uint64_t a1)
{
  v79 = sub_227662750();
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v79);
  v80 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v61 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v61 - v15;
  v17 = *(a1 + 16);
  v18 = *v1;
  v19 = *(*v1 + 2);
  v20 = v19 + v17;
  if (__OFADD__(v19, v17))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v78 = v14;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v12;
  if (!isUniquelyReferenced_nonNull_native || (v22 = *(v18 + 3) >> 1, v22 < v20))
  {
    if (v19 <= v20)
    {
      v23 = v19 + v17;
    }

    else
    {
      v23 = v19;
    }

    v18 = sub_2273A556C(isUniquelyReferenced_nonNull_native, v23, 1, v18);
    v22 = *(v18 + 3) >> 1;
  }

  v24 = *(v18 + 2);
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = *(v4 + 72);
  v25 = v22 - v24;
  result = sub_2274CE114(&v81, &v18[v20 + v19 * v24], v22 - v24, a1);
  if (result < v17)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v28 = *(v18 + 2);
    v29 = __OFADD__(v28, result);
    v30 = v28 + result;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v18 + 2) = v30;
  }

  if (result != v25)
  {
    result = sub_226EBB21C();
LABEL_14:
    *v1 = v18;
    return result;
  }

LABEL_17:
  v76 = *(v18 + 2);
  v27 = v82;
  v67 = v81;
  v30 = v84;
  v26 = &v86;
  v62 = v83;
  v31 = v85;
  v65 = v82;
  if (v85)
  {
    v32 = v84;
LABEL_27:
    v74 = (v31 - 1) & v31;
    v36 = v79;
    (*(v2 + 16))(v16, *(v67 + 56) + (__clz(__rbit64(v31)) | (v32 << 6)) * v19, v79);
    v69 = *(v2 + 56);
    v69(v16, 0, 1, v36);
    v35 = v32;
    while (1)
    {
      v37 = v77;
      sub_226E93170(v16, v77, &qword_27D7B9690, qword_227670B50);
      v38 = *(v2 + 48);
      v2 += 48;
      v73 = v38;
      if (v38(v37, 1, v36) == 1)
      {
        break;
      }

      v40 = (v4 + 32);
      v64 = (v62 + 64) >> 6;
      v68 = v4 + 56;
      v66 = (v4 + 16);
      v63 = (v4 + 8);
      v39 = v77;
      v75 = v40;
      while (1)
      {
        sub_226E97D1C(v39, &qword_27D7B9690, qword_227670B50);
        v41 = *(v18 + 3);
        v42 = v41 >> 1;
        if ((v41 >> 1) < v76 + 1)
        {
          v18 = sub_2273A556C(v41 > 1, v76 + 1, 1, v18);
          v42 = *(v18 + 3) >> 1;
        }

        v43 = v78;
        sub_226E93170(v16, v78, &qword_27D7B9690, qword_227670B50);
        if (v73(v43, 1, v79) != 1)
        {
          break;
        }

        v44 = v35;
        v45 = v78;
        v4 = v76;
LABEL_38:
        v35 = v44;
        sub_226E97D1C(v45, &qword_27D7B9690, qword_227670B50);
        v76 = v4;
LABEL_33:
        *(v18 + 2) = v4;
        v39 = v77;
        sub_226E93170(v16, v77, &qword_27D7B9690, qword_227670B50);
        if (v73(v39, 1, v79) == 1)
        {
          goto LABEL_30;
        }
      }

      v71 = &v18[v20];
      v4 = v76;
      v46 = *v75;
      if (v76 <= v42)
      {
        v47 = v42;
      }

      else
      {
        v47 = v76;
      }

      v72 = v47;
      v45 = v78;
      v48 = v79;
      v49 = v80;
      v70 = v46;
      while (1)
      {
        v53 = v49;
        v54 = v45;
        v55 = v48;
        v56 = v46;
        v46(v53, v54, v48);
        if (v4 == v72)
        {
          (*v63)(v80, v55);
          v4 = v72;
          v76 = v72;
          goto LABEL_33;
        }

        sub_226E97D1C(v16, &qword_27D7B9690, qword_227670B50);
        v76 = v4;
        v56(&v71[v4 * v19], v80, v55);
        v57 = v74;
        if (!v74)
        {
          break;
        }

        v58 = v35;
LABEL_55:
        v74 = (v57 - 1) & v57;
        v51 = v79;
        (*v66)(v16, *(v67 + 56) + (__clz(__rbit64(v57)) | (v58 << 6)) * v19, v79);
        v50 = 0;
        v60 = v58;
LABEL_44:
        v4 = v76 + 1;
        v69(v16, v50, 1, v51);
        v45 = v78;
        sub_226E93170(v16, v78, &qword_27D7B9690, qword_227670B50);
        v52 = v73(v45, 1, v51);
        v48 = v51;
        v35 = v60;
        v44 = v60;
        v49 = v80;
        v46 = v70;
        if (v52 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v64 <= v35 + 1)
      {
        v59 = v35 + 1;
      }

      else
      {
        v59 = v64;
      }

      v60 = v59 - 1;
      while (1)
      {
        v58 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v58 >= v64)
        {
          v74 = 0;
          v50 = 1;
          v51 = v79;
          goto LABEL_44;
        }

        v57 = *(v65 + 8 * v58);
        ++v35;
        if (v57)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v36 = v79;
      v69 = *(v2 + 56);
      v69(v16, 1, 1, v79);
      v74 = 0;
    }

    v39 = v77;
LABEL_30:
    sub_226E97D1C(v16, &qword_27D7B9690, qword_227670B50);
    sub_226EBB21C();
    result = sub_226E97D1C(v39, &qword_27D7B9690, qword_227670B50);
    goto LABEL_14;
  }

LABEL_20:
  v33 = (*(v26 - 32) + 64) >> 6;
  if (v33 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = v33;
  }

  v35 = v34 - 1;
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v33)
    {
      goto LABEL_57;
    }

    v31 = *(v27 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

void sub_22745FA5C(uint64_t a1)
{
  v80 = sub_227666B60();
  v4 = *(v80 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v80);
  v81 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F20, &qword_2276767D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v62 - v10;
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v16 = &v62 - v15;
  v17 = *(a1 + 16);
  v18 = *v1;
  v19 = *(*v1 + 2);
  v20 = v19 + v17;
  if (__OFADD__(v19, v17))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v79 = v13;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78 = v11;
  if (!isUniquelyReferenced_nonNull_native || (v22 = *(v18 + 3) >> 1, v22 < v20))
  {
    if (v19 <= v20)
    {
      v23 = v19 + v17;
    }

    else
    {
      v23 = v19;
    }

    v18 = sub_2273A55CC(isUniquelyReferenced_nonNull_native, v23, 1, v18);
    v22 = *(v18 + 3) >> 1;
  }

  v24 = *(v18 + 2);
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = *(v4 + 72);
  v25 = v22 - v24;
  v26 = sub_2274CDF78(&v82, &v18[v20 + v19 * v24], v22 - v24, a1);
  if (v26 < v17)
  {
    goto LABEL_16;
  }

  if (v26)
  {
    v29 = *(v18 + 2);
    v30 = __OFADD__(v29, v26);
    v31 = v29 + v26;
    if (v30)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v18 + 2) = v31;
  }

  if (v26 != v25)
  {
    sub_226EBB21C();
LABEL_14:
    *v1 = v18;
    return;
  }

LABEL_17:
  v77 = *(v18 + 2);
  v28 = v83;
  v68 = v82;
  v31 = v85;
  v27 = &v87;
  v63 = v84;
  v32 = v86;
  v66 = v83;
  if (v86)
  {
    v33 = v85;
LABEL_27:
    v75 = (v32 - 1) & v32;
    v37 = v80;
    (*(v2 + 16))(v16, *(v68 + 48) + (__clz(__rbit64(v32)) | (v33 << 6)) * v19, v80, v14);
    v70 = *(v2 + 56);
    v70(v16, 0, 1, v37);
    v36 = v33;
    while (1)
    {
      v38 = v78;
      sub_226E93170(v16, v78, &qword_27D7B8F20, &qword_2276767D0);
      v39 = *(v2 + 48);
      v2 += 48;
      v74 = v39;
      if (v39(v38, 1, v37) == 1)
      {
        break;
      }

      v41 = (v4 + 32);
      v65 = (v63 + 64) >> 6;
      v69 = v4 + 56;
      v67 = (v4 + 16);
      v64 = (v4 + 8);
      v40 = v78;
      v76 = v41;
      while (1)
      {
        sub_226E97D1C(v40, &qword_27D7B8F20, &qword_2276767D0);
        v42 = *(v18 + 3);
        v43 = v42 >> 1;
        if ((v42 >> 1) < v77 + 1)
        {
          v18 = sub_2273A55CC(v42 > 1, v77 + 1, 1, v18);
          v43 = *(v18 + 3) >> 1;
        }

        v44 = v79;
        sub_226E93170(v16, v79, &qword_27D7B8F20, &qword_2276767D0);
        if (v74(v44, 1, v80) != 1)
        {
          break;
        }

        v45 = v36;
        v46 = v79;
        v4 = v77;
LABEL_38:
        v36 = v45;
        sub_226E97D1C(v46, &qword_27D7B8F20, &qword_2276767D0);
        v77 = v4;
LABEL_33:
        *(v18 + 2) = v4;
        v40 = v78;
        sub_226E93170(v16, v78, &qword_27D7B8F20, &qword_2276767D0);
        if (v74(v40, 1, v80) == 1)
        {
          goto LABEL_30;
        }
      }

      v72 = &v18[v20];
      v4 = v77;
      v47 = *v76;
      if (v77 <= v43)
      {
        v48 = v43;
      }

      else
      {
        v48 = v77;
      }

      v73 = v48;
      v46 = v79;
      v49 = v80;
      v50 = v81;
      v71 = v47;
      while (1)
      {
        v54 = v50;
        v55 = v46;
        v56 = v49;
        v57 = v47;
        v47(v54, v55, v49);
        if (v4 == v73)
        {
          (*v64)(v81, v56);
          v4 = v73;
          v77 = v73;
          goto LABEL_33;
        }

        sub_226E97D1C(v16, &qword_27D7B8F20, &qword_2276767D0);
        v77 = v4;
        v57(&v72[v4 * v19], v81, v56);
        v58 = v75;
        if (!v75)
        {
          break;
        }

        v59 = v36;
LABEL_55:
        v75 = (v58 - 1) & v58;
        v52 = v80;
        (*v67)(v16, *(v68 + 48) + (__clz(__rbit64(v58)) | (v59 << 6)) * v19, v80);
        v51 = 0;
        v61 = v59;
LABEL_44:
        v4 = v77 + 1;
        v70(v16, v51, 1, v52);
        v46 = v79;
        sub_226E93170(v16, v79, &qword_27D7B8F20, &qword_2276767D0);
        v53 = v74(v46, 1, v52);
        v49 = v52;
        v36 = v61;
        v45 = v61;
        v50 = v81;
        v47 = v71;
        if (v53 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v65 <= v36 + 1)
      {
        v60 = v36 + 1;
      }

      else
      {
        v60 = v65;
      }

      v61 = v60 - 1;
      while (1)
      {
        v59 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v59 >= v65)
        {
          v75 = 0;
          v51 = 1;
          v52 = v80;
          goto LABEL_44;
        }

        v58 = *(v66 + 8 * v59);
        ++v36;
        if (v58)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v37 = v80;
      v70 = *(v2 + 56);
      v70(v16, 1, 1, v80);
      v75 = 0;
    }

    v40 = v78;
LABEL_30:
    sub_226E97D1C(v16, &qword_27D7B8F20, &qword_2276767D0);
    sub_226EBB21C();
    sub_226E97D1C(v40, &qword_27D7B8F20, &qword_2276767D0);
    goto LABEL_14;
  }

LABEL_20:
  v34 = (*(v27 - 32) + 64) >> 6;
  if (v34 <= v31 + 1)
  {
    v35 = v31 + 1;
  }

  else
  {
    v35 = v34;
  }

  v36 = v35 - 1;
  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v33 >= v34)
    {
      goto LABEL_57;
    }

    v32 = *(v28 + 8 * v33);
    ++v31;
    if (v32)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

void *sub_22746017C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v6 = v3[3] >> 1, v6 <= v4))
  {
    result = sub_2273A58B0(result, v4 + 1, 1, v3);
    v3 = result;
    v6 = result[3] >> 1;
  }

  v7 = v3[2];
  v8 = v6 - v7;
  if (!v8)
  {
    goto LABEL_11;
  }

  if (v8 < 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!a1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v3[v7 + 4] = a1;
  v3[2] = v7 + 1;
  if (v8 != 1)
  {
  }

  *v1 = v3;
  return result;
}

uint64_t sub_227460250(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = v4[3] >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_2273A5A04(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = v4[3] >> 1;
  }

  v12 = v4[2];
  v13 = v10 - v12;
  result = sub_2274CE3EC(&v39, &v4[v12 + 4], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = v4[2];
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v42 = v24;
          v43 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v37 = v15;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    v4[2] = v19;
  }

  result = v39;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = v4[2];
  v14 = v40;
  v15 = v41;
  v2 = v42;
  v38 = v40;
  if (!v43)
  {
    goto LABEL_19;
  }

  v20 = (v43 - 1) & v43;
  v21 = __clz(__rbit64(v43)) | (v42 << 6);
  v37 = v41;
  v22 = (v41 + 64) >> 6;
LABEL_27:
  v27 = result;
  v28 = *(*(result + 48) + 8 * v21);

  v29 = v38;
LABEL_29:
  while (1)
  {
    v30 = v4[3];
    v31 = v30 >> 1;
    if ((v30 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    v4[2] = v13;
  }

  v35 = sub_2273A5A04((v30 > 1), v13 + 1, 1, v4);
  v29 = v38;
  v4 = v35;
  v31 = v35[3] >> 1;
  if (v13 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v4[v13++ + 4] = v28;
    if (!v20)
    {
      break;
    }

    result = v27;
LABEL_38:
    v34 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v28 = *(*(result + 48) + ((v2 << 9) | (8 * v34)));

    v29 = v38;
    if (v13 == v31)
    {
      v13 = v31;
      v4[2] = v31;
      goto LABEL_29;
    }
  }

  v32 = v2;
  result = v27;
  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v33 >= v22)
    {
      break;
    }

    v20 = *(v29 + 8 * v33);
    ++v32;
    if (v20)
    {
      v2 = v33;
      goto LABEL_38;
    }
  }

  if (v22 <= v2 + 1)
  {
    v36 = v2 + 1;
  }

  else
  {
    v36 = v22;
  }

  v41 = v37;
  v42 = v36 - 1;
  v43 = 0;
  v4[2] = v13;
LABEL_13:
  result = sub_226EBB21C();
  *v1 = v4;
  return result;
}

uint64_t sub_227460500(uint64_t result, uint64_t a2)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v2 = *v3;
  v5 = *(*v3 + 2);
  v6 = v5 + v4;
  if (__OFADD__(v5, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = result;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v11 = *(v2 + 3) >> 1, v11 < v6))
  {
    if (v5 <= v6)
    {
      v12 = v5 + v4;
    }

    else
    {
      v12 = v5;
    }

    v2 = sub_2273A5610(isUniquelyReferenced_nonNull_native, v12, 1, v2);
    v11 = *(v2 + 3) >> 1;
  }

  v13 = *(v2 + 2);
  v14 = v11 - v13;
  result = sub_22745819C(&v32, &v2[8 * v13 + 32], v11 - v13, v8, a2);
  if (result < v4)
  {
    goto LABEL_17;
  }

  if (result >= 1)
  {
    v17 = *(v2 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
      goto LABEL_35;
    }

    *(v2 + 2) = v19;
  }

  if (result != v14)
  {
LABEL_14:
    *v3 = v2;
    return result;
  }

LABEL_18:
  v20 = v33;
  v21 = v34;
  if (v34 == v33)
  {
    goto LABEL_14;
  }

  v22 = v32;
  if (v33 < v32)
  {
LABEL_37:
    __break(1u);
  }

  else if (v34 >= v32)
  {
    if (v34 < v33)
    {
      v15 = *(v2 + 2);
      v23 = v34 + 1;
      v24 = -v33;
      while (1)
      {
LABEL_24:
        v25 = *(v2 + 3);
        v26 = v25 >> 1;
        if ((v25 >> 1) < v15 + 1)
        {
          v28 = v2;
          v29 = v23;
          v30 = v24;
          v31 = v15;
          result = sub_2273A5610((v25 > 1), v15 + 1, 1, v28);
          v15 = v31;
          v24 = v30;
          v23 = v29;
          v2 = result;
          v26 = *(result + 24) >> 1;
          v27 = v31 - v26;
          if (v31 < v26)
          {
LABEL_26:
            v16 = 0;
            while (1)
            {
              *&v2[8 * v15 + 32 + 8 * v16] = v21;
              if (!(v24 + v23 + v16))
              {
                break;
              }

              if (v23 < v22 || (v21 = v23 + v16, v23 + v16 >= v20))
              {
                __break(1u);
                goto LABEL_37;
              }

              ++v16;
              if (!(v27 + v16))
              {
                v23 += v16;
                v21 = v23 - 1;
                v15 = v26;
                *(v2 + 2) = v26;
                goto LABEL_24;
              }
            }

LABEL_35:
            *(v2 + 2) = v15 + v16 + 1;
            goto LABEL_14;
          }
        }

        else
        {
          v27 = v15 - v26;
          if (v15 < v26)
          {
            goto LABEL_26;
          }
        }

        *(v2 + 2) = v15;
      }
    }

    goto LABEL_39;
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_227460704(uint64_t a1)
{
  v4 = v1;
  result = sub_22732A5A0(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *a1);
  v6 = *v1;
  v7 = *(*v1 + 16);
  v8 = v7 + result;
  if (__OFADD__(v7, result))
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v10 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v12 = v6[3] >> 1, v12 < v8))
    {
      if (v7 <= v8)
      {
        v13 = v8;
      }

      else
      {
        v13 = v7;
      }

      v6 = sub_2273A5A28(isUniquelyReferenced_nonNull_native, v13, 1, v6);
      v12 = v6[3] >> 1;
    }

    v14 = v6[2];
    v15 = v12 - v14;
    result = sub_2274CE694(v36, &v6[3 * v14 + 4], v12 - v14);
    if (result >= v9)
    {
      if (result >= 1)
      {
        v16 = v6[2];
        v17 = __OFADD__(v16, result);
        v18 = v16 + result;
        if (v17)
        {
          __break(1u);
LABEL_33:
          *&v38[8] = v2;
          *&v38[16] = v8;
          v38[24] = 0;
          v6[2] = -v3;
          goto LABEL_13;
        }

        v6[2] = v18;
      }

      if (result != v15)
      {
LABEL_13:
        v34[2] = v37;
        v35[0] = *v38;
        *(v35 + 9) = *&v38[9];
        v34[0] = v36[0];
        v34[1] = v36[1];
        result = sub_226E97D1C(v34, &qword_27D7BCBA8, &qword_2276808D0);
        *v4 = v6;
        return result;
      }

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_16:
  if (v38[24] & 1) != 0 || (v38[0])
  {
    goto LABEL_37;
  }

  v19 = *&v38[16];
  if (*&v38[16] != DWORD2(v37))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v2 = v37;
  v20 = *&v38[8];
  if (*&v38[8] == v37)
  {
    goto LABEL_13;
  }

  v21 = v6[2];
  v22 = *&v36[0];
  result = sub_22732A6B8(*&v38[8], *&v38[16], 0, *&v36[0]);
  v8 = v19;
  while (1)
  {
    v25 = v6[3];
    v26 = v25 >> 1;
    if ((v25 >> 1) < v21 + 1)
    {
      break;
    }

    v27 = v26 - v21;
    if (v26 > v21)
    {
      goto LABEL_24;
    }

LABEL_21:
    v6[2] = v21;
  }

  v33 = result;
  v29 = v23;
  v30 = v24;
  v31 = sub_2273A5A28((v25 > 1), v21 + 1, 1, v6);
  v24 = v30;
  v23 = v29;
  v6 = v31;
  result = v33;
  v26 = v6[3] >> 1;
  v27 = v26 - v21;
  if (v26 <= v21)
  {
    goto LABEL_21;
  }

LABEL_24:
  v32 = v26;
  v28 = &v6[3 * v21 + 6];
  v3 = ~v21;
  while (1)
  {
    *(v28 - 2) = v20;
    *(v28 - 1) = v8;
    *v28 = 0;
    if (v24)
    {
      break;
    }

    v8 = v23;
    if (v23 != v19)
    {
      __break(1u);
      goto LABEL_35;
    }

    v20 = result;
    if (result == v2)
    {
      goto LABEL_33;
    }

    result = sub_22732A6B8(result, v23, 0, v22);
    v28 += 24;
    --v3;
    if (!--v27)
    {
      v21 = v32;
      goto LABEL_21;
    }
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_2274609C0(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  v12 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v6 = result;
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v13 = *(v6 + 16);
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    *(v6 + 16) = v15;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_227460B04(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  v12 = *v4;
  if (swift_isUniquelyReferenced_nonNull_native() && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v6 = a2();
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v13 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v14 = *(result - 8);
  if (v13 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = *(v14 + 72);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v17 = *(v6 + 16);
  v18 = __OFADD__(v17, v5);
  v19 = v17 + v5;
  if (!v18)
  {
    *(v6 + 16) = v19;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_227460C6C(uint64_t a1, uint64_t a2, char *a3, unint64_t a4)
{
  v73 = a2;
  v8 = sub_227666B60();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F20, &qword_2276767D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v71 = &v57 - v18;
  v20.n128_f64[0] = MEMORY[0x28223BE20](v19);
  v21 = &v57;
  v23 = &v57 - v22;
  v24 = (a4 >> 1);
  v25 = __OFSUB__(a4 >> 1, a3);
  v26 = (a4 >> 1) - a3;
  if (v25)
  {
    __break(1u);
    goto LABEL_21;
  }

  v72 = v12;
  v74 = v9;
  v75 = a1;
  v12 = *v4;
  v27 = *(*v4 + 16);
  v28 = v27 + v26;
  if (__OFADD__(v27, v26))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v29 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v21 = (v12[3] >> 1), v21 < v28))
  {
    if (v27 <= v28)
    {
      v31 = v27 + v26;
    }

    else
    {
      v31 = v27;
    }

    v12 = sub_2273A55CC(isUniquelyReferenced_nonNull_native, v31, 1, v12);
    v21 = (v12[3] >> 1);
  }

  v32 = v12[2];
  v33 = &v21[-v32];
  if (v24 == a3)
  {
    if (v26 <= 0)
    {
      v26 = 0;
      v21 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v33 < v26)
  {
    __break(1u);
    goto LABEL_27;
  }

  v34 = v12 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v32;
  result = swift_arrayInitWithCopy();
  if (v26 <= 0)
  {
LABEL_16:
    v21 = v24;
LABEL_17:
    if (v26 != v33)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v4 = v12;
      return result;
    }

LABEL_23:
    v70 = v21;
    v26 = v12[2];
    v28 = v74;
    v59 = *(v74 + 56);
    v60 = v74 + 56;
    v59(v23, 1, 1, v8, v20);
    v38 = v71;
    sub_226E93170(v23, v71, &qword_27D7B8F20, &qword_2276767D0);
    v67 = *(v28 + 48);
    v68 = v28 + 48;
    if (v67(v38, 1, v8) == 1)
    {
      v39 = v71;
LABEL_25:
      sub_226E97D1C(v23, &qword_27D7B8F20, &qword_2276767D0);
      swift_unknownObjectRelease();
      result = sub_226E97D1C(v39, &qword_27D7B8F20, &qword_2276767D0);
      goto LABEL_19;
    }

LABEL_27:
    v63 = (v28 + 32);
    v57 = (v28 + 8);
    v58 = (v28 + 16);
    v40 = v26;
    v39 = v71;
    v65 = v23;
    v66 = v16;
    do
    {
      sub_226E97D1C(v39, &qword_27D7B8F20, &qword_2276767D0);
      v42 = v12[3];
      v43 = v42 >> 1;
      v44 = v40;
      if ((v42 >> 1) < v40 + 1)
      {
        v12 = sub_2273A55CC(v42 > 1, v40 + 1, 1, v12);
        v43 = v12[3] >> 1;
      }

      v45 = *(v74 + 80);
      sub_226E93170(v23, v16, &qword_27D7B8F20, &qword_2276767D0);
      if (v67(v16, 1, v8) == 1)
      {
        v40 = v44;
        v46 = v66;
LABEL_34:
        sub_226E97D1C(v46, &qword_27D7B8F20, &qword_2276767D0);
        v41 = v40;
        v39 = v71;
        v16 = v46;
      }

      else
      {
        v62 = v12 + ((v45 + 32) & ~v45);
        v47 = *v63;
        v40 = v44;
        if (v44 <= v43)
        {
          v48 = v43;
        }

        else
        {
          v48 = v44;
        }

        v64 = v48;
        v46 = v66;
        v61 = v47;
        while (1)
        {
          v52 = v72;
          v47(v72, v46, v8);
          if (v64 == v40)
          {
            break;
          }

          v53 = v65;
          sub_226E97D1C(v65, &qword_27D7B8F20, &qword_2276767D0);
          v54 = v40;
          v55 = *(v74 + 72);
          v69 = v54;
          result = (v47)(&v62[v55 * v54], v52, v8);
          if (v70 == v24)
          {
            v49 = 1;
            v70 = v24;
            v50 = v66;
          }

          else
          {
            v50 = v66;
            if (v70 < a3 || v70 >= v24)
            {
              goto LABEL_47;
            }

            v56 = v70;
            (*v58)(v53, v73 + v55 * v70, v8);
            v49 = 0;
            v70 = v56 + 1;
          }

          (v59)(v53, v49, 1, v8);
          sub_226E93170(v53, v50, &qword_27D7B8F20, &qword_2276767D0);
          v51 = v67(v50, 1, v8);
          v40 = v69 + 1;
          v46 = v50;
          v47 = v61;
          if (v51 == 1)
          {
            goto LABEL_34;
          }
        }

        (*v57)(v52, v8);
        v41 = v64;
        v40 = v64;
        v39 = v71;
        v16 = v66;
      }

      v23 = v65;
      v12[2] = v41;
      sub_226E93170(v23, v39, &qword_27D7B8F20, &qword_2276767D0);
    }

    while (v67(v39, 1, v8) != 1);
    goto LABEL_25;
  }

  v36 = v12[2];
  v25 = __OFADD__(v36, v26);
  v37 = v36 + v26;
  if (!v25)
  {
    v12[2] = v37;
    goto LABEL_16;
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_2274612A8(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  v8 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v9 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v9 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v4 + 8 * v9 + 32), (v7 + 32), 8 * v3);

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v10 = *(v4 + 16);
  v11 = __OFADD__(v10, v3);
  v12 = v10 + v3;
  if (!v11)
  {
    *(v4 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2274613A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a1;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v3 + 3) >> 1, v9 < v5))
  {
    if (v4 <= v5)
    {
      v10 = v4 + v2;
    }

    else
    {
      v10 = v4;
    }

    v3 = sub_2273A644C(isUniquelyReferenced_nonNull_native, v10, 1, v3);
    v9 = *(v3 + 3) >> 1;
  }

  v11 = *(v3 + 2);
  v12 = v9 - v11;
  result = sub_2274CED34(v40, &v3[8 * v11 + 32], v9 - v11, v6);
  if (result < v2)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v17 = *(v3 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_20:
      v22 = (v15 + 64) >> 6;
      v23 = v16;
      do
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_43;
        }

        if (v24 >= v22)
        {
          goto LABEL_13;
        }

        v25 = *(v14 + 8 * v24);
        ++v23;
      }

      while (!v25);
      v20 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v16 = v24;
      goto LABEL_25;
    }

    *(v3 + 2) = v19;
  }

  if (result != v12)
  {
LABEL_13:
    result = sub_226EBB21C();
LABEL_14:
    *v1 = v3;
    return result;
  }

LABEL_17:
  v6 = *(v3 + 2);
  result = v40[0];
  v14 = v40[1];
  v15 = v41;
  v16 = v42;
  if (!v43)
  {
    goto LABEL_20;
  }

  v20 = (v43 - 1) & v43;
  v21 = __clz(__rbit64(v43)) | (v42 << 6);
  v22 = (v41 + 64) >> 6;
LABEL_25:
  v26 = *(*(result + 48) + 8 * v21);
  while (1)
  {
    v27 = *(v3 + 3);
    v28 = v27 >> 1;
    if ((v27 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v28)
    {
      goto LABEL_33;
    }

LABEL_28:
    *(v3 + 2) = v6;
  }

  v38 = v20;
  v39 = result;
  v37 = v14;
  v32 = v15;
  v33 = v16;
  v34 = v3;
  v35 = v26;
  v36 = sub_2273A644C((v27 > 1), v6 + 1, 1, v34);
  v26 = v35;
  v14 = v37;
  v20 = v38;
  v16 = v33;
  v15 = v32;
  v3 = v36;
  result = v39;
  v28 = *(v3 + 3) >> 1;
  if (v6 >= v28)
  {
    goto LABEL_28;
  }

LABEL_33:
  while (1)
  {
    *&v3[8 * v6++ + 32] = v26;
    if (!v20)
    {
      break;
    }

LABEL_32:
    v29 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v26 = *(*(result + 48) + ((v16 << 9) | (8 * v29)));
    if (v6 == v28)
    {
      v6 = v28;
      goto LABEL_28;
    }
  }

  v30 = v16;
  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v31 >= v22)
    {
      result = sub_226EBB21C();
      *(v3 + 2) = v6;
      goto LABEL_14;
    }

    v20 = *(v14 + 8 * v31);
    ++v30;
    if (v20)
    {
      v16 = v31;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_2274616DC(uint64_t a1)
{
  v79 = sub_2276650A0();
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v79);
  v80 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDE50, qword_227686450);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v61 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v61 - v15;
  v17 = *(a1 + 16);
  v18 = *v1;
  v19 = *(*v1 + 2);
  v20 = v19 + v17;
  if (__OFADD__(v19, v17))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v78 = v14;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v12;
  if (!isUniquelyReferenced_nonNull_native || (v22 = *(v18 + 3) >> 1, v22 < v20))
  {
    if (v19 <= v20)
    {
      v23 = v19 + v17;
    }

    else
    {
      v23 = v19;
    }

    v18 = sub_2273A6CC4(isUniquelyReferenced_nonNull_native, v23, 1, v18);
    v22 = *(v18 + 3) >> 1;
  }

  v24 = *(v18 + 2);
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = *(v4 + 72);
  v25 = v22 - v24;
  result = sub_2274CF004(&v81, &v18[v20 + v19 * v24], v22 - v24, a1);
  if (result < v17)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v28 = *(v18 + 2);
    v29 = __OFADD__(v28, result);
    v30 = v28 + result;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v18 + 2) = v30;
  }

  if (result != v25)
  {
    result = sub_226EBB21C();
LABEL_14:
    *v1 = v18;
    return result;
  }

LABEL_17:
  v76 = *(v18 + 2);
  v27 = v82;
  v67 = v81;
  v30 = v84;
  v26 = &v86;
  v62 = v83;
  v31 = v85;
  v65 = v82;
  if (v85)
  {
    v32 = v84;
LABEL_27:
    v74 = (v31 - 1) & v31;
    v36 = v79;
    (*(v2 + 16))(v16, *(v67 + 48) + (__clz(__rbit64(v31)) | (v32 << 6)) * v19, v79);
    v69 = *(v2 + 56);
    v69(v16, 0, 1, v36);
    v35 = v32;
    while (1)
    {
      v37 = v77;
      sub_226E93170(v16, v77, &qword_27D7BDE50, qword_227686450);
      v38 = *(v2 + 48);
      v2 += 48;
      v73 = v38;
      if (v38(v37, 1, v36) == 1)
      {
        break;
      }

      v40 = (v4 + 32);
      v64 = (v62 + 64) >> 6;
      v68 = v4 + 56;
      v66 = (v4 + 16);
      v63 = (v4 + 8);
      v39 = v77;
      v75 = v40;
      while (1)
      {
        sub_226E97D1C(v39, &qword_27D7BDE50, qword_227686450);
        v41 = *(v18 + 3);
        v42 = v41 >> 1;
        if ((v41 >> 1) < v76 + 1)
        {
          v18 = sub_2273A6CC4(v41 > 1, v76 + 1, 1, v18);
          v42 = *(v18 + 3) >> 1;
        }

        v43 = v78;
        sub_226E93170(v16, v78, &qword_27D7BDE50, qword_227686450);
        if (v73(v43, 1, v79) != 1)
        {
          break;
        }

        v44 = v35;
        v45 = v78;
        v4 = v76;
LABEL_38:
        v35 = v44;
        sub_226E97D1C(v45, &qword_27D7BDE50, qword_227686450);
        v76 = v4;
LABEL_33:
        *(v18 + 2) = v4;
        v39 = v77;
        sub_226E93170(v16, v77, &qword_27D7BDE50, qword_227686450);
        if (v73(v39, 1, v79) == 1)
        {
          goto LABEL_30;
        }
      }

      v71 = &v18[v20];
      v4 = v76;
      v46 = *v75;
      if (v76 <= v42)
      {
        v47 = v42;
      }

      else
      {
        v47 = v76;
      }

      v72 = v47;
      v45 = v78;
      v48 = v79;
      v49 = v80;
      v70 = v46;
      while (1)
      {
        v53 = v49;
        v54 = v45;
        v55 = v48;
        v56 = v46;
        v46(v53, v54, v48);
        if (v4 == v72)
        {
          (*v63)(v80, v55);
          v4 = v72;
          v76 = v72;
          goto LABEL_33;
        }

        sub_226E97D1C(v16, &qword_27D7BDE50, qword_227686450);
        v76 = v4;
        v56(&v71[v4 * v19], v80, v55);
        v57 = v74;
        if (!v74)
        {
          break;
        }

        v58 = v35;
LABEL_55:
        v74 = (v57 - 1) & v57;
        v51 = v79;
        (*v66)(v16, *(v67 + 48) + (__clz(__rbit64(v57)) | (v58 << 6)) * v19, v79);
        v50 = 0;
        v60 = v58;
LABEL_44:
        v4 = v76 + 1;
        v69(v16, v50, 1, v51);
        v45 = v78;
        sub_226E93170(v16, v78, &qword_27D7BDE50, qword_227686450);
        v52 = v73(v45, 1, v51);
        v48 = v51;
        v35 = v60;
        v44 = v60;
        v49 = v80;
        v46 = v70;
        if (v52 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v64 <= v35 + 1)
      {
        v59 = v35 + 1;
      }

      else
      {
        v59 = v64;
      }

      v60 = v59 - 1;
      while (1)
      {
        v58 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v58 >= v64)
        {
          v74 = 0;
          v50 = 1;
          v51 = v79;
          goto LABEL_44;
        }

        v57 = *(v65 + 8 * v58);
        ++v35;
        if (v57)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v36 = v79;
      v69 = *(v2 + 56);
      v69(v16, 1, 1, v79);
      v74 = 0;
    }

    v39 = v77;
LABEL_30:
    sub_226E97D1C(v16, &qword_27D7BDE50, qword_227686450);
    sub_226EBB21C();
    result = sub_226E97D1C(v39, &qword_27D7BDE50, qword_227686450);
    goto LABEL_14;
  }

LABEL_20:
  v33 = (*(v26 - 32) + 64) >> 6;
  if (v33 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = v33;
  }

  v35 = v34 - 1;
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v33)
    {
      goto LABEL_57;
    }

    v31 = *(v27 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227461E54(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v6 = *(v3 + 24) >> 1, v6 <= v4))
  {
    result = sub_2273A5610(result, v4 + 1, 1, v3);
    v3 = result;
    v6 = *(result + 24) >> 1;
  }

  v7 = *(v3 + 16);
  if (v6 != v7)
  {
    if (v6 > v7)
    {
      *(v3 + 8 * v7 + 32) = a1;
      *(v3 + 16) = v7 + 1;
      *v1 = v3;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_227461F00(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  v8 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v4 + 24) >> 1) - *(v4 + 16) < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD058, &qword_2276839B0);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_227462014(uint64_t a1)
{
  v79 = sub_2276639B0();
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v79);
  v80 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9680, &unk_227671520);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v61 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v61 - v15;
  v17 = *(a1 + 16);
  v18 = *v1;
  v19 = *(*v1 + 2);
  v20 = v19 + v17;
  if (__OFADD__(v19, v17))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v78 = v14;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v12;
  if (!isUniquelyReferenced_nonNull_native || (v22 = *(v18 + 3) >> 1, v22 < v20))
  {
    if (v19 <= v20)
    {
      v23 = v19 + v17;
    }

    else
    {
      v23 = v19;
    }

    v18 = sub_2273A4EA4(isUniquelyReferenced_nonNull_native, v23, 1, v18);
    v22 = *(v18 + 3) >> 1;
  }

  v24 = *(v18 + 2);
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = *(v4 + 72);
  v25 = v22 - v24;
  result = sub_2274CDD80(&v81, &v18[v20 + v19 * v24], v22 - v24, a1);
  if (result < v17)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v28 = *(v18 + 2);
    v29 = __OFADD__(v28, result);
    v30 = v28 + result;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v18 + 2) = v30;
  }

  if (result != v25)
  {
    result = sub_226EBB21C();
LABEL_14:
    *v1 = v18;
    return result;
  }

LABEL_17:
  v76 = *(v18 + 2);
  v27 = v82;
  v67 = v81;
  v30 = v84;
  v26 = &v86;
  v62 = v83;
  v31 = v85;
  v65 = v82;
  if (v85)
  {
    v32 = v84;
LABEL_27:
    v74 = (v31 - 1) & v31;
    v36 = v79;
    (*(v2 + 16))(v16, *(v67 + 48) + (__clz(__rbit64(v31)) | (v32 << 6)) * v19, v79);
    v69 = *(v2 + 56);
    v69(v16, 0, 1, v36);
    v35 = v32;
    while (1)
    {
      v37 = v77;
      sub_226E93170(v16, v77, &qword_27D7B9680, &unk_227671520);
      v38 = *(v2 + 48);
      v2 += 48;
      v73 = v38;
      if (v38(v37, 1, v36) == 1)
      {
        break;
      }

      v40 = (v4 + 32);
      v64 = (v62 + 64) >> 6;
      v68 = v4 + 56;
      v66 = (v4 + 16);
      v63 = (v4 + 8);
      v39 = v77;
      v75 = v40;
      while (1)
      {
        sub_226E97D1C(v39, &qword_27D7B9680, &unk_227671520);
        v41 = *(v18 + 3);
        v42 = v41 >> 1;
        if ((v41 >> 1) < v76 + 1)
        {
          v18 = sub_2273A4EA4(v41 > 1, v76 + 1, 1, v18);
          v42 = *(v18 + 3) >> 1;
        }

        v43 = v78;
        sub_226E93170(v16, v78, &qword_27D7B9680, &unk_227671520);
        if (v73(v43, 1, v79) != 1)
        {
          break;
        }

        v44 = v35;
        v45 = v78;
        v4 = v76;
LABEL_38:
        v35 = v44;
        sub_226E97D1C(v45, &qword_27D7B9680, &unk_227671520);
        v76 = v4;
LABEL_33:
        *(v18 + 2) = v4;
        v39 = v77;
        sub_226E93170(v16, v77, &qword_27D7B9680, &unk_227671520);
        if (v73(v39, 1, v79) == 1)
        {
          goto LABEL_30;
        }
      }

      v71 = &v18[v20];
      v4 = v76;
      v46 = *v75;
      if (v76 <= v42)
      {
        v47 = v42;
      }

      else
      {
        v47 = v76;
      }

      v72 = v47;
      v45 = v78;
      v48 = v79;
      v49 = v80;
      v70 = v46;
      while (1)
      {
        v53 = v49;
        v54 = v45;
        v55 = v48;
        v56 = v46;
        v46(v53, v54, v48);
        if (v4 == v72)
        {
          (*v63)(v80, v55);
          v4 = v72;
          v76 = v72;
          goto LABEL_33;
        }

        sub_226E97D1C(v16, &qword_27D7B9680, &unk_227671520);
        v76 = v4;
        v56(&v71[v4 * v19], v80, v55);
        v57 = v74;
        if (!v74)
        {
          break;
        }

        v58 = v35;
LABEL_55:
        v74 = (v57 - 1) & v57;
        v51 = v79;
        (*v66)(v16, *(v67 + 48) + (__clz(__rbit64(v57)) | (v58 << 6)) * v19, v79);
        v50 = 0;
        v60 = v58;
LABEL_44:
        v4 = v76 + 1;
        v69(v16, v50, 1, v51);
        v45 = v78;
        sub_226E93170(v16, v78, &qword_27D7B9680, &unk_227671520);
        v52 = v73(v45, 1, v51);
        v48 = v51;
        v35 = v60;
        v44 = v60;
        v49 = v80;
        v46 = v70;
        if (v52 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v64 <= v35 + 1)
      {
        v59 = v35 + 1;
      }

      else
      {
        v59 = v64;
      }

      v60 = v59 - 1;
      while (1)
      {
        v58 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v58 >= v64)
        {
          v74 = 0;
          v50 = 1;
          v51 = v79;
          goto LABEL_44;
        }

        v57 = *(v65 + 8 * v58);
        ++v35;
        if (v57)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v36 = v79;
      v69 = *(v2 + 56);
      v69(v16, 1, 1, v79);
      v74 = 0;
    }

    v39 = v77;
LABEL_30:
    sub_226E97D1C(v16, &qword_27D7B9680, &unk_227671520);
    sub_226EBB21C();
    result = sub_226E97D1C(v39, &qword_27D7B9680, &unk_227671520);
    goto LABEL_14;
  }

LABEL_20:
  v33 = (*(v26 - 32) + 64) >> 6;
  if (v33 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = v33;
  }

  v35 = v34 - 1;
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v33)
    {
      goto LABEL_57;
    }

    v31 = *(v27 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22746274C(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_22766CD20();
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

  v17 = sub_22766CD20();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_22746952C(result);
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

uint64_t sub_227462844(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v3 + 3) >> 1, v9 < v5))
  {
    if (v4 <= v5)
    {
      v10 = v4 + v2;
    }

    else
    {
      v10 = v4;
    }

    v3 = sub_2273A5120(isUniquelyReferenced_nonNull_native, v10, 1, v3);
    v9 = *(v3 + 3) >> 1;
  }

  v11 = *(v3 + 2);
  v12 = v9 - v11;
  result = sub_2274CF49C(v40, &v3[8 * v11 + 32], v9 - v11, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  v14 = result;
  if (result)
  {
    v15 = *(v3 + 2);
    v16 = __OFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      __break(1u);
LABEL_19:
      v20 = (v12 + 64) >> 6;
      if (v20 <= v17 + 1)
      {
        v21 = v17 + 1;
      }

      else
      {
        v21 = (v12 + 64) >> 6;
      }

      v22 = v21 - 1;
      do
      {
        v23 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v23 >= v20)
        {
          v42 = v22;
          v43 = 0;
          goto LABEL_13;
        }

        v24 = *(v13 + 8 * v23);
        ++v17;
      }

      while (!v24);
      v18 = (v24 - 1) & v24;
      v19 = __clz(__rbit64(v24)) | (v23 << 6);
      v17 = v23;
      goto LABEL_27;
    }

    *(v3 + 2) = v17;
  }

  result = v40[0];
  if (v14 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = *(v3 + 2);
  v13 = v40[1];
  v12 = v41;
  v17 = v42;
  if (!v43)
  {
    goto LABEL_19;
  }

  v18 = (v43 - 1) & v43;
  v19 = __clz(__rbit64(v43)) | (v42 << 6);
  v20 = (v41 + 64) >> 6;
LABEL_27:
  v25 = *(*(result + 56) + 8 * v19);
  while (1)
  {
    v26 = *(v3 + 3);
    v27 = v26 >> 1;
    if ((v26 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v27)
    {
      goto LABEL_35;
    }

LABEL_30:
    *(v3 + 2) = v6;
  }

  v31 = v17;
  v38 = v20;
  v39 = result;
  v32 = v13;
  v33 = v3;
  v34 = v18;
  v37 = v25;
  v35 = sub_2273A5120((v26 > 1), v6 + 1, 1, v33);
  v25 = v37;
  v18 = v34;
  v17 = v31;
  v13 = v32;
  v3 = v35;
  v20 = v38;
  result = v39;
  v27 = *(v3 + 3) >> 1;
  if (v6 >= v27)
  {
    goto LABEL_30;
  }

LABEL_35:
  while (1)
  {
    *&v3[8 * v6++ + 32] = v25;
    if (!v18)
    {
      break;
    }

LABEL_34:
    v28 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v25 = *(*(result + 56) + ((v17 << 9) | (8 * v28)));
    if (v6 == v27)
    {
      v6 = v27;
      goto LABEL_30;
    }
  }

  v29 = v17;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v30 >= v20)
    {
      break;
    }

    v18 = *(v13 + 8 * v30);
    ++v29;
    if (v18)
    {
      v17 = v30;
      goto LABEL_34;
    }
  }

  if (v20 <= v17 + 1)
  {
    v36 = v17 + 1;
  }

  else
  {
    v36 = v20;
  }

  v41 = v12;
  v42 = v36 - 1;
  v43 = 0;
  *(v3 + 2) = v6;
LABEL_13:
  result = sub_226EBB21C();
  *v1 = v3;
  return result;
}

Swift::Bool __swiftcall WorkoutPlanGenerationScaffold.satisfiesHardConstraints()()
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v7 = *(v0 + *(v6 + 24));
  v8 = *(v0 + *(v6 + 64));
  v17 = v7;

  v10 = sub_226F491E4(v9);
  sub_22746AB34(v10);
  v11 = *(v17 + 16);

  if (v11)
  {
    sub_22766A630();
    v12 = sub_22766B380();
    v13 = sub_22766C890();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_226E8E000, v12, v13, "Scaffold does not satisfy hard constraint: Modality Coverage", v14, 2u);
      MEMORY[0x22AA9A450](v14, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }

  return v11 == 0;
}

uint64_t type metadata accessor for WorkoutPlanGenerationScaffold()
{
  result = qword_27D7BDDF0;
  if (!qword_27D7BDDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Bool __swiftcall WorkoutPlanGenerationScaffold.satisfiesPartialCoverageConstraints()()
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(v0 + *(type metadata accessor for WorkoutPlanGenerationScaffold() + 64)) + 16);
  if (!v6)
  {
    sub_22766A630();
    v7 = sub_22766B380();
    v8 = sub_22766C890();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_226E8E000, v7, v8, "Scaffold does not satisfy partial constraint: Modality Coverage", v9, 2u);
      MEMORY[0x22AA9A450](v9, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }

  return v6 != 0;
}

Swift::Bool __swiftcall WorkoutPlanGenerationScaffold.isEmpty()()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutPlanGenerationScaffold() + 60));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = (v1 + 32);
  do
  {
    result = v2 == 0;
    if (!v2)
    {
      break;
    }

    v5 = *v3++;
    --v2;
  }

  while (!*(v5 + 16));
  return result;
}

BOOL WorkoutPlanGenerationScaffold.isModalitySelected(_:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + *(type metadata accessor for WorkoutPlanGenerationScaffold() + 64));
  if (*(v7 + 16) && (v8 = sub_226F491D8(a1, a2, a3 & 1), (v9 & 1) != 0))
  {
    return *(*(v7 + 56) + 8 * v8) > 0;
  }

  else
  {
    return 0;
  }
}

Swift::Double __swiftcall WorkoutPlanGenerationScaffold.incrementalEntropy(for:)(Swift::OpaquePointer a1)
{
  v3 = *(v1 + *(type metadata accessor for WorkoutPlanGenerationScaffold() + 64));
  v4 = *(a1._rawValue + 2);
  if (!v4)
  {

    v5 = 0;
LABEL_17:

    sub_22745ED8C(v28);
    v30 = v29;
    swift_bridgeObjectRelease_n();
    sub_226EA9E3C(v5);
    return v30;
  }

  v5 = 0;
  v6 = a1._rawValue + 64;
  while (1)
  {
    v8 = *(v6 - 3);
    v7 = *(v6 - 2);
    v9 = *(v6 - 1);
    v10 = *v6;

    sub_226EB396C(v7, v9, v10);
    sub_226EB396C(v7, v9, v10);
    sub_226EA9E3C(v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_226F491D8(v7, v9, v10);
    v14 = v3[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v3[3] < v17)
    {
      sub_226FF6748(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_226F491D8(v7, v9, v10);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_21;
      }

LABEL_8:
      if (v18)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    v21 = v12;
    sub_226FF6744(v12);
    v12 = v21;
    if (v18)
    {
LABEL_9:
      v20 = v12;
      sub_226EB2DFC(v7, v9, v10);
      v12 = v20;
      goto LABEL_13;
    }

LABEL_11:
    v3[(v12 >> 6) + 8] |= 1 << v12;
    v22 = v3[6] + 24 * v12;
    *v22 = v7;
    *(v22 + 8) = v9;
    *(v22 + 16) = v10;
    *(v3[7] + 8 * v12) = 0;
    v23 = v3[2];
    v16 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v16)
    {
      goto LABEL_20;
    }

    v3[2] = v24;
LABEL_13:
    v25 = v3[7];
    v26 = *(v25 + 8 * v12);
    v16 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v16)
    {
      goto LABEL_19;
    }

    *(v25 + 8 * v12) = v27;

    sub_226EB2DFC(v7, v9, v10);
    v6 += 40;
    v5 = sub_227444F98;
    if (!--v4)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_22766D220();
  __break(1u);
  return result;
}

uint64_t WorkoutPlanGenerationScaffold.init(planIdentifier:requestedModalitySchedulePreferences:requestedTotalDailyDuration:requestedWeekdays:requestedWeekCount:maxWorkoutsPerDay:modalityDurationMapping:configuration:currentSchedule:modalitiesSelected:scoringMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  i = a6;
  v90 = a9;
  v93 = a10;
  v94 = a7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v80 = *(v78 - 8);
  v18 = *(v80 + 64);
  MEMORY[0x28223BE20](v78);
  v79 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v81 = &v77 - v21;
  v22 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v23 = *(*(v22 - 1) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2276627D0();
  v84 = *(v26 - 8);
  v85 = v26;
  v27 = *(v84 + 16);
  v89 = a1;
  v27(v25, a1);
  *&v25[v22[5]] = a2;

  v29 = sub_226F491E4(v28);
  *&v25[v22[6]] = v29;
  *&v25[v22[7]] = a3;
  *&v25[v22[8]] = a4;
  *&v25[v22[9]] = a5;
  v25[v22[12]] = a12 & 1;
  *&v25[v22[10]] = i;
  *&v25[v22[13]] = v94;
  v30 = v22[14];
  v31 = sub_227667370();
  v82 = *(v31 - 8);
  v83 = v31;
  v32 = *(v82 + 16);
  v94 = a8;
  v32(&v25[v30], a8);
  *&v25[v22[15]] = v93;
  v86 = v25;
  v87 = v22;
  *&v25[v22[16]] = a11;
  v33 = v29 + 56;
  v34 = 1 << *(v29 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v29 + 56);
  v37 = (v34 + 63) >> 6;
  v93 = v29;

  v88 = a11;

  v91 = 0;
  v38 = 0;
  for (i = MEMORY[0x277D84F98]; v36; v91 = sub_227444F98)
  {
LABEL_11:
    while (1)
    {
      v40 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v41 = *(v93 + 48) + 24 * (v40 | (v38 << 6));
      v42 = *v41;
      v43 = *(v41 + 8);
      v44 = *(v41 + 16);
      sub_226EB396C(*v41, v43, *(v41 + 16));
      v45 = sub_2276672C0();
      if (*(v45 + 16))
      {
        break;
      }

      sub_226EB2DFC(v42, v43, v44);
LABEL_6:

      if (!v36)
      {
        goto LABEL_7;
      }
    }

    v46 = sub_226F491D8(v42, v43, v44);
    v48 = v47;
    sub_226EB2DFC(v42, v43, v44);
    if ((v48 & 1) == 0)
    {
      goto LABEL_6;
    }

    v49 = v79;
    v50 = *(v80 + 72);
    sub_226E93170(*(v45 + 56) + v50 * v46, v79, &qword_27D7B88C0, &unk_22767A720);

    v51 = v49;
    v52 = v81;
    sub_226F50B4C(v51, v81);
    sub_226EA9E3C(v91);
    v53 = i;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = v53;
    v55 = sub_226F3ADC4(v52);
    v57 = v53[2];
    v58 = (v56 & 1) == 0;
    v59 = __OFADD__(v57, v58);
    v60 = v57 + v58;
    if (v59)
    {
      goto LABEL_29;
    }

    v61 = v56;
    if (v53[3] >= v60)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v64 = i;
        if (v56)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v71 = v55;
        sub_226FF2414();
        v55 = v71;
        v64 = v95;
        if (v61)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_226FE6DD4(v60, isUniquelyReferenced_nonNull_native);
      v62 = v95;
      v55 = sub_226F3ADC4(v81);
      if ((v61 & 1) != (v63 & 1))
      {
        goto LABEL_32;
      }

      v64 = v62;
      if (v61)
      {
        goto LABEL_22;
      }
    }

    v64[(v55 >> 6) + 8] |= 1 << v55;
    v65 = v55;
    sub_226E93170(v81, v64[6] + v55 * v50, &qword_27D7B88C0, &unk_22767A720);
    *(v64[7] + 8 * v65) = 0;
    v66 = v64[2];
    v59 = __OFADD__(v66, 1);
    v67 = v66 + 1;
    if (v59)
    {
      goto LABEL_31;
    }

    v55 = v65;
    v64[2] = v67;
LABEL_22:
    i = v64;
    v68 = v64[7];
    v69 = *(v68 + 8 * v55);
    v59 = __OFADD__(v69, 1);
    v70 = v69 + 1;
    if (v59)
    {
      goto LABEL_30;
    }

    *(v68 + 8 * v55) = v70;
    sub_226E97D1C(v81, &qword_27D7B88C0, &unk_22767A720);
  }

LABEL_7:
  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v39 >= v37)
    {

      v73 = v86;
      v72 = v87;
      *&v86[v87[11]] = i;
      sub_22745ED8C(v88);
      v75 = v74;

      (*(v82 + 8))(v94, v83);
      (*(v84 + 8))(v89, v85);
      *(v73 + v72[17]) = v75;
      sub_227442570(v73, v90);
      return sub_226EA9E3C(v91);
    }

    v36 = *(v33 + 8 * v39);
    ++v38;
    if (v36)
    {
      v38 = v39;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_22766D220();
  __break(1u);
  return result;
}

Swift::Void __swiftcall WorkoutPlanGenerationScaffold.prettyPrint()()
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  v38 = *(v0 + *(type metadata accessor for WorkoutPlanGenerationScaffold() + 60));
  v9 = *(v38 + 16);
  sub_22766A630();
  v10 = sub_22766B380();
  v11 = sub_22766C8B0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v9;
    _os_log_impl(&dword_226E8E000, v10, v11, "Printing plans for %ld days", v12, 0xCu);
    MEMORY[0x22AA9A450](v12, -1, -1);
  }

  v14 = *(v2 + 8);
  v13 = v2 + 8;
  v41 = v14;
  v14(v8, v1);
  v16 = v38;
  v40 = *(v38 + 16);
  if (v40)
  {
    v17 = 0;
    v39 = v38 + 32;
    *&v15 = 136315394;
    v36 = v15;
    v37 = v1;
    while (v17 < *(v16 + 16))
    {
      v18 = *(v39 + 8 * v17);

      if (MEMORY[0x22AA95620](v17) == 7)
      {
        v42 = v17;
        v19 = sub_22766D140();
      }

      else
      {
        v19 = sub_2276692E0();
      }

      v21 = v19;
      v22 = v20;
      sub_22766A630();

      v23 = sub_22766B380();
      v24 = sub_22766C8B0();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = v6;
        v27 = v13;
        v28 = swift_slowAlloc();
        v42 = v28;
        *v25 = v36;
        v29 = sub_226E97AE8(v21, v22, &v42);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2080;
        v30 = MEMORY[0x22AA98660](v18, &type metadata for WorkoutPlanGenerationScheduledItem);
        v32 = v31;

        v33 = sub_226E97AE8(v30, v32, &v42);

        *(v25 + 14) = v33;
        _os_log_impl(&dword_226E8E000, v23, v24, "[Schedule] Day %s ==> %s", v25, 0x16u);
        swift_arrayDestroy();
        v34 = v28;
        v13 = v27;
        v6 = v26;
        v16 = v38;
        MEMORY[0x22AA9A450](v34, -1, -1);
        v35 = v25;
        v1 = v37;
        MEMORY[0x22AA9A450](v35, -1, -1);
      }

      else
      {
      }

      v41(v6, v1);
      if (v40 == ++v17)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t WorkoutPlanGenerationScaffold.withUnscheduledDay()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v93 = a1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v92 = *(v90 - 8);
  v3 = *(v92 + 64);
  MEMORY[0x28223BE20](v90);
  v91 = &v89 - v4;
  v5 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x28223BE20](v5);
  v101 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227667370();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v108 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2276627D0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v103 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3E8, &unk_227686370);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v89 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v89 - v28;
  (*(v13 + 56))(&v89 - v28, 1, 1, v12);
  v100 = v9;
  v30 = *(v9 + 56);
  v98 = v22;
  v30(v22, 1, 1, v8);
  v31 = *(v2 + v5[15]);
  v32 = qword_27D7B7F28;

  if (v32 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v109 = v31;

    sub_22746017C(v33);
    v97 = v109;
    v105 = v29;
    sub_226E93170(v29, v27, &unk_27D7BB9D0, &qword_227671550);
    v34 = *(v13 + 48);
    v35 = v34(v27, 1, v12);
    v106 = v12;
    v107 = v8;
    v99 = v13;
    if (v35 == 1)
    {
      (*(v13 + 16))(v103, v2, v12);
      v36 = v34(v27, 1, v12);
      v37 = v100;
      if (v36 != 1)
      {
        sub_226E97D1C(v27, &unk_27D7BB9D0, &qword_227671550);
      }
    }

    else
    {
      (*(v13 + 32))(v103, v27, v12);
      v37 = v100;
    }

    v38 = *(v2 + v5[5]);
    v39 = *(v2 + v5[7]);
    v104 = *(v2 + v5[8]);
    v40 = v5[10];
    v94 = *(v2 + v5[9]);
    v95 = v39;
    v96 = *(v2 + v40);
    v41 = *(v2 + v5[13]);
    sub_226E93170(v98, v20, &qword_27D7BB3E8, &unk_227686370);
    v42 = *(v37 + 48);
    v43 = v107;
    v44 = v42(v20, 1, v107);
    v102 = v5;
    if (v44 == 1)
    {
      (*(v37 + 16))(v108, v2 + v5[14], v43);
      v45 = v42(v20, 1, v43);

      v46 = v45 == 1;
      v8 = v43;
      if (!v46)
      {
        sub_226E97D1C(v20, &qword_27D7BB3E8, &unk_227686370);
      }
    }

    else
    {
      (*(v37 + 32))(v108, v20, v43);

      v8 = v43;
    }

    v48 = v101;
    v47 = v102;
    v49 = *(v2 + v102[16]);
    v50 = *(v2 + v102[12]);
    v13 = v106;
    (*(v99 + 16))(v101, v103, v106);
    *&v48[v47[5]] = v38;

    v51 = v97;

    v52 = sub_226F491E4(v38);
    *&v48[v47[6]] = v52;
    *&v48[v47[7]] = v95;
    *&v48[v47[8]] = v104;
    *&v48[v47[9]] = v94;
    v48[v47[12]] = v50;
    *&v48[v47[10]] = v96;
    *&v48[v47[13]] = v41;
    v53 = *(v37 + 16);
    v12 = v37 + 16;
    v27 = v108;
    v53(&v48[v47[14]], v108, v8);
    *&v48[v47[15]] = v51;
    *&v48[v47[16]] = v49;
    v2 = v52 + 56;
    v54 = 1 << *(v52 + 32);
    v55 = -1;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    v20 = v55 & *(v52 + 56);
    v5 = ((v54 + 63) >> 6);
    v94 = v49;

    v104 = v52;

    v95 = 0;
    v56 = 0;
    v96 = MEMORY[0x277D84F98];
    v31 = v27;
    v29 = v105;
    if (v20)
    {
      break;
    }

LABEL_16:
    while (1)
    {
      v57 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v57 >= v5)
      {

        v83 = v102;
        v84 = v31;
        v85 = v101;
        *&v101[v102[11]] = v96;
        sub_22745ED8C(v94);
        v87 = v86;

        (*(v100 + 8))(v84, v8);
        (*(v99 + 8))(v103, v13);
        sub_226E97D1C(v98, &qword_27D7BB3E8, &unk_227686370);
        sub_226E97D1C(v29, &unk_27D7BB9D0, &qword_227671550);
        *(v85 + v83[17]) = v87;
        sub_227442570(v85, v93);
        return sub_226EA9E3C(v95);
      }

      v20 = *(v2 + 8 * v57);
      ++v56;
      if (v20)
      {
        v56 = v57;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_38:
    swift_once();
  }

  while (1)
  {
LABEL_20:
    while (1)
    {
      v58 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v59 = *(v104 + 48) + 24 * (v58 | (v56 << 6));
      v60 = *v59;
      v61 = *(v59 + 8);
      v12 = *(v59 + 16);
      sub_226EB396C(*v59, v61, *(v59 + 16));
      v62 = sub_2276672C0();
      if (*(v62 + 16))
      {
        break;
      }

      sub_226EB2DFC(v60, v61, v12);
LABEL_15:

      v13 = v106;
      v8 = v107;
      v31 = v108;
      v29 = v105;
      if (!v20)
      {
        goto LABEL_16;
      }
    }

    v27 = sub_226F491D8(v60, v61, v12);
    v64 = v63;
    sub_226EB2DFC(v60, v61, v12);
    if ((v64 & 1) == 0)
    {
      goto LABEL_15;
    }

    v65 = v91;
    v12 = *(v92 + 72);
    sub_226E93170(*(v62 + 56) + v12 * v27, v91, &qword_27D7B88C0, &unk_22767A720);

    sub_226EA9E3C(v95);
    v66 = v96;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = v66;
    v68 = sub_226F3ADC4(v65);
    v70 = *(v66 + 2);
    v71 = (v69 & 1) == 0;
    v72 = __OFADD__(v70, v71);
    v73 = v70 + v71;
    if (v72)
    {
      break;
    }

    v74 = v69;
    if (*(v66 + 3) >= v73)
    {
      v31 = v108;
      if (isUniquelyReferenced_nonNull_native)
      {
        v76 = v109;
        if (v69)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v27 = v68;
        sub_226FF2414();
        v31 = v108;
        v68 = v27;
        v76 = v109;
        if (v74)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      sub_226FE6DD4(v73, isUniquelyReferenced_nonNull_native);
      v68 = sub_226F3ADC4(v65);
      if ((v74 & 1) != (v75 & 1))
      {
        goto LABEL_42;
      }

      v31 = v108;
      v76 = v109;
      if (v74)
      {
        goto LABEL_31;
      }
    }

    *&v76[8 * (v68 >> 6) + 64] |= 1 << v68;
    v77 = v76;
    v27 = v68;
    sub_226E93170(v65, *(v76 + 6) + v68 * v12, &qword_27D7B88C0, &unk_22767A720);
    *(*(v77 + 7) + 8 * v27) = 0;
    v78 = *(v77 + 2);
    v72 = __OFADD__(v78, 1);
    v79 = v78 + 1;
    if (v72)
    {
      goto LABEL_41;
    }

    v68 = v27;
    v76 = v77;
    *(v77 + 2) = v79;
LABEL_31:
    v96 = v76;
    v80 = *(v76 + 7);
    v81 = *(v80 + 8 * v68);
    v72 = __OFADD__(v81, 1);
    v82 = v81 + 1;
    if (v72)
    {
      goto LABEL_40;
    }

    *(v80 + 8 * v68) = v82;
    sub_226E97D1C(v65, &qword_27D7B88C0, &unk_22767A720);
    v95 = sub_227444F98;
    v13 = v106;
    v8 = v107;
    v29 = v105;
    if (!v20)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t WorkoutPlanGenerationScaffold.withScheduledDay(withDailySchedule:)@<X0>(int64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v118 = *(v4 - 8);
  v5 = *(v118 + 64);
  MEMORY[0x28223BE20](v4);
  v117 = &v116 - v6;
  v7 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v127 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_227667370();
  v131 = *(v137 - 8);
  v10 = *(v131 + 64);
  MEMORY[0x28223BE20](v137);
  v135 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_2276627D0();
  v126 = *(v136 - 8);
  v12 = *(v126 + 64);
  MEMORY[0x28223BE20](v136);
  v130 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3E8, &unk_227686370);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v123 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v128 = &v116 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v132 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v125 = &v116 - v23;
  v129 = v7;
  v24 = *(v7 + 64);
  v134 = v2;
  v25 = *(v2 + v24);
  v26 = *(a1 + 16);
  v116 = v4;
  i = a1;
  if (v26)
  {

    v27 = 0;
    v28 = (a1 + 64);
    while (1)
    {
      v29 = *(v28 - 3);
      v30 = *(v28 - 2);
      v31 = *(v28 - 1);
      v32 = *v28;

      sub_226EB396C(v30, v31, v32);
      sub_226EB396C(v30, v31, v32);
      sub_226EA9E3C(v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v138 = v25;
      v34 = sub_226F491D8(v30, v31, v32);
      v36 = v25[2];
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        goto LABEL_51;
      }

      v40 = v35;
      if (v25[3] < v39)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_8;
      }

      v43 = v34;
      sub_226FF6744(v34);
      v34 = v43;
      v25 = v138;
      if ((v40 & 1) == 0)
      {
LABEL_11:
        v25[(v34 >> 6) + 8] |= 1 << v34;
        v44 = v25[6] + 24 * v34;
        *v44 = v30;
        *(v44 + 8) = v31;
        *(v44 + 16) = v32;
        *(v25[7] + 8 * v34) = 0;
        v45 = v25[2];
        v38 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v38)
        {
          goto LABEL_53;
        }

        v25[2] = v46;
        goto LABEL_13;
      }

LABEL_9:
      v42 = v34;
      sub_226EB2DFC(v30, v31, v32);
      v34 = v42;
LABEL_13:
      v47 = v25[7];
      v48 = *(v47 + 8 * v34);
      v38 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v38)
      {
        goto LABEL_52;
      }

      *(v47 + 8 * v34) = v49;

      sub_226EB2DFC(v30, v31, v32);
      v28 += 40;
      v27 = sub_227444F98;
      if (!--v26)
      {
        goto LABEL_17;
      }
    }

    sub_226FF6748(v39, isUniquelyReferenced_nonNull_native);
    v25 = v138;
    v34 = sub_226F491D8(v30, v31, v32);
    if ((v40 & 1) != (v41 & 1))
    {
      goto LABEL_57;
    }

LABEL_8:
    if ((v40 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v27 = 0;
LABEL_17:
  v50 = v125;
  v51 = v126;
  v52 = v136;
  (*(v126 + 56))(v125, 1, 1, v136);
  v53 = v131;
  (*(v131 + 56))(v128, 1, 1, v137);
  v54 = v129;
  v55 = v134;
  v138 = *(v134 + v129[15]);

  sub_22746017C(v56);
  v124 = v138;
  v57 = v132;
  sub_226E93170(v50, v132, &unk_27D7BB9D0, &qword_227671550);
  v58 = *(v51 + 48);
  if (v58(v57, 1, v52) == 1)
  {
    (*(v51 + 16))(v130, v55, v52);
    if (v58(v57, 1, v52) != 1)
    {
      sub_226E97D1C(v57, &unk_27D7BB9D0, &qword_227671550);
    }
  }

  else
  {
    (*(v51 + 32))(v130, v57, v52);
  }

  v59 = *(v55 + v54[5]);
  v60 = v54[8];
  v120 = *(v55 + v54[7]);
  v132 = *(v55 + v60);
  v61 = v54[10];
  v119 = *(v55 + v54[9]);
  v122 = *(v55 + v61);
  i = *(v55 + v54[13]);
  v62 = v123;
  sub_226E93170(v128, v123, &qword_27D7BB3E8, &unk_227686370);
  v63 = *(v53 + 48);
  v64 = v137;
  if (v63(v62, 1, v137) == 1)
  {
    v65 = v55 + v54[14];
    v66 = v135;
    (*(v131 + 16))(v135, v65, v64);
    v67 = v63(v62, 1, v64);

    if (v67 != 1)
    {
      sub_226E97D1C(v62, &qword_27D7BB3E8, &unk_227686370);
    }
  }

  else
  {
    v66 = v135;
    (*(v131 + 32))(v135, v62, v64);
  }

  v68 = v129;
  v69 = *(v134 + v129[12]);
  v70 = *(v51 + 16);
  v71 = v127;
  v72 = v136;
  v70(v127, v130, v136);
  *&v71[v68[5]] = v59;

  v73 = v124;

  v74 = sub_226F491E4(v59);
  *&v71[v68[6]] = v74;
  *&v71[v68[7]] = v120;
  *&v71[v68[8]] = v132;
  *&v71[v68[9]] = v119;
  v71[v68[12]] = v69;
  *&v71[v68[10]] = v122;
  *&v71[v68[13]] = i;
  (*(v131 + 16))(&v71[v68[14]], v66, v64);
  *&v71[v68[15]] = v73;
  *&v71[v68[16]] = v25;
  v75 = v74 + 56;
  v76 = 1 << *(v74 + 32);
  v77 = -1;
  if (v76 < 64)
  {
    v77 = ~(-1 << v76);
  }

  v78 = v77 & *(v74 + 56);
  v79 = (v76 + 63) >> 6;

  v134 = v74;

  v122 = 0;
  v80 = 0;
  v123 = MEMORY[0x277D84F98];
  v132 = v74 + 56;
  for (i = v79; v78; v66 = v135)
  {
LABEL_35:
    while (1)
    {
      v82 = __clz(__rbit64(v78));
      v78 &= v78 - 1;
      v83 = *(v134 + 48) + 24 * (v82 | (v80 << 6));
      v84 = *v83;
      v85 = *(v83 + 8);
      v86 = *(v83 + 16);
      sub_226EB396C(*v83, v85, *(v83 + 16));
      v87 = sub_2276672C0();
      if (*(v87 + 16))
      {
        break;
      }

      sub_226EB2DFC(v84, v85, v86);
LABEL_30:

      v72 = v136;
      v64 = v137;
      v66 = v135;
      v75 = v132;
      v79 = i;
      if (!v78)
      {
        goto LABEL_31;
      }
    }

    v88 = sub_226F491D8(v84, v85, v86);
    v90 = v89;
    sub_226EB2DFC(v84, v85, v86);
    if ((v90 & 1) == 0)
    {
      goto LABEL_30;
    }

    v91 = *(v118 + 72);
    v92 = v117;
    sub_226E93170(*(v87 + 56) + v91 * v88, v117, &qword_27D7B88C0, &unk_22767A720);

    sub_226EA9E3C(v122);
    v93 = v123;
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v138 = v93;
    v95 = sub_226F3ADC4(v92);
    v97 = *(v93 + 16);
    v98 = (v96 & 1) == 0;
    v38 = __OFADD__(v97, v98);
    v99 = v97 + v98;
    v79 = i;
    if (v38)
    {
      goto LABEL_54;
    }

    v100 = v96;
    if (*(v93 + 24) >= v99)
    {
      if ((v94 & 1) == 0)
      {
        v110 = v95;
        sub_226FF2414();
        v95 = v110;
      }
    }

    else
    {
      sub_226FE6DD4(v99, v94);
      v95 = sub_226F3ADC4(v92);
      if ((v100 & 1) != (v101 & 1))
      {
        goto LABEL_58;
      }
    }

    v75 = v132;
    v102 = v138;
    if ((v100 & 1) == 0)
    {
      v103 = v138;
      v138[(v95 >> 6) + 8] |= 1 << v95;
      v104 = v95;
      sub_226E93170(v92, v103[6] + v95 * v91, &qword_27D7B88C0, &unk_22767A720);
      *(v103[7] + 8 * v104) = 0;
      v105 = v103[2];
      v38 = __OFADD__(v105, 1);
      v106 = v105 + 1;
      if (v38)
      {
        goto LABEL_56;
      }

      v95 = v104;
      v103[2] = v106;
      v102 = v103;
    }

    v123 = v102;
    v107 = *(v102 + 56);
    v108 = *(v107 + 8 * v95);
    v38 = __OFADD__(v108, 1);
    v109 = v108 + 1;
    if (v38)
    {
      goto LABEL_55;
    }

    *(v107 + 8 * v95) = v109;
    sub_226E97D1C(v92, &qword_27D7B88C0, &unk_22767A720);
    v122 = sub_227444F98;
    v72 = v136;
    v64 = v137;
  }

LABEL_31:
  while (1)
  {
    v81 = v80 + 1;
    if (__OFADD__(v80, 1))
    {
      break;
    }

    if (v81 >= v79)
    {

      v111 = v129;
      v112 = v127;
      *&v127[v129[11]] = v123;
      sub_22745ED8C(v25);
      v114 = v113;

      (*(v131 + 8))(v66, v64);
      (*(v126 + 8))(v130, v72);
      sub_226E97D1C(v128, &qword_27D7BB3E8, &unk_227686370);
      sub_226E97D1C(v125, &unk_27D7BB9D0, &qword_227671550);
      *(v112 + v111[17]) = v114;
      sub_227442570(v112, v121);
      sub_226EA9E3C(v122);
      return sub_226EA9E3C(v27);
    }

    v78 = *(v75 + 8 * v81);
    ++v80;
    if (v78)
    {
      v80 = v81;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_22766D220();
  __break(1u);
LABEL_58:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t WorkoutPlanGenerationScaffold.withBodyFocuses(bodyFocusesByDay:forModality:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v134) = a4;
  v132 = a2;
  i = a3;
  v117 = a1;
  v118 = a5;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v115 = *(v114 - 8);
  v6 = *(v115 + 64);
  MEMORY[0x28223BE20](v114);
  v116 = &v113 - v7;
  v8 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v125 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227667370();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v129 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2276627D0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v127 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3E8, &unk_227686370);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v120 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v113 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v119 = &v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v124 = &v113 - v29;
  v128 = v8;
  v30 = *(v8 + 60);
  v121 = v5;
  v31 = *&v5[v30];
  v32 = *(v31 + 16);
  v33 = MEMORY[0x277D84F90];
  v130 = v11;
  v131 = v15;
  v126 = v16;
  v122 = v24;
  v123 = v12;
  if (v32)
  {
    v135 = MEMORY[0x277D84F90];
    sub_226F1FD08(0, v32, 0);
    v34 = 0;
    v35 = *(v31 + 16);
    v33 = v135;
    v36 = v117;
    do
    {
      if (v35 == v34)
      {
        goto LABEL_49;
      }

      if (v34 >= *(v31 + 16))
      {
        goto LABEL_50;
      }

      v37 = *(v31 + 32 + 8 * v34);
      if (*(v36 + 16) && (v38 = sub_226F491D4(v34), (v39 & 1) != 0))
      {
        v40 = *(*(v36 + 56) + 8 * v38);

        v42 = Array<A>.withBodyFocuses(_:forModality:)(v41, v132, i, v134 & 1, v37);

        v37 = v42;
      }

      else
      {
      }

      v135 = v33;
      v44 = v33[2];
      v43 = v33[3];
      if (v44 >= v43 >> 1)
      {
        sub_226F1FD08((v43 > 1), v44 + 1, 1);
        v36 = v117;
        v33 = v135;
      }

      ++v34;
      v33[2] = v44 + 1;
      v33[v44 + 4] = v37;
    }

    while (v32 != v34);
    v11 = v130;
    v15 = v131;
    v24 = v122;
    v12 = v123;
    v16 = v126;
  }

  v45 = v124;
  (*(v16 + 56))(v124, 1, 1, v15);
  (*(v12 + 56))(v24, 1, 1, v11);
  v46 = v119;
  sub_226E93170(v45, v119, &unk_27D7BB9D0, &qword_227671550);
  v47 = *(v16 + 48);
  v48 = v47(v46, 1, v15);
  v49 = v128;
  if (v48 == 1)
  {
    v50 = *(v16 + 16);
    v51 = v121;
    v50(v127, v121, v15);
    if (v47(v46, 1, v15) != 1)
    {
      sub_226E97D1C(v46, &unk_27D7BB9D0, &qword_227671550);
    }
  }

  else
  {
    (*(v16 + 32))(v127, v46, v15);
    v51 = v121;
  }

  v52 = *&v51[v49[5]];
  v53 = v49[8];
  v121 = *&v51[v49[7]];
  v54 = *&v51[v53];
  v55 = v49[10];
  v119 = *&v51[v49[9]];
  v56 = v49;
  v132 = *&v51[v55];
  i = v54;
  v134 = *&v51[v49[13]];
  v57 = v120;
  sub_226E93170(v24, v120, &qword_27D7BB3E8, &unk_227686370);
  v58 = *(v12 + 48);
  v59 = v12;
  v60 = v130;
  if (v58(v57, 1, v130) == 1)
  {
    v61 = v129;
    (*(v59 + 16))(v129, &v51[v56[14]], v60);
    v62 = v58(v57, 1, v60);

    if (v62 != 1)
    {
      sub_226E97D1C(v57, &qword_27D7BB3E8, &unk_227686370);
    }
  }

  else
  {
    v61 = v129;
    (*(v59 + 32))(v129, v57, v60);
  }

  v63 = v128;
  v64 = *&v51[v128[16]];
  v65 = v51[v128[12]];
  v66 = v125;
  v67 = v131;
  (*(v126 + 16))(v125, v127, v131);
  *&v66[v63[5]] = v52;

  v68 = sub_226F491E4(v52);
  *&v66[v63[6]] = v68;
  *&v66[v63[7]] = v121;
  *&v66[v63[8]] = i;
  *&v66[v63[9]] = v119;
  v66[v63[12]] = v65;
  *&v66[v63[10]] = v132;
  *&v66[v63[13]] = v134;
  (*(v59 + 16))(&v66[v63[14]], v61, v60);
  *&v66[v63[15]] = v33;
  v69 = v63[16];
  v70 = v67;
  *&v66[v69] = v64;
  v71 = v68 + 56;
  v72 = 1 << *(v68 + 32);
  v73 = -1;
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  v74 = v73 & *(v68 + 56);
  v75 = (v72 + 63) >> 6;
  v120 = v64;

  v134 = v68;

  v121 = 0;
  v76 = 0;
  v132 = MEMORY[0x277D84F98];
  for (i = v68 + 56; v74; v60 = v130)
  {
LABEL_31:
    while (1)
    {
      v78 = __clz(__rbit64(v74));
      v74 &= v74 - 1;
      v79 = *(v134 + 48) + 24 * (v78 | (v76 << 6));
      v80 = *v79;
      v81 = *(v79 + 8);
      v82 = *(v79 + 16);
      sub_226EB396C(*v79, v81, *(v79 + 16));
      v83 = sub_2276672C0();
      if (*(v83 + 16))
      {
        break;
      }

      sub_226EB2DFC(v80, v81, v82);
LABEL_26:

      v60 = v130;
      v70 = v131;
      v61 = v129;
      v71 = i;
      if (!v74)
      {
        goto LABEL_27;
      }
    }

    v84 = sub_226F491D8(v80, v81, v82);
    v86 = v85;
    sub_226EB2DFC(v80, v81, v82);
    if ((v86 & 1) == 0)
    {
      goto LABEL_26;
    }

    v87 = *(v115 + 72);
    v88 = v116;
    sub_226E93170(*(v83 + 56) + v87 * v84, v116, &qword_27D7B88C0, &unk_22767A720);

    sub_226EA9E3C(v121);
    v89 = v132;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v135 = v89;
    v91 = sub_226F3ADC4(v88);
    v93 = *(v89 + 16);
    v94 = (v92 & 1) == 0;
    v95 = __OFADD__(v93, v94);
    v96 = v93 + v94;
    if (v95)
    {
      goto LABEL_51;
    }

    v97 = v92;
    v70 = v131;
    if (*(v89 + 24) >= v96)
    {
      v61 = v129;
      v71 = i;
      if (isUniquelyReferenced_nonNull_native)
      {
        v99 = v135;
        if (v92)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v106 = v91;
        sub_226FF2414();
        v61 = v129;
        v91 = v106;
        v99 = v135;
        if (v97)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      sub_226FE6DD4(v96, isUniquelyReferenced_nonNull_native);
      v91 = sub_226F3ADC4(v116);
      v71 = i;
      if ((v97 & 1) != (v98 & 1))
      {
        goto LABEL_54;
      }

      v61 = v129;
      v99 = v135;
      if (v97)
      {
        goto LABEL_42;
      }
    }

    v99[(v91 >> 6) + 8] |= 1 << v91;
    v100 = v91;
    sub_226E93170(v116, v99[6] + v91 * v87, &qword_27D7B88C0, &unk_22767A720);
    *(v99[7] + 8 * v100) = 0;
    v101 = v99[2];
    v95 = __OFADD__(v101, 1);
    v102 = v101 + 1;
    if (v95)
    {
      goto LABEL_53;
    }

    v91 = v100;
    v99[2] = v102;
    v61 = v129;
LABEL_42:
    v132 = v99;
    v103 = v99[7];
    v104 = *(v103 + 8 * v91);
    v95 = __OFADD__(v104, 1);
    v105 = v104 + 1;
    if (v95)
    {
      goto LABEL_52;
    }

    *(v103 + 8 * v91) = v105;
    sub_226E97D1C(v116, &qword_27D7B88C0, &unk_22767A720);
    v121 = sub_227444F98;
  }

LABEL_27:
  while (1)
  {
    v77 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      break;
    }

    if (v77 >= v75)
    {

      v107 = v128;
      v108 = v61;
      v109 = v125;
      *&v125[v128[11]] = v132;
      sub_22745ED8C(v120);
      v111 = v110;

      (*(v123 + 8))(v108, v60);
      (*(v126 + 8))(v127, v70);
      sub_226E97D1C(v122, &qword_27D7BB3E8, &unk_227686370);
      sub_226E97D1C(v124, &unk_27D7BB9D0, &qword_227671550);
      *(v109 + v107[17]) = v111;
      sub_227442570(v109, v118);
      return sub_226EA9E3C(v121);
    }

    v74 = *(v71 + 8 * v77);
    ++v76;
    if (v74)
    {
      v76 = v77;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t WorkoutPlanGenerationScaffold.planIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2276627D0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutPlanGenerationScaffold.requestedModalitySchedulePreferences.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutPlanGenerationScaffold() + 20));
}

uint64_t WorkoutPlanGenerationScaffold.requestedModalityKinds.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutPlanGenerationScaffold() + 24));
}

uint64_t WorkoutPlanGenerationScaffold.requestedWeekdays.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutPlanGenerationScaffold() + 32));
}

uint64_t WorkoutPlanGenerationScaffold.requestedCategoryCounts.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutPlanGenerationScaffold() + 44));
}

uint64_t WorkoutPlanGenerationScaffold.modalityDurationMapping.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutPlanGenerationScaffold() + 52));
}

uint64_t WorkoutPlanGenerationScaffold.currentSchedule.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutPlanGenerationScaffold() + 60));
}

uint64_t WorkoutPlanGenerationScaffold.modalitiesSelected.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutPlanGenerationScaffold() + 64));
}

uint64_t WorkoutPlanGenerationScaffold.isModalityRequested(_:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + *(type metadata accessor for WorkoutPlanGenerationScaffold() + 24));

  return sub_22718C9FC(a1, a2, a3 & 1, v7);
}

Swift::Bool __swiftcall WorkoutPlanGenerationScaffold.satisfiesSoftConstraints()()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - v21;
  if ((sub_227466504() & 1) == 0)
  {
    sub_22766A630();
    v24 = sub_22766B380();
    v25 = sub_22766C8B0();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_28;
    }

    v34 = v0;
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_226E8E000, v24, v25, "Invalid schedule due to repeated modality violation", v26, 2u);
LABEL_27:
    MEMORY[0x22AA9A450](v26, -1, -1);
    v0 = v34;
    goto LABEL_28;
  }

  if ((sub_227466864() & 1) == 0)
  {
    sub_22766A630();
    v24 = sub_22766B380();
    v27 = sub_22766C8B0();
    if (!os_log_type_enabled(v24, v27))
    {
      v22 = v19;
      goto LABEL_28;
    }

    v34 = v0;
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_226E8E000, v24, v27, "Invalid schedule due to repeated category violation", v26, 2u);
    v22 = v19;
    goto LABEL_27;
  }

  if ((sub_227466B9C() & 1) == 0)
  {
    sub_22766A630();
    v24 = sub_22766B380();
    v28 = sub_22766C8B0();
    if (!os_log_type_enabled(v24, v28))
    {
      v22 = v16;
      goto LABEL_28;
    }

    v34 = v0;
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_226E8E000, v24, v28, "Invalid schedule due to no adjacent strength days violation", v26, 2u);
    v22 = v16;
    goto LABEL_27;
  }

  if ((sub_227466F7C() & 1) == 0)
  {
    sub_22766A630();
    v24 = sub_22766B380();
    v29 = sub_22766C8B0();
    if (!os_log_type_enabled(v24, v29))
    {
      v22 = v13;
      goto LABEL_28;
    }

    v34 = v0;
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_226E8E000, v24, v29, "Invalid schedule due to no adjacent multiple strength days violation", v26, 2u);
    v22 = v13;
    goto LABEL_27;
  }

  if (sub_227467610())
  {
    if (sub_2274688EC())
    {
      if (sub_227468C54())
      {
        return 1;
      }

      sub_22766A630();
      v24 = sub_22766B380();
      v32 = sub_22766C8B0();
      if (!os_log_type_enabled(v24, v32))
      {
        v22 = v4;
        goto LABEL_28;
      }

      v34 = v0;
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_226E8E000, v24, v32, "Invalid schedule due to HIIT cap violation", v26, 2u);
      v22 = v4;
    }

    else
    {
      sub_22766A630();
      v24 = sub_22766B380();
      v31 = sub_22766C8B0();
      if (!os_log_type_enabled(v24, v31))
      {
        v22 = v7;
        goto LABEL_28;
      }

      v34 = v0;
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_226E8E000, v24, v31, "Invalid schedule due to cooldown violation", v26, 2u);
      v22 = v7;
    }

    goto LABEL_27;
  }

  sub_22766A630();
  v24 = sub_22766B380();
  v30 = sub_22766C8B0();
  if (os_log_type_enabled(v24, v30))
  {
    v34 = v0;
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_226E8E000, v24, v30, "Invalid schedule due to yoga-cardio duration violation", v26, 2u);
    v22 = v10;
    goto LABEL_27;
  }

  v22 = v10;
LABEL_28:

  (*(v1 + 8))(v22, v0);
  return 0;
}

uint64_t sub_227466504()
{
  v34 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v35 = v0;
  v1 = *(v0 + v34[15]);
  v37 = *(v1 + 16);
  if (!v37)
  {
    return 1;
  }

  v2 = 0;
  v38 = v1 + 32;
  v36 = *(v0 + v34[15]);
LABEL_5:
  if (v2 < *(v1 + 16))
  {
    v3 = *(v38 + 8 * v2);
    v4 = *(v3 + 16);
    if (!v4)
    {
      goto LABEL_4;
    }

    v39 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);

    v40 = 0;
    v5 = 0;
    v6 = 1 - v4;
    v7 = (v3 + 64);
    v8 = MEMORY[0x277D84F98];
    while (1)
    {
      v11 = *(v7 - 2);
      v12 = *(v7 - 1);
      v13 = *v7;
      sub_226EB396C(v11, v12, *v7);
      sub_226EA9E3C(v5);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v8;
      v16 = sub_226F491D8(v11, v12, v13);
      v17 = v8[2];
      v18 = (v15 & 1) == 0;
      v19 = v17 + v18;
      if (__OFADD__(v17, v18))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        break;
      }

      v20 = v15;
      if (v8[3] >= v19)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v15)
          {
            goto LABEL_22;
          }
        }

        else
        {
          sub_226FF6744(v19);
          v8 = v41;
          if (v20)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        sub_226FF6748(v19, isUniquelyReferenced_nonNull_native);
        v8 = v41;
        v21 = sub_226F491D8(v11, v12, v13);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_41;
        }

        v16 = v21;
        if (v20)
        {
          goto LABEL_22;
        }
      }

      sub_226F04A6C(&v41);
      v23 = v41;
      v8[(v16 >> 6) + 8] |= 1 << v16;
      v24 = v8[6] + 24 * v16;
      *v24 = v11;
      *(v24 + 8) = v12;
      *(v24 + 16) = v13;
      *(v8[7] + 8 * v16) = v23;
      v25 = v8[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_39;
      }

      v8[2] = v27;
      sub_226EB396C(v11, v12, v13);
LABEL_22:
      v28 = v8[7];
      v29 = *(v28 + 8 * v16);
      v26 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v26)
      {
        goto LABEL_37;
      }

      *(v28 + 8 * v16) = v30;
      if (v8[2] && (v31 = sub_226F491D8(v11, v12, v13), (v32 & 1) != 0))
      {
        v9 = *(v8[7] + 8 * v31);
        sub_226EB2DFC(v11, v12, v13);
        v10 = v40;
        if (v9 > v40)
        {
          v10 = v9;
        }

        v40 = v10;
      }

      else
      {
        sub_226EB2DFC(v11, v12, v13);
        if (v40 <= 0)
        {
          if (!v6)
          {

            v1 = v36;
            v2 = v39;
            goto LABEL_4;
          }

          v40 = 0;
          goto LABEL_12;
        }
      }

      if (!v6)
      {

        if (v40 > 2)
        {
          return 0;
        }

        v1 = v36;
        v2 = v39;
        if (v40 == 2 && *(v35 + v34[7]) != 90 && *(*(v35 + v34[6]) + 16) != 1)
        {
          return 0;
        }

LABEL_4:
        if (++v2 == v37)
        {
          return 1;
        }

        goto LABEL_5;
      }

LABEL_12:
      ++v6;
      v7 += 40;
      v5 = sub_226F04A6C;
      if (v6 == 1)
      {
        goto LABEL_38;
      }
    }
  }

  __break(1u);
LABEL_41:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_227466864()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v43 = *(v1 - 8);
  v2 = *(v43 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v42 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v41 = &v33 - v5;
  MEMORY[0x28223BE20](v6);
  v40 = &v33 - v7;
  v8 = type metadata accessor for WorkoutPlanGenerationScaffold();
  if (*(v0 + *(v8 + 28)) == 90)
  {
    return 1;
  }

  v9 = v8;
  v10 = *(v0 + *(v8 + 44));

  v12 = *(sub_226F35844(v11) + 16);

  if (v12 == 1)
  {
    return 1;
  }

  if (*(*(v0 + v9[8]) + 16) < v12)
  {
    return 1;
  }

  v14 = *(v0 + v9[15]);
  v15 = *(v14 + 16);
  if (!v15)
  {
    return 1;
  }

  v16 = 0;
  v17 = v14 + 32;
  v36 = v9;
  v37 = v0;
  v34 = v15;
  v35 = v14;
  v33 = v14 + 32;
  while (v16 < *(v14 + 16))
  {
    v18 = *(v17 + 8 * v16);
    v19 = *(v18 + 16);
    if (v19)
    {
      v38 = v16;
      v20 = v9[14];

      result = sub_2276672C0();
      v21 = result;
      v22 = 0;
      v44 = MEMORY[0x277D84FA0];
      v23 = (v18 + 64);
      v39 = v18;
      while (v22 < *(v18 + 16))
      {
        if (*(v21 + 16))
        {
          v24 = *v23;
          v26 = *(v23 - 2);
          v25 = *(v23 - 1);
          sub_226EB396C(v26, v25, *v23);
          v27 = sub_226F491D8(v26, v25, v24);
          v29 = v28;
          result = sub_226EB2DFC(v26, v25, v24);
          if (v29)
          {
            v30 = v40;
            sub_226E93170(*(v21 + 56) + *(v43 + 72) * v27, v40, &qword_27D7B88C0, &unk_22767A720);
            v31 = v42;
            sub_226E93170(v30, v42, &qword_27D7B88C0, &unk_22767A720);
            v32 = v41;
            LOBYTE(v31) = sub_227105A44(v41, v31);
            sub_226E97D1C(v32, &qword_27D7B88C0, &unk_22767A720);
            v18 = v39;
            result = sub_226E97D1C(v30, &qword_27D7B88C0, &unk_22767A720);
            if ((v31 & 1) == 0)
            {

              return 0;
            }
          }
        }

        ++v22;
        v23 += 40;
        if (v19 == v22)
        {

          v9 = v36;
          v15 = v34;
          v14 = v35;
          v16 = v38;
          v17 = v33;
          goto LABEL_9;
        }
      }

      __break(1u);
      break;
    }

LABEL_9:
    ++v16;
    result = 1;
    if (v16 == v15)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227466B9C()
{
  v1 = v0;
  v2 = sub_2276681F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WorkoutPlanGenerationScaffold();
  *&v52 = sub_227433850(*(v0 + v7[8]));

  sub_2274695CC(&v52);

  v8 = v52;
  v9 = v0 + v7[14];
  sub_227667240();
  v10 = sub_227668090();
  (*(v3 + 8))(v6, v2);
  v11 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v12 = 0;
  v13 = v8[2];
  while (v13 != v12)
  {
    v14 = &v8[v12++];
    if (v14[4] == v11)
    {
      v15 = 0;
      while (v13 != v15)
      {
        v16 = &v8[v15++];
        if (!v16[4])
        {
          *&v52 = v8;
          sub_227461E54(0);
          v8 = v52;
          v13 = *(v52 + 16);
          goto LABEL_9;
        }
      }

      break;
    }
  }

LABEL_9:

  swift_unknownObjectRetain_n();
  if (v13 < 2)
  {
LABEL_10:
    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease_n();
    return 1;
  }

  v18 = 0;
  v19 = v13 - 1;
  v20 = v8 + 4;
  v49 = xmmword_227685FB0;
  v21 = 1;
  v44 = v7;
  v45 = v1;
  v46 = v10 - 1;
  v42 = v8 + 4;
  v43 = v13 - 1;
  while (1)
  {
    if (v18 == v19)
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v21 == v13)
    {
      goto LABEL_10;
    }

    if (v21 >= v13)
    {
      goto LABEL_39;
    }

    v22 = v20[v18];
    v23 = v20[v21];
    v24 = v22 - v23;
    if (__OFSUB__(v22, v23))
    {
      goto LABEL_40;
    }

    v25 = v22 - v23;
    if ((v24 & 0x8000000000000000) != 0)
    {
      v25 = v23 - v22;
      if (__OFSUB__(0, v24))
      {
        goto LABEL_43;
      }
    }

    if (v25 == 1 || v24 == v11)
    {
      break;
    }

LABEL_14:
    ++v18;
    ++v21;
    if (v18 == v19)
    {
      goto LABEL_10;
    }
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v27 = *(v1 + v7[15]);
  if (v22 >= *(v27 + 16))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v47 = v27 + 32;
  v28 = *(*(v27 + 32 + 8 * v22) + 16);

  v29 = (v48 + 64);
  v30 = v28 + 1;
  do
  {
    if (!--v30)
    {
      v11 = v46;
LABEL_13:

      v7 = v44;
      v1 = v45;
      v20 = v42;
      v19 = v43;
      goto LABEL_14;
    }

    v31 = v29 + 40;
    v32 = *v29;
    v52 = *(v29 - 1);
    v53 = v32;
    v50 = v49;
    v51 = 1;
    sub_226F48150();
    sub_226EC1E18();
    v33 = sub_227663B20();
    v29 = v31;
  }

  while ((v33 & 1) == 0);

  if ((v23 & 0x8000000000000000) != 0)
  {
    goto LABEL_45;
  }

  if (v23 < *(v27 + 16))
  {
    v34 = *(v47 + 8 * v23);
    v35 = *(v34 + 16);

    v36 = (v34 + 64);
    v37 = v35 + 1;
    v11 = v46;
    while (--v37)
    {
      v38 = v36 + 40;
      v39 = *v36;
      v52 = *(v36 - 1);
      v53 = v39;
      v50 = v49;
      v51 = 1;
      v40 = sub_227663B20();
      v36 = v38;
      if (v40)
      {
        swift_unknownObjectRelease_n();

        return 0;
      }
    }

    goto LABEL_13;
  }

LABEL_46:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_227466F7C()
{
  v1 = v0;
  v2 = sub_2276681F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WorkoutPlanGenerationScaffold();
  *&v68 = sub_227433850(*(v0 + v7[8]));

  sub_2274695CC(&v68);

  v8 = v68;
  v9 = v0 + v7[14];
  sub_227667240();
  v10 = sub_227668090();
  (*(v3 + 8))(v6, v2);
  v11 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
    goto LABEL_88;
  }

  v12 = 0;
  v13 = *(v8 + 16);
  while (v13 != v12)
  {
    v14 = v8 + 8 * v12++;
    if (*(v14 + 32) == v11)
    {
      v15 = 0;
      while (v13 != v15)
      {
        v16 = v8 + 8 * v15++;
        if (!*(v16 + 32))
        {
          *&v68 = v8;
          sub_2274612A8(&unk_283A95330, sub_2273A5610);
          v8 = v68;
          v13 = *(v68 + 16);
          goto LABEL_9;
        }
      }

      break;
    }
  }

LABEL_9:

  swift_unknownObjectRetain_n();
  v17 = 1;
  if (v13 < 2)
  {
LABEL_76:
    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease_n();
    return v17;
  }

  v18 = 0;
  v19 = v13 - 1;
  v50[1] = v8;
  v20 = v8 + 32;
  v65 = xmmword_227685FB0;
  v21 = 1;
  v59 = v1;
  v56 = v11;
  v57 = v7;
  v55 = v13;
  v54 = v13 - 1;
  v53 = v8 + 32;
  while (v18 != v19)
  {
    if (v21 == v13)
    {
LABEL_75:
      v17 = 1;
      goto LABEL_76;
    }

    if (v21 >= v13)
    {
      goto LABEL_84;
    }

    v22 = *(v20 + 8 * v18);
    v23 = *(v20 + 8 * v21);
    v24 = v22 - v23;
    if (__OFSUB__(v22, v23))
    {
      goto LABEL_85;
    }

    v25 = v22 - v23;
    if (v24 < 0)
    {
      v25 = v23 - v22;
      if (__OFSUB__(0, v24))
      {
        goto LABEL_89;
      }
    }

    if (v25 == 1 || v24 == v11)
    {
      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_86;
      }

      v27 = *(v1 + v7[15]);
      if (v22 >= *(v27 + 16))
      {
        goto LABEL_87;
      }

      v58 = *(v20 + 8 * v21);
      v60 = v21;
      v61 = v18;
      v52 = v27;
      v51 = v27 + 32;
      v28 = *(v27 + 32 + 8 * v22);
      v29 = *(v28 + 16);

      if (v29)
      {
        sub_226F48150();
        sub_226EC1E18();
        v30 = 0;
        v31 = (v28 + 64);
        while (1)
        {
          v32 = *v31;
          v68 = *(v31 - 1);
          v69 = v32;
          v66 = v65;
          v67 = 1;
          if (sub_227663B20())
          {
            break;
          }

          ++v30;
          v31 += 40;
          if (v29 == v30)
          {
            goto LABEL_32;
          }
        }

        v29 = v30;
LABEL_32:
        v1 = v59;
      }

      v8 = *(v28 + 16);
      if (v8 >= v29)
      {
        if (v29 == v8)
        {
LABEL_11:

          v11 = v56;
          v7 = v57;
          v13 = v55;
          v21 = v60;
          v18 = v61;
          v19 = v54;
          v20 = v53;
          goto LABEL_12;
        }

        v62 = v28;
        v63 = v8;
        v64 = 1;
      }

      else
      {
        v62 = v28;
        v63 = v29;
        v64 = -1;
        v29 = v8;
      }

      v33 = 0;
      v34 = v62 + 32;
LABEL_40:
      v35 = __OFADD__(v33, v64);
      v33 += v64;
      if (v35)
      {
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        break;
      }

      if (v29 == v8)
      {
        goto LABEL_80;
      }

      do
      {
        v36 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        if (v36 == v8)
        {
          v29 = v8;
          goto LABEL_39;
        }

        if (v36 >= v8)
        {
          goto LABEL_74;
        }

        v37 = v34 + 40 * v36;
        v38 = *(v37 + 32);
        v68 = *(v37 + 16);
        v69 = v38;
        v66 = v65;
        v67 = 1;
        sub_226F48150();
        sub_226EC1E18();
        ++v29;
      }

      while ((sub_227663B20() & 1) == 0);
      v29 = v36;
LABEL_39:
      if (v29 != v63)
      {
        goto LABEL_40;
      }

      v39 = v33 <= 1;
      v1 = v59;
      v21 = v60;
      v11 = v56;
      v7 = v57;
      v13 = v55;
      v18 = v61;
      v19 = v54;
      v20 = v53;
      if (!v39)
      {
        if ((v58 & 0x8000000000000000) != 0)
        {
          goto LABEL_90;
        }

        if (v58 >= *(v52 + 16))
        {
          goto LABEL_91;
        }

        v40 = *(v51 + 8 * v58);
        v41 = *(v40 + 16);

        v62 = v40;
        if (v41)
        {
          sub_226F48150();
          sub_226EC1E18();
          v8 = 0;
          v42 = (v40 + 64);
          while (1)
          {
            v43 = *v42;
            v68 = *(v42 - 1);
            v69 = v43;
            v66 = v65;
            v67 = 1;
            if (sub_227663B20())
            {
              break;
            }

            ++v8;
            v42 += 40;
            if (v41 == v8)
            {
              goto LABEL_56;
            }
          }

          v41 = v8;
LABEL_56:
          v40 = v62;
        }

        v44 = *(v40 + 16);
        if (v44 >= v41)
        {
          if (v41 == v44)
          {
            goto LABEL_11;
          }

          v63 = v44;
          v64 = 1;
        }

        else
        {
          v63 = v41;
          v64 = -1;
          v41 = v44;
        }

        v8 = 0;
        v45 = v62 + 32;
        while (2)
        {
          v35 = __OFADD__(v8, v64);
          v8 += v64;
          if (v35)
          {
            goto LABEL_81;
          }

          if (v41 == v44)
          {
            goto LABEL_82;
          }

          do
          {
            v46 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              __break(1u);
LABEL_78:
              __break(1u);
              goto LABEL_79;
            }

            if (v46 == v44)
            {
              v41 = v44;
              goto LABEL_63;
            }

            if (v46 >= v44)
            {
              goto LABEL_78;
            }

            v47 = v45 + 40 * v46;
            v48 = *(v47 + 32);
            v68 = *(v47 + 16);
            v69 = v48;
            v66 = v65;
            v67 = 1;
            sub_226F48150();
            sub_226EC1E18();
            ++v41;
          }

          while ((sub_227663B20() & 1) == 0);
          v41 = v46;
LABEL_63:
          if (v41 != v63)
          {
            continue;
          }

          break;
        }

        v1 = v59;
        v21 = v60;
        v11 = v56;
        v7 = v57;
        v13 = v55;
        v18 = v61;
        v19 = v54;
        v20 = v53;
        if (v8 > 1)
        {
          v17 = 0;
          goto LABEL_76;
        }
      }
    }

LABEL_12:
    ++v18;
    ++v21;
    if (v18 == v19)
    {
      goto LABEL_75;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_227467610()
{
  v132 = sub_2276681F0();
  v1 = *(v132 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v132);
  v131 = &v125 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v150 = &v125 - v7;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB370, &unk_227686440);
  v8 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159);
  v173 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v145 = &v125 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB378, &qword_22767A730);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v125 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v125 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v125 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v125 - v26;
  MEMORY[0x28223BE20](v28);
  v148 = &v125 - v29;
  v167 = sub_227666900();
  v30 = *(v167 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v167);
  v133 = &v125 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v165 = &v125 - v34;
  MEMORY[0x28223BE20](v35);
  v141 = &v125 - v36;
  result = type metadata accessor for WorkoutPlanGenerationScaffold();
  v139 = result;
  v38 = *(v0 + *(result + 60));
  v39 = *(v38 + 16);
  if (!v39)
  {
    return 1;
  }

  v40 = 0;
  v41 = v38 + 32;
  v137 = (v30 + 104);
  v136 = *MEMORY[0x277D52720];
  v164 = (v30 + 16);
  v163 = (v5 + 56);
  v130 = (v30 + 8);
  v129 = (v1 + 8);
  v143 = xmmword_227686360;
  v153 = v15;
  v168 = v18;
  v166 = v21;
  v156 = v27;
  v140 = v0;
  v158 = v4;
  v151 = v5;
  v144 = v24;
  v128 = v38;
  v127 = v39;
  v126 = v38 + 32;
  v157 = (v5 + 48);
LABEL_5:
  if (v40 < *(v38 + 16))
  {
    v42 = *(v41 + 8 * v40);
    if (*(v42 + 16) < 2uLL)
    {
      goto LABEL_4;
    }

    v134 = v40;
    v43 = v141;
    v44 = v167;
    v135 = *v137;
    v135(v141, v136, v167);
    v45 = *(v139 + 56);

    v138 = v45;
    v46 = sub_2276672C0();
    v162 = *v164;
    v162(v165, v43, v44);
    v47 = *(v42 + 16);

    v161 = v163 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v142 = v42;
    v160 = v46;
    if (!v47)
    {
      v51 = 0;
      goto LABEL_25;
    }

    v48 = 0;
    v49 = (v42 + 64);
    v154 = v47;
    while (1)
    {
      v53 = *(v49 - 3);
      v54 = *(v49 - 2);
      v55 = *(v49 - 1);
      v56 = *v49;
      v57 = *(v46 + 16);
      v172 = v48;
      v171 = v56;
      v169 = v54;
      v170 = v55;
      v155 = v53;
      if (v57)
      {

        sub_226EB396C(v54, v55, v56);
        sub_226EB396C(v54, v55, v56);
        v58 = sub_226F491D8(v54, v55, v56);
        v60 = v59;
        sub_226EB2DFC(v54, v55, v56);
        if (v60)
        {
          v61 = v151;
          v62 = v148;
          sub_226E93170(*(v46 + 56) + *(v151 + 72) * v58, v148, &qword_27D7B88C0, &unk_22767A720);
          v63 = *(v61 + 56);
          v64 = v158;
          v63(v62, 0, 1, v158);
        }

        else
        {
          v63 = *v163;
          v62 = v148;
          v64 = v158;
          (*v163)(v148, 1, 1, v158);
        }
      }

      else
      {
        v63 = *v163;
        v62 = v148;
        v65 = v54;
        v64 = v158;
        (*v163)(v148, 1, 1, v158);

        sub_226EB396C(v65, v55, v56);
      }

      v162(v27, v165, v167);
      swift_storeEnumTagMultiPayload();
      v63(v27, 0, 1, v64);
      v66 = *(v159 + 48);
      v67 = v145;
      sub_226E93170(v62, v145, &qword_27D7BB378, &qword_22767A730);
      sub_226E93170(v27, v67 + v66, &qword_27D7BB378, &qword_22767A730);
      v68 = v62;
      v69 = *v157;
      if ((*v157)(v67, 1, v64) == 1)
      {
        sub_226E97D1C(v27, &qword_27D7BB378, &qword_22767A730);
        sub_226E97D1C(v68, &qword_27D7BB378, &qword_22767A730);
        v50 = v69(v67 + v66, 1, v64);
        v21 = v166;
        v51 = v172;
        v52 = v170;
        if (v50 == 1)
        {
          sub_226E97D1C(v67, &qword_27D7BB378, &qword_22767A730);

          result = sub_226EB2DFC(v169, v52, v171);
          v46 = v160;
LABEL_25:
          v77 = *(v142 + 16);
          if (v77 >= v51)
          {
            if (v51 == v77)
            {

              v78 = v142;

              v149 = 0;
              goto LABEL_53;
            }

            v147 = 1;
            v146 = v77;
          }

          else
          {
            v147 = -1;
            v146 = v51;
            v51 = v77;
          }

          v149 = 0;
          v154 = v142 + 32;
          v155 = v77;
LABEL_33:
          v79 = __OFADD__(v149, v147);
          v149 += v147;
          if (v79)
          {
LABEL_89:
            __break(1u);
            goto LABEL_90;
          }

          if (v51 == v77)
          {
LABEL_90:
            __break(1u);
            break;
          }

          while (1)
          {
LABEL_38:
            v79 = __OFADD__(v51, 1);
            v81 = v51 + 1;
            if (v79)
            {
              __break(1u);
LABEL_84:
              __break(1u);
              goto LABEL_85;
            }

            if (v81 == v77)
            {
              v51 = v77;
              goto LABEL_32;
            }

            if (v81 >= v77)
            {
              goto LABEL_84;
            }

            v172 = v81;
            v82 = v154 + 40 * v81;
            v83 = *(v82 + 8);
            v84 = *(v82 + 16);
            v85 = *(v82 + 24);
            v86 = *(v82 + 32);
            v87 = *(v46 + 16);
            v171 = v86;
            v169 = v83;
            v170 = v85;
            if (v87)
            {

              sub_226EB396C(v84, v85, v86);
              sub_226EB396C(v84, v85, v86);
              v88 = sub_226F491D8(v84, v85, v86);
              v90 = v89;
              sub_226EB2DFC(v84, v85, v86);
              if (v90)
              {
                v91 = v151;
                v92 = *(v46 + 56) + *(v151 + 72) * v88;
                v21 = v166;
                sub_226E93170(v92, v166, &qword_27D7B88C0, &unk_22767A720);
                v93 = *(v91 + 56);
                v94 = v158;
                v93(v21, 0, 1, v158);
              }

              else
              {
                v93 = *v163;
                v21 = v166;
                v94 = v158;
                (*v163)(v166, 1, 1, v158);
              }
            }

            else
            {
              v93 = *v163;
              v94 = v158;
              (*v163)(v21, 1, 1, v158);

              sub_226EB396C(v84, v85, v86);
            }

            v95 = v168;
            v162(v168, v165, v167);
            swift_storeEnumTagMultiPayload();
            v93(v95, 0, 1, v94);
            v96 = *(v159 + 48);
            v97 = v173;
            sub_226E93170(v21, v173, &qword_27D7BB378, &qword_22767A730);
            sub_226E93170(v95, v97 + v96, &qword_27D7BB378, &qword_22767A730);
            v98 = v21;
            v99 = *v157;
            if ((*v157)(v97, 1, v94) == 1)
            {
              break;
            }

            v100 = v173;
            v101 = v153;
            sub_226E93170(v173, v153, &qword_27D7BB378, &qword_22767A730);
            if (v99(v100 + v96, 1, v94) == 1)
            {
              sub_226E97D1C(v168, &qword_27D7BB378, &qword_22767A730);
              v21 = v166;
              sub_226E97D1C(v166, &qword_27D7BB378, &qword_22767A730);
              sub_226E97D1C(v101, &qword_27D7B88C0, &unk_22767A720);
              v46 = v160;
              goto LABEL_37;
            }

            v102 = v150;
            sub_226F50B4C(v100 + v96, v150);
            sub_22746B598(&qword_27D7B88D8);
            sub_22746B598(&qword_27D7B88E0);
            v152 = sub_227663B20();
            sub_226E97D1C(v102, &qword_27D7B88C0, &unk_22767A720);
            sub_226E97D1C(v168, &qword_27D7BB378, &qword_22767A730);
            v21 = v166;
            sub_226E97D1C(v166, &qword_27D7BB378, &qword_22767A730);
            sub_226E97D1C(v101, &qword_27D7B88C0, &unk_22767A720);
            sub_226E97D1C(v100, &qword_27D7BB378, &qword_22767A730);

            result = sub_226EB2DFC(v84, v170, v171);
            v27 = v156;
            v46 = v160;
            v51 = v172;
            v77 = v155;
            if (v152)
            {
              goto LABEL_32;
            }
          }

          sub_226E97D1C(v95, &qword_27D7BB378, &qword_22767A730);
          sub_226E97D1C(v98, &qword_27D7BB378, &qword_22767A730);
          v80 = v99(v173 + v96, 1, v94);
          v21 = v98;
          v46 = v160;
          if (v80 != 1)
          {
LABEL_37:
            sub_226E97D1C(v173, &qword_27D7BB370, &unk_227686440);

            result = sub_226EB2DFC(v84, v170, v171);
            v27 = v156;
            v51 = v172;
            v77 = v155;
            goto LABEL_38;
          }

          sub_226E97D1C(v173, &qword_27D7BB378, &qword_22767A730);

          result = sub_226EB2DFC(v84, v170, v171);
          v27 = v156;
          v51 = v172;
          v77 = v155;
LABEL_32:
          if (v51 != v146)
          {
            goto LABEL_33;
          }

          v78 = v142;

LABEL_53:
          v103 = *v130;
          v104 = v167;
          (*v130)(v165, v167);
          v103(v141, v104);
          v105 = v133;
          v135(v133, v136, v104);
          v106 = sub_2276672C0();
          v172 = Array<A>.totalDuration(forModalityCategory:usingMapping:)(v105, v106, v78);

          v103(v105, v104);
          v107 = *(v78 + 16);

          v108 = 0;
          v109 = 0;
          v110 = (v78 + 64);
LABEL_54:
          v111 = &v110[40 * v108];
          while (v107 != v108)
          {
            if (v108 >= v107)
            {
              __break(1u);
LABEL_88:
              __break(1u);
              goto LABEL_89;
            }

            v112 = v108 + 1;
            if (__OFADD__(v108, 1))
            {
              goto LABEL_88;
            }

            v113 = *(v111 - 4);
            v114 = *v111;
            v176 = *(v111 - 1);
            v177 = v114;
            LOBYTE(v174) = 13;
            sub_226F48150();
            sub_226EC1E18();
            result = sub_227663B30();
            ++v108;
            v111 += 40;
            if (result)
            {
              v108 = v112;
              v79 = __OFADD__(v109, v113);
              v109 += v113;
              if (v79)
              {
                goto LABEL_93;
              }

              goto LABEL_54;
            }
          }

          v115 = v140;
          v116 = v131;
          sub_227667240();
          v117 = sub_227667F60();
          result = (*v129)(v116, v132);
          v118 = v172 - v117;
          if (__OFSUB__(v172, v117))
          {
            goto LABEL_92;
          }

          v119 = *(v115 + *(v139 + 28));
          if (v119 == 90 && v149 >= 2 && v109 >= v118)
          {
LABEL_85:

            return 0;
          }

          v122 = v119 > 89 || v149 <= 0;
          v21 = v166;
          if (v122)
          {
LABEL_3:

            v38 = v128;
            v39 = v127;
            v40 = v134;
            v41 = v126;
            goto LABEL_4;
          }

          v123 = *(v142 + 16) + 1;
          while (--v123)
          {
            v124 = *v110;
            v176 = *(v110 - 1);
            v177 = v124;
            v174 = v143;
            v175 = 1;
            sub_226F48150();
            sub_226EC1E18();
            v110 += 40;
            if (sub_227663B20())
            {
              goto LABEL_3;
            }
          }

          v38 = v128;
          v39 = v127;
          v40 = v134;
          v41 = v126;
          if (v109 >= v118)
          {
            return 0;
          }

LABEL_4:
          if (++v40 == v39)
          {
            return 1;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v70 = v144;
        sub_226E93170(v67, v144, &qword_27D7BB378, &qword_22767A730);
        if (v69(v67 + v66, 1, v64) != 1)
        {
          v73 = v150;
          sub_226F50B4C(v67 + v66, v150);
          sub_22746B598(&qword_27D7B88D8);
          sub_22746B598(&qword_27D7B88E0);
          v74 = sub_227663B20();
          sub_226E97D1C(v73, &qword_27D7B88C0, &unk_22767A720);
          v75 = v156;
          sub_226E97D1C(v156, &qword_27D7BB378, &qword_22767A730);
          sub_226E97D1C(v148, &qword_27D7BB378, &qword_22767A730);
          v76 = v70;
          v27 = v75;
          sub_226E97D1C(v76, &qword_27D7B88C0, &unk_22767A720);
          sub_226E97D1C(v67, &qword_27D7BB378, &qword_22767A730);

          result = sub_226EB2DFC(v169, v170, v171);
          v21 = v166;
          v46 = v160;
          v51 = v172;
          if (v74)
          {
            goto LABEL_25;
          }

          goto LABEL_11;
        }

        v71 = v156;
        sub_226E97D1C(v156, &qword_27D7BB378, &qword_22767A730);
        sub_226E97D1C(v148, &qword_27D7BB378, &qword_22767A730);
        v72 = v70;
        v27 = v71;
        sub_226E97D1C(v72, &qword_27D7B88C0, &unk_22767A720);
        v21 = v166;
        v51 = v172;
        v52 = v170;
      }

      sub_226E97D1C(v67, &qword_27D7BB370, &unk_227686440);

      result = sub_226EB2DFC(v169, v52, v171);
      v46 = v160;
LABEL_11:
      v48 = v51 + 1;
      v49 += 40;
      if (v154 == v48)
      {
        v51 = v154;
        goto LABEL_25;
      }
    }
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
  return result;
}

uint64_t sub_2274688EC()
{
  v1 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v2 = *(v0 + v1[6]);
  v3 = v1[14];

  v4 = sub_227667250();
  v5 = sub_22746A47C(v4, v2);

  v6 = *(v5 + 16);
  if (!v6)
  {
    v8 = 1;
LABEL_44:

    return v8;
  }

  if (v6 <= *(v2 + 16) >> 3)
  {

    sub_2270062A8(v5);
    v7 = v2;
  }

  else
  {

    v7 = sub_227009F28(v5, v2);
  }

  v9 = *(v7 + 16);

  if (!v9)
  {
    v25 = 0;
    v26 = *(v0 + v1[15]);
    v27 = *(v26 + 16);
    do
    {
      v8 = v27 == v25;
      if (v27 == v25)
      {
        break;
      }

      if (v25 >= *(v26 + 16))
      {
        goto LABEL_48;
      }

      v28 = v25 + 1;
      v29 = *(v26 + 32 + 8 * v25);

      v31 = sub_226F43E68(v30, sub_2274E8434, 0);

      v32 = *(v31 + 16);

      v25 = v28;
    }

    while (v32 == *(v5 + 16));
    goto LABEL_44;
  }

  v11 = *(v0 + v1[15]);
  v34 = *(v11 + 16);
  if (!v34)
  {
    return 1;
  }

  v12 = 0;
  v33 = v11 + 32;
  while (v12 < *(v11 + 16))
  {
    if (!*(*(v33 + 8 * v12) + 16))
    {
      goto LABEL_16;
    }

    v15 = *(v33 + 8 * v12);

    v17 = sub_226F43E68(v16, sub_2274693CC, 0);

    v18 = sub_227667250();
    v19 = *(sub_22746A47C(v17, v18) + 16);

    v20 = *(v17 + 16);
    v21 = sub_22718C9FC(8, 0, 1, v17);
    v22 = sub_22718C9FC(0, 0, 1, v17);
    v23 = sub_22718C9FC(13, 0, 1, v17);

    LOBYTE(v17) = sub_22718C9FC(8, 0, 1, v2);
    v24 = sub_22718C9FC(0, 0, 1, v2);
    result = sub_22718C9FC(13, 0, 1, v2);
    if (v17)
    {
      if (v24)
      {
        if (v19)
        {
          v13 = v19 == v20;
        }

        else
        {
          v13 = 1;
        }

        v14 = v13;
        if (result & v14)
        {
          return 0;
        }
      }

      else
      {
        if ((result & 1) == 0)
        {
          v8 = 0;
          if ((v21 & 1) == 0)
          {
            return v8;
          }

          goto LABEL_37;
        }

        if ((v21 & (v23 | (v19 != v20)) & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v24)
    {
      if ((result & 1) == 0)
      {
        v8 = 0;
        if ((v22 & 1) == 0)
        {
          return v8;
        }

        goto LABEL_37;
      }

      if ((v22 & 1) == 0)
      {
        v8 = 0;
        if ((v23 & 1) == 0)
        {
          return v8;
        }

LABEL_37:
        if (v19 == v20)
        {
          return v8;
        }

        goto LABEL_16;
      }

      if (!(v23 & 1 | (v19 != v20)))
      {
        return 0;
      }
    }

    else if (!(v23 & 1 | ((result & 1) == 0)) && v19 == v20)
    {
      return 0;
    }

LABEL_16:
    if (v34 == ++v12)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_227468C54()
{
  v1 = sub_2276681F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v7 = *(v0 + *(v6 + 24));
  if (*(v7 + 16) >= 2uLL)
  {
    v8 = v6;
    v9 = *(v0 + *(v6 + 28));
    if (v9 <= 89)
    {
      v10 = sub_22718C9FC(6, 0, 1, v7);
      result = 1;
      if ((v10 & 1) == 0)
      {
        return result;
      }

      v65 = v2;
      v66 = v9;
      v12 = *(v0 + v8[13]);
      MEMORY[0x28223BE20](1);
      *(&v65 - 2) = v0;
      v14 = sub_227469EA4(sub_22746B578, (&v65 - 4), v13, sub_22746A034, sub_22746A034);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9900, &unk_2276808E0);
      v67 = v0;
      result = sub_22766CFF0();
      v15 = result;
      v16 = 0;
      v17 = 1 << *(v14 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(v14 + 64);
      v20 = (v17 + 63) >> 6;
      for (i = result + 64; v19; result = sub_226EB396C(result, v42, v43))
      {
        v22 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_13:
        v25 = v22 | (v16 << 6);
        v26 = *(*(v14 + 56) + 8 * v25);
        v27 = *(v26 + 16);
        if (!v27)
        {
          v28 = 0;
          goto LABEL_25;
        }

        v28 = *(v26 + 32);
        v29 = v27 - 1;
        if (v27 == 1)
        {
          goto LABEL_25;
        }

        if (v27 >= 5)
        {
          v30 = v29 & 0xFFFFFFFFFFFFFFFCLL | 1;
          v31 = vdupq_n_s64(v28);
          v32 = (v26 + 56);
          v33 = v29 & 0xFFFFFFFFFFFFFFFCLL;
          v34 = v31;
          do
          {
            v31 = vbslq_s8(vcgtq_s64(v31, v32[-1]), v31, v32[-1]);
            v34 = vbslq_s8(vcgtq_s64(v34, *v32), v34, *v32);
            v32 += 2;
            v33 -= 4;
          }

          while (v33);
          v35 = vbslq_s8(vcgtq_s64(v31, v34), v31, v34);
          v36 = vextq_s8(v35, v35, 8uLL).u64[0];
          v28 = vbsl_s8(vcgtd_s64(v35.i64[0], v36), *v35.i8, v36);
          if (v29 == (v29 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_25;
          }
        }

        else
        {
          v30 = 1;
        }

        v37 = v27 - v30;
        v38 = (v26 + 8 * v30 + 32);
        do
        {
          v40 = *v38++;
          v39 = v40;
          if (v28 <= v40)
          {
            v28 = v39;
          }

          --v37;
        }

        while (v37);
LABEL_25:
        v41 = *(v14 + 48) + 24 * v25;
        result = *v41;
        v42 = *(v41 + 8);
        v43 = *(v41 + 16);
        *(i + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v44 = *(v15 + 48) + 24 * v25;
        *v44 = result;
        *(v44 + 8) = v42;
        *(v44 + 16) = v43;
        *(*(v15 + 56) + 8 * v25) = v28;
        v45 = *(v15 + 16);
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
LABEL_53:
          __break(1u);
          return result;
        }

        *(v15 + 16) = v47;
      }

      v23 = v16;
      while (1)
      {
        v16 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        if (v16 >= v20)
        {
          break;
        }

        v24 = *(v14 + 64 + 8 * v16);
        ++v23;
        if (v24)
        {
          v22 = __clz(__rbit64(v24));
          v19 = (v24 - 1) & v24;
          goto LABEL_13;
        }
      }

      v48 = 0;
      v49 = 0;
      v50 = 1 << *(v15 + 32);
      v51 = -1;
      if (v50 < 64)
      {
        v51 = ~(-1 << v50);
      }

      v52 = v51 & *(v15 + 64);
      v53 = (v50 + 63) >> 6;
      v54 = v67;
      do
      {
        if (!v52)
        {
          while (1)
          {
            v55 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
              goto LABEL_51;
            }

            if (v55 >= v53)
            {
              goto LABEL_40;
            }

            v52 = *(i + 8 * v55);
            ++v48;
            if (v52)
            {
              v48 = v55;
              goto LABEL_37;
            }
          }
        }

        v55 = v48;
LABEL_37:
        v56 = __clz(__rbit64(v52));
        v52 &= v52 - 1;
        v57 = *(*(v15 + 56) + ((v55 << 9) | (8 * v56)));
        v46 = __OFADD__(v49, v57);
        v49 += v57;
      }

      while (!v46);
      __break(1u);
LABEL_40:

      v58 = 0;
      v59 = 0;
      v60 = *(v54 + v8[15]);
      v61 = *(v60 + 16);
      while (v61 != v58)
      {
        if (v58 >= *(v60 + 16))
        {
          goto LABEL_52;
        }

        v62 = v58 + 1;
        v69 = *(v60 + 32 + 8 * v58);
        result = sub_2274691B4(&v69, &v68);
        v58 = v62;
        v46 = __OFADD__(v59, v68);
        v59 += v68;
        if (v46)
        {
          __break(1u);
          break;
        }
      }

      if (v49 >= v66)
      {
        v63 = v54 + v8[14];
        sub_227667240();
        v64 = sub_227668020();
        (*(v65 + 8))(v5, v1);
        return v64 >= v59;
      }
    }
  }

  return 1;
}

uint64_t sub_2274690EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = type metadata accessor for WorkoutPlanGenerationScaffold();
  if (sub_22718C9FC(v4, v5, v6, *(a3 + *(v7 + 24))))
  {
    sub_226F48150();
    sub_226EC1E18();
    v8 = sub_227663B20() ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_2274691B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);

  if (v4)
  {
    sub_226F48150();
    sub_226EC1E18();
    v6 = 0;
    v7 = (v3 + 64);
    while (1)
    {
      v16 = *(v7 - 1);
      v18 = *v7;
      result = sub_227663B20();
      if (result)
      {
        break;
      }

      ++v6;
      v7 += 40;
      if (v4 == v6)
      {
        goto LABEL_7;
      }
    }

    v4 = v6;
  }

LABEL_7:
  v8 = *(v3 + 16);
  if (v8 >= v4)
  {
    if (v4 == v8)
    {

      v9 = 0;
LABEL_23:
      *a2 = v9;
      return result;
    }

    v13 = a2;
    v14 = *(v3 + 16);
    v15 = 1;
  }

  else
  {
    v13 = a2;
    v14 = v4;
    v15 = -1;
    v4 = *(v3 + 16);
  }

  v9 = 0;
  while (2)
  {
    v10 = __OFADD__(v9, v15);
    v9 += v15;
    if (v10)
    {
LABEL_26:
      __break(1u);
    }

    else if (v4 != v8)
    {
      do
      {
        v11 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        if (v11 == v8)
        {
          v4 = v8;
          goto LABEL_14;
        }

        if (v11 >= v8)
        {
          goto LABEL_25;
        }

        v12 = v3 + 32 + 40 * v11;
        v17 = *(v12 + 16);
        v19 = *(v12 + 32);
        sub_226F48150();
        sub_226EC1E18();
        result = sub_227663B20();
        ++v4;
      }

      while ((result & 1) == 0);
      v4 = v11;
LABEL_14:
      if (v4 != v14)
      {
        continue;
      }

      a2 = v13;
      goto LABEL_23;
    }

    break;
  }

  __break(1u);
  return result;
}

void *sub_2274693FC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_22746A640(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_22746948C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

uint64_t sub_22746952C(uint64_t a1)
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
    sub_22766CD20();
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
  result = sub_22766CE90();
  *v1 = result;
  return result;
}

uint64_t sub_2274695CC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_227117A90(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_22766D130();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_22766C380();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_227469700(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_227469700(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2271171D0(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_227469C4C((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2273A4F9C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_2273A4F9C((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_227469C4C((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_227469C4C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_227469E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_227469EA4(a1, a2, a3, sub_22746A1F0, sub_22746A1F0);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_227469EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t))
{
  v9 = a1;
  v19[1] = *MEMORY[0x277D85DE8];
  v10 = *(a3 + 32);
  v11 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v13 = v19 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a4(v13, v11, a3, v9, a2);
    if (v5)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v17 = swift_slowAlloc();
  v18 = sub_22746948C(v17, v11, a3, v9, a2, a5);
  result = MEMORY[0x22AA9A450](v17, -1, -1);
  if (!v5)
  {
    result = v18;
  }

LABEL_4:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22746A034(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  v21 = result;
  v4 = 0;
  v22 = 0;
  v23 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v24 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v27 = (v7 - 1) & v7;
LABEL_11:
    v11 = v8 | (v4 << 6);
    v12 = *(a3 + 56);
    v13 = *(a3 + 48) + 24 * v11;
    v14 = *(v13 + 8);
    v16 = *(v13 + 16);
    v29[0] = *v13;
    v15 = v29[0];
    v29[1] = v14;
    v30 = v16;
    v17 = v11;
    v31 = *(v12 + 8 * v11);
    sub_226EB396C(v29[0], v14, v16);

    v18 = a4(v29, &v31);

    result = sub_226EB2DFC(v15, v14, v16);
    if (v28)
    {
      return result;
    }

    v7 = v27;
    if (v18)
    {
      *(v21 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_227328C40(v21, a2, v22, a3);
      }
    }
  }

  v9 = v4;
  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= v24)
    {
      return sub_227328C40(v21, a2, v22, a3);
    }

    v10 = *(v23 + 8 * v4);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v27 = (v10 - 1) & v10;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_22746A1F0(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, void *))
{
  v37 = a4;
  v31 = a2;
  v32 = a1;
  v5 = sub_227665F20();
  v6 = *(*(v5 - 8) + 64);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v5);
  v38 = a3;
  v39 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v35 = v7 + 16;
  v36 = v7;
  v33 = 0;
  v34 = (v7 + 8);
  while (v16)
  {
    v40 = (v16 - 1) & v16;
    v18 = __clz(__rbit64(v16)) | (v10 << 6);
    v19 = v39;
LABEL_11:
    v22 = v38;
    (*(v36 + 16))(v19, v38[6] + *(v36 + 72) * v18, v5, v8);
    v23 = v18;
    v24 = (v22[7] + 16 * v18);
    v25 = v5;
    v26 = v24[1];
    v41[0] = *v24;
    v41[1] = v26;

    v27 = v42;
    v28 = v37(v19, v41);
    v42 = v27;
    if (v27)
    {

      (*v34)(v19, v25);
      return;
    }

    v29 = v28;

    (*v34)(v19, v25);
    v5 = v25;
    v16 = v40;
    if (v29)
    {
      *(v32 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
LABEL_16:
        sub_227329A6C(v32, v31, v33, v38);
        return;
      }
    }
  }

  v20 = v10;
  v19 = v39;
  while (1)
  {
    v10 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v21 = v12[v10];
    ++v20;
    if (v21)
    {
      v40 = (v21 - 1) & v21;
      v18 = __clz(__rbit64(v21)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22746A47C(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_22746A640(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_2274693FC(v12, v6, a2, a1);

    MEMORY[0x22AA9A450](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_22746A640(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_22:
    v27 = 0;
    v49 = v5 + 56;
    v28 = 1 << *(v5 + 32);
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v30 = v29 & *(v5 + 56);
    v31 = (v28 + 63) >> 6;
    v32 = v4 + 56;
    v52 = v31;
    v53 = 0;
    while (v30)
    {
      v33 = __clz(__rbit64(v30));
      v57 = (v30 - 1) & v30;
LABEL_34:
      v55 = v33 | (v27 << 6);
      v36 = *(v5 + 48) + 24 * v55;
      v38 = *v36;
      v37 = *(v36 + 8);
      v39 = *(v36 + 16);
      v40 = *(v4 + 40);
      sub_22766D370();
      sub_226EB396C(v38, v37, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_226F480FC();
      sub_227663B10();
      v41 = sub_22766D3F0();
      v42 = -1 << *(v4 + 32);
      v43 = v41 & ~v42;
      if ((*(v32 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
      {
        v44 = ~v42;
        sub_226F48150();
        sub_226EC1E18();
        while (1)
        {
          v45 = *(a4 + 48) + 24 * v43;
          v60 = *v45;
          v62 = *(v45 + 16);
          if (sub_227663B20())
          {
            break;
          }

          v43 = (v43 + 1) & v44;
          if (((*(v32 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        result = sub_226EB2DFC(v38, v37, v39);
        *(v50 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
        v31 = v52;
        v26 = __OFADD__(v53++, 1);
        v5 = a3;
        v30 = v57;
        v4 = a4;
        if (v26)
        {
          __break(1u);
          goto LABEL_42;
        }
      }

      else
      {
LABEL_26:
        result = sub_226EB2DFC(v38, v37, v39);
        v5 = a3;
        v30 = v57;
        v4 = a4;
        v31 = v52;
      }
    }

    v34 = v27;
    while (1)
    {
      v27 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v27 >= v31)
      {
        goto LABEL_42;
      }

      v35 = *(v49 + 8 * v27);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v57 = (v35 - 1) & v35;
        goto LABEL_34;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v53 = 0;
    v54 = a3 + 56;
    v48 = v10;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v51 = (v9 - 1) & v9;
LABEL_14:
      v14 = *(v4 + 48) + 24 * (v11 | (v6 << 6));
      v16 = *v14;
      v15 = *(v14 + 8);
      v17 = *(v14 + 16);
      v18 = *(v5 + 40);
      sub_22766D370();
      v56 = v15;
      sub_226EB396C(v16, v15, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_226F480FC();
      sub_227663B10();
      v19 = sub_22766D3F0();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = 1 << v21;
      if (((1 << v21) & *(v54 + 8 * (v21 >> 6))) != 0)
      {
        v24 = ~v20;
        sub_226F48150();
        sub_226EC1E18();
        while (1)
        {
          v25 = *(a3 + 48) + 24 * v21;
          v59 = *v25;
          v61 = *(v25 + 16);
          if (sub_227663B20())
          {
            break;
          }

          v21 = (v21 + 1) & v24;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v54 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_6;
          }
        }

        result = sub_226EB2DFC(v16, v56, v17);
        v10 = v48;
        v50[v22] |= v23;
        v9 = v51;
        v26 = __OFADD__(v53++, 1);
        v5 = a3;
        v4 = a4;
        if (v26)
        {
          __break(1u);
          goto LABEL_22;
        }
      }

      else
      {
LABEL_6:
        result = sub_226EB2DFC(v16, v56, v17);
        v5 = a3;
        v4 = a4;
        v10 = v48;
        v9 = v51;
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
LABEL_42:

        return sub_22726A888(v50, a2, v53, v5);
      }

      v13 = *(v46 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v51 = (v13 - 1) & v13;
        goto LABEL_14;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22746AB34(uint64_t a1)
{
  v2 = 0;
  v5 = *(a1 + 56);
  result = a1 + 56;
  v4 = v5;
  v6 = 1 << *(result - 24);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  v33 = v9;
  v34 = result;
  if ((v7 & v4) != 0)
  {
    do
    {
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = *(a1 + 48) + 24 * (v11 | (v2 << 6));
      v14 = *v12;
      v13 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *v1;
      v37 = *v12;
      if (*(*v1 + 16))
      {
        v17 = *(v16 + 40);
        v40 = *v12;
        v41 = v13;
        v42 = v15;
        v18 = v13;
        sub_22766D370();
        v19 = v18;
        v20 = v15;
        sub_226EB396C(v14, v18, v15);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
        sub_226F480FC();
        sub_227663B10();
        v21 = sub_22766D3F0();
        v22 = -1 << *(v16 + 32);
        v23 = v21 & ~v22;
        if ((*(v16 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
        {
          v24 = ~v22;
          sub_226F48150();
          sub_226EC1E18();
          while (1)
          {
            v25 = *(v16 + 48) + 24 * v23;
            v26 = *(v25 + 16);
            v38 = *v25;
            v39 = v26;
            v40 = v37;
            v41 = v18;
            v42 = v20;
            if (sub_227663B20())
            {
              break;
            }

            v23 = (v23 + 1) & v24;
            if (((*(v16 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          v1 = v35;
          v30 = sub_22700C8C0();
          sub_227010FE0(v30, v31, v32);
          v27 = v37;
          v28 = v19;
          v29 = v20;
          goto LABEL_17;
        }
      }

      else
      {
        v19 = *(v12 + 8);
        v20 = *(v12 + 16);
        sub_226EB396C(v14, v13, v15);
      }

LABEL_16:
      v1 = v35;
      sub_227105A48(&v38, v37, v19, v20);
      v28 = *(&v38 + 1);
      v27 = v38;
      v29 = v39;
LABEL_17:
      sub_226EB2DFC(v27, v28, v29);
      v9 = v33;
      result = v34;
    }

    while (v8);
  }

  while (1)
  {
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
    }

    v8 = *(result + 8 * v10);
    ++v2;
    if (v8)
    {
      v2 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_22746ADD0()
{
  sub_2276627D0();
  if (v0 <= 0x3F)
  {
    sub_22746AF74();
    if (v1 <= 0x3F)
    {
      sub_22746AFFC();
      if (v2 <= 0x3F)
      {
        sub_22746B06C();
        if (v3 <= 0x3F)
        {
          sub_22746B1C0(319, &qword_27D7BDE18, &qword_27D7B88C0, &unk_22767A720, sub_226F487F8);
          if (v4 <= 0x3F)
          {
            sub_22746B0C8();
            if (v5 <= 0x3F)
            {
              sub_227667370();
              if (v6 <= 0x3F)
              {
                sub_22746B15C();
                if (v7 <= 0x3F)
                {
                  sub_22746B1C0(319, &qword_27D7BDE30, &qword_27D7B8560, &unk_227671560, sub_22704B2CC);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_22746AF74()
{
  if (!qword_27D7BDE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8560, &unk_227671560);
    sub_227668240();
    sub_22704B2CC();
    v0 = sub_22766BEF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7BDE00);
    }
  }
}

void sub_22746AFFC()
{
  if (!qword_27D7BDE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8560, &unk_227671560);
    sub_22704B2CC();
    v0 = sub_22766C730();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7BDE08);
    }
  }
}