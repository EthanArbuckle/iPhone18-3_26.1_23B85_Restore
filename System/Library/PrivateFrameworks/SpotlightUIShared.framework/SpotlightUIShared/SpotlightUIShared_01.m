uint64_t sub_26B90A0BC()
{
  v1 = *(v0 + 32);

  **(v0 + 16) = *(v0 + 56) == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26B90A130()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(sub_26B9AB224() - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = *(*(sub_26B9ABC44() - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_26B9ABC24();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  sub_26B9AC804();
  v1[9] = sub_26B9AC7F4();
  v9 = sub_26B9AC7C4();
  v1[10] = v9;
  v1[11] = v8;

  return MEMORY[0x2822009F8](sub_26B90A2B4, v9, v8);
}

uint64_t sub_26B90A2B4()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  sub_26B9ABC34();
  sub_26B9AB204();
  sub_26B9ABC14();
  sub_26B9AB9B4();
  v4 = *(MEMORY[0x277D722A0] + 4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_26B90A3A0;
  v6 = v0[8];

  return MEMORY[0x2821DA858](v6);
}

uint64_t sub_26B90A3A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;

  if (v1)
  {

    v7 = v4[10];
    v8 = v4[11];
    v9 = sub_26B90A664;
  }

  else
  {
    v4[13] = a1;
    v7 = v4[10];
    v8 = v4[11];
    v9 = sub_26B90A4CC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_26B90A4CC()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v9 = v0[2];
  v8 = v0[3];

  v10 = sub_26B9AC824();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;
  v11[5] = v9;
  swift_unknownObjectRetain();
  sub_26B9AAAE4();
  sub_26B90B63C(0, 0, v8, &unk_26B9B0840, v11);

  sub_26B90573C(v8);
  (*(v5 + 8))(v3, v4);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();

  v13 = v0[1];
  v14 = v0[13];

  return v13(v14, OpaqueTypeConformance2);
}

uint64_t sub_26B90A664()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  sub_26B90CB00();
  swift_allocError();
  *v8 = 0;
  swift_willThrow();
  (*(v4 + 8))(v2, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_26B90A758()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8EB6C8;

  return sub_26B9093C8(v3, v4, v5, v2);
}

uint64_t sub_26B90A7EC(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26B8EC52C;

  return sub_26B909DC4(a1, v5, v6, v4);
}

uint64_t sub_26B90A88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a5;
  v6 = sub_26B9AB9C4();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v9 = sub_26B9ABAB4();
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804261F0, &qword_26B9B0848) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804261F8, &qword_26B9B0850);
  v5[13] = v13;
  v14 = *(v13 - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v5[15] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426200, &qword_26B9B0858);
  v5[16] = v17;
  v18 = *(v17 - 8);
  v5[17] = v18;
  v19 = *(v18 + 64) + 15;
  v5[18] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426208, &qword_26B9B0860);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = *(MEMORY[0x277D726A8] + 4);
  v23 = swift_task_alloc();
  v5[19] = v23;
  *v23 = v5;
  v23[1] = sub_26B90AB44;

  return MEMORY[0x2821DAB58](v16, v20, OpaqueTypeConformance2);
}

uint64_t sub_26B90AB44()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26B90AC40, 0, 0);
}

uint64_t sub_26B90AC40()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  sub_26B9AC854();
  (*(v3 + 8))(v2, v4);
  v5 = *MEMORY[0x277D723C0];
  *(v0 + 200) = *MEMORY[0x277D72580];
  *(v0 + 204) = v5;
  v6 = *(MEMORY[0x277D858B8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  *v7 = v0;
  v7[1] = sub_26B90AD3C;
  v8 = *(v0 + 144);
  v9 = *(v0 + 128);
  v10 = *(v0 + 96);

  return MEMORY[0x2822005A8](v10, 0, 0, v9, v0 + 16);
}

uint64_t sub_26B90AD3C()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_26B90B374;
  }

  else
  {
    v3 = sub_26B90AE50;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26B90AE50()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 120);
    v5 = *(v0 + 88);
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

    v8 = *(v0 + 8);

    return v8();
  }

  v10 = *(v0 + 200);
  v11 = *(v0 + 88);
  (*(v3 + 32))(v11, v1, v2);
  if ((*(v3 + 88))(v11, v2) == v10)
  {
    v12 = *(v0 + 204);
    v13 = *(v0 + 88);
    v14 = *(v0 + 64);
    v16 = *(v0 + 48);
    v15 = *(v0 + 56);
    v17 = *(v0 + 40);
    (*(*(v0 + 80) + 96))(v13, *(v0 + 72));
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426210, &qword_26B9B0868);
    (*(v16 + 32))(v14, v13 + *(v18 + 48), v17);
    (*(v16 + 16))(v15, v14, v17);
    v19 = (*(v16 + 88))(v15, v17);
    v20 = *(v16 + 8);
    *(v0 + 176) = v20;
    *(v0 + 184) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v19 == v12)
    {
      v21 = *(v0 + 32);
      v20(*(v0 + 56), *(v0 + 40));
      swift_weakInit();
      sub_26B9AC804();
      *(v0 + 192) = sub_26B9AC7F4();
      v23 = sub_26B9AC7C4();

      return MEMORY[0x2822009F8](sub_26B90B1D8, v23, v22);
    }

    v20(*(v0 + 64), *(v0 + 40));
    v24 = *(v0 + 184);
    v25 = *(v0 + 88);
    (*(v0 + 176))(*(v0 + 56), *(v0 + 40));
    v26 = sub_26B9AB1F4();
    (*(*(v26 - 8) + 8))(v25, v26);
  }

  else
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  }

  v27 = *(MEMORY[0x277D858B8] + 4);
  v28 = swift_task_alloc();
  *(v0 + 160) = v28;
  *v28 = v0;
  v28[1] = sub_26B90AD3C;
  v29 = *(v0 + 144);
  v30 = *(v0 + 128);
  v31 = *(v0 + 96);

  return MEMORY[0x2822005A8](v31, 0, 0, v30, v0 + 16);
}

void sub_26B90B1D8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);

  sub_26B90B43C();
  if (v2)
  {
  }

  else
  {
    swift_weakDestroy();

    MEMORY[0x2822009F8](sub_26B90B27C, 0, 0);
  }
}

uint64_t sub_26B90B27C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 88);
  (*(v0 + 176))(*(v0 + 64), *(v0 + 40));
  v3 = sub_26B9AB1F4();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = *(MEMORY[0x277D858B8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  *v5 = v0;
  v5[1] = sub_26B90AD3C;
  v6 = *(v0 + 144);
  v7 = *(v0 + 128);
  v8 = *(v0 + 96);

  return MEMORY[0x2822005A8](v8, 0, 0, v7, v0 + 16);
}

uint64_t sub_26B90B374()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[7];
  v4 = v0[8];
  (*(v0[17] + 8))(v0[18], v0[16]);
  v6 = v0[2];

  v7 = v0[1];

  return v7();
}

uint64_t sub_26B90B43C()
{
  v0 = sub_26B9AB584();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26B9A77DC();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_26B9AB564();
  v7 = sub_26B9AC914();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26B8E8000, v6, v7, "Dismissing search due to dialog appearing", v8, 2u);
    MEMORY[0x26D6879F0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 40))
    {
      v10 = *(result + 48);
      v11 = result;
      v12 = *(result + 40);
      ObjectType = swift_getObjectType();
      v15[3] = type metadata accessor for BaseToolExecutionSessionManager();
      v15[4] = &protocol witness table for BaseToolExecutionSessionManager;
      v15[0] = v11;
      v14 = *(v10 + 8);
      swift_unknownObjectRetain();
      sub_26B9AAAE4();
      v14(v15, ObjectType, v10);

      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v15);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_26B90B63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_26B9056CC(a3, v24 - v10);
  v12 = sub_26B9AC824();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_26B9AAAE4();
  if (v14 == 1)
  {
    sub_26B90573C(v11);
  }

  else
  {
    sub_26B9AC814();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_26B9AC7C4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_26B9AC554() + 32;
      sub_26B9AAAE4();
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void *BaseToolExecutionSessionManager.deinit()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[5];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t BaseToolExecutionSessionManager.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[5];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_26B90B904()
{
  result = qword_2804261D0;
  if (!qword_2804261D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804261D0);
  }

  return result;
}

uint64_t sub_26B90B99C()
{
  v2 = *(**v0 + 192);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26B90BAB0;

  return v6();
}

uint64_t sub_26B90BAB0(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t dispatch thunk of ToolExecutionSessionManager.currentSessionPool()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26B90BDB8;

  return v9(a1, a2);
}

uint64_t sub_26B90BDB8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of BaseToolExecutionSessionManager.currentSessionPool()()
{
  v2 = *(*v0 + 192);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26B90CBF0;

  return v6();
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;
        sub_26B9AAAE4();

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
          sub_26B9AAAE4();
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
          sub_26B9AAAE4();
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t sub_26B90C340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_26B9ACCF4();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_26B90C440, 0, 0);
}

uint64_t sub_26B90C440()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_26B9ACD04();
  v7 = sub_26B90CAB8(&qword_2804261D8, MEMORY[0x277D85928]);
  sub_26B9ACF34();
  sub_26B90CAB8(&qword_2804261E0, MEMORY[0x277D858F8]);
  sub_26B9ACD14();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_26B90C5D0;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_26B90C5D0()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26B90C78C, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_26B90C78C()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_26B90C7F8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_26B90C8EC;

  return v6(v2 + 32);
}

uint64_t sub_26B90C8EC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_26B90CA00(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26B8EC52C;

  return sub_26B90C7F8(a1, v5);
}

uint64_t sub_26B90CAB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26B90CB00()
{
  result = qword_2804261E8;
  if (!qword_2804261E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804261E8);
  }

  return result;
}

uint64_t sub_26B90CB54()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26B8EB6C8;

  return sub_26B90A88C(v4, v5, v6, v2, v3);
}

uint64_t ToolEntityParameterTypeInfo.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ToolEntityParameterTypeInfo.typeIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t static ToolEntityParameterTypeInfo.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_26B9ACEB4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_26B9ACEB4();
    }
  }

  return result;
}

uint64_t sub_26B90CCFC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_26B9ACEB4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_26B9ACEB4();
    }
  }

  return result;
}

uint64_t static ToolKitUtilities.toolInvocation(for:parameters:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a3;
  v84 = a1;
  v85 = a2;
  v89 = a4;
  v4 = sub_26B9AB584();
  v87 = *(v4 - 8);
  v88 = v4;
  v5 = *(v87 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v86 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v75 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426218, &qword_26B9B0890);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v67 - v11;
  v13 = sub_26B9AB224();
  v83 = *(v13 - 8);
  v14 = *(v83 + 64);
  MEMORY[0x28223BE20](v13);
  v82 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426220, &qword_26B9B0898);
  v76 = *(v16 - 8);
  v77 = v16;
  v17 = *(v76 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v67 - v18);
  v81 = sub_26B9ABA14();
  v79 = *(v81 - 8);
  v20 = *(v79 + 64);
  v21 = MEMORY[0x28223BE20](v81);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v78 = &v67 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426228, &unk_26B9B08A0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v80 = &v67 - v27;
  v28 = sub_26B9AB914();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v67 - v34;
  sub_26B9ABC04();
  v36 = sub_26B9ABBF4();
  v68 = v33;
  v69 = v35;
  v71 = v13;
  v72 = v28;
  v73 = v29;
  v67 = v12;
  v70 = v36;
  sub_26B9AB9F4();
  swift_getKeyPath();
  v37 = swift_allocObject();
  v38 = v85;
  *(v37 + 16) = v84;
  *(v37 + 24) = v38;
  *v19 = v37;
  v40 = v76;
  v39 = v77;
  (*(v76 + 104))(v19, *MEMORY[0x277D721C8], v77);
  sub_26B92349C(&qword_280426238, MEMORY[0x277D724B8]);
  sub_26B9223E8(&qword_280426240, &qword_280426220, &qword_26B9B0898);

  v41 = v78;
  sub_26B9ABC54();

  (*(v40 + 8))(v19, v39);
  v42 = *(v79 + 8);
  v43 = v81;
  v42(v23, v81);
  v44 = v82;
  sub_26B9AB204();
  v45 = v80;
  sub_26B9ABBC4();
  (*(v83 + 8))(v44, v71);
  v42(v41, v43);
  v47 = v72;
  v46 = v73;
  v48 = (*(v73 + 48))(v45, 1, v72);
  v49 = v87;
  if (v48 == 1)
  {
    sub_26B8EACD8(v45, &qword_280426228, &unk_26B9B08A0);
    v50 = sub_26B9A75D0();
    v51 = v75;
    v52 = v88;
    (*(v49 + 16))(v75, v50, v88);
    v53 = v85;

    v54 = sub_26B9AB564();
    v55 = sub_26B9AC934();

    v56 = os_log_type_enabled(v54, v55);
    v57 = v89;
    if (v56)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v90 = v59;
      *v58 = 136315138;
      *(v58 + 4) = sub_26B91FC00(v84, v53, &v90);
      _os_log_impl(&dword_26B8E8000, v54, v55, "Unable to find tool with ID: %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x26D6879F0](v59, -1, -1);
      MEMORY[0x26D6879F0](v58, -1, -1);
    }

    (*(v49 + 8))(v51, v52);
    v60 = 1;
  }

  else
  {
    v63 = v69;
    (*(v46 + 32))(v69, v45, v47);
    (*(v46 + 16))(v68, v63, v47);
    v57 = v89;
    if (v74)
    {
      v64 = v74;
    }

    else
    {
      v64 = sub_26B922070(MEMORY[0x277D84F90]);
    }

    v65 = v67;

    sub_26B90D7EC(v64);

    v66 = sub_26B9ABAE4();
    (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
    sub_26B9AB924();
    (*(v73 + 8))(v69, v47);

    v60 = 0;
  }

  v61 = sub_26B9AB984();
  return (*(*(v61 - 8) + 56))(v57, v60, 1, v61);
}

unint64_t sub_26B90D7EC(uint64_t a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426298, &qword_26B9B0990);
  v2 = *(*(v46 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v46);
  v45 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v44 = &v41 - v5;
  v47 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426360, &qword_26B9B0D40);
    v6 = sub_26B9ACD84();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v7 = v47 + 64;
  v8 = 1 << *(v47 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v47 + 64);
  v11 = (v8 + 63) >> 6;
  v41 = v6 + 8;
  sub_26B9AAAE4();

  v13 = 0;
  v43 = v6;
  v42 = v7;
  while (v10)
  {
    v18 = v13;
LABEL_14:
    v19 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v20 = v19 | (v18 << 6);
    v21 = *(v47 + 56);
    v22 = (*(v47 + 48) + 16 * v20);
    v24 = *v22;
    v48 = v22[1];
    v23 = v48;
    v25 = sub_26B9ABE84();
    v26 = *(v25 - 8);
    v27 = v21 + *(v26 + 72) * v20;
    v28 = v46;
    v29 = v44;
    (*(v26 + 16))(&v44[*(v46 + 48)], v27, v25);
    *v29 = v24;
    v29[1] = v23;
    v30 = v29;
    v31 = v45;
    sub_26B923680(v30, v45, &qword_280426298, &qword_26B9B0990);
    v32 = *(v28 + 48);
    v33 = *v31;
    v34 = v31[1];
    v50 = v25;
    v51 = MEMORY[0x277D72A68];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v49);
    (*(v26 + 32))(boxed_opaque_existential_1, v31 + v32, v25);
    sub_26B8ECB70(&v49, v53);
    sub_26B8ECB70(v53, v54);
    sub_26B8ECB70(v54, &v52);

    v6 = v43;
    result = sub_26B9201A8(v33, v34);
    if (v36)
    {
      v14 = (v6[6] + 16 * result);
      v15 = v14[1];
      *v14 = v33;
      v14[1] = v34;
      v16 = result;

      v17 = (v6[7] + 40 * v16);
      __swift_destroy_boxed_opaque_existential_1(v17);
      result = sub_26B8ECB70(&v52, v17);
    }

    else
    {
      if (v6[2] >= v6[3])
      {
        goto LABEL_20;
      }

      *(v41 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v37 = (v6[6] + 16 * result);
      *v37 = v33;
      v37[1] = v34;
      result = sub_26B8ECB70(&v52, v6[7] + 40 * result);
      v38 = v6[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_21;
      }

      v6[2] = v40;
    }

    v13 = v18;
    v7 = v42;
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= v11)
    {

      return v6;
    }

    v10 = *(v7 + 8 * v18);
    ++v13;
    if (v10)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t static ToolKitUtilities.toolInvocation(for:)(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426248, &qword_26B9B08E8) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = sub_26B9AC114();
  v2[12] = v4;
  v5 = *(v4 - 8);
  v2[13] = v5;
  v2[14] = *(v5 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426250, &qword_26B9B08F0) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B90DD28, 0, 0);
}

