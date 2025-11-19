uint64_t sub_2272CAC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2272CC52C(a3, v27 - v11);
  v13 = sub_22766C4B0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_226E91484(v12);
  }

  else
  {
    sub_22766C4A0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22766C420();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22766C0B0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7F8, &qword_227684270);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_226E91484(a3);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_226E91484(a3);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7F8, &qword_227684270);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2272CAEF4()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_2272CB084;

    return sub_2272CB4F4(0);
  }

  else
  {
    v5 = v0[8];
    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    v0[12] = v6;
    if (v6)
    {
      v7 = swift_task_alloc();
      v0[13] = v7;
      *v7 = v0;
      v7[1] = sub_2272CB29C;

      return sub_2270642BC();
    }

    else
    {
      v8 = v0[1];

      return v8();
    }
  }
}

uint64_t sub_2272CB084()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_2272CB490;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_2272CB1A0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2272CB1A0()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_2272CB29C;

    return sub_2270642BC();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2272CB29C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_2272CB42C;
  }

  else
  {
    v6 = sub_2272CB3C8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2272CB3C8()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2272CB42C()
{
  v1 = v0[14];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2272CB490()
{
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2272CB4F4(char a1)
{
  *(v2 + 88) = v1;
  *(v2 + 216) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0) - 8) + 64) + 15;
  *(v2 + 96) = swift_task_alloc();
  v4 = sub_22766B6E0();
  *(v2 + 104) = v4;
  v5 = *(v4 - 8);
  *(v2 + 112) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  v7 = sub_22766B720();
  *(v2 + 128) = v7;
  v8 = *(v7 - 8);
  *(v2 + 136) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  v10 = sub_22766B390();
  *(v2 + 152) = v10;
  v11 = *(v10 - 8);
  *(v2 + 160) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272CB6B4, v1, 0);
}

uint64_t sub_2272CB6B4()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 88);
  v8 = *(v0 + 216);
  sub_22766A730();
  sub_22766B370();
  v9 = *(v3 + 8);
  *(v0 + 184) = v9;
  *(v0 + 192) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v2);
  sub_226E91B50(v7 + 208, v0 + 16);
  v10 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  v11 = MEMORY[0x277D21A70];
  if (!v8)
  {
    v11 = MEMORY[0x277D21A78];
  }

  (*(v5 + 104))(v4, *v11, v6);
  v12 = *v10;
  v13 = swift_task_alloc();
  *(v0 + 200) = v13;
  *v13 = v0;
  v13[1] = sub_2272CB834;
  v14 = *(v0 + 144);
  v15 = *(v0 + 120);

  return sub_226E953B4(v14, v15);
}

uint64_t sub_2272CB834()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v11 = *v1;
  *(*v1 + 208) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = v2[11];
    v8 = sub_2272CBB5C;
  }

  else
  {
    v9 = v2[11];
    (*(v2[17] + 8))(v2[18], v2[16]);
    v8 = sub_2272CB9D0;
    v7 = v9;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2272CB9D0()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[12];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2275B5154();
  sub_22766A730();
  sub_22766B370();
  v2(v3, v4);
  v6 = sub_22766C4B0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_2272CA940(0, 0, v5, &unk_22767F230, v7);

  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[12];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2272CBB5C()
{
  v29 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_22766A730();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 208);
    v26 = *(v0 + 184);
    v27 = *(v0 + 192);
    v7 = *(v0 + 168);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = *(v0 + 56);
    v12 = MEMORY[0x22AA995D0](*(v0 + 64), *(v0 + 72));
    v14 = sub_226E97AE8(v12, v13, &v28);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v4, v5, "Updating JetPack failed: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    v26(v7, v8);
  }

  else
  {
    v16 = *(v0 + 184);
    v15 = *(v0 + 192);
    v17 = *(v0 + 168);
    v18 = *(v0 + 152);

    v16(v17, v18);
  }

  v20 = *(v0 + 168);
  v19 = *(v0 + 176);
  v21 = *(v0 + 144);
  v22 = *(v0 + 120);
  v23 = *(v0 + 96);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_2272CBD80()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_226F73E2C;

    return sub_2272CB4F4(1);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2272CBE88()
{
  xpc_transaction_exit_clean();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2272CBEE4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  v1 = v0[24];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 26);
  v2 = v0[31];

  v3 = v0[32];

  v4 = OBJC_IVAR____TtC15SeymourServices12ScriptSystem__useSystemJetPack;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for ScriptSystem()
{
  result = qword_2813A4A48;
  if (!qword_2813A4A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2272CBFEC()
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2272CC0B8(char a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E92F34;

  return sub_2272CB4F4(a1);
}

uint64_t sub_2272CC16C()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_22766BFD0();
  v3 = [v1 stringForKey_];

  if (v3)
  {
    v4 = sub_22766C000();
    v6 = v5;
  }

  else
  {
    v6 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
  }

  v7 = *(v0 + 8);

  return v7(v4, v6);
}

uint64_t sub_2272CC278(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2272CC36C;

  return v6(v2 + 32);
}

uint64_t sub_2272CC36C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2272CC480()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_226E92F34;

  return sub_2272CBE6C();
}

uint64_t sub_2272CC52C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2272CC59C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226E93028;

  return sub_2272CC278(a1, v5);
}

uint64_t SQLiteDatabaseHandle.deinit()
{
  sqlite3_close(*(v0 + 16));

  return v0;
}

uint64_t SQLiteDatabaseHandle.__deallocating_deinit()
{
  sqlite3_close(*(v0 + 16));

  return swift_deallocClassInstance();
}

BOOL static SQLiteDatabaseHandle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  v5 = sub_227669C30();
  return v5 == sub_227669C30();
}

uint64_t SQLiteDatabaseHandle.hash(into:)()
{
  MEMORY[0x22AA996B0](*(v0 + 16));
  v1 = *(v0 + 24);
  v2 = sub_227669C30();
  return MEMORY[0x22AA996B0](v2);
}

uint64_t SQLiteDatabaseHandle.hashValue.getter()
{
  sub_22766D370();
  MEMORY[0x22AA996B0](*(v0 + 16));
  v1 = *(v0 + 24);
  v2 = sub_227669C30();
  MEMORY[0x22AA996B0](v2);
  return sub_22766D3F0();
}

uint64_t sub_2272CC7A4()
{
  v1 = *v0;
  sub_22766D370();
  MEMORY[0x22AA996B0](*(v1 + 16));
  v2 = *(v1 + 24);
  v3 = sub_227669C30();
  MEMORY[0x22AA996B0](v3);
  return sub_22766D3F0();
}

uint64_t sub_2272CC7FC()
{
  v1 = *v0;
  MEMORY[0x22AA996B0](*(*v0 + 16));
  v2 = *(v1 + 24);
  v3 = sub_227669C30();
  return MEMORY[0x22AA996B0](v3);
}

uint64_t sub_2272CC840()
{
  v1 = *v0;
  sub_22766D370();
  MEMORY[0x22AA996B0](*(v1 + 16));
  v2 = *(v1 + 24);
  v3 = sub_227669C30();
  MEMORY[0x22AA996B0](v3);
  return sub_22766D3F0();
}

unint64_t sub_2272CC898()
{
  result = qword_27D7BC800;
  if (!qword_27D7BC800)
  {
    type metadata accessor for SQLiteDatabaseHandle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC800);
  }

  return result;
}

BOOL sub_2272CC910(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) != *(*a2 + 16))
  {
    return 0;
  }

  v3 = *(*a1 + 24);
  v4 = *(*a2 + 24);
  v5 = sub_227669C30();
  return v5 == sub_227669C30();
}

void sub_2272CC988(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_227662750();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v43 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v41 = v40 - v8;
  MEMORY[0x28223BE20](v7);
  v42 = v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v40 - v12;
  v14 = sub_2276624A0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v40 - v20;
  v22 = a1;
  v23 = [a1 remoteURL];
  if (v23)
  {
    v24 = v23;
    sub_22766C000();
  }

  sub_227662310();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_226E97D1C(v13, &unk_27D7BB570, &unk_227670FC0);
    v25 = v22;
  }

  else
  {
    (*(v15 + 32))(v21, v13, v14);
    v25 = v22;
    v26 = [v22 bundleIdentifier];
    if (v26)
    {
      v27 = v26;
      v28 = sub_22766C000();
      v30 = v29;

      v31 = [v25 date];
      if (v31)
      {
        v32 = v31;
        v33 = v41;
        sub_227662710();

        v40[0] = v28;
        v40[1] = v30;
        v34 = v45;
        v35 = v42;
        v36 = v33;
        v37 = v46;
        (*(v45 + 32))(v42, v36, v46);
        (*(v15 + 16))(v19, v21, v14);
        (*(v34 + 16))(v43, v35, v37);
        sub_227664B20();

        (*(v34 + 8))(v35, v37);
        (*(v15 + 8))(v21, v14);
        return;
      }
    }

    (*(v15 + 8))(v21, v14);
  }

  v38 = sub_227664DD0();
  sub_2272CD68C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v38 - 8) + 104))(v39, *MEMORY[0x277D51028], v38);
  swift_willThrow();
}

size_t static AssetLoadFailure.representativeSamples()()
{
  v40 = sub_227662750();
  v29 = *(v40 - 8);
  v0 = *(v29 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2276624A0();
  v2 = *(v38 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC808, &qword_22767F348);
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v36);
  v34 = v28 - v7;
  v35 = sub_227664B30();
  v8 = *(v35 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v35);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2276622F0();
  v13 = sub_22766C090();
  v14 = sub_227662630();
  v49 = v13;
  v50[0] = v12;
  v50[1] = v50;
  v50[2] = &v49;
  v48 = v14;
  v50[3] = &v48;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v42 = sub_226F5BF60(&qword_27D7B9108, &qword_27D7B90F8, &qword_227679D10);
  v43 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v44 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v15 = sub_2276638E0();

  v16 = *(v15 + 16);
  if (v16)
  {
    v41 = MEMORY[0x277D84F90];
    result = sub_226F20388(0, v16, 0);
    v18 = 0;
    v19 = v41;
    v31 = v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v30 = (v2 + 16);
    v29 += 16;
    v28[1] = v8 + 32;
    v33 = v15;
    v32 = v5;
    while (v18 < *(v15 + 16))
    {
      v20 = v16;
      v21 = v34;
      sub_2272CD3B0(v31 + *(v5 + 72) * v18, v34);
      v22 = (v21 + *(v36 + 48));
      v24 = *v22;
      v23 = v22[1];
      v25 = *(v36 + 64);
      (*v30)(v37, v21, v38);
      (*v29)(v39, v21 + v25, v40);

      sub_227664B20();
      sub_226E97D1C(v21, &qword_27D7BC808, &qword_22767F348);
      v41 = v19;
      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_226F20388(v26 > 1, v27 + 1, 1);
        v19 = v41;
      }

      ++v18;
      *(v19 + 16) = v27 + 1;
      result = (*(v8 + 32))(v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v27, v11, v35);
      v16 = v20;
      v5 = v32;
      v15 = v33;
      if (v20 == v18)
      {

        return v19;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2272CD3B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC808, &qword_22767F348);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2272CD420(uint64_t a1)
{
  result = sub_2272CD68C(&qword_27D7BC810, MEMORY[0x277D50D88]);
  *(a1 + 8) = result;
  return result;
}

void sub_2272CD478(void *a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2276624A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227664B10();
  sub_227662390();
  (*(v8 + 8))(v11, v7);
  v12 = sub_22766BFD0();

  [a1 setRemoteURL_];

  sub_227664AF0();
  v13 = sub_22766BFD0();

  [a1 setBundleIdentifier_];

  sub_227664B00();
  v14 = sub_2276626A0();
  (*(v3 + 8))(v6, v2);
  [a1 setDate_];
}

uint64_t sub_2272CD68C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2272CD6D4()
{
  v1 = v0;
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25[-1] - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v25[-1] - v14;
  (*(v11 + 16))(&v25[-1] - v14, v1 + OBJC_IVAR____TtC15SeymourServices28WorkoutPlanAnalyticsReporter__enableWorkoutPlanAnalyticsReporter, v10, v13);
  sub_227669730();
  (*(v11 + 8))(v15, v10);
  if (LOBYTE(v25[0]) == 1)
  {
    sub_22766A630();
    v16 = sub_22766B380();
    v17 = sub_22766C8B0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_226E8E000, v16, v17, "Reporting plan modification event to CoreAnalytics", v18, 2u);
      MEMORY[0x22AA9A450](v18, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
    v19 = v1[6];
    __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
    v25[3] = &type metadata for ModifyPlanAnalyticsEvent;
    v25[4] = sub_2272D6318();
    sub_227669B60();
    return __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    sub_22766A630();
    v21 = sub_22766B380();
    v22 = sub_22766C8B0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_226E8E000, v21, v22, "Metrics reporting disabled", v23, 2u);
      MEMORY[0x22AA9A450](v23, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_2272CD9E8(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v44 = sub_227664EC0();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v44);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v39 - v19;
  v21 = *(v16 + 16);
  v42 = v2;
  v21(v39 - v19, v2 + OBJC_IVAR____TtC15SeymourServices28WorkoutPlanAnalyticsReporter__enableWorkoutPlanAnalyticsReporter, v15, v18);
  sub_227669730();
  (*(v16 + 8))(v20, v15);
  if (LOBYTE(v45[0]) == 1)
  {
    v41 = v7;
    sub_22766A630();
    v40 = *(v3 + 16);
    v40(v6, v43, v44);
    v22 = sub_22766B380();
    v23 = sub_22766C8B0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v39[1] = (v3 + 16);
      v25 = v24;
      v39[0] = swift_slowAlloc();
      v45[0] = v39[0];
      *v25 = 136315138;
      v26 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210]);
      v27 = v44;
      v28 = MEMORY[0x22AA995D0](v44, v26);
      v30 = v29;
      (*(v3 + 8))(v6, v27);
      v31 = sub_226E97AE8(v28, v30, v45);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_226E8E000, v22, v23, "Reporting plan modification error %s to CoreAnalytics", v25, 0xCu);
      v32 = v39[0];
      __swift_destroy_boxed_opaque_existential_0(v39[0]);
      MEMORY[0x22AA9A450](v32, -1, -1);
      MEMORY[0x22AA9A450](v25, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v44);
    }

    (*(v8 + 8))(v14, v41);
    v37 = v42[6];
    __swift_project_boxed_opaque_existential_0(v42 + 2, v42[5]);
    v45[3] = type metadata accessor for ModifyPlanFailureAnalyticsEvent();
    v45[4] = sub_2272D6504(&qword_27D7BC828, type metadata accessor for ModifyPlanFailureAnalyticsEvent);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v45);
    v40(boxed_opaque_existential_0, v43, v44);
    sub_227669B60();
    return __swift_destroy_boxed_opaque_existential_0(v45);
  }

  else
  {
    sub_22766A630();
    v33 = sub_22766B380();
    v34 = sub_22766C8B0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_226E8E000, v33, v34, "Metrics reporting disabled", v35, 2u);
      MEMORY[0x22AA9A450](v35, -1, -1);
    }

    return (*(v8 + 8))(v11, v7);
  }
}

SeymourServices::AlgorithmScoreRange_optional __swiftcall AlgorithmScoreRange.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22766D030();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AlgorithmScoreRange.rawValue.getter()
{
  v1 = 0x65676E61526E69;
  if (*v0 != 1)
  {
    v1 = 0x6E6152776F6C6562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E615265766F6261;
  }
}

uint64_t sub_2272CDF98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x65676E61526E69;
  if (v2 != 1)
  {
    v4 = 0x6E6152776F6C6562;
    v3 = 0xEA00000000006567;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E615265766F6261;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000006567;
  }

  v7 = 0xE700000000000000;
  v8 = 0x65676E61526E69;
  if (*a2 != 1)
  {
    v8 = 0x6E6152776F6C6562;
    v7 = 0xEA00000000006567;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E615265766F6261;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000006567;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22766D190();
  }

  return v11 & 1;
}

unint64_t sub_2272CE098()
{
  result = qword_27D7BC818;
  if (!qword_27D7BC818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC818);
  }

  return result;
}

uint64_t sub_2272CE0EC()
{
  v1 = *v0;
  sub_22766D370();
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_2272CE190()
{
  *v0;
  *v0;
  sub_22766C100();
}

uint64_t sub_2272CE220()
{
  v1 = *v0;
  sub_22766D370();
  sub_22766C100();

  return sub_22766D3F0();
}

void sub_2272CE2CC(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006567;
  v3 = *v1;
  v4 = 0xE700000000000000;
  v5 = 0x65676E61526E69;
  if (v3 != 1)
  {
    v5 = 0x6E6152776F6C6562;
    v4 = 0xEA00000000006567;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E615265766F6261;
  }

  if (!v6)
  {
    v2 = v4;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t sub_2272CE33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[56] = a5;
  v6[57] = a6;
  v6[55] = a4;
  v7 = *(*(sub_227664D30() - 8) + 64) + 15;
  v6[58] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9138, &unk_227675CC0) - 8) + 64) + 15;
  v6[59] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9140, &unk_22767F4E0) - 8) + 64) + 15;
  v6[60] = swift_task_alloc();
  v10 = sub_2276685D0();
  v6[61] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[62] = swift_task_alloc();
  v12 = sub_227667830();
  v6[63] = v12;
  v13 = *(v12 - 8);
  v6[64] = v13;
  v14 = *(v13 + 64) + 15;
  v6[65] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v6[66] = v15;
  v16 = *(v15 - 8);
  v6[67] = v16;
  v17 = *(v16 + 64) + 15;
  v6[68] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9128, &unk_22767F4F0);
  v6[69] = v18;
  v19 = *(v18 - 8);
  v6[70] = v19;
  v20 = *(v19 + 64) + 15;
  v6[71] = swift_task_alloc();
  v21 = sub_227664EC0();
  v6[72] = v21;
  v22 = *(v21 - 8);
  v6[73] = v22;
  v23 = *(v22 + 64) + 15;
  v6[74] = swift_task_alloc();
  v6[75] = swift_task_alloc();
  v24 = sub_22766B390();
  v6[76] = v24;
  v25 = *(v24 - 8);
  v6[77] = v25;
  v26 = *(v25 + 64) + 15;
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v6[80] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272CE678, 0, 0);
}

uint64_t sub_2272CE678()
{
  v106 = v0;
  v1 = *(v0 + 640);
  v2 = *(v0 + 600);
  v3 = *(v0 + 584);
  v4 = *(v0 + 576);
  v5 = *(v0 + 440);
  sub_22766A630();
  v6 = *(v3 + 16);
  *(v0 + 648) = v6;
  *(v0 + 656) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 640);
  v11 = *(v0 + 616);
  v12 = *(v0 + 608);
  v13 = *(v0 + 600);
  v14 = *(v0 + 584);
  v15 = *(v0 + 576);
  if (v9)
  {
    v101 = *(v0 + 608);
    v16 = swift_slowAlloc();
    v94 = v8;
    v17 = swift_slowAlloc();
    v105 = v17;
    *v16 = 136315138;
    v18 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210]);
    v19 = MEMORY[0x22AA995D0](v15, v18);
    v97 = v10;
    v21 = v20;
    (*(v14 + 8))(v13, v15);
    v22 = sub_226E97AE8(v19, v21, &v105);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_226E8E000, v7, v94, "Reporting scaffold creation error %s to AMP", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA9A450](v17, -1, -1);
    MEMORY[0x22AA9A450](v16, -1, -1);

    (*(v11 + 8))(v97, v101);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
  }

  v23 = *(v0 + 448);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 56, v0 + 56);

    v25 = *__swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    swift_beginAccess();
    sub_226F9B220(v25 + 280, v0 + 96);
    v26 = *(v0 + 568);
    if (*(v0 + 120))
    {
      sub_226F19770((v0 + 96), v0 + 136);
      sub_226E91B50(v0 + 136, v0 + 176);
      v27 = swift_allocObject();
      sub_226F19770((v0 + 176), v27 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
      sub_227669280();
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    }

    else
    {
      v46 = sub_2276636A0();
      sub_2272D6504(&qword_28139BCC0, MEMORY[0x277D500E0]);
      v47 = swift_allocError();
      (*(*(v46 - 8) + 104))(v48, *MEMORY[0x277D50048], v46);
      *(swift_allocObject() + 16) = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
      sub_227669280();
    }

    v49 = *(v0 + 568);
    v41 = swift_task_alloc();
    *(v0 + 664) = v41;
    *(v41 + 16) = "SeymourServices/WorkoutPlanAnalyticsReporter.swift";
    *(v41 + 24) = 50;
    *(v41 + 32) = 2;
    *(v41 + 40) = 92;
    *(v41 + 48) = v49;
    v50 = *(MEMORY[0x277D85A40] + 4);
    v51 = swift_task_alloc();
    *(v0 + 672) = v51;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
    *v51 = v0;
    v51[1] = sub_2272CF150;
    v44 = sub_2272D6564;
    v43 = (v0 + 16);
    goto LABEL_11;
  }

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  sub_2272D63D8(v0 + 16, v0 + 296);
  v28 = *(v0 + 320);
  if (v28)
  {
    v29 = *(v0 + 520);
    v30 = *(v0 + 512);
    v98 = *(v0 + 544);
    v102 = *(v0 + 504);
    v31 = *(v0 + 488);
    v32 = *(v0 + 496);
    v34 = *(v0 + 472);
    v33 = *(v0 + 480);
    v35 = *(v0 + 456);
    v36 = *(v0 + 464);
    v95 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_0((v0 + 296), v28);
    v37 = sub_227667100();
    (*(*(v37 - 8) + 16))(v32, v35, v37);
    swift_storeEnumTagMultiPayload();
    v38 = sub_2276651F0();
    (*(*(v38 - 8) + 56))(v33, 1, 1, v38);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9160, &qword_227675CE0);
    (*(*(v39 - 8) + 56))(v34, 1, 1, v39);
    v40 = sub_2276665E0();
    (*(*(v40 - 8) + 56))(v36, 1, 1, v40);
    sub_227667810();
    (*(v95 + 32))(v29, v28);
    (*(v30 + 8))(v29, v102);
    v41 = swift_task_alloc();
    *(v0 + 688) = v41;
    *(v41 + 16) = "SeymourServices/WorkoutPlanAnalyticsReporter.swift";
    *(v41 + 24) = 50;
    *(v41 + 32) = 2;
    *(v41 + 40) = 95;
    *(v41 + 48) = v98;
    v42 = *(MEMORY[0x277D85A40] + 4);
    v43 = swift_task_alloc();
    *(v0 + 696) = v43;
    *v43 = v0;
    v43[1] = sub_2272CFE1C;
    v44 = sub_2272D6568;
    v45 = MEMORY[0x277D84F78] + 8;
LABEL_11:

    return MEMORY[0x2822008A0](v43, 0, 0, 0xD000000000000013, 0x8000000227693B00, v44, v41, v45);
  }

  sub_2272D6448(v0 + 16);
  sub_2272D6448(v0 + 296);
  v52 = *(v0 + 656);
  v53 = *(v0 + 648);
  v54 = *(v0 + 632);
  v55 = *(v0 + 592);
  v56 = *(v0 + 576);
  v57 = *(v0 + 440);
  sub_22766A630();
  v53(v55, v57, v56);
  v58 = sub_22766B380();
  v59 = sub_22766C8B0();
  v60 = os_log_type_enabled(v58, v59);
  v61 = *(v0 + 632);
  v62 = *(v0 + 616);
  v63 = *(v0 + 608);
  v64 = *(v0 + 592);
  v65 = *(v0 + 584);
  v66 = *(v0 + 576);
  if (v60)
  {
    v103 = *(v0 + 608);
    v67 = swift_slowAlloc();
    v96 = v59;
    v68 = swift_slowAlloc();
    v105 = v68;
    *v67 = 136315138;
    v69 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210]);
    v70 = MEMORY[0x22AA995D0](v66, v69);
    v99 = v61;
    v72 = v71;
    (*(v65 + 8))(v64, v66);
    v73 = sub_226E97AE8(v70, v72, &v105);

    *(v67 + 4) = v73;
    _os_log_impl(&dword_226E8E000, v58, v96, "Reporting scaffold creation error %s to CoreAnalytics", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v68);
    MEMORY[0x22AA9A450](v68, -1, -1);
    MEMORY[0x22AA9A450](v67, -1, -1);

    (*(v62 + 8))(v99, v103);
  }

  else
  {

    (*(v65 + 8))(v64, v66);
    (*(v62 + 8))(v61, v63);
  }

  v74 = *(v0 + 448);
  swift_beginAccess();
  v75 = swift_weakLoadStrong();
  if (v75)
  {
    v76 = *(v0 + 656);
    v77 = *(v0 + 648);
    v78 = *(v0 + 576);
    v79 = *(v0 + 440);
    sub_226E91B50(v75 + 16, v0 + 216);

    v80 = *(v0 + 248);
    __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
    *(v0 + 280) = type metadata accessor for CreateScaffoldFailureAnalyticsEvent();
    *(v0 + 288) = sub_2272D6504(&qword_27D7BC850, type metadata accessor for CreateScaffoldFailureAnalyticsEvent);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
    v77(boxed_opaque_existential_0, v79, v78);
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  }

  v82 = *(v0 + 640);
  v83 = *(v0 + 632);
  v84 = *(v0 + 624);
  v85 = *(v0 + 600);
  v86 = *(v0 + 592);
  v87 = *(v0 + 568);
  v88 = *(v0 + 544);
  v89 = *(v0 + 520);
  v90 = *(v0 + 496);
  v91 = *(v0 + 480);
  v100 = *(v0 + 472);
  v104 = *(v0 + 464);

  v92 = *(v0 + 8);

  return v92();
}

