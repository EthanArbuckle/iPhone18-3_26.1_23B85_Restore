void sub_22F09B544(uint64_t a1, unsigned __int8 a2, dispatch_group_t group)
{
  if (*(a1 + 8) == 1)
  {
    v5 = *a1;
    if (qword_280CBDBD8 != -1)
    {
      swift_once();
    }

    v6 = sub_22F0D0A1C();
    __swift_project_value_buffer(v6, qword_280CBDBE0);
    v7 = v5;
    v8 = sub_22F0D09FC();
    v9 = sub_22F0D123C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v31 = v11;
      *v10 = 136315394;
      if (a2 > 4u)
      {
        v20 = 0x7373654D64616572;
        v21 = 0xEB00000000656761;
        v22 = 0xEA00000000006C6CLL;
        v23 = 0x614364657373696DLL;
        if (a2 != 8)
        {
          v23 = 0x7261646E656C6163;
          v22 = 0xE800000000000000;
        }

        if (a2 != 7)
        {
          v20 = v23;
          v21 = v22;
        }

        v24 = 0x617453646C696863;
        v25 = 0xEA00000000006574;
        if (a2 != 5)
        {
          v24 = 0x654D646165726E75;
          v25 = 0xED00006567617373;
        }

        if (a2 <= 6u)
        {
          v18 = v24;
        }

        else
        {
          v18 = v20;
        }

        if (a2 <= 6u)
        {
          v19 = v25;
        }

        else
        {
          v19 = v21;
        }
      }

      else
      {
        v12 = 0xEF7974696C696261;
        v13 = 0x6C69617641646E64;
        v14 = 0xE800000000000000;
        v15 = 0x6E6F697461636F6CLL;
        v16 = 0xEF74736575716552;
        v17 = 0x7975426F546B7361;
        if (a2 != 3)
        {
          v17 = 0xD000000000000011;
          v16 = 0x800000022F0DC350;
        }

        if (a2 != 2)
        {
          v15 = v17;
          v14 = v16;
        }

        if (a2)
        {
          v13 = 0x74536E6F69746F6DLL;
          v12 = 0xEB00000000657461;
        }

        if (a2 <= 1u)
        {
          v18 = v13;
        }

        else
        {
          v18 = v15;
        }

        if (a2 <= 1u)
        {
          v19 = v12;
        }

        else
        {
          v19 = v14;
        }
      }

      v26 = sub_22F00A560(v18, v19, &v31);

      *(v10 + 4) = v26;
      *(v10 + 12) = 2080;
      swift_getErrorValue();
      v27 = sub_22F0D192C();
      v29 = v28;
      sub_22F00CED8(v5, 1);
      v30 = sub_22F00A560(v27, v29, &v31);

      *(v10 + 14) = v30;
      _os_log_impl(&dword_22EFE1000, v8, v9, "%s event error: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v11, -1, -1);
      MEMORY[0x2318FE8B0](v10, -1, -1);
    }

    else
    {

      sub_22F00CED8(v5, 1);
    }
  }

  dispatch_group_leave(group);
}

uint64_t sub_22F09B8A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_22F0CFFAC();
  v3 = swift_unknownObjectRetain();
  v2(v3);
  sub_22F0D00CC();

  return swift_unknownObjectRelease();
}

uint64_t BiomeStreamListener.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t BiomeStreamReader.init(statusType:readerStream:)(unsigned __int8 *a1, uint64_t a2)
{
  v5 = sub_22F0D126C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_22F0D0A6C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_22F0D127C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a1) = *a1;
  *(v2 + 24) = a2;
  v26 = sub_22F033250();
  v27 = a2;
  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  swift_unknownObjectRetain();
  sub_22F0D152C();
  MEMORY[0x2318FD2C0](0xD000000000000010, 0x800000022F0DD990);
  MEMORY[0x2318FD2C0](46, 0xE100000000000000);
  HIDWORD(v24) = a1;
  sub_22F032B24(a1);
  MEMORY[0x2318FD2C0](0x722E65756575715FLL, 0xED00007265646165);
  (*(v10 + 104))(v13, *MEMORY[0x277D85268], v9);
  sub_22F0D0A5C();
  v28[0] = MEMORY[0x277D84F90];
  sub_22F09D8CC(&qword_280CBEC78, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1E90, qword_22F0DA870);
  sub_22F08E6A8(&qword_280CBEC80, &qword_27DAA1E90, qword_22F0DA870);
  sub_22F0D13EC();
  v14 = v25;
  *(v14 + 16) = sub_22F0D129C();
  if (qword_280CBDBD8 != -1)
  {
    swift_once();
  }

  v15 = sub_22F0D0A1C();
  __swift_project_value_buffer(v15, qword_280CBDBE0);
  v16 = sub_22F0D09FC();
  v17 = sub_22F0D124C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28[0] = v19;
    *v18 = 136315138;
    if (SHIDWORD(v24) > 4)
    {
      if (SHIDWORD(v24) <= 6)
      {
        if (HIDWORD(v24) == 5)
        {
          v21 = 0x617453646C696863;
          v20 = 0xEA00000000006574;
        }

        else
        {
          v20 = 0xED00006567617373;
          v21 = 0x654D646165726E75;
        }
      }

      else if (HIDWORD(v24) == 7)
      {
        v21 = 0x7373654D64616572;
        v20 = 0xEB00000000656761;
      }

      else if (HIDWORD(v24) == 8)
      {
        v20 = 0xEA00000000006C6CLL;
        v21 = 0x614364657373696DLL;
      }

      else
      {
        v20 = 0xE800000000000000;
        v21 = 0x7261646E656C6163;
      }
    }

    else if (SHIDWORD(v24) <= 1)
    {
      if (HIDWORD(v24))
      {
        v20 = 0xEB00000000657461;
        v21 = 0x74536E6F69746F6DLL;
      }

      else
      {
        v20 = 0xEF7974696C696261;
        v21 = 0x6C69617641646E64;
      }
    }

    else if (HIDWORD(v24) == 2)
    {
      v20 = 0xE800000000000000;
      v21 = 0x6E6F697461636F6CLL;
    }

    else if (HIDWORD(v24) == 3)
    {
      v20 = 0xEF74736575716552;
      v21 = 0x7975426F546B7361;
    }

    else
    {
      v20 = 0x800000022F0DC350;
      v21 = 0xD000000000000011;
    }

    v22 = sub_22F00A560(v21, v20, v28);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_22EFE1000, v16, v17, "BiomeStreamReader for %s init", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x2318FE8B0](v19, -1, -1);
    MEMORY[0x2318FE8B0](v18, -1, -1);
  }

  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_22F09BEC4(_BYTE *a1, uint64_t a2)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = v2;
  *(v3 + 56) = *a1;
  return MEMORY[0x2822009F8](sub_22F09BEEC, 0, 0);
}

uint64_t sub_22F09BEEC()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v3;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1150, &unk_22F0D59C0);
  *v6 = v0;
  v6[1] = sub_22F09C008;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000021, 0x800000022F0DF370, sub_22F09D5C8, v4, v7);
}

uint64_t sub_22F09C008()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22F09C120, 0, 0);
}

uint64_t sub_22F09C138(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1E60, &qword_22F0D5A58);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15[-v10];
  v16 = a3;
  (*(v8 + 16))(&v15[-v10], a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_22F09C298(&v16, a4, sub_22F00CEE4, v13);
  return sub_22F0D00CC();
}

uint64_t sub_22F09C298(unsigned __int8 *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v50 = a4;
  v51 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v48 - v8;
  v10 = sub_22F0D05BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - v16;
  v18 = *a1;
  sub_22F0D05AC();
  v19 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v6 + 8))(v9, v5);
  sub_22F0D055C();
  v20 = *(v11 + 8);
  v21 = v49;
  v20(v15, v10);
  v22 = *(v21 + 24);
  if (v22)
  {
    sub_22F0D04CC();
    v23 = [v22 publisherFromStartTime_];
    v52 = v18;
    objc_opt_self();
    v24 = swift_dynamicCastObjCClassUnconditional();
    swift_unknownObjectRetain();
    sub_22F09C7FC(&v52, v24, v51, v50);
    swift_unknownObjectRelease_n();
    v25 = v17;
  }

  else
  {
    v26 = v18;
    if (qword_280CBDBD8 != -1)
    {
      swift_once();
    }

    v27 = sub_22F0D0A1C();
    __swift_project_value_buffer(v27, qword_280CBDBE0);
    v28 = sub_22F0D09FC();
    v29 = sub_22F0D123C();
    if (os_log_type_enabled(v28, v29))
    {
      v49 = v10;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v53 = v31;
      *v30 = 136315138;
      if (v26 > 4)
      {
        v40 = 0x7373654D64616572;
        v41 = 0xEB00000000656761;
        v42 = 0xEA00000000006C6CLL;
        v43 = 0x614364657373696DLL;
        if (v26 != 8)
        {
          v43 = 0x7261646E656C6163;
          v42 = 0xE800000000000000;
        }

        if (v26 != 7)
        {
          v40 = v43;
          v41 = v42;
        }

        v44 = 0x617453646C696863;
        v45 = 0xEA00000000006574;
        if (v26 != 5)
        {
          v44 = 0x654D646165726E75;
          v45 = 0xED00006567617373;
        }

        if (v26 <= 6)
        {
          v38 = v44;
        }

        else
        {
          v38 = v40;
        }

        if (v26 <= 6)
        {
          v39 = v45;
        }

        else
        {
          v39 = v41;
        }
      }

      else
      {
        v32 = 0xEF7974696C696261;
        v33 = 0x6C69617641646E64;
        v34 = 0xE800000000000000;
        v35 = 0x6E6F697461636F6CLL;
        v36 = 0xEF74736575716552;
        v37 = 0x7975426F546B7361;
        if (v26 != 3)
        {
          v37 = 0xD000000000000011;
          v36 = 0x800000022F0DC350;
        }

        if (v26 != 2)
        {
          v35 = v37;
          v34 = v36;
        }

        if (v26)
        {
          v33 = 0x74536E6F69746F6DLL;
          v32 = 0xEB00000000657461;
        }

        if (v26 <= 1)
        {
          v38 = v33;
        }

        else
        {
          v38 = v35;
        }

        if (v26 <= 1)
        {
          v39 = v32;
        }

        else
        {
          v39 = v34;
        }
      }

      v46 = sub_22F00A560(v38, v39, &v53);

      *(v30 + 4) = v46;
      _os_log_impl(&dword_22EFE1000, v28, v29, "%s serious errors, missing reader string!", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x2318FE8B0](v31, -1, -1);
      MEMORY[0x2318FE8B0](v30, -1, -1);

      v10 = v49;
      v51(MEMORY[0x277D84F90]);
    }

    else
    {

      v51(MEMORY[0x277D84F90]);
    }

    v25 = v17;
  }

  return (v20)(v25, v10);
}

void sub_22F09C7FC(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = *a1;
  v11 = swift_allocObject();
  v12 = *(v9 + 80);
  *(v11 + 16) = sub_22F0D0ABC();
  LOBYTE(v20) = v10;
  v13 = _s6People0A9AnalyticsC22collectEventsStopwatchyAC9StopWatchCAA10StatusTypeOFZ_0(&v20);
  v14 = [a2 withBookmark_];
  v15 = swift_allocObject();
  v15[2] = v5;
  v15[3] = v13;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = v11;
  v24 = sub_22F09D5D8;
  v25 = v15;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_22F09A628;
  v23 = &block_descriptor_16;
  v16 = _Block_copy(&v20);
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0D00CC();
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  *(v17 + 24) = v5;
  *(v17 + 32) = v11;
  v24 = sub_22F09D5E8;
  v25 = v17;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_22F09B8A8;
  v23 = &block_descriptor_22_0;
  v18 = _Block_copy(&v20);
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0D00CC();
  v19 = [v14 sinkWithCompletion:v16 receiveInput:v18];
  _Block_release(v18);
  _Block_release(v16);
  sub_22F0D00CC();
  sub_22F0D00CC();
}

uint64_t sub_22F09CA4C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = sub_22F0D0A4C();
  v25 = *(v12 - 8);
  v13 = *(v25 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22F0D0A6C();
  v16 = *(v24 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v24);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a2[2];
  v20 = swift_allocObject();
  v20[2] = *(v11 + 80);
  v20[3] = a3;
  v20[4] = a4;
  v20[5] = a5;
  v20[6] = a6;
  aBlock[4] = sub_22F09D914;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F009868;
  aBlock[3] = &block_descriptor_36;
  v21 = _Block_copy(aBlock);
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0D0A5C();
  v26 = MEMORY[0x277D84F90];
  sub_22F09D8CC(&qword_27DAA1E70, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1398, &qword_22F0D61C8);
  sub_22F08E6A8(&qword_27DAA1E80, &qword_27DAA1398, &qword_22F0D61C8);
  sub_22F0D13EC();
  MEMORY[0x2318FD7C0](0, v19, v15, v21);
  _Block_release(v21);
  (*(v25 + 8))(v15, v12);
  (*(v16 + 8))(v19, v24);
  return sub_22F0D00CC();
}

uint64_t sub_22F09CD4C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  sub_22F08F590();
  swift_beginAccess();
  v6 = *(a4 + 16);
  sub_22F0CFF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1158, &unk_22F0DA960);
  v7 = sub_22F0D167C();

  v8 = _s6People011BMStoreDataA0O9logicSortySaySo0bC0_pGAFFZ_0(v7);

  a2(v8);
}

void sub_22F09CE14(uint64_t a1, unsigned __int8 a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = sub_22F0D0A4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22F0D0A6C();
  isa = v14[-1].isa;
  v50 = v14;
  v15 = *(isa + 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18 && (v19 = [v18 eventBody]) != 0)
  {
    v20 = v19;
    v48 = a3[2];
    v21 = swift_allocObject();
    v21[2] = *(v8 + 80);
    v21[3] = a4;
    v21[4] = v20;
    aBlock[4] = sub_22F09D8C0;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F009868;
    aBlock[3] = &block_descriptor_30;
    v47 = _Block_copy(aBlock);
    sub_22F0CFFAC();
    swift_unknownObjectRetain();
    sub_22F0D0A5C();
    v52 = MEMORY[0x277D84F90];
    sub_22F09D8CC(&qword_27DAA1E70, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1398, &qword_22F0D61C8);
    sub_22F08E6A8(&qword_27DAA1E80, &qword_27DAA1398, &qword_22F0D61C8);
    sub_22F0D13EC();
    v22 = v47;
    MEMORY[0x2318FD7C0](0, v17, v13, v47);
    swift_unknownObjectRelease();
    _Block_release(v22);
    swift_unknownObjectRelease();
    (*(v10 + 8))(v13, v9);
    (*(isa + 1))(v17, v50);
    sub_22F0D00CC();
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_280CBDBD8 != -1)
    {
      swift_once();
    }

    v23 = sub_22F0D0A1C();
    __swift_project_value_buffer(v23, qword_280CBDBE0);
    swift_unknownObjectRetain();
    v50 = sub_22F0D09FC();
    v24 = sub_22F0D123C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v50, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136315394;
      if (a2 > 4u)
      {
        v36 = 0x7373654D64616572;
        v37 = 0xEB00000000656761;
        v38 = 0xEA00000000006C6CLL;
        v39 = 0x614364657373696DLL;
        if (a2 != 8)
        {
          v39 = 0x7261646E656C6163;
          v38 = 0xE800000000000000;
        }

        if (a2 != 7)
        {
          v36 = v39;
          v37 = v38;
        }

        v40 = 0x617453646C696863;
        v41 = 0xEA00000000006574;
        if (a2 != 5)
        {
          v40 = 0x654D646165726E75;
          v41 = 0xED00006567617373;
        }

        if (a2 <= 6u)
        {
          v33 = v40;
        }

        else
        {
          v33 = v36;
        }

        if (a2 <= 6u)
        {
          v34 = v41;
        }

        else
        {
          v34 = v37;
        }
      }

      else
      {
        v27 = 0xEF7974696C696261;
        v28 = 0x6C69617641646E64;
        v29 = 0xE800000000000000;
        v30 = 0x6E6F697461636F6CLL;
        v31 = 0xEF74736575716552;
        v32 = 0x7975426F546B7361;
        if (a2 != 3)
        {
          v32 = 0xD000000000000011;
          v31 = 0x800000022F0DC350;
        }

        if (a2 != 2)
        {
          v30 = v32;
          v29 = v31;
        }

        if (a2)
        {
          v28 = 0x74536E6F69746F6DLL;
          v27 = 0xEB00000000657461;
        }

        if (a2 <= 1u)
        {
          v33 = v28;
        }

        else
        {
          v33 = v30;
        }

        if (a2 <= 1u)
        {
          v34 = v27;
        }

        else
        {
          v34 = v29;
        }
      }

      v42 = sub_22F00A560(v33, v34, aBlock);

      *(v25 + 4) = v42;
      *(v25 + 12) = 2080;
      v52 = a1;
      swift_unknownObjectRetain();
      v43 = sub_22F0D0CFC();
      v45 = sub_22F00A560(v43, v44, aBlock);

      *(v25 + 14) = v45;
      _os_log_impl(&dword_22EFE1000, v50, v24, "%s event wrong: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v26, -1, -1);
      MEMORY[0x2318FE8B0](v25, -1, -1);
    }

    else
    {
      v35 = v50;
    }
  }
}

uint64_t sub_22F09D48C()
{
  swift_beginAccess();
  sub_22F0D103C();
  swift_unknownObjectRetain();
  sub_22F0D100C();
  return swift_endAccess();
}

uint64_t BiomeStreamReader.deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t BiomeStreamReader.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22F0CFFAC();
}

uint64_t sub_22F09D5B8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  return sub_22F09A690(a1, *(v1 + 24));
}

uint64_t dispatch thunk of BiomeStreamReader.collectEvents(statusType:maxAge:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 112);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22F01F1CC;

  return v10(a1, a2);
}

uint64_t objectdestroy_18Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);
  sub_22F0D00CC();
  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_22F09D8C0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  return sub_22F09D48C();
}

uint64_t sub_22F09D8CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22F09D970()
{
  sub_22F0D0D5C();
}

uint64_t sub_22F09DA8C()
{
  sub_22F0D0D5C();
}

uint64_t sub_22F09DC44()
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F09DD3C()
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F09DE6C()
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F09DF68(uint64_t a1, char a2)
{
  sub_22F0D199C();
  if (a2)
  {
    v3 = 0x3FD999999999999ALL;
  }

  else
  {
    v3 = 0x3FF0000000000000;
  }

  MEMORY[0x2318FDEF0](v3);
  return sub_22F0D19CC();
}

uint64_t AppBundleResolver.__allocating_init()()
{
  type metadata accessor for AppBundleResolver();
  result = swift_allocObject();
  *(result + 16) = sub_22F09EEDC;
  *(result + 24) = 0;
  return result;
}

uint64_t BundleAppInfo.displayName.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22F0CFF1C();
  return v1;
}

uint64_t BundleAppInfo.thumbnail.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_22F0CFF1C();
  return v1;
}

uint64_t BundleAppInfo.thumbnailImage.getter()
{
  v1 = *(v0 + 32);
  sub_22F0303BC(v1, *(v0 + 40));
  return v1;
}

People::FirstPartyApps_optional __swiftcall FirstPartyApps.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F0D174C();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FirstPartyApps.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x697261666173;
  if (v1 != 6)
  {
    v3 = 0x69746E6565726373;
  }

  v4 = 0x656D697465636166;
  if (v1 != 4)
  {
    v4 = 0x736567617373656DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x65726F7473707061;
  if (v1 != 2)
  {
    v5 = 0x6172656D6163;
  }

  if (*v0)
  {
    v2 = 0x736F746F6870;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_22F09E210(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE600000000000000;
  v6 = 0x697261666173;
  if (v2 != 6)
  {
    v6 = 0x69746E6565726373;
    v5 = 0xEA0000000000656DLL;
  }

  v7 = 0x656D697465636166;
  if (v2 != 4)
  {
    v7 = 0x736567617373656DLL;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE800000000000000;
  }

  v8 = 0xE800000000000000;
  v9 = 0x65726F7473707061;
  if (v2 != 2)
  {
    v9 = 0x6172656D6163;
    v8 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x736F746F6870;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

id sub_22F09E30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = sub_22F0D00EC();
  v11[4] = a2;
  v11[5] = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_22F09E3E8;
  v11[3] = &block_descriptor_11;
  v8 = _Block_copy(v11);
  sub_22F0CFFAC();
  v9 = [v6 dataTaskWithRequest:v7 completionHandler:v8];

  _Block_release(v8);
  sub_22F0D00CC();
  return v9;
}

uint64_t sub_22F09E3E8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    sub_22F0CFFAC();
    v9 = v6;
    v6 = sub_22F0D049C();
    v11 = v10;
  }

  else
  {
    sub_22F0CFFAC();
    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_22F00AB48(v6, v11);

  return sub_22F0D00CC();
}

uint64_t sub_22F09E4C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v36 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA20D8, &qword_22F0DACE8);
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v14 = type metadata accessor for AppBundleResolver.AppInfo();
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F0A38F4();
  sub_22F0D19EC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v33 = v17;
  v34 = a1;
  sub_22F0D043C();
  v42 = 0;
  sub_22F0A3948(&qword_27DAA20E8, MEMORY[0x277CC9260]);
  v19 = v36;
  v20 = v38;
  sub_22F0D176C();
  v21 = v19;
  v22 = v33;
  sub_22F0361C4(v21, v33);
  v41 = 1;
  sub_22F0D176C();
  sub_22F0361C4(v8, v22 + v14[5]);
  v40 = 2;
  v23 = sub_22F0D177C();
  v24 = v22;
  v25 = v34;
  v26 = (v24 + v14[6]);
  *v26 = v23;
  v26[1] = v27;
  v39 = 3;
  v28 = sub_22F0D177C();
  v30 = v29;
  (*(v37 + 8))(v13, v20);
  v31 = (v24 + v14[7]);
  *v31 = v28;
  v31[1] = v30;
  sub_22F0A3304(v24, v35);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return sub_22F0A3368(v24);
}