uint64_t sub_26B90DD28()
{
  KeyPath = swift_getKeyPath();
  Dependency.init(_:)(KeyPath, v0 + 7);
  v0[21] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426258, &qword_26B9B0920);
  Dependency.wrappedValue.getter((v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_26B90DE8C;

  return v8(v2, v3);
}

uint64_t sub_26B90DE8C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 176);
  v8 = *v3;
  v4[23] = a1;
  v4[24] = a2;
  v4[25] = v2;

  if (v2)
  {
    v6 = sub_26B90E900;
  }

  else
  {
    v6 = sub_26B90DFA4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26B90DFA4()
{
  v1 = v0[20];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[9];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = *(v3 + 56);
  v5(v1, 1, 1, v2);
  v6 = [v4 intentMessageData];
  if (v6)
  {
    v7 = v6;
    v8 = sub_26B9AB124();
    v10 = v9;

    v11 = sub_26B9AB114();
    sub_26B922394(v8, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = WFSpotlightResultRunnableFromData();

  if (v12)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v15 = v0 + 19;
      v14 = v0[19];
      v16 = v0[25];
      v17 = v13;
      v18 = [v13 linkAction];
      v19 = [v17 appBundleIdentifier];
      sub_26B9AC504();

      sub_26B9AC0F4();
      if (v16)
      {
        v20 = v0[23];
        v21 = v0[20];
        swift_unknownObjectRelease();
LABEL_20:
        swift_unknownObjectRelease();
        sub_26B8EACD8(v21, &qword_280426250, &qword_26B9B08F0);
        v43 = v0[7];

        v45 = v0[19];
        v44 = v0[20];
        v47 = v0[17];
        v46 = v0[18];
        v49 = v0[15];
        v48 = v0[16];
        v51 = v0[10];
        v50 = v0[11];

        v52 = v0[1];

        return v52();
      }

      sub_26B8EACD8(v0[20], &qword_280426250, &qword_26B9B08F0);
      swift_unknownObjectRelease();
LABEL_17:
      v34 = *v15;
      v35 = v0[20];
      v5(*v15, 0, 1, v0[12]);
      sub_26B923680(v34, v35, &qword_280426250, &qword_26B9B08F0);
      goto LABEL_18;
    }

    swift_unknownObjectRelease();
  }

  v22 = v0[9];
  v23 = [v22 intentMessageName];
  v24 = [v22 intentMessageData];
  if (v24)
  {
    v25 = v24;
    v26 = sub_26B9AB124();
    v28 = v27;

    v29 = sub_26B9AB114();
    sub_26B922394(v26, v28);
  }

  else
  {
    v29 = 0;
  }

  v30 = INIntentCreate();

  if (v30)
  {
    v15 = v0 + 18;
    v31 = v0[18];
    v32 = v0[25];
    sub_26B9AC104();
    if (v32)
    {
      v33 = v0[23];
      v21 = v0[20];
      goto LABEL_20;
    }

    sub_26B8EACD8(v0[20], &qword_280426250, &qword_26B9B08F0);
    goto LABEL_17;
  }

LABEL_18:
  v36 = v0[17];
  v37 = v0[12];
  v38 = v0[13];
  sub_26B9236E8(v0[20], v36, &qword_280426250, &qword_26B9B08F0);
  v39 = (*(v38 + 48))(v36, 1, v37);
  v40 = v0[17];
  if (v39 == 1)
  {
    v41 = v0[23];
    v21 = v0[20];
    sub_26B8EACD8(v0[17], &qword_280426250, &qword_26B9B08F0);
    sub_26B92225C();
    swift_allocError();
    *v42 = 0;
    swift_willThrow();
    goto LABEL_20;
  }

  v54 = v0[23];
  v56 = v0[15];
  v55 = v0[16];
  v57 = v0[13];
  v58 = v0[12];
  v59 = *(v57 + 32);
  v59(v55, v0[17], v58);
  ObjectType = swift_getObjectType();
  (*(v57 + 16))(v56, v55, v58);
  v61 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v62 = swift_allocObject();
  v0[26] = v62;
  v59(v62 + v61, v56, v58);
  v63 = *(MEMORY[0x277D726A0] + 4);
  v64 = swift_task_alloc();
  v0[27] = v64;
  v65 = sub_26B9AB984();
  v0[28] = v65;
  *v64 = v0;
  v64[1] = sub_26B90E4FC;
  v67 = v0[23];
  v66 = v0[24];
  v68 = v0[11];

  return MEMORY[0x2821DAB50](v68, &unk_26B9B0930, v62, v65, ObjectType, v66);
}

uint64_t sub_26B90E4FC()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 208);

  if (v0)
  {
    v6 = sub_26B90E9D0;
  }

  else
  {
    v6 = sub_26B90E630;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26B90E630()
{
  v1 = v0[28];
  v2 = v0[10];
  sub_26B9236E8(v0[11], v2, &qword_280426248, &qword_26B9B08E8);
  v3 = *(v1 - 8);
  if ((*(v3 + 48))(v2, 1, v1) == 1)
  {
    v4 = v0[23];
    v34 = v0[20];
    v5 = v0[16];
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[11];
    sub_26B8EACD8(v0[10], &qword_280426248, &qword_26B9B08E8);
    sub_26B92225C();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_26B8EACD8(v8, &qword_280426248, &qword_26B9B08E8);
    (*(v6 + 8))(v5, v7);
    sub_26B8EACD8(v34, &qword_280426250, &qword_26B9B08F0);
    v10 = v0[7];

    v12 = v0[19];
    v11 = v0[20];
    v14 = v0[17];
    v13 = v0[18];
    v16 = v0[15];
    v15 = v0[16];
    v18 = v0[10];
    v17 = v0[11];
  }

  else
  {
    v20 = v0[28];
    v21 = v0[23];
    v22 = v0[20];
    v31 = v0[19];
    v32 = v0[18];
    v23 = v0[16];
    v33 = v0[17];
    v35 = v0[15];
    v24 = v0[12];
    v25 = v0[13];
    v27 = v0[10];
    v26 = v0[11];
    v28 = v0[8];
    swift_unknownObjectRelease();
    sub_26B8EACD8(v26, &qword_280426248, &qword_26B9B08E8);
    (*(v25 + 8))(v23, v24);
    sub_26B8EACD8(v22, &qword_280426250, &qword_26B9B08F0);
    v29 = v0[7];

    (*(v3 + 32))(v28, v27, v20);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_26B90E900()
{
  v1 = v0[21];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[25];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v8 = v0[15];
  v7 = v0[16];
  v10 = v0[10];
  v9 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26B90E9D0()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[12];
  v5 = v0[13];
  swift_unknownObjectRelease();
  (*(v5 + 8))(v3, v4);
  sub_26B8EACD8(v2, &qword_280426250, &qword_26B9B08F0);
  v6 = v0[7];

  v7 = v0[29];
  v9 = v0[19];
  v8 = v0[20];
  v11 = v0[17];
  v10 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v15 = v0[10];
  v14 = v0[11];

  v16 = v0[1];

  return v16();
}

uint64_t sub_26B90EADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26B90EB00, 0, 0);
}

uint64_t sub_26B90EB00()
{
  v1 = v0[3];
  v2 = sub_26B9AB9A4();
  v4 = v3;
  v0[5] = v2;
  ObjectType = swift_getObjectType();
  v6 = *(MEMORY[0x277D72558] + 4);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_26B90EBC8;
  v8 = v0[4];
  v9 = v0[2];

  return MEMORY[0x2821DAA98](v9, v8, ObjectType, v4);
}

uint64_t sub_26B90EBC8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_26B9237C0;
  }

  else
  {
    v5 = *(v2 + 40);
    swift_unknownObjectRelease();
    v4 = sub_26B90ECE4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26B90ECE4()
{
  v1 = *(v0 + 16);
  v2 = sub_26B9AB984();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t static ToolKitUtilities.entityDefinition(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426268, &qword_26B9B0938);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_26B9ABEC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  static ToolKitUtilities.typeDefinition(for:)(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_26B8EACD8(v7, &qword_280426268, &qword_26B9B0938);
  }

  else
  {
    v16 = *(v9 + 32);
    v16(v15, v7, v8);
    v16(v13, v15, v8);
    if ((*(v9 + 88))(v13, v8) == *MEMORY[0x277D72B68])
    {
      (*(v9 + 96))(v13, v8);
      v17 = sub_26B9ABF94();
      v18 = *(v17 - 8);
      (*(v18 + 32))(a2, v13, v17);
      return (*(v18 + 56))(a2, 0, 1, v17);
    }

    (*(v9 + 8))(v13, v8);
  }

  v20 = sub_26B9ABF94();
  return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
}

uint64_t static ToolKitUtilities.typeDefinition(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a1;
  v72 = a2;
  v68 = sub_26B9ABF24();
  v70 = *(v68 - 8);
  v2 = *(v70 + 64);
  MEMORY[0x28223BE20](v68);
  v67 = v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26B9AB584();
  v71 = *(v4 - 8);
  v5 = *(v71 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v6);
  v8 = v57 - v7;
  v9 = sub_26B9AB224();
  v66 = *(v9 - 8);
  v10 = *(v66 + 64);
  MEMORY[0x28223BE20](v9);
  v64 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426270, &qword_26B9B0940);
  v61 = *(v12 - 8);
  v13 = *(v61 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v57 - v14);
  v16 = sub_26B9AC144();
  v62 = *(v16 - 8);
  v63 = v16;
  v17 = *(v62 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v57 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426268, &qword_26B9B0938);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v65 = v57 - v25;
  sub_26B9ABC04();
  v26 = sub_26B9ABBF4();
  v59 = v9;
  v60 = v8;
  v58 = v4;
  v27 = v26;
  sub_26B9AC124();
  swift_getKeyPath();
  v28 = v68;
  v29 = swift_allocBox();
  v57[0] = *(v70 + 16);
  v57[1] = v70 + 16;
  (v57[0])(v30, v69, v28);
  *v15 = v29;
  v31 = v61;
  (*(v61 + 104))(v15, *MEMORY[0x277D721C8], v12);
  sub_26B92349C(&qword_280426278, MEMORY[0x277D73198]);
  sub_26B9223E8(&qword_280426280, &qword_280426270, &qword_26B9B0940);
  sub_26B9ABC54();

  (*(v31 + 8))(v15, v12);
  v32 = v63;
  v33 = *(v62 + 8);
  v33(v20, v63);
  v34 = v64;
  sub_26B9AB204();
  v35 = v65;
  v62 = v27;
  sub_26B9ABBD4();
  (*(v66 + 8))(v34, v59);
  v33(v22, v32);
  v36 = sub_26B9ABEC4();
  v37 = *(v36 - 8);
  v38 = (*(v37 + 48))(v35, 1, v36);
  v39 = v60;
  v40 = v67;
  if (v38 == 1)
  {
    sub_26B8EACD8(v35, &qword_280426268, &qword_26B9B0938);
    v41 = sub_26B9A75D0();
    v42 = v71;
    v43 = v58;
    (*(v71 + 16))(v39, v41, v58);
    v44 = v68;
    (v57[0])(v40, v69, v68);
    v45 = sub_26B9AB564();
    v46 = sub_26B9AC934();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v73 = v48;
      *v47 = 136315138;
      v49 = sub_26B9ABF14();
      v50 = v40;
      v52 = v51;
      (*(v70 + 8))(v50, v44);
      v53 = sub_26B91FC00(v49, v52, &v73);

      *(v47 + 4) = v53;
      _os_log_impl(&dword_26B8E8000, v45, v46, "Unable to find type with ID: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x26D6879F0](v48, -1, -1);
      MEMORY[0x26D6879F0](v47, -1, -1);
    }

    else
    {

      (*(v70 + 8))(v40, v44);
    }

    (*(v42 + 8))(v39, v43);
    v54 = sub_26B9ABEC4();
    return (*(*(v54 - 8) + 56))(v72, 1, 1, v54);
  }

  else
  {

    v56 = v72;
    (*(v37 + 32))(v72, v35, v36);
    return (*(v37 + 56))(v56, 0, 1, v36);
  }
}

uint64_t sub_26B90F9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a1);
  return a7(v12);
}

uint64_t static ToolKitUtilities.hydrate(invocation:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426218, &qword_26B9B0890) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426248, &qword_26B9B08E8) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = sub_26B9AB914();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426288, &qword_26B9B0980) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = sub_26B9AC0E4();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v12 = sub_26B9ABE84();
  v2[15] = v12;
  v13 = *(v12 - 8);
  v2[16] = v13;
  v14 = *(v13 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426290, &qword_26B9B0988) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B90FD0C, 0, 0);
}

uint64_t sub_26B90FD0C()
{
  v1 = *(v0 + 24);
  v2 = sub_26B9AB954();
  v3 = sub_26B910C58(v2);
  *(v0 + 168) = v3;
  *(v0 + 176) = 0;

  v4 = *(v3 + 32);
  *(v0 + 232) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v3 + 64);
  v80 = v3;
  *(v0 + 184) = v3;

  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = *(v0 + 168);
LABEL_14:
      v15 = *(v0 + 144);
      v16 = *(v0 + 152);
      v18 = *(v0 + 120);
      v17 = *(v0 + 128);
      v19 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v20 = v19 | (v9 << 6);
      v21 = (*(v10 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      (*(v17 + 16))(v15, *(v10 + 56) + *(v17 + 72) * v20, v18);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426298, &qword_26B9B0990);
      v25 = *(v24 + 48);
      *v16 = v22;
      *(v16 + 1) = v23;
      (*(v17 + 32))(&v16[v25], v15, v18);
      (*(*(v24 - 8) + 56))(v16, 0, 1, v24);

      v13 = v9;
LABEL_15:
      *(v0 + 192) = v7;
      *(v0 + 200) = v13;
      v26 = *(v0 + 160);
      sub_26B923680(*(v0 + 152), v26, &qword_280426290, &qword_26B9B0988);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426298, &qword_26B9B0990);
      if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
      {
        v52 = (v0 + 40);
        v51 = *(v0 + 40);
        v53 = *(v0 + 168);
        v54 = *(v0 + 176);
        v55 = *(v0 + 64);
        v56 = *(v0 + 24);
        v57 = *(v0 + 32);

        sub_26B9AB934();
        sub_26B90D7EC(v80);
        sub_26B9AB974();
        sub_26B9AB924();
        v58 = *(v0 + 40);
        if (v54)
        {

          v59 = sub_26B9AB984();
          v60 = (*(v59 - 8) + 56);
          (*v60)(v58, 1, 1, v59);
          v61 = v60 - 5;
          v52 = (v0 + 24);
        }

        else
        {
          v59 = sub_26B9AB984();
          v66 = (*(v59 - 8) + 56);
          (*v66)(v58, 0, 1, v59);
          v61 = v66 - 3;
        }

        v67 = *v52;
        v69 = *(v0 + 152);
        v68 = *(v0 + 160);
        v71 = *(v0 + 136);
        v70 = *(v0 + 144);
        v73 = *(v0 + 104);
        v72 = *(v0 + 112);
        v75 = *(v0 + 72);
        v74 = *(v0 + 80);
        v76 = *(v0 + 64);
        v78 = *(v0 + 40);
        v79 = *(v0 + 32);
        (*v61)(*(v0 + 16), v67, v59);

        v77 = *(v0 + 8);

        return v77();
      }

      v28 = *(v0 + 160);
      v30 = *(v0 + 128);
      v29 = *(v0 + 136);
      v31 = *(v0 + 120);
      v32 = *(v0 + 72);
      v34 = *(v0 + 48);
      v33 = *(v0 + 56);
      v35 = *(v0 + 24);
      v36 = *v28;
      *(v0 + 208) = *v28;
      v37 = *(v28 + 1);
      *(v0 + 216) = v37;
      (*(v30 + 32))(v29, &v28[*(v27 + 48)], v31);
      sub_26B9AB934();
      v38 = sub_26B9AB8B4();
      result = (*(v33 + 8))(v32, v34);
      v39 = *(v38 + 16);
      if (v39)
      {
        break;
      }

LABEL_25:

      v44 = 1;