uint64_t sub_2272CF150()
{
  v2 = *v1;
  v3 = (*v1)[84];
  v4 = (*v1)[83];
  v7 = *v1;
  (*v1)[85] = v0;

  if (v0)
  {
    v5 = sub_2272CF904;
  }

  else
  {
    (*(v2[70] + 8))(v2[71], v2[69]);
    __swift_destroy_boxed_opaque_existential_0(v2 + 7);
    v5 = sub_2272CF2AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2272CF2AC()
{
  v69 = v0;
  sub_2272D63D8((v0 + 2), (v0 + 37));
  v1 = v0[40];
  if (v1)
  {
    v2 = v0[65];
    v3 = v0[64];
    v62 = v0[68];
    v65 = v0[63];
    v4 = v0[61];
    v5 = v0[62];
    v7 = v0[59];
    v6 = v0[60];
    v8 = v0[57];
    v9 = v0[58];
    v60 = v0[41];
    __swift_project_boxed_opaque_existential_0(v0 + 37, v1);
    v10 = sub_227667100();
    (*(*(v10 - 8) + 16))(v5, v8, v10);
    swift_storeEnumTagMultiPayload();
    v11 = sub_2276651F0();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9160, &qword_227675CE0);
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    v13 = sub_2276665E0();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    sub_227667810();
    (*(v60 + 32))(v2, v1);
    (*(v3 + 8))(v2, v65);
    v14 = swift_task_alloc();
    v0[86] = v14;
    *(v14 + 16) = "SeymourServices/WorkoutPlanAnalyticsReporter.swift";
    *(v14 + 24) = 50;
    *(v14 + 32) = 2;
    *(v14 + 40) = 95;
    *(v14 + 48) = v62;
    v15 = *(MEMORY[0x277D85A40] + 4);
    v16 = swift_task_alloc();
    v0[87] = v16;
    *v16 = v0;
    v16[1] = sub_2272CFE1C;
    v17 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v16, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2272D6568, v14, v17);
  }

  else
  {
    sub_2272D6448((v0 + 2));
    sub_2272D6448((v0 + 37));
    v18 = v0[82];
    v19 = v0[81];
    v20 = v0[79];
    v21 = v0[74];
    v22 = v0[72];
    v23 = v0[55];
    sub_22766A630();
    v19(v21, v23, v22);
    v24 = sub_22766B380();
    v25 = sub_22766C8B0();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[79];
    v28 = v0[77];
    v29 = v0[76];
    v30 = v0[74];
    v31 = v0[73];
    v32 = v0[72];
    if (v26)
    {
      v66 = v0[76];
      v33 = swift_slowAlloc();
      v61 = v25;
      v34 = swift_slowAlloc();
      v68 = v34;
      *v33 = 136315138;
      v35 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210]);
      v36 = MEMORY[0x22AA995D0](v32, v35);
      v63 = v27;
      v38 = v37;
      (*(v31 + 8))(v30, v32);
      v39 = sub_226E97AE8(v36, v38, &v68);

      *(v33 + 4) = v39;
      _os_log_impl(&dword_226E8E000, v24, v61, "Reporting scaffold creation error %s to CoreAnalytics", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x22AA9A450](v34, -1, -1);
      MEMORY[0x22AA9A450](v33, -1, -1);

      (*(v28 + 8))(v63, v66);
    }

    else
    {

      (*(v31 + 8))(v30, v32);
      (*(v28 + 8))(v27, v29);
    }

    v40 = v0[56];
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v42 = v0[82];
      v43 = v0[81];
      v44 = v0[72];
      v45 = v0[55];
      sub_226E91B50(Strong + 16, (v0 + 27));

      v46 = v0[31];
      __swift_project_boxed_opaque_existential_0(v0 + 27, v0[30]);
      v0[35] = type metadata accessor for CreateScaffoldFailureAnalyticsEvent();
      v0[36] = sub_2272D6504(&qword_27D7BC850, type metadata accessor for CreateScaffoldFailureAnalyticsEvent);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 32);
      v43(boxed_opaque_existential_0, v45, v44);
      sub_227669B60();
      __swift_destroy_boxed_opaque_existential_0(v0 + 32);
      __swift_destroy_boxed_opaque_existential_0(v0 + 27);
    }

    v48 = v0[80];
    v49 = v0[79];
    v50 = v0[78];
    v51 = v0[75];
    v52 = v0[74];
    v53 = v0[71];
    v54 = v0[68];
    v55 = v0[65];
    v56 = v0[62];
    v57 = v0[60];
    v64 = v0[59];
    v67 = v0[58];

    v58 = v0[1];

    return v58();
  }
}

uint64_t sub_2272CF904()
{
  v66 = v0;
  (*(v0[70] + 8))(v0[71], v0[69]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[85];
  v2 = v0[78];
  sub_22766A630();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[77];
    v59 = v0[76];
    v62 = v0[78];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v65 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = v0[51];
    v10 = MEMORY[0x22AA995D0](v0[52], v0[53]);
    v12 = sub_226E97AE8(v10, v11, &v65);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v4, v5, "Could not report scaffold creation error to AMP due to error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    (*(v6 + 8))(v62, v59);
  }

  else
  {
    v13 = v0[78];
    v14 = v0[77];
    v15 = v0[76];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[82];
  v17 = v0[81];
  v18 = v0[79];
  v19 = v0[74];
  v20 = v0[72];
  v21 = v0[55];
  sub_22766A630();
  v17(v19, v21, v20);
  v22 = sub_22766B380();
  v23 = sub_22766C8B0();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[79];
  v26 = v0[77];
  v27 = v0[76];
  v28 = v0[74];
  v29 = v0[73];
  v30 = v0[72];
  if (v24)
  {
    v63 = v0[76];
    v31 = swift_slowAlloc();
    v58 = v23;
    v32 = swift_slowAlloc();
    v65 = v32;
    *v31 = 136315138;
    v33 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210]);
    v34 = MEMORY[0x22AA995D0](v30, v33);
    v60 = v25;
    v36 = v35;
    (*(v29 + 8))(v28, v30);
    v37 = sub_226E97AE8(v34, v36, &v65);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_226E8E000, v22, v58, "Reporting scaffold creation error %s to CoreAnalytics", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AA9A450](v32, -1, -1);
    MEMORY[0x22AA9A450](v31, -1, -1);

    (*(v26 + 8))(v60, v63);
  }

  else
  {

    (*(v29 + 8))(v28, v30);
    (*(v26 + 8))(v25, v27);
  }

  v38 = v0[56];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v40 = v0[82];
    v41 = v0[81];
    v42 = v0[72];
    v43 = v0[55];
    sub_226E91B50(Strong + 16, (v0 + 27));

    v44 = v0[31];
    __swift_project_boxed_opaque_existential_0(v0 + 27, v0[30]);
    v0[35] = type metadata accessor for CreateScaffoldFailureAnalyticsEvent();
    v0[36] = sub_2272D6504(&qword_27D7BC850, type metadata accessor for CreateScaffoldFailureAnalyticsEvent);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 32);
    v41(boxed_opaque_existential_0, v43, v42);
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0(v0 + 32);
    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  }

  v46 = v0[80];
  v47 = v0[79];
  v48 = v0[78];
  v49 = v0[75];
  v50 = v0[74];
  v51 = v0[71];
  v52 = v0[68];
  v53 = v0[65];
  v54 = v0[62];
  v55 = v0[60];
  v61 = v0[59];
  v64 = v0[58];

  v56 = v0[1];

  return v56();
}

uint64_t sub_2272CFE1C()
{
  v2 = *v1;
  v3 = (*v1)[87];
  v4 = (*v1)[86];
  v7 = *v1;
  (*v1)[88] = v0;

  if (v0)
  {
    v5 = sub_2272D0318;
  }

  else
  {
    (*(v2[67] + 8))(v2[68], v2[66]);
    __swift_destroy_boxed_opaque_existential_0(v2 + 37);
    v5 = sub_2272CFF78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2272CFF78()
{
  v49 = v0;
  sub_2272D6448((v0 + 2));
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[79];
  v4 = v0[74];
  v5 = v0[72];
  v6 = v0[55];
  sub_22766A630();
  v2(v4, v6, v5);
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[79];
  v11 = v0[77];
  v12 = v0[76];
  v13 = v0[74];
  v14 = v0[73];
  v15 = v0[72];
  if (v9)
  {
    v46 = v0[76];
    v16 = swift_slowAlloc();
    v43 = v8;
    v17 = swift_slowAlloc();
    v48 = v17;
    *v16 = 136315138;
    v18 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210]);
    v19 = MEMORY[0x22AA995D0](v15, v18);
    v44 = v10;
    v21 = v20;
    (*(v14 + 8))(v13, v15);
    v22 = sub_226E97AE8(v19, v21, &v48);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_226E8E000, v7, v43, "Reporting scaffold creation error %s to CoreAnalytics", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA9A450](v17, -1, -1);
    MEMORY[0x22AA9A450](v16, -1, -1);

    (*(v11 + 8))(v44, v46);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
  }

  v23 = v0[56];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = v0[82];
    v26 = v0[81];
    v27 = v0[72];
    v28 = v0[55];
    sub_226E91B50(Strong + 16, (v0 + 27));

    v29 = v0[31];
    __swift_project_boxed_opaque_existential_0(v0 + 27, v0[30]);
    v0[35] = type metadata accessor for CreateScaffoldFailureAnalyticsEvent();
    v0[36] = sub_2272D6504(&qword_27D7BC850, type metadata accessor for CreateScaffoldFailureAnalyticsEvent);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 32);
    v26(boxed_opaque_existential_0, v28, v27);
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0(v0 + 32);
    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  }

  v31 = v0[80];
  v32 = v0[79];
  v33 = v0[78];
  v34 = v0[75];
  v35 = v0[74];
  v36 = v0[71];
  v37 = v0[68];
  v38 = v0[65];
  v39 = v0[62];
  v40 = v0[60];
  v45 = v0[59];
  v47 = v0[58];

  v41 = v0[1];

  return v41();
}

uint64_t sub_2272D0318()
{
  v66 = v0;
  (*(v0[67] + 8))(v0[68], v0[66]);
  sub_2272D6448((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  v1 = v0[88];
  v2 = v0[78];
  sub_22766A630();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[77];
    v59 = v0[76];
    v62 = v0[78];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v65 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = v0[51];
    v10 = MEMORY[0x22AA995D0](v0[52], v0[53]);
    v12 = sub_226E97AE8(v10, v11, &v65);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v4, v5, "Could not report scaffold creation error to AMP due to error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    (*(v6 + 8))(v62, v59);
  }

  else
  {
    v13 = v0[78];
    v14 = v0[77];
    v15 = v0[76];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[82];
  v17 = v0[81];
  v18 = v0[79];
  v19 = v0[74];
  v20 = v0[72];
  v21 = v0[55];
  sub_22766A630();
  v17(v19, v21, v20);
  v22 = sub_22766B380();
  v23 = sub_22766C8B0();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[79];
  v26 = v0[77];
  v27 = v0[76];
  v28 = v0[74];
  v29 = v0[73];
  v30 = v0[72];
  if (v24)
  {
    v63 = v0[76];
    v31 = swift_slowAlloc();
    v58 = v23;
    v32 = swift_slowAlloc();
    v65 = v32;
    *v31 = 136315138;
    v33 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210]);
    v34 = MEMORY[0x22AA995D0](v30, v33);
    v60 = v25;
    v36 = v35;
    (*(v29 + 8))(v28, v30);
    v37 = sub_226E97AE8(v34, v36, &v65);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_226E8E000, v22, v58, "Reporting scaffold creation error %s to CoreAnalytics", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AA9A450](v32, -1, -1);
    MEMORY[0x22AA9A450](v31, -1, -1);

    (*(v26 + 8))(v60, v63);
  }

  else
  {

    (*(v29 + 8))(v28, v30);
    (*(v26 + 8))(v25, v27);
  }

  v38 = v0[56];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v40 = v0[82];
    v41 = v0[81];
    v42 = v0[72];
    v43 = v0[55];
    sub_226E91B50(Strong + 16, (v0 + 27));

    v44 = v0[31];
    __swift_project_boxed_opaque_existential_0(v0 + 27, v0[30]);
    v0[35] = type metadata accessor for CreateScaffoldFailureAnalyticsEvent();
    v0[36] = sub_2272D6504(&qword_27D7BC850, type metadata accessor for CreateScaffoldFailureAnalyticsEvent);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 32);
    v41(boxed_opaque_existential_0, v43, v42);
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0(v0 + 32);
    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  }

  v46 = v0[80];
  v47 = v0[79];
  v48 = v0[78];
  v49 = v0[75];
  v50 = v0[74];
  v51 = v0[71];
  v52 = v0[68];
  v53 = v0[65];
  v54 = v0[62];
  v55 = v0[60];
  v61 = v0[59];
  v64 = v0[58];

  v56 = v0[1];

  return v56();
}

uint64_t sub_2272D0838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[56] = a5;
  v6[57] = a6;
  v6[55] = a4;
  v7 = *(*(sub_227664D30() - 8) + 64) + 15;
  v6[58] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9138, &unk_227675CC0) - 8) + 64) + 15;
  v6[59] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9140, &unk_22767F4E0) - 8) + 64) + 15;
  v6[60] = swift_task_alloc();
  v10 = sub_2276685D0();
  v6[61] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[62] = swift_task_alloc();
  v12 = sub_227667830();
  v6[63] = v12;
  v13 = *(v12 - 8);
  v6[64] = v13;
  v14 = *(v13 + 64) + 15;
  v6[65] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v6[66] = v15;
  v16 = *(v15 - 8);
  v6[67] = v16;
  v17 = *(v16 + 64) + 15;
  v6[68] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9128, &unk_22767F4F0);
  v6[69] = v18;
  v19 = *(v18 - 8);
  v6[70] = v19;
  v20 = *(v19 + 64) + 15;
  v6[71] = swift_task_alloc();
  v21 = sub_22766B390();
  v6[72] = v21;
  v22 = *(v21 - 8);
  v6[73] = v22;
  v23 = *(v22 + 64) + 15;
  v6[74] = swift_task_alloc();
  v6[75] = swift_task_alloc();
  v6[76] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272D0B0C, 0, 0);
}

uint64_t sub_2272D0B0C()
{
  v1 = *(v0 + 608);
  sub_22766A630();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Reporting scaffold creation event to CoreAnalytics", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v5 = *(v0 + 608);
  v6 = *(v0 + 584);
  v7 = *(v0 + 576);
  v8 = *(v0 + 440);

  v9 = *(v6 + 8);
  v9(v5, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(v0 + 448);
    sub_226E91B50(Strong + 16, v0 + 16);

    v12 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    sub_227667040();
    v14 = v13;
    sub_227667070();
    v16 = v15;
    v17 = COERCE_DOUBLE(sub_227667030());
    if ((v18 & 1) == 0)
    {
      v19 = 0xEA00000000006567;
      if (v17 < -20391.945)
      {
        v20 = 0x6E6152776F6C6562;
        goto LABEL_8;
      }

      v20 = 0x6E615265766F6261;
      if (v17 > 1001.609)
      {
        goto LABEL_8;
      }
    }

    v19 = 0xE700000000000000;
    v20 = 0x65676E61526E69;
LABEL_8:
    v21 = *(v0 + 448);
    v22 = sub_227667090();
    v23 = *(sub_2276670E0() + 16);

    *(v0 + 80) = &type metadata for CreateScaffoldAnalyticsEvent;
    *(v0 + 88) = sub_2272D64B0();
    v24 = swift_allocObject();
    *(v0 + 56) = v24;
    *(v24 + 16) = (v14 - v16) * 1000.0;
    *(v24 + 24) = v20;
    *(v24 + 32) = v19;
    *(v24 + 40) = v22;
    *(v24 + 48) = v23;
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  v25 = *(v0 + 600);
  sub_22766A630();
  v26 = sub_22766B380();
  v27 = sub_22766C8B0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_226E8E000, v26, v27, "Reporting scaffold creation event to AMP", v28, 2u);
    MEMORY[0x22AA9A450](v28, -1, -1);
  }

  v29 = *(v0 + 600);
  v30 = *(v0 + 584);
  v31 = *(v0 + 576);
  v32 = *(v0 + 440);

  v9(v29, v31);
  swift_beginAccess();
  v33 = swift_weakLoadStrong();
  if (v33)
  {
    sub_226E91B50(v33 + 56, v0 + 136);

    v34 = *__swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
    swift_beginAccess();
    sub_226F9B220(v34 + 280, v0 + 176);
    v35 = *(v0 + 568);
    if (*(v0 + 200))
    {
      sub_226F19770((v0 + 176), v0 + 216);
      sub_226E91B50(v0 + 216, v0 + 256);
      v36 = swift_allocObject();
      sub_226F19770((v0 + 256), v36 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
      sub_227669280();
      __swift_destroy_boxed_opaque_existential_0((v0 + 216));
    }

    else
    {
      v55 = sub_2276636A0();
      sub_2272D6504(&qword_28139BCC0, MEMORY[0x277D500E0]);
      v56 = swift_allocError();
      (*(*(v55 - 8) + 104))(v57, *MEMORY[0x277D50048], v55);
      *(swift_allocObject() + 16) = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
      sub_227669280();
    }

    v58 = *(v0 + 568);
    v50 = swift_task_alloc();
    *(v0 + 616) = v50;
    *(v50 + 16) = "SeymourServices/WorkoutPlanAnalyticsReporter.swift";
    *(v50 + 24) = 50;
    *(v50 + 32) = 2;
    *(v50 + 40) = 120;
    *(v50 + 48) = v58;
    v59 = *(MEMORY[0x277D85A40] + 4);
    v60 = swift_task_alloc();
    *(v0 + 624) = v60;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
    *v60 = v0;
    v60[1] = sub_2272D141C;
    v53 = sub_2272D6564;
    v52 = (v0 + 96);
    goto LABEL_18;
  }

  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  sub_2272D63D8(v0 + 96, v0 + 296);
  v37 = *(v0 + 320);
  if (v37)
  {
    v38 = *(v0 + 520);
    v39 = *(v0 + 512);
    v75 = *(v0 + 544);
    v76 = *(v0 + 504);
    v40 = *(v0 + 488);
    v41 = *(v0 + 496);
    v42 = *(v0 + 480);
    v73 = *(v0 + 472);
    v44 = *(v0 + 456);
    v43 = *(v0 + 464);
    v45 = *(v0 + 448);
    v74 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_0((v0 + 296), v37);
    v46 = sub_227667100();
    (*(*(v46 - 8) + 16))(v41, v45, v46);
    swift_storeEnumTagMultiPayload();
    v47 = sub_2276651F0();
    (*(*(v47 - 8) + 56))(v42, 1, 1, v47);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9160, &qword_227675CE0);
    (*(*(v48 - 8) + 56))(v73, 1, 1, v48);
    v49 = sub_2276665E0();
    (*(*(v49 - 8) + 56))(v43, 1, 1, v49);

    sub_227667810();
    (*(v74 + 32))(v38, v37);
    (*(v39 + 8))(v38, v76);
    v50 = swift_task_alloc();
    *(v0 + 640) = v50;
    *(v50 + 16) = "SeymourServices/WorkoutPlanAnalyticsReporter.swift";
    *(v50 + 24) = 50;
    *(v50 + 32) = 2;
    *(v50 + 40) = 123;
    *(v50 + 48) = v75;
    v51 = *(MEMORY[0x277D85A40] + 4);
    v52 = swift_task_alloc();
    *(v0 + 648) = v52;
    *v52 = v0;
    v52[1] = sub_2272D1B98;
    v53 = sub_2272D6568;
    v54 = MEMORY[0x277D84F78] + 8;
LABEL_18:

    return MEMORY[0x2822008A0](v52, 0, 0, 0xD000000000000013, 0x8000000227693B00, v53, v50, v54);
  }

  sub_2272D6448(v0 + 96);
  sub_2272D6448(v0 + 296);
  v61 = *(v0 + 608);
  v62 = *(v0 + 600);
  v63 = *(v0 + 592);
  v64 = *(v0 + 568);
  v65 = *(v0 + 544);
  v66 = *(v0 + 520);
  v67 = *(v0 + 496);
  v69 = *(v0 + 472);
  v68 = *(v0 + 480);
  v70 = *(v0 + 464);

  v71 = *(v0 + 8);

  return v71();
}

uint64_t sub_2272D141C()
{
  v2 = *v1;
  v3 = (*v1)[78];
  v4 = (*v1)[77];
  v7 = *v1;
  (*v1)[79] = v0;

  if (v0)
  {
    v5 = sub_2272D1930;
  }

  else
  {
    (*(v2[70] + 8))(v2[71], v2[69]);
    __swift_destroy_boxed_opaque_existential_0(v2 + 17);
    v5 = sub_2272D1578;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2272D1578()
{
  sub_2272D63D8((v0 + 12), (v0 + 37));
  v1 = v0[40];
  if (v1)
  {
    v2 = v0[65];
    v3 = v0[64];
    v32 = v0[68];
    v33 = v0[63];
    v4 = v0[61];
    v5 = v0[62];
    v6 = v0[60];
    v30 = v0[59];
    v8 = v0[57];
    v7 = v0[58];
    v9 = v0[56];
    v31 = v0[41];
    __swift_project_boxed_opaque_existential_0(v0 + 37, v1);
    v10 = sub_227667100();
    (*(*(v10 - 8) + 16))(v5, v9, v10);
    swift_storeEnumTagMultiPayload();
    v11 = sub_2276651F0();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9160, &qword_227675CE0);
    (*(*(v12 - 8) + 56))(v30, 1, 1, v12);
    v13 = sub_2276665E0();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);

    sub_227667810();
    (*(v31 + 32))(v2, v1);
    (*(v3 + 8))(v2, v33);
    v14 = swift_task_alloc();
    v0[80] = v14;
    *(v14 + 16) = "SeymourServices/WorkoutPlanAnalyticsReporter.swift";
    *(v14 + 24) = 50;
    *(v14 + 32) = 2;
    *(v14 + 40) = 123;
    *(v14 + 48) = v32;
    v15 = *(MEMORY[0x277D85A40] + 4);
    v16 = swift_task_alloc();
    v0[81] = v16;
    *v16 = v0;
    v16[1] = sub_2272D1B98;
    v17 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v16, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2272D6568, v14, v17);
  }

  else
  {
    sub_2272D6448((v0 + 12));
    sub_2272D6448((v0 + 37));
    v18 = v0[76];
    v19 = v0[75];
    v20 = v0[74];
    v21 = v0[71];
    v22 = v0[68];
    v23 = v0[65];
    v24 = v0[62];
    v26 = v0[59];
    v25 = v0[60];
    v27 = v0[58];

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_2272D1930()
{
  v31 = v0;
  (*(v0[70] + 8))(v0[71], v0[69]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v1 = v0[79];
  v2 = v0[74];
  sub_22766A630();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v29 = v0[74];
    v6 = v0[73];
    v7 = v0[72];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = v0[51];
    v11 = MEMORY[0x22AA995D0](v0[52], v0[53]);
    v13 = sub_226E97AE8(v11, v12, &v30);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v4, v5, "Could not report scaffold creation event to AMP due to error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v6 + 8))(v29, v7);
  }

  else
  {
    v14 = v0[74];
    v15 = v0[73];
    v16 = v0[72];

    (*(v15 + 8))(v14, v16);
  }

  v17 = v0[76];
  v18 = v0[75];
  v19 = v0[74];
  v20 = v0[71];
  v21 = v0[68];
  v22 = v0[65];
  v23 = v0[62];
  v25 = v0[59];
  v24 = v0[60];
  v26 = v0[58];

  v27 = v0[1];

  return v27();
}

uint64_t sub_2272D1B98()
{
  v2 = *v1;
  v3 = (*v1)[81];
  v4 = (*v1)[80];
  v7 = *v1;
  (*v1)[82] = v0;

  if (v0)
  {
    v5 = sub_2272D1DE4;
  }

  else
  {
    (*(v2[67] + 8))(v2[68], v2[66]);
    __swift_destroy_boxed_opaque_existential_0(v2 + 37);
    v5 = sub_2272D1CF4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2272D1CF4()
{
  sub_2272D6448((v0 + 12));
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[71];
  v5 = v0[68];
  v6 = v0[65];
  v7 = v0[62];
  v9 = v0[59];
  v8 = v0[60];
  v10 = v0[58];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2272D1DE4()
{
  v31 = v0;
  (*(v0[67] + 8))(v0[68], v0[66]);
  sub_2272D6448((v0 + 12));
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  v1 = v0[82];
  v2 = v0[74];
  sub_22766A630();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v29 = v0[74];
    v6 = v0[73];
    v7 = v0[72];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = v0[51];
    v11 = MEMORY[0x22AA995D0](v0[52], v0[53]);
    v13 = sub_226E97AE8(v11, v12, &v30);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v4, v5, "Could not report scaffold creation event to AMP due to error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v6 + 8))(v29, v7);
  }

  else
  {
    v14 = v0[74];
    v15 = v0[73];
    v16 = v0[72];

    (*(v15 + 8))(v14, v16);
  }

  v17 = v0[76];
  v18 = v0[75];
  v19 = v0[74];
  v20 = v0[71];
  v21 = v0[68];
  v22 = v0[65];
  v23 = v0[62];
  v25 = v0[59];
  v24 = v0[60];
  v26 = v0[58];

  v27 = v0[1];

  return v27();
}

uint64_t sub_2272D2054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[56] = a5;
  v6[57] = a6;
  v6[55] = a4;
  v7 = *(*(sub_227664D30() - 8) + 64) + 15;
  v6[58] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9138, &unk_227675CC0) - 8) + 64) + 15;
  v6[59] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9140, &unk_22767F4E0) - 8) + 64) + 15;
  v6[60] = swift_task_alloc();
  v10 = sub_2276685D0();
  v6[61] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[62] = swift_task_alloc();
  v12 = sub_227667830();
  v6[63] = v12;
  v13 = *(v12 - 8);
  v6[64] = v13;
  v14 = *(v13 + 64) + 15;
  v6[65] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v6[66] = v15;
  v16 = *(v15 - 8);
  v6[67] = v16;
  v17 = *(v16 + 64) + 15;
  v6[68] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9128, &unk_22767F4F0);
  v6[69] = v18;
  v19 = *(v18 - 8);
  v6[70] = v19;
  v20 = *(v19 + 64) + 15;
  v6[71] = swift_task_alloc();
  v21 = sub_227664EC0();
  v6[72] = v21;
  v22 = *(v21 - 8);
  v6[73] = v22;
  v23 = *(v22 + 64) + 15;
  v6[74] = swift_task_alloc();
  v6[75] = swift_task_alloc();
  v24 = sub_22766B390();
  v6[76] = v24;
  v25 = *(v24 - 8);
  v6[77] = v25;
  v26 = *(v25 + 64) + 15;
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v6[80] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272D2390, 0, 0);
}