uint64_t sub_22F09E914()
{
  v1 = *v0;
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F09E9E0()
{
  *v0;
  *v0;
  *v0;
  sub_22F0D0D5C();
}

uint64_t sub_22F09EA98()
{
  v1 = *v0;
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F09EB60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22F0A361C();
  *a2 = result;
  return result;
}

void sub_22F09EB90(uint64_t *a1@<X8>)
{
  v2 = 0xED00003231356C72;
  v3 = 0xE900000000000065;
  v4 = 0x6D614E6B63617274;
  if (*v1 != 2)
  {
    v4 = 0x6449656C646E7562;
    v3 = 0xE800000000000000;
  }

  if (*v1)
  {
    v2 = 0xED00003030316C72;
  }

  if (*v1 <= 1u)
  {
    v5 = 0x556B726F77747261;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v3;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_22F09EC2C()
{
  v1 = 0x6D614E6B63617274;
  if (*v0 != 2)
  {
    v1 = 0x6449656C646E7562;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return 0x556B726F77747261;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_22F09ECB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22F0A361C();
  *a1 = result;
  return result;
}

uint64_t sub_22F09ECD8(uint64_t a1)
{
  v2 = sub_22F0A38F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F09ED14(uint64_t a1)
{
  v2 = sub_22F0A38F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F09ED80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22F0D188C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22F09EE08(uint64_t a1)
{
  v2 = sub_22F0A37EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F09EE44(uint64_t a1)
{
  v2 = sub_22F0A37EC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_22F09EE80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_22F0A3668(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t static AppBundleResolver.shared.getter()
{
  v0 = type metadata accessor for AppBundleResolver();

  return MEMORY[0x2821FEAF0](v0, &unk_2818EA740);
}

unint64_t sub_22F09EEDC@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() ephemeralSessionConfiguration];
  v3 = [objc_opt_self() sessionWithConfiguration:v2 delegate:0 delegateQueue:0];

  result = sub_22F0A3520();
  a1[3] = result;
  a1[4] = &off_2843D0B88;
  *a1 = v3;
  return result;
}

void sub_22F09EF98(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v49 = a4;
  v50 = a1;
  v6 = type metadata accessor for AppBundleResolver.AppInfo();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2080, &qword_22F0DAC40);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  v21 = sub_22F0D013C();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_22F0D012C();
  sub_22F0A32B0();
  sub_22F0D011C();
  v46 = v20;
  v47 = v18;
  v48 = v11;
  v50 = 0;
  sub_22F0D00CC();
  v33 = v51;
  v34 = v51[2];
  if (v34)
  {
    v35 = 0;
    while (v35 < *(v33 + 16))
    {
      sub_22F0A3304(v33 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v35, v13);
      v36 = &v13[*(v6 + 28)];
      v37 = *v36 == a2 && *(v36 + 1) == a3;
      if (v37 || (sub_22F0D188C() & 1) != 0)
      {

        v39 = v46;
        sub_22F0A33C4(v13, v46);
        v38 = 0;
        goto LABEL_17;
      }

      ++v35;
      sub_22F0A3368(v13);
      if (v34 == v35)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    swift_once();
    v24 = sub_22F0D0A1C();
    __swift_project_value_buffer(v24, qword_280CBDB98);
    v25 = v35;
    v26 = sub_22F0D09FC();
    v27 = sub_22F0D123C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v51 = v29;
      *v28 = 136315138;
      swift_getErrorValue();
      v30 = sub_22F0D192C();
      v32 = sub_22F00A560(v30, v31, &v51);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_22EFE1000, v26, v27, "icon fetch json serialize failure %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x2318FE8B0](v29, -1, -1);
      MEMORY[0x2318FE8B0](v28, -1, -1);
    }

    else
    {
    }

    v40 = v49;
    *v49 = xmmword_22F0DA970;
    v40[1] = 0u;
    v40[2] = 0u;
  }

  else
  {
LABEL_13:

    v38 = 1;
    v39 = v46;
LABEL_17:
    (*(v7 + 56))(v39, v38, 1, v6);
    v41 = v47;
    sub_22F049FF4(v39, v47, &qword_27DAA2080, &qword_22F0DAC40);
    v42 = (*(v7 + 48))(v41, 1, v6);
    v43 = v49;
    v44 = v48;
    if (v42 == 1)
    {
      sub_22F003A4C(v39, &qword_27DAA2080, &qword_22F0DAC40);
      *v43 = xmmword_22F0DA970;
      v43[1] = 0u;
      v43[2] = 0u;
    }

    else
    {
      sub_22F0A33C4(v41, v48);
      sub_22F09F444(v44, v43);
      sub_22F0A3368(v44);
      sub_22F003A4C(v39, &qword_27DAA2080, &qword_22F0DAC40);
    }
  }
}

uint64_t sub_22F09F444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  sub_22F049FF4(a1, &v22 - v9, &qword_27DAA10F8, &qword_22F0D5320);
  v11 = sub_22F0D043C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v10, 1, v11) == 1)
  {
    sub_22F003A4C(v10, &qword_27DAA10F8, &qword_22F0D5320);
    v14 = type metadata accessor for AppBundleResolver.AppInfo();
    sub_22F049FF4(a1 + *(v14 + 20), v8, &qword_27DAA10F8, &qword_22F0D5320);
    if (v13(v8, 1, v11) == 1)
    {
      sub_22F003A4C(v8, &qword_27DAA10F8, &qword_22F0D5320);
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v15 = sub_22F0D038C();
      v16 = v18;
      (*(v12 + 8))(v8, v11);
    }
  }

  else
  {
    v15 = sub_22F0D038C();
    v16 = v17;
    (*(v12 + 8))(v10, v11);
  }

  v19 = (a1 + *(type metadata accessor for AppBundleResolver.AppInfo() + 24));
  v20 = v19[1];
  *a2 = *v19;
  *(a2 + 8) = v20;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = xmmword_22F0D6620;
  return sub_22F0CFF1C();
}

uint64_t sub_22F09F66C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v156 = a3;
  v5 = sub_22F0D043C();
  v154 = *(v5 - 8);
  v155 = v5;
  v6 = *(v154 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v149 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v152 = &v148 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v150 = &v148 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v151 = &v148 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v148 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v153 = &v148 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v148 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v148 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v148 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v148 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v148 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v148 - v35;
  v159 = xmmword_22F0D6620;
  v157 = a1;
  if (a1 == 0xD000000000000012 && 0x800000022F0DF620 == a2 || (sub_22F0D188C() & 1) != 0)
  {
    type metadata accessor for DaemonConnection();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v38 = objc_opt_self();
    v39 = [v38 bundleForClass_];
    v40 = sub_22F0D031C();
    v42 = v41;

    v43 = sub_22F05AF80(v157, a2);
    if (v44 >> 60 == 15)
    {
      type metadata accessor for AppBundleResolver();
      v45 = [v38 bundleForClass_];
      v46 = sub_22F0D0C7C();
      v47 = sub_22F0D0C7C();
      v48 = [v45 URLForResource:v46 withExtension:v47];

      if (!v48)
      {
        v68 = 0xF000000000000000;
        sub_22F00AB48(0, 0xF000000000000000);

        *&v159 = 0;
        v51 = v42;
        goto LABEL_26;
      }

      sub_22F0D03EC();

      v49 = v154;
      v50 = v155;
      (*(v154 + 32))(v36, v34, v155);
      v66 = sub_22F0D044C();
      v68 = v67;
      (*(v49 + 8))(v36, v50);

      v70 = *(&v159 + 1);
      v69 = v159;
    }

    else
    {
      v66 = v43;
      v68 = v44;
      v69 = 0;
      v70 = 0xF000000000000000;
    }

    sub_22F00AB48(v69, v70);
    *&v159 = v66;
    v51 = v42;
LABEL_26:
    *(&v159 + 1) = v68;
    goto LABEL_27;
  }

  if (v157 == 0xD000000000000012 && 0x800000022F0DF640 == a2 || (sub_22F0D188C() & 1) != 0)
  {
    type metadata accessor for DaemonConnection();
    v52 = swift_getObjCClassFromMetadata();
    v53 = objc_opt_self();
    v54 = [v53 bundleForClass_];
    v55 = sub_22F0D031C();
    v153 = v56;

    v57 = sub_22F05AF80(v157, a2);
    if (v58 >> 60 == 15)
    {
      type metadata accessor for AppBundleResolver();
      v59 = [v53 bundleForClass_];
      v60 = sub_22F0D0C7C();
      v61 = sub_22F0D0C7C();
      v62 = [v59 URLForResource:v60 withExtension:v61];

      if (!v62)
      {
        v68 = 0xF000000000000000;
        sub_22F00AB48(0, 0xF000000000000000);

        *&v159 = 0;
        goto LABEL_25;
      }

      sub_22F0D03EC();

      v63 = v154;
      v64 = v28;
      v65 = v155;
      (*(v154 + 32))(v31, v64, v155);
      v99 = sub_22F0D044C();
      v68 = v100;
      (*(v63 + 8))(v31, v65);

      v102 = *(&v159 + 1);
      v101 = v159;
    }

    else
    {
      v99 = v57;
      v68 = v58;
      v101 = 0;
      v102 = 0xF000000000000000;
    }

    sub_22F00AB48(v101, v102);
    *&v159 = v99;
LABEL_25:
    v40 = v55;
    v51 = v153;
    goto LABEL_26;
  }

  if (v157 == 0xD000000000000019 && 0x800000022F0DF660 == a2 || (sub_22F0D188C() & 1) != 0)
  {
    type metadata accessor for DaemonConnection();
    v71 = swift_getObjCClassFromMetadata();
    v72 = objc_opt_self();
    v73 = [v72 bundleForClass_];
    v40 = sub_22F0D031C();
    v51 = v74;

    v75 = sub_22F05AF80(v157, a2);
    if (v76 >> 60 == 15)
    {
      type metadata accessor for AppBundleResolver();
      v77 = [v72 bundleForClass_];
      v78 = sub_22F0D0C7C();
      v79 = sub_22F0D0C7C();
      v80 = [v77 URLForResource:v78 withExtension:v79];

      if (v80)
      {
        sub_22F0D03EC();

        v81 = v154;
        v82 = v155;
        (*(v154 + 32))(v25, v22, v155);
        v119 = sub_22F0D044C();
        v68 = v120;
        (*(v81 + 8))(v25, v82);

        sub_22F00AB48(v159, *(&v159 + 1));
        *&v159 = v119;
      }

      else
      {
        v68 = 0xF000000000000000;
        sub_22F00AB48(0, 0xF000000000000000);

        *&v159 = 0;
      }
    }

    else
    {
      v98 = v75;
      v68 = v76;
      sub_22F00AB48(0, 0xF000000000000000);
      *&v159 = v98;
    }

    goto LABEL_26;
  }

  if (v157 == 0xD000000000000010 && 0x800000022F0DF680 == a2 || (sub_22F0D188C() & 1) != 0)
  {
    type metadata accessor for DaemonConnection();
    v103 = swift_getObjCClassFromMetadata();
    v104 = objc_opt_self();
    v105 = [v104 bundleForClass_];
    v40 = sub_22F0D031C();
    v51 = v106;

    v107 = sub_22F05AF80(v157, a2);
    if (v108 >> 60 == 15)
    {
      type metadata accessor for AppBundleResolver();
      v109 = [v104 bundleForClass_];
      v110 = sub_22F0D0C7C();
      v111 = sub_22F0D0C7C();
      v112 = [v109 URLForResource:v110 withExtension:v111];

      if (v112)
      {
        sub_22F0D03EC();

        v114 = v153;
        v113 = v154;
        v115 = v17;
        v116 = v155;
        (*(v154 + 32))(v153, v115, v155);
        v117 = sub_22F0D044C();
LABEL_69:
        v143 = v117;
        v68 = v118;
        (*(v113 + 8))(v114, v116);

        v145 = *(&v159 + 1);
        v144 = v159;
        goto LABEL_67;
      }

LABEL_55:
      v68 = 0xF000000000000000;
      sub_22F00AB48(0, 0xF000000000000000);

      *&v159 = 0;
      goto LABEL_26;
    }

LABEL_66:
    v143 = v107;
    v68 = v108;
    v144 = 0;
    v145 = 0xF000000000000000;
LABEL_67:
    sub_22F00AB48(v144, v145);
LABEL_68:
    *&v159 = v143;
    goto LABEL_26;
  }

  if (v157 == 0xD000000000000013 && 0x800000022F0DCC30 == a2 || (sub_22F0D188C() & 1) != 0)
  {
    type metadata accessor for DaemonConnection();
    v121 = swift_getObjCClassFromMetadata();
    v122 = objc_opt_self();
    v123 = [v122 bundleForClass_];
    v40 = sub_22F0D031C();
    v51 = v124;

    v125 = sub_22F05AF80(v157, a2);
    v127 = v155;
    if (v126 >> 60 != 15)
    {
      v134 = v125;
      v68 = v126;
      sub_22F00AB48(0, 0xF000000000000000);
      *&v159 = v134;
      goto LABEL_26;
    }

    type metadata accessor for AppBundleResolver();
    v109 = [v122 bundleForClass_];
    v128 = sub_22F0D0C7C();
    v129 = sub_22F0D0C7C();
    v130 = [v109 URLForResource:v128 withExtension:v129];

    if (v130)
    {
      v131 = v150;
      sub_22F0D03EC();

      v132 = v154;
      v133 = v151;
      (*(v154 + 32))(v151, v131, v127);
      v146 = sub_22F0D044C();
      v68 = v147;
      (*(v132 + 8))(v133, v127);

      sub_22F00AB48(v159, *(&v159 + 1));
      *&v159 = v146;
      goto LABEL_26;
    }

    goto LABEL_55;
  }

  if (v157 == 0xD000000000000016 && 0x800000022F0DD8D0 == a2 || (sub_22F0D188C() & 1) != 0 || v157 == 0xD000000000000010 && 0x800000022F0DF6A0 == a2 || (sub_22F0D188C() & 1) != 0)
  {
    type metadata accessor for DaemonConnection();
    v135 = swift_getObjCClassFromMetadata();
    v136 = objc_opt_self();
    v137 = [v136 bundleForClass_];
    v40 = sub_22F0D031C();
    v51 = v138;

    v107 = sub_22F05AF80(0xD000000000000016, 0x800000022F0DD8D0);
    v114 = v152;
    if (v108 >> 60 == 15)
    {
      type metadata accessor for AppBundleResolver();
      v109 = [v136 bundleForClass_];
      v139 = sub_22F0D0C7C();
      v140 = sub_22F0D0C7C();
      v141 = [v109 URLForResource:v139 withExtension:v140];

      if (!v141)
      {
        v68 = 0xF000000000000000;
        sub_22F00AB48(0, 0xF000000000000000);

        v143 = 0;
        goto LABEL_68;
      }

      v142 = v149;
      sub_22F0D03EC();

      v113 = v154;
      v116 = v155;
      (*(v154 + 32))(v114, v142, v155);
      v117 = sub_22F0D044C();
      goto LABEL_69;
    }

    goto LABEL_66;
  }

  v40 = 0;
  v51 = 0;
LABEL_27:
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v83 = sub_22F0D0A1C();
  __swift_project_value_buffer(v83, qword_280CBEC40);
  v84 = v159;
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  sub_22F0303BC(v84, *(&v84 + 1));
  v85 = sub_22F0D09FC();
  v86 = sub_22F0D122C();

  sub_22F00AB48(v84, *(&v84 + 1));
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v158[0] = v88;
    *v87 = 136315650;
    if (v51)
    {
      v89 = v40;
    }

    else
    {
      v89 = 7104878;
    }

    v90 = v40;
    if (v51)
    {
      v91 = v51;
    }

    else
    {
      v91 = 0xE300000000000000;
    }

    sub_22F0CFF1C();
    v92 = sub_22F00A560(v89, v91, v158);
    v40 = v90;

    *(v84 + 4) = v92;
    *(v84 + 12) = 2080;
    *(v84 + 14) = sub_22F00A560(v157, a2, v158);
    *(v84 + 22) = 2080;
    if (*(&v84 + 1) >> 60 == 15)
    {
      v93 = 1701736302;
    }

    else
    {
      v93 = 1635017060;
    }

    v94 = sub_22F00A560(v93, 0xE400000000000000, v158);

    *(v87 + 24) = v94;
    _os_log_impl(&dword_22EFE1000, v85, v86, "Fallback resolution:%s for:%s image:%s", v87, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v88, -1, -1);
    MEMORY[0x2318FE8B0](v87, -1, -1);
  }

  swift_beginAccess();
  v95 = v159;
  sub_22F0303BC(v159, *(&v159 + 1));
  result = sub_22F00AB48(v95, *(&v95 + 1));
  v97 = v156;
  *v156 = v40;
  v97[1] = v51;
  v97[2] = 0;
  v97[3] = 0;
  *(v97 + 2) = v95;
  return result;
}

uint64_t sub_22F0A0878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22F0A089C, 0, 0);
}

uint64_t sub_22F0A089C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_22F0A09A4;
  v7 = v0[2];

  return MEMORY[0x2822007B8](v7, 0, 0, 0xD000000000000017, 0x800000022F0DF6C0, sub_22F0A2D10, v4, &type metadata for BundleAppInfo);
}

uint64_t sub_22F0A09A4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22F0A0AB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2090, &qword_22F0DAC48);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_22F0A0CA4(a3, a4, sub_22F0A34A4, v13);
  return sub_22F0D00CC();
}

uint64_t sub_22F0A0C14(uint64_t *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = a1[3];
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  sub_22F0303BC(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2090, &qword_22F0DAC48);
  return sub_22F0D108C();
}

uint64_t sub_22F0A0CA4(uint64_t a1, unint64_t a2, void (*a3)(__int128 *), uint64_t a4)
{
  v102 = a3;
  v103 = a4;
  v109 = a1;
  v110 = a2;
  v96 = sub_22F0D010C();
  v95 = *(v96 - 8);
  v4 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v99 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_22F0D043C();
  v98 = *(v100 - 8);
  v6 = *(v98 + 64);
  v7 = MEMORY[0x28223BE20](v100);
  v93 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v97 = &v93 - v9;
  v10 = sub_22F0D069C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22F0D06BC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2060, &unk_22F0DA988);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v93 - v22;
  v105 = sub_22F0D021C();
  v108 = *(v105 - 8);
  v24 = *(v108 + 64);
  v25 = MEMORY[0x28223BE20](v105);
  v106 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v107 = &v93 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v93 - v29;
  v31 = objc_allocWithZone(MEMORY[0x277CCACE0]);
  v32 = sub_22F0D0C7C();
  v33 = [v31 initWithString_];

  v104 = v33;
  if (v33)
  {
    sub_22F0D01EC();
    v34 = [objc_opt_self() currentLocale];
    sub_22F0D063C();

    sub_22F0D06AC();
    (*(v16 + 8))(v19, v15);
    sub_22F0D068C();
    (*(v11 + 8))(v14, v10);
    v35 = sub_22F0D065C();
    v36 = *(v35 - 8);
    v37 = (*(v36 + 48))(v23, 1, v35);
    v101 = v30;
    if (v37 == 1)
    {
      sub_22F003A4C(v23, &qword_27DAA2060, &unk_22F0DA988);
    }

    else
    {
      sub_22F0D060C();
      (*(v36 + 8))(v23, v35);
    }

    v49 = v105;
    v48 = v106;
    v50 = v107;
    v51 = v108;
    sub_22F0D01EC();

    sub_22F0D01EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E20, &qword_22F0D4FF0);
    v52 = *(v51 + 72);
    v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_22F0D97C0;
    v55 = v54 + v53;
    v56 = *(v51 + 16);
    v56(v55, v101, v49);
    v56(v55 + v52, v50, v49);
    v56(v55 + 2 * v52, v48, v49);
    v57 = sub_22F0D0F2C();

    v58 = v104;
    [v104 setQueryItems_];

    v59 = [v58 URL];
    v60 = v109;
    if (v59)
    {
      v61 = v97;
      v62 = v59;
      sub_22F0D03EC();

      (*(v98 + 16))(v93, v61, v100);
      v63 = sub_22F0D00FC();
      v64 = v94;
      v65 = *(v94 + 24);
      (*(v94 + 16))(&v111, v63);
      v66 = swift_allocObject();
      v67 = v103;
      v66[2] = v102;
      v66[3] = v67;
      v68 = v108;
      v66[4] = v64;
      v66[5] = v60;
      v66[6] = v110;
      v69 = *(&v112 + 1);
      v70 = v113;
      __swift_project_boxed_opaque_existential_1(&v111, *(&v112 + 1));
      v71 = *(v70 + 8);
      sub_22F0CFFAC();
      sub_22F0CFFAC();
      sub_22F0CFF1C();
      v72 = v99;
      v73 = v71(v99, sub_22F0A2D1C, v66, v69, v70);
      [v73 resume];
      v74 = *(&v112 + 1);
      v75 = v113;
      __swift_project_boxed_opaque_existential_1(&v111, *(&v112 + 1));
      (*(v75 + 16))(v74, v75);

      sub_22F0D00CC();
      (*(v95 + 8))(v72, v96);
      (*(v98 + 8))(v97, v100);
      v76 = *(v68 + 8);
      v77 = v105;
      v76(v106, v105);
      v76(v107, v77);
      v76(v101, v77);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v111);
    }

    else
    {
      v78 = v49;
      v79 = v108;
      if (qword_280CBEC38 != -1)
      {
        swift_once();
      }

      v80 = sub_22F0D0A1C();
      __swift_project_value_buffer(v80, qword_280CBEC40);
      v81 = v110;
      sub_22F0CFF1C();
      v82 = sub_22F0D09FC();
      v83 = sub_22F0D123C();

      v84 = os_log_type_enabled(v82, v83);
      v85 = v106;
      if (v84)
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *&v111 = v87;
        *v86 = 136315138;
        *(v86 + 4) = sub_22F00A560(v60, v81, &v111);
        _os_log_impl(&dword_22EFE1000, v82, v83, "Lookup url error for %s", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v87);
        v88 = v87;
        v78 = v49;
        MEMORY[0x2318FE8B0](v88, -1, -1);
        MEMORY[0x2318FE8B0](v86, -1, -1);
      }

      v111 = 0u;
      v112 = 0u;
      v113 = 0;
      v114 = 0xF000000000000000;
      v89 = v101;
      v102(&v111);

      v90 = v113;
      v91 = v114;

      sub_22F00AB48(v90, v91);
      v92 = *(v79 + 8);
      v92(v85, v78);
      v92(v107, v78);
      return (v92)(v89, v78);
    }
  }

  else
  {
    v39 = v109;
    v38 = v110;
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v40 = sub_22F0D0A1C();
    __swift_project_value_buffer(v40, qword_280CBEC40);
    sub_22F0CFF1C();
    v41 = sub_22F0D09FC();
    v42 = sub_22F0D123C();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v111 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_22F00A560(v39, v38, &v111);
      _os_log_impl(&dword_22EFE1000, v41, v42, "Lookup url error for %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x2318FE8B0](v44, -1, -1);
      MEMORY[0x2318FE8B0](v43, -1, -1);
    }

    v111 = 0u;
    v112 = 0u;
    v113 = 0;
    v114 = 0xF000000000000000;
    v102(&v111);
    v45 = v113;
    v46 = v114;

    return sub_22F00AB48(v45, v46);
  }
}