LABEL_28:
      v45 = *(v0 + 88);
      v46 = *(v0 + 96);
      v47 = *(v0 + 80);
      (*(v46 + 56))(v47, v44, 1, v45);
      if ((*(v46 + 48))(v47, 1, v45) != 1)
      {
        (*(*(v0 + 96) + 32))(*(v0 + 112), *(v0 + 80), *(v0 + 88));
        v62 = swift_task_alloc();
        *(v0 + 224) = v62;
        *v62 = v0;
        v62[1] = sub_26B91040C;
        v64 = *(v0 + 136);
        v63 = *(v0 + 144);
        v65 = *(v0 + 112);

        return static ToolKitUtilities.hydrate(typedValue:parameterDefinition:)(v63, v64, v65);
      }

      v48 = *(v0 + 80);
      (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

      result = sub_26B8EACD8(v48, &qword_280426288, &qword_26B9B0980);
      v9 = v13;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v40 = 0;
    while (v40 < *(v38 + 16))
    {
      (*(*(v0 + 96) + 16))(*(v0 + 104), v38 + ((*(*(v0 + 96) + 80) + 32) & ~*(*(v0 + 96) + 80)) + *(*(v0 + 96) + 72) * v40, *(v0 + 88));
      if (sub_26B9AC0B4() == v36 && v41 == v37)
      {

LABEL_27:

        (*(*(v0 + 96) + 32))(*(v0 + 80), *(v0 + 104), *(v0 + 88));
        v44 = 0;
        goto LABEL_28;
      }

      v43 = sub_26B9ACEB4();

      if (v43)
      {
        goto LABEL_27;
      }

      ++v40;
      result = (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
      if (v39 == v40)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v11 = ((1 << *(v0 + 232)) + 63) >> 6;
    if (v11 <= (v9 + 1))
    {
      v12 = v9 + 1;
    }

    else
    {
      v12 = ((1 << *(v0 + 232)) + 63) >> 6;
    }

    v13 = v12 - 1;
    while (1)
    {
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        v49 = *(v0 + 152);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426298, &qword_26B9B0990);
        (*(*(v50 - 8) + 56))(v49, 1, 1, v50);
        v7 = 0;
        goto LABEL_15;
      }

      v10 = *(v0 + 168);
      v7 = *(v10 + 8 * v14 + 64);
      ++v9;
      if (v7)
      {
        v9 = v14;
        goto LABEL_14;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B91040C()
{
  v1 = *(*v0 + 224);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26B910508, 0, 0);
}

uint64_t sub_26B910508()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 184);
  v4 = *(v0 + 144);
  v85 = *(v0 + 136);
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  v7 = *(v0 + 112);
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_26B9209DC(v4, v2, v1, isUniquelyReferenced_nonNull_native, MEMORY[0x277D72A78], &qword_280426318, &qword_26B9B0CE0, MEMORY[0x277D72A78]);

  (*(v8 + 8))(v7, v9);
  result = (*(v6 + 8))(v85, v5);
  v86 = v3;
  v13 = *(v0 + 192);
  v12 = *(v0 + 200);
  *(v0 + 184) = v3;
  if (v13)
  {
    while (1)
    {
      v14 = *(v0 + 168);
LABEL_11:
      v19 = *(v0 + 144);
      v20 = *(v0 + 152);
      v22 = *(v0 + 120);
      v21 = *(v0 + 128);
      v23 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v24 = v23 | (v12 << 6);
      v25 = (*(v14 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      (*(v21 + 16))(v19, *(v14 + 56) + *(v21 + 72) * v24, v22);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426298, &qword_26B9B0990);
      v29 = *(v28 + 48);
      *v20 = v26;
      *(v20 + 1) = v27;
      (*(v21 + 32))(&v20[v29], v19, v22);
      (*(*(v28 - 8) + 56))(v20, 0, 1, v28);

      v17 = v12;
LABEL_12:
      *(v0 + 192) = v13;
      *(v0 + 200) = v17;
      v30 = *(v0 + 160);
      sub_26B923680(*(v0 + 152), v30, &qword_280426290, &qword_26B9B0988);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426298, &qword_26B9B0990);
      if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
      {
        v57 = (v0 + 40);
        v56 = *(v0 + 40);
        v58 = *(v0 + 168);
        v59 = *(v0 + 176);
        v60 = *(v0 + 64);
        v61 = *(v0 + 24);
        v62 = *(v0 + 32);

        sub_26B9AB934();
        sub_26B90D7EC(v86);
        sub_26B9AB974();
        sub_26B9AB924();
        v63 = *(v0 + 40);
        if (v59)
        {

          v64 = sub_26B9AB984();
          v65 = (*(v64 - 8) + 56);
          (*v65)(v63, 1, 1, v64);
          v66 = v65 - 5;
          v57 = (v0 + 24);
        }

        else
        {
          v64 = sub_26B9AB984();
          v71 = (*(v64 - 8) + 56);
          (*v71)(v63, 0, 1, v64);
          v66 = v71 - 3;
        }

        v72 = *v57;
        v74 = *(v0 + 152);
        v73 = *(v0 + 160);
        v76 = *(v0 + 136);
        v75 = *(v0 + 144);
        v78 = *(v0 + 104);
        v77 = *(v0 + 112);
        v80 = *(v0 + 72);
        v79 = *(v0 + 80);
        v81 = *(v0 + 64);
        v83 = *(v0 + 40);
        v84 = *(v0 + 32);
        (*v66)(*(v0 + 16), v72, v64);

        v82 = *(v0 + 8);

        return v82();
      }

      v32 = *(v0 + 160);
      v34 = *(v0 + 128);
      v33 = *(v0 + 136);
      v35 = *(v0 + 120);
      v36 = *(v0 + 72);
      v38 = *(v0 + 48);
      v37 = *(v0 + 56);
      v39 = *(v0 + 24);
      v40 = *v32;
      *(v0 + 208) = *v32;
      v41 = *(v32 + 1);
      *(v0 + 216) = v41;
      (*(v34 + 32))(v33, &v32[*(v31 + 48)], v35);
      sub_26B9AB934();
      v42 = sub_26B9AB8B4();
      result = (*(v37 + 8))(v36, v38);
      v43 = *(v42 + 16);
      if (v43)
      {
        break;
      }

LABEL_22:

      v48 = 1;
LABEL_25:
      v49 = *(v0 + 88);
      v50 = *(v0 + 96);
      v51 = *(v0 + 80);
      (*(v50 + 56))(v51, v48, 1, v49);
      v52 = (*(v50 + 48))(v51, 1, v49);
      v53 = *(v0 + 80);
      if (v52 != 1)
      {
        (*(*(v0 + 96) + 32))(*(v0 + 112), *(v0 + 80), *(v0 + 88));
        v67 = swift_task_alloc();
        *(v0 + 224) = v67;
        *v67 = v0;
        v67[1] = sub_26B91040C;
        v69 = *(v0 + 136);
        v68 = *(v0 + 144);
        v70 = *(v0 + 112);

        return static ToolKitUtilities.hydrate(typedValue:parameterDefinition:)(v68, v69, v70);
      }

      (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

      result = sub_26B8EACD8(v53, &qword_280426288, &qword_26B9B0980);
      v12 = v17;
      if (!v13)
      {
        goto LABEL_3;
      }
    }

    v44 = 0;
    while (v44 < *(v42 + 16))
    {
      (*(*(v0 + 96) + 16))(*(v0 + 104), v42 + ((*(*(v0 + 96) + 80) + 32) & ~*(*(v0 + 96) + 80)) + *(*(v0 + 96) + 72) * v44, *(v0 + 88));
      if (sub_26B9AC0B4() == v40 && v45 == v41)
      {

LABEL_24:

        (*(*(v0 + 96) + 32))(*(v0 + 80), *(v0 + 104), *(v0 + 88));
        v48 = 0;
        goto LABEL_25;
      }

      v47 = sub_26B9ACEB4();

      if (v47)
      {
        goto LABEL_24;
      }

      ++v44;
      result = (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
      if (v43 == v44)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_3:
    v15 = ((1 << *(v0 + 232)) + 63) >> 6;
    if (v15 <= (v12 + 1))
    {
      v16 = v12 + 1;
    }

    else
    {
      v16 = ((1 << *(v0 + 232)) + 63) >> 6;
    }

    v17 = v16 - 1;
    while (1)
    {
      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        v54 = *(v0 + 152);
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426298, &qword_26B9B0990);
        (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
        v13 = 0;
        goto LABEL_12;
      }

      v14 = *(v0 + 168);
      v13 = *(v14 + 8 * v18 + 64);
      ++v12;
      if (v13)
      {
        v12 = v18;
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B910C58(uint64_t a1)
{
  v2 = sub_26B9ABFB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v66 - v9;
  v11 = sub_26B9ABE84();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v69 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = &v66 - v16;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426320, &qword_26B9B0CE8);
  v17 = *(*(v89 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v89);
  v71 = (&v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v92 = &v66 - v21;
  MEMORY[0x28223BE20](v20);
  v84 = &v66 - v22;
  v24 = a1 + 64;
  v23 = *(a1 + 64);
  v72 = MEMORY[0x277D84F98];
  v93 = MEMORY[0x277D84F98];
  v25 = 1 << *(a1 + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & v23;
  v28 = (v25 + 63) >> 6;
  v81 = v3 + 88;
  v82 = v3 + 16;
  v80 = *MEMORY[0x277D72E38];
  v74 = *MEMORY[0x277D72E40];
  v79 = (v12 + 56);
  v75 = (v3 + 8);
  v88 = v3;
  v73 = (v3 + 96);
  v76 = (v12 + 32);
  v68 = v12;
  v78 = (v12 + 48);
  v90 = a1;

  v29 = 0;
  v77 = a1 + 64;
  v83 = v28;
  v86 = v10;
  v87 = v11;
  v85 = v6;
  while (1)
  {
    v30 = v29;
    if (!v27)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v29 = v30;
LABEL_10:
      v31 = __clz(__rbit64(v27)) | (v29 << 6);
      v32 = v89;
      v33 = *(v90 + 56);
      v34 = (*(v90 + 48) + 16 * v31);
      v35 = v34[1];
      v91 = *v34;
      v36 = v88;
      v37 = *(v88 + 16);
      v38 = v84;
      v37(&v84[*(v89 + 48)], v33 + *(v88 + 72) * v31, v2);
      *v38 = v91;
      v38[1] = v35;
      v91 = v35;
      v39 = v92;
      sub_26B923680(v38, v92, &qword_280426320, &qword_26B9B0CE8);
      v40 = v39 + *(v32 + 48);
      v41 = v85;
      v37(v85, v40, v2);
      v42 = (*(v36 + 88))(v41, v2);
      if (v42 == v80)
      {
        (*v73)(v41, v2);
        v43 = v86;
        v44 = v87;
        (*v76)(v86, v41, v87);
        (*v79)(v43, 0, 1, v44);
      }

      else
      {
        v43 = v86;
        if (v42 != v74)
        {
          goto LABEL_33;
        }

        v44 = v87;
        (*v79)(v86, 1, 1, v87);
        v45 = *v75;

        v45(v41, v2);
      }

      v28 = v83;
      v27 &= v27 - 1;
      if ((*v78)(v43, 1, v44) != 1)
      {
        break;
      }

      sub_26B8EACD8(v92, &qword_280426320, &qword_26B9B0CE8);
      sub_26B8EACD8(v43, &qword_2804260C8, &qword_26B9B0050);
      v30 = v29;
      v24 = v77;
      if (!v27)
      {
LABEL_7:
        while (1)
        {
          v29 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v29 >= v28)
          {

            return v72;
          }

          v27 = *(v24 + 8 * v29);
          ++v30;
          if (v27)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_32;
      }
    }

    v46 = *v76;
    (*v76)(v70, v43, v44);
    sub_26B923680(v92, v71, &qword_280426320, &qword_26B9B0CE8);
    v67 = v46;
    v46(v69, v70, v44);
    v47 = v72[2];
    if (v72[3] <= v47)
    {
      sub_26B9202D8(v47 + 1, 1, MEMORY[0x277D72A78], &qword_280426318, &qword_26B9B0CE0);
    }

    v48 = v93;
    v49 = *v71;
    v91 = v71[1];
    v50 = *(v93 + 40);
    sub_26B9ACFB4();
    v66 = v49;
    sub_26B9AC574();
    v51 = sub_26B9ACFF4();
    v52 = v48 + 64;
    v72 = v48;
    v53 = -1 << *(v48 + 32);
    v54 = v51 & ~v53;
    v55 = v54 >> 6;
    if (((-1 << v54) & ~*(v48 + 64 + 8 * (v54 >> 6))) == 0)
    {
      break;
    }

    v56 = __clz(__rbit64((-1 << v54) & ~*(v48 + 64 + 8 * (v54 >> 6)))) | v54 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    v61 = *(v89 + 48);
    *(v52 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
    v62 = v72;
    v63 = (v72[6] + 16 * v56);
    v64 = v91;
    *v63 = v66;
    v63[1] = v64;
    v67((v62[7] + *(v68 + 72) * v56), v69, v44);
    ++v62[2];
    (*v75)(v71 + v61, v2);
    v24 = v77;
  }

  v57 = 0;
  v58 = (63 - v53) >> 6;
  while (++v55 != v58 || (v57 & 1) == 0)
  {
    v59 = v55 == v58;
    if (v55 == v58)
    {
      v55 = 0;
    }

    v57 |= v59;
    v60 = *(v52 + 8 * v55);
    if (v60 != -1)
    {
      v56 = __clz(__rbit64(~v60)) + (v55 << 6);
      goto LABEL_29;
    }
  }

LABEL_32:
  __break(1u);
LABEL_33:

  result = sub_26B9ACEA4();
  __break(1u);
  return result;
}

uint64_t sub_26B911480(uint64_t a1)
{
  v2 = sub_26B9ABFB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v65 - v9;
  v11 = sub_26B9ABE84();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v69 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = &v65 - v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426320, &qword_26B9B0CE8);
  v17 = *(*(v88 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v88);
  v71 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v91 = &v65 - v21;
  MEMORY[0x28223BE20](v20);
  v83 = &v65 - v22;
  v72 = MEMORY[0x277D84F98];
  v92 = MEMORY[0x277D84F98];
  v23 = a1 + 64;
  v24 = 1 << *(a1 + 32);
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & *(a1 + 64);
  v27 = (v24 + 63) >> 6;
  v80 = v3 + 88;
  v81 = v3 + 16;
  v79 = *MEMORY[0x277D72E38];
  v78 = (v12 + 56);
  v74 = (v3 + 8);
  v87 = v3;
  v73 = (v3 + 96);
  v75 = (v12 + 32);
  v68 = v12;
  v77 = (v12 + 48);
  v89 = a1;

  v29 = 0;
  v76 = a1 + 64;
  v82 = v27;
  v85 = v10;
  v86 = v11;
  v84 = v6;
  while (1)
  {
    v30 = v29;
    if (!v26)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v29 = v30;
LABEL_10:
      v31 = __clz(__rbit64(v26)) | (v29 << 6);
      v32 = v88;
      v33 = *(v89 + 56);
      v34 = (*(v89 + 48) + 16 * v31);
      v35 = v34[1];
      v90 = *v34;
      v36 = v87;
      v37 = *(v87 + 16);
      v38 = v83;
      v37(&v83[*(v88 + 48)], v33 + *(v87 + 72) * v31, v2);
      *v38 = v90;
      v38[1] = v35;
      v90 = v35;
      v39 = v91;
      sub_26B923680(v38, v91, &qword_280426320, &qword_26B9B0CE8);
      v40 = v39 + *(v32 + 48);
      v41 = v84;
      v37(v84, v40, v2);
      v42 = (*(v36 + 88))(v41, v2);
      if (v42 == v79)
      {
        (*v73)(v41, v2);
        v43 = v85;
        v44 = v86;
        (*v75)(v85, v41, v86);
        (*v78)(v43, 0, 1, v44);
      }

      else
      {
        v43 = v85;
        v44 = v86;
        (*v78)(v85, 1, 1, v86);
        v45 = *v74;

        v45(v41, v2);
      }

      v26 &= v26 - 1;
      v46 = (*v77)(v43, 1, v44);
      v27 = v82;
      if (v46 != 1)
      {
        break;
      }

      sub_26B8EACD8(v91, &qword_280426320, &qword_26B9B0CE8);
      result = sub_26B8EACD8(v43, &qword_2804260C8, &qword_26B9B0050);
      v30 = v29;
      v23 = v76;
      if (!v26)
      {
LABEL_7:
        while (1)
        {
          v29 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v29 >= v27)
          {

            return v72;
          }

          v26 = *(v23 + 8 * v29);
          ++v30;
          if (v26)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_31;
      }
    }

    v47 = *v75;
    (*v75)(v70, v43, v44);
    sub_26B923680(v91, v71, &qword_280426320, &qword_26B9B0CE8);
    v67 = v47;
    v47(v69, v70, v44);
    v48 = v72[2];
    if (v72[3] <= v48)
    {
      sub_26B9202D8(v48 + 1, 1, MEMORY[0x277D72A78], &qword_280426318, &qword_26B9B0CE0);
    }

    v49 = v92;
    v50 = *v71;
    v90 = v71[1];
    v51 = *(v92 + 40);
    sub_26B9ACFB4();
    v66 = v50;
    sub_26B9AC574();
    result = sub_26B9ACFF4();
    v52 = v49 + 64;
    v72 = v49;
    v53 = -1 << *(v49 + 32);
    v54 = result & ~v53;
    v55 = v54 >> 6;
    if (((-1 << v54) & ~*(v49 + 64 + 8 * (v54 >> 6))) == 0)
    {
      break;
    }

    v56 = __clz(__rbit64((-1 << v54) & ~*(v49 + 64 + 8 * (v54 >> 6)))) | v54 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
    v61 = *(v88 + 48);
    *(v52 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
    v62 = v72;
    v63 = (v72[6] + 16 * v56);
    v64 = v90;
    *v63 = v66;
    v63[1] = v64;
    v67((v62[7] + *(v68 + 72) * v56), v69, v44);
    ++v62[2];
    result = (*v74)(v71 + v61, v2);
    v23 = v76;
  }

  v57 = 0;
  v58 = (63 - v53) >> 6;
  while (++v55 != v58 || (v57 & 1) == 0)
  {
    v59 = v55 == v58;
    if (v55 == v58)
    {
      v55 = 0;
    }

    v57 |= v59;
    v60 = *(v52 + 8 * v55);
    if (v60 != -1)
    {
      v56 = __clz(__rbit64(~v60)) + (v55 << 6);
      goto LABEL_28;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t static ToolKitUtilities.hydrate(typedValue:parameterDefinition:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_26B9ABD04();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_26B9ABF24();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A0, &unk_26B9B3640) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v12 = sub_26B9ABD44();
  v3[15] = v12;
  v13 = *(v12 - 8);
  v3[16] = v13;
  v14 = *(v13 + 64) + 15;
  v3[17] = swift_task_alloc();
  v15 = sub_26B9ABE84();
  v3[18] = v15;
  v16 = *(v15 - 8);
  v3[19] = v16;
  v17 = *(v16 + 64) + 15;
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B911EC4, 0, 0);
}

uint64_t sub_26B911EC4()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[3];
  v5 = *(v2 + 16);
  v0[21] = v5;
  v0[22] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = (*(v2 + 88))(v1, v3);
  if (v6 == *MEMORY[0x277D72A38])
  {
    v7 = v0[20];
    v8 = v0[17];
    v9 = v0[15];
    v10 = v0[16];
    v11 = v0[14];
    v12 = v0[3];
    (*(v0[19] + 96))(v7, v0[18]);
    v0[23] = *v7;
    v13 = swift_projectBox();
    (*(v10 + 16))(v8, v13, v9);
    sub_26B9ABE64();
    v14 = sub_26B9AC1D4();
    LODWORD(v12) = (*(*(v14 - 8) + 48))(v11, 1, v14);
    sub_26B8EACD8(v11, &qword_2804262A0, &unk_26B9B3640);
    if (v12 == 1)
    {
      v15 = v0[17];
      v16 = v0[10];
      sub_26B9ABCF4();
      v17 = sub_26B9ABCA4();
      v19 = v18;
      v0[24] = v18;
      v20 = swift_task_alloc();
      v0[25] = v20;
      *v20 = v0;
      v20[1] = sub_26B912318;
      v21 = v0[12];
LABEL_7:
      v35 = v0[10];
      v36 = v0[4];

      return sub_26B912B10(v21, v35, v17, v19, v36);
    }

    v38 = v0[17];
    v39 = v0[18];
    v40 = v0[15];
    v41 = v0[16];
LABEL_13:
    v43 = v0[2];
    v42 = v0[3];
    (*(v41 + 8))(v38, v40);
    v5(v43, v42, v39);

    goto LABEL_14;
  }

  v23 = v0[19];
  v22 = v0[20];
  v24 = v0[18];
  if (v6 == *MEMORY[0x277D729F8])
  {
    v25 = v0[13];
    v27 = v0[6];
    v26 = v0[7];
    v28 = v0[5];
    v53 = v0[3];
    (*(v23 + 96))(v22, v24);
    v0[26] = *v22;
    v29 = swift_projectBox();
    (*(v27 + 16))(v26, v29, v28);
    sub_26B9ABE64();
    v30 = sub_26B9AC1D4();
    LODWORD(v26) = (*(*(v30 - 8) + 48))(v25, 1, v30);
    sub_26B8EACD8(v25, &qword_2804262A0, &unk_26B9B3640);
    if (v26 == 1)
    {
      v31 = v0[10];
      v32 = v0[7];
      sub_26B9ABCF4();
      v17 = sub_26B9ABCA4();
      v19 = v33;
      v0[27] = v33;
      v34 = swift_task_alloc();
      v0[28] = v34;
      *v34 = v0;
      v34[1] = sub_26B912614;
      v21 = v0[11];
      goto LABEL_7;
    }

    v39 = v0[18];
    v41 = v0[6];
    v38 = v0[7];
    v40 = v0[5];
    goto LABEL_13;
  }

  v5(v0[2], v0[3], v0[18]);
  (*(v23 + 8))(v22, v24);
LABEL_14:
  v44 = v0[20];
  v45 = v0[17];
  v47 = v0[13];
  v46 = v0[14];
  v49 = v0[11];
  v48 = v0[12];
  v50 = v0[10];
  v51 = v0[7];

  v52 = v0[1];

  return v52();
}

uint64_t sub_26B912318()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 64);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_26B91248C, 0, 0);
}

uint64_t sub_26B91248C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 96);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 176);
    v6 = *(v0 + 144);
    v7 = *(v0 + 96);
    (*(v0 + 168))(*(v0 + 16), *(v0 + 24), v6);
    v8 = v4(v7, 1, v6);
    v9 = *(v0 + 184);
    if (v8 != 1)
    {
      sub_26B8EACD8(*(v0 + 96), &qword_2804260C8, &qword_26B9B0050);
    }
  }

  else
  {
    v10 = *(v0 + 184);
    (*(*(v0 + 152) + 32))(*(v0 + 16), *(v0 + 96), *(v0 + 144));
  }

  v11 = *(v0 + 160);
  v12 = *(v0 + 136);
  v14 = *(v0 + 104);
  v13 = *(v0 + 112);
  v16 = *(v0 + 88);
  v15 = *(v0 + 96);
  v17 = *(v0 + 80);
  v18 = *(v0 + 56);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_26B912614()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 64);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_26B912788, 0, 0);
}

uint64_t sub_26B912788()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 88);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 176);
    v6 = *(v0 + 144);
    v7 = *(v0 + 88);
    (*(v0 + 168))(*(v0 + 16), *(v0 + 24), v6);
    v8 = v4(v7, 1, v6);
    v9 = *(v0 + 208);
    if (v8 != 1)
    {
      sub_26B8EACD8(*(v0 + 88), &qword_2804260C8, &qword_26B9B0050);
    }
  }

  else
  {
    v10 = *(v0 + 208);
    (*(*(v0 + 152) + 32))(*(v0 + 16), *(v0 + 88), *(v0 + 144));
  }

  v11 = *(v0 + 160);
  v12 = *(v0 + 136);
  v14 = *(v0 + 104);
  v13 = *(v0 + 112);
  v16 = *(v0 + 88);
  v15 = *(v0 + 96);
  v17 = *(v0 + 80);
  v18 = *(v0 + 56);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_26B912910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426328, &unk_26B9B0CF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_26B9ABFB4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_26B8EACD8(a1, &qword_280426328, &unk_26B9B0CF0);
    sub_26B92065C(a2, a3, v10);

    return sub_26B8EACD8(v10, &qword_280426328, &unk_26B9B0CF0);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_26B9209DC(v15, a2, a3, isUniquelyReferenced_nonNull_native, MEMORY[0x277D72E48], &qword_280426338, &unk_26B9B3500, MEMORY[0x277D72E48]);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_26B912B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A8, &qword_26B9B09B0) - 8);
  v5[7] = v6;
  v5[8] = *(v6 + 64);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v8 = sub_26B9AC014();
  v5[13] = v8;
  v9 = *(v8 - 8);
  v5[14] = v9;
  v10 = *(v9 + 64) + 15;
  v5[15] = swift_task_alloc();
  v11 = sub_26B9ABF94();
  v5[16] = v11;
  v12 = *(v11 - 8);
  v5[17] = v12;
  v13 = *(v12 + 64) + 15;
  v5[18] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A0, &unk_26B9B3640) - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v15 = sub_26B9ABD04();
  v5[20] = v15;
  v16 = *(v15 - 8);
  v5[21] = v16;
  v5[22] = *(v16 + 64);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v17 = sub_26B9ABF24();
  v5[25] = v17;
  v18 = *(v17 - 8);
  v5[26] = v18;
  v19 = *(v18 + 64) + 15;
  v5[27] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426350, &unk_26B9B0D20);
  v5[28] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v22 = sub_26B9ABEB4();
  v5[30] = v22;
  v23 = *(v22 - 8);
  v5[31] = v23;
  v24 = *(v23 + 64) + 15;
  v5[32] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260F0, &qword_26B9B0D10) - 8) + 64) + 15;
  v5[33] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262C8, &qword_26B9B3CE0) - 8) + 64) + 15;
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426358, &qword_26B9B39D0) - 8) + 64) + 15;
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B912F58, 0, 0);
}