uint64_t sub_2272D2390()
{
  v106 = v0;
  v1 = *(v0 + 640);
  v2 = *(v0 + 600);
  v3 = *(v0 + 584);
  v4 = *(v0 + 576);
  v5 = *(v0 + 440);
  sub_22766A630();
  v6 = *(v3 + 16);
  *(v0 + 648) = v6;
  *(v0 + 656) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 640);
  v11 = *(v0 + 616);
  v12 = *(v0 + 608);
  v13 = *(v0 + 600);
  v14 = *(v0 + 584);
  v15 = *(v0 + 576);
  if (v9)
  {
    v101 = *(v0 + 608);
    v16 = swift_slowAlloc();
    v94 = v8;
    v17 = swift_slowAlloc();
    v105 = v17;
    *v16 = 136315138;
    v18 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210]);
    v19 = MEMORY[0x22AA995D0](v15, v18);
    v97 = v10;
    v21 = v20;
    (*(v14 + 8))(v13, v15);
    v22 = sub_226E97AE8(v19, v21, &v105);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_226E8E000, v7, v94, "Reporting plan creation error %s to AMP", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA9A450](v17, -1, -1);
    MEMORY[0x22AA9A450](v16, -1, -1);

    (*(v11 + 8))(v97, v101);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
  }

  v23 = *(v0 + 448);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 56, v0 + 56);

    v25 = *__swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    swift_beginAccess();
    sub_226F9B220(v25 + 280, v0 + 96);
    v26 = *(v0 + 568);
    if (*(v0 + 120))
    {
      sub_226F19770((v0 + 96), v0 + 136);
      sub_226E91B50(v0 + 136, v0 + 176);
      v27 = swift_allocObject();
      sub_226F19770((v0 + 176), v27 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
      sub_227669280();
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    }

    else
    {
      v46 = sub_2276636A0();
      sub_2272D6504(&qword_28139BCC0, MEMORY[0x277D500E0]);
      v47 = swift_allocError();
      (*(*(v46 - 8) + 104))(v48, *MEMORY[0x277D50048], v46);
      *(swift_allocObject() + 16) = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
      sub_227669280();
    }

    v49 = *(v0 + 568);
    v41 = swift_task_alloc();
    *(v0 + 664) = v41;
    *(v41 + 16) = "SeymourServices/WorkoutPlanAnalyticsReporter.swift";
    *(v41 + 24) = 50;
    *(v41 + 32) = 2;
    *(v41 + 40) = 207;
    *(v41 + 48) = v49;
    v50 = *(MEMORY[0x277D85A40] + 4);
    v51 = swift_task_alloc();
    *(v0 + 672) = v51;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
    *v51 = v0;
    v51[1] = sub_2272D2E68;
    v44 = sub_2272D6564;
    v43 = (v0 + 16);
    goto LABEL_11;
  }

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  sub_2272D63D8(v0 + 16, v0 + 296);
  v28 = *(v0 + 320);
  if (v28)
  {
    v29 = *(v0 + 520);
    v30 = *(v0 + 512);
    v98 = *(v0 + 544);
    v102 = *(v0 + 504);
    v31 = *(v0 + 488);
    v32 = *(v0 + 496);
    v34 = *(v0 + 472);
    v33 = *(v0 + 480);
    v35 = *(v0 + 456);
    v36 = *(v0 + 464);
    v95 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_0((v0 + 296), v28);
    v37 = sub_227664CE0();
    (*(*(v37 - 8) + 16))(v32, v35, v37);
    swift_storeEnumTagMultiPayload();
    v38 = sub_2276651F0();
    (*(*(v38 - 8) + 56))(v33, 1, 1, v38);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9160, &qword_227675CE0);
    (*(*(v39 - 8) + 56))(v34, 1, 1, v39);
    v40 = sub_2276665E0();
    (*(*(v40 - 8) + 56))(v36, 1, 1, v40);
    sub_227667810();
    (*(v95 + 32))(v29, v28);
    (*(v30 + 8))(v29, v102);
    v41 = swift_task_alloc();
    *(v0 + 688) = v41;
    *(v41 + 16) = "SeymourServices/WorkoutPlanAnalyticsReporter.swift";
    *(v41 + 24) = 50;
    *(v41 + 32) = 2;
    *(v41 + 40) = 210;
    *(v41 + 48) = v98;
    v42 = *(MEMORY[0x277D85A40] + 4);
    v43 = swift_task_alloc();
    *(v0 + 696) = v43;
    *v43 = v0;
    v43[1] = sub_2272D3B34;
    v44 = sub_2272D6568;
    v45 = MEMORY[0x277D84F78] + 8;
LABEL_11:

    return MEMORY[0x2822008A0](v43, 0, 0, 0xD000000000000013, 0x8000000227693B00, v44, v41, v45);
  }

  sub_2272D6448(v0 + 16);
  sub_2272D6448(v0 + 296);
  v52 = *(v0 + 656);
  v53 = *(v0 + 648);
  v54 = *(v0 + 632);
  v55 = *(v0 + 592);
  v56 = *(v0 + 576);
  v57 = *(v0 + 440);
  sub_22766A630();
  v53(v55, v57, v56);
  v58 = sub_22766B380();
  v59 = sub_22766C8B0();
  v60 = os_log_type_enabled(v58, v59);
  v61 = *(v0 + 632);
  v62 = *(v0 + 616);
  v63 = *(v0 + 608);
  v64 = *(v0 + 592);
  v65 = *(v0 + 584);
  v66 = *(v0 + 576);
  if (v60)
  {
    v103 = *(v0 + 608);
    v67 = swift_slowAlloc();
    v96 = v59;
    v68 = swift_slowAlloc();
    v105 = v68;
    *v67 = 136315138;
    v69 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210]);
    v70 = MEMORY[0x22AA995D0](v66, v69);
    v99 = v61;
    v72 = v71;
    (*(v65 + 8))(v64, v66);
    v73 = sub_226E97AE8(v70, v72, &v105);

    *(v67 + 4) = v73;
    _os_log_impl(&dword_226E8E000, v58, v96, "Reporting plan creation error %s to CoreAnalytics", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v68);
    MEMORY[0x22AA9A450](v68, -1, -1);
    MEMORY[0x22AA9A450](v67, -1, -1);

    (*(v62 + 8))(v99, v103);
  }

  else
  {

    (*(v65 + 8))(v64, v66);
    (*(v62 + 8))(v61, v63);
  }

  v74 = *(v0 + 448);
  swift_beginAccess();
  v75 = swift_weakLoadStrong();
  if (v75)
  {
    v76 = *(v0 + 656);
    v77 = *(v0 + 648);
    v78 = *(v0 + 576);
    v79 = *(v0 + 440);
    sub_226E91B50(v75 + 16, v0 + 216);

    v80 = *(v0 + 248);
    __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
    *(v0 + 280) = type metadata accessor for CreatePlanFailureAnalyticsEvent();
    *(v0 + 288) = sub_2272D6504(&qword_27D7BC840, type metadata accessor for CreatePlanFailureAnalyticsEvent);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
    v77(boxed_opaque_existential_0, v79, v78);
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  }

  v82 = *(v0 + 640);
  v83 = *(v0 + 632);
  v84 = *(v0 + 624);
  v85 = *(v0 + 600);
  v86 = *(v0 + 592);
  v87 = *(v0 + 568);
  v88 = *(v0 + 544);
  v89 = *(v0 + 520);
  v90 = *(v0 + 496);
  v91 = *(v0 + 480);
  v100 = *(v0 + 472);
  v104 = *(v0 + 464);

  v92 = *(v0 + 8);

  return v92();
}

uint64_t sub_2272D2E68()
{
  v2 = *v1;
  v3 = (*v1)[84];
  v4 = (*v1)[83];
  v7 = *v1;
  (*v1)[85] = v0;

  if (v0)
  {
    v5 = sub_2272D361C;
  }

  else
  {
    (*(v2[70] + 8))(v2[71], v2[69]);
    __swift_destroy_boxed_opaque_existential_0(v2 + 7);
    v5 = sub_2272D2FC4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2272D2FC4()
{
  v69 = v0;
  sub_2272D63D8((v0 + 2), (v0 + 37));
  v1 = v0[40];
  if (v1)
  {
    v2 = v0[65];
    v3 = v0[64];
    v62 = v0[68];
    v65 = v0[63];
    v4 = v0[61];
    v5 = v0[62];
    v7 = v0[59];
    v6 = v0[60];
    v8 = v0[57];
    v9 = v0[58];
    v60 = v0[41];
    __swift_project_boxed_opaque_existential_0(v0 + 37, v1);
    v10 = sub_227664CE0();
    (*(*(v10 - 8) + 16))(v5, v8, v10);
    swift_storeEnumTagMultiPayload();
    v11 = sub_2276651F0();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9160, &qword_227675CE0);
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    v13 = sub_2276665E0();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    sub_227667810();
    (*(v60 + 32))(v2, v1);
    (*(v3 + 8))(v2, v65);
    v14 = swift_task_alloc();
    v0[86] = v14;
    *(v14 + 16) = "SeymourServices/WorkoutPlanAnalyticsReporter.swift";
    *(v14 + 24) = 50;
    *(v14 + 32) = 2;
    *(v14 + 40) = 210;
    *(v14 + 48) = v62;
    v15 = *(MEMORY[0x277D85A40] + 4);
    v16 = swift_task_alloc();
    v0[87] = v16;
    *v16 = v0;
    v16[1] = sub_2272D3B34;
    v17 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v16, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2272D6568, v14, v17);
  }

  else
  {
    sub_2272D6448((v0 + 2));
    sub_2272D6448((v0 + 37));
    v18 = v0[82];
    v19 = v0[81];
    v20 = v0[79];
    v21 = v0[74];
    v22 = v0[72];
    v23 = v0[55];
    sub_22766A630();
    v19(v21, v23, v22);
    v24 = sub_22766B380();
    v25 = sub_22766C8B0();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[79];
    v28 = v0[77];
    v29 = v0[76];
    v30 = v0[74];
    v31 = v0[73];
    v32 = v0[72];
    if (v26)
    {
      v66 = v0[76];
      v33 = swift_slowAlloc();
      v61 = v25;
      v34 = swift_slowAlloc();
      v68 = v34;
      *v33 = 136315138;
      v35 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210]);
      v36 = MEMORY[0x22AA995D0](v32, v35);
      v63 = v27;
      v38 = v37;
      (*(v31 + 8))(v30, v32);
      v39 = sub_226E97AE8(v36, v38, &v68);

      *(v33 + 4) = v39;
      _os_log_impl(&dword_226E8E000, v24, v61, "Reporting plan creation error %s to CoreAnalytics", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x22AA9A450](v34, -1, -1);
      MEMORY[0x22AA9A450](v33, -1, -1);

      (*(v28 + 8))(v63, v66);
    }

    else
    {

      (*(v31 + 8))(v30, v32);
      (*(v28 + 8))(v27, v29);
    }

    v40 = v0[56];
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v42 = v0[82];
      v43 = v0[81];
      v44 = v0[72];
      v45 = v0[55];
      sub_226E91B50(Strong + 16, (v0 + 27));

      v46 = v0[31];
      __swift_project_boxed_opaque_existential_0(v0 + 27, v0[30]);
      v0[35] = type metadata accessor for CreatePlanFailureAnalyticsEvent();
      v0[36] = sub_2272D6504(&qword_27D7BC840, type metadata accessor for CreatePlanFailureAnalyticsEvent);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 32);
      v43(boxed_opaque_existential_0, v45, v44);
      sub_227669B60();
      __swift_destroy_boxed_opaque_existential_0(v0 + 32);
      __swift_destroy_boxed_opaque_existential_0(v0 + 27);
    }

    v48 = v0[80];
    v49 = v0[79];
    v50 = v0[78];
    v51 = v0[75];
    v52 = v0[74];
    v53 = v0[71];
    v54 = v0[68];
    v55 = v0[65];
    v56 = v0[62];
    v57 = v0[60];
    v64 = v0[59];
    v67 = v0[58];

    v58 = v0[1];

    return v58();
  }
}

uint64_t sub_2272D361C()
{
  v66 = v0;
  (*(v0[70] + 8))(v0[71], v0[69]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[85];
  v2 = v0[78];
  sub_22766A630();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[77];
    v59 = v0[76];
    v62 = v0[78];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v65 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = v0[51];
    v10 = MEMORY[0x22AA995D0](v0[52], v0[53]);
    v12 = sub_226E97AE8(v10, v11, &v65);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v4, v5, "Could not report plan creation error to AMP due to error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    (*(v6 + 8))(v62, v59);
  }

  else
  {
    v13 = v0[78];
    v14 = v0[77];
    v15 = v0[76];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[82];
  v17 = v0[81];
  v18 = v0[79];
  v19 = v0[74];
  v20 = v0[72];
  v21 = v0[55];
  sub_22766A630();
  v17(v19, v21, v20);
  v22 = sub_22766B380();
  v23 = sub_22766C8B0();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[79];
  v26 = v0[77];
  v27 = v0[76];
  v28 = v0[74];
  v29 = v0[73];
  v30 = v0[72];
  if (v24)
  {
    v63 = v0[76];
    v31 = swift_slowAlloc();
    v58 = v23;
    v32 = swift_slowAlloc();
    v65 = v32;
    *v31 = 136315138;
    v33 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210]);
    v34 = MEMORY[0x22AA995D0](v30, v33);
    v60 = v25;
    v36 = v35;
    (*(v29 + 8))(v28, v30);
    v37 = sub_226E97AE8(v34, v36, &v65);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_226E8E000, v22, v58, "Reporting plan creation error %s to CoreAnalytics", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AA9A450](v32, -1, -1);
    MEMORY[0x22AA9A450](v31, -1, -1);

    (*(v26 + 8))(v60, v63);
  }

  else
  {

    (*(v29 + 8))(v28, v30);
    (*(v26 + 8))(v25, v27);
  }

  v38 = v0[56];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v40 = v0[82];
    v41 = v0[81];
    v42 = v0[72];
    v43 = v0[55];
    sub_226E91B50(Strong + 16, (v0 + 27));

    v44 = v0[31];
    __swift_project_boxed_opaque_existential_0(v0 + 27, v0[30]);
    v0[35] = type metadata accessor for CreatePlanFailureAnalyticsEvent();
    v0[36] = sub_2272D6504(&qword_27D7BC840, type metadata accessor for CreatePlanFailureAnalyticsEvent);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 32);
    v41(boxed_opaque_existential_0, v43, v42);
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0(v0 + 32);
    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  }

  v46 = v0[80];
  v47 = v0[79];
  v48 = v0[78];
  v49 = v0[75];
  v50 = v0[74];
  v51 = v0[71];
  v52 = v0[68];
  v53 = v0[65];
  v54 = v0[62];
  v55 = v0[60];
  v61 = v0[59];
  v64 = v0[58];

  v56 = v0[1];

  return v56();
}

uint64_t sub_2272D3B34()
{
  v2 = *v1;
  v3 = (*v1)[87];
  v4 = (*v1)[86];
  v7 = *v1;
  (*v1)[88] = v0;

  if (v0)
  {
    v5 = sub_2272D4030;
  }

  else
  {
    (*(v2[67] + 8))(v2[68], v2[66]);
    __swift_destroy_boxed_opaque_existential_0(v2 + 37);
    v5 = sub_2272D3C90;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2272D3C90()
{
  v49 = v0;
  sub_2272D6448((v0 + 2));
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[79];
  v4 = v0[74];
  v5 = v0[72];
  v6 = v0[55];
  sub_22766A630();
  v2(v4, v6, v5);
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[79];
  v11 = v0[77];
  v12 = v0[76];
  v13 = v0[74];
  v14 = v0[73];
  v15 = v0[72];
  if (v9)
  {
    v46 = v0[76];
    v16 = swift_slowAlloc();
    v43 = v8;
    v17 = swift_slowAlloc();
    v48 = v17;
    *v16 = 136315138;
    v18 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210]);
    v19 = MEMORY[0x22AA995D0](v15, v18);
    v44 = v10;
    v21 = v20;
    (*(v14 + 8))(v13, v15);
    v22 = sub_226E97AE8(v19, v21, &v48);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_226E8E000, v7, v43, "Reporting plan creation error %s to CoreAnalytics", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA9A450](v17, -1, -1);
    MEMORY[0x22AA9A450](v16, -1, -1);

    (*(v11 + 8))(v44, v46);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
  }

  v23 = v0[56];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = v0[82];
    v26 = v0[81];
    v27 = v0[72];
    v28 = v0[55];
    sub_226E91B50(Strong + 16, (v0 + 27));

    v29 = v0[31];
    __swift_project_boxed_opaque_existential_0(v0 + 27, v0[30]);
    v0[35] = type metadata accessor for CreatePlanFailureAnalyticsEvent();
    v0[36] = sub_2272D6504(&qword_27D7BC840, type metadata accessor for CreatePlanFailureAnalyticsEvent);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 32);
    v26(boxed_opaque_existential_0, v28, v27);
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0(v0 + 32);
    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  }

  v31 = v0[80];
  v32 = v0[79];
  v33 = v0[78];
  v34 = v0[75];
  v35 = v0[74];
  v36 = v0[71];
  v37 = v0[68];
  v38 = v0[65];
  v39 = v0[62];
  v40 = v0[60];
  v45 = v0[59];
  v47 = v0[58];

  v41 = v0[1];

  return v41();
}

uint64_t sub_2272D4030()
{
  v66 = v0;
  (*(v0[67] + 8))(v0[68], v0[66]);
  sub_2272D6448((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  v1 = v0[88];
  v2 = v0[78];
  sub_22766A630();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[77];
    v59 = v0[76];
    v62 = v0[78];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v65 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = v0[51];
    v10 = MEMORY[0x22AA995D0](v0[52], v0[53]);
    v12 = sub_226E97AE8(v10, v11, &v65);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v4, v5, "Could not report plan creation error to AMP due to error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    (*(v6 + 8))(v62, v59);
  }

  else
  {
    v13 = v0[78];
    v14 = v0[77];
    v15 = v0[76];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[82];
  v17 = v0[81];
  v18 = v0[79];
  v19 = v0[74];
  v20 = v0[72];
  v21 = v0[55];
  sub_22766A630();
  v17(v19, v21, v20);
  v22 = sub_22766B380();
  v23 = sub_22766C8B0();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[79];
  v26 = v0[77];
  v27 = v0[76];
  v28 = v0[74];
  v29 = v0[73];
  v30 = v0[72];
  if (v24)
  {
    v63 = v0[76];
    v31 = swift_slowAlloc();
    v58 = v23;
    v32 = swift_slowAlloc();
    v65 = v32;
    *v31 = 136315138;
    v33 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210]);
    v34 = MEMORY[0x22AA995D0](v30, v33);
    v60 = v25;
    v36 = v35;
    (*(v29 + 8))(v28, v30);
    v37 = sub_226E97AE8(v34, v36, &v65);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_226E8E000, v22, v58, "Reporting plan creation error %s to CoreAnalytics", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AA9A450](v32, -1, -1);
    MEMORY[0x22AA9A450](v31, -1, -1);

    (*(v26 + 8))(v60, v63);
  }

  else
  {

    (*(v29 + 8))(v28, v30);
    (*(v26 + 8))(v25, v27);
  }

  v38 = v0[56];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v40 = v0[82];
    v41 = v0[81];
    v42 = v0[72];
    v43 = v0[55];
    sub_226E91B50(Strong + 16, (v0 + 27));

    v44 = v0[31];
    __swift_project_boxed_opaque_existential_0(v0 + 27, v0[30]);
    v0[35] = type metadata accessor for CreatePlanFailureAnalyticsEvent();
    v0[36] = sub_2272D6504(&qword_27D7BC840, type metadata accessor for CreatePlanFailureAnalyticsEvent);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 32);
    v41(boxed_opaque_existential_0, v43, v42);
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0(v0 + 32);
    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  }

  v46 = v0[80];
  v47 = v0[79];
  v48 = v0[78];
  v49 = v0[75];
  v50 = v0[74];
  v51 = v0[71];
  v52 = v0[68];
  v53 = v0[65];
  v54 = v0[62];
  v55 = v0[60];
  v61 = v0[59];
  v64 = v0[58];

  v56 = v0[1];

  return v56();
}

uint64_t sub_2272D4550(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 480) = a9;
  *(v9 + 464) = a2;
  *(v9 + 472) = a3;
  *(v9 + 456) = a1;
  *(v9 + 440) = a7;
  *(v9 + 448) = a8;
  v10 = sub_22766B390();
  *(v9 + 488) = v10;
  v11 = *(v10 - 8);
  *(v9 + 496) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 504) = swift_task_alloc();
  *(v9 + 512) = swift_task_alloc();
  v13 = *(*(sub_227664D30() - 8) + 64) + 15;
  *(v9 + 520) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9138, &unk_227675CC0) - 8) + 64) + 15;
  *(v9 + 528) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9140, &unk_22767F4E0) - 8) + 64) + 15;
  *(v9 + 536) = swift_task_alloc();
  v16 = sub_2276685D0();
  *(v9 + 544) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v9 + 552) = swift_task_alloc();
  v18 = sub_227667830();
  *(v9 + 560) = v18;
  v19 = *(v18 - 8);
  *(v9 + 568) = v19;
  v20 = *(v19 + 64) + 15;
  *(v9 + 576) = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  *(v9 + 584) = v21;
  v22 = *(v21 - 8);
  *(v9 + 592) = v22;
  v23 = *(v22 + 64) + 15;
  *(v9 + 600) = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9128, &unk_22767F4F0);
  *(v9 + 608) = v24;
  v25 = *(v24 - 8);
  *(v9 + 616) = v25;
  v26 = *(v25 + 64) + 15;
  *(v9 + 624) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272D4820, 0, 0);
}

uint64_t sub_2272D4820()
{
  v1 = *(v0 + 440);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 56, v0 + 56);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    swift_beginAccess();
    sub_226F9B220(v3 + 280, v0 + 96);
    v4 = *(v0 + 624);
    if (*(v0 + 120))
    {
      sub_226F19770((v0 + 96), v0 + 136);
      sub_226E91B50(v0 + 136, v0 + 176);
      v5 = swift_allocObject();
      sub_226F19770((v0 + 176), v5 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
      sub_227669280();
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    }

    else
    {
      v24 = sub_2276636A0();
      sub_2272D6504(&qword_28139BCC0, MEMORY[0x277D500E0]);
      v25 = swift_allocError();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D50048], v24);
      *(swift_allocObject() + 16) = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
      sub_227669280();
    }

    v27 = *(v0 + 624);
    v19 = swift_task_alloc();
    *(v0 + 632) = v19;
    *(v19 + 16) = "SeymourServices/WorkoutPlanAnalyticsReporter.swift";
    *(v19 + 24) = 50;
    *(v19 + 32) = 2;
    *(v19 + 40) = 260;
    *(v19 + 48) = v27;
    v28 = *(MEMORY[0x277D85A40] + 4);
    v29 = swift_task_alloc();
    *(v0 + 640) = v29;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
    *v29 = v0;
    v29[1] = sub_2272D4FE8;
    v22 = sub_2272D636C;
    v21 = (v0 + 16);
    goto LABEL_8;
  }

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  sub_2272D63D8(v0 + 16, v0 + 296);
  v6 = *(v0 + 320);
  if (v6)
  {
    v7 = *(v0 + 576);
    v8 = *(v0 + 568);
    v57 = *(v0 + 600);
    v58 = *(v0 + 560);
    v9 = *(v0 + 552);
    v10 = *(v0 + 544);
    v11 = *(v0 + 536);
    v12 = *(v0 + 528);
    v13 = *(v0 + 520);
    v14 = *(v0 + 448);
    v56 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_0((v0 + 296), v6);
    v15 = sub_227664CE0();
    (*(*(v15 - 8) + 16))(v9, v14, v15);
    swift_storeEnumTagMultiPayload();
    v16 = sub_2276651F0();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9160, &qword_227675CE0);
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
    v18 = sub_2276665E0();
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    sub_227667810();
    (*(v56 + 32))(v7, v6);
    (*(v8 + 8))(v7, v58);
    v19 = swift_task_alloc();
    *(v0 + 656) = v19;
    *(v19 + 16) = "SeymourServices/WorkoutPlanAnalyticsReporter.swift";
    *(v19 + 24) = 50;
    *(v19 + 32) = 2;
    *(v19 + 40) = 263;
    *(v19 + 48) = v57;
    v20 = *(MEMORY[0x277D85A40] + 4);
    v21 = swift_task_alloc();
    *(v0 + 664) = v21;
    *v21 = v0;
    v21[1] = sub_2272D5A14;
    v22 = sub_226EC4D24;
    v23 = MEMORY[0x277D84F78] + 8;