uint64_t sub_22F0A17F0(uint64_t a1, unint64_t a2, id a3, uint64_t a4, void (*a5)(__int128 *), int a6, int a7, uint64_t a8, uint64_t a9)
{
  if (a2 >> 60 == 15)
  {
    if (a4)
    {
      swift_getErrorValue();
      v10 = sub_22F0D192C();
      v12 = v11;
    }

    else if (a3)
    {
      v22 = [a3 debugDescription];
      v10 = sub_22F0D0CAC();
      v12 = v23;
    }

    else
    {
      v12 = 0xED0000726F727265;
      v10 = 0x206E776F6E6B6E75;
    }

    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v28 = sub_22F0D0A1C();
    __swift_project_value_buffer(v28, qword_280CBEC40);
    sub_22F0CFF1C();
    v29 = sub_22F0D09FC();
    v30 = sub_22F0D123C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v40 = v32;
      *v31 = 136315138;
      v33 = sub_22F00A560(v10, v12, &v40);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_22EFE1000, v29, v30, "icon fetch failure %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x2318FE8B0](v32, -1, -1);
      MEMORY[0x2318FE8B0](v31, -1, -1);
    }

    else
    {
    }

    v40 = 0u;
    v41 = 0u;
    *&v42 = 0;
    *(&v42 + 1) = 0xF000000000000000;
    a5(&v40);
    goto LABEL_21;
  }

  sub_22F00AC04(a1, a2);
  sub_22F09EF98(a2, a8, a9, &v40);
  v16 = v40;
  v17 = v41;
  v35 = *(&v42 + 1);
  v36 = v42;
  v19 = *(&v40 + 1);
  v18 = v40;
  if (!*(&v40 + 1))
  {
LABEL_10:
    if (*(&v17 + 1))
    {
      sub_22F0CFF1C();
      v25 = String.trimToNil()();
      countAndFlagsBits = v25.value._countAndFlagsBits;
      object = v25.value._object;
    }

    else
    {
      object = 0;
      countAndFlagsBits = v17;
    }

    *&v40 = v18;
    *(&v40 + 1) = v19;
    *&v41 = countAndFlagsBits;
    *(&v41 + 1) = object;
    v42 = xmmword_22F0D6620;
    a5(&v40);
    sub_22F00AB48(a1, a2);
    sub_22F0A3440(v16, *(&v16 + 1), v17, *(&v17 + 1), v36, v35);
LABEL_21:
    v21 = *(&v42 + 1);
    v20 = v42;
    goto LABEL_22;
  }

  if (*(&v40 + 1) != 1)
  {
    sub_22F0CFF1C();
    v24 = String.trimToNil()();
    v18 = v24.value._countAndFlagsBits;
    v19 = v24.value._object;

    goto LABEL_10;
  }

  sub_22F09F66C(a8, a9, &v40);
  v38[0] = v40;
  v38[1] = v41;
  v39 = v42;
  a5(v38);
  sub_22F00AB48(a1, a2);
  v21 = *(&v39 + 1);
  v20 = v39;
LABEL_22:

  return sub_22F00AB48(v20, v21);
}

uint64_t static AppBundleResolver.resolveThumbnail(_:_:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320) - 8) + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  v6 = sub_22F0D043C();
  *(v3 + 88) = v6;
  v7 = *(v6 - 8);
  *(v3 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 160) = *a3;

  return MEMORY[0x2822009F8](sub_22F0A1C94, 0, 0);
}

uint64_t sub_22F0A1C94()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[8];
    v0[16] = type metadata accessor for AppBundleResolver();
    v3 = swift_allocObject();
    v0[17] = v3;
    *(v3 + 16) = sub_22F09EEDC;
    *(v3 + 24) = 0;
    v4 = swift_task_alloc();
    v0[18] = v4;
    v4[2] = v3;
    v4[3] = v2;
    v4[4] = v1;
    v5 = *(MEMORY[0x277D859E0] + 4);
    v6 = swift_task_alloc();
    v0[19] = v6;
    *v6 = v0;
    v6[1] = sub_22F0A1EEC;

    return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000017, 0x800000022F0DF6C0, sub_22F0A3BC4, v4, &type metadata for BundleAppInfo);
  }

  else
  {
    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    v7 = sub_22F0D0A1C();
    __swift_project_value_buffer(v7, qword_27DAA1A28);
    v8 = sub_22F0D09FC();
    v9 = sub_22F0D123C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22EFE1000, v8, v9, "No bundle id", v10, 2u);
      MEMORY[0x2318FE8B0](v10, -1, -1);
    }

    v12 = v0[14];
    v11 = v0[15];
    v13 = v0[13];
    v14 = v0[10];

    v15 = v0[1];

    return v15(0, 0xF000000000000000);
  }
}

uint64_t sub_22F0A1EEC()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22F0A2004, 0, 0);
}

uint64_t sub_22F0A2004()
{
  v63 = v0;
  v1 = *(v0 + 24);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  if (v3 >> 60 != 15)
  {
    v9 = *(v0 + 136);
    sub_22F00AC04(*(v0 + 48), *(v0 + 56));

    v10 = v2;
    v11 = v3;
    goto LABEL_42;
  }

  v61 = *(v0 + 48);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 80);
  if (*(v0 + 40))
  {
    v7 = *(v0 + 32);
  }

  sub_22F0CFF1C();
  sub_22F0D042C();

  if ((*(v4 + 48))(v6, 1, v5) == 1)
  {
    v8 = *(v0 + 160);
    sub_22F003A4C(*(v0 + 80), &qword_27DAA10F8, &qword_22F0D5320);
    if (!v8)
    {

LABEL_10:
      if (qword_27DAA0570 != -1)
      {
        swift_once();
      }

      v16 = sub_22F0D0A1C();
      __swift_project_value_buffer(v16, qword_27DAA1A28);
      v17 = sub_22F0D09FC();
      v18 = sub_22F0D122C();
      v19 = os_log_type_enabled(v17, v18);
      v20 = *(v0 + 136);
      if (v19)
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_22EFE1000, v17, v18, "resolveThumbnail no fallback requested, return nil", v21, 2u);
        MEMORY[0x2318FE8B0](v21, -1, -1);
      }

      goto LABEL_40;
    }

    v15 = sub_22F0D188C();

    if (v15)
    {
      goto LABEL_10;
    }

    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 72);
    v23 = sub_22F0D0A1C();
    __swift_project_value_buffer(v23, qword_27DAA1A28);
    sub_22F0CFF1C();
    v24 = sub_22F0D09FC();
    v25 = sub_22F0D122C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 160);
      v27 = *(v0 + 64);
      v58 = *(v0 + 72);
      v28 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v62[0] = v59;
      *v28 = 136315394;
      *(v28 + 4) = sub_22F00A560(v27, v58, v62);
      v29 = 0xE600000000000000;
      *(v28 + 12) = 2080;
      v30 = 0xE600000000000000;
      v31 = 0x697261666173;
      if (v26 != 6)
      {
        v31 = 0x69746E6565726373;
        v30 = 0xEA0000000000656DLL;
      }

      v32 = 0x656D697465636166;
      if (v26 != 4)
      {
        v32 = 0x736567617373656DLL;
      }

      if (v26 <= 5)
      {
        v31 = v32;
        v30 = 0xE800000000000000;
      }

      v33 = 0xE800000000000000;
      v34 = 0x65726F7473707061;
      if (v26 != 2)
      {
        v34 = 0x6172656D6163;
        v33 = 0xE600000000000000;
      }

      if (v26 == 1)
      {
        v34 = 0x736F746F6870;
      }

      else
      {
        v29 = v33;
      }

      if (v26 <= 3)
      {
        v35 = v34;
      }

      else
      {
        v35 = v31;
      }

      if (v26 <= 3)
      {
        v36 = v29;
      }

      else
      {
        v36 = v30;
      }

      v37 = sub_22F00A560(v35, v36, v62);

      *(v28 + 14) = v37;
      _os_log_impl(&dword_22EFE1000, v24, v25, "Thumbnail fallback for %s using %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v59, -1, -1);
      MEMORY[0x2318FE8B0](v28, -1, -1);
    }

    else
    {
    }

    v38 = *(v0 + 128);
    v39 = *(v0 + 160);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v41 = [objc_opt_self() bundleForClass_];
    v42 = sub_22F0D0C7C();

    v43 = sub_22F0D0C7C();
    v44 = [v41 URLForResource:v42 withExtension:v43];

    if (!v44)
    {
      v50 = *(v0 + 136);

LABEL_40:

      v10 = 0;
      v11 = 0xF000000000000000;
      goto LABEL_41;
    }

    v60 = v41;
    v46 = *(v0 + 104);
    v45 = *(v0 + 112);
    v48 = *(v0 + 88);
    v47 = *(v0 + 96);
    sub_22F0D03EC();

    (*(v47 + 32))(v45, v46, v48);
    v10 = sub_22F0D044C();
    v49 = *(v0 + 136);
    v11 = v51;
    (*(*(v0 + 96) + 8))(*(v0 + 112), *(v0 + 88));
  }

  else
  {
    v12 = *(v0 + 96);
    (*(v12 + 32))(*(v0 + 120), *(v0 + 80), *(v0 + 88));
    v10 = sub_22F0D044C();
    v11 = v13;
    v14 = *(v0 + 136);
    (*(v12 + 8))(*(v0 + 120), *(v0 + 88));
  }

LABEL_41:
  v2 = v61;
LABEL_42:

  sub_22F00AB48(v2, v3);
  sub_22F0D00CC();
  v53 = *(v0 + 112);
  v52 = *(v0 + 120);
  v54 = *(v0 + 104);
  v55 = *(v0 + 80);

  v56 = *(v0 + 8);

  return v56(v10, v11);
}

uint64_t AppBundleResolver.deinit()
{
  v1 = *(v0 + 24);
  sub_22F0D00CC();
  return v0;
}

uint64_t AppBundleResolver.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  sub_22F0D00CC();

  return swift_deallocClassInstance();
}

uint64_t sub_22F0A28D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_22F0A2900, 0, 0);
}

uint64_t sub_22F0A2900()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_22F0A3BC0;
  v7 = v0[2];

  return MEMORY[0x2822007B8](v7, 0, 0, 0xD000000000000017, 0x800000022F0DF6C0, sub_22F0A3BC4, v4, &type metadata for BundleAppInfo);
}

uint64_t sub_22F0A2A20(unsigned __int8 *a1)
{
  v2 = sub_22F0D043C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = *a1;
  type metadata accessor for AppBundleResolver();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = sub_22F0D0C7C();

  v14 = sub_22F0D0C7C();
  v15 = [v12 URLForResource:v13 withExtension:v14];

  if (v15)
  {
    sub_22F0D03EC();

    (*(v3 + 32))(v9, v7, v2);
    v16 = sub_22F0D044C();
    (*(v3 + 8))(v9, v2);

    return v16;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_22F0A2D50()
{
  result = qword_27DAA2068;
  if (!qword_27DAA2068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2068);
  }

  return result;
}

unint64_t sub_22F0A2DA8()
{
  result = qword_27DAA2070;
  if (!qword_27DAA2070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA2078, &qword_22F0DAA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2070);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22F0A2E48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22F0A2EA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of BundleResolver.fetchAppInfo(bundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_22F00CD54;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AppBundleResolver.fetchAppInfo(bundleId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 112);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_22F00CF60;

  return v12(a1, a2, a3);
}

uint64_t type metadata accessor for AppBundleResolver.AppInfo()
{
  result = qword_27DAA20A0;
  if (!qword_27DAA20A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22F0A32B0()
{
  result = qword_27DAA2088;
  if (!qword_27DAA2088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2088);
  }

  return result;
}

uint64_t sub_22F0A3304(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppBundleResolver.AppInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F0A3368(uint64_t a1)
{
  v2 = type metadata accessor for AppBundleResolver.AppInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F0A33C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppBundleResolver.AppInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22F0CFFAC();
}

void sub_22F0A3440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2 != 1)
  {

    sub_22F00AB48(a5, a6);
  }
}

uint64_t sub_22F0A34A4(uint64_t *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2090, &qword_22F0DAC48) - 8) + 80);

  return sub_22F0A0C14(a1);
}

unint64_t sub_22F0A3520()
{
  result = qword_27DAA2098;
  if (!qword_27DAA2098)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAA2098);
  }

  return result;
}

void sub_22F0A35A4()
{
  sub_22F08A8D4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_22F0A361C()
{
  v0 = sub_22F0D174C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

void *sub_22F0A3668(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA20B0, &qword_22F0DACD8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F0A37EC();
  sub_22F0D19EC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA20C0, &qword_22F0DACE0);
    sub_22F0A3840();
    sub_22F0D17BC();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v9;
}

unint64_t sub_22F0A37EC()
{
  result = qword_27DAA20B8;
  if (!qword_27DAA20B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA20B8);
  }

  return result;
}

unint64_t sub_22F0A3840()
{
  result = qword_27DAA20C8;
  if (!qword_27DAA20C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA20C0, &qword_22F0DACE0);
    sub_22F0A3948(&qword_27DAA20D0, type metadata accessor for AppBundleResolver.AppInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA20C8);
  }

  return result;
}

unint64_t sub_22F0A38F4()
{
  result = qword_27DAA20E0;
  if (!qword_27DAA20E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA20E0);
  }

  return result;
}

uint64_t sub_22F0A3948(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22F0A39B4()
{
  result = qword_27DAA20F0;
  if (!qword_27DAA20F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA20F0);
  }

  return result;
}

unint64_t sub_22F0A3A0C()
{
  result = qword_27DAA20F8;
  if (!qword_27DAA20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA20F8);
  }

  return result;
}

unint64_t sub_22F0A3A64()
{
  result = qword_27DAA2100;
  if (!qword_27DAA2100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2100);
  }

  return result;
}

unint64_t sub_22F0A3ABC()
{
  result = qword_27DAA2108;
  if (!qword_27DAA2108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2108);
  }

  return result;
}

unint64_t sub_22F0A3B14()
{
  result = qword_27DAA2110;
  if (!qword_27DAA2110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2110);
  }

  return result;
}

unint64_t sub_22F0A3B6C()
{
  result = qword_27DAA2118;
  if (!qword_27DAA2118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2118);
  }

  return result;
}

void *StatusWithTime.dates.getter()
{
  v21 = sub_22F0D05BC();
  v1 = *(v21 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v21);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_17;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      v7 = 0;
      v19 = v5 & 0xFFFFFFFFFFFFFF8;
      v20 = v5 & 0xC000000000000001;
      v8 = MEMORY[0x277D84F90];
      v9 = v5;
      while (1)
      {
        if (v20)
        {
          v10 = MEMORY[0x2318FDAB0](v7, v5);
        }

        else
        {
          if (v7 >= *(v19 + 16))
          {
            goto LABEL_16;
          }

          v10 = *(v5 + 8 * v7 + 32);
        }

        v11 = v10;
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v10 doubleValue];
        sub_22F0D04BC();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22F03D67C(0, v8[2] + 1, 1, v8);
        }

        v14 = v8[2];
        v13 = v8[3];
        if (v14 >= v13 >> 1)
        {
          v8 = sub_22F03D67C(v13 > 1, v14 + 1, 1, v8);
        }

        v8[2] = v14 + 1;
        (*(v1 + 32))(v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v14, v4, v21);
        ++v7;
        v5 = v9;
        if (v12 == v6)
        {
          return v8;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v15 = v5;
      v16 = sub_22F0D143C();
      v5 = v15;
      v6 = v16;
    }

    while (v16);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22F0A3DEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22F0D05BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v22 = a2;
    v24 = MEMORY[0x277D84F90];
    sub_22F0D161C();
    v10 = v5 + 16;
    v23 = *(v5 + 16);
    v11 = *(v5 + 80);
    v21 = a1;
    v12 = a1 + ((v11 + 32) & ~v11);
    v13 = *(v10 + 56);
    v14 = (v10 - 8);
    do
    {
      v23(v8, v12, v4);
      sub_22F0D04CC();
      v16 = v15;
      v17 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      [v17 initWithDouble_];
      (*v14)(v8, v4);
      sub_22F0D15EC();
      v18 = *(v24 + 16);
      sub_22F0D162C();
      sub_22F0D163C();
      sub_22F0D15FC();
      v12 += v13;
      --v9;
    }

    while (v9);

    v20 = v24;
    a2 = v22;
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  *a2 = v20;
  return result;
}

void sub_22F0A40A0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_22F0D0C7C();
  v2 = [v0 initWithSuiteName_];

  qword_27DAACF08 = v2;
}

void sub_22F0A4110()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_22F0D0C7C();
  v2 = [v0 initWithSuiteName_];

  qword_280CC1268 = v2;
}

uint64_t sub_22F0A4180@<X0>(id a1@<X2>, uint64_t a2@<X8>)
{
  [a1 synchronize];
  v4 = sub_22F0D0C7C();
  v5 = [a1 valueForKey_];

  if (v5)
  {
    sub_22F0D13CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    sub_22F003A4C(v12, &qword_27DAA1270, &qword_22F0D7240);
    goto LABEL_8;
  }

  sub_22F04CF78();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  [v9 doubleValue];
  sub_22F0D04BC();

  v6 = 0;
LABEL_9:
  v7 = sub_22F0D05BC();
  return (*(*(v7 - 8) + 56))(a2, v6, 1, v7);
}

uint64_t sub_22F0A42E4(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_22F0D06FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1440, &unk_22F0D65F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v27 - v13;
  v15 = sub_22F0D05BC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F0A4180(a3, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_22F003A4C(v14, &qword_27DAA1440, &unk_22F0D65F0);
    return 1;
  }

  (*(v16 + 32))(v19, v14, v15);
  sub_22F0D06EC();
  v20 = sub_22F0D06DC();
  (*(v7 + 8))(v10, v6);
  if ((v20 & 1) == 0)
  {
    (*(v16 + 8))(v19, v15);
    return 1;
  }

  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v21 = sub_22F0D0A1C();
  __swift_project_value_buffer(v21, qword_280CBEC40);
  sub_22F0CFF1C();
  v22 = sub_22F0D09FC();
  v23 = sub_22F0D122C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v28 = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_22F00A560(0xD000000000000016, 0x800000022F0DF920, &v28);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_22F00A560(a1, a2, &v28);
    _os_log_impl(&dword_22EFE1000, v22, v23, "%s %s is still today", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v25, -1, -1);
    MEMORY[0x2318FE8B0](v24, -1, -1);
  }

  (*(v16 + 8))(v19, v15);
  return 0;
}

id static MetricTemplate.displayTimeEnabled.getter()
{
  if (qword_280CBEF20 != -1)
  {
    swift_once();
  }

  [qword_280CBEF28 synchronize];
  v0 = qword_280CBEF28;
  v1 = sub_22F0D0C7C();
  v2 = [v0 BOOLForKey_];

  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v3 = sub_22F0D0A1C();
  __swift_project_value_buffer(v3, qword_280CBEC40);
  v4 = sub_22F0D09FC();
  v5 = sub_22F0D122C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_22F00A560(0xD000000000000012, 0x800000022F0DF820, &v9);
    *(v6 + 12) = 1024;
    *(v6 + 14) = v2;
    _os_log_impl(&dword_22EFE1000, v4, v5, "%s value %{BOOL}d", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x2318FE8B0](v7, -1, -1);
    MEMORY[0x2318FE8B0](v6, -1, -1);
  }

  return v2;
}

uint64_t static MetricTemplate.keyForKind(_:key:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22F0CFF1C();
  MEMORY[0x2318FD2C0](46, 0xE100000000000000);
  MEMORY[0x2318FD2C0](a1, a2);
  return a3;
}