uint64_t sub_26B912F58()
{
  v1 = v0[38];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[30];
  v5 = v0[31];
  v6 = v0[6];
  v8 = v0[2];
  v7 = v0[3];
  v9 = sub_26B9ABE84();
  v0[39] = v9;
  v10 = *(v9 - 8);
  v0[40] = v10;
  (*(v10 + 56))(v8, 1, 1, v9);
  v11 = static ToolKitUtilities.entityDefinition(for:)(v7, v1);
  MEMORY[0x26D685FA0](v11);
  sub_26B97BCE4(v2);
  (*(v5 + 8))(v3, v4);
  v12 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier();
  if ((*(*(v12 - 8) + 48))(v2, 1, v12) == 1)
  {
    sub_26B8EACD8(v0[33], &qword_2804260F0, &qword_26B9B0D10);
    v13 = 1;
  }

  else
  {
    v14 = v0[33];
    (*(v0[26] + 16))(v0[36], v14, v0[25]);
    sub_26B904420(v14);
    v13 = 0;
  }

  v15 = v0[35];
  v16 = v0[36];
  v17 = v0[29];
  v122 = v0[28];
  v19 = v0[25];
  v18 = v0[26];
  v20 = v18[7];
  v20(v16, v13, 1, v19);
  v21 = sub_26B9ABF04();
  v22 = swift_allocBox();
  v116 = *MEMORY[0x277D72CC0];
  v119 = v21;
  v114 = *(*(v21 - 8) + 104);
  v114(v23);
  *v15 = v22;
  v110 = *MEMORY[0x277D72D50];
  v108 = v18[13];
  v108(v15);
  v20(v15, 0, 1, v19);
  v24 = *(v122 + 48);
  sub_26B9236E8(v16, v17, &qword_2804262C8, &qword_26B9B3CE0);
  sub_26B9236E8(v15, v17 + v24, &qword_2804262C8, &qword_26B9B3CE0);
  v25 = v18[6];
  if (v25(v17, 1, v19) == 1)
  {
    v26 = v0[36];
    v27 = v0[25];
    sub_26B8EACD8(v0[35], &qword_2804262C8, &qword_26B9B3CE0);
    sub_26B8EACD8(v26, &qword_2804262C8, &qword_26B9B3CE0);
    if (v25(v17 + v24, 1, v27) == 1)
    {
      sub_26B8EACD8(v0[29], &qword_2804262C8, &qword_26B9B3CE0);
      v28 = 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v29 = v0[25];
  sub_26B9236E8(v0[29], v0[34], &qword_2804262C8, &qword_26B9B3CE0);
  v30 = v25(v17 + v24, 1, v29);
  v32 = v0[35];
  v31 = v0[36];
  v33 = v0[34];
  if (v30 == 1)
  {
    v35 = v0[25];
    v34 = v0[26];
    sub_26B8EACD8(v0[35], &qword_2804262C8, &qword_26B9B3CE0);
    sub_26B8EACD8(v31, &qword_2804262C8, &qword_26B9B3CE0);
    (*(v34 + 8))(v33, v35);
LABEL_9:
    sub_26B8EACD8(v0[29], &qword_280426350, &unk_26B9B0D20);
    v28 = 0;
    goto LABEL_11;
  }

  v123 = v0[29];
  v36 = v0[26];
  v37 = v0[27];
  v38 = v0[25];
  (*(v36 + 32))(v37, v17 + v24, v38);
  sub_26B92349C(&qword_2804262F8, MEMORY[0x277D72D58]);
  v28 = sub_26B9AC494();
  v39 = *(v36 + 8);
  v39(v37, v38);
  sub_26B8EACD8(v32, &qword_2804262C8, &qword_26B9B3CE0);
  sub_26B8EACD8(v31, &qword_2804262C8, &qword_26B9B3CE0);
  v39(v33, v38);
  sub_26B8EACD8(v123, &qword_2804262C8, &qword_26B9B3CE0);
LABEL_11:
  v40 = v0[24];
  v41 = v0[19];
  v43 = v0[4];
  v42 = v0[5];
  (*(v0[26] + 16))(v0[27], v0[3], v0[25]);
  v44 = sub_26B9AC1D4();
  (*(*(v44 - 8) + 56))(v41, 1, 1, v44);

  sub_26B9ABCE4();
  if (v28)
  {
    v45 = v0[37];
    v47 = v0[16];
    v46 = v0[17];
    sub_26B9236E8(v0[38], v45, &qword_280426358, &qword_26B9B39D0);
    v48 = (*(v46 + 48))(v45, 1, v47);
    v49 = v0[37];
    if (v48 == 1)
    {
      sub_26B8EACD8(v0[37], &qword_280426358, &qword_26B9B39D0);
    }

    else
    {
      v50 = v0[15];
      v52 = v0[13];
      v51 = v0[14];
      (*(v0[17] + 32))(v0[18], v0[37], v0[16]);
      (*(v51 + 104))(v50, *MEMORY[0x277D73008], v52);
      v53 = sub_26B9ABF84();
      (*(v51 + 8))(v50, v52);
      if (v53)
      {
        v54 = v0[30];
        v55 = v0[31];
        v56 = v0[25];
        v102 = v0[23];
        v103 = v0[24];
        v57 = v0[21];
        v101 = v0[20];
        v58 = v0[10];
        v106 = v0[22];
        v107 = v0[8];
        v104 = v0[9];
        v105 = v0[7];
        v59 = swift_allocBox();
        v61 = v60;
        v62 = swift_allocBox();
        (v114)(v63, v116, v119);
        *v61 = v62;
        (v108)(v61, v110, v56);
        *v58 = v59;
        (*(v55 + 104))(v58, *MEMORY[0x277D72AD0], v54);
        (*(v55 + 56))(v58, 0, 1, v54);
        (*(v57 + 16))(v102, v103, v101);
        sub_26B9236E8(v58, v104, &qword_2804262A8, &qword_26B9B09B0);
        v64 = (*(v57 + 80) + 16) & ~*(v57 + 80);
        v65 = (v106 + *(v105 + 80) + v64) & ~*(v105 + 80);
        v66 = swift_allocObject();
        v0[41] = v66;
        (*(v57 + 32))(v66 + v64, v102, v101);
        sub_26B923680(v104, v66 + v65, &qword_2804262A8, &qword_26B9B09B0);
        v67 = swift_task_alloc();
        v0[42] = v67;
        *v67 = v0;
        v67[1] = sub_26B913B3C;
        v68 = v0[12];
        v69 = &unk_26B9B0D38;
        v70 = v66;
LABEL_19:

        return (sub_26B91C22C)(v68, 0xD000000000000029, 0x800000026B9B7D40, v69, v70);
      }

      (*(v0[17] + 8))(v0[18], v0[16]);
    }
  }

  v71 = v0[39];
  v72 = v0[40];
  v73 = v0[11];
  sub_26B9236E8(v0[2], v73, &qword_2804260C8, &qword_26B9B0050);
  if ((*(v72 + 48))(v73, 1, v71) == 1)
  {
    v74 = v0[30];
    v75 = v0[31];
    v76 = v0[23];
    v77 = v0[24];
    v78 = v0[21];
    v117 = v0[22];
    v79 = v0[20];
    v80 = v0[10];
    v81 = v0[9];
    v120 = v0[8];
    v82 = v0[7];
    sub_26B8EACD8(v0[11], &qword_2804260C8, &qword_26B9B0050);
    (*(v75 + 56))(v80, 1, 1, v74);
    (*(v78 + 16))(v76, v77, v79);
    sub_26B9236E8(v80, v81, &qword_2804262A8, &qword_26B9B09B0);
    v83 = (*(v78 + 80) + 16) & ~*(v78 + 80);
    v84 = (v117 + *(v82 + 80) + v83) & ~*(v82 + 80);
    v85 = swift_allocObject();
    v0[43] = v85;
    (*(v78 + 32))(v85 + v83, v76, v79);
    sub_26B923680(v81, v85 + v84, &qword_2804262A8, &qword_26B9B09B0);
    v86 = swift_task_alloc();
    v0[44] = v86;
    *v86 = v0;
    v86[1] = sub_26B914074;
    v68 = v0[12];
    v69 = &unk_26B9B0D30;
    v70 = v85;
    goto LABEL_19;
  }

  v88 = v0[38];
  v89 = v0[11];
  (*(v0[21] + 8))(v0[24], v0[20]);
  sub_26B8EACD8(v88, &qword_280426358, &qword_26B9B39D0);
  sub_26B8EACD8(v89, &qword_2804260C8, &qword_26B9B0050);
  v91 = v0[37];
  v90 = v0[38];
  v93 = v0[35];
  v92 = v0[36];
  v95 = v0[33];
  v94 = v0[34];
  v96 = v0[32];
  v97 = v0[29];
  v98 = v0[27];
  v99 = v0[24];
  v109 = v0[23];
  v111 = v0[19];
  v112 = v0[18];
  v113 = v0[15];
  v115 = v0[12];
  v118 = v0[11];
  v121 = v0[10];
  v124 = v0[9];

  v100 = v0[1];

  return v100();
}

uint64_t sub_26B913B3C()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 80);
  v5 = *v0;

  sub_26B8EACD8(v3, &qword_2804262A8, &qword_26B9B09B0);

  return MEMORY[0x2822009F8](sub_26B913C80, 0, 0);
}

uint64_t sub_26B913C80()
{
  v1 = v0[12];
  v2 = v0[2];
  (*(v0[17] + 8))(v0[18], v0[16]);
  sub_26B8EACD8(v2, &qword_2804260C8, &qword_26B9B0050);
  sub_26B923680(v1, v2, &qword_2804260C8, &qword_26B9B0050);
  v3 = v0[39];
  v4 = v0[40];
  v5 = v0[11];
  sub_26B9236E8(v0[2], v5, &qword_2804260C8, &qword_26B9B0050);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v6 = v0[30];
    v7 = v0[31];
    v8 = v0[23];
    v9 = v0[24];
    v10 = v0[21];
    v11 = v0[20];
    v12 = v0[10];
    v13 = v0[9];
    v39 = v0[22];
    v41 = v0[8];
    v14 = v0[7];
    sub_26B8EACD8(v0[11], &qword_2804260C8, &qword_26B9B0050);
    (*(v7 + 56))(v12, 1, 1, v6);
    (*(v10 + 16))(v8, v9, v11);
    sub_26B9236E8(v12, v13, &qword_2804262A8, &qword_26B9B09B0);
    v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v16 = (v39 + *(v14 + 80) + v15) & ~*(v14 + 80);
    v17 = swift_allocObject();
    v0[43] = v17;
    (*(v10 + 32))(v17 + v15, v8, v11);
    sub_26B923680(v13, v17 + v16, &qword_2804262A8, &qword_26B9B09B0);
    v18 = swift_task_alloc();
    v0[44] = v18;
    *v18 = v0;
    v18[1] = sub_26B914074;
    v19 = v0[12];

    return (sub_26B91C22C)(v19, 0xD000000000000029, 0x800000026B9B7D40, &unk_26B9B0D30, v17);
  }

  else
  {
    v21 = v0[38];
    v22 = v0[11];
    (*(v0[21] + 8))(v0[24], v0[20]);
    sub_26B8EACD8(v21, &qword_280426358, &qword_26B9B39D0);
    sub_26B8EACD8(v22, &qword_2804260C8, &qword_26B9B0050);
    v24 = v0[37];
    v23 = v0[38];
    v26 = v0[35];
    v25 = v0[36];
    v28 = v0[33];
    v27 = v0[34];
    v29 = v0[32];
    v30 = v0[29];
    v31 = v0[27];
    v32 = v0[24];
    v34 = v0[23];
    v35 = v0[19];
    v36 = v0[18];
    v37 = v0[15];
    v38 = v0[12];
    v40 = v0[11];
    v42 = v0[10];
    v43 = v0[9];

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_26B914074()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 80);
  v5 = *v0;

  sub_26B8EACD8(v3, &qword_2804262A8, &qword_26B9B09B0);

  return MEMORY[0x2822009F8](sub_26B9141B8, 0, 0);
}

uint64_t sub_26B9141B8()
{
  v1 = v0[38];
  v2 = v0[12];
  v3 = v0[2];
  (*(v0[21] + 8))(v0[24], v0[20]);
  sub_26B8EACD8(v1, &qword_280426358, &qword_26B9B39D0);
  sub_26B8EACD8(v3, &qword_2804260C8, &qword_26B9B0050);
  sub_26B923680(v2, v3, &qword_2804260C8, &qword_26B9B0050);
  v5 = v0[37];
  v4 = v0[38];
  v7 = v0[35];
  v6 = v0[36];
  v9 = v0[33];
  v8 = v0[34];
  v10 = v0[32];
  v11 = v0[29];
  v12 = v0[27];
  v13 = v0[24];
  v16 = v0[23];
  v17 = v0[19];
  v18 = v0[18];
  v19 = v0[15];
  v20 = v0[12];
  v21 = v0[11];
  v22 = v0[10];
  v23 = v0[9];

  v14 = v0[1];

  return v14();
}

uint64_t static ToolKitUtilities.resolve(entityIdentifier:expectedType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A8, &qword_26B9B09B0) - 8);
  v3[5] = v4;
  v3[6] = *(v4 + 64);
  v3[7] = swift_task_alloc();
  v5 = sub_26B9ABD04();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v3[10] = *(v6 + 64);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B9144A0, 0, 0);
}

uint64_t sub_26B9144A0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  (*(v4 + 16))(v1, v0[3], v3);
  sub_26B9236E8(v7, v5, &qword_2804262A8, &qword_26B9B09B0);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = (v2 + *(v8 + 80) + v9) & ~*(v8 + 80);
  v11 = swift_allocObject();
  v0[12] = v11;
  (*(v4 + 32))(v11 + v9, v1, v3);
  sub_26B923680(v5, v11 + v10, &qword_2804262A8, &qword_26B9B09B0);
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_26B91465C;
  v13 = v0[2];

  return sub_26B91C22C(v13, 0xD000000000000029, 0x800000026B9B7D40, &unk_26B9B09C0, v11);
}

uint64_t sub_26B91465C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 56);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5();
}

uint64_t static ToolKitUtilities.needsToolConfiguration(for:previousParameterKeys:invocationMayHaveInitialQuickKeyParameterization:fetchDefaultValues:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v4 + 209) = a4;
  *(v4 + 208) = a3;
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  v5 = sub_26B9AB584();
  *(v4 + 80) = v5;
  v6 = *(v5 - 8);
  *(v4 + 88) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  v8 = sub_26B9AB984();
  *(v4 + 104) = v8;
  v9 = *(v8 - 8);
  *(v4 + 112) = v9;
  *(v4 + 120) = *(v9 + 64);
  *(v4 + 128) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262B0, &qword_26B9B09D8) - 8) + 64) + 15;
  *(v4 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B914910, 0, 0);
}

uint64_t sub_26B914910()
{
  KeyPath = swift_getKeyPath();
  Dependency.init(_:)(KeyPath, v0 + 7);
  v9 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426258, &qword_26B9B0920);
  Dependency.wrappedValue.getter((v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_26B914A70;

  return v8(v2, v3);
}

uint64_t sub_26B914A70(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 144);
  v7 = *v3;
  v5[19] = a1;
  v5[20] = v2;

  if (v2)
  {
    v8 = sub_26B915040;
  }

  else
  {
    v5[21] = a2;
    v8 = sub_26B914B98;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26B914B98()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 209);
  v7 = *(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  ObjectType = swift_getObjectType();
  (*(v5 + 16))(v2, v7, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v0 + 176) = v10;
  (*(v5 + 32))(v10 + v9, v2, v4);
  *(v10 + v9 + v3) = v6;
  v11 = *(MEMORY[0x277D726A0] + 4);
  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  v13 = sub_26B9ABB24();
  *v12 = v0;
  v12[1] = sub_26B914D0C;
  v14 = *(v0 + 168);
  v15 = *(v0 + 152);
  v16 = *(v0 + 136);

  return MEMORY[0x2821DAB50](v16, &unk_26B9B09E8, v10, v13, ObjectType, v14);
}

uint64_t sub_26B914D0C()
{
  v2 = *(*v1 + 184);
  v3 = *v1;
  *(v3 + 192) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26B91520C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 176);

    v5 = swift_task_alloc();
    *(v3 + 200) = v5;
    *v5 = v3;
    v5[1] = sub_26B914E8C;
    v6 = *(v3 + 136);
    v7 = *(v3 + 208);
    v8 = *(v3 + 72);
    v9 = *(v3 + 64);

    return static ToolKitUtilities.needsToolConfiguration(for:toolInvocationSummary:previousParameterKeys:invocationMayHaveInitialQuickKeyParameterization:)(v9, v6, v8, v7);
  }
}

uint64_t sub_26B914E8C(char a1)
{
  v2 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 210) = a1;

  return MEMORY[0x2822009F8](sub_26B914F8C, 0, 0);
}

uint64_t sub_26B914F8C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  swift_unknownObjectRelease();
  sub_26B8EACD8(v2, &qword_2804262B0, &qword_26B9B09D8);
  v3 = *(v0 + 210);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 96);
  v7 = *(v0 + 56);

  v8 = *(v0 + 8);

  return v8(v3);
}

uint64_t sub_26B915040()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[20];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = sub_26B9A75D0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_26B9AB564();
  v8 = sub_26B9AC934();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_26B8E8000, v7, v8, "Failed to fetch parameter summary, unable to determine needsToolConfiguration: %@", v9, 0xCu);
    sub_26B8EACD8(v10, &qword_280426230, &unk_26B9B25F0);
    MEMORY[0x26D6879F0](v10, -1, -1);
    MEMORY[0x26D6879F0](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[11] + 8))(v0[12], v0[10]);
  v13 = v0[16];
  v14 = v0[17];
  v15 = v0[12];
  v16 = v0[7];

  v17 = v0[1];

  return v17(1);
}

uint64_t sub_26B91520C()
{
  v1 = v0[22];
  v2 = v0[19];
  swift_unknownObjectRelease();

  v3 = v0[24];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v7 = sub_26B9A75D0();
  (*(v5 + 16))(v4, v7, v6);
  v8 = v3;
  v9 = sub_26B9AB564();
  v10 = sub_26B9AC934();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v3;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_26B8E8000, v9, v10, "Failed to fetch parameter summary, unable to determine needsToolConfiguration: %@", v11, 0xCu);
    sub_26B8EACD8(v12, &qword_280426230, &unk_26B9B25F0);
    MEMORY[0x26D6879F0](v12, -1, -1);
    MEMORY[0x26D6879F0](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[11] + 8))(v0[12], v0[10]);
  v15 = v0[16];
  v16 = v0[17];
  v17 = v0[12];
  v18 = v0[7];

  v19 = v0[1];

  return v19(1);
}

uint64_t sub_26B9153E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 64) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_26B91540C, 0, 0);
}

uint64_t sub_26B91540C()
{
  v1 = *(v0 + 24);
  v2 = sub_26B9AB9A4();
  v4 = v3;
  *(v0 + 40) = v2;
  ObjectType = swift_getObjectType();
  v6 = *(MEMORY[0x277D724F0] + 4);
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_26B9154D8;
  v8 = *(v0 + 64);
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);

  return MEMORY[0x2821DAA20](v10, v9, v8, ObjectType, v4);
}

uint64_t sub_26B9154D8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_26B915694;
  }

  else
  {
    v5 = *(v2 + 40);
    swift_unknownObjectRelease();
    v4 = sub_26B9155F4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26B9155F4()
{
  v1 = *(v0 + 16);
  v2 = sub_26B9ABB24();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26B915694()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t static ToolKitUtilities.needsToolConfiguration(for:toolInvocationSummary:previousParameterKeys:invocationMayHaveInitialQuickKeyParameterization:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = sub_26B9AC0E4();
  v4[2] = v9;
  v10 = *(v9 - 8);
  v4[3] = v10;
  v11 = *(v10 + 64) + 15;
  v4[4] = swift_task_alloc();
  v12 = sub_26B9AB584();
  v4[5] = v12;
  v13 = *(v12 - 8);
  v4[6] = v13;
  v14 = *(v13 + 64) + 15;
  v4[7] = swift_task_alloc();
  v15 = swift_task_alloc();
  v4[8] = v15;
  *v15 = v4;
  v15[1] = sub_26B915864;

  return static ToolKitUtilities.resolveUnsatisfiedParameters(for:toolInvocationSummary:previousParameterKeys:invocationMayHaveInitialQuickKeyParameterization:)(a1, a2, a3, a4);
}

uint64_t sub_26B915864(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_26B915964, 0, 0);
}

uint64_t sub_26B915964()
{
  v45 = v0;
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[3];
    v44 = MEMORY[0x277D84F90];
    sub_26B921238(0, v2, 0);
    v4 = v44;
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v40 = *(v3 + 56);
    v41 = v5;
    v43 = v0;
    v7 = (v3 - 8);
    v39 = v2;
    do
    {
      v8 = v0[4];
      v9 = v0[2];
      v41(v8, v6, v9);
      v10 = sub_26B9AC0B4();
      v12 = v11;
      (*v7)(v8, v9);
      v44 = v4;
      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_26B921238((v13 > 1), v14 + 1, 1);
        v4 = v44;
      }

      *(v4 + 16) = v14 + 1;
      v15 = v4 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v6 += v40;
      --v2;
      v0 = v43;
    }

    while (v2);
    v16 = v43[9];
    v17 = v43[6];
    v18 = v43[7];
    v19 = v43[5];

    v20 = sub_26B9A77DC();
    (*(v17 + 16))(v18, v20, v19);

    v21 = sub_26B9AB564();
    v22 = sub_26B9AC914();

    v23 = os_log_type_enabled(v21, v22);
    v25 = v43[6];
    v24 = v43[7];
    v26 = v43[5];
    if (v23)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v44 = v28;
      *v27 = 136315138;
      v29 = MEMORY[0x26D6865D0](v4, MEMORY[0x277D837D0]);
      v42 = v26;
      v31 = v30;

      v32 = sub_26B91FC00(v29, v31, &v44);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_26B8E8000, v21, v22, "Tool not ready: required parameters [%s] are not fulfilled!", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x26D6879F0](v28, -1, -1);
      v0 = v43;
      MEMORY[0x26D6879F0](v27, -1, -1);

      (*(v25 + 8))(v24, v42);
    }

    else
    {

      (*(v25 + 8))(v24, v26);
    }

    v2 = v39;
  }

  else
  {
    v33 = v0[9];
  }

  v34 = v2 != 0;
  v35 = v0[7];
  v36 = v0[4];

  v37 = v0[1];

  return v37(v34);
}