LABEL_8:

    return MEMORY[0x2822008A0](v21, 0, 0, 0xD000000000000013, 0x8000000227693B00, v22, v19, v23);
  }

  sub_2272D6448(v0 + 16);
  sub_2272D6448(v0 + 296);
  v30 = *(v0 + 512);
  sub_22766A630();
  v31 = sub_22766B380();
  v32 = sub_22766C8B0();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_226E8E000, v31, v32, "Reporting plan creation event to CoreAnalytics", v33, 2u);
    MEMORY[0x22AA9A450](v33, -1, -1);
  }

  v34 = *(v0 + 512);
  v35 = *(v0 + 488);
  v36 = *(v0 + 496);
  v37 = *(v0 + 440);

  (*(v36 + 8))(v34, v35);
  swift_beginAccess();
  v38 = swift_weakLoadStrong();
  if (v38)
  {
    v39 = *(v0 + 480);
    v41 = *(v0 + 464);
    v40 = *(v0 + 472);
    v42 = *(v0 + 456);
    sub_226E91B50(v38 + 16, v0 + 216);

    v43 = *(v0 + 248);
    __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
    v44 = *(sub_227665BE0() + 16);

    *(v0 + 280) = &type metadata for CreatePlanAnalyticsEvent;
    *(v0 + 288) = sub_2272D6384();
    *(v0 + 256) = (v42 - v41) * 1000.0;
    *(v0 + 264) = v40;
    *(v0 + 272) = v44;
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  }

  v45 = *(v0 + 624);
  v46 = *(v0 + 600);
  v47 = *(v0 + 576);
  v48 = *(v0 + 552);
  v49 = *(v0 + 536);
  v50 = *(v0 + 528);
  v51 = *(v0 + 520);
  v53 = *(v0 + 504);
  v52 = *(v0 + 512);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_2272D4FE8()
{
  v2 = *v1;
  v3 = (*v1)[80];
  v4 = (*v1)[79];
  v7 = *v1;
  (*v1)[81] = v0;

  if (v0)
  {
    v5 = sub_2272D565C;
  }

  else
  {
    (*(v2[77] + 8))(v2[78], v2[76]);
    __swift_destroy_boxed_opaque_existential_0(v2 + 7);
    v5 = sub_2272D5144;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2272D5144()
{
  sub_2272D63D8(v0 + 16, v0 + 296);
  v1 = *(v0 + 320);
  if (v1)
  {
    v2 = *(v0 + 576);
    v3 = *(v0 + 568);
    v45 = *(v0 + 600);
    v46 = *(v0 + 560);
    v4 = *(v0 + 552);
    v5 = *(v0 + 544);
    v6 = *(v0 + 536);
    v7 = *(v0 + 528);
    v8 = *(v0 + 520);
    v9 = *(v0 + 448);
    v44 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_0((v0 + 296), v1);
    v10 = sub_227664CE0();
    (*(*(v10 - 8) + 16))(v4, v9, v10);
    swift_storeEnumTagMultiPayload();
    v11 = sub_2276651F0();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9160, &qword_227675CE0);
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    v13 = sub_2276665E0();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    sub_227667810();
    (*(v44 + 32))(v2, v1);
    (*(v3 + 8))(v2, v46);
    v14 = swift_task_alloc();
    *(v0 + 656) = v14;
    *(v14 + 16) = "SeymourServices/WorkoutPlanAnalyticsReporter.swift";
    *(v14 + 24) = 50;
    *(v14 + 32) = 2;
    *(v14 + 40) = 263;
    *(v14 + 48) = v45;
    v15 = *(MEMORY[0x277D85A40] + 4);
    v16 = swift_task_alloc();
    *(v0 + 664) = v16;
    *v16 = v0;
    v16[1] = sub_2272D5A14;
    v17 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v16, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_226EC4D24, v14, v17);
  }

  else
  {
    sub_2272D6448(v0 + 16);
    sub_2272D6448(v0 + 296);
    v18 = *(v0 + 512);
    sub_22766A630();
    v19 = sub_22766B380();
    v20 = sub_22766C8B0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_226E8E000, v19, v20, "Reporting plan creation event to CoreAnalytics", v21, 2u);
      MEMORY[0x22AA9A450](v21, -1, -1);
    }

    v22 = *(v0 + 512);
    v23 = *(v0 + 488);
    v24 = *(v0 + 496);
    v25 = *(v0 + 440);

    (*(v24 + 8))(v22, v23);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v27 = *(v0 + 480);
      v29 = *(v0 + 464);
      v28 = *(v0 + 472);
      v30 = *(v0 + 456);
      sub_226E91B50(Strong + 16, v0 + 216);

      v31 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
      v32 = *(sub_227665BE0() + 16);

      *(v0 + 280) = &type metadata for CreatePlanAnalyticsEvent;
      *(v0 + 288) = sub_2272D6384();
      *(v0 + 256) = (v30 - v29) * 1000.0;
      *(v0 + 264) = v28;
      *(v0 + 272) = v32;
      sub_227669B60();
      __swift_destroy_boxed_opaque_existential_0((v0 + 256));
      __swift_destroy_boxed_opaque_existential_0((v0 + 216));
    }

    v33 = *(v0 + 624);
    v34 = *(v0 + 600);
    v35 = *(v0 + 576);
    v36 = *(v0 + 552);
    v37 = *(v0 + 536);
    v38 = *(v0 + 528);
    v39 = *(v0 + 520);
    v41 = *(v0 + 504);
    v40 = *(v0 + 512);

    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t sub_2272D565C()
{
  v45 = v0;
  (*(*(v0 + 616) + 8))(*(v0 + 624), *(v0 + 608));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v1 = *(v0 + 648);
  v2 = *(v0 + 504);
  sub_22766A630();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 496);
    v43 = *(v0 + 504);
    v7 = *(v0 + 488);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v44 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 408);
    v11 = MEMORY[0x22AA995D0](*(v0 + 416), *(v0 + 424));
    v13 = sub_226E97AE8(v11, v12, &v44);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v4, v5, "Could not report plan creation event to AMP due to error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v6 + 8))(v43, v7);
  }

  else
  {
    v15 = *(v0 + 496);
    v14 = *(v0 + 504);
    v16 = *(v0 + 488);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 512);
  sub_22766A630();
  v18 = sub_22766B380();
  v19 = sub_22766C8B0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_226E8E000, v18, v19, "Reporting plan creation event to CoreAnalytics", v20, 2u);
    MEMORY[0x22AA9A450](v20, -1, -1);
  }

  v21 = *(v0 + 512);
  v22 = *(v0 + 488);
  v23 = *(v0 + 496);
  v24 = *(v0 + 440);

  (*(v23 + 8))(v21, v22);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = *(v0 + 480);
    v28 = *(v0 + 464);
    v27 = *(v0 + 472);
    v29 = *(v0 + 456);
    sub_226E91B50(Strong + 16, v0 + 216);

    v30 = *(v0 + 248);
    __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
    v31 = *(sub_227665BE0() + 16);

    *(v0 + 280) = &type metadata for CreatePlanAnalyticsEvent;
    *(v0 + 288) = sub_2272D6384();
    *(v0 + 256) = (v29 - v28) * 1000.0;
    *(v0 + 264) = v27;
    *(v0 + 272) = v31;
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  }

  v32 = *(v0 + 624);
  v33 = *(v0 + 600);
  v34 = *(v0 + 576);
  v35 = *(v0 + 552);
  v36 = *(v0 + 536);
  v37 = *(v0 + 528);
  v38 = *(v0 + 520);
  v40 = *(v0 + 504);
  v39 = *(v0 + 512);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_2272D5A14()
{
  v2 = *v1;
  v3 = (*v1)[83];
  v4 = (*v1)[82];
  v7 = *v1;
  (*v1)[84] = v0;

  if (v0)
  {
    v5 = sub_2272D5DB0;
  }

  else
  {
    (*(v2[74] + 8))(v2[75], v2[73]);
    __swift_destroy_boxed_opaque_existential_0(v2 + 37);
    v5 = sub_2272D5B70;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2272D5B70()
{
  sub_2272D6448(v0 + 16);
  v1 = *(v0 + 512);
  sub_22766A630();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Reporting plan creation event to CoreAnalytics", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v5 = *(v0 + 512);
  v6 = *(v0 + 488);
  v7 = *(v0 + 496);
  v8 = *(v0 + 440);

  (*(v7 + 8))(v5, v6);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(v0 + 480);
    v12 = *(v0 + 464);
    v11 = *(v0 + 472);
    v13 = *(v0 + 456);
    sub_226E91B50(Strong + 16, v0 + 216);

    v14 = *(v0 + 248);
    __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
    v15 = *(sub_227665BE0() + 16);

    *(v0 + 280) = &type metadata for CreatePlanAnalyticsEvent;
    *(v0 + 288) = sub_2272D6384();
    *(v0 + 256) = (v13 - v12) * 1000.0;
    *(v0 + 264) = v11;
    *(v0 + 272) = v15;
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  }

  v16 = *(v0 + 624);
  v17 = *(v0 + 600);
  v18 = *(v0 + 576);
  v19 = *(v0 + 552);
  v20 = *(v0 + 536);
  v21 = *(v0 + 528);
  v22 = *(v0 + 520);
  v24 = *(v0 + 504);
  v23 = *(v0 + 512);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2272D5DB0()
{
  v45 = v0;
  (*(*(v0 + 592) + 8))(*(v0 + 600), *(v0 + 584));
  sub_2272D6448(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 296));
  v1 = *(v0 + 672);
  v2 = *(v0 + 504);
  sub_22766A630();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 496);
    v43 = *(v0 + 504);
    v7 = *(v0 + 488);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v44 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 408);
    v11 = MEMORY[0x22AA995D0](*(v0 + 416), *(v0 + 424));
    v13 = sub_226E97AE8(v11, v12, &v44);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v4, v5, "Could not report plan creation event to AMP due to error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v6 + 8))(v43, v7);
  }

  else
  {
    v15 = *(v0 + 496);
    v14 = *(v0 + 504);
    v16 = *(v0 + 488);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 512);
  sub_22766A630();
  v18 = sub_22766B380();
  v19 = sub_22766C8B0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_226E8E000, v18, v19, "Reporting plan creation event to CoreAnalytics", v20, 2u);
    MEMORY[0x22AA9A450](v20, -1, -1);
  }

  v21 = *(v0 + 512);
  v22 = *(v0 + 488);
  v23 = *(v0 + 496);
  v24 = *(v0 + 440);

  (*(v23 + 8))(v21, v22);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = *(v0 + 480);
    v28 = *(v0 + 464);
    v27 = *(v0 + 472);
    v29 = *(v0 + 456);
    sub_226E91B50(Strong + 16, v0 + 216);

    v30 = *(v0 + 248);
    __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
    v31 = *(sub_227665BE0() + 16);

    *(v0 + 280) = &type metadata for CreatePlanAnalyticsEvent;
    *(v0 + 288) = sub_2272D6384();
    *(v0 + 256) = (v29 - v28) * 1000.0;
    *(v0 + 264) = v27;
    *(v0 + 272) = v31;
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  }

  v32 = *(v0 + 624);
  v33 = *(v0 + 600);
  v34 = *(v0 + 576);
  v35 = *(v0 + 552);
  v36 = *(v0 + 536);
  v37 = *(v0 + 528);
  v38 = *(v0 + 520);
  v40 = *(v0 + 504);
  v39 = *(v0 + 512);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_2272D6170()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = OBJC_IVAR____TtC15SeymourServices28WorkoutPlanAnalyticsReporter__enableWorkoutPlanAnalyticsReporter;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanAnalyticsReporter()
{
  result = qword_28139DE98;
  if (!qword_28139DE98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2272D627C()
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_2272D6318()
{
  result = qword_27D7BC820;
  if (!qword_27D7BC820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC820);
  }

  return result;
}

unint64_t sub_2272D6384()
{
  result = qword_27D7BC830;
  if (!qword_27D7BC830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC830);
  }

  return result;
}

uint64_t sub_2272D63D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC838, &unk_22767F500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2272D6448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC838, &unk_22767F500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2272D64B0()
{
  result = qword_27D7BC848;
  if (!qword_27D7BC848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC848);
  }

  return result;
}

uint64_t sub_2272D6504(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2272D656C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 16);
  sub_22766D370();
  sub_22766C100();
  v6 = sub_227669C30();
  MEMORY[0x22AA996B0](v6);
  sub_2273926B4(v8, v3);
  sub_2273923B0(v8, v4);
  return sub_22766D3F0();
}

uint64_t sub_2272D65F8(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[3];
  v6 = v1[4];
  v7 = *(v1 + 16);
  sub_22766C100();
  v8 = sub_227669C30();
  MEMORY[0x22AA996B0](v8);
  sub_2273926B4(a1, v5);

  return sub_2273923B0(a1, v6);
}

uint64_t sub_2272D6664()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 16);
  sub_22766D370();
  sub_22766C100();
  v6 = sub_227669C30();
  MEMORY[0x22AA996B0](v6);
  sub_2273926B4(v8, v3);
  sub_2273923B0(v8, v4);
  return sub_22766D3F0();
}

uint64_t sub_2272D66EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a2 + 16);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v8 && (sub_22766D190() & 1) == 0)
  {
    return 0;
  }

  v9 = sub_227669C30();
  if (v9 != sub_227669C30() || (sub_2270340D0(v4, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_227034388(v3, v6);
}

unint64_t sub_2272D67B4()
{
  result = qword_27D7BC858;
  if (!qword_27D7BC858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC858);
  }

  return result;
}

uint64_t sub_2272D6818(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_226F1ED90(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_226F1ED90((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_226EB526C(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_2272D6A40(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_227662750();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v22 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v22 - v14;
  v16 = [a1 identifier];
  if (!v16)
  {
    goto LABEL_6;
  }

  v22[3] = a2;
  v17 = v16;
  v22[1] = sub_22766C000();

  v18 = [a1 completedDate];
  if (!v18)
  {

LABEL_6:
    v20 = sub_227664DD0();
    sub_2272D74B8(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51028], v20);
    swift_willThrow();

    return;
  }

  v19 = v18;
  sub_227662710();

  (*(v6 + 32))(v15, v13, v5);
  sub_2274B47BC([a1 selectedModalityIdentifiers]);
  if (v2)
  {
    (*(v6 + 8))(v15, v5);
  }

  else
  {
    (*(v6 + 16))(v10, v15, v5);
    sub_227666610();

    (*(v6 + 8))(v15, v5);
  }
}

void sub_2272D6D20(void *a1, uint64_t a2)
{
  v5 = sub_227662750();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227666620();
  v10 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227666630();
  v11 = sub_2276626A0();
  (*(v6 + 8))(v9, v5);
  [a1 setCompletedDate_];

  v12 = sub_227666640();
  v13 = sub_2272D6818(v12);

  v14 = sub_226F3D770(v13);

  v15 = sub_227648160(a2, v14);

  if (!v2)
  {
    [a1 setSelectedModalityIdentifiers_];
  }
}

size_t static OnboardingSurveyResult.representativeSamples()()
{
  v31 = sub_227662750();
  v27 = *(v31 - 8);
  v0 = *(v27 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC860, &qword_22767F5E8);
  v2 = *(v29 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v29);
  v5 = v23 - v4;
  v28 = sub_227666650();
  v6 = *(v28 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v28);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766C090();
  v11 = sub_227662630();
  v12 = sub_22766C590();
  v40 = v11;
  v41[0] = v10;
  v41[1] = v41;
  v41[2] = &v40;
  v39 = v12;
  v41[3] = &v39;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC868, &qword_22767F5F0);
  v33 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v34 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v35 = sub_226F5BF60(&unk_27D7BC870, &qword_27D7BC868, &qword_22767F5F0);
  v13 = sub_2276638E0();

  v14 = *(v13 + 16);
  if (v14)
  {
    v32 = MEMORY[0x277D84F90];
    result = sub_226F200E8(0, v14, 0);
    v16 = 0;
    v17 = v32;
    v25 = v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v24 = (v27 + 16);
    v27 = v6;
    v23[1] = v6 + 32;
    v26 = v13;
    while (v16 < *(v13 + 16))
    {
      sub_2272D7388(v25 + *(v2 + 72) * v16, v5);
      v18 = *v5;
      v19 = *(v5 + 1);
      v20 = *&v5[*(v29 + 64)];
      (*v24)(v30, &v5[*(v29 + 48)], v31);

      sub_227666610();
      sub_2272D73F8(v5);
      v32 = v17;
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_226F200E8(v21 > 1, v22 + 1, 1);
        v17 = v32;
      }

      ++v16;
      *(v17 + 16) = v22 + 1;
      result = (*(v27 + 32))(v17 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22, v9, v28);
      v13 = v26;
      if (v14 == v16)
      {

        return v17;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2272D7388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC860, &qword_22767F5E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2272D73F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC860, &qword_22767F5E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2272D7460(uint64_t a1)
{
  result = sub_2272D74B8(&qword_2813A56A0, MEMORY[0x277D52498]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2272D74B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2272D7558(int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v54 = a3;
  v55 = a4;
  v56 = a2;
  v5 = v4;
  v7 = sub_22766B390();
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v50[-v12];
  v14 = sub_22766A8A0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v50[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(v5 + 112);
  v20 = sub_2276693C0();
  (*(v15 + 104))(v18, *MEMORY[0x277D4F880], v14);
  v21 = sub_226EC9A38(v18, v20);

  result = (*(v15 + 8))(v18, v14);
  if (v21)
  {
    v51 = a1;
    if (a1)
    {
      sub_22766A6B0();
      v23 = v56;

      v24 = sub_22766B380();
      v25 = sub_22766C8B0();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v58 = v27;
        *v26 = 136446210;
        v28 = MEMORY[0x22AA98660](v23, MEMORY[0x277D837D0]);
        v30 = v29;

        v31 = sub_226E97AE8(v28, v30, &v58);

        *(v26 + 4) = v31;
        _os_log_impl(&dword_226E8E000, v24, v25, "Deleting %{public}s for both paired and server sync.", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x22AA9A450](v27, -1, -1);
        MEMORY[0x22AA9A450](v26, -1, -1);
      }

      else
      {
      }

      (*(v52 + 8))(v11, v53);
    }

    else
    {
      sub_22766A6B0();
      v32 = v56;

      v33 = sub_22766B380();
      v34 = sub_22766C8B0();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v58 = v36;
        *v35 = 136446210;
        v37 = MEMORY[0x22AA98660](v32, MEMORY[0x277D837D0]);
        v39 = v38;

        v40 = sub_226E97AE8(v37, v39, &v58);

        *(v35 + 4) = v40;
        _os_log_impl(&dword_226E8E000, v33, v34, "Inserting %{public}s for both paired and server sync.", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x22AA9A450](v36, -1, -1);
        MEMORY[0x22AA9A450](v35, -1, -1);
      }

      else
      {
      }

      (*(v52 + 8))(v13, v53);
    }

    v41 = *(v5 + 152);
    __swift_project_boxed_opaque_existential_0((v5 + 120), *(v5 + 144));
    LOBYTE(v58) = 8;
    v42 = sub_226F19410();
    v43 = sub_226F19464();
    v48 = v42;
    v44 = sub_22766A130();
    MEMORY[0x28223BE20](v44);
    v47 = v5;
    LOBYTE(v48) = v51 & 1;
    v49 = v54;
    v45 = v57;
    sub_2275CE3DC(v55, &v50[-48], v56);
    v57 = v45;
    v46 = *(v5 + 152);
    __swift_project_boxed_opaque_existential_0((v5 + 120), *(v5 + 144));
    LOBYTE(v58) = 8;
    v48 = v42;
    v49 = v43;
    v47 = v46;
    return sub_22766A120();
  }

  return result;
}

uint64_t sub_2272D7F10(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, void *a6)
{
  v41 = a6;
  v43 = a4;
  v38 = a3;
  v44 = a1;
  v8 = sub_2276694E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227664140();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v37 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - v18;
  v20 = *(v9 + 104);
  v36 = *v41;
  v39 = v8;
  v22 = v21;
  v35 = v20;
  v20(v12);

  sub_2276625E0();
  v40 = a2;
  sub_227664100();
  v23 = a5[3];
  v41 = a5;
  v24 = __swift_project_boxed_opaque_existential_0(a5, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFA8, &qword_227679A68);
  v25 = *(v14 + 72);
  v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_227670CD0;
  (*(v22 + 16))(v27 + v26, v19, v13);
  v28 = v42;
  sub_22755FCC8(v27, v24[1], *(v24 + 16), v24[3]);

  if (v28)
  {
    return (*(v22 + 8))(v19, v13);
  }

  v30 = *(v22 + 8);
  v30(v19, v13);
  v31 = __swift_project_boxed_opaque_existential_0((v38 + 56), *(v38 + 80));
  v35(v12, v36, v39);

  sub_2276625E0();
  v32 = v37;
  sub_227664100();
  v33 = *v31;
  sub_2275E7B14(v32, v41);
  return (v30)(v32, v13);
}

uint64_t sub_2272D8258(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA068, &qword_2276775A8);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272D8324, 0, 0);
}

uint64_t sub_2272D8324()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v3);
  (*(v4 + 8))(v3, v4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *(v5 + 16) = "SeymourServices/KeyDeliverySystem.swift";
  *(v5 + 24) = 39;
  *(v5 + 32) = 2;
  *(v5 + 40) = 55;
  *(v5 + 48) = v1;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[8] = v7;
  v8 = sub_227664900();
  *v7 = v0;
  v7[1] = sub_2272D8470;
  v9 = v0[2];

  return MEMORY[0x2822008A0](v9, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2272DC2DC, v5, v8);
}

uint64_t sub_2272D8470()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *v1;
  v4[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2272D85F4, 0, 0);
  }

  else
  {
    (*(v4[5] + 8))(v4[6], v4[4]);

    v5 = v4[1];

    return v5();
  }
}

uint64_t sub_2272D85F4()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_2272D8674(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v3 = sub_22766B390();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272D8734, 0, 0);
}

uint64_t sub_2272D8734()
{
  v1 = v0[8];
  sub_22766A730();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Fetching PlaybackVoucher on public data network activity", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];

  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_2272DC30C;

    return sub_2272D8C64();
  }

  else
  {
    v12 = v0[8];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2272D88D0(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v3 = sub_22766B390();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272D8990, 0, 0);
}

uint64_t sub_2272D8990()
{
  v1 = v0[8];
  sub_22766A730();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Fetching PlaybackVoucher on post install activity", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];

  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_2272D8B2C;

    return sub_2272D8C64();
  }

  else
  {
    v12 = v0[8];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2272D8B2C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 64);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_2272D8C64()
{
  v1[2] = v0;
  v2 = sub_22766B390();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v1[10] = *(v6 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v7 = sub_2276637B0();
  v1[14] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v9 = swift_task_alloc();
  v1[22] = v9;
  *v9 = v1;
  v9[1] = sub_2272D8E68;

  return sub_2272DACA0();
}

uint64_t sub_2272D8E68(char a1)
{
  v2 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 256) = a1;

  return MEMORY[0x2822009F8](sub_2272D8F68, 0, 0);
}

uint64_t sub_2272D8F68()
{
  if (*(v0 + 256))
  {
    v1 = *(v0 + 48);
    sub_22766A730();
    v2 = sub_22766B380();
    v3 = sub_22766C8B0();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 48);
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_226E8E000, v2, v3, "Skipping playback voucher fetch for subscribed user", v8, 2u);
      MEMORY[0x22AA9A450](v8, -1, -1);
    }

    (*(v7 + 8))(v5, v6);
    v10 = *(v0 + 160);
    v9 = *(v0 + 168);
    v12 = *(v0 + 144);
    v11 = *(v0 + 152);
    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    v15 = *(v0 + 120);
    v17 = *(v0 + 96);
    v16 = *(v0 + 104);
    v18 = *(v0 + 88);
    v28 = *(v0 + 56);
    v29 = *(v0 + 48);
    v30 = *(v0 + 40);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v21 = *(v0 + 16);
    v22 = v21[23];
    v23 = v21[24];
    __swift_project_boxed_opaque_existential_0(v21 + 20, v22);
    v24 = *(v23 + 8);
    v31 = (v24 + *v24);
    v25 = v24[1];
    v26 = swift_task_alloc();
    *(v0 + 184) = v26;
    *v26 = v0;
    v26[1] = sub_2272D9220;
    v27 = *(v0 + 168);

    return (v31)(v27, 0, v22, v23);
  }
}