void static MetricTemplate.updateRefreshRequestedCount(for:)(NSObject *a1, uint64_t a2)
{
  v4 = sub_22F0D06FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22F0D05BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  if (_s6People14MetricTemplateO14metricsEnabledSbvgZ_0())
  {
    if (qword_280CBD6C8 != -1)
    {
      swift_once();
    }

    if (qword_280CC1268)
    {
      v53 = a2;
      v54 = a1;
      v52 = v9;
      v17 = qword_280CC1268;
      v18 = &off_278879000;
      if (sub_22F0A42E4(0xD000000000000010, 0x800000022F0DF7A0, v17))
      {
        sub_22F0A8018();
        sub_22F0D06EC();
        sub_22F0D05AC();
        sub_22F0D06CC();
        v51 = v10;
        v19 = *(v10 + 8);
        v20 = v14;
        v21 = v52;
        v19(v20, v52);
        (*(v5 + 8))(v8, v4);
        sub_22F0D04CC();
        v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        v24 = sub_22F0D0C7C();
        [v17 setValue:v23 forKey:v24];

        [v17 synchronize];
        v19(v16, v21);
        v18 = &off_278879000;
        v10 = v51;
      }

      strcpy(v55, "requestedCount");
      HIBYTE(v55[1]) = -18;
      MEMORY[0x2318FD2C0](46, 0xE100000000000000);
      v25 = v53;
      MEMORY[0x2318FD2C0](v54, v53);
      v27 = v55[0];
      v26 = v55[1];
      sub_22F0CFF1C();
      v28 = sub_22F0A6A60(v27, v26, v17);

      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
      }

      else
      {
        v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_22F0CFF1C();
        v31 = sub_22F0D0C7C();

        [v17 v18[459]];

        if (qword_280CBEC38 == -1)
        {
LABEL_9:
          v32 = sub_22F0D0A1C();
          __swift_project_value_buffer(v32, qword_280CBEC40);
          v33 = sub_22F0D09FC();
          v34 = sub_22F0D122C();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = v10;
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v55[0] = v37;
            *v36 = 136315650;
            *(v36 + 4) = sub_22F00A560(0xD000000000000021, 0x800000022F0DF840, v55);
            *(v36 + 12) = 2080;
            sub_22F0CFF1C();
            v38 = sub_22F00A560(v27, v26, v55);

            *(v36 + 14) = v38;
            *(v36 + 22) = 2048;
            *(v36 + 24) = v29;
            _os_log_impl(&dword_22EFE1000, v33, v34, "%s requestTime count for %s: %ld", v36, 0x20u);
            swift_arrayDestroy();
            v39 = v37;
            v25 = v53;
            MEMORY[0x2318FE8B0](v39, -1, -1);
            v40 = v36;
            v10 = v35;
            v18 = &off_278879000;
            MEMORY[0x2318FE8B0](v40, -1, -1);
          }

          v55[0] = 0x757165527473616CLL;
          v55[1] = 0xEF656D6954747365;
          MEMORY[0x2318FD2C0](46, 0xE100000000000000);
          MEMORY[0x2318FD2C0](v54, v25);

          sub_22F0D05AC();
          sub_22F0CFF1C();
          sub_22F0D04CC();
          v42 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          v43 = sub_22F0D0C7C();

          [v17 v18[459]];

          [v17 synchronize];
          (*(v10 + 8))(v16, v52);
          [v17 synchronize];

          return;
        }
      }

      swift_once();
      goto LABEL_9;
    }

    if (qword_280CBDB70 != -1)
    {
      swift_once();
    }

    v49 = sub_22F0D0A1C();
    __swift_project_value_buffer(v49, qword_280CBDB78);
    v54 = sub_22F0D09FC();
    v45 = sub_22F0D123C();
    if (os_log_type_enabled(v54, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v55[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_22F00A560(0xD000000000000021, 0x800000022F0DF840, v55);
      v48 = "%s no daemon defaults found";
      goto LABEL_20;
    }
  }

  else
  {
    if (qword_280CBDB70 != -1)
    {
      swift_once();
    }

    v44 = sub_22F0D0A1C();
    __swift_project_value_buffer(v44, qword_280CBDB78);
    v54 = sub_22F0D09FC();
    v45 = sub_22F0D122C();
    if (os_log_type_enabled(v54, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v55[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_22F00A560(0xD000000000000021, 0x800000022F0DF840, v55);
      v48 = "%s not enabled";
LABEL_20:
      _os_log_impl(&dword_22EFE1000, v54, v45, v48, v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x2318FE8B0](v47, -1, -1);
      MEMORY[0x2318FE8B0](v46, -1, -1);

      return;
    }
  }

  v50 = v54;
}

void static MetricTemplate.updateStatusCount(for:signaled:)(unsigned __int8 *a1, char a2)
{
  v4 = sub_22F0D06FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22F0D05BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v75 - v15;
  v17 = *a1;
  if (_s6People14MetricTemplateO14metricsEnabledSbvgZ_0())
  {
    if (qword_280CBD6C8 != -1)
    {
      swift_once();
    }

    if (qword_280CC1268)
    {
      v77 = v9;
      v78 = qword_280CC1268;
      if (sub_22F0A42E4(0xD000000000000010, 0x800000022F0DF7A0, v78))
      {
        sub_22F0A8018();
        sub_22F0D06EC();
        sub_22F0D05AC();
        sub_22F0D06CC();
        v18 = *(v10 + 8);
        v75 = "@NSURLResponse16@NSError24";
        v76 = v18;
        v19 = v14;
        v20 = v77;
        v18(v19, v77);
        (*(v5 + 8))(v8, v4);
        sub_22F0D04CC();
        v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        v23 = sub_22F0D0C7C();
        v24 = v78;
        [v78 setValue:v22 forKey:v23];

        [v24 synchronize];
        v76(v16, v20);
      }

      v25 = 0xEF7974696C696261;
      v26 = 0x6C69617641646E64;
      if (a2)
      {
        v27 = v78;
        if (v17 > 4)
        {
          v51 = 0x7373654D64616572;
          v52 = 0xEB00000000656761;
          v53 = 0x614364657373696DLL;
          v54 = 0xEA00000000006C6CLL;
          if (v17 != 8)
          {
            v53 = 0x7261646E656C6163;
            v54 = 0xE800000000000000;
          }

          if (v17 != 7)
          {
            v51 = v53;
            v52 = v54;
          }

          v55 = 0x617453646C696863;
          v56 = 0xEA00000000006574;
          if (v17 != 5)
          {
            v55 = 0x654D646165726E75;
            v56 = 0xED00006567617373;
          }

          if (v17 <= 6)
          {
            v32 = v55;
          }

          else
          {
            v32 = v51;
          }

          if (v17 <= 6)
          {
            v33 = v56;
          }

          else
          {
            v33 = v52;
          }
        }

        else
        {
          v28 = 0xE800000000000000;
          v29 = 0x6E6F697461636F6CLL;
          v30 = 0x7975426F546B7361;
          v31 = 0xEF74736575716552;
          if (v17 != 3)
          {
            v30 = 0xD000000000000011;
            v31 = 0x800000022F0DC350;
          }

          if (v17 != 2)
          {
            v29 = v30;
            v28 = v31;
          }

          if (v17)
          {
            v26 = 0x74536E6F69746F6DLL;
            v25 = 0xEB00000000657461;
          }

          if (v17 <= 1)
          {
            v32 = v26;
          }

          else
          {
            v32 = v29;
          }

          if (v17 <= 1)
          {
            v33 = v25;
          }

          else
          {
            v33 = v28;
          }
        }
      }

      else
      {
        v27 = v78;
        if (v17 > 4)
        {
          v48 = 0x7373654D64616572;
          v57 = 0xEB00000000656761;
          v58 = 0x614364657373696DLL;
          v59 = 0xEA00000000006C6CLL;
          if (v17 != 8)
          {
            v58 = 0x7261646E656C6163;
            v59 = 0xE800000000000000;
          }

          if (v17 != 7)
          {
            v48 = v58;
            v57 = v59;
          }

          v60 = 0x617453646C696863;
          v61 = 0xEA00000000006574;
          if (v17 != 5)
          {
            v60 = 0x654D646165726E75;
            v61 = 0xED00006567617373;
          }

          if (v17 > 6)
          {
            v49 = v57;
          }

          else
          {
            v48 = v60;
            v49 = v61;
          }
        }

        else
        {
          v43 = 0xE800000000000000;
          v44 = 0x6E6F697461636F6CLL;
          v45 = 0x7975426F546B7361;
          v46 = 0x800000022F0DC350;
          if (v17 == 3)
          {
            v46 = 0xEF74736575716552;
          }

          else
          {
            v45 = 0xD000000000000011;
          }

          if (v17 != 2)
          {
            v44 = v45;
            v43 = v46;
          }

          v47 = 0xEB00000000657461;
          if (v17)
          {
            v26 = 0x74536E6F69746F6DLL;
          }

          else
          {
            v47 = 0xEF7974696C696261;
          }

          if (v17 <= 1)
          {
            v48 = v26;
          }

          else
          {
            v48 = v44;
          }

          if (v17 <= 1)
          {
            v49 = v47;
          }

          else
          {
            v49 = v43;
          }
        }

        v81 = v48;
        v82 = v49;
        sub_22F0CFF1C();
        MEMORY[0x2318FD2C0](0x6465726F6E67692ELL, 0xE800000000000000);

        v32 = v81;
        v33 = v82;
      }

      sub_22F0A5BE8(v27, &v81);
      sub_22F04CF78();
      v62 = sub_22F0D0F2C();

      v63 = sub_22F0D0C7C();
      [v27 setValue:v62 forKey:v63];

      if (qword_280CBEC38 != -1)
      {
        swift_once();
      }

      v64 = sub_22F0D0A1C();
      __swift_project_value_buffer(v64, qword_280CBEC40);
      v65 = v27;
      sub_22F0CFF1C();
      v66 = sub_22F0D09FC();
      v67 = sub_22F0D122C();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v81 = v69;
        *v68 = 136315650;
        *(v68 + 4) = sub_22F00A560(0xD000000000000020, 0x800000022F0DF870, &v81);
        *(v68 + 12) = 2080;
        *(v68 + 14) = sub_22F00A560(v32, v33, &v81);
        *(v68 + 22) = 2080;
        sub_22F0A5BE8(v65, &v80);

        v79 = v80;
        v70 = StatusWithTime.dates.getter();

        v71 = MEMORY[0x2318FD490](v70, v77);
        v73 = v72;

        v74 = sub_22F00A560(v71, v73, &v81);

        *(v68 + 24) = v74;
        _os_log_impl(&dword_22EFE1000, v66, v67, "%s requestTime count for %s: %s", v68, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2318FE8B0](v69, -1, -1);
        MEMORY[0x2318FE8B0](v68, -1, -1);
      }

      else
      {
      }

      [v65 synchronize];
    }

    else
    {
      if (qword_280CBDB70 != -1)
      {
        swift_once();
      }

      v39 = sub_22F0D0A1C();
      __swift_project_value_buffer(v39, qword_280CBDB78);
      v78 = sub_22F0D09FC();
      v40 = sub_22F0D123C();
      if (os_log_type_enabled(v78, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v81 = v42;
        *v41 = 136315138;
        *(v41 + 4) = sub_22F00A560(0xD000000000000020, 0x800000022F0DF870, &v81);
        _os_log_impl(&dword_22EFE1000, v78, v40, "%s no daemon defaults found", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x2318FE8B0](v42, -1, -1);
        MEMORY[0x2318FE8B0](v41, -1, -1);
      }

      else
      {
        v50 = v78;
      }
    }
  }

  else
  {
    if (qword_280CBDB70 != -1)
    {
      swift_once();
    }

    v34 = sub_22F0D0A1C();
    __swift_project_value_buffer(v34, qword_280CBDB78);
    v35 = sub_22F0D09FC();
    v36 = sub_22F0D122C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v81 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_22F00A560(0xD000000000000020, 0x800000022F0DF870, &v81);
      _os_log_impl(&dword_22EFE1000, v35, v36, "%s not enabled", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x2318FE8B0](v38, -1, -1);
      MEMORY[0x2318FE8B0](v37, -1, -1);
    }

    sub_22F0A8018();
  }
}

uint64_t sub_22F0A5BE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22F0D05BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F0D05AC();
  v9 = sub_22F0D0C7C();
  v10 = [a1 valueForKey_];

  if (v10)
  {
    sub_22F0D13CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (!*(&v19 + 1))
  {
    sub_22F003A4C(v20, &qword_27DAA1270, &qword_22F0D7240);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2120, " ~");
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DA8, &qword_22F0D4F88);
    v13 = *(v5 + 72);
    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_22F0D2BF0;
    (*(v5 + 16))(v15 + v14, v8, v4);
    sub_22F0A3DEC(v15, a2);
    return (*(v5 + 8))(v8, v4);
  }

  v21 = v17[1];
  sub_22F0D04CC();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  MEMORY[0x2318FD450]();
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v16 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22F0D0F8C();
  }

  sub_22F0D0FEC();
  result = (*(v5 + 8))(v8, v4);
  *a2 = v21;
  return result;
}

void static MetricTemplate.updateTimelineCount(for:)(NSObject *a1, uint64_t a2)
{
  v4 = sub_22F0D06FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22F0D05BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v53 - v15;
  if (_s6People14MetricTemplateO14metricsEnabledSbvgZ_0())
  {
    if (qword_27DAA05F0 != -1)
    {
      swift_once();
    }

    if (qword_27DAACF08)
    {
      v56 = a1;
      v54 = a2;
      v17 = qword_27DAACF08;
      v18 = sub_22F0A42E4(0xD000000000000011, 0x800000022F0DF7C0, v17);
      v55 = v10;
      if (v18)
      {
        sub_22F0A7D80();
        sub_22F0D06EC();
        sub_22F0D05AC();
        sub_22F0D06CC();
        v53 = v9;
        v19 = v17;
        v20 = *(v55 + 8);
        v20(v14, v53);
        v21 = v20;
        v17 = v19;
        (*(v5 + 8))(v8, v4);
        sub_22F0D04CC();
        v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        v24 = sub_22F0D0C7C();
        [v19 setValue:v23 forKey:v24];

        [v19 synchronize];
        v21(v16, v53);
        v10 = v55;
        v9 = v53;
      }

      strcpy(v57, "timelineCount");
      HIWORD(v57[1]) = -4864;
      MEMORY[0x2318FD2C0](46, 0xE100000000000000);
      v25 = v54;
      MEMORY[0x2318FD2C0](v56, v54);
      v27 = v57[0];
      v26 = v57[1];
      sub_22F0CFF1C();
      v28 = sub_22F0A6A60(v27, v26, v17);

      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
      }

      else
      {
        v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_22F0CFF1C();
        v31 = sub_22F0D0C7C();

        [v17 setValue:v30 forKey:v31];

        if (qword_280CBEC38 == -1)
        {
LABEL_9:
          v32 = sub_22F0D0A1C();
          __swift_project_value_buffer(v32, qword_280CBEC40);
          v33 = sub_22F0D09FC();
          v34 = sub_22F0D122C();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            v57[0] = v36;
            *v35 = 136315650;
            *(v35 + 4) = sub_22F00A560(0xD000000000000019, 0x800000022F0DF8A0, v57);
            *(v35 + 12) = 2080;
            sub_22F0CFF1C();
            v37 = sub_22F00A560(v27, v26, v57);

            *(v35 + 14) = v37;
            *(v35 + 22) = 2048;
            *(v35 + 24) = v29;
            _os_log_impl(&dword_22EFE1000, v33, v34, "%s timelineTime count for %s: %ld", v35, 0x20u);
            swift_arrayDestroy();
            v38 = v36;
            v25 = v54;
            MEMORY[0x2318FE8B0](v38, -1, -1);
            v39 = v35;
            v10 = v55;
            MEMORY[0x2318FE8B0](v39, -1, -1);
          }

          v57[0] = 0xD000000000000010;
          v57[1] = 0x800000022F0DF7E0;
          MEMORY[0x2318FD2C0](46, 0xE100000000000000);
          MEMORY[0x2318FD2C0](v56, v25);

          sub_22F0D05AC();
          sub_22F0CFF1C();
          sub_22F0D04CC();
          v41 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          v42 = sub_22F0D0C7C();

          [v17 setValue:v41 forKey:v42];

          [v17 synchronize];
          (*(v10 + 8))(v16, v9);

          return;
        }
      }

      swift_once();
      goto LABEL_9;
    }

    if (qword_280CBDB70 != -1)
    {
      swift_once();
    }

    v48 = sub_22F0D0A1C();
    __swift_project_value_buffer(v48, qword_280CBDB78);
    v56 = sub_22F0D09FC();
    v49 = sub_22F0D123C();
    if (os_log_type_enabled(v56, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v57[0] = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_22F00A560(0xD000000000000019, 0x800000022F0DF8A0, v57);
      _os_log_impl(&dword_22EFE1000, v56, v49, "%s no widget defaults found", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x2318FE8B0](v51, -1, -1);
      MEMORY[0x2318FE8B0](v50, -1, -1);
    }

    else
    {
      v52 = v56;
    }
  }

  else
  {
    if (qword_280CBDB70 != -1)
    {
      swift_once();
    }

    v43 = sub_22F0D0A1C();
    __swift_project_value_buffer(v43, qword_280CBDB78);
    v44 = sub_22F0D09FC();
    v45 = sub_22F0D122C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v57[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_22F00A560(0xD000000000000019, 0x800000022F0DF8A0, v57);
      _os_log_impl(&dword_22EFE1000, v44, v45, "%s not enabled", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x2318FE8B0](v47, -1, -1);
      MEMORY[0x2318FE8B0](v46, -1, -1);
    }

    sub_22F0A7D80();
  }
}

unint64_t static MetricTemplate.allKeys()()
{
  if (qword_27DAA05F0 != -1)
  {
    swift_once();
  }

  if (qword_27DAACF08)
  {
    v0 = qword_280CBD6C8;
    v1 = qword_27DAACF08;
    if (v0 != -1)
    {
      swift_once();
    }

    if (qword_280CC1268)
    {
      v2 = qword_280CC1268;
      [v1 synchronize];
      [v2 synchronize];
      v22 = MEMORY[0x277D84F98];
      v3 = v1;
      v4 = v2;
      sub_22F0A6B7C(&unk_2843CB750, &v22, v4, v3);

      v5 = _s6People14MetricTemplateO18allStatusCountKeysSaySSGvgZ_0();
      v6 = v4;
      sub_22F0A6D5C(v5, v6, &v22);

      v7 = v6;
      sub_22F0A7004(&unk_2843CB750, v7, &v22);

      v8 = v3;
      sub_22F0A733C(&unk_2843CB750, v8, &v22);

      v9 = _s6People14MetricTemplateO14metricsEnabledSbvgZ_0();
      v21 = MEMORY[0x277D839B0];
      LOBYTE(v20[0]) = v9 & 1;
      sub_22EFFFA24(v20, v19);
      v10 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_22F018078(v19, 0xD000000000000015, 0x800000022F0DF8C0, isUniquelyReferenced_nonNull_native);

      return v10;
    }
  }

  if (qword_280CBDB70 != -1)
  {
    swift_once();
  }

  v13 = sub_22F0D0A1C();
  __swift_project_value_buffer(v13, qword_280CBDB78);
  v14 = sub_22F0D09FC();
  v15 = sub_22F0D123C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_22F00A560(0x287379654B6C6C61, 0xE900000000000029, v20);
    _os_log_impl(&dword_22EFE1000, v14, v15, "%s failed to load all defaults", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x2318FE8B0](v17, -1, -1);
    MEMORY[0x2318FE8B0](v16, -1, -1);
  }

  v18 = MEMORY[0x277D84F90];

  return sub_22F07D454(v18);
}

id sub_22F0A6A60(int a1, int a2, id a3)
{
  [a3 synchronize];
  v4 = sub_22F0D0C7C();
  v5 = [a3 valueForKey_];

  if (v5)
  {
    sub_22F0D13CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    sub_22F04CF78();
    if (swift_dynamicCast())
    {
      v6 = [v8 integerValue];

      return v6;
    }
  }

  else
  {
    sub_22F003A4C(v11, &qword_27DAA1270, &qword_22F0D7240);
  }

  return 0;
}