uint64_t static ToolKitUtilities.resolveUnsatisfiedParameters(for:toolInvocationSummary:previousParameterKeys:invocationMayHaveInitialQuickKeyParameterization:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 208) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  v5 = sub_26B9AC064();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  v8 = sub_26B9AC0E4();
  *(v4 + 72) = v8;
  v9 = *(v8 - 8);
  *(v4 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  v11 = sub_26B9AB914();
  *(v4 + 120) = v11;
  v12 = *(v11 - 8);
  *(v4 + 128) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  v14 = sub_26B9AB584();
  *(v4 + 152) = v14;
  v15 = *(v14 - 8);
  *(v4 + 160) = v15;
  v16 = *(v15 + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262B0, &qword_26B9B09D8) - 8) + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  v18 = sub_26B9ABB24();
  *(v4 + 184) = v18;
  v19 = *(v18 - 8);
  *(v4 + 192) = v19;
  v20 = *(v19 + 64) + 15;
  *(v4 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B915F18, 0, 0);
}

uint64_t sub_26B915F18()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  sub_26B9236E8(*(v0 + 24), v3, &qword_2804262B0, &qword_26B9B09D8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26B8EACD8(*(v0 + 176), &qword_2804262B0, &qword_26B9B09D8);
    v4 = MEMORY[0x277D84FA0];
  }

  else
  {
    v5 = *(v0 + 192);
    v6 = *(v0 + 200);
    v7 = *(v0 + 184);
    (*(v5 + 32))(v6, *(v0 + 176), v7);
    v8 = sub_26B9176A0();
    v4 = sub_26B9226D4(v8);

    (*(v5 + 8))(v6, v7);
  }

  v9 = *(v0 + 32);
  v92 = v4;
  if (!v9 || !*(v9 + 16))
  {
    goto LABEL_8;
  }

  v10 = sub_26B91F3B4(v9, v4);

  if (v10)
  {

LABEL_8:
    v11 = *(v0 + 128);
    v12 = *(v0 + 136);
    v13 = *(v0 + 120);
    v14 = *(v0 + 16);
    sub_26B9AB934();
    v15 = sub_26B9AB8B4();
    (*(v11 + 8))(v12, v13);
    result = v15;
    v98 = *(v15 + 16);
    if (v98)
    {
      v17 = 0;
      v18 = *(v0 + 80);
      v19 = (*(v0 + 48) + 8);
      v93 = (v18 + 32);
      v94 = MEMORY[0x277D84F90];
      v96 = v15;
      while (v17 < *(result + 16))
      {
        v20 = *(v0 + 64);
        v21 = *(v0 + 56);
        v22 = *(v0 + 40);
        v102 = (*(v18 + 80) + 32) & ~*(v18 + 80);
        v100 = *(v18 + 72);
        (*(v18 + 16))(*(v0 + 96), result + v102 + v100 * v17, *(v0 + 72));
        sub_26B9AC0C4();
        sub_26B9AC044();
        sub_26B92349C(&qword_2804262B8, MEMORY[0x277D73128]);
        v23 = sub_26B9ACAE4();
        v24 = *v19;
        (*v19)(v21, v22);
        v24(v20, v22);
        if (v23)
        {
          goto LABEL_10;
        }

        v25 = *(v0 + 96);
        v27 = *(v0 + 56);
        v26 = *(v0 + 64);
        v28 = *(v0 + 40);
        sub_26B9AC0C4();
        sub_26B9AC054();
        LOBYTE(v25) = sub_26B9ACAE4();
        v24(v27, v28);
        v24(v26, v28);
        if (v25)
        {
LABEL_10:
          (*(v18 + 8))(*(v0 + 96), *(v0 + 72));
        }

        else
        {
          v29 = *v93;
          (*v93)(*(v0 + 88), *(v0 + 96), *(v0 + 72));
          v30 = v94;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26B921218(0, *(v94 + 16) + 1, 1);
            v30 = v94;
          }

          v32 = *(v30 + 16);
          v31 = *(v30 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_26B921218(v31 > 1, v32 + 1, 1);
            v30 = v94;
          }

          v33 = *(v0 + 88);
          v34 = *(v0 + 72);
          *(v30 + 16) = v32 + 1;
          v94 = v30;
          v29(v30 + v102 + v32 * v100, v33, v34);
        }

        ++v17;
        result = v96;
        if (v98 == v17)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
      return result;
    }

    v94 = MEMORY[0x277D84F90];
LABEL_21:
    v35 = *(v0 + 208);
    v36 = *(v0 + 16);

    v37 = swift_task_alloc();
    *(v37 + 16) = v36;
    *(v37 + 24) = v92;
    *(v37 + 32) = v35;
    v99 = sub_26B917ADC(sub_26B9226A0, v37, v94);

    goto LABEL_22;
  }

  v49 = *(v0 + 160);
  v50 = *(v0 + 168);
  v51 = *(v0 + 152);
  v52 = sub_26B9A77DC();
  (*(v49 + 16))(v50, v52, v51);
  v53 = sub_26B9AB564();
  v54 = sub_26B9AC924();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_26B8E8000, v53, v54, "Tool not ready, previous parameters and current are different!", v55, 2u);
    MEMORY[0x26D6879F0](v55, -1, -1);
  }

  v56 = *(v0 + 160);
  v57 = *(v0 + 168);
  v59 = *(v0 + 144);
  v58 = *(v0 + 152);
  v60 = *(v0 + 120);
  v61 = *(v0 + 128);
  v62 = *(v0 + 16);

  (*(v56 + 8))(v57, v58);
  sub_26B921030(v9);
  sub_26B9AB934();
  v63 = sub_26B9AB8B4();
  result = (*(v61 + 8))(v59, v60);
  v101 = *(v63 + 16);
  if (v101)
  {
    v64 = 0;
    v65 = *(v0 + 80);
    v66 = v92 + 56;
    v95 = (v65 + 32);
    v97 = v63;
    v99 = MEMORY[0x277D84F90];
    while (v64 < *(v63 + 16))
    {
      v104 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v69 = v63 + v104;
      v70 = *(v65 + 72);
      (*(v65 + 16))(*(v0 + 112), v69 + v70 * v64, *(v0 + 72));
      v71 = sub_26B9AC0B4();
      v73 = v72;
      if (*(v92 + 16) && (v74 = v71, v75 = *(v92 + 40), sub_26B9ACFB4(), sub_26B9AC574(), v76 = sub_26B9ACFF4(), v77 = -1 << *(v92 + 32), v78 = v76 & ~v77, ((*(v66 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) != 0))
      {
        v79 = ~v77;
        while (1)
        {
          v80 = (*(v92 + 48) + 16 * v78);
          v81 = *v80 == v74 && v80[1] == v73;
          if (v81 || (sub_26B9ACEB4() & 1) != 0)
          {
            break;
          }

          v78 = (v78 + 1) & v79;
          if (((*(v66 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        v83 = *(v0 + 104);
        v82 = *(v0 + 112);
        v84 = *(v0 + 72);

        v85 = v84;
        v86 = *v95;
        (*v95)(v83, v82, v85);
        v87 = v99;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26B921218(0, *(v99 + 16) + 1, 1);
          v87 = v99;
        }

        v89 = *(v87 + 16);
        v88 = *(v87 + 24);
        if (v89 >= v88 >> 1)
        {
          sub_26B921218(v88 > 1, v89 + 1, 1);
          v87 = v99;
        }

        v90 = *(v0 + 104);
        v91 = *(v0 + 72);
        *(v87 + 16) = v89 + 1;
        v99 = v87;
        result = v86(v87 + v104 + v89 * v70, v90, v91);
      }

      else
      {
LABEL_29:
        v67 = *(v0 + 112);
        v68 = *(v0 + 72);

        result = (*(v65 + 8))(v67, v68);
      }

      ++v64;
      v63 = v97;
      if (v64 == v101)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_50;
  }

  v99 = MEMORY[0x277D84F90];
LABEL_48:

LABEL_22:
  v38 = *(v0 + 200);
  v39 = *(v0 + 168);
  v40 = *(v0 + 176);
  v42 = *(v0 + 136);
  v41 = *(v0 + 144);
  v44 = *(v0 + 104);
  v43 = *(v0 + 112);
  v46 = *(v0 + 88);
  v45 = *(v0 + 96);
  v47 = *(v0 + 64);
  v103 = *(v0 + 56);

  v48 = *(v0 + 8);

  return v48(v99);
}

uint64_t static ToolKitUtilities.resolveUnsatisfiedParameters(for:previousParameterKeys:invocationMayHaveInitialQuickKeyParameterization:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 240) = a3;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  v4 = sub_26B9AB914();
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v7 = sub_26B9AB584();
  *(v3 + 104) = v7;
  v8 = *(v7 - 8);
  *(v3 + 112) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v10 = sub_26B9AB984();
  *(v3 + 128) = v10;
  v11 = *(v10 - 8);
  *(v3 + 136) = v11;
  *(v3 + 144) = *(v11 + 64);
  *(v3 + 152) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262B0, &qword_26B9B09D8) - 8) + 64) + 15;
  *(v3 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B91692C, 0, 0);
}

uint64_t sub_26B91692C()
{
  KeyPath = swift_getKeyPath();
  Dependency.init(_:)(KeyPath, v0 + 7);
  v9 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426258, &qword_26B9B0920);
  Dependency.wrappedValue.getter((v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_26B916A8C;

  return v8(v2, v3);
}

uint64_t sub_26B916A8C(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 168);
  v7 = *v3;
  v5[22] = a1;
  v5[23] = v2;

  if (v2)
  {
    v8 = sub_26B917064;
  }

  else
  {
    v5[24] = a2;
    v8 = sub_26B916BB4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26B916BB4()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[8];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  ObjectType = swift_getObjectType();
  (*(v5 + 16))(v2, v6, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  v0[25] = v9;
  (*(v5 + 32))(v9 + v8, v2, v4);
  v10 = *(MEMORY[0x277D726A0] + 4);
  v11 = swift_task_alloc();
  v0[26] = v11;
  v12 = sub_26B9ABB24();
  *v11 = v0;
  v11[1] = sub_26B916D1C;
  v13 = v0[24];
  v14 = v0[22];
  v15 = v0[20];

  return MEMORY[0x2821DAB50](v15, &unk_26B9B0A10, v9, v12, ObjectType, v13);
}

uint64_t sub_26B916D1C()
{
  v2 = *(*v1 + 208);
  v3 = *v1;
  *(v3 + 216) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26B917278, 0, 0);
  }

  else
  {
    v4 = *(v3 + 200);

    v5 = swift_task_alloc();
    *(v3 + 224) = v5;
    *v5 = v3;
    v5[1] = sub_26B916E9C;
    v6 = *(v3 + 160);
    v7 = *(v3 + 240);
    v8 = *(v3 + 72);
    v9 = *(v3 + 64);

    return static ToolKitUtilities.resolveUnsatisfiedParameters(for:toolInvocationSummary:previousParameterKeys:invocationMayHaveInitialQuickKeyParameterization:)(v9, v6, v8, v7);
  }
}

uint64_t sub_26B916E9C(uint64_t a1)
{
  v2 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = a1;

  return MEMORY[0x2822009F8](sub_26B916F9C, 0, 0);
}

uint64_t sub_26B916F9C()
{
  v1 = v0[22];
  v2 = v0[20];
  swift_unknownObjectRelease();
  sub_26B8EACD8(v2, &qword_2804262B0, &qword_26B9B09D8);
  v3 = v0[29];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[15];
  v7 = v0[12];
  v8 = v0[7];

  v9 = v0[1];

  return v9(v3);
}

uint64_t sub_26B917064()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[23];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = sub_26B9A75D0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_26B9AB564();
  v8 = sub_26B9AC934();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_26B8E8000, v7, v8, "Failed to fetch parameter summary, unable to determine needsToolConfiguration: %@", v9, 0xCu);
    sub_26B8EACD8(v10, &qword_280426230, &unk_26B9B25F0);
    MEMORY[0x26D6879F0](v10, -1, -1);
    MEMORY[0x26D6879F0](v9, -1, -1);
  }

  v14 = v0[14];
  v13 = v0[15];
  v16 = v0[12];
  v15 = v0[13];
  v17 = v0[10];
  v18 = v0[11];
  v19 = v0[8];

  (*(v14 + 8))(v13, v15);
  sub_26B9AB934();
  v20 = sub_26B9AB8B4();

  (*(v18 + 8))(v16, v17);
  v22 = v0[19];
  v21 = v0[20];
  v23 = v0[15];
  v24 = v0[12];
  v25 = v0[7];

  v26 = v0[1];

  return v26(v20);
}

uint64_t sub_26B917278()
{
  v1 = v0[25];
  v2 = v0[22];
  swift_unknownObjectRelease();

  v3 = v0[27];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  v7 = sub_26B9A75D0();
  (*(v5 + 16))(v4, v7, v6);
  v8 = v3;
  v9 = sub_26B9AB564();
  v10 = sub_26B9AC934();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v3;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_26B8E8000, v9, v10, "Failed to fetch parameter summary, unable to determine needsToolConfiguration: %@", v11, 0xCu);
    sub_26B8EACD8(v12, &qword_280426230, &unk_26B9B25F0);
    MEMORY[0x26D6879F0](v12, -1, -1);
    MEMORY[0x26D6879F0](v11, -1, -1);
  }

  v16 = v0[14];
  v15 = v0[15];
  v18 = v0[12];
  v17 = v0[13];
  v19 = v0[10];
  v20 = v0[11];
  v21 = v0[8];

  (*(v16 + 8))(v15, v17);
  sub_26B9AB934();
  v22 = sub_26B9AB8B4();

  (*(v20 + 8))(v18, v19);
  v24 = v0[19];
  v23 = v0[20];
  v25 = v0[15];
  v26 = v0[12];
  v27 = v0[7];

  v28 = v0[1];

  return v28(v22);
}

uint64_t sub_26B917498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26B9174BC, 0, 0);
}

uint64_t sub_26B9174BC()
{
  v1 = v0[3];
  v2 = sub_26B9AB9A4();
  v4 = v3;
  v0[5] = v2;
  ObjectType = swift_getObjectType();
  v6 = *(MEMORY[0x277D724F8] + 4);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_26B917584;
  v8 = v0[4];
  v9 = v0[2];

  return MEMORY[0x2821DAA28](v9, v8, ObjectType, v4);
}

uint64_t sub_26B917584()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_26B9237C0;
  }

  else
  {
    v5 = *(v2 + 40);
    swift_unknownObjectRelease();
    v4 = sub_26B9237B4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26B9176A0()
{
  v0 = sub_26B9ABB14();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  result = sub_26B9ABAF4();
  v9 = result;
  v10 = *(result + 16);
  if (v10)
  {
    v11 = 0;
    v34 = v1 + 88;
    v33 = *MEMORY[0x277D72658];
    v12 = (v1 + 8);
    v30 = *MEMORY[0x277D72660];
    v32 = v10;
    v28 = v10 - 1;
    v29 = (v1 + 96);
    v31 = MEMORY[0x277D84F90];
    while (1)
    {
      v13 = v11;
      while (1)
      {
        if (v13 >= *(v9 + 16))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        v14 = *(v1 + 16);
        v14(v7, v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v13, v0);
        v11 = v13 + 1;
        v14(v5, v7, v0);
        result = (*(v1 + 88))(v5, v0);
        if (result != v33)
        {
          break;
        }

        v15 = *v12;
        (*v12)(v7, v0);
        result = (v15)(v5, v0);
        v13 = v11;
        if (v32 == v11)
        {
          goto LABEL_16;
        }
      }

      if (result != v30)
      {
        goto LABEL_18;
      }

      (*v12)(v7, v0);
      (*v29)(v5, v0);
      v16 = *v5;
      v26 = *(v5 + 1);
      v27 = v16;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262C0, &qword_26B9B0A18) + 48);
      v18 = sub_26B9ABB04();
      (*(*(v18 - 8) + 8))(&v5[v17], v18);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26B91F91C(0, *(v31 + 2) + 1, 1, v31);
        v31 = result;
      }

      v20 = *(v31 + 2);
      v19 = *(v31 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v25 = v20 + 1;
        result = sub_26B91F91C((v19 > 1), v20 + 1, 1, v31);
        v21 = v25;
        v31 = result;
      }

      v22 = v31;
      *(v31 + 2) = v21;
      v23 = &v22[16 * v20];
      v24 = v26;
      *(v23 + 4) = v27;
      *(v23 + 5) = v24;
      if (v28 == v13)
      {
        goto LABEL_16;
      }
    }
  }

  v31 = MEMORY[0x277D84F90];
LABEL_16:

  return v31;
}

uint64_t sub_26B9179E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_26B9ACFB4();
  sub_26B9AC574();
  v7 = sub_26B9ACFF4();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_26B9ACEB4() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_26B917ADC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = sub_26B9AC0E4();
  v7 = *(*(v40 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x277D84F90];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26B921218(0, *(v24 + 16) + 1, 1);
          v24 = v41;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_26B921218(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        *(v24 + 16) = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
LABEL_14:

    return v38;
  }

  return result;
}