uint64_t sub_2272D9220()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_2272D9FD8;
  }

  else
  {
    v3 = sub_2272D9334;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2272D9334()
{
  v1 = v0[2];
  v2 = v1[23];
  v3 = v1[24];
  __swift_project_boxed_opaque_existential_0(v1 + 20, v2);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_2272D9468;
  v7 = v0[20];

  return v9(v7, 1, v2, v3);
}

uint64_t sub_2272D9468()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_2272DA180;
  }

  else
  {
    v3 = sub_2272D957C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2272D957C()
{
  v72 = v0;
  v1 = v0[19];
  sub_2271C411C(v0[21], v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A10, &qword_227671620);
  v3 = *(*(v2 - 8) + 48);
  v4 = v3(v1, 1, v2);
  sub_2271C4180(v1);
  if (v4 == 1 && (v5 = v0[18], sub_2271C411C(v0[20], v5), v6 = v3(v5, 1, v2), sub_2271C4180(v5), v6 == 1))
  {
    v7 = v0[12];
    v8 = v0[13];
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[8];
    v12 = v0[9];
    v13 = v0[2];
    v14 = swift_allocObject();
    *(v14 + 16) = "SeymourServices/KeyDeliverySystem.swift";
    *(v14 + 24) = 39;
    *(v14 + 32) = 2;
    *(v14 + 40) = 90;
    *(v14 + 48) = &unk_22767F6F8;
    *(v14 + 56) = v13;

    sub_227669270();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_2272DAAC4;
    *(v15 + 24) = 0;
    (*(v12 + 16))(v9, v7, v11);
    v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v17 = swift_allocObject();
    (*(v12 + 32))(v17 + v16, v9, v11);
    v18 = (v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v18 = sub_226F5AAF8;
    v18[1] = v15;
    v19 = MEMORY[0x277D84F78];
    sub_227669270();
    v20 = *(v12 + 8);
    v0[27] = v20;
    v0[28] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v7, v11);
    v21 = swift_task_alloc();
    v0[29] = v21;
    *(v21 + 16) = "SeymourServices/KeyDeliverySystem.swift";
    *(v21 + 24) = 39;
    *(v21 + 32) = 2;
    *(v21 + 40) = 100;
    *(v21 + 48) = v8;
    v22 = *(MEMORY[0x277D85A40] + 4);
    v23 = swift_task_alloc();
    v0[30] = v23;
    *v23 = v0;
    v23[1] = sub_2272D9BB0;

    return MEMORY[0x2822008A0](v23, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_226EC4D3C, v21, v19 + 8);
  }

  else
  {
    v24 = v0[20];
    v25 = v0[21];
    v27 = v0[16];
    v26 = v0[17];
    v28 = v0[7];
    sub_22766A730();
    sub_2271C411C(v25, v26);
    sub_2271C411C(v24, v27);
    v29 = sub_22766B380();
    v30 = sub_22766C8B0();
    v31 = os_log_type_enabled(v29, v30);
    v33 = v0[20];
    v32 = v0[21];
    v35 = v0[16];
    v34 = v0[17];
    if (v31)
    {
      v36 = v0[14];
      v37 = v0[15];
      v69 = v0[7];
      v64 = v0[4];
      v65 = v0[3];
      v67 = v0[21];
      v38 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v71 = v63;
      *v38 = 136315394;
      sub_2271C411C(v34, v37);
      v39 = sub_22766C060();
      v41 = v40;
      sub_2271C4180(v34);
      v42 = sub_226E97AE8(v39, v41, &v71);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      sub_2271C411C(v35, v37);
      v43 = sub_22766C060();
      v45 = v44;
      sub_2271C4180(v35);
      v46 = sub_226E97AE8(v43, v45, &v71);

      *(v38 + 14) = v46;
      _os_log_impl(&dword_226E8E000, v29, v30, "Skipping playback voucher fetch due to restriction(s) [backgroundAppRefresh: %s] [recentAPIAccess: %s]", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v63, -1, -1);
      MEMORY[0x22AA9A450](v38, -1, -1);

      (*(v64 + 8))(v69, v65);
      sub_2271C4180(v33);
      v47 = v67;
    }

    else
    {
      v48 = v0[7];
      v49 = v0[3];
      v50 = v0[4];

      sub_2271C4180(v35);
      sub_2271C4180(v34);
      (*(v50 + 8))(v48, v49);
      sub_2271C4180(v33);
      v47 = v32;
    }

    sub_2271C4180(v47);
    v52 = v0[20];
    v51 = v0[21];
    v54 = v0[18];
    v53 = v0[19];
    v56 = v0[16];
    v55 = v0[17];
    v57 = v0[15];
    v59 = v0[12];
    v58 = v0[13];
    v60 = v0[11];
    v66 = v0[7];
    v68 = v0[6];
    v70 = v0[5];

    v61 = v0[1];

    return v61();
  }
}

uint64_t sub_2272D9BB0()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 232);
  v8 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v5 = sub_2272D9E0C;
  }

  else
  {
    v6 = *(v2 + 224);
    (*(v2 + 216))(*(v2 + 104), *(v2 + 64));
    v5 = sub_2272D9CF8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2272D9CF8()
{
  v1 = v0[21];
  sub_2271C4180(v0[20]);
  sub_2271C4180(v1);
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[11];
  v14 = v0[7];
  v15 = v0[6];
  v16 = v0[5];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2272D9E0C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  (*(v0 + 216))(*(v0 + 104), *(v0 + 64));
  sub_2271C4180(v2);
  sub_2271C4180(v3);
  v4 = *(v0 + 248);
  v5 = *(v0 + 40);
  sub_22766A730();
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 32);
  v9 = *(v0 + 40);
  v11 = *(v0 + 24);
  if (v8)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_226E8E000, v6, v7, "Unable to determine effective restrictions, skipping playback voucher fetch", v12, 2u);
    MEMORY[0x22AA9A450](v12, -1, -1);
  }

  (*(v10 + 8))(v9, v11);
  v14 = *(v0 + 160);
  v13 = *(v0 + 168);
  v16 = *(v0 + 144);
  v15 = *(v0 + 152);
  v18 = *(v0 + 128);
  v17 = *(v0 + 136);
  v19 = *(v0 + 120);
  v21 = *(v0 + 96);
  v20 = *(v0 + 104);
  v22 = *(v0 + 88);
  v25 = *(v0 + 56);
  v26 = *(v0 + 48);
  v27 = *(v0 + 40);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2272D9FD8()
{
  v1 = v0[24];
  v2 = v0[5];
  sub_22766A730();
  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  if (v5)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_226E8E000, v3, v4, "Unable to determine effective restrictions, skipping playback voucher fetch", v9, 2u);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  (*(v7 + 8))(v6, v8);
  v11 = v0[20];
  v10 = v0[21];
  v13 = v0[18];
  v12 = v0[19];
  v15 = v0[16];
  v14 = v0[17];
  v16 = v0[15];
  v18 = v0[12];
  v17 = v0[13];
  v19 = v0[11];
  v22 = v0[7];
  v23 = v0[6];
  v24 = v0[5];

  v20 = v0[1];

  return v20();
}

uint64_t sub_2272DA180()
{
  sub_2271C4180(v0[21]);
  v1 = v0[26];
  v2 = v0[5];
  sub_22766A730();
  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  if (v5)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_226E8E000, v3, v4, "Unable to determine effective restrictions, skipping playback voucher fetch", v9, 2u);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  (*(v7 + 8))(v6, v8);
  v11 = v0[20];
  v10 = v0[21];
  v13 = v0[18];
  v12 = v0[19];
  v15 = v0[16];
  v14 = v0[17];
  v16 = v0[15];
  v18 = v0[12];
  v17 = v0[13];
  v19 = v0[11];
  v22 = v0[7];
  v23 = v0[6];
  v24 = v0[5];

  v20 = v0[1];

  return v20();
}

uint64_t sub_2272DA330(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_227664900();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v2[5] = *(v4 + 64);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272DA404, 0, 0);
}

uint64_t sub_2272DA404()
{
  v1 = *(v0[2] + 112);
  v2 = *(MEMORY[0x277D4F310] + 4);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_2272DA4A4;
  v4 = v0[7];

  return MEMORY[0x2821AEF08](v4);
}

uint64_t sub_2272DA4A4()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_2271E8FDC;
  }

  else
  {
    v3 = sub_2272DA5B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2272DA5B8()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = v6[13];
  __swift_project_boxed_opaque_existential_0(v6 + 9, v6[12]);
  (*(v4 + 16))(v2, v1, v5);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v0[10] = v9;
  *(v9 + 16) = v6;
  (*(v4 + 32))(v9 + v8, v2, v5);
  v10 = *(v7 + 24);

  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_2272DA79C;

  return v14();
}

uint64_t sub_2272DA79C()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_2272DA980;
  }

  else
  {
    v4 = sub_2272DA8CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2272DA8CC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *__swift_project_boxed_opaque_existential_0((v0[2] + 208), *(v0[2] + 232));
  sub_2271D7EE8();
  (*(v4 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2272DA980()
{
  (*(v0[4] + 8))(v0[7], v0[3]);
  v1 = v0[12];
  v3 = v0[6];
  v2 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2272DAA04(unint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a2 + 208), *(a2 + 232));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_227670CD0;
  *(v4 + 32) = sub_2276648F0();
  *(v4 + 40) = v5;
  sub_2272D7558(0, v4, a1, sub_2272DBF0C);
}

uint64_t sub_2272DAAC4(void *a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v8 = a1;
  v9 = sub_22766B380();
  v10 = sub_22766C8B0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18[1] = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = MEMORY[0x22AA995D0](v18[3], v18[4]);
    v16 = sub_226E97AE8(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_226E8E000, v9, v10, "Failed to fetch playback voucher with error %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA9A450](v13, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2272DACA0()
{
  v1[20] = v0;
  v2 = sub_22766B390();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v1[24] = v5;
  v6 = *(v5 - 8);
  v1[25] = v6;
  v1[26] = *(v6 + 64);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v1[29] = v7;
  v8 = *(v7 - 8);
  v1[30] = v8;
  v1[31] = *(v8 + 64);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA260, &unk_227684B00);
  v1[34] = v9;
  v10 = *(v9 - 8);
  v1[35] = v10;
  v1[36] = *(v10 + 64);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272DAEE0, 0, 0);
}

uint64_t sub_2272DAEE0()
{
  v1 = *__swift_project_boxed_opaque_existential_0((*(v0 + 160) + 248), *(*(v0 + 160) + 272));
  v2 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v1 + v2, v0 + 16);
  v3 = *(v0 + 224);
  if (*(v0 + 40))
  {
    sub_226E92AB8((v0 + 16), v0 + 56);
    sub_226E91B50(v0 + 56, v0 + 96);
    v4 = swift_allocObject();
    sub_226E92AB8((v0 + 96), v4 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  }

  else
  {
    sub_226F099DC();
    v5 = swift_allocError();
    *v6 = 0;
    *(swift_allocObject() + 16) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  v39 = *(v0 + 296);
  v40 = *(v0 + 288);
  v41 = *(v0 + 312);
  v7 = *(v0 + 280);
  v37 = *(v0 + 304);
  v38 = *(v0 + 272);
  v8 = *(v0 + 256);
  v9 = *(v0 + 240);
  v35 = v8;
  v36 = *(v0 + 248);
  v10 = *(v0 + 224);
  v33 = *(v0 + 264);
  v34 = *(v0 + 232);
  v12 = *(v0 + 208);
  v11 = *(v0 + 216);
  v14 = *(v0 + 192);
  v13 = *(v0 + 200);
  (*(v13 + 16))(v11, v10, v14);
  v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v13 + 32))(v17 + v15, v11, v14);
  v18 = (v17 + v16);
  *v18 = sub_2272DB830;
  v18[1] = 0;
  sub_227665AD0();
  sub_227669270();
  (*(v13 + 8))(v10, v14);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2272DB94C;
  *(v19 + 24) = 0;
  (*(v9 + 16))(v35, v33, v34);
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  (*(v9 + 32))(v21 + v20, v35, v34);
  v22 = (v21 + ((v36 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_2272DBCB0;
  v22[1] = v19;
  v23 = MEMORY[0x277D839B0];
  sub_227669270();
  (*(v9 + 8))(v33, v34);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_2272DBA38;
  *(v24 + 24) = 0;
  (*(v7 + 16))(v39, v37, v38);
  v25 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v26 = swift_allocObject();
  (*(v7 + 32))(v26 + v25, v39, v38);
  v27 = (v26 + ((v40 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_2272DBCE0;
  v27[1] = v24;
  sub_227669270();
  v28 = *(v7 + 8);
  *(v0 + 320) = v28;
  *(v0 + 328) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v37, v38);
  v29 = swift_task_alloc();
  *(v0 + 336) = v29;
  *(v29 + 16) = "SeymourServices/KeyDeliverySystem.swift";
  *(v29 + 24) = 39;
  *(v29 + 32) = 2;
  *(v29 + 40) = 123;
  *(v29 + 48) = v41;
  v30 = *(MEMORY[0x277D85A40] + 4);
  v31 = swift_task_alloc();
  *(v0 + 344) = v31;
  *v31 = v0;
  v31[1] = sub_2272DB460;

  return MEMORY[0x2822008A0](v0 + 360, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2272DBD10, v29, v23);
}

uint64_t sub_2272DB460()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(v2 + 352) = v0;

  v5 = *(v2 + 336);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2272DB650, 0, 0);
  }

  else
  {
    v6 = *(v2 + 360);

    v8 = *(v2 + 320);
    v7 = *(v2 + 328);
    v10 = *(v2 + 304);
    v9 = *(v2 + 312);
    v12 = *(v2 + 264);
    v11 = *(v2 + 272);
    v13 = *(v2 + 296);
    v14 = *(v2 + 256);
    v16 = *(v2 + 216);
    v15 = *(v2 + 224);
    v17 = *(v2 + 184);
    v8(v9, v11);

    v18 = *(v4 + 8);

    return v18(v6);
  }
}

uint64_t sub_2272DB650()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 328);
  v3 = *(v0 + 184);
  (*(v0 + 320))(*(v0 + 312), *(v0 + 272));
  sub_22766A730();
  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C8B0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 352);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_226E8E000, v5, v6, "Failed to determine subscription state with error %@, returning isSubscribed=false", v9, 0xCu);
    sub_226F2534C(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 304);
  v13 = *(v0 + 312);
  v15 = *(v0 + 296);
  v17 = *(v0 + 256);
  v16 = *(v0 + 264);
  v19 = *(v0 + 216);
  v18 = *(v0 + 224);
  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

  v20 = *(v0 + 8);

  return v20(0);
}

uint64_t sub_2272DB830(void *a1)
{
  v2 = sub_227667900();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276678E0();
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  (*(v8 + 8))(v6, v7, v8);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2272DB94C@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227662740();
  v7 = sub_227665AA0();
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7 & 1;
  return result;
}

uint64_t sub_2272DBA38@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v9 = a1;
  v10 = sub_22766B380();
  v11 = sub_22766C8B0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = a1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_226E8E000, v10, v11, "Error %@ fetching subscription status, returning isSubscribed=false", v13, 0xCu);
    sub_226F2534C(v14);
    MEMORY[0x22AA9A450](v14, -1, -1);
    a2 = v19;
    MEMORY[0x22AA9A450](v13, -1, -1);
  }

  result = (*(v5 + 8))(v8, v4);
  *a2 = 0;
  return result;
}

uint64_t *sub_2272DBBF8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  v2 = v0[14];

  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  v3 = v0[25];

  __swift_destroy_boxed_opaque_existential_0(v0 + 26);
  __swift_destroy_boxed_opaque_existential_0(v0 + 31);
  return v0;
}

uint64_t sub_2272DBC58()
{
  sub_2272DBBF8();

  return swift_deallocClassInstance();
}

uint64_t sub_2272DBD28(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_2272DA330(a1, v1);
}

uint64_t sub_2272DBDC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_2272DC310@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53CC8];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2272DC384@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2276644D0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2272DC3AC(uint64_t a1)
{
  *(a1 + 24) = sub_2272DC414(&qword_2813A57C8);
  result = sub_2272DC414(&qword_2813A57C0);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2272DC414(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227664530();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2272DC458(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 18;
  switch(a1)
  {
    case 13:
      result = 5;
      break;
    case 16:
      result = 9;
      break;
    case 20:
      result = 28;
      break;
    case 21:
      result = 27;
      break;
    case 24:
      result = 24;
      break;
    case 35:
      result = 12;
      break;
    case 37:
      return result;
    case 44:
      result = 11;
      break;
    case 46:
      result = 19;
      break;
    case 52:
      result = 16;
      break;
    case 57:
      result = 6;
      break;
    case 59:
      result = 30;
      break;
    case 61:
    case 67:
      result = 23;
      break;
    case 63:
      result = 22;
      break;
    case 65:
      result = 34;
      break;
    case 66:
      result = 32;
      break;
    case 70:
      result = 20;
      break;
    case 71:
      result = 21;
      break;
    case 72:
      result = 31;
      break;
    case 77:
      result = 7;
      break;
    case 80:
      result = 29;
      break;
    case 83:
      result = 33;
      break;
    default:
      sub_22766A6D0();
      v8 = sub_22766B380();
      v9 = sub_22766C890();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v15 = a1;
        v16 = v11;
        *v10 = 136315138;
        type metadata accessor for HKWorkoutActivityType(0);
        v12 = sub_22766C060();
        v14 = sub_226E97AE8(v12, v13, &v16);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_226E8E000, v8, v9, "Unknown HKWorkoutActivityType: %s. Giving Generic Workout.", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v11);
        MEMORY[0x22AA9A450](v11, -1, -1);
        MEMORY[0x22AA9A450](v10, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      result = 14;
      break;
  }

  return result;
}

uint64_t sub_2272DC6E4(uint64_t a1, int a2)
{
  v37 = a2;
  v4 = sub_2276660A0();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v31[1] = v2;
  v40 = MEMORY[0x277D84F90];
  sub_226F1FBA8(0, v8, 0);
  v9 = v40;
  v10 = a1 + 56;
  v11 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v13 = result;
  v14 = 0;
  v32 = a1 + 64;
  v33 = v8;
  v34 = a1 + 56;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    v16 = v13 >> 6;
    if ((*(v10 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_22;
    }

    v17 = *(a1 + 36);
    v38 = v14;
    v39 = v17;
    v18 = (*(a1 + 48) + 16 * v13);
    v19 = a1;
    v20 = v18[1];
    *v7 = *v18;
    v7[1] = v20;
    swift_storeEnumTagMultiPayload();
    v40 = v9;
    v21 = v7;
    v23 = *(v9 + 16);
    v22 = *(v9 + 24);

    if (v23 >= v22 >> 1)
    {
      sub_226F1FBA8(v22 > 1, v23 + 1, 1);
      v9 = v40;
    }

    *(v9 + 16) = v23 + 1;
    result = sub_2272F1DC0(v21, v9 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v23, MEMORY[0x277D52060]);
    v15 = 1 << *(v19 + 32);
    if (v13 >= v15)
    {
      goto LABEL_23;
    }

    a1 = v19;
    v10 = v34;
    v24 = *(v34 + 8 * v16);
    if ((v24 & (1 << v13)) == 0)
    {
      goto LABEL_24;
    }

    if (v39 != *(a1 + 36))
    {
      goto LABEL_25;
    }

    v7 = v21;
    v25 = v24 & (-2 << (v13 & 0x3F));
    if (v25)
    {
      v15 = __clz(__rbit64(v25)) | v13 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v16 << 6;
      v27 = v16 + 1;
      v28 = (v32 + 8 * v16);
      while (v27 < (v15 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_226EB526C(v13, v39, 0);
          v15 = __clz(__rbit64(v29)) + v26;
          goto LABEL_19;
        }
      }

      result = sub_226EB526C(v13, v39, 0);
LABEL_19:
      v7 = v21;
    }

    v14 = v38 + 1;
    v13 = v15;
    if (v38 + 1 == v33)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_2272DC9E4(uint64_t a1, void (*a2)(void), uint64_t a3, int a4)
{
  v39 = a4;
  v37 = a2;
  v38 = a3;
  v6 = sub_2276660A0();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v31 = v4;
  v45 = MEMORY[0x277D84F90];
  v33 = v8;
  sub_226F1FBA8(0, v11, 0);
  v12 = v45;
  v13 = -1 << *(v33 + 32);
  v41 = v33 + 56;
  result = sub_22766CC90();
  v15 = result;
  v16 = v33;
  v17 = 0;
  v32 = v33 + 64;
  v34 = v11;
  while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v16 + 32))
  {
    v19 = v15 >> 6;
    if ((*(v41 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
    {
      goto LABEL_21;
    }

    v40 = *(v16 + 36);
    v42 = *(*(v16 + 48) + v15);
    v37();
    sub_227663B80();
    v20 = v44;
    *v10 = v43;
    v10[16] = v20;
    swift_storeEnumTagMultiPayload();
    v45 = v12;
    v22 = *(v12 + 16);
    v21 = *(v12 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_226F1FBA8(v21 > 1, v22 + 1, 1);
      v12 = v45;
    }

    *(v12 + 16) = v22 + 1;
    v23 = v10;
    result = sub_2272F1DC0(v10, v12 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v22, MEMORY[0x277D52060]);
    v18 = 1 << *(v16 + 32);
    if (v15 >= v18)
    {
      goto LABEL_22;
    }

    v24 = *(v41 + 8 * v19);
    if ((v24 & (1 << v15)) == 0)
    {
      goto LABEL_23;
    }

    if (v40 != *(v16 + 36))
    {
      goto LABEL_24;
    }

    v25 = v24 & (-2 << (v15 & 0x3F));
    if (v25)
    {
      v18 = __clz(__rbit64(v25)) | v15 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v19 << 6;
      v27 = v19 + 1;
      v28 = (v32 + 8 * v19);
      while (v27 < (v18 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_226EB526C(v15, v40, 0);
          v16 = v33;
          v18 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v15, v40, 0);
      v16 = v33;
    }

LABEL_4:
    ++v17;
    v15 = v18;
    v10 = v23;
    if (v17 == v34)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2272DCD18(uint64_t a1)
{
  v37 = sub_227666FF0();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_227666F70();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_226F1EF90(v19 > 1, v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_226EB526C(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2272DD020(uint64_t a1)
{
  v55 = sub_2276660A0();
  v2 = *(v55 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v55);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v47 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v57 = &v47 - v10;
  MEMORY[0x28223BE20](v9);
  v54 = &v47 - v11;
  v12 = 0;
  v13 = MEMORY[0x277D84F98];
  v58 = MEMORY[0x277D84F98];
  v14 = a1 + 56;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  v18 = (v15 + 63) >> 6;
  v48 = xmmword_227670CD0;
  v49 = a1;
  v50 = v18;
  v51 = v8;
  v52 = v2;
  while (v17)
  {
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v21 = *(a1 + 48);
    v56 = *(v2 + 72);
    v22 = MEMORY[0x277D52060];
    v23 = v54;
    sub_2272F1D58(v21 + v56 * (v20 | (v12 << 6)), v54, MEMORY[0x277D52060]);
    v24 = v23;
    v25 = v57;
    sub_2272F1DC0(v24, v57, MEMORY[0x277D52060]);
    sub_2272F1D58(v25, v8, v22);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_2272F1E28(v8, MEMORY[0x277D52060]);
        v26 = 1;
        break;
      case 2u:
        sub_2272F1E28(v8, MEMORY[0x277D52060]);
        v26 = 2;
        break;
      case 3u:
        sub_2272F1E28(v8, MEMORY[0x277D52060]);
        v26 = 3;
        break;
      case 4u:
        sub_2272F1E28(v8, MEMORY[0x277D52060]);
        v26 = 5;
        break;
      case 5u:
        sub_2272F1E28(v8, MEMORY[0x277D52060]);
        v26 = 6;
        break;
      case 6u:
        v27 = sub_227664010();
        (*(*(v27 - 8) + 8))(v8, v27);
        v26 = 4;
        break;
      case 7u:
        sub_2272F1E28(v8, MEMORY[0x277D52060]);
        v26 = 7;
        break;
      case 8u:
        sub_2272F1E28(v8, MEMORY[0x277D52060]);
        v26 = 8;
        break;
      case 9u:
        sub_2272F1E28(v8, MEMORY[0x277D52060]);
        v26 = 9;
        break;
      case 0xAu:
        sub_2272F1E28(v8, MEMORY[0x277D52060]);
        v26 = 10;
        break;
      case 0xBu:
        sub_2272F1E28(v8, MEMORY[0x277D52060]);
        v26 = 11;
        break;
      case 0xCu:
        sub_2272F1E28(v8, MEMORY[0x277D52060]);
        v26 = 12;
        break;
      default:
        sub_2272F1E28(v8, MEMORY[0x277D52060]);
        v26 = 0;
        break;
    }

    v29 = sub_226F3A9E4(v26);
    v30 = v13[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_37;
    }

    v33 = v28;
    if (v13[3] < v32)
    {
      sub_226FE4394(v32, 1);
      v13 = v58;
      v34 = sub_226F3A9E4(v26);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_39;
      }

      v29 = v34;
    }

    if (v33)
    {
      v36 = v13[7];
      sub_2272F1DC0(v57, v53, MEMORY[0x277D52060]);
      v37 = *(v36 + 8 * v29);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v36 + 8 * v29) = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = sub_2273A52C0(0, v37[2] + 1, 1, v37);
        *(v36 + 8 * v29) = v37;
      }

      v40 = v37[2];
      v39 = v37[3];
      if (v40 >= v39 >> 1)
      {
        v37 = sub_2273A52C0(v39 > 1, v40 + 1, 1, v37);
        *(v36 + 8 * v29) = v37;
      }

      v8 = v51;
      v2 = v52;
      v37[2] = v40 + 1;
      sub_2272F1DC0(v53, v37 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + v40 * v56, MEMORY[0x277D52060]);
      a1 = v49;
      v18 = v50;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9B0, &unk_2276758F0);
      v41 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = v48;
      sub_2272F1DC0(v57, v42 + v41, MEMORY[0x277D52060]);
      v13[(v29 >> 6) + 8] |= 1 << v29;
      *(v13[6] + v29) = v26;
      *(v13[7] + 8 * v29) = v42;
      v43 = v13[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_38;
      }

      v13[2] = v45;
      v8 = v51;
      v2 = v52;
      v18 = v50;
    }
  }

  while (1)
  {
    v19 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      return v13;
    }

    v17 = *(v14 + 8 * v19);
    ++v12;
    if (v17)
    {
      v12 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_2272DD664(uint64_t a1, uint64_t a2)
{

  v3 = sub_2272DD020(a2);
  v4 = v3;
  v5 = MEMORY[0x277D84F90];
  v58[0] = MEMORY[0x277D84F90];
  v6 = v3 + 64;
  v7 = 1 << *(v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v55 = v5;
  if (!v9)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = v13 | (v12 << 6);
      v15 = *(*(v4 + 56) + 8 * v14);
      v16 = *(*(v4 + 48) + v14);

      v17 = sub_22750F910(v16, v15);

      if (v17)
      {
        break;
      }

      if (!v9)
      {
        goto LABEL_6;
      }
    }

    MEMORY[0x22AA985C0](result);
    if (*((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v55 = *((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    result = sub_22766C3A0();
    v55 = v58[0];
  }

  while (v9);
  while (1)
  {
LABEL_6:
    v18 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v18 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v18);
    ++v12;
    if (v9)
    {
      v12 = v18;
      goto LABEL_4;
    }
  }

  v20 = sub_2272DD020(v19);
  v21 = v20;
  v58[0] = v5;
  v22 = v20 + 64;
  v23 = 1 << *(v20 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v20 + 64);
  v26 = (v23 + 63) >> 6;

  v27 = 0;
  if (!v25)
  {
    goto LABEL_19;
  }

  do
  {
LABEL_17:
    while (1)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v29 = v28 | (v27 << 6);
      v30 = *(*(v21 + 56) + 8 * v29);
      v31 = *(*(v21 + 48) + v29);

      v32 = sub_227511F10(v31, v30);

      if (v32)
      {
        break;
      }

      if (!v25)
      {
        goto LABEL_19;
      }
    }

    MEMORY[0x22AA985C0](result);
    if (*((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v34 = *((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    result = sub_22766C3A0();
    v5 = v58[0];
  }

  while (v25);
LABEL_19:
  while (1)
  {
    v33 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v33 >= v26)
    {

      v35 = sub_226F7AE64(v55);
      v36 = sub_226F7AE64(v5);
      sub_22745F2F8(v36);
      v37 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_2276728D0;
      *(v38 + 32) = sub_227664C10();
      *(v38 + 40) = v39;
      *(v38 + 48) = sub_227664C10();
      *(v38 + 56) = v40;
      swift_getKeyPath();
      v58[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
      v58[0] = v38;
      sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

      v41 = sub_22766C820();
      sub_226E93170(v58, v56, &unk_27D7BC990, &qword_227670A30);
      v42 = v57;
      if (v57)
      {
        v43 = __swift_project_boxed_opaque_existential_0(v56, v57);
        v44 = *(v42 - 8);
        v45 = *(v44 + 64);
        MEMORY[0x28223BE20](v43);
        v47 = &v54 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v44 + 16))(v47);
        v48 = sub_22766D170();
        (*(v44 + 8))(v47, v42);
        __swift_destroy_boxed_opaque_existential_0(v56);
      }

      else
      {
        v48 = 0;
      }

      v49 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();
      v50 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

      sub_226E97D1C(v58, &unk_27D7BC990, &qword_227670A30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_227670B30;
      *(inited + 32) = v50;
      v58[0] = v37;
      sub_22745F2F8(inited);
      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      v52 = sub_22766C2B0();

      v53 = [objc_opt_self() andPredicateWithSubpredicates_];

      return v53;
    }

    v25 = *(v22 + 8 * v33);
    ++v27;
    if (v25)
    {
      v27 = v33;
      goto LABEL_17;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2272DDC00()
{
  v2 = v0;
  v3 = sub_227284784(0);
  if (v1)
  {
    return v2;
  }

  v4 = v3;
  [v3 setResultType_];
  [v4 setFetchLimit_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE8, &qword_227672B80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_227670CD0;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v6 = sub_22766C820();
  v7 = [v6 keyPath];

  v8 = sub_22766C000();
  v10 = v9;

  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 32) = v8;
  *(v5 + 40) = v10;
  v11 = sub_22766C2B0();

  [v4 setPropertiesToFetch_];

  v12 = *(v2 + 16);
  sub_226E99364(0, &qword_28139D2B0, 0x277CBEAC0);
  v13 = sub_22766C9E0();
  v15 = sub_2273C20B4(v13);

  if (!v15)
  {
    v23 = sub_227664DD0();
    sub_2272F2064(&qword_28139B8D0, MEMORY[0x277D51040]);
    v2 = swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51018], v23);
    swift_willThrow();

    return v2;
  }

  v16 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  v17 = *(v15 + 16);
  if (!v17)
  {
LABEL_11:

    if (v16[2])
    {
      v2 = v16[4];
      v22 = v16[5];
    }

    else
    {
      v2 = 0;
    }

    return v2;
  }

  v18 = 0;
  while (v18 < *(v15 + 16))
  {
    v19 = v18 + 1;
    v20 = *(v15 + 32 + 8 * v18);

    result = sub_22745EF20(v21);
    v18 = v19;
    if (v17 == v19)
    {
      v16 = v25;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2272DDED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[130] = v3;
  v4[129] = a3;
  v4[128] = a2;
  v4[127] = a1;
  v5 = sub_227667400();
  v4[131] = v5;
  v6 = *(v5 - 8);
  v4[132] = v6;
  v7 = *(v6 + 64) + 15;
  v4[133] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8540, &qword_22767F770);
  v4[134] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[135] = swift_task_alloc();
  v10 = sub_227665C20();
  v4[136] = v10;
  v11 = *(v10 - 8);
  v4[137] = v11;
  v12 = *(v11 + 64) + 15;
  v4[138] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC890, &qword_22767F778) - 8) + 64) + 15;
  v4[139] = swift_task_alloc();
  v4[140] = swift_task_alloc();
  v14 = sub_227666D60();
  v4[141] = v14;
  v15 = *(v14 - 8);
  v4[142] = v15;
  v16 = *(v15 + 64) + 15;
  v4[143] = swift_task_alloc();
  v4[144] = swift_task_alloc();
  v4[145] = swift_task_alloc();
  v17 = *(sub_227667BA0() - 8);
  v4[146] = v17;
  v18 = *(v17 + 64) + 15;
  v4[147] = swift_task_alloc();
  v19 = sub_227662A40();
  v4[148] = v19;
  v20 = *(v19 - 8);
  v4[149] = v20;
  v21 = *(v20 + 64) + 15;
  v4[150] = swift_task_alloc();
  v22 = sub_2276686C0();
  v4[151] = v22;
  v23 = *(v22 - 8);
  v4[152] = v23;
  v24 = *(v23 + 64) + 15;
  v4[153] = swift_task_alloc();
  v4[154] = swift_task_alloc();
  v25 = sub_227662EC0();
  v4[155] = v25;
  v26 = *(v25 - 8);
  v4[156] = v26;
  v27 = *(v26 + 64) + 15;
  v4[157] = swift_task_alloc();
  v28 = sub_227669890();
  v4[158] = v28;
  v29 = *(v28 - 8);
  v4[159] = v29;
  v30 = *(v29 + 64) + 15;
  v4[160] = swift_task_alloc();
  v31 = sub_2276671E0();
  v4[161] = v31;
  v32 = *(v31 - 8);
  v4[162] = v32;
  v33 = *(v32 + 64) + 15;
  v4[163] = swift_task_alloc();
  v34 = sub_227662D20();
  v4[164] = v34;
  v35 = *(v34 - 8);
  v4[165] = v35;
  v36 = *(v35 + 64) + 15;
  v4[166] = swift_task_alloc();
  v4[167] = swift_task_alloc();
  v37 = sub_227666D20();
  v4[168] = v37;
  v38 = *(v37 - 8);
  v4[169] = v38;
  v39 = *(v38 + 64) + 15;
  v4[170] = swift_task_alloc();
  v40 = *(*(sub_227662AD0() - 8) + 64) + 15;
  v4[171] = swift_task_alloc();
  v41 = sub_227668F90();
  v4[172] = v41;
  v42 = *(v41 - 8);
  v4[173] = v42;
  v4[174] = *(v42 + 64);
  v4[175] = swift_task_alloc();
  v4[176] = swift_task_alloc();
  v4[177] = swift_task_alloc();
  v4[178] = swift_task_alloc();
  v4[179] = swift_task_alloc();
  v4[180] = swift_task_alloc();
  v43 = sub_227668EF0();
  v4[181] = v43;
  v44 = *(v43 - 8);
  v4[182] = v44;
  v45 = *(v44 + 64) + 15;
  v4[183] = swift_task_alloc();
  v46 = sub_227662CC0();
  v4[184] = v46;
  v47 = *(v46 - 8);
  v4[185] = v47;
  v48 = *(v47 + 64) + 15;
  v4[186] = swift_task_alloc();
  v49 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8C0, &qword_22767F780) - 8) + 64) + 15;
  v4[187] = swift_task_alloc();
  v50 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC8A0, &qword_22767F788) - 8) + 64) + 15;
  v4[188] = swift_task_alloc();
  v51 = sub_227662750();
  v4[189] = v51;
  v52 = *(v51 - 8);
  v4[190] = v52;
  v53 = *(v52 + 64) + 15;
  v4[191] = swift_task_alloc();
  v54 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BF3D0, &unk_227675740) - 8) + 64) + 15;
  v4[192] = swift_task_alloc();
  v55 = sub_2276629D0();
  v4[193] = v55;
  v56 = *(v55 - 8);
  v4[194] = v56;
  v57 = *(v56 + 64) + 15;
  v4[195] = swift_task_alloc();
  v4[196] = swift_task_alloc();
  v58 = sub_227668630();
  v4[197] = v58;
  v59 = *(v58 - 8);
  v4[198] = v59;
  v60 = *(v59 + 64) + 15;
  v4[199] = swift_task_alloc();
  v61 = sub_227662B00();
  v4[200] = v61;
  v62 = *(v61 - 8);
  v4[201] = v62;
  v63 = *(v62 + 64) + 15;
  v4[202] = swift_task_alloc();
  v64 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480) - 8) + 64) + 15;
  v4[203] = swift_task_alloc();
  v65 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC8A8, &unk_22767F790) - 8) + 64) + 15;
  v4[204] = swift_task_alloc();
  v66 = sub_227662F70();
  v4[205] = v66;
  v67 = *(v66 - 8);
  v4[206] = v67;
  v68 = *(v67 + 64) + 15;
  v4[207] = swift_task_alloc();
  v4[208] = swift_task_alloc();
  v69 = sub_227662AB0();
  v4[209] = v69;
  v70 = *(v69 - 8);
  v4[210] = v70;
  v71 = *(v70 + 64) + 15;
  v4[211] = swift_task_alloc();
  v4[212] = swift_task_alloc();
  v72 = type metadata accessor for InferenceProvider();
  v4[213] = v72;
  v73 = *(v72 - 8);
  v4[214] = v73;
  v4[215] = *(v73 + 64);
  v4[216] = swift_task_alloc();
  v4[217] = swift_task_alloc();
  v4[218] = swift_task_alloc();
  v4[219] = swift_task_alloc();
  v4[220] = swift_task_alloc();
  v74 = sub_2276627D0();
  v4[221] = v74;
  v75 = *(v74 - 8);
  v4[222] = v75;
  v76 = *(v75 + 64) + 15;
  v4[223] = swift_task_alloc();
  v4[224] = swift_task_alloc();
  v77 = sub_22766C940();
  v4[225] = v77;
  v78 = *(v77 - 8);
  v4[226] = v78;
  v79 = *(v78 + 64) + 15;
  v4[227] = swift_task_alloc();
  v80 = sub_22766CA10();
  v4[228] = v80;
  v81 = *(*(v80 - 8) + 64) + 15;
  v4[229] = swift_task_alloc();
  v82 = *(*(sub_22766B3F0() - 8) + 64) + 15;
  v4[230] = swift_task_alloc();
  v83 = sub_2276624A0();
  v4[231] = v83;
  v84 = *(v83 - 8);
  v4[232] = v84;
  v85 = *(v84 + 64) + 15;
  v4[233] = swift_task_alloc();
  v4[234] = swift_task_alloc();
  v86 = type metadata accessor for TransportSerializableJournalRecorder();
  v4[235] = v86;
  v87 = *(v86 - 8);
  v4[236] = v87;
  v4[237] = *(v87 + 64);
  v4[238] = swift_task_alloc();
  v4[239] = swift_task_alloc();
  v88 = sub_22766B390();
  v4[240] = v88;
  v89 = *(v88 - 8);
  v4[241] = v89;
  v90 = *(v89 + 64) + 15;
  v4[242] = swift_task_alloc();
  v4[243] = swift_task_alloc();
  v4[244] = swift_task_alloc();
  v4[245] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272DEBD8, 0, 0);
}