uint64_t sub_22F0A6B7C(uint64_t result, uint64_t *a2, void *a3, void *a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v7 = (result + 40);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      strcpy(&v20, "requestedCount");
      HIBYTE(v20) = -18;
      sub_22F0CFF1C();
      MEMORY[0x2318FD2C0](46, 0xE100000000000000);
      MEMORY[0x2318FD2C0](v9, v8);
      v10 = v20;
      v11 = sub_22F0A6A60(v20, SDWORD2(v20), a3);
      v21 = MEMORY[0x277D83B88];
      *&v20 = v11;
      sub_22EFFFA24(&v20, v19);
      v12 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *a2;
      sub_22F018078(v19, v10, *(&v10 + 1), isUniquelyReferenced_nonNull_native);

      *a2 = v22;
      strcpy(&v20, "timelineCount");
      HIWORD(v20) = -4864;
      MEMORY[0x2318FD2C0](46, 0xE100000000000000);
      MEMORY[0x2318FD2C0](v9, v8);
      v14 = v20;
      v15 = sub_22F0A6A60(v20, SDWORD2(v20), a4);
      v21 = MEMORY[0x277D83B88];
      *&v20 = v15;
      sub_22EFFFA24(&v20, v19);
      v16 = *a2;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *a2;
      sub_22F018078(v19, v14, *(&v14 + 1), v17);

      *a2 = v22;

      v7 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_22F0A6D5C(uint64_t result, void *a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v4 = a3;
  v5 = a2;
  for (i = (result + 40); ; i += 2)
  {
    v7 = *(i - 1);
    v8 = *i;
    sub_22F0CFF1C();
    v9 = sub_22F0D0C7C();
    v10 = [v5 valueForKey_];

    if (v10)
    {
      sub_22F0D13CC();
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
    }

    v32 = v30;
    v33 = v31;
    if (*(&v31 + 1))
    {
      break;
    }

    sub_22F003A4C(&v32, &qword_27DAA1270, &qword_22F0D7240);
LABEL_4:

LABEL_5:
    if (!--v3)
    {
      return result;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2120, " ~");
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_4;
  }

  *(&v33 + 1) = &type metadata for StatusWithTime;
  *&v32 = v34;
  sub_22EFFFA24(&v32, &v30);
  sub_22F0CFF1C();
  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v4;
  v13 = v34;
  v15 = sub_22EFFDA80(v7, v8);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (!__OFADD__(v16, v17))
  {
    v19 = v14;
    if (v13[3] >= v18)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v22 = v34;
        if ((v14 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_22F060778();
        v22 = v34;
        if ((v19 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_22F07B06C(v18, isUniquelyReferenced_nonNull_native);
      v20 = sub_22EFFDA80(v7, v8);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_26;
      }

      v15 = v20;
      v22 = v34;
      if ((v19 & 1) == 0)
      {
LABEL_20:
        v22[(v15 >> 6) + 8] |= 1 << v15;
        v24 = (v22[6] + 16 * v15);
        *v24 = v7;
        v24[1] = v8;
        sub_22EFFFA24(&v30, (v22[7] + 32 * v15));
        v25 = v22[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_25;
        }

        v22[2] = v27;
        goto LABEL_22;
      }
    }

    v23 = (v22[7] + 32 * v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    sub_22EFFFA24(&v30, v23);

LABEL_22:
    v4 = a3;
    *a3 = v22;

    v5 = a2;
    goto LABEL_5;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_22F0D191C();
  __break(1u);
  return result;
}

uint64_t sub_22F0A7004(uint64_t a1, void *a2, id *a3)
{
  v35 = a3;
  v32 = sub_22F0D05BC();
  v5 = *(*(v32 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v32);
  v34 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v33 = &v27 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    v29 = (v9 + 16);
    v30 = (v9 + 32);
    v28 = (v9 + 8);
    v12 = (a1 + 40);
    v31 = a2;
    do
    {
      v14 = *(v12 - 1);
      v13 = *v12;
      *&v38 = 0x757165527473616CLL;
      *(&v38 + 1) = 0xEF656D6954747365;
      sub_22F0CFF1C();
      MEMORY[0x2318FD2C0](46, 0xE100000000000000);
      MEMORY[0x2318FD2C0](v14, v13);
      v15 = v38;
      [a2 synchronize];
      v16 = sub_22F0D0C7C();
      v17 = [a2 valueForKey_];

      if (v17)
      {
        sub_22F0D13CC();
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = 0u;
        v37 = 0u;
      }

      v38 = v36;
      v39 = v37;
      if (*(&v37 + 1))
      {
        sub_22F04CF78();
        if (swift_dynamicCast())
        {
          v18 = v40;
          [v40 doubleValue];
          v19 = v34;
          sub_22F0D04BC();

          v20 = v32;
          v21 = v33;
          (*v30)(v33, v19, v32);
          *(&v39 + 1) = v20;
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v38);
          (*v29)(boxed_opaque_existential_1Tm, v21, v20);
          sub_22EFFFA24(&v38, &v36);
          v23 = v35;
          v24 = *v35;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v40 = *v23;
          sub_22F018078(&v36, v15, *(&v15 + 1), isUniquelyReferenced_nonNull_native);

          *v23 = v40;
          v26 = v20;
          a2 = v31;
          (*v28)(v21, v26);
          goto LABEL_5;
        }
      }

      else
      {
        sub_22F003A4C(&v38, &qword_27DAA1270, &qword_22F0D7240);
      }

LABEL_5:

      v12 += 2;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_22F0A733C(uint64_t a1, void *a2, id *a3)
{
  v38 = a3;
  v35 = sub_22F0D05BC();
  v5 = *(*(v35 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v35);
  v37 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v36 = &v29 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0x800000022F0DF7E0;
    v31 = (v9 + 16);
    v32 = (v9 + 32);
    v30 = (v9 + 8);
    v13 = (a1 + 40);
    v33 = 0x800000022F0DF7E0;
    v34 = a2;
    do
    {
      v15 = *(v13 - 1);
      v14 = *v13;
      *&v41 = 0xD000000000000010;
      *(&v41 + 1) = v12;
      sub_22F0CFF1C();
      MEMORY[0x2318FD2C0](46, 0xE100000000000000);
      MEMORY[0x2318FD2C0](v15, v14);
      v16 = v41;
      [a2 synchronize];
      v17 = sub_22F0D0C7C();
      v18 = [a2 valueForKey_];

      if (v18)
      {
        sub_22F0D13CC();
        swift_unknownObjectRelease();
      }

      else
      {
        v39 = 0u;
        v40 = 0u;
      }

      v41 = v39;
      v42 = v40;
      if (*(&v40 + 1))
      {
        sub_22F04CF78();
        if (swift_dynamicCast())
        {
          v19 = v43;
          [v43 doubleValue];
          v20 = v37;
          sub_22F0D04BC();

          v21 = v35;
          v22 = v36;
          (*v32)(v36, v20, v35);
          *(&v42 + 1) = v21;
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v41);
          (*v31)(boxed_opaque_existential_1Tm, v22, v21);
          sub_22EFFFA24(&v41, &v39);
          v24 = v38;
          v25 = *v38;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v43 = *v24;
          sub_22F018078(&v39, v16, *(&v16 + 1), isUniquelyReferenced_nonNull_native);

          *v24 = v43;
          v27 = v22;
          v28 = v21;
          v12 = v33;
          a2 = v34;
          (*v30)(v27, v28);
          goto LABEL_5;
        }
      }

      else
      {
        sub_22F003A4C(&v41, &qword_27DAA1270, &qword_22F0D7240);
      }

LABEL_5:

      v13 += 2;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t _s6People14MetricTemplateO18allStatusCountKeysSaySSGvgZ_0()
{
  v27 = MEMORY[0x277D84F90];
  sub_22EFFC4E8(0, 10, 0);
  v0 = 0;
  v1 = v27;
  v2 = 0x7373654D64616572;
  do
  {
    v3 = byte_2843C9F38[v0 + 32];
    v4 = 0xEA00000000006C6CLL;
    if (v3 == 8)
    {
      v5 = 0x614364657373696DLL;
    }

    else
    {
      v5 = 0x7261646E656C6163;
    }

    if (v3 != 8)
    {
      v4 = 0xE800000000000000;
    }

    if (v3 == 7)
    {
      v5 = v2;
      v4 = 0xEB00000000656761;
    }

    if (v3 == 5)
    {
      v6 = 0x617453646C696863;
    }

    else
    {
      v6 = 0x654D646165726E75;
    }

    v7 = 0xED00006567617373;
    if (v3 == 5)
    {
      v7 = 0xEA00000000006574;
    }

    if (byte_2843C9F38[v0 + 32] <= 6u)
    {
      v5 = v6;
      v4 = v7;
    }

    if (v3 == 3)
    {
      v8 = 0x7975426F546B7361;
    }

    else
    {
      v8 = 0xD000000000000011;
    }

    v9 = 0xEF74736575716552;
    if (v3 != 3)
    {
      v9 = 0x800000022F0DC350;
    }

    if (v3 == 2)
    {
      v8 = 0x6E6F697461636F6CLL;
      v9 = 0xE800000000000000;
    }

    v10 = 0xEB00000000657461;
    if (byte_2843C9F38[v0 + 32])
    {
      v11 = 0x74536E6F69746F6DLL;
    }

    else
    {
      v11 = 0x6C69617641646E64;
    }

    if (!byte_2843C9F38[v0 + 32])
    {
      v10 = 0xEF7974696C696261;
    }

    if (byte_2843C9F38[v0 + 32] <= 1u)
    {
      v8 = v11;
      v9 = v10;
    }

    if (byte_2843C9F38[v0 + 32] <= 4u)
    {
      v12 = v8;
    }

    else
    {
      v12 = v5;
    }

    if (byte_2843C9F38[v0 + 32] <= 4u)
    {
      v13 = v9;
    }

    else
    {
      v13 = v4;
    }

    v28 = v1;
    v15 = *(v1 + 16);
    v14 = *(v1 + 24);
    if (v15 >= v14 >> 1)
    {
      v17 = v2;
      sub_22EFFC4E8((v14 > 1), v15 + 1, 1);
      v2 = v17;
      v1 = v28;
    }

    ++v0;
    *(v1 + 16) = v15 + 1;
    v16 = v1 + 16 * v15;
    *(v16 + 32) = v12;
    *(v16 + 40) = v13;
  }

  while (v0 != 10);
  v30 = MEMORY[0x277D84F90];
  sub_22EFFC4E8(0, 10, 0);
  v18 = 0;
  do
  {
    v19 = byte_2843C9F38[v18 + 32];
    if (v19 > 4)
    {
      if (byte_2843C9F38[v18 + 32] <= 6u)
      {
        v20 = v19 == 5;
        v21 = 0x617453646C696863;
        if (v20)
        {
          v22 = 0xEA00000000006574;
        }

        else
        {
          v21 = 0x654D646165726E75;
          v22 = 0xED00006567617373;
        }
      }

      else if (v19 == 7)
      {
        v21 = 0x7373654D64616572;
        v22 = 0xEB00000000656761;
      }

      else
      {
        v20 = v19 == 8;
        v21 = 0x614364657373696DLL;
        if (v20)
        {
          v22 = 0xEA00000000006C6CLL;
        }

        else
        {
          v21 = 0x7261646E656C6163;
          v22 = 0xE800000000000000;
        }
      }
    }

    else if (byte_2843C9F38[v18 + 32] <= 1u)
    {
      v20 = v19 == 0;
      v21 = 0x6C69617641646E64;
      if (v20)
      {
        v22 = 0xEF7974696C696261;
      }

      else
      {
        v21 = 0x74536E6F69746F6DLL;
        v22 = 0xEB00000000657461;
      }
    }

    else if (v19 == 2)
    {
      v22 = 0xE800000000000000;
      v21 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v20 = v19 == 3;
      v21 = 0x7975426F546B7361;
      if (v20)
      {
        v22 = 0xEF74736575716552;
      }

      else
      {
        v21 = 0xD000000000000011;
        v22 = 0x800000022F0DC350;
      }
    }

    v29 = v21;
    sub_22F0CFF1C();
    MEMORY[0x2318FD2C0](0x6465726F6E67692ELL, 0xE800000000000000);

    v24 = *(v30 + 16);
    v23 = *(v30 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_22EFFC4E8((v23 > 1), v24 + 1, 1);
    }

    ++v18;
    *(v30 + 16) = v24 + 1;
    v25 = v30 + 16 * v24;
    *(v25 + 32) = v29;
    *(v25 + 40) = v22;
  }

  while (v18 != 10);
  sub_22F007248(v30);
  return v1;
}

id _s6People14MetricTemplateO14metricsEnabledSbvgZ_0()
{
  sub_22F0D0D2C();
  has_internal_ui = os_variant_has_internal_ui();
  sub_22F0D00CC();
  if (!has_internal_ui)
  {
    return 0;
  }

  if (qword_280CBEF20 != -1)
  {
    swift_once();
  }

  [qword_280CBEF28 synchronize];
  v1 = qword_280CBEF28;
  v2 = sub_22F0D0C7C();
  v3 = [v1 BOOLForKey_];

  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v4 = sub_22F0D0A1C();
  __swift_project_value_buffer(v4, qword_280CBEC40);
  v5 = sub_22F0D09FC();
  v6 = sub_22F0D122C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_22F00A560(0x457363697274656DLL, 0xEE0064656C62616ELL, &v10);
    *(v7 + 12) = 1024;
    *(v7 + 14) = v3;
    _os_log_impl(&dword_22EFE1000, v5, v6, "%s value %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x2318FE8B0](v8, -1, -1);
    MEMORY[0x2318FE8B0](v7, -1, -1);
  }

  return v3;
}

id sub_22F0A7D80()
{
  v1 = qword_2843CB770;
  v0 = off_2843CB778;
  v2 = qword_27DAA05F0;
  sub_22F0CFF1C();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_27DAACF08;
  if (qword_27DAACF08)
  {
    MEMORY[0x2318FD2C0](v1, v0);
    v4 = sub_22F0D0C7C();

    [v3 removeObjectForKey_];

    MEMORY[0x2318FD2C0](v1, v0);
    v5 = sub_22F0D0C7C();

    [v3 removeObjectForKey_];
  }

  v7 = qword_2843CB780;
  v6 = off_2843CB788;
  v8 = qword_27DAA05F0;
  sub_22F0CFF1C();
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_27DAACF08;
  if (qword_27DAACF08)
  {
    MEMORY[0x2318FD2C0](v7, v6);
    v10 = sub_22F0D0C7C();

    [v9 removeObjectForKey_];

    MEMORY[0x2318FD2C0](v7, v6);
    v11 = sub_22F0D0C7C();

    [v9 removeObjectForKey_];
  }

  if (qword_27DAA05F0 != -1)
  {
    swift_once();
  }

  v12 = qword_27DAACF08;

  return [v12 synchronize];
}

id sub_22F0A8018()
{
  v0 = &off_2843CB778;
  v1 = 2;
  do
  {
    v3 = *(v0 - 1);
    v2 = *v0;
    v4 = qword_280CBD6C8;
    sub_22F0CFF1C();
    if (v4 == -1)
    {
      v5 = qword_280CC1268;
      if (!qword_280CC1268)
      {
        goto LABEL_2;
      }

LABEL_5:
      MEMORY[0x2318FD2C0](46, 0xE100000000000000);
      MEMORY[0x2318FD2C0](v3, v2);
      v6 = sub_22F0D0C7C();

      [v5 removeObjectForKey_];

      MEMORY[0x2318FD2C0](46, 0xE100000000000000);
      MEMORY[0x2318FD2C0](v3, v2);
      v7 = sub_22F0D0C7C();

      [v5 removeObjectForKey_];

      MEMORY[0x2318FD2C0](46, 0xE100000000000000);
      MEMORY[0x2318FD2C0](v3, v2);
      v8 = sub_22F0D0C7C();

      [v5 removeObjectForKey_];

      goto LABEL_2;
    }

    swift_once();
    v5 = qword_280CC1268;
    if (qword_280CC1268)
    {
      goto LABEL_5;
    }

LABEL_2:

    v0 += 2;
    --v1;
  }

  while (v1);
  if (qword_280CBD6C8 != -1)
  {
    swift_once();
  }

  v9 = 0;
  v10 = qword_280CC1268;
  v14 = qword_280CC1268;
  do
  {
    if (v10)
    {
      byte_2843C9F38[v9 + 32];
      byte_2843C9F38[v9 + 32];
      byte_2843C9F38[v9 + 32];
      byte_2843C9F38[v9 + 32];
      v11 = sub_22F0D0C7C();

      [v14 removeObjectForKey_];

      sub_22F0CFF1C();
      MEMORY[0x2318FD2C0](0x6465726F6E67692ELL, 0xE800000000000000);

      v12 = sub_22F0D0C7C();

      v10 = v14;
      [v14 removeObjectForKey_];
    }

    ++v9;
  }

  while (v9 != 10);

  return [v10 synchronize];
}

char *sub_22F0A8694(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 24);
  *v48 = *a1;
  *&v48[8] = *(a1 + 8);
  v48[24] = v3;
  v4 = sub_22F0A8F64(v48);
  if (v4)
  {
    v5 = v4;
    if (qword_280CBEC38 != -1)
    {
LABEL_32:
      swift_once();
    }

    v6 = sub_22F0D0A1C();
    __swift_project_value_buffer(v6, qword_280CBEC40);
    v7 = v5;
    v8 = sub_22F0D09FC();
    v9 = sub_22F0D124C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v48 = v40;
      *v10 = 136315138;
      v11 = [v7 debugDescription];
      v12 = sub_22F0D0CAC();
      v13 = v7;
      v15 = v14;

      v16 = sub_22F00A560(v12, v15, v48);
      v7 = v13;

      *(v10 + 4) = v16;
      _os_log_impl(&dword_22EFE1000, v8, v9, "interaction settings %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x2318FE8B0](v40, -1, -1);
      MEMORY[0x2318FE8B0](v10, -1, -1);
    }

    v17 = [v2 adviseInteractionsUsingSettings_];
    if (!v17 || (v18 = v17, v19 = sub_22F0D0F4C(), v18, v20 = sub_22F0A8CF8(v19), , !v20))
    {

      v20 = MEMORY[0x277D84F90];
    }

    sub_22F0CFF1C();
    v21 = sub_22F0D09FC();
    v22 = sub_22F0D124C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v48 = v24;
      *v23 = 136315138;
      v25 = sub_22F01B924(0, &qword_27DAA2130, 0x277CFE070);
      v26 = MEMORY[0x2318FD490](v20, v25);
      v28 = sub_22F00A560(v26, v27, v48);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_22EFE1000, v21, v22, "interactions received %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x2318FE8B0](v24, -1, -1);
      MEMORY[0x2318FE8B0](v23, -1, -1);
    }

    v5 = (v20 & 0xFFFFFFFFFFFFFF8);
    if (v20 >> 62)
    {
      v29 = sub_22F0D143C();
      if (v29)
      {
LABEL_12:
        v30 = 0;
        v2 = (v20 & 0xC000000000000001);
        v31 = MEMORY[0x277D84F90];
        do
        {
          v32 = v30;
          while (1)
          {
            if (v2)
            {
              v33 = MEMORY[0x2318FDAB0](v32, v20);
              v30 = v32 + 1;
              if (__OFADD__(v32, 1))
              {
                goto LABEL_30;
              }
            }

            else
            {
              if (v32 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_31;
              }

              v33 = *(v20 + 8 * v32 + 32);
              v30 = v32 + 1;
              if (__OFADD__(v32, 1))
              {
LABEL_30:
                __break(1u);
LABEL_31:
                __break(1u);
                goto LABEL_32;
              }
            }

            sub_22F059CB4(v33, v48);
            if (*&v48[16])
            {
              break;
            }

            v46 = v49;
            v47[0] = v50[0];
            *(v47 + 10) = *(v50 + 10);
            v44 = *v48;
            v45 = *&v48[16];
            sub_22F0A935C(&v44);
            ++v32;
            if (v30 == v29)
            {
              goto LABEL_35;
            }
          }

          v46 = v49;
          v47[0] = v50[0];
          *(v47 + 10) = *(v50 + 10);
          v44 = *v48;
          v45 = *&v48[16];
          v34 = v7;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_22F03CEB0(0, *(v31 + 2) + 1, 1, v31);
          }

          v36 = *(v31 + 2);
          v35 = *(v31 + 3);
          if (v36 >= v35 >> 1)
          {
            v31 = sub_22F03CEB0((v35 > 1), v36 + 1, 1, v31);
          }

          *&v43[10] = *(v47 + 10);
          v42 = v46;
          *v43 = v47[0];
          v37 = v44;
          v41 = v45;
          *(v31 + 2) = v36 + 1;
          v38 = &v31[80 * v36];
          *(v38 + 2) = v37;
          *(v38 + 90) = *&v43[10];
          *(v38 + 4) = v42;
          *(v38 + 5) = *v43;
          *(v38 + 3) = v41;
          v7 = v34;
        }

        while (v30 != v29);
        goto LABEL_35;
      }
    }

    else
    {
      v29 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        goto LABEL_12;
      }
    }

    v31 = MEMORY[0x277D84F90];
LABEL_35:

    return v31;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22F0A8B84(unint64_t a1, uint64_t *a2)
{
  v12 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_15:
    sub_22F0D143C();
    sub_22F0D161C();
    v5 = sub_22F0D143C();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22F0D161C();
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2318FDAB0](v6, a1);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();
            sub_22F0D00CC();
            return 0;
          }
        }

        else
        {
          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v7 = *(a1 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_12;
          }
        }

        v9 = *a2;
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_22F0D15EC();
        v10 = *(v12 + 16);
        sub_22F0D162C();
        sub_22F0D163C();
        sub_22F0D15FC();
        ++v6;
      }

      while (v8 != v5);
    }
  }

  return v12;
}

uint64_t sub_22F0A8CF8(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_22F0D161C();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_22F003598(i, v6);
    sub_22F01B924(0, &qword_27DAA2130, 0x277CFE070);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_22F0D15EC();
    v4 = *(v7 + 16);
    sub_22F0D162C();
    sub_22F0D163C();
    sub_22F0D15FC();
    if (!--v2)
    {
      return v7;
    }
  }

  sub_22F0D00CC();
  return 0;
}

uint64_t sub_22F0A8E28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2138, &unk_22F0DAFD0);
    v3 = sub_22F0D14EC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      v11 = *(v3 + 40);
      sub_22F0D199C();
      MEMORY[0x2318FDEE0](v10);
      result = sub_22F0D19CC();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22F0A8F64(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 24);
  v5 = [objc_opt_self() interactionAdvisorSettingsDefault];
  [v5 setResultLimit_];
  if (*(v1 + 16))
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = v5;
    v8 = sub_22F0D112C();
    [v7 setConstrainPersonIds_];
  }

  if (*(v3 + 16))
  {
    if (v5)
    {
      v9 = v5;
      v10 = sub_22F0D112C();
      [v9 setConstrainIdentifiers_];

      goto LABEL_10;
    }

    return v5;
  }

  if (!v5)
  {
    return v5;
  }

LABEL_10:
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 != 4)
      {
        v35 = v5;
        v34 = 0;
LABEL_39:
        [v5 setConstrainMechanisms_];

        return v5;
      }

      v13 = MEMORY[0x277D84FA0];
      v14 = *(MEMORY[0x277D84FA0] + 16);
      if (v14)
      {
        goto LABEL_22;
      }

LABEL_19:
      v15 = v5;

      v16 = MEMORY[0x277D84F90];
LABEL_38:
      sub_22F058DAC(v16);

      sub_22F01B924(0, &qword_27DAA1850, 0x277CCABB0);
      sub_22F0A93C4();
      v34 = sub_22F0D112C();

      goto LABEL_39;
    }

    v12 = &unk_2843CB078;
  }

  else
  {
    v11 = &unk_2843CB110;
    if (v4 != 1)
    {
      v11 = &unk_2843CB0A0;
    }

    if (v4)
    {
      v12 = v11;
    }

    else
    {
      v12 = &unk_2843CB0D8;
    }
  }

  v13 = sub_22F0A8E28(v12);
  v14 = *(v13 + 16);
  if (!v14)
  {
    goto LABEL_19;
  }