uint64_t sub_26B917DAC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v72 = a4;
  v73 = a3;
  v5 = sub_26B9ABE44();
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = *(v68 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26B9ABEB4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260F0, &qword_26B9B0D10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v66 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426328, &unk_26B9B0CF0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v70 = (&v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v23 = &v66 - v22;
  v24 = sub_26B9AB954();
  v25 = sub_26B9AC0B4();
  if (*(v24 + 16))
  {
    v71 = a1;
    v27 = sub_26B9201A8(v25, v26);
    v29 = v28;

    if (v29)
    {
      v30 = *(v24 + 56);
      v31 = sub_26B9ABFB4();
      v32 = *(v31 - 8);
      v67 = v8;
      v33 = v23;
      v34 = v32;
      (*(v32 + 16))(v33, v30 + *(v32 + 72) * v27, v31);

      v35 = (*(v34 + 56))(v33, 0, 1, v31);
      v23 = v33;
      v8 = v67;
    }

    else
    {

      v37 = sub_26B9ABFB4();
      v35 = (*(*(v37 - 8) + 56))(v23, 1, 1, v37);
    }
  }

  else
  {

    v36 = sub_26B9ABFB4();
    v35 = (*(*(v36 - 8) + 56))(v23, 1, 1, v36);
  }

  v38 = v73;
  MEMORY[0x26D685FA0](v35);
  sub_26B97BCE4(v17);
  (*(v10 + 8))(v13, v9);
  v39 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier();
  if ((*(*(v39 - 8) + 48))(v17, 1, v39) == 1)
  {
    sub_26B8EACD8(v17, &qword_2804260F0, &qword_26B9B0D10);
  }

  else
  {
    v40 = *(v39 + 28);
    v41 = v23;
    v42 = v17[v40];
    sub_26B904420(v17);
    v43 = v42 == 1;
    v23 = v41;
    if (v43)
    {
      v44 = sub_26B9AC0B4();
      v46 = sub_26B9179E4(v44, v45, v38);

      if ((v46 & 1) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  v47 = sub_26B9AC0B4();
  v49 = sub_26B9179E4(v47, v48, v38);

  if ((v49 & 1) == 0)
  {
LABEL_16:
    v54 = 0;
    goto LABEL_17;
  }

  v50 = sub_26B9ABFB4();
  v51 = *(v50 - 8);
  v52 = *(v51 + 48);
  v53 = v52(v23, 1, v50);
  v54 = v53 == 1;
  if (v53 != 1 && (v72 & 1) != 0)
  {
    v55 = v70;
    sub_26B9236E8(v23, v70, &qword_280426328, &unk_26B9B0CF0);
    if (v52(v55, 1, v50) == 1)
    {
      sub_26B8EACD8(v55, &qword_280426328, &unk_26B9B0CF0);
      goto LABEL_16;
    }

    if ((*(v51 + 88))(v55, v50) == *MEMORY[0x277D72E38] && ((*(v51 + 96))(v55, v50), v50 = sub_26B9ABE84(), v51 = *(v50 - 8), (*(v51 + 88))(v55, v50) == *MEMORY[0x277D72A58]))
    {
      v57 = v23;
      (*(v51 + 96))(v55, v50);
      v58 = *v55;
      v59 = swift_projectBox();
      v60 = v68;
      v61 = v8;
      v62 = v8;
      v63 = v69;
      (*(v68 + 16))(v61, v59, v69);
      v64 = (*(v60 + 88))(v62, v63);
      v65 = *MEMORY[0x277D729B8];
      (*(v60 + 8))(v62, v63);

      if (v64 == v65)
      {
        v54 = sub_26B9229C4() ^ 1;
      }

      else
      {
        v54 = 0;
      }

      v23 = v57;
    }

    else
    {
      (*(v51 + 8))(v55, v50);
      v54 = 0;
    }
  }

LABEL_17:
  sub_26B8EACD8(v23, &qword_280426328, &unk_26B9B0CF0);
  return v54 & 1;
}

uint64_t sub_26B9184D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = sub_26B9ACB14();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    sub_26B921FB0(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = sub_26B9ABF24();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t static ToolKitUtilities.update(invocation:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426218, &qword_26B9B0890) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v5 = *(*(sub_26B9AB914() - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v7 = sub_26B9ABE84();
  v3[21] = v7;
  v8 = *(v7 - 8);
  v3[22] = v8;
  v9 = *(v8 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v10 = sub_26B9AB3A4();
  v3[27] = v10;
  v11 = *(v10 - 8);
  v3[28] = v11;
  v12 = *(v11 + 64) + 15;
  v3[29] = swift_task_alloc();
  v13 = sub_26B9AB984();
  v3[30] = v13;
  v14 = *(v13 - 8);
  v3[31] = v14;
  v15 = *(v14 + 64) + 15;
  v3[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B9187D8, 0, 0);
}

uint64_t sub_26B9187D8()
{
  v1 = *(v0 + 128);
  sub_26B91A830(*(v0 + 120), *(v0 + 256));
  v2 = sub_26B9AB954();
  v3 = sub_26B911480(v2);

  v4 = *(v1 + 16);
  *(v0 + 264) = v4;
  if (v4)
  {
    v5 = 0;
    v6 = *(v0 + 224);
    *(v0 + 472) = *(v6 + 80);
    *(v0 + 476) = *MEMORY[0x277D7D638];
    *(v0 + 480) = *MEMORY[0x277D7D630];
    *(v0 + 272) = *(v6 + 72);
    *(v0 + 280) = *(v6 + 16);
    while (1)
    {
      *(v0 + 296) = v5;
      *(v0 + 304) = v3;
      *(v0 + 288) = v3;
      v7 = *(v0 + 476);
      v9 = *(v0 + 224);
      v8 = *(v0 + 232);
      v10 = *(v0 + 216);
      (*(v0 + 280))(v8, *(v0 + 128) + ((*(v0 + 472) + 32) & ~*(v0 + 472)) + *(v0 + 272) * v5, v10);
      v11 = (*(v9 + 88))(v8, v10);
      if (v11 == v7)
      {
        break;
      }

      if (v11 == *(v0 + 480))
      {
        v34 = *(v0 + 232);
        (*(*(v0 + 224) + 96))(v34, *(v0 + 216));
        sub_26B8ECB70(v34, v0 + 16);
        v35 = *(v0 + 40);
        v36 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v35);
        v37 = *(MEMORY[0x277D7D5C8] + 4);
        v38 = swift_task_alloc();
        *(v0 + 392) = v38;
        *v38 = v0;
        v38[1] = sub_26B919938;
        v39 = *(v0 + 152);

        return MEMORY[0x2821E5150](v39, v35, v36);
      }

      (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
      v5 = *(v0 + 296) + 1;
      if (v5 == *(v0 + 264))
      {
        goto LABEL_6;
      }
    }

    v28 = *(v0 + 232);
    (*(*(v0 + 224) + 96))(v28, *(v0 + 216));
    sub_26B8ECB70(v28, v0 + 56);
    v29 = *(v0 + 80);
    v30 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v29);
    v31 = *(MEMORY[0x277D7D540] + 4);
    v32 = swift_task_alloc();
    *(v0 + 312) = v32;
    *v32 = v0;
    v32[1] = sub_26B918C48;
    v33 = *(v0 + 160);

    return MEMORY[0x2821E5078](v33, v29, v30);
  }

  else
  {
LABEL_6:
    v12 = *(v0 + 256);
    v14 = *(v0 + 136);
    v13 = *(v0 + 144);
    v15 = *(v0 + 112);
    sub_26B9AB934();
    sub_26B90D7EC(v3);

    sub_26B9AB974();
    sub_26B9AB924();
    v16 = *(v0 + 256);
    v17 = *(v0 + 240);
    v18 = *(v0 + 232);
    v20 = *(v0 + 200);
    v19 = *(v0 + 208);
    v22 = *(v0 + 184);
    v21 = *(v0 + 192);
    v24 = *(v0 + 152);
    v23 = *(v0 + 160);
    v25 = *(v0 + 144);
    v40 = *(v0 + 136);
    (*(*(v0 + 248) + 8))();

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_26B918C48()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v7 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = *(v2 + 304);

    v5 = sub_26B91A620;
  }

  else
  {
    v5 = sub_26B918D64;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26B918D64()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26B8EACD8(v3, &qword_2804260C8, &qword_26B9B0050);
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    v4 = *(v0 + 320);
    v5 = *(v0 + 304);
    v6 = *(v0 + 296) + 1;
    if (v6 == *(v0 + 264))
    {
LABEL_7:
      v13 = *(v0 + 256);
      v15 = *(v0 + 136);
      v14 = *(v0 + 144);
      v16 = *(v0 + 112);
      sub_26B9AB934();
      sub_26B90D7EC(v5);

      sub_26B9AB974();
      sub_26B9AB924();
      v17 = *(v0 + 248);
      if (v4)
      {
        (*(v17 + 8))(*(v0 + 256), *(v0 + 240));
        v18 = *(v0 + 256);
        v19 = *(v0 + 232);
        v21 = *(v0 + 200);
        v20 = *(v0 + 208);
        v23 = *(v0 + 184);
        v22 = *(v0 + 192);
        v25 = *(v0 + 152);
        v24 = *(v0 + 160);
        v26 = *(v0 + 144);
        v54 = *(v0 + 136);
      }

      else
      {
        v33 = *(v0 + 232);
        v35 = *(v0 + 200);
        v34 = *(v0 + 208);
        v37 = *(v0 + 184);
        v36 = *(v0 + 192);
        v39 = *(v0 + 152);
        v38 = *(v0 + 160);
        v40 = *(v0 + 144);
        v55 = *(v0 + 136);
        (*(v17 + 8))();
      }

      v27 = *(v0 + 8);

      return v27();
    }

    else
    {
      v7 = *(v0 + 288);
      while (1)
      {
        *(v0 + 296) = v6;
        *(v0 + 304) = v5;
        *(v0 + 288) = v7;
        v8 = *(v0 + 476);
        v10 = *(v0 + 224);
        v9 = *(v0 + 232);
        v11 = *(v0 + 216);
        (*(v0 + 280))(v9, *(v0 + 128) + ((*(v0 + 472) + 32) & ~*(v0 + 472)) + *(v0 + 272) * v6, v11);
        v12 = (*(v10 + 88))(v9, v11);
        if (v12 == v8)
        {
          break;
        }

        if (v12 == *(v0 + 480))
        {
          v47 = *(v0 + 232);
          (*(*(v0 + 224) + 96))(v47, *(v0 + 216));
          sub_26B8ECB70(v47, v0 + 16);
          v48 = *(v0 + 40);
          v49 = *(v0 + 48);
          __swift_project_boxed_opaque_existential_1((v0 + 16), v48);
          v50 = *(MEMORY[0x277D7D5C8] + 4);
          v51 = swift_task_alloc();
          *(v0 + 392) = v51;
          *v51 = v0;
          v51[1] = sub_26B919938;
          v52 = *(v0 + 152);

          return MEMORY[0x2821E5150](v52, v48, v49);
        }

        (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
        v6 = *(v0 + 296) + 1;
        if (v6 == *(v0 + 264))
        {
          goto LABEL_7;
        }
      }

      v41 = *(v0 + 232);
      (*(*(v0 + 224) + 96))(v41, *(v0 + 216));
      sub_26B8ECB70(v41, v0 + 56);
      v42 = *(v0 + 80);
      v43 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v42);
      v44 = *(MEMORY[0x277D7D540] + 4);
      v45 = swift_task_alloc();
      *(v0 + 312) = v45;
      *v45 = v0;
      v45[1] = sub_26B918C48;
      v46 = *(v0 + 160);

      return MEMORY[0x2821E5078](v46, v42, v43);
    }
  }

  else
  {
    v28 = *(v0 + 208);
    v29 = *(v2 + 32);
    *(v0 + 328) = v29;
    *(v0 + 336) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v29(v28, v3, v1);
    v30 = *(v0 + 80);
    *(v0 + 344) = v30;
    *(v0 + 360) = __swift_project_boxed_opaque_existential_1((v0 + 56), v30);
    sub_26B9AC804();
    *(v0 + 368) = sub_26B9AC7F4();
    v32 = sub_26B9AC7C4();

    return MEMORY[0x2822009F8](sub_26B919288, v32, v31);
  }
}

uint64_t sub_26B919288()
{
  v2 = v0[45];
  v1 = v0[46];
  v4 = v0[43];
  v3 = v0[44];

  v0[47] = sub_26B9AB2D4();
  v0[48] = v5;

  return MEMORY[0x2822009F8](sub_26B91930C, 0, 0);
}

uint64_t sub_26B91930C()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 288);
  (*(*(v0 + 176) + 16))(*(v0 + 200), *(v0 + 208), *(v0 + 168));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 104) = v3;
  v5 = sub_26B9201A8(v2, v1);
  v7 = *(v3 + 16);
  v8 = (v6 & 1) == 0;
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  LOBYTE(v2) = v6;
  if (*(*(v0 + 288) + 24) >= v10)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_11:
    v23 = v5;
    sub_26B920C58(MEMORY[0x277D72A78], &qword_280426318, &qword_26B9B0CE0);
    v5 = v23;
    v16 = *(v0 + 384);
    if (v2)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v12 = *(v0 + 376);
  v11 = *(v0 + 384);
  sub_26B9202D8(v10, isUniquelyReferenced_nonNull_native, MEMORY[0x277D72A78], &qword_280426318, &qword_26B9B0CE0);
  v13 = *(v0 + 104);
  v5 = sub_26B9201A8(v12, v11);
  if ((v2 & 1) != (v14 & 1))
  {

    return sub_26B9ACF24();
  }

LABEL_8:
  v16 = *(v0 + 384);
  if (v2)
  {
LABEL_9:
    v18 = *(v0 + 200);
    v17 = *(v0 + 208);
    v19 = *(v0 + 168);
    v20 = *(v0 + 176);
    v21 = v5;

    v22 = *(v0 + 104);
    (*(v20 + 40))(v22[7] + *(v20 + 72) * v21, v18, v19);
    (*(v20 + 8))(v17, v19);
    goto LABEL_14;
  }

LABEL_12:
  v24 = *(v0 + 376);
  v26 = *(v0 + 328);
  v25 = *(v0 + 336);
  v27 = *(v0 + 200);
  v28 = *(v0 + 208);
  v29 = *(v0 + 168);
  v30 = *(v0 + 176);
  v22 = *(v0 + 104);
  v22[(v5 >> 6) + 8] |= 1 << v5;
  v31 = (v22[6] + 16 * v5);
  *v31 = v24;
  v31[1] = v16;
  v26(v22[7] + *(v30 + 72) * v5, v27, v29);
  v32 = (*(v30 + 8))(v28, v29);
  v35 = v22[2];
  v9 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (v9)
  {
    __break(1u);
    return MEMORY[0x2821E5078](v32, v33, v34);
  }

  v22[2] = v36;
LABEL_14:
  v37 = (v0 + 56);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v38 = *(v0 + 320);
  while (1)
  {
    v39 = *(v0 + 296) + 1;
    if (v39 == *(v0 + 264))
    {
      break;
    }

    *(v0 + 296) = v39;
    *(v0 + 304) = v22;
    *(v0 + 288) = v22;
    v40 = *(v0 + 476);
    v42 = *(v0 + 224);
    v41 = *(v0 + 232);
    v43 = *(v0 + 216);
    (*(v0 + 280))(v41, *(v0 + 128) + ((*(v0 + 472) + 32) & ~*(v0 + 472)) + *(v0 + 272) * v39, v43);
    v44 = (*(v42 + 88))(v41, v43);
    if (v44 == v40)
    {
      v68 = *(v0 + 232);
      (*(*(v0 + 224) + 96))(v68, *(v0 + 216));
      sub_26B8ECB70(v68, v37);
      v69 = *(v0 + 80);
      v70 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1(v37, v69);
      v71 = *(MEMORY[0x277D7D540] + 4);
      v72 = swift_task_alloc();
      *(v0 + 312) = v72;
      *v72 = v0;
      v72[1] = sub_26B918C48;
      v32 = *(v0 + 160);
      v33 = v69;
      v34 = v70;

      return MEMORY[0x2821E5078](v32, v33, v34);
    }

    if (v44 == *(v0 + 480))
    {
      v73 = *(v0 + 232);
      (*(*(v0 + 224) + 96))(v73, *(v0 + 216));
      sub_26B8ECB70(v73, v0 + 16);
      v74 = *(v0 + 40);
      v75 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v74);
      v76 = *(MEMORY[0x277D7D5C8] + 4);
      v77 = swift_task_alloc();
      *(v0 + 392) = v77;
      *v77 = v0;
      v77[1] = sub_26B919938;
      v78 = *(v0 + 152);

      return MEMORY[0x2821E5150](v78, v74, v75);
    }

    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  }

  v45 = *(v0 + 256);
  v47 = *(v0 + 136);
  v46 = *(v0 + 144);
  v48 = *(v0 + 112);
  sub_26B9AB934();
  sub_26B90D7EC(v22);

  sub_26B9AB974();
  sub_26B9AB924();
  v49 = *(v0 + 248);
  if (v38)
  {
    (*(v49 + 8))(*(v0 + 256), *(v0 + 240));
    v50 = *(v0 + 256);
    v51 = *(v0 + 232);
    v53 = *(v0 + 200);
    v52 = *(v0 + 208);
    v55 = *(v0 + 184);
    v54 = *(v0 + 192);
    v57 = *(v0 + 152);
    v56 = *(v0 + 160);
    v58 = *(v0 + 144);
    v79 = *(v0 + 136);
  }

  else
  {
    v60 = *(v0 + 232);
    v62 = *(v0 + 200);
    v61 = *(v0 + 208);
    v64 = *(v0 + 184);
    v63 = *(v0 + 192);
    v66 = *(v0 + 152);
    v65 = *(v0 + 160);
    v67 = *(v0 + 144);
    v80 = *(v0 + 136);
    (*(v49 + 8))();
  }

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_26B919938()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v7 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v4 = *(v2 + 304);

    v5 = sub_26B91A728;
  }

  else
  {
    v5 = sub_26B919A54;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26B919A54()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 152);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26B8EACD8(v3, &qword_2804260C8, &qword_26B9B0050);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v4 = *(v0 + 400);
    v5 = *(v0 + 304);
    v6 = *(v0 + 296) + 1;
    if (v6 == *(v0 + 264))
    {
LABEL_7:
      v14 = *(v0 + 256);
      v16 = *(v0 + 136);
      v15 = *(v0 + 144);
      v17 = *(v0 + 112);
      sub_26B9AB934();
      sub_26B90D7EC(v5);

      sub_26B9AB974();
      sub_26B9AB924();
      v18 = *(v0 + 248);
      if (v4)
      {
        (*(v18 + 8))(*(v0 + 256), *(v0 + 240));
        v19 = *(v0 + 256);
        v20 = *(v0 + 232);
        v22 = *(v0 + 200);
        v21 = *(v0 + 208);
        v24 = *(v0 + 184);
        v23 = *(v0 + 192);
        v26 = *(v0 + 152);
        v25 = *(v0 + 160);
        v27 = *(v0 + 144);
        v55 = *(v0 + 136);
      }

      else
      {
        v34 = *(v0 + 232);
        v36 = *(v0 + 200);
        v35 = *(v0 + 208);
        v38 = *(v0 + 184);
        v37 = *(v0 + 192);
        v40 = *(v0 + 152);
        v39 = *(v0 + 160);
        v41 = *(v0 + 144);
        v56 = *(v0 + 136);
        (*(v18 + 8))();
      }

      v28 = *(v0 + 8);

      return v28();
    }

    else
    {
      v7 = *(v0 + 288);
      while (1)
      {
        *(v0 + 296) = v6;
        *(v0 + 304) = v5;
        *(v0 + 288) = v7;
        v8 = *(v0 + 476);
        v10 = *(v0 + 224);
        v9 = *(v0 + 232);
        v11 = *(v0 + 216);
        (*(v0 + 280))(v9, *(v0 + 128) + ((*(v0 + 472) + 32) & ~*(v0 + 472)) + *(v0 + 272) * v6, v11);
        v12 = (*(v10 + 88))(v9, v11);
        if (v12 == v8)
        {
          break;
        }

        v13 = *(v0 + 224);
        if (v12 == *(v0 + 480))
        {
          v48 = *(v0 + 232);
          (*(v13 + 96))();
          sub_26B8ECB70(v48, v0 + 16);
          v49 = *(v0 + 40);
          v50 = *(v0 + 48);
          __swift_project_boxed_opaque_existential_1((v0 + 16), v49);
          v51 = *(MEMORY[0x277D7D5C8] + 4);
          v52 = swift_task_alloc();
          *(v0 + 392) = v52;
          *v52 = v0;
          v52[1] = sub_26B919938;
          v53 = *(v0 + 152);

          return MEMORY[0x2821E5150](v53, v49, v50);
        }

        (*(v13 + 8))(*(v0 + 232), *(v0 + 216));
        v6 = *(v0 + 296) + 1;
        if (v6 == *(v0 + 264))
        {
          goto LABEL_7;
        }
      }

      v42 = *(v0 + 232);
      (*(*(v0 + 224) + 96))(v42, *(v0 + 216));
      sub_26B8ECB70(v42, v0 + 56);
      v43 = *(v0 + 80);
      v44 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v43);
      v45 = *(MEMORY[0x277D7D540] + 4);
      v46 = swift_task_alloc();
      *(v0 + 312) = v46;
      *v46 = v0;
      v46[1] = sub_26B918C48;
      v47 = *(v0 + 160);

      return MEMORY[0x2821E5078](v47, v43, v44);
    }
  }

  else
  {
    v29 = *(v0 + 192);
    v30 = *(v2 + 32);
    *(v0 + 408) = v30;
    *(v0 + 416) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v30(v29, v3, v1);
    v31 = *(v0 + 40);
    *(v0 + 424) = v31;
    *(v0 + 440) = __swift_project_boxed_opaque_existential_1((v0 + 16), v31);
    sub_26B9AC804();
    *(v0 + 448) = sub_26B9AC7F4();
    v33 = sub_26B9AC7C4();

    return MEMORY[0x2822009F8](sub_26B919F74, v33, v32);
  }
}

uint64_t sub_26B919F74()
{
  v2 = v0[55];
  v1 = v0[56];
  v4 = v0[53];
  v3 = v0[54];

  v0[57] = sub_26B9AB364();
  v0[58] = v5;

  return MEMORY[0x2822009F8](sub_26B919FF8, 0, 0);
}

uint64_t sub_26B919FF8()
{
  v2 = *(v0 + 456);
  v1 = *(v0 + 464);
  v3 = *(v0 + 288);
  (*(*(v0 + 176) + 16))(*(v0 + 184), *(v0 + 192), *(v0 + 168));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 96) = v3;
  v5 = sub_26B9201A8(v2, v1);
  v7 = *(v3 + 16);
  v8 = (v6 & 1) == 0;
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  LOBYTE(v2) = v6;
  if (*(*(v0 + 288) + 24) >= v10)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_11:
    v23 = v5;
    sub_26B920C58(MEMORY[0x277D72A78], &qword_280426318, &qword_26B9B0CE0);
    v5 = v23;
    v16 = *(v0 + 464);
    if (v2)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v12 = *(v0 + 456);
  v11 = *(v0 + 464);
  sub_26B9202D8(v10, isUniquelyReferenced_nonNull_native, MEMORY[0x277D72A78], &qword_280426318, &qword_26B9B0CE0);
  v13 = *(v0 + 96);
  v5 = sub_26B9201A8(v12, v11);
  if ((v2 & 1) != (v14 & 1))
  {

    return sub_26B9ACF24();
  }