uint64_t sub_2272DEBD8()
{
  v1 = *(v0 + 1960);
  v2 = *(v0 + 1928);
  v3 = *(v0 + 1920);
  v30 = *(v0 + 1880);
  v31 = *(v0 + 1912);
  v4 = *(v0 + 1864);
  v5 = *(v0 + 1856);
  v6 = *(v0 + 1848);
  v24 = *(v0 + 1872);
  v22 = *(v0 + 1840);
  v25 = *(v0 + 1832);
  v26 = *(v0 + 1824);
  v7 = *(v0 + 1808);
  v27 = *(v0 + 1816);
  v28 = *(v0 + 1800);
  v36 = *(v0 + 1776);
  v34 = *(v0 + 1792);
  v35 = *(v0 + 1768);
  v40 = *(v0 + 1720);
  v38 = *(v0 + 1760);
  v39 = *(v0 + 1712);
  v33 = *(v0 + 1040);
  v37 = *(v0 + 1032);
  v32 = *(v0 + 1024);
  sub_22766A680();
  sub_22766B370();
  v8 = *(v2 + 8);
  *(v0 + 1968) = v8;
  *(v0 + 1976) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  sub_227662330();
  sub_2276623F0();
  v29 = *(v5 + 8);
  v29(v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  sub_227669730();
  v23 = *(v0 + 793);
  sub_226E99364(0, &unk_28139D250, 0x277D85C90);
  sub_22766B3D0();
  *(v0 + 856) = MEMORY[0x277D84F90];
  sub_2272F2064(&qword_28139D260, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8B0, &qword_227678490);
  sub_226E9CFD0(&qword_28139D2D0, &unk_27D7BC8B0, &qword_227678490);
  sub_22766CC80();
  (*(v7 + 104))(v27, *MEMORY[0x277D85268], v28);
  v9 = sub_22766CA20();
  *(v31 + v30[8]) = 10;
  (*(v5 + 16))(v31, v24, v6);
  *(v31 + v30[6]) = v9;
  *(v31 + v30[7]) = v23;
  v10 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *(v31 + v30[5]) = v10;
  v11 = v10;
  v12 = sub_22766BFD0();
  [v11 setDateFormat_];

  v29(v24, v6);
  sub_22766CE20();

  sub_227668F40();
  *(v0 + 1984) = sub_2272F2064(&unk_28139BD90, MEMORY[0x277CC95F0]);
  v13 = sub_22766D140();
  MEMORY[0x22AA98450](v13);

  v14 = *(v36 + 8);
  *(v0 + 1992) = v14;
  *(v0 + 2000) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v34, v35);
  sub_2272EC59C(0xD00000000000001ELL, 0x800000022769D160, v37, v31);

  sub_2272F1D58(v33, v38, type metadata accessor for InferenceProvider);
  v15 = *(v39 + 80);
  *(v0 + 2160) = v15;
  v16 = (v15 + 16) & ~v15;
  v17 = swift_allocObject();
  *(v0 + 2008) = v17;
  sub_2272F1DC0(v38, v17 + v16, type metadata accessor for InferenceProvider);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9520, &unk_227674410);
  swift_asyncLet_begin();
  v18 = swift_task_alloc();
  *(v0 + 2016) = v18;
  *v18 = v0;
  v18[1] = sub_2272DF1A0;
  v19 = *(v0 + 1696);
  v20 = *(v0 + 1040);

  return sub_2272E3B9C(v19);
}

uint64_t sub_2272DF1A0()
{
  v1 = *(*v0 + 2016);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2272DF29C, 0, 0);
}

uint64_t sub_2272DF29C()
{
  v1 = *(v0 + 1752);
  v2 = *(v0 + 1720);
  v3 = *(v0 + 1040);
  v4 = (*(v0 + 2160) + 16) & ~*(v0 + 2160);
  v5 = (v3 + *(*(v0 + 1704) + 32));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_0(v5, v6);
  sub_2272F1D58(v3, v1, type metadata accessor for InferenceProvider);
  v8 = swift_allocObject();
  *(v0 + 2024) = v8;
  sub_2272F1DC0(v1, v8 + v4, type metadata accessor for InferenceProvider);
  v9 = *(v7 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 2032) = v11;
  *v11 = v0;
  v11[1] = sub_2272DF47C;

  return v13(v0 + 840, sub_2272ECAD4, v8, &type metadata for ModalityIdentifierMap, v6, v7);
}