LABEL_22:
  v38 = MEMORY[0x277D84F90];
  v36 = v5;
  v17 = v5;
  sub_22F0D161C();
  v18 = v13 + 56;
  v19 = -1 << *(v13 + 32);
  result = sub_22F0D13FC();
  v21 = result;
  v22 = 0;
  v37 = v14;
  while ((v21 & 0x8000000000000000) == 0 && v21 < 1 << *(v13 + 32))
  {
    v24 = v21 >> 6;
    if ((*(v18 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
    {
      goto LABEL_43;
    }

    v25 = *(v13 + 36);
    [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    sub_22F0D15EC();
    v26 = *(v38 + 16);
    sub_22F0D162C();
    sub_22F0D163C();
    result = sub_22F0D15FC();
    v23 = 1 << *(v13 + 32);
    if (v21 >= v23)
    {
      goto LABEL_44;
    }

    v27 = *(v18 + 8 * v24);
    if ((v27 & (1 << v21)) == 0)
    {
      goto LABEL_45;
    }

    if (v25 != *(v13 + 36))
    {
      goto LABEL_46;
    }

    v28 = v27 & (-2 << (v21 & 0x3F));
    if (v28)
    {
      v23 = __clz(__rbit64(v28)) | v21 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v24 << 6;
      v30 = v24 + 1;
      v31 = (v13 + 64 + 8 * v24);
      while (v30 < (v23 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_22F0097CC(v21, v25, 0);
          v23 = __clz(__rbit64(v32)) + v29;
          goto LABEL_24;
        }
      }

      result = sub_22F0097CC(v21, v25, 0);
    }

LABEL_24:
    ++v22;
    v21 = v23;
    if (v22 == v37)
    {

      v16 = v38;
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_22F0A935C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2128, &qword_22F0DAFC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22F0A93C4()
{
  result = qword_27DAA1858;
  if (!qword_27DAA1858)
  {
    sub_22F01B924(255, &qword_27DAA1850, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1858);
  }

  return result;
}

uint64_t sub_22F0A942C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1880, &unk_22F0D8280);
    v3 = sub_22F0D14EC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_22F0D199C();
      sub_22F0CFF1C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_22F0D188C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t LSApplicationProxyProtocol.bundleIdentifier.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 16))();
  if (!v3)
  {
    __break(1u);
  }

  return result;
}

void LSApplicationWorkspace.applications(forIntentClass:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v2)
  {
    sub_22F0D0CAC();
    v2 = sub_22F0D0C7C();
  }

  v3 = [v0 applicationsForUserActivityType_];

  if (v3)
  {
    sub_22F01B06C();
    v4 = sub_22F0D0F4C();

    sub_22F0191C4(v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_22F0A9678()
{
  v1 = *v0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v3)
  {
    sub_22F0D0CAC();
    v3 = sub_22F0D0C7C();
  }

  v4 = [v1 applicationsForUserActivityType_];

  if (v4)
  {
    sub_22F01B06C();
    v5 = sub_22F0D0F4C();

    sub_22F0191C4(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22F0A9730()
{
  v1 = [*v0 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22F0D0CAC();

  return v3;
}

People::Point __swiftcall Point.init(x:y:)(Swift::Double x, Swift::Double y)
{
  *v2 = x;
  v2[1] = y;
  result.y = y;
  result.x = x;
  return result;
}

void __swiftcall BezierSpline.init(_:_:)(People::BezierSpline *__return_ptr retstr, People::Point a2, People::Point a3)
{
  v5 = *v4;
  retstr->point1 = *v3;
  retstr->point2 = v5;
  retstr->tolerance = 0.000001;
}

People::Point __swiftcall BezierSpline.point(atX:)(Swift::Double atX)
{
  v4 = v1;
  v5 = *v2 == *(v2 + 8) && *(v2 + 16) == *(v2 + 24);
  v6 = atX;
  if (!v5)
  {
    v7 = *(v2 + 32);
    v11 = *v2;
    v8 = sub_22F0A9A3C(atX);
    swift_getKeyPath();
    v6 = sub_22F0A9980(v8);
    sub_22F0D00CC();
  }

  *v4 = atX;
  *(v4 + 8) = v6;
  result.y = v9;
  result.x = atX;
  return result;
}

double static Point.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_27DAA0600 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_27DAA2140;
  *a1 = xmmword_27DAA2140;
  return result;
}

__n128 BezierSpline.point1.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 BezierSpline.point2.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

long double sub_22F0A9980(long double a1)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = 1.0 - a1;
  v6 = v5 * v5 * 3.0 * a1;
  v9 = *v1;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  return v6 * v8 + a1 * a1 * (v5 * 3.0) * v8 + pow(a1, 3.0);
}

double sub_22F0A9A3C(double a1)
{
  v11 = *(v1 + 1);
  v12 = *v1;
  v3 = v1[4];
  v4 = 0.0;
  v5 = 1.0;
  while (1)
  {
    v6 = v4 + (v5 - v4) * 0.5;
    v7 = *&v11 * (v6 * v6 * ((1.0 - v6) * 3.0)) + *&v12 * (v6 * ((1.0 - v6) * (1.0 - v6) * 3.0)) + pow(v6, 3.0);
    if (v7 - v3 <= a1 && v3 + v7 >= a1)
    {
      break;
    }

    if (v7 < a1)
    {
      v4 = v4 + (v5 - v4) * 0.5;
    }

    else
    {
      v5 = v4 + (v5 - v4) * 0.5;
    }

    if (v4 > v5)
    {
      sub_22F0D169C();
      __break(1u);
      break;
    }
  }

  swift_getKeyPath();
  v9 = sub_22F0A9980(v6);
  sub_22F0D00CC();
  return v9;
}

People::Point __swiftcall BezierSpline.point(atTime:)(Swift::Double atTime)
{
  v4 = v1;
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  swift_getKeyPath();
  v10 = sub_22F0A9980(atTime);
  sub_22F0D00CC();
  swift_getKeyPath();
  v11 = sub_22F0A9980(atTime);
  sub_22F0D00CC();
  *v4 = v10;
  v4[1] = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

uint64_t getEnumTagSinglePayload for Point(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Point(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_22F0A9CC0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22F0A9CE0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_22F0A9D54(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, double))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  return a3(a1, v12);
}

void sub_22F0A9EC8()
{
  v0 = sub_22F0D06BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v6 = objc_opt_self();
  v7 = sub_22F0D0C7C();
  sub_22F0D066C();
  v8 = sub_22F0D062C();
  (*(v1 + 8))(v4, v0);
  v9 = [v6 dateFormatFromTemplate:v7 options:0 locale:v8];

  [v5 setDateFormat_];
  qword_27DAA2150 = v5;
}

id static Date.todayFormatter.getter()
{
  if (qword_27DAA0608 != -1)
  {
    swift_once();
  }

  v1 = qword_27DAA2150;

  return v1;
}

uint64_t static Date.relativeDateString(from:)()
{
  v0 = sub_22F0D05BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22F0D06FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F0D06EC();
  if (sub_22F0D06DC())
  {
    if (qword_27DAA0608 != -1)
    {
      swift_once();
    }

    v10 = qword_27DAA2150;
    v11 = sub_22F0D051C();
    v12 = [v10 stringFromDate_];

    v13 = sub_22F0D0CAC();
  }

  else
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CCAC78]) init];
    [v14 setUnitsStyle_];
    v15 = sub_22F0D051C();
    sub_22F0D05AC();
    v16 = sub_22F0D051C();
    (*(v1 + 8))(v4, v0);
    v12 = [v14 localizedStringForDate:v15 relativeToDate:v16];

    v13 = sub_22F0D0CAC();
  }

  (*(v6 + 8))(v9, v5);
  return v13;
}

Swift::String __swiftcall Date.relativeDateString()()
{
  v0 = static Date.relativeDateString(from:)();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t Date.isExpired(maxAge:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - v3;
  v5 = sub_22F0D05BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  sub_22F0D05AC();
  v13 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v1 + 8))(v4, v0);
  sub_22F0D054C();
  v14 = sub_22F0D053C();
  v15 = *(v6 + 8);
  v15(v10, v5);
  v15(v12, v5);
  return v14 & 1;
}

uint64_t sub_22F0AA578(void (*a1)(unint64_t, void))
{
  v2 = sub_22F025B10(MEMORY[0x277D84F90]);
  if (qword_27DAA0568 != -1)
  {
    swift_once();
  }

  v3 = sub_22F0D0A1C();
  __swift_project_value_buffer(v3, qword_27DAA1A10);
  sub_22F0CFF1C();
  v4 = sub_22F0D09FC();
  v5 = sub_22F0D124C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2158, &qword_22F0DB178);
    v8 = sub_22F0D0B0C();
    v10 = sub_22F00A560(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22EFE1000, v4, v5, "overriding status: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x2318FE8B0](v7, -1, -1);
    MEMORY[0x2318FE8B0](v6, -1, -1);
  }

  a1(v2, 0);
}

uint64_t static PeopleConstants.deviceClass.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27DAA0610 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_27DAA2160;
  return result;
}

uint64_t DeviceClass.rawValue.getter()
{
  v1 = 0x656E6F685069;
  if (*v0 != 1)
  {
    v1 = 1684099177;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6512973;
  }
}

uint64_t static PeopleWidgetConfiguration.maxContacts(forFamily:)(uint64_t a1)
{
  if ((a1 - 2) > 2)
  {
    return 1;
  }

  else
  {
    return qword_22F0DB2E0[a1 - 2];
  }
}

People::DeviceClass_optional __swiftcall DeviceClass.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F0D174C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22F0AA904(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  if (v2 != 1)
  {
    v4 = 1684099177;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 6512973;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656E6F685069;
  if (*a2 != 1)
  {
    v8 = 1684099177;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6512973;
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
    v11 = sub_22F0D188C();
  }

  return v11 & 1;
}

uint64_t sub_22F0AA9E8()
{
  v1 = *v0;
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F0AAA78()
{
  *v0;
  *v0;
  sub_22F0D0D5C();
}

uint64_t sub_22F0AAAF4()
{
  v1 = *v0;
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

void sub_22F0AAB8C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656E6F685069;
  if (v2 != 1)
  {
    v5 = 1684099177;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6512973;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_22F0AB030()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v9 - v4;
  __swift_allocate_value_buffer(v3, qword_27DAA21C8);
  __swift_project_value_buffer(v0, qword_27DAA21C8);
  if (qword_27DAA0630 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27DAA21B0);
  (*(v1 + 16))(v5, v6, v0);
  sub_22F0D018C();
  (*(v1 + 8))(v5, v0);
  v7 = [objc_opt_self() minutes];
  sub_22F014850();
  return sub_22F0D017C();
}

uint64_t sub_22F0AB1F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v9 - v4;
  __swift_allocate_value_buffer(v3, qword_27DAA21E0);
  __swift_project_value_buffer(v0, qword_27DAA21E0);
  if (qword_27DAA0630 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27DAA21B0);
  (*(v1 + 16))(v5, v6, v0);
  sub_22F0D018C();
  (*(v1 + 8))(v5, v0);
  v7 = [objc_opt_self() minutes];
  sub_22F014850();
  return sub_22F0D017C();
}

uint64_t sub_22F0AB4CC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  if (qword_280CBD900 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v3, qword_280CBD908);
  v6 = *(*(v3 - 8) + 16);

  return v6(v4, v5, v3);
}

uint64_t sub_22F0AB618(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  v6 = [objc_opt_self() *a3];
  sub_22F014850();
  return sub_22F0D017C();
}

uint64_t sub_22F0AB6E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

id sub_22F0AB7D0()
{
  result = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:0.0 longitude:0.0];
  qword_27DAACF10 = result;
  return result;
}

uint64_t static PeopleWidgetConfiguration.minContacts(forFamily:)(uint64_t a1)
{
  if ((a1 - 2) > 2)
  {
    return -1;
  }

  else
  {
    return qword_22F0DB2F8[a1 - 2];
  }
}

unint64_t sub_22F0ABA80()
{
  result = qword_27DAA2258;
  if (!qword_27DAA2258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2258);
  }

  return result;
}

uint64_t sub_22F0ABB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22F015708;

  return StatusFetcher.fetchStatus@Sendable (for:)(a1, a2, a3);
}

uint64_t StatusFetcher.fetchStatus@Sendable (for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_22F0ABBFC, 0, 0);
}

uint64_t sub_22F0ABBFC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1730, &qword_22F0D7740);
  *v5 = v0;
  v5[1] = sub_22F0ABD10;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000011, 0x800000022F0DFC00, sub_22F0AC184, v3, v6);
}

uint64_t sub_22F0ABD10()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_22F0ABE2C;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_22F054604;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22F0ABE2C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_22F0ABE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2260, "j{");
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  (*(a5 + 24))(a3, a4, a5);
  (*(v10 + 16))(v13, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  sub_22F0D094C();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

uint64_t sub_22F0AC01C(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2260, "j{");
    return sub_22F0D107C();
  }

  else
  {
    sub_22F0CFF1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2260, "j{");
    return sub_22F0D108C();
  }
}

uint64_t StatusSource.debugID.getter(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0xE000000000000000;
  (*(a2 + 16))(&v3);
  sub_22F032B24(v3);
  return v4;
}

uint64_t sub_22F0AC0FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2268, &unk_22F0DB360);
  sub_22F035260();
  swift_allocError();
  *v0 = 0xD000000000000023;
  v0[1] = 0x800000022F0DFC20;
  return sub_22F0D095C();
}

uint64_t dispatch thunk of StatusFetcher.fetchStatus(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22F015A70;

  return v11(a1, a2, a3);
}

{
  return (*(a3 + 24))();
}

uint64_t sub_22F0AC2F4(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2260, "j{") - 8) + 80);

  return sub_22F0AC01C(a1);
}

void sub_22F0AC394(uint64_t a1)
{
  sub_22F01276C(a1, v10);
  v2 = v11;
  if (v11)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v10, v11);
    v4 = *(v2 - 8);
    v5 = *(v4 + 64);
    MEMORY[0x28223BE20](v3);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7);
    v8 = sub_22F0D187C();
    (*(v4 + 8))(v7, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_22F0D0C7C();
  [v1 setValue:v8 forKey:v9];
  swift_unknownObjectRelease();
}

double sub_22F0AC4F4@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_22F0D0C7C();
  v5 = [v3 valueForKey_];

  if (v5)
  {
    sub_22F0D13CC();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

void sub_22F0AC588()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_22F0D0C7C();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
    v3 = sub_22F0D0C7C();
    [v2 addSuiteNamed_];
  }

  qword_280CBEF28 = v2;
}

id static PeopleUserDefaults.shared.getter()
{
  if (qword_280CBEF20 != -1)
  {
    swift_once();
  }

  v1 = qword_280CBEF28;

  return v1;
}

id sub_22F0AC6A4@<X0>(void *a1@<X8>)
{
  if (qword_280CBEF20 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_280CBEF28;
  *a1 = qword_280CBEF28;

  return v2;
}

uint64_t sub_22F0AC714(id *a1)
{
  v1 = qword_280CBEF20;
  v2 = *a1;
  if (v1 != -1)
  {
    v3 = v2;
    swift_once();
    v2 = v3;
  }

  qword_280CBEF28 = v2;

  return MEMORY[0x2821F96F8]();
}

id PeopleUserDefaults.__allocating_init(suiteName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_22F0D0C7C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(v2) initWithSuiteName_];

  return v4;
}

id PeopleUserDefaults.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_22F0D0C7C();
  }

  else
  {
    v3 = 0;
  }

  v6.receiver = v2;
  v6.super_class = type metadata accessor for PeopleUserDefaults();
  v4 = objc_msgSendSuper2(&v6, sel_initWithSuiteName_, v3);

  if (v4)
  {
  }

  return v4;
}

id PeopleUserDefaults.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeopleUserDefaults();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SelectPerson.init()@<X0>(uint64_t *a1@<X8>)
{
  v76 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22A0, &qword_22F0DB410);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v68 = v58 - v3;
  v79 = sub_22F0CFFCC();
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v79);
  v73 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22A8, &qword_22F0DB418);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1540, &qword_22F0DB420);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v58 - v16;
  v58[0] = v58 - v16;
  v18 = sub_22F0D036C();
  v75 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22B0, &qword_22F0DB428);
  sub_22F0D034C();
  v23 = *(v19 + 56);
  v80 = v19 + 56;
  v78 = v23;
  v23(v17, 1, 1, v18);
  v24 = sub_22F0CFDEC();
  v81 = 0;
  v82 = 0;
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v27 = v25 + 56;
  v26(v13, 1, 1, v24);
  v67 = v11;
  v26(v11, 1, 1, v24);
  v74 = *MEMORY[0x277CBA308];
  v28 = *(v4 + 104);
  v77 = v4 + 104;
  v28(v73);
  sub_22F034BA0();
  v29 = v58[0];
  *v76 = sub_22F0CFEAC();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22B8, &qword_22F0DB430);
  sub_22F0D034C();
  v78(v29, 1, 1, v75);
  LOBYTE(v81) = 0;
  v31 = sub_22F0D105C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v65 = v31;
  v64 = v33;
  v62 = v32 + 56;
  (v33)(v68, 1, 1);
  v26(v13, 1, 1, v24);
  v71 = v28;
  (v28)(v73, v74, v79);
  v63 = v30;
  v76[1] = sub_22F0CFEBC();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22C0, &qword_22F0DB438);
  v66 = v22;
  sub_22F0D034C();
  v34 = v29;
  v78(v29, 1, 1, v75);
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v26(v13, 1, 1, v24);
  v72 = v24;
  v70 = v26;
  v69 = v27;
  v26(v67, 1, 1, v24);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22C8, &qword_22F0DB440);
  swift_getKeyPath();
  v60 = v35;
  v85 = sub_22F0D002C();
  v81 = &unk_2843CB790;
  if (qword_280CBEC28 != -1)
  {
    swift_once();
  }

  v36 = qword_280CBEC30;
  v59 = type metadata accessor for ContactFetcher();
  v83 = v59;
  v84 = &protocol witness table for ContactFetcher;
  v82 = v36;
  v37 = v73;
  v71(v73, v74, v79);
  v58[2] = sub_22F0AF338();
  v58[1] = sub_22F04164C();
  swift_retain_n();
  v38 = v67;
  v39 = sub_22F0CFE9C();
  v40 = v76;
  v76[2] = v39;
  v41 = v40;
  sub_22F0D034C();
  v42 = v13;
  v78(v34, 1, 1, v75);
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v43 = v13;
  v44 = v72;
  v45 = v70;
  v70(v43, 1, 1, v72);
  v45(v38, 1, 1, v44);
  swift_getKeyPath();
  v85 = sub_22F0D002C();
  v83 = v59;
  v84 = &protocol witness table for ContactFetcher;
  v81 = &unk_2843CB7B8;
  v82 = v36;
  v46 = v37;
  v47 = v74;
  v48 = v79;
  v71(v46, v74, v79);
  v41[3] = sub_22F0CFE9C();
  sub_22F0D034C();
  v49 = v34;
  v50 = v75;
  v78(v34, 1, 1, v75);
  LOBYTE(v81) = 1;
  v51 = v68;
  v64(v68, 1, 1, v65);
  v70(v42, 1, 1, v72);
  v52 = v73;
  v53 = v47;
  v54 = v71;
  v71(v73, v53, v48);
  v55 = sub_22F0CFEBC();
  v56 = v76;
  v76[4] = v55;
  sub_22F0D034C();
  v78(v49, 1, 1, v50);
  LOBYTE(v81) = 0;
  v64(v51, 1, 1, v65);
  v70(v42, 1, 1, v72);
  v54(v52, v74, v79);
  result = sub_22F0CFEBC();
  v56[5] = result;
  return result;
}

uint64_t sub_22F0AD3E0()
{
  v0 = sub_22F0D036C();
  __swift_allocate_value_buffer(v0, qword_27DAA2270);
  __swift_project_value_buffer(v0, qword_27DAA2270);
  return sub_22F0D034C();
}

uint64_t (*static SelectPerson.title.modify())()
{
  if (qword_27DAA0678 != -1)
  {
    swift_once();
  }

  v0 = sub_22F0D036C();
  __swift_project_value_buffer(v0, qword_27DAA2270);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_22F0AD554()
{
  v0 = sub_22F0CFEEC();
  __swift_allocate_value_buffer(v0, qword_27DAA2288);
  __swift_project_value_buffer(v0, qword_27DAA2288);
  return sub_22F0CFEDC();
}

uint64_t sub_22F0AD5E0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  swift_beginAccess();
  return (*(*(v7 - 8) + 16))(a4, v8, v7);
}

uint64_t sub_22F0AD6CC(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a2 == -1)
  {
    v6 = a3(0);
  }

  else
  {
    swift_once();
    v6 = a3(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a4);
  swift_beginAccess();
  v9 = *(v7 - 8);
  (*(v9 + 24))(v8, a1, v7);
  swift_endAccess();
  return (*(v9 + 8))(a1, v7);
}

uint64_t (*static SelectPerson.description.modify())()
{
  if (qword_27DAA0680 != -1)
  {
    swift_once();
  }

  v0 = sub_22F0CFEEC();
  __swift_project_value_buffer(v0, qword_27DAA2288);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22F0AD84C@<X0>(void *a1@<X3>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  swift_beginAccess();
  return (*(*(v7 - 8) + 16))(a4, v8, v7);
}

uint64_t sub_22F0AD904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t a7)
{
  if (*a5 == -1)
  {
    v9 = a6(0);
  }

  else
  {
    swift_once();
    v9 = a6(0);
  }

  v10 = v9;
  v11 = __swift_project_value_buffer(v9, a7);
  swift_beginAccess();
  (*(*(v10 - 8) + 24))(v11, a1, v10);
  return swift_endAccess();
}

double sub_22F0AD9E8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_22F0CFE6C();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_22F0ADA24(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = a1[1];
  sub_22F0B12F4(*a1);
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFE7C();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

uint64_t SelectPerson.person.setter(__int128 *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_22F0CFE7C();
}

uint64_t (*SelectPerson.person.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_22F0CFE5C();
  return sub_22F034C18;
}

uint64_t SelectPerson.shouldShowButtons.getter()
{
  v1 = *(v0 + 8);
  sub_22F0CFE6C();
  return v3;
}

uint64_t sub_22F0ADBE4(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = *a1;
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFE7C();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

uint64_t (*SelectPerson.shouldShowButtons.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_22F0CFE5C();
  return sub_22F034C18;
}

uint64_t sub_22F0ADD84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  sub_22F0B1290(*a1);
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFE7C();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

uint64_t SelectPerson.messageButton.setter(__int128 *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 4);
  return sub_22F0CFE7C();
}

uint64_t (*SelectPerson.messageButton.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_22F0CFE5C();
  return sub_22F034C18;
}

uint64_t sub_22F0ADF4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  sub_22F0B1290(*a1);
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFE7C();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

uint64_t SelectPerson.callButton.setter(__int128 *a1)
{
  v2 = *(v1 + 24);
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 4);
  return sub_22F0CFE7C();
}

uint64_t (*SelectPerson.callButton.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_22F0CFE5C();
  return sub_22F033E90;
}

uint64_t SelectPerson.verticalLayoutDT.getter()
{
  v1 = *(v0 + 32);
  sub_22F0CFE6C();
  return v3;
}

uint64_t sub_22F0AE124(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = *a1;
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFE7C();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

uint64_t (*SelectPerson.verticalLayoutDT.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 32);
  *(v3 + 32) = sub_22F0CFE5C();
  return sub_22F034C18;
}

uint64_t SelectPerson.verticalLayoutDF.getter()
{
  v1 = *(v0 + 40);
  sub_22F0CFE6C();
  return v3;
}

uint64_t sub_22F0AE2D4(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v9 = *a1;
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFE7C();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

uint64_t (*SelectPerson.verticalLayoutDF.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 40);
  *(v3 + 32) = sub_22F0CFE5C();
  return sub_22F034C18;
}