LABEL_8:
  v16 = *(v0 + 464);
  if (v2)
  {
LABEL_9:
    v18 = *(v0 + 184);
    v17 = *(v0 + 192);
    v19 = *(v0 + 168);
    v20 = *(v0 + 176);
    v21 = v5;

    v22 = *(v0 + 96);
    (*(v20 + 40))(v22[7] + *(v20 + 72) * v21, v18, v19);
    (*(v20 + 8))(v17, v19);
    goto LABEL_14;
  }

LABEL_12:
  v24 = *(v0 + 456);
  v26 = *(v0 + 408);
  v25 = *(v0 + 416);
  v27 = *(v0 + 184);
  v28 = *(v0 + 192);
  v29 = *(v0 + 168);
  v30 = *(v0 + 176);
  v22 = *(v0 + 96);
  v22[(v5 >> 6) + 8] |= 1 << v5;
  v31 = (v22[6] + 16 * v5);
  *v31 = v24;
  v31[1] = v16;
  v26(v22[7] + *(v30 + 72) * v5, v27, v29);
  v32 = (*(v30 + 8))(v28, v29);
  v35 = v22[2];
  v9 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (v9)
  {
    __break(1u);
    return MEMORY[0x2821E5078](v32, v33, v34);
  }

  v22[2] = v36;
LABEL_14:
  v37 = (v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v38 = *(v0 + 400);
  while (1)
  {
    v39 = *(v0 + 296) + 1;
    if (v39 == *(v0 + 264))
    {
      break;
    }

    *(v0 + 296) = v39;
    *(v0 + 304) = v22;
    *(v0 + 288) = v22;
    v40 = *(v0 + 476);
    v42 = *(v0 + 224);
    v41 = *(v0 + 232);
    v43 = *(v0 + 216);
    (*(v0 + 280))(v41, *(v0 + 128) + ((*(v0 + 472) + 32) & ~*(v0 + 472)) + *(v0 + 272) * v39, v43);
    v44 = (*(v42 + 88))(v41, v43);
    if (v44 == v40)
    {
      v69 = *(v0 + 232);
      (*(*(v0 + 224) + 96))(v69, *(v0 + 216));
      sub_26B8ECB70(v69, v0 + 56);
      v70 = *(v0 + 80);
      v71 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v70);
      v72 = *(MEMORY[0x277D7D540] + 4);
      v73 = swift_task_alloc();
      *(v0 + 312) = v73;
      *v73 = v0;
      v73[1] = sub_26B918C48;
      v32 = *(v0 + 160);
      v33 = v70;
      v34 = v71;

      return MEMORY[0x2821E5078](v32, v33, v34);
    }

    v45 = *(v0 + 224);
    if (v44 == *(v0 + 480))
    {
      v74 = *(v0 + 232);
      (*(v45 + 96))();
      sub_26B8ECB70(v74, v37);
      v75 = *(v0 + 40);
      v76 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1(v37, v75);
      v77 = *(MEMORY[0x277D7D5C8] + 4);
      v78 = swift_task_alloc();
      *(v0 + 392) = v78;
      *v78 = v0;
      v78[1] = sub_26B919938;
      v79 = *(v0 + 152);

      return MEMORY[0x2821E5150](v79, v75, v76);
    }

    (*(v45 + 8))(*(v0 + 232), *(v0 + 216));
  }

  v46 = *(v0 + 256);
  v48 = *(v0 + 136);
  v47 = *(v0 + 144);
  v49 = *(v0 + 112);
  sub_26B9AB934();
  sub_26B90D7EC(v22);

  sub_26B9AB974();
  sub_26B9AB924();
  v50 = *(v0 + 248);
  if (v38)
  {
    (*(v50 + 8))(*(v0 + 256), *(v0 + 240));
    v51 = *(v0 + 256);
    v52 = *(v0 + 232);
    v54 = *(v0 + 200);
    v53 = *(v0 + 208);
    v56 = *(v0 + 184);
    v55 = *(v0 + 192);
    v58 = *(v0 + 152);
    v57 = *(v0 + 160);
    v59 = *(v0 + 144);
    v80 = *(v0 + 136);
  }

  else
  {
    v61 = *(v0 + 232);
    v63 = *(v0 + 200);
    v62 = *(v0 + 208);
    v65 = *(v0 + 184);
    v64 = *(v0 + 192);
    v67 = *(v0 + 152);
    v66 = *(v0 + 160);
    v68 = *(v0 + 144);
    v81 = *(v0 + 136);
    (*(v50 + 8))();
  }

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_26B91A620()
{
  (*(v0[31] + 8))(v0[32], v0[30]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v13 = v0[40];
  v1 = v0[32];
  v2 = v0[29];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[17];
  v10 = v0[18];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26B91A728()
{
  (*(v0[31] + 8))(v0[32], v0[30]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v13 = v0[50];
  v1 = v0[32];
  v2 = v0[29];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[17];
  v10 = v0[18];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26B91A830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_26B9AC0E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426328, &unk_26B9B0CF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v54 = (&v49 - v10);
  v55 = sub_26B9ABBA4();
  v11 = *(v55 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v55);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v49 - v16;
  v18 = sub_26B9AB914();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v51 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v49 - v23;
  v25 = sub_26B9AB984();
  (*(*(v25 - 8) + 16))(v56, a1, v25);
  v53 = a1;
  sub_26B9AB934();
  sub_26B9AB904();
  v26 = *(v19 + 8);
  v52 = v18;
  v50 = v26;
  v26(v24, v18);
  sub_26B9ABB94();
  sub_26B92349C(&qword_280426330, MEMORY[0x277D726D0]);
  v27 = v55;
  LOBYTE(a1) = sub_26B9ACAE4();
  v28 = *(v11 + 8);
  v28(v15, v27);
  v28(v17, v27);
  if (a1)
  {
    v29 = sub_26B9ABE44();
    v30 = swift_allocBox();
    v32 = v31;
    *v31 = 1;
LABEL_11:
    (*(*(v29 - 8) + 104))(v32, *MEMORY[0x277D72988], v29);
    v42 = v54;
    *v54 = v30;
    v43 = *MEMORY[0x277D72A58];
    v44 = sub_26B9ABE84();
    (*(*(v44 - 8) + 104))(v42, v43, v44);
    v45 = *MEMORY[0x277D72E38];
    v46 = sub_26B9ABFB4();
    v47 = *(v46 - 8);
    (*(v47 + 104))(v42, v45, v46);
    (*(v47 + 56))(v42, 0, 1, v46);
    v48 = sub_26B9AB944();
    sub_26B912910(v42, 0x6E656857776F6853, 0xEB000000006E7552);
    return v48(v57, 0);
  }

  else
  {
    v33 = v51;
    sub_26B9AB934();
    v34 = sub_26B9AB8B4();
    result = v50(v33, v52);
    v36 = 0;
    v37 = *(v34 + 16);
    v38 = (v4 + 8);
    while (1)
    {
      if (v37 == v36)
      {
      }

      if (v36 >= *(v34 + 16))
      {
        break;
      }

      (*(v4 + 16))(v7, v34 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v36, v3);
      if (sub_26B9AC0B4() == 0x6E656857776F6853 && v40 == 0xEB000000006E7552)
      {

        (*v38)(v7, v3);
LABEL_10:

        v29 = sub_26B9ABE44();
        v30 = swift_allocBox();
        v32 = v41;
        *v41 = 0;
        goto LABEL_11;
      }

      ++v36;
      v39 = sub_26B9ACEB4();

      result = (*v38)(v7, v3);
      if (v39)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t static ToolKitUtilities.perform(toolIdentifier:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426248, &qword_26B9B08E8) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_26B9AB984();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v4[9] = *(v7 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B91AF50, 0, 0);
}

uint64_t sub_26B91AF50()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  static ToolKitUtilities.toolInvocation(for:parameters:)(v0[3], v0[4], v0[5], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[2];
    sub_26B8EACD8(v0[6], &qword_280426248, &qword_26B9B08E8);
    v5 = sub_26B9ABE84();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[6];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[10];
    v12 = v0[11];
    v13 = v0[8];
    v14 = v0[7];
    v15 = *(v13 + 32);
    v15(v12, v0[6], v14);
    (*(v13 + 16))(v11, v12, v14);
    v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v17 = swift_allocObject();
    v0[12] = v17;
    v15(v17 + v16, v11, v14);
    v18 = swift_task_alloc();
    v0[13] = v18;
    *v18 = v0;
    v18[1] = sub_26B91B1B4;
    v19 = v0[2];

    return sub_26B91C22C(v19, 0x2065747563657865, 0xEC0000006C6F6F74, &unk_26B9B0A38, v17);
  }
}

uint64_t sub_26B91B1B4()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26B91B2CC, 0, 0);
}

uint64_t sub_26B91B2CC()
{
  (*(v0[8] + 8))(v0[11], v0[7]);
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t static ToolKitUtilities.perform(invocation:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_26B9AB984();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B91B420, 0, 0);
}

uint64_t sub_26B91B420()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  (*(v3 + 16))(v1, v0[3], v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[8] = v5;
  (*(v3 + 32))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_26B91B578;
  v7 = v0[2];

  return sub_26B91C22C(v7, 0x2065747563657865, 0xEC0000006C6F6F74, &unk_26B9B0A48, v5);
}

uint64_t sub_26B91B578()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_26B91B6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426308, &qword_26B9B0CD0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(sub_26B9AC2B4() - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A8, &qword_26B9B09B0) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_26B9AC274();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426310, &qword_26B9B0CD8) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = sub_26B9ABE74();
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();
  v14 = sub_26B9AB984();
  v3[15] = v14;
  v15 = *(v14 - 8);
  v3[16] = v15;
  v16 = *(v15 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B91B8F4, 0, 0);
}

uint64_t sub_26B91B8F4()
{
  v1 = v0[3];
  sub_26B91A830(v0[4], v0[17]);
  v2 = sub_26B9AB9A4();
  v4 = v3;
  v0[18] = v2;
  ObjectType = swift_getObjectType();
  v6 = *(MEMORY[0x277D72568] + 4);
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_26B91B9C4;
  v8 = v0[17];
  v9 = v0[11];

  return MEMORY[0x2821DAAB0](v9, v8, ObjectType, v4);
}

uint64_t sub_26B91B9C4()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v6 = *v1;
  *(*v1 + 160) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v4 = sub_26B91C04C;
  }

  else
  {
    v4 = sub_26B91BAF4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26B91BAF4()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
    sub_26B8EACD8(v3, &qword_280426310, &qword_26B9B0CD8);
    v4 = v0[17];
    v5 = v0[14];
    v7 = v0[10];
    v6 = v0[11];
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[5];
    v11 = v0[2];
    v12 = sub_26B9ABE84();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[10];
    v17 = v0[6];
    v16 = v0[7];
    v18 = v0[5];
    v19 = v0[3];
    (*(v2 + 32))(v0[14], v3, v1);
    v20 = sub_26B9ABEB4();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
    sub_26B9AC2A4();
    v21 = sub_26B9AB104();
    (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
    sub_26B9AC264();
    v22 = sub_26B9AB9A4();
    v24 = v23;
    v0[21] = v22;
    ObjectType = swift_getObjectType();
    v26 = *(MEMORY[0x277D72520] + 4);
    v27 = swift_task_alloc();
    v0[22] = v27;
    *v27 = v0;
    v27[1] = sub_26B91BDC4;
    v28 = v0[14];
    v29 = v0[10];
    v30 = v0[2];

    return MEMORY[0x2821DAA60](v30, v28, v29, ObjectType, v24);
  }
}