uint64_t sub_2272DF47C()
{
  v2 = *v1;
  v3 = *(*v1 + 2032);
  v7 = *v1;
  *(*v1 + 2040) = v0;

  if (v0)
  {
    v4 = sub_2272E0E0C;
  }

  else
  {
    v5 = *(v2 + 2024);

    v4 = sub_2272DF598;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2272DF598()
{
  v4 = *(v0 + 840);
  *(v0 + 2048) = v4;
  v1 = swift_task_alloc();
  *(v0 + 2064) = v1;
  *v1 = v0;
  v1[1] = sub_2272DF644;
  v2 = *(v0 + 1040);

  return sub_2272EDCC0(v4);
}

uint64_t sub_2272DF644(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2064);
  v6 = *v2;
  *(*v2 + 2072) = v1;

  if (v1)
  {
    v7 = v4[257];
    v8 = v4[256];

    v9 = sub_2272E0730;
  }

  else
  {
    v4[260] = a1;
    v9 = sub_2272DF780;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2272DF780()
{
  v172 = v0;
  v1 = v0[259];
  v2 = v0[129];
  v0[261] = sub_226F212FC(v0[260]);

  v171[0] = sub_227668D20();

  sub_2272EAA9C(v171);
  if (v1)
  {
  }

  else
  {
    v136 = v0;

    v4 = v171[0];
    v5 = v171[0][2];
    v6 = MEMORY[0x277D84F90];
    if (v5)
    {
      v7 = v0;
      v8 = v0[201];
      v9 = v0[198];
      v10 = v0[194];
      v11 = v136[190];
      v171[0] = MEMORY[0x277D84F90];
      sub_226F1F788(0, v5, 0);
      v12 = v171[0];
      v13 = *(v9 + 16);
      v9 += 16;
      v14 = v4 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
      v146 = *(v9 + 56);
      v147 = v13;
      v166 = (v10 + 8);
      v142 = (v10 + 48);
      v144 = (v11 + 8);
      v150 = v8;
      v140 = (v9 - 8);
      v141 = (v10 + 16);
      v138 = (v10 + 32);
      do
      {
        v160 = v14;
        v163 = v5;
        v15 = v136[197];
        v16 = v136[195];
        v17 = v136[193];
        v18 = v136[192];
        v19 = v136[191];
        v20 = v136[189];
        v147(v136[199]);
        sub_227668610();
        sub_227668620();
        sub_227662980();
        (*v144)(v19, v20);
        v156 = *v166;
        (*v166)(v16, v17);
        sub_227662990();
        v21 = *v142;
        v22 = (*v142)(v18, 1, v17);
        v23 = v136[193];
        v24 = v136[192];
        v169 = v12;
        if (v22 == 1)
        {
          sub_2276629C0();
          if (v21(v24, 1, v23) != 1)
          {
            sub_226E97D1C(v136[192], &unk_27D7BF3D0, &unk_227675740);
          }
        }

        else
        {
          (*v138)(v136[196], v24, v23);
        }

        v25 = v136[202];
        v26 = v136[199];
        v153 = v136[197];
        v27 = v136[196];
        v28 = v136[195];
        v29 = v136[193];
        v30 = v136[191];
        *(v136 + 199) = sub_227668600();
        sub_22766D140();
        sub_2276685F0();
        sub_227668620();
        (*v141)(v28, v27, v29);
        sub_227662AF0();
        v156(v27, v29);
        (*v140)(v26, v153);
        v12 = v169;
        v171[0] = v169;
        v32 = v169[2];
        v31 = v169[3];
        if (v32 >= v31 >> 1)
        {
          sub_226F1F788(v31 > 1, v32 + 1, 1);
          v12 = v171[0];
        }

        v33 = v136[202];
        v34 = v136[200];
        v12[2] = v32 + 1;
        (*(v150 + 32))(v12 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v32, v33, v34);
        v14 = &v160[v146];
        v5 = v163 - 1;
      }

      while (v163 != 1);

      v6 = MEMORY[0x277D84F90];
    }

    else
    {

      v12 = MEMORY[0x277D84F90];
      v7 = v0;
    }

    v7[262] = v12;
    v35 = v7[203];
    v36 = v7[129];
    sub_227668D50();
    v37 = sub_2276638D0();
    v38 = v7;
    v39 = *(v37 - 8);
    v40 = (*(v39 + 48))(v35, 1, v37);
    v41 = v38[204];
    v42 = v38[203];
    if (v40 == 1)
    {
      sub_226E97D1C(v42, &unk_27D7BB920, &unk_227672480);
      v43 = sub_227662B30();
      (*(*(v43 - 8) + 56))(v41, 1, 1, v43);
    }

    else
    {
      sub_226FAF290(v41);
      (*(v39 + 8))(v42, v37);
    }

    v44 = v136;
    v45 = v136[129];
    v46 = sub_227668D80();
    v47 = *(v46 + 16);
    if (v47)
    {
      v48 = v136[185];
      v49 = v136[182];
      v171[0] = v6;
      sub_226F1F768(0, v47, 0);
      v50 = v171[0];
      v52 = *(v49 + 16);
      v51 = v49 + 16;
      v53 = v46 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
      v154 = *(v51 + 56);
      v157 = v52;
      do
      {
        v167 = v136[186];
        v54 = v136[183];
        v55 = v136[181];
        v157(v54, v53, v55);
        sub_227668EE0();
        v56 = sub_227668EC0();
        sub_227331C58(v56);

        sub_227668EA0();
        sub_227668ED0();
        sub_227668EB0();
        sub_227662CB0();
        (*(v51 - 8))(v54, v55);
        v171[0] = v50;
        v57 = v50[2];
        v58 = v50[3];
        if (v57 >= v58 >> 1)
        {
          sub_226F1F768(v58 > 1, v57 + 1, 1);
          v50 = v171[0];
        }

        v59 = v136[186];
        v60 = v136[184];
        v50[2] = v57 + 1;
        (*(v48 + 32))(v50 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v57, v59, v60);
        v53 += v154;
        --v47;
      }

      while (v47);
    }

    v61 = v136[187];
    v62 = v136[129];
    (*(v136[210] + 16))(v136[211], v136[212], v136[209]);
    sub_227668D30();
    v63 = sub_227666650();
    v64 = *(v63 - 8);
    if ((*(v64 + 48))(v61, 1, v63) == 1)
    {
      sub_226E97D1C(v136[187], &unk_27D7BB8C0, &qword_22767F780);
      v65 = 1;
    }

    else
    {
      v66 = v136[191];
      v67 = v136[188];
      v68 = v136[187];
      sub_227666630();
      sub_227666640();
      v44 = v136;
      sub_227662BE0();
      (*(v64 + 8))(v68, v63);
      v65 = 0;
    }

    v148 = v44[256];
    v151 = v44[257];
    v69 = *(v44 + 2160);
    v139 = v44[244];
    v113 = v44[238];
    v114 = v44[239];
    v118 = v44[236];
    v119 = v44[237];
    v134 = v44[223];
    v111 = v44[219];
    v116 = v44[218];
    v125 = v44[217];
    v127 = v44[216];
    v164 = v44[215];
    v129 = v44[208];
    v130 = v44[211];
    v131 = v44[206];
    v132 = v44[207];
    v133 = v44[205];
    v70 = v44[188];
    v128 = v44[204];
    v71 = v44[180];
    v110 = v71;
    v112 = v44[179];
    v124 = v44[178];
    v137 = v44[177];
    v72 = v44;
    v145 = v44[174];
    v73 = v44[173];
    v74 = v72[172];
    v158 = v72[171];
    v126 = (v69 + 16) & ~v69;
    v121 = v72[170];
    v122 = v72[169];
    v123 = v72[168];
    v135 = v72[167];
    v75 = v72[130];
    v161 = v72[129];
    v76 = v72[128];
    v77 = sub_227662BF0();
    (*(*(v77 - 8) + 56))(v70, v65, 1, v77);
    v78 = *(v73 + 16);
    v72[263] = v78;
    v72[264] = (v73 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v78(v71, v76, v74);
    sub_2272F1D58(v75, v111, type metadata accessor for InferenceProvider);
    v79 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v143 = v79;
    v115 = ((v79 + v145 + v69) & ~v69) + v164;
    v117 = (v79 + v145 + v69) & ~v69;
    v80 = swift_allocObject();
    v81 = *(v73 + 32);
    v82 = v80;
    v81(v80 + v79, v110, v74);
    sub_2272F1DC0(v111, v82 + v117, type metadata accessor for InferenceProvider);
    v78(v112, v76, v74);
    sub_2272F1D58(v114, v113, type metadata accessor for TransportSerializableJournalRecorder);
    sub_2272F1D58(v75, v116, type metadata accessor for InferenceProvider);
    v83 = (v79 + v145 + *(v118 + 80)) & ~*(v118 + 80);
    v84 = (v119 + v69 + v83) & ~v69;
    v120 = swift_allocObject();
    v81(v120 + v143, v112, v74);
    sub_2272F1DC0(v113, v120 + v83, type metadata accessor for TransportSerializableJournalRecorder);
    sub_2272F1DC0(v116, v120 + v84, type metadata accessor for InferenceProvider);
    v85 = (v120 + ((v164 + v84 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v85 = v148;
    v85[1] = v151;

    sub_227668D70();
    sub_22739A08C();
    (*(v122 + 8))(v121, v123);
    v78(v124, v76, v74);
    sub_2272F1D58(v75, v125, type metadata accessor for InferenceProvider);
    v86 = swift_allocObject();
    v81(v86 + v143, v124, v74);
    sub_2272F1DC0(v125, v86 + v117, type metadata accessor for InferenceProvider);
    v87 = (v86 + ((v115 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v87 = v148;
    v87[1] = v151;
    sub_2272F1D58(v75, v127, type metadata accessor for InferenceProvider);
    v88 = swift_allocObject();
    sub_2272F1DC0(v127, v88 + v126, type metadata accessor for InferenceProvider);

    sub_227662F60();
    sub_227668F40();
    (*(v131 + 16))(v132, v129, v133);
    sub_227668F50();
    sub_227668D60();
    sub_227668F60();
    sub_227662D10();
    sub_22766A680();
    v78(v137, v76, v74);
    v89 = sub_22766B380();
    v90 = sub_22766C880();
    if (os_log_type_enabled(v89, v90))
    {
      v155 = v72[249];
      v159 = v72[250];
      v91 = v72[248];
      v168 = v72[246];
      v170 = v72[247];
      v162 = v72[240];
      v165 = v72[244];
      v92 = v72[224];
      v93 = v72[221];
      v152 = v90;
      v94 = v72[177];
      v95 = v72[173];
      v149 = v72[172];
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v171[0] = v97;
      *v96 = 136315138;
      sub_227668F40();
      v98 = sub_22766D140();
      v100 = v99;
      v155(v92, v93);
      v101 = *(v95 + 8);
      v101(v94, v149);
      v102 = sub_226E97AE8(v98, v100, v171);

      *(v96 + 4) = v102;
      _os_log_impl(&dword_226E8E000, v89, v152, "[Inference] [%s] Submitting inference request to generate plans.", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v97);
      MEMORY[0x22AA9A450](v97, -1, -1);
      MEMORY[0x22AA9A450](v96, -1, -1);

      v168(v165, v162);
    }

    else
    {
      v103 = v72[247];
      v104 = v72[246];
      v105 = v72[244];
      v106 = v72[240];
      v107 = v72[177];
      v108 = v72[173];
      v109 = v72[172];

      v101 = *(v108 + 8);
      v101(v107, v109);
      v104(v105, v106);
    }

    v72[265] = v101;

    return MEMORY[0x282200930](v72 + 2, v72 + 113, sub_2272E1500, v72 + 100);
  }
}

uint64_t sub_2272E0730()
{
  (*(v0[210] + 8))(v0[212], v0[209]);

  return MEMORY[0x282200920](v0 + 2, v0 + 113, sub_2272E07B0, v0 + 92);
}

uint64_t sub_2272E07CC()
{
  v103 = v0;
  v1 = v0[259];
  v2 = v0[242];
  v3 = v0[175];
  v4 = v0[173];
  v5 = v0[172];
  v6 = v0[128];
  sub_2272F1E28(v0[239], type metadata accessor for TransportSerializableJournalRecorder);
  sub_22766A680();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v1;
  v8 = sub_22766B380();
  v9 = sub_22766C890();

  if (os_log_type_enabled(v8, v9))
  {
    v86 = v0[249];
    v88 = v0[250];
    v10 = v0[248];
    v98 = v0[246];
    v100 = v0[247];
    v94 = v0[240];
    v96 = v0[242];
    v11 = v0[224];
    v12 = v0[221];
    v13 = v1;
    v14 = v0[175];
    v15 = v0[173];
    v82 = v0[172];
    v16 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v102 = v92;
    *v16 = 136315394;
    v84 = v9;
    sub_227668F40();
    v17 = sub_22766D140();
    v19 = v18;
    v86(v11, v12);
    (*(v15 + 8))(v14, v82);
    v20 = sub_226E97AE8(v17, v19, &v102);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    v21 = v13;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v22;
    *v90 = v22;
    _os_log_impl(&dword_226E8E000, v8, v84, "[Inference] [%s] Failed to fetch plans: %@ ", v16, 0x16u);
    sub_226E97D1C(v90, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v90, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v92);
    MEMORY[0x22AA9A450](v92, -1, -1);
    MEMORY[0x22AA9A450](v16, -1, -1);

    v98(v96, v94);
  }

  else
  {
    v23 = v0[247];
    v24 = v0[246];
    v25 = v0[242];
    v26 = v0[240];
    v27 = v0[175];
    v28 = v0[173];
    v29 = v0[172];

    (*(v28 + 8))(v27, v29);
    v24(v25, v26);
  }

  v30 = v0[251];
  v31 = v0[245];
  v32 = v0[244];
  v33 = v0[243];
  v34 = v0[242];
  v35 = v0[239];
  v36 = v0[238];
  v37 = v0[234];
  v40 = v0[233];
  v41 = v0[230];
  v42 = v0[229];
  v43 = v0[227];
  v44 = v0[224];
  v45 = v0[223];
  v46 = v0[220];
  v47 = v0[219];
  v48 = v0[218];
  v49 = v0[217];
  v50 = v0[216];
  v51 = v0[212];
  v52 = v0[211];
  v53 = v0[208];
  v54 = v0[207];
  v55 = v0[204];
  v56 = v0[203];
  v57 = v0[202];
  v58 = v0[199];
  v59 = v0[196];
  v60 = v0[195];
  v61 = v0[192];
  v62 = v0[191];
  v63 = v0[188];
  v64 = v0[187];
  v65 = v0[186];
  v66 = v0[183];
  v67 = v0[180];
  v68 = v0[179];
  v69 = v0[178];
  v70 = v0[177];
  v71 = v0[176];
  v72 = v0[175];
  v73 = v0[171];
  v74 = v0[170];
  v75 = v0[167];
  v76 = v0[166];
  v77 = v0[163];
  v78 = v0[160];
  v79 = v0[157];
  v80 = v0[154];
  v81 = v0[153];
  v83 = v0[150];
  v85 = v0[147];
  v87 = v0[145];
  v89 = v0[144];
  v91 = v0[143];
  v93 = v0[140];
  v95 = v0[139];
  v97 = v0[138];
  v99 = v0[135];
  v101 = v0[133];
  swift_willThrow();

  v38 = v0[1];

  return v38();
}

uint64_t sub_2272E0E0C()
{
  v1 = v0[253];
  v2 = v0[212];
  v3 = v0[210];
  v4 = v0[209];

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x282200920](v0 + 2, v0 + 113, sub_2272E0EA4, v0 + 82);
}

uint64_t sub_2272E0EC0()
{
  v103 = v0;
  v1 = v0[255];
  v2 = v0[242];
  v3 = v0[175];
  v4 = v0[173];
  v5 = v0[172];
  v6 = v0[128];
  sub_2272F1E28(v0[239], type metadata accessor for TransportSerializableJournalRecorder);
  sub_22766A680();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v1;
  v8 = sub_22766B380();
  v9 = sub_22766C890();

  if (os_log_type_enabled(v8, v9))
  {
    v86 = v0[249];
    v88 = v0[250];
    v10 = v0[248];
    v98 = v0[246];
    v100 = v0[247];
    v94 = v0[240];
    v96 = v0[242];
    v11 = v0[224];
    v12 = v0[221];
    v13 = v1;
    v14 = v0[175];
    v15 = v0[173];
    v82 = v0[172];
    v16 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v102 = v92;
    *v16 = 136315394;
    v84 = v9;
    sub_227668F40();
    v17 = sub_22766D140();
    v19 = v18;
    v86(v11, v12);
    (*(v15 + 8))(v14, v82);
    v20 = sub_226E97AE8(v17, v19, &v102);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    v21 = v13;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v22;
    *v90 = v22;
    _os_log_impl(&dword_226E8E000, v8, v84, "[Inference] [%s] Failed to fetch plans: %@ ", v16, 0x16u);
    sub_226E97D1C(v90, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v90, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v92);
    MEMORY[0x22AA9A450](v92, -1, -1);
    MEMORY[0x22AA9A450](v16, -1, -1);

    v98(v96, v94);
  }

  else
  {
    v23 = v0[247];
    v24 = v0[246];
    v25 = v0[242];
    v26 = v0[240];
    v27 = v0[175];
    v28 = v0[173];
    v29 = v0[172];

    (*(v28 + 8))(v27, v29);
    v24(v25, v26);
  }

  v30 = v0[251];
  v31 = v0[245];
  v32 = v0[244];
  v33 = v0[243];
  v34 = v0[242];
  v35 = v0[239];
  v36 = v0[238];
  v37 = v0[234];
  v40 = v0[233];
  v41 = v0[230];
  v42 = v0[229];
  v43 = v0[227];
  v44 = v0[224];
  v45 = v0[223];
  v46 = v0[220];
  v47 = v0[219];
  v48 = v0[218];
  v49 = v0[217];
  v50 = v0[216];
  v51 = v0[212];
  v52 = v0[211];
  v53 = v0[208];
  v54 = v0[207];
  v55 = v0[204];
  v56 = v0[203];
  v57 = v0[202];
  v58 = v0[199];
  v59 = v0[196];
  v60 = v0[195];
  v61 = v0[192];
  v62 = v0[191];
  v63 = v0[188];
  v64 = v0[187];
  v65 = v0[186];
  v66 = v0[183];
  v67 = v0[180];
  v68 = v0[179];
  v69 = v0[178];
  v70 = v0[177];
  v71 = v0[176];
  v72 = v0[175];
  v73 = v0[171];
  v74 = v0[170];
  v75 = v0[167];
  v76 = v0[166];
  v77 = v0[163];
  v78 = v0[160];
  v79 = v0[157];
  v80 = v0[154];
  v81 = v0[153];
  v83 = v0[150];
  v85 = v0[147];
  v87 = v0[145];
  v89 = v0[144];
  v91 = v0[143];
  v93 = v0[140];
  v95 = v0[139];
  v97 = v0[138];
  v99 = v0[135];
  v101 = v0[133];
  swift_willThrow();

  v38 = v0[1];

  return v38();
}

uint64_t sub_2272E1500()
{
  v1[266] = v0;
  if (v0)
  {
    v2 = v1[262];
    v3 = v1[261];
    v4 = v1[257];
    v5 = v1[256];

    v6 = sub_2272E339C;
  }

  else
  {
    v6 = sub_2272E15AC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2272E15AC()
{
  v1 = v0[167];
  v2 = v0[166];
  v3 = v0[165];
  v4 = v0[164];
  v5 = v0[160];
  v6 = v0[113];
  v7 = sub_227662A00();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v0[267] = sub_2276629F0();
  sub_22766A7F0();
  (*(v3 + 16))(v2, v1, v4);
  sub_226E9DD3C("InferenceProvider.fetchPersonalizedWorkoutPlans", 47, 2, &dword_226E8E000, 1, v0 + 87);
  v10 = *(MEMORY[0x277D49430] + 4);
  v15 = (*MEMORY[0x277D49430] + MEMORY[0x277D49430]);
  v11 = swift_task_alloc();
  v0[268] = v11;
  *v11 = v0;
  v11[1] = sub_2272E1708;
  v12 = v0[166];
  v13 = v0[157];

  return v15(v13, v12);
}

uint64_t sub_2272E1708()
{
  v2 = *v1;
  v3 = *(*v1 + 2144);
  v10 = *v1;
  *(*v1 + 2152) = v0;

  if (v0)
  {
    v4 = v2[262];
    v5 = v2[261];
    v6 = v2[257];
    v7 = v2[256];

    v8 = sub_2272E27A8;
  }

  else
  {
    v8 = sub_2272E1850;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2272E1850()
{
  v206 = v0;
  v148 = v0[269];
  v186 = v0[249];
  v192 = v0[250];
  v199 = v0[239];
  v172 = v0[224];
  v175 = v0[221];
  v180 = v0[248];
  v163 = v0[166];
  v134 = v0[165];
  v158 = v0[164];
  v149 = v0[163];
  v166 = v0[160];
  v160 = v0[159];
  v165 = v0[158];
  v1 = v0[157];
  v152 = v0[156];
  v155 = v0[155];
  v2 = v0[154];
  v3 = v0[153];
  v4 = v0[152];
  v5 = v0[151];
  v6 = v0[150];
  v7 = v0[149];
  v8 = v0[148];
  v168 = v0[128];
  sub_227662EB0();
  sub_22709422C(v2);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 16))(v3, v2, v5);
  v9 = sub_227662EA0();
  v10 = swift_task_alloc();
  *(v10 + 16) = v2;
  sub_2275F29E0(sub_2272EF278, v10, v9);

  sub_2276671D0();
  (*(v4 + 8))(v2, v5);
  (*(v152 + 8))(v1, v155);
  v11 = v0[91];
  __swift_project_boxed_opaque_existential_0(v0 + 87, v0[90]);
  sub_227669930();
  v133 = *(v134 + 8);
  v133(v163, v158);
  (*(v160 + 8))(v166, v165);
  __swift_destroy_boxed_opaque_existential_0(v0 + 87);
  sub_22766CE20();

  v204 = 0xD00000000000001BLL;
  v205 = 0x800000022769D1B0;
  sub_227668F40();
  v12 = sub_22766D140();
  MEMORY[0x22AA98450](v12);

  v186(v172, v175);
  sub_2272ECB50(0xD00000000000001BLL, 0x800000022769D1B0, v149, v199);

  v13 = sub_2276671C0();
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v0[146];
    v193 = v0[142];
    v16 = v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v200 = *(v15 + 72);
    v17 = (v193 + 32);
    v18 = MEMORY[0x277D84F90];
    do
    {
      v19 = v0[147];
      v20 = v0[141];
      v21 = v0[140];
      v22 = v0[139];
      sub_2272F1D58(v16, v19, MEMORY[0x277D53198]);
      sub_227667B90();
      sub_2272EF298(v22, v21);
      sub_2272F1E28(v19, MEMORY[0x277D53198]);
      if ((*(v193 + 48))(v21, 1, v20) == 1)
      {
        sub_226E97D1C(v0[140], &unk_27D7BC890, &qword_22767F778);
      }

      else
      {
        v23 = *v17;
        (*v17)(v0[145], v0[140], v0[141]);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v24 = v18;
        }

        else
        {
          v24 = sub_2273A50F8(0, v18[2] + 1, 1, v18);
        }

        v26 = v24[2];
        v25 = v24[3];
        if (v26 >= v25 >> 1)
        {
          v24 = sub_2273A50F8(v25 > 1, v26 + 1, 1, v24);
        }

        v27 = v0[145];
        v28 = v0[141];
        v24[2] = v26 + 1;
        v18 = v24;
        v23(v24 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v26, v27, v28);
      }

      v16 += v200;
      --v14;
    }

    while (v14);

    isUniquelyReferenced_nonNull_native = v18;
  }

  else
  {

    isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
  }

  v145 = *(isUniquelyReferenced_nonNull_native + 16);
  if (v145)
  {
    v33 = 0;
    v135 = v0 + 97;
    v34 = v0[142];
    v143 = isUniquelyReferenced_nonNull_native + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v142 = (v0[137] + 8);
    v159 = v0[132];
    v144 = v34;
    v139 = v0[173] + 8;
    v140 = (v34 + 8);
    v167 = v0[256];
    v201 = v0[134];
    v173 = v0;
    v141 = isUniquelyReferenced_nonNull_native;
LABEL_18:
    if (v33 >= *(isUniquelyReferenced_nonNull_native + 16))
    {
      goto LABEL_57;
    }

    v43 = v0[138];
    v44 = v0[136];
    v164 = v33 + 1;
    v161 = *(v144 + 16);
    v161(v0[144], v143 + *(v144 + 72) * v33, v0[141]);
    sub_227666D40();
    v45 = sub_227665BD0();
    (*v142)(v43, v44);
    v46 = v45 + 64;
    v47 = -1 << *(v45 + 32);
    if (-v47 < 64)
    {
      v48 = ~(-1 << -v47);
    }

    else
    {
      v48 = -1;
    }

    v49 = v48 & *(v45 + 64);
    v50 = (63 - v47) >> 6;

    v51 = 0;
    v169 = MEMORY[0x277D84F90];
    v146 = v50;
    if (!v49)
    {
      goto LABEL_25;
    }

    do
    {
LABEL_29:
      while (1)
      {
        v53 = v0[135];
        v54 = __clz(__rbit64(v49));
        v49 &= v49 - 1;
        v55 = v54 | (v51 << 6);
        v56 = *(v45 + 48);
        v57 = sub_227665440();
        (*(*(v57 - 8) + 16))(v53, v56 + *(*(v57 - 8) + 72) * v55, v57);
        v58 = *(*(v45 + 56) + 8 * v55);
        *(v53 + *(v201 + 48)) = v58;
        v59 = *(v58 + 16);

        if (v59)
        {
          v60 = v0[135];
          v61 = sub_227665400();
          if (MEMORY[0x22AA95620](v61) != 7)
          {
            break;
          }
        }

        isUniquelyReferenced_nonNull_native = sub_226E97D1C(v0[135], &qword_27D7B8540, &qword_22767F770);
        if (!v49)
        {
          goto LABEL_25;
        }
      }

      v62 = *(v58 + 16);
      if (v62)
      {
        v203 = MEMORY[0x277D84F90];
        isUniquelyReferenced_nonNull_native = sub_226F1EF90(0, v62, 0);
        v63 = 0;
        v150 = v58 + ((*(v159 + 80) + 32) & ~*(v159 + 80));
        v153 = v62;
        v64 = v203;
        v156 = v45;
        while (1)
        {
          if (v63 >= *(v58 + 16))
          {
            goto LABEL_56;
          }

          v194 = v64;
          v188 = v63;
          (*(v159 + 16))(v0[133], v150 + *(v159 + 72) * v63, v0[131]);
          v65 = sub_2276673E0();
          if (!*(v167 + 16))
          {
            break;
          }

          v67 = v0[256];
          v68 = sub_226E92000(v65, v66);
          v70 = v69;

          if ((v70 & 1) == 0)
          {
            goto LABEL_38;
          }

          v71 = *(v167 + 56) + 24 * v68;
          v72 = *(v71 + 16);
          *v135 = *v71;
          *(v135 + 16) = v72;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
          sub_22713A9EC();
          v73 = sub_227663B60();
LABEL_39:
          v76 = v74;
          v77 = v0[133];
          v176 = v73;
          v182 = v0[131];
          v204 = 40;
          v205 = 0xE100000000000000;
          v0[119] = sub_2276673F0();
          v78 = sub_22766D140();
          MEMORY[0x22AA98450](v78);

          MEMORY[0x22AA98450](41, 0xE100000000000000);
          v80 = v204;
          v79 = v205;
          v204 = v176;
          v205 = v76;

          MEMORY[0x22AA98450](v80, v79);

          v81 = v204;
          v82 = v205;
          isUniquelyReferenced_nonNull_native = (*(v159 + 8))(v77, v182);
          v64 = v194;
          v84 = *(v194 + 16);
          v83 = *(v194 + 24);
          if (v84 >= v83 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_226F1EF90(v83 > 1, v84 + 1, 1);
            v64 = v194;
          }

          v63 = v188 + 1;
          *(v64 + 16) = v84 + 1;
          v85 = v64 + 16 * v84;
          *(v85 + 32) = v81;
          *(v85 + 40) = v82;
          v45 = v156;
          v0 = v173;
          if (v153 == v188 + 1)
          {
            goto LABEL_44;
          }
        }

LABEL_38:
        v75 = v0[133];
        v73 = sub_2276673E0();
        goto LABEL_39;
      }

      v64 = MEMORY[0x277D84F90];
LABEL_44:
      v195 = v0[135];
      v0[125] = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
      sub_226E9CFD0(&qword_27D7BC8C0, &qword_27D7B84E0, &qword_22767C6B0);
      v86 = sub_22766BF70();
      v88 = v87;

      v204 = sub_2276692E0();
      v205 = v89;
      MEMORY[0x22AA98450](91, 0xE100000000000000);
      MEMORY[0x22AA98450](v86, v88);

      MEMORY[0x22AA98450](93, 0xE100000000000000);
      v90 = v204;
      v91 = v205;
      sub_226E97D1C(v195, &qword_27D7B8540, &qword_22767F770);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_226EB3F78(0, *(v169 + 16) + 1, 1, v169);
        v169 = isUniquelyReferenced_nonNull_native;
      }

      v50 = v146;
      v93 = *(v169 + 16);
      v92 = *(v169 + 24);
      if (v93 >= v92 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_226EB3F78((v92 > 1), v93 + 1, 1, v169);
        v169 = isUniquelyReferenced_nonNull_native;
      }

      *(v169 + 16) = v93 + 1;
      v94 = v169 + 16 * v93;
      *(v94 + 32) = v90;
      *(v94 + 40) = v91;
    }

    while (v49);
LABEL_25:
    while (1)
    {
      v52 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v52 >= v50)
      {
        v189 = v0[263];
        v196 = v0[264];
        v95 = v0[243];
        v96 = v0[176];
        v97 = v0[172];
        v98 = v0[143];
        v177 = v0[141];
        v183 = v0[144];
        v99 = v0[128];

        v0[126] = v169;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
        sub_226E9CFD0(&qword_27D7BC8C0, &qword_27D7B84E0, &qword_22767C6B0);
        v157 = sub_22766BF70();
        v101 = v100;

        sub_22766A680();
        v189(v96, v99, v97);
        v161(v98, v183, v177);

        v102 = sub_22766B380();
        v103 = sub_22766C880();

        v197 = v102;
        v104 = os_log_type_enabled(v102, v103);
        v105 = v0[265];
        if (v104)
        {
          v137 = v0[249];
          v138 = v0[250];
          v106 = v0[248];
          v184 = v0[246];
          v190 = v0[247];
          v178 = v0[243];
          v170 = v0[240];
          v107 = v0[224];
          v108 = v0[221];
          v154 = v103;
          v109 = v0[176];
          v136 = v0[172];
          v162 = v0[144];
          v110 = v0[143];
          v147 = v0[141];
          v111 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          v204 = v151;
          *v111 = 136315650;
          sub_227668F40();
          v112 = sub_22766D140();
          v114 = v113;
          v137(v107, v108);
          v105(v109, v136);
          v115 = sub_226E97AE8(v112, v114, &v204);

          *(v111 + 4) = v115;
          *(v111 + 12) = 2080;
          sub_227666D50();
          v116 = sub_227665F30();
          v118 = v117;
          v119 = *v140;
          (*v140)(v110, v147);
          v120 = sub_226E97AE8(v116, v118, &v204);

          *(v111 + 14) = v120;
          *(v111 + 22) = 2080;
          v121 = sub_226E97AE8(v157, v101, &v204);

          *(v111 + 24) = v121;
          _os_log_impl(&dword_226E8E000, v197, v154, "[Inference] [%s] Plan Schedule %s: %s", v111, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x22AA9A450](v151, -1, -1);
          MEMORY[0x22AA9A450](v111, -1, -1);

          v184(v178, v170);
          v119(v162, v147);
        }

        else
        {
          v181 = v0[246];
          v187 = v0[247];
          v35 = v0[243];
          v36 = v0[240];
          v37 = v0[176];
          v38 = v0[172];
          v39 = v0[144];
          v40 = v0[143];
          v41 = v0[141];

          v42 = *v140;
          (*v140)(v40, v41);
          v105(v37, v38);
          v181(v35, v36);
          v42(v39, v41);
        }

        v33 = v164;
        v0 = v173;
        isUniquelyReferenced_nonNull_native = v141;
        if (v164 == v145)
        {
          goto LABEL_52;
        }

        goto LABEL_18;
      }

      v49 = *(v46 + 8 * v52);
      ++v51;
      if (v49)
      {
        v51 = v52;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
  }

  else
  {
LABEL_52:

    v122 = v0[267];
    v123 = v0[262];
    v124 = v0[261];
    v125 = v0[257];
    v126 = v0[256];
    v127 = v0[210];
    v128 = v0[206];
    v171 = v0[205];
    v174 = v0[208];
    v129 = v0[167];
    v130 = v0[164];
    v198 = v0[163];
    v202 = v0[212];
    v131 = v0[162];
    v185 = v0[161];
    v191 = v0[209];
    v179 = v0[127];

    v133(v129, v130);
    (*(v128 + 8))(v174, v171);
    (*(v127 + 8))(v202, v191);
    (*(v131 + 32))(v179, v198, v185);
    v30 = sub_2272E2FA8;
    isUniquelyReferenced_nonNull_native = (v0 + 2);
    v29 = v0 + 113;
    v31 = v0 + 120;
  }

  return MEMORY[0x282200920](isUniquelyReferenced_nonNull_native, v29, v30, v31);
}

uint64_t sub_2272E27A8()
{
  v1 = v0[269];
  v2 = v0[210];
  v18 = v0[209];
  v19 = v0[212];
  v17 = v0[208];
  v3 = v0[206];
  v15 = v0[267];
  v16 = v0[205];
  v4 = v0[165];
  v5 = v0[164];
  v13 = v0[160];
  v14 = v0[167];
  v6 = v0[159];
  v11 = v0[166];
  v12 = v0[158];
  v7 = v0[91];
  __swift_project_boxed_opaque_existential_0(v0 + 87, v0[90]);
  sub_227669930();
  swift_willThrow();
  v8 = v0[91];
  __swift_project_boxed_opaque_existential_0(v0 + 87, v0[90]);
  sub_227669920();
  v9 = *(v4 + 8);
  v9(v11, v5);
  (*(v6 + 8))(v13, v12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 87);

  v9(v14, v5);
  (*(v3 + 8))(v17, v16);
  (*(v2 + 8))(v19, v18);

  return MEMORY[0x282200920](v0 + 2, v0 + 113, sub_2272E294C, v0 + 114);
}

uint64_t sub_2272E2968()
{
  v103 = v0;
  v1 = v0[269];
  v2 = v0[242];
  v3 = v0[175];
  v4 = v0[173];
  v5 = v0[172];
  v6 = v0[128];
  sub_2272F1E28(v0[239], type metadata accessor for TransportSerializableJournalRecorder);
  sub_22766A680();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v1;
  v8 = sub_22766B380();
  v9 = sub_22766C890();

  if (os_log_type_enabled(v8, v9))
  {
    v86 = v0[249];
    v88 = v0[250];
    v10 = v0[248];
    v98 = v0[246];
    v100 = v0[247];
    v94 = v0[240];
    v96 = v0[242];
    v11 = v0[224];
    v12 = v0[221];
    v13 = v1;
    v14 = v0[175];
    v15 = v0[173];
    v82 = v0[172];
    v16 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v102 = v92;
    *v16 = 136315394;
    v84 = v9;
    sub_227668F40();
    v17 = sub_22766D140();
    v19 = v18;
    v86(v11, v12);
    (*(v15 + 8))(v14, v82);
    v20 = sub_226E97AE8(v17, v19, &v102);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    v21 = v13;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v22;
    *v90 = v22;
    _os_log_impl(&dword_226E8E000, v8, v84, "[Inference] [%s] Failed to fetch plans: %@ ", v16, 0x16u);
    sub_226E97D1C(v90, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v90, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v92);
    MEMORY[0x22AA9A450](v92, -1, -1);
    MEMORY[0x22AA9A450](v16, -1, -1);

    v98(v96, v94);
  }

  else
  {
    v23 = v0[247];
    v24 = v0[246];
    v25 = v0[242];
    v26 = v0[240];
    v27 = v0[175];
    v28 = v0[173];
    v29 = v0[172];

    (*(v28 + 8))(v27, v29);
    v24(v25, v26);
  }

  v30 = v0[251];
  v31 = v0[245];
  v32 = v0[244];
  v33 = v0[243];
  v34 = v0[242];
  v35 = v0[239];
  v36 = v0[238];
  v37 = v0[234];
  v40 = v0[233];
  v41 = v0[230];
  v42 = v0[229];
  v43 = v0[227];
  v44 = v0[224];
  v45 = v0[223];
  v46 = v0[220];
  v47 = v0[219];
  v48 = v0[218];
  v49 = v0[217];
  v50 = v0[216];
  v51 = v0[212];
  v52 = v0[211];
  v53 = v0[208];
  v54 = v0[207];
  v55 = v0[204];
  v56 = v0[203];
  v57 = v0[202];
  v58 = v0[199];
  v59 = v0[196];
  v60 = v0[195];
  v61 = v0[192];
  v62 = v0[191];
  v63 = v0[188];
  v64 = v0[187];
  v65 = v0[186];
  v66 = v0[183];
  v67 = v0[180];
  v68 = v0[179];
  v69 = v0[178];
  v70 = v0[177];
  v71 = v0[176];
  v72 = v0[175];
  v73 = v0[171];
  v74 = v0[170];
  v75 = v0[167];
  v76 = v0[166];
  v77 = v0[163];
  v78 = v0[160];
  v79 = v0[157];
  v80 = v0[154];
  v81 = v0[153];
  v83 = v0[150];
  v85 = v0[147];
  v87 = v0[145];
  v89 = v0[144];
  v91 = v0[143];
  v93 = v0[140];
  v95 = v0[139];
  v97 = v0[138];
  v99 = v0[135];
  v101 = v0[133];
  swift_willThrow();

  v38 = v0[1];

  return v38();
}

uint64_t sub_2272E2FC4()
{
  v1 = v0[251];
  v2 = v0[245];
  v3 = v0[244];
  v4 = v0[243];
  v5 = v0[242];
  v6 = v0[238];
  v7 = v0[234];
  v8 = v0[233];
  v11 = v0[230];
  v12 = v0[229];
  v13 = v0[227];
  v14 = v0[224];
  v15 = v0[223];
  v16 = v0[220];
  v17 = v0[219];
  v18 = v0[218];
  v19 = v0[217];
  v20 = v0[216];
  v21 = v0[212];
  v22 = v0[211];
  v23 = v0[208];
  v24 = v0[207];
  v25 = v0[204];
  v26 = v0[203];
  v27 = v0[202];
  v28 = v0[199];
  v29 = v0[196];
  v30 = v0[195];
  v31 = v0[192];
  v32 = v0[191];
  v33 = v0[188];
  v34 = v0[187];
  v35 = v0[186];
  v36 = v0[183];
  v37 = v0[180];
  v38 = v0[179];
  v39 = v0[178];
  v40 = v0[177];
  v41 = v0[176];
  v42 = v0[175];
  v43 = v0[171];
  v44 = v0[170];
  v45 = v0[167];
  v46 = v0[166];
  v47 = v0[163];
  v48 = v0[160];
  v49 = v0[157];
  v50 = v0[154];
  v51 = v0[153];
  v52 = v0[150];
  v53 = v0[147];
  v54 = v0[145];
  v55 = v0[144];
  v56 = v0[143];
  v57 = v0[140];
  v58 = v0[139];
  v59 = v0[138];
  v60 = v0[135];
  v61 = v0[133];
  sub_2272F1E28(v0[239], type metadata accessor for TransportSerializableJournalRecorder);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2272E339C()
{
  v1 = v0[212];
  v2 = v0[210];
  v3 = v0[209];
  v4 = v0[208];
  v5 = v0[206];
  v6 = v0[205];
  (*(v0[165] + 8))(v0[167], v0[164]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x282200920](v0 + 2, v0 + 113, sub_2272E3474, v0 + 108);
}

uint64_t sub_2272E3490()
{
  v103 = v0;
  v1 = v0[266];
  v2 = v0[242];
  v3 = v0[175];
  v4 = v0[173];
  v5 = v0[172];
  v6 = v0[128];
  sub_2272F1E28(v0[239], type metadata accessor for TransportSerializableJournalRecorder);
  sub_22766A680();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v1;
  v8 = sub_22766B380();
  v9 = sub_22766C890();

  if (os_log_type_enabled(v8, v9))
  {
    v86 = v0[249];
    v88 = v0[250];
    v10 = v0[248];
    v98 = v0[246];
    v100 = v0[247];
    v94 = v0[240];
    v96 = v0[242];
    v11 = v0[224];
    v12 = v0[221];
    v13 = v1;
    v14 = v0[175];
    v15 = v0[173];
    v82 = v0[172];
    v16 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v102 = v92;
    *v16 = 136315394;
    v84 = v9;
    sub_227668F40();
    v17 = sub_22766D140();
    v19 = v18;
    v86(v11, v12);
    (*(v15 + 8))(v14, v82);
    v20 = sub_226E97AE8(v17, v19, &v102);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    v21 = v13;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v22;
    *v90 = v22;
    _os_log_impl(&dword_226E8E000, v8, v84, "[Inference] [%s] Failed to fetch plans: %@ ", v16, 0x16u);
    sub_226E97D1C(v90, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v90, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v92);
    MEMORY[0x22AA9A450](v92, -1, -1);
    MEMORY[0x22AA9A450](v16, -1, -1);

    v98(v96, v94);
  }

  else
  {
    v23 = v0[247];
    v24 = v0[246];
    v25 = v0[242];
    v26 = v0[240];
    v27 = v0[175];
    v28 = v0[173];
    v29 = v0[172];

    (*(v28 + 8))(v27, v29);
    v24(v25, v26);
  }

  v30 = v0[251];
  v31 = v0[245];
  v32 = v0[244];
  v33 = v0[243];
  v34 = v0[242];
  v35 = v0[239];
  v36 = v0[238];
  v37 = v0[234];
  v40 = v0[233];
  v41 = v0[230];
  v42 = v0[229];
  v43 = v0[227];
  v44 = v0[224];
  v45 = v0[223];
  v46 = v0[220];
  v47 = v0[219];
  v48 = v0[218];
  v49 = v0[217];
  v50 = v0[216];
  v51 = v0[212];
  v52 = v0[211];
  v53 = v0[208];
  v54 = v0[207];
  v55 = v0[204];
  v56 = v0[203];
  v57 = v0[202];
  v58 = v0[199];
  v59 = v0[196];
  v60 = v0[195];
  v61 = v0[192];
  v62 = v0[191];
  v63 = v0[188];
  v64 = v0[187];
  v65 = v0[186];
  v66 = v0[183];
  v67 = v0[180];
  v68 = v0[179];
  v69 = v0[178];
  v70 = v0[177];
  v71 = v0[176];
  v72 = v0[175];
  v73 = v0[171];
  v74 = v0[170];
  v75 = v0[167];
  v76 = v0[166];
  v77 = v0[163];
  v78 = v0[160];
  v79 = v0[157];
  v80 = v0[154];
  v81 = v0[153];
  v83 = v0[150];
  v85 = v0[147];
  v87 = v0[145];
  v89 = v0[144];
  v91 = v0[143];
  v93 = v0[140];
  v95 = v0[139];
  v97 = v0[138];
  v99 = v0[135];
  v101 = v0[133];
  swift_willThrow();

  v38 = v0[1];

  return v38();
}

uint64_t sub_2272E3AD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2272E3AF0, 0, 0);
}

uint64_t sub_2272E3AF0()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for InferenceProvider();
  v3 = *__swift_project_boxed_opaque_existential_0((v1 + *(v2 + 20)), *(v1 + *(v2 + 20) + 24));
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_226FCADF8;

  return sub_226EA0808();
}

uint64_t sub_2272E3B9C(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2272E3BBC, 0, 0);
}

uint64_t sub_2272E3BBC()
{
  v1 = *(v0 + 40);
  v2 = (v1 + *(type metadata accessor for InferenceProvider() + 32));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v3);
  v5 = *(v4 + 24);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  *v7 = v0;
  v7[1] = sub_2272E3D30;

  return (v10)(v0 + 16, sub_2272EA868, 0, v8, v3, v4);
}

uint64_t sub_2272E3D30()
{
  v2 = *(*v1 + 48);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_2272E3EC8;
  }

  else
  {
    v3 = sub_2272E3E48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2272E3E48()
{
  if (v0[3])
  {
    v1 = v0[2];
  }

  else
  {
  }

  v2 = v0[4];
  sub_227662AA0();
  v3 = v0[1];

  return v3();
}

uint64_t sub_2272E3EC8()
{

  v1 = *(v0 + 32);
  sub_227662AA0();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2272E3F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_2276627D0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_227668F90();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_22766B390();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272E40B4, 0, 0);
}

uint64_t sub_2272E40B4()
{
  v34 = v0;
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = v0[3];
  sub_22766A680();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_22766B380();
  v7 = sub_22766C880();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[12];
  v9 = v0[13];
  v12 = v0[10];
  v11 = v0[11];
  v14 = v0[8];
  v13 = v0[9];
  if (v8)
  {
    v32 = v0[11];
    v16 = v0[6];
    v15 = v0[7];
    log = v6;
    v17 = v0[5];
    v28 = v0[8];
    v18 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33 = v30;
    *v18 = 136315138;
    v31 = v9;
    sub_227668F40();
    sub_2272F2064(&unk_28139BD90, MEMORY[0x277CC95F0]);
    v19 = sub_22766D140();
    v27 = v7;
    v21 = v20;
    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v28);
    v22 = sub_226E97AE8(v19, v21, &v33);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_226E8E000, log, v27, "[Inference] [%s] Catalog query request received.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v18, -1, -1);

    (*(v10 + 8))(v31, v32);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);
  }

  v23 = swift_task_alloc();
  v0[14] = v23;
  *v23 = v0;
  v23[1] = sub_2272E435C;
  v24 = v0[4];
  v25 = v0[2];

  return sub_2272E44C8(v25);
}

uint64_t sub_2272E435C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;

  v7 = v4[13];
  v8 = v4[10];
  v9 = v4[7];

  v11 = *(v6 + 8);
  if (!v1)
  {
    v10 = a1;
  }

  return v11(v10);
}

uint64_t sub_2272E44C8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC968, qword_22767F860) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = sub_227662D00();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = sub_227666B60();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = sub_227663040();
  v2[12] = v10;
  v11 = *(v10 - 8);
  v2[13] = v11;
  v12 = *(v11 + 64) + 15;
  v2[14] = swift_task_alloc();
  v13 = sub_227665850();
  v2[15] = v13;
  v14 = *(v13 - 8);
  v2[16] = v14;
  v15 = *(v14 + 64) + 15;
  v2[17] = swift_task_alloc();
  v16 = sub_227663010();
  v2[18] = v16;
  v17 = *(v16 - 8);
  v2[19] = v17;
  v2[20] = *(v17 + 64);
  v2[21] = swift_task_alloc();
  v18 = sub_227662FA0();
  v2[22] = v18;
  v19 = *(v18 - 8);
  v2[23] = v19;
  v20 = *(v19 + 64) + 15;
  v2[24] = swift_task_alloc();
  v21 = type metadata accessor for InferenceProvider();
  v2[25] = v21;
  v22 = *(v21 - 8);
  v2[26] = v22;
  v2[27] = *(v22 + 64);
  v2[28] = swift_task_alloc();
  v23 = sub_227663FA0();
  v2[29] = v23;
  v24 = *(v23 - 8);
  v2[30] = v24;
  v25 = *(v24 + 64) + 15;
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272E4854, 0, 0);
}