uint64_t sub_22F0AE450()
{
  v1 = v0;
  v2 = v0[6];
  v3 = sub_22F0D001C();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    swift_getKeyPath();
    sub_22F0B13DC();
    sub_22F0CFECC();
    sub_22F0D00CC();
    sub_22F0D00CC();
    v5 = v40;
    sub_22F0CFE0C();
    v6 = _s6People19PersonTypeAppEntityV15decodeContactID3forSSSgAF_tFZ_0(v39, v40);
    v8 = v7;

    if (v8)
    {
      v9 = v1[4];
      v10 = v1[5];
      __swift_project_boxed_opaque_existential_1(v1 + 1, v9);
      v37 = (*(v10 + 24))(v6, v8, 0, v9, v10);
      if (v37)
      {
        v36 = v6;
        if (qword_280CBDB28 != -1)
        {
          goto LABEL_25;
        }

        while (1)
        {
          v11 = sub_22F0D0A1C();
          __swift_project_value_buffer(v11, qword_280CBDB30);
          sub_22F0CFFAC();
          sub_22F0CFFAC();
          sub_22F0CFF1C();
          v12 = sub_22F0D09FC();
          v13 = sub_22F0D122C();

          sub_22F0D00CC();
          sub_22F0D00CC();
          if (os_log_type_enabled(v12, v13))
          {
            v14 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v38[0] = v34;
            *v14 = 136315394;
            sub_22F0CFE0C();
            v15 = sub_22F00A560(v39, v40, v38);

            *(v14 + 4) = v15;
            *(v14 + 12) = 2080;
            *(v14 + 14) = sub_22F00A560(v36, v8, v38);
            _os_log_impl(&dword_22EFE1000, v12, v13, "Decoded quick action person id: %s, contactID: %s", v14, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x2318FE8B0](v34, -1, -1);
            MEMORY[0x2318FE8B0](v14, -1, -1);
          }

          v16 = *v1;
          v17 = *(*v1 + 16);
          if (!v17)
          {
            break;
          }

          v33 = v8;
          v35 = v5;
          v39 = v4;
          sub_22EFFC7F0(0, v17, 0);
          v1 = 0;
          v18 = v39;
          v19 = *(v39 + 16);
          v20 = 16 * v19;
          v21 = MEMORY[0x277D84FA0];
          v22 = (v16 + 32);
          do
          {
            v24 = *v22++;
            v23 = v24;
            v39 = v18;
            v25 = *(v18 + 24);
            v26 = v19 + 1;
            if (v19 >= v25 >> 1)
            {
              sub_22EFFC7F0((v25 > 1), v19 + 1, 1);
              v18 = v39;
            }

            *(v18 + 16) = v26;
            v27 = v18 + v20;
            *(v27 + 32) = v23;
            *(v27 + 40) = v21;
            v20 += 16;
            v19 = v26;
            --v17;
          }

          while (v17);
          sub_22F0D00CC();
          v28 = *(v16 + 16);
          v4 = MEMORY[0x277D84F90];
          v39 = MEMORY[0x277D84F90];
          v8 = v33;
          v5 = v35;
          v29 = v37;
          if (!v28)
          {
            goto LABEL_21;
          }

          v30 = 0;
          while (v30 < *(v16 + 16))
          {
            v31 = v30 + 1;
            LOBYTE(v38[0]) = *(v16 + 32 + v30);
            sub_22F0AE824(v38, v37, &v39, v36, v33);
            v30 = v31;
            if (v28 == v31)
            {
              v4 = v39;
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_25:
          swift_once();
        }

        v29 = v37;
LABEL_21:
      }

      sub_22F0D00CC();
      sub_22F0D00CC();
    }

    else
    {
      sub_22F0D00CC();
      sub_22F0D00CC();
    }
  }

  return v4;
}

uint64_t sub_22F0AE824(unsigned __int8 *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v67 = a5;
  v64 = a4;
  v70 = a3;
  v74 = *a1;
  v8 = [a2 phoneNumberStrings];
  v9 = sub_22F0D0F4C();

  v71 = a2;
  v10 = [a2 emailAddressStrings];
  v11 = sub_22F0D0F4C();

  *&v87[0] = v9;
  result = sub_22F007248(v11);
  v13 = v9;
  v14 = *(v9 + 16);
  if (!v14)
  {
  }

  v15 = 0;
  v76 = *&v87[0] + 32;
  v63 = *MEMORY[0x277D6EF78];
  v90 = *MEMORY[0x277D6EF98];
  v62 = *MEMORY[0x277D6EF88];
  v65 = xmmword_22F0D2BF0;
  v61 = xmmword_22F0D6710;
  v68 = v14;
  v69 = *&v87[0];
LABEL_5:
  if (v15 < *(v13 + 16))
  {
    v16 = (v76 + 16 * v15);
    v17 = v16[1];
    *&v80 = *v16;
    v18 = qword_27DAA0610;
    sub_22F0CFF1C();
    if (v18 != -1)
    {
      swift_once();
    }

    if (byte_27DAA2160 == 3)
    {

      goto LABEL_4;
    }

    v75 = byte_27DAA2160;
    v19 = [v71 phoneNumberStrings];
    v20 = sub_22F0D0F4C();

    *&v87[0] = v80;
    *(&v87[0] + 1) = v17;
    MEMORY[0x28223BE20](v21);
    v60[2] = v87;
    LODWORD(v81) = sub_22F051C9C(sub_22F034BF4, v60, v20);

    v78 = v6;
    if (v74)
    {
      if (v74 != 1)
      {
        v22 = MEMORY[0x277D84F90];
        if (v74 != 2)
        {
          goto LABEL_41;
        }

        v77 = v17;
        v73 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
        v23 = swift_allocObject();
        *(v23 + 16) = v65;
        goto LABEL_19;
      }

      v77 = v17;
      v73 = v15;
LABEL_18:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
      v23 = swift_allocObject();
      *(v23 + 16) = v65;
LABEL_19:
      *(v23 + 32) = sub_22F0D0CAC();
      *(v23 + 40) = v27;
      goto LABEL_20;
    }

    v73 = v15;
    v77 = v17;
    if (v75 == 1)
    {
    }

    else
    {
      v24 = sub_22F0D188C();

      if ((v24 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
    v23 = swift_allocObject();
    *(v23 + 16) = v61;
    *(v23 + 32) = sub_22F0D0CAC();
    *(v23 + 40) = v25;
    *(v23 + 48) = sub_22F0D0CAC();
    *(v23 + 56) = v26;
LABEL_20:
    result = v23;
    v28 = *(v23 + 16);
    if (!v28)
    {
      v79 = MEMORY[0x277D84F90];
      goto LABEL_40;
    }

    v29 = 0;
    v30 = v23 + 40;
    v79 = MEMORY[0x277D84F90];
    v72 = v23;
    v66 = v23 + 40;
    while (1)
    {
      v31 = (v30 + 16 * v29);
      v32 = v29;
      while (1)
      {
        if (v32 >= v28)
        {
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v29 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_52;
        }

        v33 = *(v31 - 1);
        v34 = *v31;
        if (v33 != sub_22F0D0CAC() || v34 != v35)
        {
          break;
        }

        sub_22F0CFF1C();

        if (v81)
        {
          goto LABEL_32;
        }

LABEL_24:

        ++v32;
        v31 += 2;
        if (v29 == v28)
        {
          v6 = v78;
          goto LABEL_40;
        }
      }

      v37 = sub_22F0D188C();
      sub_22F0CFF1C();

      if (!(v81 & 1 | ((v37 & 1) == 0)))
      {
        goto LABEL_24;
      }

LABEL_32:
      sub_22F0CFF1C();
      sub_22F0CFF1C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = sub_22F03CEB0(0, *(v79 + 2) + 1, 1, v79);
      }

      v6 = v78;
      result = v72;
      v30 = v66;
      v39 = *(v79 + 2);
      v38 = *(v79 + 3);
      if (v39 >= v38 >> 1)
      {
        v44 = v72;
        v79 = sub_22F03CEB0((v38 > 1), v39 + 1, 1, v79);
        result = v44;
        v30 = v66;
      }

      v40 = v79;
      *(v79 + 2) = v39 + 1;
      v41 = &v40[80 * v39];
      v41[32] = v74;
      LODWORD(v40) = *(v87 + 3);
      *(v41 + 33) = v87[0];
      *(v41 + 9) = v40;
      v42 = v67;
      *(v41 + 5) = v64;
      *(v41 + 6) = v42;
      *(v41 + 7) = 0;
      *(v41 + 8) = 0;
      v43 = v77;
      *(v41 + 9) = v80;
      *(v41 + 10) = v43;
      *(v41 + 11) = v33;
      *(v41 + 12) = v34;
      v41[104] = 1;
      v41[105] = v75;
      if (v29 == v28)
      {
LABEL_40:

        v15 = v73;
        v22 = v79;
LABEL_41:

        v45 = *(v22 + 2);
        if (v45)
        {
          v46 = v15;
          v89 = MEMORY[0x277D84F90];
          sub_22EFFC810(0, v45, 0);
          v47 = v89;
          v48 = v45 - 1;
          for (i = 32; ; i += 80)
          {
            v50 = v22;
            v87[0] = *&v22[i];
            v51 = *&v22[i + 16];
            v52 = *&v22[i + 32];
            v53 = *&v22[i + 48];
            *(v88 + 10) = *&v22[i + 58];
            v87[2] = v52;
            v88[0] = v53;
            v87[1] = v51;
            v85[2] = v52;
            v86[0] = v53;
            *(v86 + 10) = *(v88 + 10);
            v85[0] = v87[0];
            v85[1] = v51;
            sub_22F0B1460(v87, &v82);
            QuickActionAppHandle.init(_:)(v85, &v82);
            v54 = v82;
            v55 = v83;
            v56 = v84;
            v89 = v47;
            v58 = *(v47 + 16);
            v57 = *(v47 + 24);
            if (v58 >= v57 >> 1)
            {
              v80 = v84;
              v81 = v82;
              sub_22EFFC810((v57 > 1), v58 + 1, 1);
              v56 = v80;
              v54 = v81;
              v47 = v89;
            }

            *(v47 + 16) = v58 + 1;
            v59 = v47 + 40 * v58;
            *(v59 + 32) = v54;
            *(v59 + 48) = v55;
            *(v59 + 56) = v56;
            if (!v48)
            {
              break;
            }

            --v48;
            v22 = v50;
          }

          v15 = v46;
          v6 = v78;
        }

        else
        {

          v47 = MEMORY[0x277D84F90];
        }

        result = sub_22F0078E0(v47);
        v14 = v68;
        v13 = v69;
LABEL_4:
        if (++v15 == v14)
        {
        }

        goto LABEL_5;
      }
    }
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_22F0AEF08(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22F0AEF28, 0, 0);
}

uint64_t sub_22F0AEF28()
{
  v1 = v0[3];
  v2 = sub_22F0AE450();
  if (v2[2])
  {
    v4 = v2[4];
    v3 = v2[5];
    v5 = v2[6];
    v6 = v2[7];
    v7 = v2[8];
    sub_22F0CFF1C();
    sub_22F0CFFAC();
    sub_22F0CFFAC();
    sub_22F0CFFAC();
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  v8 = v0[2];

  *v8 = v4;
  v8[1] = v3;
  v8[2] = v5;
  v8[3] = v6;
  v8[4] = v7;
  v9 = v0[1];

  return v9();
}

uint64_t sub_22F0AF000(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22F0AF020, 0, 0);
}

uint64_t sub_22F0AF020()
{
  v1 = v0[2];
  v2 = v0[3];
  *v1 = sub_22F0AE450();
  v3 = v0[1];

  return v3();
}

uint64_t sub_22F0AF088(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22F00CD54;

  return sub_22F0AEF08(a1);
}

uint64_t static SelectPerson.parameterSummary.getter()
{
  v0 = sub_22F0D007C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v4, *MEMORY[0x277CBA3F0], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22D0, &qword_22F0DB470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22D8, &qword_22F0DB478);
  sub_22F0B09CC();
  sub_22F0419F0(&qword_27DAA22E0, &qword_27DAA22D0, &qword_22F0DB470);
  sub_22F0419F0(&qword_27DAA22E8, &qword_27DAA22D8, &qword_22F0DB478);
  sub_22F0419F0(&qword_27DAA22F0, &qword_27DAA22B0, &qword_22F0DB428);
  return sub_22F0D00CC();
}

unint64_t sub_22F0AF338()
{
  result = qword_280CBE628[0];
  if (!qword_280CBE628[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CBE628);
  }

  return result;
}

uint64_t sub_22F0AF38C@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_22F0D000C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22D0, &qword_22F0DB470);
  v17 = *(v6 - 8);
  v7 = *(v17 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  v16[3] = swift_getKeyPath();
  (*(v2 + 104))(v5, *MEMORY[0x277CBA378], v1);
  v16[1] = "DSID";
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2328, &qword_22F0DB758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2330, &qword_22F0DB760);
  sub_22F0B09CC();
  sub_22F0419F0(&qword_27DAA2338, &qword_27DAA2328, &qword_22F0DB758);
  sub_22F0419F0(&qword_27DAA2340, &qword_27DAA2330, &qword_22F0DB760);
  sub_22F0419F0(&qword_27DAA22F0, &qword_27DAA22B0, &qword_22F0DB428);
  sub_22F034BA0();
  sub_22F0D00BC();
  v13 = sub_22F0419F0(&qword_27DAA22E0, &qword_27DAA22D0, &qword_22F0DB470);
  MEMORY[0x2318FC520](v10, &type metadata for SelectPerson, v6, v13);
  v14 = *(v17 + 8);
  v14(v10, v6);
  MEMORY[0x2318FC510](v12, &type metadata for SelectPerson, v6, v13);
  return (v14)(v12, v6);
}

uint64_t sub_22F0AF794()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22D8, &qword_22F0DB478);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_22F0B09CC();
  sub_22F0CFFBC();
  v8 = sub_22F0419F0(&qword_27DAA22E8, &qword_27DAA22D8, &qword_22F0DB478);
  MEMORY[0x2318FC520](v5, &type metadata for SelectPerson, v0, v8);
  v9 = *(v1 + 8);
  v9(v5, v0);
  MEMORY[0x2318FC510](v7, &type metadata for SelectPerson, v0, v8);
  return (v9)(v7, v0);
}

uint64_t sub_22F0AF964@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_22F0D000C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2330, &qword_22F0DB760);
  v17 = *(v6 - 8);
  v7 = *(v17 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  v16[3] = swift_getKeyPath();
  (*(v2 + 104))(v5, *MEMORY[0x277CBA378], v1);
  v16[1] = "showVerticalLayoutToggleDT";
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2328, &qword_22F0DB758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2348, &qword_22F0DB768);
  sub_22F0B09CC();
  sub_22F0419F0(&qword_27DAA2338, &qword_27DAA2328, &qword_22F0DB758);
  sub_22F0419F0(&qword_27DAA2350, &qword_27DAA2348, &qword_22F0DB768);
  sub_22F0419F0(&qword_27DAA22F0, &qword_27DAA22B0, &qword_22F0DB428);
  sub_22F034BA0();
  sub_22F0D00BC();
  v13 = sub_22F0419F0(&qword_27DAA2340, &qword_27DAA2330, &qword_22F0DB760);
  MEMORY[0x2318FC520](v10, &type metadata for SelectPerson, v6, v13);
  v14 = *(v17 + 8);
  v14(v10, v6);
  MEMORY[0x2318FC510](v12, &type metadata for SelectPerson, v6, v13);
  return (v14)(v12, v6);
}

uint64_t sub_22F0AFD04@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v19[4] = a1;
  v19[5] = a2;
  v19[6] = a3;
  v3 = sub_22F0D008C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2328, &qword_22F0DB758);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  v19[3] = swift_getKeyPath();
  (*(v4 + 104))(v7, *MEMORY[0x277CBA468], v3);
  v20 = 1;
  v19[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22D8, &qword_22F0DB478);
  v19[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2348, &qword_22F0DB768);
  sub_22F0B09CC();
  sub_22F0419F0(&qword_27DAA22E8, &qword_27DAA22D8, &qword_22F0DB478);
  sub_22F0419F0(&qword_27DAA2350, &qword_27DAA2348, &qword_22F0DB768);
  sub_22F0419F0(&qword_27DAA2358, &qword_27DAA22B8, &qword_22F0DB430);
  sub_22F0D00DC();
  v16 = sub_22F0419F0(&qword_27DAA2338, &qword_27DAA2328, &qword_22F0DB758);
  MEMORY[0x2318FC520](v13, &type metadata for SelectPerson, v8, v16);
  v17 = *(v9 + 8);
  v17(v13, v8);
  MEMORY[0x2318FC510](v15, &type metadata for SelectPerson, v8, v16);
  return (v17)(v15, v8);
}

uint64_t sub_22F0B00A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[0] = a1;
  v19[1] = a2;
  v19[2] = a3;
  v3 = sub_22F0D008C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2348, &qword_22F0DB768);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  swift_getKeyPath();
  (*(v4 + 104))(v7, *MEMORY[0x277CBA468], v3);
  v20 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22D8, &qword_22F0DB478);
  sub_22F0B09CC();
  sub_22F0419F0(&qword_27DAA22E8, &qword_27DAA22D8, &qword_22F0DB478);
  sub_22F0419F0(&qword_27DAA2358, &qword_27DAA22B8, &qword_22F0DB430);
  sub_22F0D00DC();
  v16 = sub_22F0419F0(&qword_27DAA2350, &qword_27DAA2348, &qword_22F0DB768);
  MEMORY[0x2318FC520](v13, &type metadata for SelectPerson, v8, v16);
  v17 = *(v9 + 8);
  v17(v13, v8);
  MEMORY[0x2318FC510](v15, &type metadata for SelectPerson, v8, v16);
  return (v17)(v15, v8);
}

uint64_t sub_22F0B03D8()
{
  swift_getKeyPath();
  sub_22F0B09CC();
  v0 = sub_22F0CFFAC();
  sub_22F0D00CC();
  swift_getKeyPath();
  sub_22F0CFFAC();
  v1 = sub_22F0CFFAC();
  sub_22F0D00CC();
  swift_getKeyPath();
  sub_22F0CFFAC();
  v2 = sub_22F0CFFAC();
  sub_22F0D00CC();
  swift_getKeyPath();
  sub_22F0CFFAC();
  v3 = sub_22F0CFFAC();
  sub_22F0D00CC();
  swift_getKeyPath();
  sub_22F0CFFAC();
  v4 = sub_22F0CFFAC();
  sub_22F0D00CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22F0DB3E0;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  sub_22F0CFFAC();
  v6 = sub_22F0CFF1C();

  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  return v6;
}

uint64_t sub_22F0B05B0()
{
  swift_getKeyPath();
  sub_22F0B09CC();
  v0 = sub_22F0CFFAC();
  sub_22F0D00CC();
  swift_getKeyPath();
  sub_22F0CFFAC();
  v1 = sub_22F0CFFAC();
  sub_22F0D00CC();
  swift_getKeyPath();
  sub_22F0CFFAC();
  v2 = sub_22F0CFFAC();
  sub_22F0D00CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22F0DB3F0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  sub_22F0CFFAC();
  v4 = sub_22F0CFF1C();

  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  return v4;
}

uint64_t sub_22F0B072C()
{
  swift_getKeyPath();
  sub_22F0B09CC();
  v0 = sub_22F0CFFAC();
  sub_22F0D00CC();
  swift_getKeyPath();
  sub_22F0CFFAC();
  v1 = sub_22F0CFFAC();
  sub_22F0D00CC();
  swift_getKeyPath();
  sub_22F0CFFAC();
  v2 = sub_22F0CFFAC();
  sub_22F0D00CC();
  swift_getKeyPath();
  sub_22F0CFFAC();
  v3 = sub_22F0CFFAC();
  sub_22F0D00CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22F0DB400;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  sub_22F0CFFAC();
  v5 = sub_22F0CFF1C();

  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  return v5;
}

uint64_t sub_22F0B08C0()
{
  swift_getKeyPath();
  sub_22F0B09CC();
  v0 = sub_22F0CFFAC();
  sub_22F0D00CC();
  swift_getKeyPath();
  sub_22F0CFFAC();
  v1 = sub_22F0CFFAC();
  sub_22F0D00CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22F0D80D0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  sub_22F0CFFAC();
  v3 = sub_22F0CFF1C();

  sub_22F0D00CC();
  sub_22F0D00CC();
  return v3;
}

unint64_t sub_22F0B09CC()
{
  result = qword_280CBE608;
  if (!qword_280CBE608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBE608);
  }

  return result;
}

unint64_t sub_22F0B0A24()
{
  result = qword_280CBE620;
  if (!qword_280CBE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBE620);
  }

  return result;
}

unint64_t sub_22F0B0A80()
{
  result = qword_27DAA22F8;
  if (!qword_27DAA22F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA2300, qword_22F0DB480);
    sub_22F0418A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA22F8);
  }

  return result;
}

uint64_t sub_22F0B0B04()
{
  swift_getKeyPath();
  sub_22F0B09CC();
  v0 = sub_22F0CFFAC();
  sub_22F0D00CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22F0D6C00;
  *(v1 + 32) = v0;
  sub_22F0CFFAC();
  v2 = sub_22F0CFF1C();

  sub_22F0D00CC();
  return v2;
}

unint64_t sub_22F0B0BE0()
{
  result = qword_280CBE600;
  if (!qword_280CBE600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBE600);
  }

  return result;
}

unint64_t sub_22F0B0C38()
{
  result = qword_280CBE610;
  if (!qword_280CBE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBE610);
  }

  return result;
}

unint64_t sub_22F0B0C90()
{
  result = qword_280CBD120;
  if (!qword_280CBD120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD120);
  }

  return result;
}

uint64_t sub_22F0B0D00@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAA0678 != -1)
  {
    swift_once();
  }

  v2 = sub_22F0D036C();
  v3 = __swift_project_value_buffer(v2, qword_27DAA2270);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_22F0B0DD0()
{
  v0 = sub_22F0D007C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v4, *MEMORY[0x277CBA3F0], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22D0, &qword_22F0DB470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22D8, &qword_22F0DB478);
  sub_22F0419F0(&qword_27DAA22E0, &qword_27DAA22D0, &qword_22F0DB470);
  sub_22F0419F0(&qword_27DAA22E8, &qword_27DAA22D8, &qword_22F0DB478);
  sub_22F0419F0(&qword_27DAA22F0, &qword_27DAA22B0, &qword_22F0DB428);
  return sub_22F0D00CC();
}