uint64_t sub_26B91BDC4()
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v6 = *v1;
  *(*v1 + 184) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v4 = sub_26B91C120;
  }

  else
  {
    v4 = sub_26B91BEF4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26B91BEF4()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[17];
  v8 = v0[14];
  v10 = v0[10];
  v9 = v0[11];
  v12 = v0[6];
  v11 = v0[7];
  v13 = v0[5];
  v14 = v0[2];
  v15 = sub_26B9ABE84();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_26B91C04C()
{
  v1 = v0[20];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  (*(v0[16] + 8))(v0[17], v0[15]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_26B91C120()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[23];
  v5 = v0[14];
  v7 = v0[10];
  v6 = v0[11];
  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];
  (*(v0[16] + 8))(v0[17], v0[15]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_26B91C22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = sub_26B9AB584();
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v8 = *(v7 + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B91C2F4, 0, 0);
}

uint64_t sub_26B91C2F4()
{
  KeyPath = swift_getKeyPath();
  Dependency.init(_:)(KeyPath, v0 + 7);
  v0[16] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426258, &qword_26B9B0920);
  Dependency.wrappedValue.getter((v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_26B91C458;

  return v8(v2, v3);
}

uint64_t sub_26B91C458(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 136);
  v7 = *v3;
  v5[18] = a1;
  v5[19] = v2;

  if (v2)
  {
    v8 = sub_26B91C768;
  }

  else
  {
    v5[20] = a2;
    v8 = sub_26B91C580;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26B91C580()
{
  v1 = v0[18];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  ObjectType = swift_getObjectType();
  v3 = *(MEMORY[0x277D726A0] + 4);
  v4 = swift_task_alloc();
  v0[21] = v4;
  v5 = sub_26B9ABE84();
  *v4 = v0;
  v4[1] = sub_26B91C654;
  v6 = v0[20];
  v7 = v0[18];
  v8 = v0[11];
  v9 = v0[12];
  v10 = v0[8];

  return MEMORY[0x2821DAB50](v10, v8, v9, v5, ObjectType, v6);
}

uint64_t sub_26B91C654()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_26B91CA8C;
  }

  else
  {
    v3 = sub_26B91CA1C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26B91C768()
{
  v34 = v0;
  v1 = v0[16];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[19];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v6 = v0[10];
  v7 = sub_26B9A75D0();
  (*(v4 + 16))(v3, v7, v5);

  v8 = v2;
  v9 = sub_26B9AB564();
  v10 = sub_26B9AC934();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[13];
  if (v11)
  {
    v31 = v0[13];
    v32 = v0[15];
    v16 = v0[9];
    v15 = v0[10];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33 = v30;
    *v17 = 136315394;
    v19 = v15 == 0;
    if (v15)
    {
      v20 = v16;
    }

    else
    {
      v20 = 0xD000000000000011;
    }

    if (v19)
    {
      v21 = 0x800000026B9B7D70;
    }

    else
    {
      v21 = v6;
    }

    v22 = sub_26B91FC00(v20, v21, &v33);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    v23 = v2;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    *v18 = v24;
    _os_log_impl(&dword_26B8E8000, v9, v10, "Failed to %s with tool session: %@", v17, 0x16u);
    sub_26B8EACD8(v18, &qword_280426230, &unk_26B9B25F0);
    MEMORY[0x26D6879F0](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x26D6879F0](v30, -1, -1);
    MEMORY[0x26D6879F0](v17, -1, -1);

    (*(v13 + 8))(v32, v31);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v25 = v0[8];
  v26 = sub_26B9ABE84();
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  v27 = v0[15];

  v28 = v0[1];

  return v28();
}

uint64_t sub_26B91CA1C()
{
  v1 = v0[18];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26B91CA8C()
{
  v35 = v0;
  v1 = v0[18];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[22];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  v7 = v0[10];
  v8 = sub_26B9A75D0();
  (*(v5 + 16))(v4, v8, v6);

  v9 = v3;
  v10 = sub_26B9AB564();
  v11 = sub_26B9AC934();

  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[14];
  v13 = v0[15];
  v15 = v0[13];
  if (v12)
  {
    v32 = v0[13];
    v33 = v0[15];
    v17 = v0[9];
    v16 = v0[10];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v18 = 136315394;
    v20 = v16 == 0;
    if (v16)
    {
      v21 = v17;
    }

    else
    {
      v21 = 0xD000000000000011;
    }

    if (v20)
    {
      v22 = 0x800000026B9B7D70;
    }

    else
    {
      v22 = v7;
    }

    v23 = sub_26B91FC00(v21, v22, &v34);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2112;
    v24 = v3;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v25;
    *v19 = v25;
    _os_log_impl(&dword_26B8E8000, v10, v11, "Failed to %s with tool session: %@", v18, 0x16u);
    sub_26B8EACD8(v19, &qword_280426230, &unk_26B9B25F0);
    MEMORY[0x26D6879F0](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x26D6879F0](v31, -1, -1);
    MEMORY[0x26D6879F0](v18, -1, -1);

    (*(v14 + 8))(v33, v32);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v26 = v0[8];
  v27 = sub_26B9ABE84();
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  v28 = v0[15];

  v29 = v0[1];

  return v29();
}

uint64_t static ToolKitUtilities.withSession<A>(reason:accessor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v7 = sub_26B9AB584();
  v6[14] = v7;
  v8 = *(v7 - 8);
  v6[15] = v8;
  v9 = *(v8 + 64) + 15;
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B91CE08, 0, 0);
}

uint64_t sub_26B91CE08()
{
  KeyPath = swift_getKeyPath();
  Dependency.init(_:)(KeyPath, v0 + 7);
  v0[17] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426258, &qword_26B9B0920);
  Dependency.wrappedValue.getter((v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_26B91CF6C;

  return v8(v2, v3);
}

uint64_t sub_26B91CF6C(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 144);
  v7 = *v3;
  v5[19] = a1;
  v5[20] = v2;

  if (v2)
  {
    v8 = sub_26B91D2DC;
  }

  else
  {
    v5[21] = a2;
    v8 = sub_26B91D094;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26B91D094()
{
  v1 = v0[19];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  ObjectType = swift_getObjectType();
  v3 = *(MEMORY[0x277D726A0] + 4);
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_26B91D158;
  v5 = v0[21];
  v6 = v0[19];
  v7 = v0[12];
  v8 = v0[13];
  v9 = v0[11];
  v10 = v0[8];

  return MEMORY[0x2821DAB50](v10, v9, v7, v8, ObjectType, v5);
}

uint64_t sub_26B91D158()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_26B91D584;
  }

  else
  {
    v3 = sub_26B91D26C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26B91D26C()
{
  v1 = v0[19];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[16];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26B91D2DC()
{
  v32 = v0;
  v1 = v0[17];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[10];
  v7 = sub_26B9A75D0();
  (*(v4 + 16))(v3, v7, v5);

  v8 = v2;
  v9 = sub_26B9AB564();
  v10 = sub_26B9AC934();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[14];
  if (v11)
  {
    v29 = v0[14];
    v30 = v0[16];
    v16 = v0[9];
    v15 = v0[10];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v17 = 136315394;
    v19 = v15 == 0;
    if (v15)
    {
      v20 = v16;
    }

    else
    {
      v20 = 0xD000000000000011;
    }

    if (v19)
    {
      v21 = 0x800000026B9B7D70;
    }

    else
    {
      v21 = v6;
    }

    v22 = sub_26B91FC00(v20, v21, &v31);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    v23 = v2;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    *v18 = v24;
    _os_log_impl(&dword_26B8E8000, v9, v10, "Failed to %s with tool session: %@", v17, 0x16u);
    sub_26B8EACD8(v18, &qword_280426230, &unk_26B9B25F0);
    MEMORY[0x26D6879F0](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x26D6879F0](v28, -1, -1);
    MEMORY[0x26D6879F0](v17, -1, -1);

    (*(v13 + 8))(v30, v29);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  (*(*(v0[13] - 8) + 56))(v0[8], 1, 1);
  v25 = v0[16];

  v26 = v0[1];

  return v26();
}

uint64_t sub_26B91D584()
{
  v33 = v0;
  v1 = v0[19];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[23];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v7 = v0[10];
  v8 = sub_26B9A75D0();
  (*(v5 + 16))(v4, v8, v6);

  v9 = v3;
  v10 = sub_26B9AB564();
  v11 = sub_26B9AC934();

  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[15];
  v13 = v0[16];
  v15 = v0[14];
  if (v12)
  {
    v30 = v0[14];
    v31 = v0[16];
    v17 = v0[9];
    v16 = v0[10];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v32 = v29;
    *v18 = 136315394;
    v20 = v16 == 0;
    if (v16)
    {
      v21 = v17;
    }

    else
    {
      v21 = 0xD000000000000011;
    }

    if (v20)
    {
      v22 = 0x800000026B9B7D70;
    }

    else
    {
      v22 = v7;
    }

    v23 = sub_26B91FC00(v21, v22, &v32);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2112;
    v24 = v3;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v25;
    *v19 = v25;
    _os_log_impl(&dword_26B8E8000, v10, v11, "Failed to %s with tool session: %@", v18, 0x16u);
    sub_26B8EACD8(v19, &qword_280426230, &unk_26B9B25F0);
    MEMORY[0x26D6879F0](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x26D6879F0](v29, -1, -1);
    MEMORY[0x26D6879F0](v18, -1, -1);

    (*(v14 + 8))(v31, v30);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  (*(*(v0[13] - 8) + 56))(v0[8], 1, 1);
  v26 = v0[16];

  v27 = v0[1];

  return v27();
}

uint64_t sub_26B91D82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426308, &qword_26B9B0CD0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = *(*(sub_26B9AC2B4() - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A8, &qword_26B9B09B0) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_26B9AC274();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_26B9ABE84();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_26B9ABE74();
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B91DA44, 0, 0);
}

uint64_t sub_26B91DA44()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[3];
  v5 = v0[4];
  v6 = sub_26B9AB9A4();
  v8 = v7;
  v0[18] = v6;
  ObjectType = swift_getObjectType();
  v10 = sub_26B9ABD04();
  v11 = swift_allocBox();
  (*(*(v10 - 8) + 16))(v12, v5, v10);
  *v1 = v11;
  (*(v2 + 104))(v1, *MEMORY[0x277D729F8], v3);
  v13 = *(MEMORY[0x277D72510] + 4);
  v14 = swift_task_alloc();
  v0[19] = v14;
  *v14 = v0;
  v14[1] = sub_26B91DB9C;
  v15 = v0[17];
  v16 = v0[14];

  return MEMORY[0x2821DAA50](v15, v16, ObjectType, v8);
}

uint64_t sub_26B91DB9C()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 160) = v0;

  (*(v5 + 8))(v4, v6);
  swift_unknownObjectRelease();
  if (v0)
  {
    v7 = sub_26B91E0CC;
  }

  else
  {
    v7 = sub_26B91DD30;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26B91DD30()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[6];
  v4 = v0[3];
  sub_26B9236E8(v0[5], v0[8], &qword_2804262A8, &qword_26B9B09B0);
  sub_26B9AC2A4();
  v5 = sub_26B9AB104();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_26B9AC264();
  v6 = sub_26B9AB9A4();
  v8 = v7;
  v0[21] = v6;
  ObjectType = swift_getObjectType();
  v10 = *(MEMORY[0x277D72520] + 4);
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_26B91DE84;
  v12 = v0[17];
  v13 = v0[11];
  v14 = v0[2];

  return MEMORY[0x2821DAA60](v14, v12, v13, ObjectType, v8);
}

uint64_t sub_26B91DE84()
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v6 = *v1;
  *(*v1 + 184) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v4 = sub_26B91E178;
  }

  else
  {
    v4 = sub_26B91DFB4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26B91DFB4()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[8];
  v11 = v0[7];
  v12 = v0[6];
  v8 = v0[2];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v1, v3);
  (*(v6 + 56))(v8, 0, 1, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_26B91E0CC()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[11];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_26B91E178()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[23];
  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[11];
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];

  v11 = v0[1];

  return v11();
}

uint64_t static ToolKitUtilities.entityParameterTypeInfo(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26B9ABEE4();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v2);
  v45 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262C8, &qword_26B9B3CE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v42 - v7;
  v9 = sub_26B9ABF24();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  v17 = sub_26B9ABEB4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x26D685FA0](v20);
  v23 = sub_26B9ABEA4();
  (*(v18 + 8))(v22, v17);
  sub_26B9184D4(v23, v8);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_26B8EACD8(v8, &qword_2804262C8, &qword_26B9B3CE0);
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    (*(v10 + 32))(v16, v8, v9);
    (*(v10 + 16))(v14, v16, v9);
    v25 = (*(v10 + 88))(v14, v9);
    if (v25 == *MEMORY[0x277D72D28])
    {
      (*(v10 + 8))(v16, v9);
      (*(v10 + 96))(v14, v9);
      v27 = *(*v14 + 16);
      v26 = *(*v14 + 24);
      v29 = *(*v14 + 32);
      v28 = *(*v14 + 40);

      *a1 = v27;
      *(a1 + 8) = v26;
      *(a1 + 16) = v29;
      *(a1 + 24) = v28;
    }

    else if (v25 == *MEMORY[0x277D72D18])
    {
      (*(v10 + 96))(v14, v9);
      v30 = *v14;
      v31 = swift_projectBox();
      v33 = v45;
      v32 = v46;
      v34 = v47;
      (*(v46 + 16))(v45, v31, v47);
      v35 = sub_26B9ABEF4();
      v43 = v36;
      v44 = v35;
      v37 = sub_26B9ABED4();
      v39 = v38;
      (*(v32 + 8))(v33, v34);
      (*(v10 + 8))(v16, v9);

      v40 = v43;
      *a1 = v44;
      *(a1 + 8) = v40;
      *(a1 + 16) = v37;
      *(a1 + 24) = v39;
    }

    else
    {
      v41 = *(v10 + 8);
      v41(v16, v9);
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return (v41)(v14, v9);
    }
  }

  return result;
}

size_t static ToolKitUtilities.unpackCollections(values:)(uint64_t a1)
{
  v2 = sub_26B9ABC94();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v53 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26B9ABE84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = *(v7 + 16);
  v16 = v7 + 16;
  v15 = v17;
  v52 = *(v16 + 64);
  v60 = (v52 + 32) & ~v52;
  v18 = (a1 + v60);
  v19 = *(v16 + 56);
  v58 = (v16 + 72);
  v57 = *MEMORY[0x277D729E0];
  v55 = (v16 - 8);
  v50 = (v3 + 16);
  v51 = (v16 + 80);
  v45 = (v3 + 8);
  v20 = MEMORY[0x277D84F90];
  v49 = xmmword_26B9AF300;
  v56 = &v45 - v12;
  v59 = v17;
  v46 = v11;
  v47 = v16;
  v61 = v19;
  v48 = v2;
  v17(v13, v18, v6);
  while (1)
  {
    v15(v11, v13, v6);
    v23 = (*v58)(v11, v6);
    if (v23 == v57)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262D0, &unk_26B9B0A60);
    v40 = v60;
    v41 = swift_allocObject();
    *(v41 + 16) = v49;
    v15((v41 + v40), v13, v6);
    v42 = v20[2];
    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || (v43 = v20[3] >> 1, v43 <= v42))
    {
      result = sub_26B91FA28(result, v42 + 1, 1, v20);
      v20 = result;
      v43 = *(result + 24) >> 1;
    }

    v36 = v61;
    if (v43 <= v20[2])
    {
      goto LABEL_28;
    }

    swift_arrayInitWithCopy();

    ++v20[2];
    v13 = v56;
    v44 = *v55;
    (*v55)(v56, v6);
    v44(v11, v6);
    v15 = v59;
    v2 = v48;
LABEL_5:
    v18 += v36;
    if (!--v14)
    {
      return v20;
    }

    v15(v13, v18, v6);
  }

  v24 = v11;
  v25 = v11;
  v26 = v6;
  (*v51)(v24, v6);
  v54 = *v25;
  v27 = swift_projectBox();
  v28 = v53;
  v29 = v2;
  (*v50)(v53, v27, v2);
  v30 = v28;
  result = sub_26B9ABC84();
  v31 = *(result + 16);
  v32 = v20[2];
  v33 = v32 + v31;
  if (!__OFADD__(v32, v31))
  {
    v34 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v33 > v20[3] >> 1)
    {
      if (v32 <= v33)
      {
        v35 = v32 + v31;
      }

      else
      {
        v35 = v32;
      }

      result = sub_26B91FA28(result, v35, 1, v20);
      v20 = result;
    }

    v15 = v59;
    v36 = v61;
    if (*(v34 + 16))
    {
      if ((v20[3] >> 1) - v20[2] < v31)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      v2 = v29;
      v22 = v30;
      v6 = v26;
      v15 = v59;
      v11 = v46;
      if (v31)
      {
        v37 = v20[2];
        v38 = __OFADD__(v37, v31);
        v39 = v37 + v31;
        if (v38)
        {
          goto LABEL_31;
        }

        v20[2] = v39;
      }
    }

    else
    {

      v2 = v29;
      v22 = v30;
      v6 = v26;
      v11 = v46;
      if (v31)
      {
        goto LABEL_29;
      }
    }

    (*v45)(v22, v2);
    v13 = v56;
    (*v55)(v56, v6);

    goto LABEL_5;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26B91EBC0(uint64_t a1)
{
  v2 = sub_26B9ABEE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26B9ABF24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x277D72D28])
  {
    (*(v8 + 96))(v11, v7);
    v13 = *v11;
    v14 = *(*v11 + 16);
    v15 = *(*v11 + 24);
    v16 = *(*v11 + 32);
    v17 = *(v13 + 40);
  }

  else if (v12 == *MEMORY[0x277D72D18])
  {
    (*(v8 + 96))(v11, v7);
    v18 = *v11;
    v19 = swift_projectBox();
    (*(v3 + 16))(v6, v19, v2);
    v16 = sub_26B9ABED4();
    sub_26B9ABEF4();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    return 0;
  }

  return v16;
}

uint64_t static ToolKitUtilities.toolInvocationHasOutput(_:)()
{
  v0 = sub_26B9ABEB4();
  v38 = *(v0 - 8);
  v39 = v0;
  v1 = *(v38 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426218, &qword_26B9B0890);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - v6;
  v8 = sub_26B9AB914();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  sub_26B9AB934();
  v16 = sub_26B9AB8E4();
  v18 = v17;
  v19 = *(v9 + 8);
  v19(v15, v8);
  if (v16 == 0xD00000000000001FLL && 0x800000026B9B7D90 == v18)
  {
  }

  else
  {
    v21 = sub_26B9ACEB4();

    if ((v21 & 1) == 0)
    {
      v22 = sub_26B9AB934();
      MEMORY[0x26D685770](v22);
      v19(v13, v8);
      v23 = sub_26B9ABEA4();
      (*(v38 + 8))(v3, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262D8, &qword_26B9B3A50);
      v24 = sub_26B9ABF24();
      v25 = *(v24 - 8);
      v26 = *(v25 + 72);
      v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_26B9AF300;
      v29 = sub_26B9ABF04();
      v30 = swift_allocBox();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D72CC8], v29);
      *(v28 + v27) = v30;
      (*(v25 + 104))(v28 + v27, *MEMORY[0x277D72D50], v24);
      v32 = sub_26B922FC8(v28);
      swift_setDeallocating();
      (*(v25 + 8))(v28 + v27, v24);
      swift_deallocClassInstance();
      LOBYTE(v24) = sub_26B91F56C(v23, v32);

      v33 = v24 ^ 1;
      return v33 & 1;
    }
  }

  sub_26B9AB974();
  v34 = sub_26B9ABAE4();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v7, 1, v34) == 1)
  {
    sub_26B8EACD8(v7, &qword_280426218, &qword_26B9B0890);
    v33 = 1;
  }

  else
  {
    v36 = sub_26B9ABAD4();
    (*(v35 + 8))(v7, v34);
    v33 = (v36 == 2) | v36;
  }

  return v33 & 1;
}

void static ToolKitUtilities.addAutogeneratedAliasIfNeeded(result:)(uint64_t a1)
{
  v2 = [objc_opt_self() sharedStore];
  if (v2)
  {
    v6 = v2;
    v3 = [v2 aliasForResult_];
    if (v3)
    {
      v4 = v3;

      v5 = v4;
    }

    else
    {
      [v6 addAutogeneratedAliasForResult_];
      v5 = v6;
    }
  }
}

uint64_t sub_26B91F3B4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_26B9ACFB4();

    sub_26B9AC574();
    v17 = sub_26B9ACFF4();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_26B9ACEB4() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B91F56C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B9ABF24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_26B92349C(&qword_2804262F0, MEMORY[0x277D72D58]);
      v28 = sub_26B9AC454();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_26B92349C(&qword_2804262F8, MEMORY[0x277D72D58]);
        v33 = sub_26B9AC494();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

char *sub_26B91F91C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427370, &qword_26B9B0D00);
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

size_t sub_26B91FA28(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262D0, &unk_26B9B0A60);
  v10 = *(sub_26B9ABE84() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_26B9ABE84() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_26B91FC00(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26B91FCCC(v11, 0, 0, 1, a1, a2);
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
    sub_26B923750(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26B91FCCC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26B91FDD8(a5, a6);
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
    result = sub_26B9ACC54();
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

uint64_t sub_26B91FDD8(uint64_t a1, unint64_t a2)
{
  v4 = sub_26B91FE24(a1, a2);
  sub_26B91FF54(&unk_287C5D800);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26B91FE24(uint64_t a1, unint64_t a2)
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

  v6 = sub_26B920040(v5, 0);
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

  result = sub_26B9ACC54();
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
        v10 = sub_26B9AC5B4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26B920040(v10, 0);
        result = sub_26B9ACBC4();
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

uint64_t sub_26B91FF54(uint64_t result)
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

  result = sub_26B9200B4(result, v12, 1, v3);
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

void *sub_26B920040(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426370, &unk_26B9B0D50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26B9200B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426370, &unk_26B9B0D50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_26B9201A8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26B9ACFB4();
  sub_26B9AC574();
  v6 = sub_26B9ACFF4();

  return sub_26B920220(a1, a2, v6);
}

unint64_t sub_26B920220(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26B9ACEB4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_26B9202D8(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v54 = a3(0);
  v11 = *(v54 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = &v46 - v13;
  v14 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v15 = *(*v8 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v51 = a2;
  result = sub_26B9ACD74();
  v17 = result;
  if (*(v14 + 16))
  {
    v18 = 0;
    v19 = (v14 + 64);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 64);
    v23 = (v20 + 63) >> 6;
    v47 = v8;
    v48 = (v11 + 16);
    v49 = v14;
    v50 = v11;
    v52 = (v11 + 32);
    v24 = result + 64;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v18 << 6);
      v31 = *(v14 + 56);
      v32 = (*(v14 + 48) + 16 * v30);
      v34 = *v32;
      v33 = v32[1];
      v35 = *(v50 + 72);
      v36 = v31 + v35 * v30;
      if (v51)
      {
        (*v52)(v53, v36, v54);
      }

      else
      {
        (*v48)(v53, v36, v54);
      }

      v37 = *(v17 + 40);
      sub_26B9ACFB4();
      sub_26B9AC574();
      result = sub_26B9ACFF4();
      v38 = -1 << *(v17 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v24 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v24 + 8 * v40);
          if (v44 != -1)
          {
            v25 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v39) & ~*(v24 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v26 = (*(v17 + 48) + 16 * v25);
      *v26 = v34;
      v26[1] = v33;
      result = (*v52)(*(v17 + 56) + v35 * v25, v53, v54);
      ++*(v17 + 16);
      v14 = v49;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v8 = v47;
      goto LABEL_36;
    }

    v45 = 1 << *(v14 + 32);
    v8 = v47;
    if (v45 >= 64)
    {
      bzero(v19, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v45;
    }

    *(v14 + 16) = 0;
  }

LABEL_36:
  *v8 = v17;
  return result;
}

uint64_t sub_26B92065C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_26B9201A8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26B920C58(MEMORY[0x277D72E48], &qword_280426338, &unk_26B9B3500);
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_26B9ABFB4();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_26B9207F0(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_26B9ABFB4();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_26B9207F0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26B9ACB24() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_26B9ACFB4();

      sub_26B9AC574();
      v13 = sub_26B9ACFF4();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_26B9ABFB4() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26B9209DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void), uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void))
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_26B9201A8(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      sub_26B920C58(a5, a6, a7);
      goto LABEL_7;
    }

    sub_26B9202D8(v21, a4 & 1, a5, a6, a7);
    v32 = *v11;
    v33 = sub_26B9201A8(a2, a3);
    if ((v22 & 1) == (v34 & 1))
    {
      v18 = v33;
      v24 = *v11;
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_26B9ACF24();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v11;
  if (v22)
  {
LABEL_8:
    v25 = v24[7];
    v26 = a8(0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 40);
    v29 = v26;
    v30 = v25 + *(v27 + 72) * v18;

    return v28(v30, a1, v29);
  }

LABEL_13:
  sub_26B920BA4(v18, a2, a3, a1, v24, a5);
}

uint64_t sub_26B920BA4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

void *sub_26B920C58(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v44 = a1(0);
  v46 = *(v44 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v38 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_26B9ACD64();
  v11 = v10;
  if (*(v9 + 16))
  {
    v39 = v6;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v45 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = v46 + 32;
    v41 = v46 + 16;
    v42 = v9;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = *(v9 + 56);
        v28 = (*(v9 + 48) + 16 * v25);
        v29 = *v28;
        v30 = v28[1];
        v31 = v46;
        v32 = *(v46 + 72) * v25;
        v33 = v43;
        v34 = v44;
        (*(v46 + 16))(v43, v27 + v32, v44);
        v35 = v45;
        v36 = (*(v45 + 48) + v26);
        *v36 = v29;
        v36[1] = v30;
        v37 = *(v35 + 56) + v32;
        v9 = v42;
        (*(v31 + 32))(v37, v33, v34);

        v20 = v47;
      }

      while (v47);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v39;
        v11 = v45;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v47 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

uint64_t sub_26B920EE0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_26B9ACFB4();
  sub_26B9AC574();
  v9 = sub_26B9ACFF4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_26B9ACEB4() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_26B921E30(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_26B921030(uint64_t result)
{
  v2 = 0;
  v22 = result;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v22 + 48) + ((v2 << 10) | (16 * v9)));
      v12 = *v10;
      v11 = v10[1];
      v13 = *v1;
      if (*(*v1 + 16))
      {
        break;
      }

LABEL_7:
      v1 = v21;
      sub_26B920EE0(&v23, v12, v11);

      if (!v6)
      {
        goto LABEL_8;
      }
    }

    v14 = *(v13 + 40);
    sub_26B9ACFB4();

    sub_26B9AC574();
    v15 = sub_26B9ACFF4();
    v16 = -1 << *(v13 + 32);
    v17 = v15 & ~v16;
    if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_7;
    }

    v18 = ~v16;
    while (1)
    {
      v19 = (*(v13 + 48) + 16 * v17);
      v20 = *v19 == v12 && v19[1] == v11;
      if (v20 || (sub_26B9ACEB4() & 1) != 0)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v1 = v21;
    sub_26B92153C(v12, v11);
  }

  while (v6);
  while (1)
  {
LABEL_8:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_12;
    }
  }
}

size_t sub_26B921218(size_t a1, int64_t a2, char a3)
{
  result = sub_26B921258(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26B921238(char *a1, int64_t a2, char a3)
{
  result = sub_26B921430(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26B921258(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426348, &qword_26B9B0D18);
  v10 = *(sub_26B9AC0E4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_26B9AC0E4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_26B921430(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427370, &qword_26B9B0D00);
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

uint64_t sub_26B92153C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_26B9ACFB4();
  sub_26B9AC574();
  v7 = sub_26B9ACFF4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_26B9ACEB4() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_26B921678();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_26B921C6C(v9);
  *v2 = v20;
  return v13;
}

void *sub_26B921678()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426340, &qword_26B9B0D08);
  v2 = *v0;
  v3 = sub_26B9ACB84();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_26B9217D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426340, &qword_26B9B0D08);
  result = sub_26B9ACB94();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_26B9ACFB4();

      sub_26B9AC574();
      result = sub_26B9ACFF4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_26B921A0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426340, &qword_26B9B0D08);
  result = sub_26B9ACB94();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_26B9ACFB4();
      sub_26B9AC574();
      result = sub_26B9ACFF4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_26B921C6C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;
    sub_26B9AAAE4();
    v9 = sub_26B9ACB24();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_26B9ACFB4();

        sub_26B9AC574();
        v15 = sub_26B9ACFF4();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_26B921E30(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_26B921A0C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_26B921678();
      goto LABEL_16;
    }

    sub_26B9217D4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_26B9ACFB4();
  sub_26B9AC574();
  result = sub_26B9ACFF4();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_26B9ACEB4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_26B9ACF14();
  __break(1u);
  return result;
}

uint64_t sub_26B921FB0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_26B9ABF24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}