uint64_t sub_2272E4854()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 32);
  v5 = *(*(v0 + 200) + 32);
  *(v0 + 304) = v5;
  v6 = *(v4 + v5 + 24);
  v7 = *(v4 + v5 + 32);
  __swift_project_boxed_opaque_existential_0((v4 + v5), v6);
  sub_2272F1D58(v4, v1, type metadata accessor for InferenceProvider);
  v8 = *(v3 + 80);
  *(v0 + 308) = v8;
  v9 = (v8 + 16) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 256) = v10;
  sub_2272F1DC0(v1, v10 + v9, type metadata accessor for InferenceProvider);
  v11 = *(v7 + 24);
  v17 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v0 + 264) = v13;
  *v13 = v0;
  v13[1] = sub_2272E4A30;
  v14 = *(v0 + 248);
  v15 = *(v0 + 232);

  return (v17)(v14, sub_2272F2158, v10, v15, v6, v7);
}

uint64_t sub_2272E4A30()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = sub_2272E500C;
  }

  else
  {
    v5 = *(v2 + 256);

    v4 = sub_2272E4B4C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2272E4B4C()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 176);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = sub_227663E90();
  (*(v2 + 8))(v1, v3);
  sub_227662FF0();
  v10 = sub_227662F90();
  v11 = *(v5 + 8);
  v11(v4, v6);
  v49 = sub_2272E9194(v10, v9);

  sub_227662FF0();
  v12 = sub_227662F80();
  v11(v4, v6);
  v48 = sub_2272E9194(v12, v9);

  v13 = sub_227662FD0();
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = *(v0 + 128);
    v16 = *(v0 + 104);
    v56 = MEMORY[0x277D84F90];
    sub_226F203A8(0, v14, 0);
    v17 = v56;
    v18 = *(v16 + 16);
    v16 += 16;
    v19 = v13 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v52 = *(v16 + 56);
    v54 = v18;
    v20 = (v16 - 8);
    do
    {
      v21 = *(v0 + 136);
      v22 = *(v0 + 112);
      v23 = *(v0 + 96);
      v54(v22, v19, v23);
      sub_227663030();
      sub_227663020();
      sub_227665860();
      (*v20)(v22, v23);
      v25 = *(v56 + 16);
      v24 = *(v56 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_226F203A8(v24 > 1, v25 + 1, 1);
      }

      v26 = *(v0 + 136);
      v27 = *(v0 + 120);
      *(v56 + 16) = v25 + 1;
      (*(v15 + 32))(v56 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v25, v26, v27);
      v19 += v52;
      --v14;
    }

    while (v14);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v28 = *(v0 + 308);
  v29 = *(v0 + 224);
  v30 = *(v0 + 160);
  v31 = *(v0 + 168);
  v47 = *(v0 + 216);
  v33 = *(v0 + 144);
  v32 = *(v0 + 152);
  v34 = *(v0 + 24);
  v35 = *(v0 + 32);
  v36 = (v35 + *(v0 + 304));
  v55 = v36[3];
  v50 = v29;
  v53 = v36[4];
  __swift_project_boxed_opaque_existential_0(v36, v55);
  (*(v32 + 16))(v31, v34, v33);
  sub_2272F1D58(v35, v29, type metadata accessor for InferenceProvider);
  v37 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v38 = (v30 + v28 + v37) & ~v28;
  v39 = (v47 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *(v0 + 280) = v41;
  (*(v32 + 32))(v41 + v37, v31, v33);
  sub_2272F1DC0(v50, v41 + v38, type metadata accessor for InferenceProvider);
  *(v41 + v39) = v48;
  *(v41 + v40) = v49;
  *(v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;
  v42 = *(v53 + 24);
  v51 = (v42 + *v42);
  v43 = v42[1];
  v44 = swift_task_alloc();
  *(v0 + 288) = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC970, qword_227675810);
  *v44 = v0;
  v44[1] = sub_2272E50F8;

  return (v51)(v0 + 16, sub_2272F1C34, v41, v45, v55, v53);
}

uint64_t sub_2272E500C()
{
  v1 = v0[32];

  v2 = v0[34];
  v3 = v0[31];
  v4 = v0[28];
  v5 = v0[24];
  v6 = v0[21];
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[5];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2272E50F8()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v7 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = sub_2272E552C;
  }

  else
  {
    v5 = *(v2 + 280);

    v4 = sub_2272E5214;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2272E5214()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[2];
  v6 = *(v3 + 56);
  v5 = v3 + 56;
  v4 = v6;
  v7 = -1;
  v8 = -1 << *(v0[2] + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  v36 = (v2 + 48);
  v33 = v0[7];
  v34 = (v2 + 32);
  v38 = v0[2];

  v12 = 0;
  v35 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = v12;
    if (!v9)
    {
      break;
    }

LABEL_8:
    v14 = v0[11];
    v15 = v0[9];
    v17 = v0[5];
    v16 = v0[6];
    v18 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    (*(v1 + 16))(v14, *(v38 + 48) + *(v1 + 72) * (v18 | (v12 << 6)), v15);
    sub_2273AA468(v17);
    (*(v1 + 8))(v14, v15);
    if ((*v36)(v17, 1, v16) == 1)
    {
      result = sub_226E97D1C(v0[5], &qword_27D7BC968, qword_22767F860);
    }

    else
    {
      v19 = *v34;
      (*v34)(v0[8], v0[5], v0[6]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_2273A6A64(0, *(v35 + 2) + 1, 1, v35);
      }

      v21 = *(v35 + 2);
      v20 = *(v35 + 3);
      if (v21 >= v20 >> 1)
      {
        v35 = sub_2273A6A64(v20 > 1, v21 + 1, 1, v35);
      }

      v22 = v0[8];
      v23 = v0[6];
      *(v35 + 2) = v21 + 1;
      result = v19(&v35[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v21], v22, v23);
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v5 + 8 * v12);
    ++v13;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  v24 = v0[31];
  v25 = v0[28];
  v26 = v0[24];
  v27 = v0[21];
  v28 = v0[17];
  v29 = v0[14];
  v30 = v0[11];
  v31 = v0[8];
  v37 = v0[5];

  v32 = v0[1];

  return v32(v35);
}

uint64_t sub_2272E552C()
{
  v1 = v0[35];

  v2 = v0[37];
  v3 = v0[31];
  v4 = v0[28];
  v5 = v0[24];
  v6 = v0[21];
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[5];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2272E5618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *(*(sub_227662E90() - 8) + 64) + 15;
  v7[9] = swift_task_alloc();
  v9 = *(*(sub_227662C90() - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v10 = type metadata accessor for WorkoutPlanScheduleResult();
  v7[11] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v7[12] = swift_task_alloc();
  v12 = sub_2276627D0();
  v7[13] = v12;
  v13 = *(v12 - 8);
  v7[14] = v13;
  v14 = *(v13 + 64) + 15;
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v15 = sub_227668F90();
  v7[17] = v15;
  v16 = *(v15 - 8);
  v7[18] = v16;
  v17 = *(v16 + 64) + 15;
  v7[19] = swift_task_alloc();
  v18 = sub_22766B390();
  v7[20] = v18;
  v19 = *(v18 - 8);
  v7[21] = v19;
  v20 = *(v19 + 64) + 15;
  v7[22] = swift_task_alloc();
  v21 = sub_227662CA0();
  v7[23] = v21;
  v22 = *(v21 - 8);
  v7[24] = v22;
  v23 = *(v22 + 64) + 15;
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v24 = sub_227662C60();
  v7[27] = v24;
  v25 = *(v24 - 8);
  v7[28] = v25;
  v26 = *(v25 + 64) + 15;
  v7[29] = swift_task_alloc();
  v27 = sub_2276688C0();
  v7[30] = v27;
  v28 = *(v27 - 8);
  v7[31] = v28;
  v29 = *(v28 + 64) + 15;
  v7[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272E5950, 0, 0);
}

uint64_t sub_2272E5950()
{
  v65 = v0;
  v1 = v0[32];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v61 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[23];
  v8 = v0[3];
  sub_227662F30();
  sub_226FFF5EC(v1);
  (*(v3 + 8))(v2, v61);
  sub_227662F40();
  (*(v5 + 32))(v6, v4, v7);
  v9 = (*(v5 + 88))(v6, v7);
  if (v9 == *MEMORY[0x277D494D8])
  {
    v10 = 1;
    goto LABEL_8;
  }

  if (v9 != *MEMORY[0x277D494E0])
  {
    if (v9 == *MEMORY[0x277D494E8])
    {
      v10 = 2;
      goto LABEL_8;
    }

    (*(v0[24] + 8))(v0[25], v0[23]);
  }

  v10 = 0;
LABEL_8:
  v62 = v10;
  v11 = v0[22];
  v13 = v0[18];
  v12 = v0[19];
  v14 = v0[17];
  v15 = v0[4];
  sub_22766A680();
  (*(v13 + 16))(v12, v15, v14);
  v16 = sub_22766B380();
  v17 = sub_22766C880();
  v18 = os_log_type_enabled(v16, v17);
  v20 = v0[21];
  v19 = v0[22];
  v22 = v0[19];
  v21 = v0[20];
  v23 = v0[17];
  v24 = v0[18];
  if (v18)
  {
    v60 = v0[20];
    v25 = v0[16];
    log = v16;
    v27 = v0[13];
    v26 = v0[14];
    v56 = v17;
    v28 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v63 = v57;
    *v28 = 136315394;
    v59 = v19;
    sub_227668F40();
    sub_2272F2064(&unk_28139BD90, MEMORY[0x277CC95F0]);
    v55 = v20;
    v29 = v27;
    v30 = sub_22766D140();
    v32 = v31;
    (*(v26 + 8))(v25, v29);
    (*(v24 + 8))(v22, v23);
    v33 = sub_226E97AE8(v30, v32, &v63);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    v34 = sub_227665F30();
    v36 = sub_226E97AE8(v34, v35, &v63);

    *(v28 + 14) = v36;
    _os_log_impl(&dword_226E8E000, log, v56, "[Inference] [%s] Schedule generator called for scaffold %s.", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v57, -1, -1);
    MEMORY[0x22AA9A450](v28, -1, -1);

    (*(v55 + 8))(v59, v60);
  }

  else
  {

    (*(v24 + 8))(v22, v23);
    (*(v20 + 8))(v19, v21);
  }

  v37 = v0[32];
  v38 = v0[15];
  v39 = v0[16];
  v40 = v0[13];
  v41 = v0[14];
  v42 = v0[4];
  v43 = v0[5];
  v44 = v0[3];
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_22766CE20();

  v63 = 0xD00000000000001BLL;
  v64 = 0x800000022769D1D0;
  sub_227668F40();
  sub_2272F2064(&unk_28139BD90, MEMORY[0x277CC95F0]);
  v45 = sub_22766D140();
  MEMORY[0x22AA98450](v45);

  v46 = *(v41 + 8);
  v0[33] = v46;
  v0[34] = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v46(v39, v40);
  sub_2272ED864(v63, v64, v37, v43);

  sub_227662F20();
  v47 = swift_task_alloc();
  v0[35] = v47;
  *v47 = v0;
  v47[1] = sub_2272E5E50;
  v48 = v0[32];
  v49 = v0[15];
  v50 = v0[12];
  v51 = v0[7];
  v52 = v0[8];
  v53 = v0[6];

  return sub_2272E6240(v50, v48, v49, v62, v51, v52);
}

uint64_t sub_2272E5E50()
{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 264);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 288) = v0;

  v4(v5, v6);
  if (v0)
  {
    v7 = sub_2272E6134;
  }

  else
  {
    v7 = sub_2272E5FD0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2272E5FD0()
{
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v11 = v0[26];
  v12 = v0[25];
  v13 = v0[22];
  v14 = v0[19];
  v15 = v0[16];
  v16 = v0[15];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[2];
  v8 = v5 + *(v0[11] + 20);
  sub_22735BF38(v0[10]);
  sub_22739FB64(v6);
  sub_227662F50();
  sub_2272F1E28(v5, type metadata accessor for WorkoutPlanScheduleResult);
  (*(v1 + 8))(v2, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2272E6134()
{
  v1 = v0[29];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[22];
  v5 = v0[19];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[12];
  v12 = v0[10];
  v13 = v0[9];
  (*(v0[31] + 8))(v0[32], v0[30]);

  v9 = v0[1];
  v10 = v0[36];

  return v9();
}

uint64_t sub_2272E6240(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = v6;
  *(v7 + 26) = a4;
  *(v7 + 64) = a3;
  *(v7 + 72) = a5;
  *(v7 + 48) = a1;
  *(v7 + 56) = a2;
  v8 = sub_22766B390();
  *(v7 + 96) = v8;
  v9 = *(v8 - 8);
  *(v7 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  v11 = sub_227664EC0();
  *(v7 + 136) = v11;
  v12 = *(v11 - 8);
  *(v7 + 144) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  v14 = sub_227668B10();
  *(v7 + 184) = v14;
  v15 = *(v14 - 8);
  *(v7 + 192) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 200) = swift_task_alloc();
  v17 = sub_227668240();
  *(v7 + 208) = v17;
  v18 = *(v17 - 8);
  *(v7 + 216) = v18;
  v19 = *(v18 + 64) + 15;
  *(v7 + 224) = swift_task_alloc();
  v20 = *(*(sub_2276639D0() - 8) + 64) + 15;
  *(v7 + 232) = swift_task_alloc();
  v21 = type metadata accessor for InferenceProvider();
  *(v7 + 240) = v21;
  v22 = *(v21 - 8);
  *(v7 + 248) = v22;
  *(v7 + 256) = *(v22 + 64);
  *(v7 + 264) = swift_task_alloc();
  v23 = sub_227663FA0();
  *(v7 + 272) = v23;
  v24 = *(v23 - 8);
  *(v7 + 280) = v24;
  v25 = *(v24 + 64) + 15;
  *(v7 + 288) = swift_task_alloc();
  v26 = sub_227667370();
  *(v7 + 296) = v26;
  v27 = *(v26 - 8);
  *(v7 + 304) = v27;
  v28 = *(v27 + 64) + 15;
  *(v7 + 312) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272E65A4, 0, 0);
}