uint64_t sub_22F0B0FE8(uint64_t a1, uint64_t a2)
{
  v4 = *(MEMORY[0x277CBA3A8] + 4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_22F0B1388();
  *v5 = v2;
  v5[1] = sub_22F0B1094;

  return MEMORY[0x28210C3E0](a2, v6);
}

uint64_t sub_22F0B1094()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

void sub_22F0B11A0()
{
  sub_22F0B1334();

  JUMPOUT(0x2318FC260);
}

uint64_t sub_22F0B11DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F0B1224(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22F0B1290(uint64_t result)
{
  if (result)
  {
    sub_22F0CFF1C();
    sub_22F0CFFAC();
    sub_22F0CFFAC();

    return sub_22F0CFFAC();
  }

  return result;
}

uint64_t sub_22F0B12F4(uint64_t result)
{
  if (result)
  {
    sub_22F0CFFAC();

    return sub_22F0CFFAC();
  }

  return result;
}

unint64_t sub_22F0B1334()
{
  result = qword_280CBE618;
  if (!qword_280CBE618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBE618);
  }

  return result;
}

unint64_t sub_22F0B1388()
{
  result = qword_27DAA2318;
  if (!qword_27DAA2318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2318);
  }

  return result;
}

unint64_t sub_22F0B13DC()
{
  result = qword_280CBD450;
  if (!qword_280CBD450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA2320, &qword_22F0DB750);
    sub_22F034988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD450);
  }

  return result;
}

unint64_t sub_22F0B14F8(unint64_t result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  if (result >> 62)
  {
    goto LABEL_15;
  }

  v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x2318FDAB0](i, v5);
        }

        else
        {
          if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v12 = *(v5 + 8 * i + 32);
        }

        v13 = v12;
        v14 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v15 = [v12 dsid];
        if (v15)
        {
          v16 = v15;
          v8 = [v15 integerValue];
        }

        else
        {
          v8 = -1;
        }

        *a2 = v8;
        v17 = *a3;
        v18 = a3[1];
        sub_22F0CFF1C();
        v9 = FAFamilyMember.displayNameWithFallback.getter();
        MEMORY[0x2318FD2C0](v9);

        MEMORY[0x2318FD2C0](0x3A6469736420, 0xE600000000000000);
        v19 = *a2;
        v10 = sub_22F0D183C();
        MEMORY[0x2318FD2C0](v10);

        MEMORY[0x2318FD2C0](8236, 0xE200000000000000);
        v11 = a3[1];
        *a3 = v17;
        a3[1] = v18;

        if (v14 == v6)
        {
          return result;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      result = sub_22F0D143C();
      v6 = result;
    }

    while (result);
  }

  return result;
}

void sub_22F0B16C0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_22F0CFFAC();
  v8 = a2;
  v7 = a3;
  v6(a2, a3);
  sub_22F0D00CC();
}

uint64_t FAFamilyMember.displayNameWithFallback.getter()
{
  FAFamilyMember.displayName.getter();
  if (!v1 || (v2 = String.trimToNil()(), countAndFlagsBits = v2.value._countAndFlagsBits, , !v2.value._object))
  {
    if (![v0 isChildAccount])
    {
      [v0 isParent];
    }

    type metadata accessor for DaemonConnection();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    countAndFlagsBits = sub_22F0D031C();
  }

  return countAndFlagsBits;
}

uint64_t static FAFamilyCircle.resolveFamily(userDSID:actionUserDSID:withContactFetcher:useCache:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 177) = a6;
  *(v6 + 176) = a4;
  *(v6 + 64) = a3;
  *(v6 + 72) = a5;
  *(v6 + 48) = a1;
  *(v6 + 56) = a2;
  v7 = type metadata accessor for ResolvedFamily();
  *(v6 + 80) = v7;
  v8 = *(v7 - 8);
  *(v6 + 88) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 96) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1760, &unk_22F0D77D8);
  *(v6 + 104) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640) - 8) + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F0B1A5C, 0, 0);
}

uint64_t sub_22F0B1A5C()
{
  if (*(v0 + 177) == 1)
  {
    if (qword_27DAA0688 != -1)
    {
      swift_once();
    }

    *(v0 + 144) = qword_27DAA2360;

    return MEMORY[0x2822009F8](sub_22F0B1BF0);
  }

  else
  {
    v2 = *(v0 + 64);
    v1 = *(v0 + 72);
    v3 = *(v0 + 176);
    v4 = *(v0 + 56);
    v5 = swift_task_alloc();
    *(v0 + 152) = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;
    *(v5 + 32) = v3 & 1;
    *(v5 + 40) = v1;
    v6 = *(MEMORY[0x277D859E0] + 4);
    v7 = swift_task_alloc();
    *(v0 + 160) = v7;
    *v7 = v0;
    v7[1] = sub_22F0B1E24;
    v8 = *(v0 + 120);
    v9 = *(v0 + 104);

    return MEMORY[0x2822007B8](v8, 0, 0, 0xD000000000000043, 0x800000022F0DE1C0, sub_22F040104, v5, v9);
  }
}

uint64_t sub_22F0B1BF0()
{
  v1 = v0[18];
  sub_22F0B301C(v0[7], v0[17]);

  return MEMORY[0x2822009F8](sub_22F0B1C5C, 0, 0);
}

uint64_t sub_22F0B1C5C()
{
  v1 = *(v0 + 136);
  if ((*(*(v0 + 88) + 48))(v1, 1, *(v0 + 80)) == 1)
  {
    sub_22F003A4C(v1, &qword_27DAA1448, &unk_22F0D6640);
    v3 = *(v0 + 64);
    v2 = *(v0 + 72);
    v4 = *(v0 + 176);
    v5 = *(v0 + 56);
    v6 = swift_task_alloc();
    *(v0 + 152) = v6;
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v2;
    v7 = *(MEMORY[0x277D859E0] + 4);
    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *v8 = v0;
    v8[1] = sub_22F0B1E24;
    v9 = *(v0 + 120);
    v10 = *(v0 + 104);

    return MEMORY[0x2822007B8](v9, 0, 0, 0xD000000000000043, 0x800000022F0DE1C0, sub_22F040104, v6, v10);
  }

  else
  {
    sub_22F03DCB4(v1, *(v0 + 48));
    v12 = *(v0 + 128);
    v11 = *(v0 + 136);
    v14 = *(v0 + 112);
    v13 = *(v0 + 120);
    v15 = *(v0 + 96);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_22F0B1E24()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22F0B1F3C, 0, 0);
}

uint64_t sub_22F0B1F3C()
{
  v1 = v0[13];
  sub_22F040114(v0[15], v0[14]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = v0[16];
    v3 = v0[17];
    v4 = v0[15];
    v5 = v0[12];
    v0[5] = *v0[14];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0870, &qword_22F0D2CB0);
    swift_willThrowTypedImpl();
    sub_22F003A4C(v4, &qword_27DAA1760, &unk_22F0D77D8);

    v6 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  sub_22F03DCB4(v0[14], v0[12]);
  if (qword_27DAA0688 != -1)
  {
    swift_once();
  }

  v0[21] = qword_27DAA2360;

  return MEMORY[0x2822009F8](sub_22F0B20C8);
}

uint64_t sub_22F0B20C8()
{
  v1 = [**(v0 + 96) dsid];
  if (v1)
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 128);
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v6 = *(v0 + 80);
    v7 = v1;
    v8 = [v1 integerValue];
    sub_22F01DEA8(v4, v3);
    (*(v5 + 56))(v3, 0, 1, v6);
    swift_beginAccess();
    sub_22F046214(v3, v8);
    swift_endAccess();
  }

  return MEMORY[0x2822009F8](sub_22F0B21E0, 0, 0);
}

uint64_t sub_22F0B21E0()
{
  v1 = v0[12];
  v2 = v0[6];
  sub_22F003A4C(v0[15], &qword_27DAA1760, &unk_22F0D77D8);
  sub_22F03DCB4(v1, v2);
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[12];

  v8 = v0[1];

  return v8();
}

void *ResolvedFamily.approverByDSID(with:)(id a1)
{
  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F0D143C())
  {
    for (j = 0; ; ++j)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2318FDAB0](j, v3);
      }

      else
      {
        if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = [v6 dsid];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 integerValue];

        if (v11 == a1)
        {
          return v7;
        }
      }

      if (v8 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  return 0;
}

uint64_t static ResolvedFamily.getFamilyForLoggedInChild(withContactFetcher:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_22F0D05BC();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F0B24FC, 0, 0);
}

uint64_t sub_22F0B24FC()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_22F0B2620;

  return v8(v2, v3);
}

uint64_t sub_22F0B2620(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *v2;
  *(*v2 + 88) = a1;

  if (v1)
  {
    v6 = *(v3 + 72);
    v7 = *(v3 + 48);

    v8 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_22F0B277C, 0, 0);
}

uint64_t sub_22F0B277C()
{
  v1 = v0[11];
  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  v7 = v0[11];
  swift_bridgeObjectRetain_n();
  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = *(*(v1 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v5)))));
      if ([v10 isMe])
      {
        break;
      }

      v5 &= v5 - 1;
      v8 = v9;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v22 = v0[11];
    sub_22F0D00CC();

    v23 = 0;
    v52 = MEMORY[0x277D84F90];
    v24 = -1;
    v25 = -1 << *(v1 + 32);
    if (-v25 < 64)
    {
      v24 = ~(-1 << -v25);
    }

    v26 = v24 & *(v1 + 64);
    v27 = (63 - v25) >> 6;
    v28 = &selRef_encodeObject_forKey_;
    if (v26)
    {
      goto LABEL_23;
    }

    while (1)
    {
LABEL_24:
      v29 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_37;
      }

      if (v29 >= v27)
      {
        break;
      }

      v26 = *(v2 + 8 * v29);
      ++v23;
      if (v26)
      {
        while (1)
        {
          v30 = __clz(__rbit64(v26));
          v26 &= v26 - 1;
          v31 = *(*(v1 + 56) + ((v29 << 9) | (8 * v30)));
          if ([v31 v28[65]])
          {
            sub_22F0D15EC();
            v32 = *(v52 + 16);
            sub_22F0D162C();
            sub_22F0D163C();
            sub_22F0D15FC();
            v28 = &selRef_encodeObject_forKey_;
            v23 = v29;
            if (!v26)
            {
              goto LABEL_24;
            }
          }

          else
          {

            v23 = v29;
            if (!v26)
            {
              goto LABEL_24;
            }
          }

LABEL_23:
          v29 = v23;
        }
      }
    }

    v33 = v0[11];
    sub_22F0D00CC();
    if (v52 < 0 || (v52 & 0x4000000000000000) != 0)
    {
      if (sub_22F0D143C())
      {
        goto LABEL_33;
      }
    }

    else if (*(v52 + 16))
    {
LABEL_33:
      v34 = v0[9];
      v50 = v0[2];
      v51 = type metadata accessor for ResolvedFamily();
      v49 = *(v51 + 28);
      sub_22F0D05AC();
      if (qword_27DAA0618 != -1)
      {
        swift_once();
      }

      v35 = v0[8];
      v36 = v0[6];
      v47 = v0[9];
      v48 = v0[7];
      v38 = v0[4];
      v37 = v0[5];
      v39 = v0[2];
      __swift_project_value_buffer(v38, qword_27DAA2168);
      v40 = [objc_opt_self() seconds];
      sub_22F0D019C();

      sub_22F0D018C();
      (*(v37 + 8))(v36, v38);
      sub_22F0D054C();
      (*(v35 + 8))(v47, v48);
      *v39 = v10;
      v39[1] = 0;
      v39[2] = v52;
      (*(*(v51 - 8) + 56))(v39, 0, 1, v51);
      goto LABEL_15;
    }

    sub_22F0D00CC();
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v41 = sub_22F0D0A1C();
    __swift_project_value_buffer(v41, qword_280CBEC40);
    v42 = sub_22F0D09FC();
    v43 = sub_22F0D123C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_22EFE1000, v42, v43, "Found no approvers in family (this should be impossible)", v44, 2u);
      MEMORY[0x2318FE8B0](v44, -1, -1);
    }

    v45 = v0[2];

    v46 = type metadata accessor for ResolvedFamily();
    (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v6)
      {
        break;
      }

      v5 = *(v2 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v11 = v0[11];
    sub_22F0D00CC();
    swift_bridgeObjectRelease_n();
    if (qword_280CBEC38 == -1)
    {
      goto LABEL_12;
    }

LABEL_38:
    swift_once();
LABEL_12:
    v12 = sub_22F0D0A1C();
    __swift_project_value_buffer(v12, qword_280CBEC40);
    v13 = sub_22F0D09FC();
    v14 = sub_22F0D122C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22EFE1000, v13, v14, "Impossible, can't find me!", v15, 2u);
      MEMORY[0x2318FE8B0](v15, -1, -1);
    }

    v16 = v0[2];

    v17 = type metadata accessor for ResolvedFamily();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  }

LABEL_15:
  v18 = v0[9];
  v19 = v0[6];

  v20 = v0[1];

  return v20();
}

uint64_t static FAFamilyCircle.resolveFamily(userDSID:actionUserDSID:withContactFetcher:completion:)(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x277D84F90];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = a4[3];
  v15 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v14);
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  *(v16 + 32) = v12;
  *(v16 + 40) = a1;
  *(v16 + 48) = v10;
  *(v16 + 56) = v13;
  *(v16 + 64) = a2;
  *(v16 + 72) = a3 & 1;
  *(v16 + 80) = v11;
  v17 = *(v15 + 8);
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  v17(sub_22F050688, v16, v14, v15);
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();

  return sub_22F0D00CC();
}

char *FAFamilyMember.allKnownHandles.getter()
{
  v1 = [v0 appleID];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  sub_22F0D0CAC();

  v3 = String.trimToNil()();

  v4 = MEMORY[0x277D84F90];
  if (v3.value._object)
  {
    v4 = sub_22F03C784(0, 1, 1, MEMORY[0x277D84F90]);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_22F03C784((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    *&v4[16 * v6 + 32] = v3;
  }

  return v4;
}

uint64_t sub_22F0B2FD0()
{
  type metadata accessor for FamilyCache();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  qword_27DAA2360 = v0;
  return result;
}

uint64_t sub_22F0B301C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22F0D05BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ResolvedFamily();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  swift_beginAccess();
  v18 = *(v2 + 112);
  if (*(v18 + 16))
  {
    v19 = sub_22EFFDADC(a1);
    if (v20)
    {
      sub_22F01DEA8(*(v18 + 56) + *(v11 + 72) * v19, v15);
      sub_22F03DCB4(v15, v17);
      sub_22F0D05AC();
      v21 = *(v10 + 28);
      v22 = sub_22F0D052C();
      (*(v6 + 8))(v9, v5);
      if ((v22 & 1) == 0)
      {
        sub_22F03DCB4(v17, a2);
        v23 = 0;
        return (*(v11 + 56))(a2, v23, 1, v10);
      }

      sub_22F050788(v17);
    }
  }

  v23 = 1;
  return (*(v11 + 56))(a2, v23, 1, v10);
}

uint64_t sub_22F0B3234()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22F0B326C()
{
  if (qword_27DAA0688 != -1)
  {
    swift_once();
  }

  return sub_22F0CFFAC();
}

uint64_t sub_22F0B32C8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FamilyCache();

  return MEMORY[0x2822005F8](v3, a2);
}

void *ResolvedFamily.actionFamilyMember.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

id ResolvedFamily.findMe.getter()
{
  v1 = *v0;
  if ([*v0 isMe])
  {
    v2 = v1;
  }

  else
  {
    v3 = *(v0 + 16);
    if (v3 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F0D143C())
    {
      for (j = 0; ; ++j)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2318FDAB0](j, v3);
        }

        else
        {
          if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v6 = *(v3 + 8 * j + 32);
        }

        v1 = v6;
        v7 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        if ([v6 isMe])
        {
          return v1;
        }

        if (v7 == i)
        {
          return 0;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

    return 0;
  }

  return v1;
}

uint64_t ResolvedFamily.init(requestingFamilyMember:actionFamilyMember:approvers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v21 = a2;
  v22 = a3;
  v20 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = sub_22F0D05BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for ResolvedFamily() + 28);
  sub_22F0D05AC();
  if (qword_27DAA0618 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v5, qword_27DAA2168);
  v16 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v6 + 8))(v9, v5);
  sub_22F0D054C();
  result = (*(v11 + 8))(v14, v10);
  v18 = v21;
  *a4 = v20;
  a4[1] = v18;
  a4[2] = v22;
  return result;
}

uint64_t ResolvedFamily.description.getter()
{
  v1 = v0;
  v2 = [*v0 dsid];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = -1;
  }

  v16 = v4;
  sub_22F0D152C();

  v17 = 0xD000000000000012;
  v18 = 0x800000022F0DFCE0;
  v5 = FAFamilyMember.displayNameWithFallback.getter();
  MEMORY[0x2318FD2C0](v5);

  MEMORY[0x2318FD2C0](0x3A6469736420, 0xE600000000000000);
  v6 = sub_22F0D183C();
  MEMORY[0x2318FD2C0](v6);

  v7 = v1[1];
  if (v7)
  {
    v8 = v7;
    v9 = [v8 dsid];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 integerValue];
    }

    else
    {
      v11 = -1;
    }

    v16 = v11;
    sub_22F0D152C();
    sub_22F0CFF1C();

    MEMORY[0x2318FD2C0](0x206E6F697463610ALL, 0xEE00203A72657375);
    v12 = FAFamilyMember.displayNameWithFallback.getter();
    MEMORY[0x2318FD2C0](v12);

    MEMORY[0x2318FD2C0](0x3A6469736420, 0xE600000000000000);
    v13 = sub_22F0D183C();
    MEMORY[0x2318FD2C0](v13);

    v17 = 0xD000000000000012;
    v18 = 0x800000022F0DFCE0;
  }

  v14 = v1[2];
  if (v14 >> 62)
  {
    if (!sub_22F0D143C())
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:
    sub_22F0CFF1C();
    MEMORY[0x2318FD2C0](0x65766F727070610ALL, 0xEC000000203A7372);

    v17 = 0xD000000000000012;
    v18 = 0x800000022F0DFCE0;
  }

LABEL_12:
  sub_22F0B14F8(v14, &v16, &v17);
  return v17;
}

uint64_t FAFamilyMember.displayName.getter()
{
  v1 = [v0 contact];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
    [v3 setStyle_];
    countAndFlagsBits = ContactFormatter.displayName(for:includePhone:)(v2, 1)._countAndFlagsBits;
  }

  else
  {
    v6 = [v0 firstName];
    if (!v6 || (v7 = v6, sub_22F0D0CAC(), v7, v8 = String.trimToNil()(), countAndFlagsBits = v8.value._countAndFlagsBits, , !v8.value._object))
    {
      v9 = [v0 fullName];
      if (v9 && (v10 = v9, sub_22F0D0CAC(), v10, v11 = String.trimToNil()(), countAndFlagsBits = v11.value._countAndFlagsBits, , v11.value._object))
      {
      }

      else
      {
        v12 = [v0 appleID];
        if (v12)
        {
          v13 = v12;
          sub_22F0D0CAC();

          countAndFlagsBits = String.trimToNil()().value._countAndFlagsBits;
          swift_bridgeObjectRelease_n();
        }

        else
        {
          swift_bridgeObjectRelease_n();
          return 0;
        }
      }
    }
  }

  return countAndFlagsBits;
}

uint64_t type metadata accessor for ResolvedFamily()
{
  result = qword_27DAA23A0;
  if (!qword_27DAA23A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FAFamilyMember.normalizedPhoneNumbers.getter()
{
  v49 = sub_22F0D01DC();
  v1 = *(v49 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v49);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 memberPhoneNumbers];
  if (v5)
  {
    v6 = v5;
    v7 = sub_22F0D0CAC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = String.splitWith(_:)(44, 0xE100000000000000, v7, v9);

  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = (v1 + 8);
    v15 = v10 + 40;
    v46 = v12 - 1;
    v47 = v10 + 40;
    v48 = MEMORY[0x277D84F90];
    do
    {
      v16 = (v15 + 16 * v13);
      v17 = v13;
      while (1)
      {
        if (v17 >= *(v10 + 16))
        {
          __break(1u);
          return result;
        }

        v13 = v17 + 1;
        v18 = *v16;
        v50 = *(v16 - 1);
        v51 = v18;
        sub_22F0CFF1C();
        sub_22F0D01CC();
        sub_22F00901C();
        v19 = sub_22F0D136C();
        v21 = v20;
        (*v14)(v4, v49);

        v22 = HIBYTE(v21) & 0xF;
        if ((v21 & 0x2000000000000000) == 0)
        {
          v22 = v19 & 0xFFFFFFFFFFFFLL;
        }

        if (v22)
        {
          break;
        }

        v16 += 2;
        ++v17;
        if (v12 == v13)
        {
          goto LABEL_20;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22F03C784(0, *(v48 + 2) + 1, 1, v48);
        v48 = result;
      }

      v24 = *(v48 + 2);
      v23 = *(v48 + 3);
      if (v24 >= v23 >> 1)
      {
        result = sub_22F03C784((v23 > 1), v24 + 1, 1, v48);
        v48 = result;
      }

      v15 = v47;
      v25 = v48;
      *(v48 + 2) = v24 + 1;
      v26 = &v25[16 * v24];
      *(v26 + 4) = v19;
      *(v26 + 5) = v21;
    }

    while (v46 != v17);
  }

  else
  {
    v48 = MEMORY[0x277D84F90];
  }

LABEL_20:

  v27 = v48;
  v28 = *(v48 + 2);
  if (v28)
  {
    v50 = MEMORY[0x277D84F90];
    sub_22EFFC4E8(0, v28, 0);
    v29 = v50;
    v30 = (v27 + 40);
    do
    {
      v32 = *(v30 - 1);
      v31 = *v30;
      v33 = objc_allocWithZone(MEMORY[0x277CBDB70]);
      sub_22F0CFF1C();
      v34 = sub_22F0D0C7C();
      v35 = [v33 initWithStringValue_];

      if (v35 && (v36 = [v35 fullyQualifiedDigits]) != 0)
      {
        v37 = v36;
        v38 = sub_22F0D0CAC();
        v40 = v39;
      }

      else
      {
        v38 = sub_22F0D0D0C();
        v40 = v41;
      }

      v50 = v29;
      v43 = *(v29 + 16);
      v42 = *(v29 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_22EFFC4E8((v42 > 1), v43 + 1, 1);
        v29 = v50;
      }

      *(v29 + 16) = v43 + 1;
      v44 = v29 + 16 * v43;
      *(v44 + 32) = v38;
      *(v44 + 40) = v40;
      v30 += 2;
      --v28;
    }

    while (v28);
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  v45 = sub_22F058B88(v29);

  return v45;
}