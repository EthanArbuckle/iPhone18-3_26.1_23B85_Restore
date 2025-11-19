uint64_t sub_20BFC1EBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20BFC1FCC()
{
  v1 = v0[9];
  sub_20C13B454();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20B517000, v3, v4, "[ActiveWorkoutPlanProvider] Failed to query workout plan template with error: %@", v7, 0xCu);
    sub_20B520158(v8, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v8, -1, -1);
    MEMORY[0x20F2F6A40](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[2];
  (*(v0[5] + 8))(v0[6], v0[4]);
  v12 = sub_20C135814();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_20BFC21AC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v3 = sub_20C133954();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  v2[10] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[11] = v4;
  v5 = swift_task_alloc();
  v2[12] = v5;
  *v5 = v2;
  v5[1] = sub_20BFC2338;

  return sub_20BFC13A8(v4);
}

uint64_t sub_20BFC2338()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_20BFC2448, v1, 0);
}

uint64_t sub_20BFC2448()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  sub_20B52F9E8(v0[11], v1, &unk_27C76A970);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_20B520158(v0[11], &unk_27C76A970);
    v4 = v0[2];
    sub_20B520158(v0[10], &unk_27C76A970);
    v5 = sub_20C1364E4();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

    v6 = v0[1];

    return v6();
  }

  else
  {
    (*(v0[7] + 32))(v0[9], v0[10], v0[6]);
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_20BFC264C;
    v9 = v0[5];

    return sub_20BFC1AFC(v9);
  }
}

uint64_t sub_20BFC264C()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_20BFC275C, v1, 0);
}

uint64_t sub_20BFC275C()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  (*(v3 + 16))(v0[8], v1, v2);
  sub_20B52F9E8(v4, v5, &unk_27C762300);
  sub_20C1364B4();
  sub_20B520158(v4, &unk_27C762300);
  (*(v3 + 8))(v1, v2);
  v6 = v0[2];
  sub_20B520158(v0[11], &unk_27C76A970);
  v7 = sub_20C1364E4();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_20BFC28F8()
{
  v1[2] = v0;
  v2 = sub_20C13BB84();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_20C136104();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_20C137294();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_20C132EE4();
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();
  v6 = sub_20C133954();
  v1[15] = v6;
  v1[16] = *(v6 - 8);
  v1[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  v1[18] = swift_task_alloc();
  v7 = swift_task_alloc();
  v1[19] = v7;
  v8 = swift_task_alloc();
  v1[20] = v8;
  *v8 = v1;
  v8[1] = sub_20BFC2BA4;

  return sub_20BFC13A8(v7);
}

uint64_t sub_20BFC2BA4()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_20BFC2CB4, v1, 0);
}

uint64_t sub_20BFC2CB4()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  sub_20B52F9E8(v0[19], v1, &unk_27C76A970);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_20B520158(v0[18], &unk_27C76A970);
    sub_20B520158(v0[19], &unk_27C76A970);

    v4 = v0[1];
    v5 = MEMORY[0x277D84FA0];

    return v4(v5);
  }

  else
  {
    v7 = v0[2];
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    v8 = v7[20];
    v9 = v7[21];
    __swift_project_boxed_opaque_existential_1(v7 + 17, v8);
    sub_20C133804();
    v10 = swift_task_alloc();
    v0[21] = v10;
    *v10 = v0;
    v10[1] = sub_20BFC2EC4;
    v11 = v0[14];

    return MEMORY[0x2821ADED8](v11, v8, v9);
  }
}

uint64_t sub_20BFC2EC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *(*v2 + 104);
  v7 = *(*v2 + 96);
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 16);
  if (v1)
  {
    v9 = sub_20BFC3360;
  }

  else
  {
    v9 = sub_20BFC3054;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_20BFC3054()
{
  v1 = v0[10];
  v2 = v0[22];
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(v0[22] + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v28 = (v0[7] + 8);
  v29 = v0[22];

  v11 = 0;
  v27 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v11;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v13 = v0[8];
    v14 = v0[6];
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = *(v1 + 72);
    (*(v1 + 16))(v0[11], *(v29 + 48) + v16 * (v15 | (v11 << 6)), v0[9]);
    sub_20C137264();
    v17 = sub_20C1360F4();
    (*v28)(v13, v14);
    if (v17)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_20BC0825C(0, v27[2] + 1, 1, v27);
      }

      v19 = v27[2];
      v18 = v27[3];
      if (v19 >= v18 >> 1)
      {
        v27 = sub_20BC0825C(v18 > 1, v19 + 1, 1, v27);
      }

      v20 = v0[11];
      v21 = v0[9];
      v27[2] = v19 + 1;
      result = (*(v1 + 32))(v27 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + v19 * v16, v20, v21);
    }

    else
    {
      result = (*(v1 + 8))(v0[11], v0[9]);
    }
  }

  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v11);
    ++v12;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  v23 = v0[16];
  v22 = v0[17];
  v24 = v0[15];

  v25 = sub_20B716824(v27);

  (*(v23 + 8))(v22, v24);
  sub_20B520158(v0[19], &unk_27C76A970);

  v26 = v0[1];

  return v26(v25);
}

uint64_t sub_20BFC3360()
{
  v1 = v0[23];
  sub_20C13B454();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20B517000, v3, v4, "[ActiveWorkoutPlanProvider] Failed to query completed references with error: %@", v6, 0xCu);
    sub_20B520158(v7, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v7, -1, -1);
    MEMORY[0x20F2F6A40](v6, -1, -1);
  }

  v10 = v0[23];
  v12 = v0[16];
  v11 = v0[17];
  v13 = v0[15];
  v15 = v0[4];
  v14 = v0[5];
  v16 = v0[3];

  (*(v15 + 8))(v14, v16);
  (*(v12 + 8))(v11, v13);
  sub_20B520158(v0[19], &unk_27C76A970);

  v17 = v0[1];
  v18 = MEMORY[0x277D84FA0];

  return v17(v18);
}

uint64_t sub_20BFC3574()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_20BFC3684, v1, 0);
}

uint64_t sub_20BFC3684()
{
  v1 = v0[18];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *v1;
    swift_getErrorValue();
    v3 = sub_20C134E24();
    v0[5] = v3;
    v0[6] = sub_20BC04434();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    (*(*(v3 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D511A8], v3);
    v5 = sub_20C13E0D4();
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    if (v5)
    {
      sub_20C13B454();
      v6 = sub_20C13BB74();
      v7 = sub_20C13D1F4();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_20B517000, v6, v7, "[ActiveWorkoutPlanDataProvider] No active workout plan", v8, 2u);
        MEMORY[0x20F2F6A40](v8, -1, -1);
      }

      else
      {
      }

      v17 = v0[11];
      (*(v0[14] + 8))(v0[16], v0[13]);
    }

    else
    {
      sub_20C13B454();
      v10 = v2;
      v11 = sub_20C13BB74();
      v12 = sub_20C13D1D4();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        v15 = v2;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        *(v13 + 4) = v16;
        *v14 = v16;
        _os_log_impl(&dword_20B517000, v11, v12, "[ActiveWorkoutPlanDataProvider] Failed to fetch active workout plan with error: %@", v13, 0xCu);
        sub_20B520158(v14, &unk_27C762E30);
        MEMORY[0x20F2F6A40](v14, -1, -1);
        MEMORY[0x20F2F6A40](v13, -1, -1);
      }

      else
      {
      }

      v18 = v0[12];
      v17 = v0[11];
      (*(v0[14] + 8))(v0[15], v0[13]);
      *(v18 + 176) = 0;
    }

    v19 = sub_20C133954();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  }

  else
  {
    v9 = v0[11];

    sub_20B5DF134(v1, v9, &unk_27C76A970);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_20BFC3A1C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_20BFC3B30;
  }

  else
  {
    v2 = sub_20B523F48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BFC3B30()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BFC3B94(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_20C13BB84();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7715D8);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BFC3CD4, v1, 0);
}

uint64_t sub_20BFC3CD4()
{
  v1 = v0[19];
  v2 = v0[12];
  sub_20C13CDC4();
  v3 = sub_20C13CDF4();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v6 = sub_20B6157E4(0, 0, v1, &unk_20C187C90, v5);
  v0[20] = v6;
  *(v2 + 184) = v6;

  v7 = swift_task_alloc();
  v0[21] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
  *v7 = v0;
  v7[1] = sub_20BFC3E88;
  v10 = v0[18];
  v11 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v10, v6, v8, v9, v11);
}

uint64_t sub_20BFC3E88()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_20BFC3F98, v1, 0);
}

uint64_t sub_20BFC3F98()
{
  v1 = v0[18];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *v1;
    swift_getErrorValue();
    v3 = sub_20C134E24();
    v0[5] = v3;
    v0[6] = sub_20BC04434();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    (*(*(v3 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D51198], v3);
    v5 = sub_20C13E0D4();
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    if (v5)
    {
      sub_20C13B454();
      v6 = sub_20C13BB74();
      v7 = sub_20C13D1F4();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_20B517000, v6, v7, "[ActiveWorkoutPlanDataProvider] No workout plan template", v8, 2u);
        MEMORY[0x20F2F6A40](v8, -1, -1);
      }

      else
      {
      }

      v17 = v0[11];
      (*(v0[14] + 8))(v0[16], v0[13]);
    }

    else
    {
      sub_20C13B454();
      v10 = v2;
      v11 = sub_20C13BB74();
      v12 = sub_20C13D1D4();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        v15 = v2;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        *(v13 + 4) = v16;
        *v14 = v16;
        _os_log_impl(&dword_20B517000, v11, v12, "[ActiveWorkoutPlanDataProvider] Failed to fetch template for active plan with error: %@", v13, 0xCu);
        sub_20B520158(v14, &unk_27C762E30);
        MEMORY[0x20F2F6A40](v14, -1, -1);
        MEMORY[0x20F2F6A40](v13, -1, -1);
      }

      else
      {
      }

      v18 = v0[12];
      v17 = v0[11];
      (*(v0[14] + 8))(v0[15], v0[13]);
      *(v18 + 184) = 0;
    }

    v19 = sub_20C135814();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  }

  else
  {
    v9 = v0[11];

    sub_20B5DF134(v1, v9, &unk_27C762300);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_20BFC4330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a1;
  v4[14] = a4;
  v5 = sub_20C13BB84();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = sub_20C133954();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BFC4490, 0, 0);
}

uint64_t sub_20BFC4490()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[24] = v2;
    *v2 = v0;
    v2[1] = sub_20BFC493C;
    v3 = v0[22];

    return sub_20BFC13A8(v3);
  }

  (*(v0[19] + 56))(v0[22], 1, 1, v0[18]);
  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[19];
  sub_20B52F9E8(v0[22], v5, &unk_27C76A970);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20B520158(v0[21], &unk_27C76A970);
    sub_20C13B454();
    v8 = sub_20C13BB74();
    v9 = sub_20C13D1F4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20B517000, v8, v9, "[ActiveWorkoutPlanDataProvider] No active workout plan. Returning nil template", v10, 2u);
      MEMORY[0x20F2F6A40](v10, -1, -1);
    }

    v11 = v0[22];
    v13 = v0[16];
    v12 = v0[17];
    v14 = v0[15];
    v15 = v0[13];

    (*(v13 + 8))(v12, v14);
    goto LABEL_14;
  }

  (*(v0[19] + 32))(v0[20], v0[21], v0[18]);
  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  if (!v16)
  {
    v11 = v0[22];
    v15 = v0[13];
    (*(v0[19] + 8))(v0[20], v0[18]);
LABEL_14:
    sub_20B520158(v11, &unk_27C76A970);
    v25 = sub_20C135814();
    (*(*(v25 - 8) + 56))(v15, 1, 1, v25);

    v26 = v0[1];

    return v26();
  }

  sub_20B51CC64(v16 + 136, (v0 + 2));

  v17 = v0[5];
  v18 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769650);
  v19 = sub_20C132EE4();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_20C14F980;
  sub_20C133854();
  v23 = sub_20BE8D710(v22);
  v0[25] = v23;
  swift_setDeallocating();
  (*(v20 + 8))(v22 + v21, v19);
  swift_deallocClassInstance();
  v24 = swift_task_alloc();
  v0[26] = v24;
  *v24 = v0;
  v24[1] = sub_20BFC4E34;

  return MEMORY[0x2821ADEF0](v23, v17, v18);
}

uint64_t sub_20BFC493C()
{

  return MEMORY[0x2822009F8](sub_20BFC4A54, 0, 0);
}

uint64_t sub_20BFC4A54()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  sub_20B52F9E8(v0[22], v1, &unk_27C76A970);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_20B520158(v0[21], &unk_27C76A970);
    sub_20C13B454();
    v4 = sub_20C13BB74();
    v5 = sub_20C13D1F4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20B517000, v4, v5, "[ActiveWorkoutPlanDataProvider] No active workout plan. Returning nil template", v6, 2u);
      MEMORY[0x20F2F6A40](v6, -1, -1);
    }

    v7 = v0[22];
    v9 = v0[16];
    v8 = v0[17];
    v10 = v0[15];
    v11 = v0[13];

    (*(v9 + 8))(v8, v10);
    goto LABEL_10;
  }

  (*(v0[19] + 32))(v0[20], v0[21], v0[18]);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v7 = v0[22];
    v11 = v0[13];
    (*(v0[19] + 8))(v0[20], v0[18]);
LABEL_10:
    sub_20B520158(v7, &unk_27C76A970);
    v21 = sub_20C135814();
    (*(*(v21 - 8) + 56))(v11, 1, 1, v21);

    v22 = v0[1];

    return v22();
  }

  sub_20B51CC64(Strong + 136, (v0 + 2));

  v13 = v0[5];
  v14 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769650);
  v15 = sub_20C132EE4();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20C14F980;
  sub_20C133854();
  v19 = sub_20BE8D710(v18);
  v0[25] = v19;
  swift_setDeallocating();
  (*(v16 + 8))(v18 + v17, v15);
  swift_deallocClassInstance();
  v20 = swift_task_alloc();
  v0[26] = v20;
  *v20 = v0;
  v20[1] = sub_20BFC4E34;

  return MEMORY[0x2821ADEF0](v19, v13, v14);
}

uint64_t sub_20BFC4E34(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = sub_20BFC5070;
  }

  else
  {
    *(v4 + 224) = a1;
    v5 = sub_20BFC4F80;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20BFC4F80()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  sub_20BEDD6DC(v0[28], v0[13]);

  (*(v3 + 8))(v2, v4);
  sub_20B520158(v1, &unk_27C76A970);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v5 = v0[1];

  return v5();
}

uint64_t sub_20BFC5070()
{
  v1 = v0[22];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_20B520158(v1, &unk_27C76A970);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v2 = v0[1];

  return v2();
}

uint64_t sub_20BFC5154()
{
  v1 = *(v0 + 16);
  if (*(v1 + 176))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    sub_20C13CE34();
  }

  v2 = *(v0 + 16);
  *(v1 + 176) = 0;

  if (*(v2 + 184))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    sub_20C13CE34();
  }

  *(v2 + 184) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20BFC52A0()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 136);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_20BFC52F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BFC4330(a1, v4, v5, v6);
}

uint64_t sub_20BFC53AC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20BFC0AC4(v0);
}

uint64_t sub_20BFC543C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20BFC0EE4(v0);
}

id UILabel.withWordWrapping(numberOfLines:)(uint64_t a1)
{
  [v1 setLineBreakMode_];
  [v4 setNumberOfLines_];

  return v4;
}

id UILabel.withTightening()()
{
  [v0 setAllowsDefaultTighteningForTruncation_];

  return v2;
}

id UILabel.withFont(_:)(uint64_t a1)
{
  [v1 setFont_];

  return v3;
}

id UILabel.withTextColor(_:)(uint64_t a1)
{
  [v1 setTextColor_];

  return v3;
}

id UILabel.forDynamicType()()
{
  [v0 setAdjustsFontForContentSizeCategory_];

  return v2;
}

id UILabel.withTextAlignment(_:)(uint64_t a1)
{
  [v1 setTextAlignment_];

  return v3;
}

id UILabel.withNumberOfLines(_:)(uint64_t a1)
{
  [v1 setNumberOfLines_];

  return v3;
}

id UILabel.withLineBreakMode(_:)(uint64_t a1)
{
  [v1 setLineBreakMode_];

  return v3;
}

id UILabel.withText(_:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_20C13C914();
  }

  else
  {
    v2 = 0;
  }

  [v4 setText_];

  return v4;
}

id UILabel.adjustingFontToFitWidth()()
{
  [v0 setAdjustsFontSizeToFitWidth_];

  return v2;
}

id UILabel.withMinimumScaleFactor(_:)()
{
  [v0 setMinimumScaleFactor_];

  return v2;
}

uint64_t ARUIRingType.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 1702260589;
    }

    if (a1 == 3)
    {
      return 7105633;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x646E617473;
    }

    if (a1 == 1)
    {
      return 0x6573696372657865;
    }
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20BFC58F8()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x646E617473;
    }

    if (v1 == 1)
    {
      return 0x6573696372657865;
    }

    goto LABEL_11;
  }

  if (v1 == 2)
  {
    return 1702260589;
  }

  if (v1 != 3)
  {
LABEL_11:
    result = sub_20C13DE24();
    __break(1u);
    return result;
  }

  return 7105633;
}

uint64_t sub_20BFC59D0(char a1)
{
  v3 = sub_20C13C554();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_lazyLockupFetcher);

  v9 = sub_20C02F3E0(v8, v7, 0, 0);

  v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_decriptorIdentifier);
  v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_decriptorIdentifier + 8);
  v33 = 0uLL;
  LOBYTE(v34) = 1;
  *(&v34 + 1) = 0;
  *&v35 = 0;
  WORD4(v35) = 128;
  v36 = 0uLL;
  *&v37 = v10;
  *(&v37 + 1) = v11;
  v38 = 0uLL;
  LOBYTE(v39) = 0;
  *(&v39 + 1) = v9;
  *&v40[0] = MEMORY[0x277D84F90];
  *(v40 + 8) = 0u;
  *(&v40[1] + 8) = 0u;
  *(&v40[2] + 1) = 0;
  v41 = 2;
  nullsub_1(&v33);
  v12 = v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row;
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 144);
  v42[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 128);
  v42[9] = v13;
  v43 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 160);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 80);
  v42[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 64);
  v42[5] = v14;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 112);
  v42[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 96);
  v42[7] = v15;
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 16);
  v42[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row);
  v42[1] = v16;
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 48);
  v42[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 32);
  v42[3] = v17;
  v18 = v40[2];
  *(v12 + 128) = v40[1];
  *(v12 + 144) = v18;
  *(v12 + 160) = v41;
  v19 = v38;
  *(v12 + 64) = v37;
  *(v12 + 80) = v19;
  v20 = v40[0];
  *(v12 + 96) = v39;
  *(v12 + 112) = v20;
  v21 = v34;
  *v12 = v33;
  *(v12 + 16) = v21;
  v22 = v36;
  *(v12 + 32) = v35;
  *(v12 + 48) = v22;

  sub_20B634408(v42);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v25 = sub_20B61DF90(v1, result);
      if (v26)
      {
        v28 = v26;
        v29 = v27;
        v32 = v25;
        v30 = v1;
        sub_20B5E2E18();
        *v6 = sub_20C13D374();
        (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
        v31 = sub_20C13C584();
        result = (*(v4 + 8))(v6, v3);
        if ((v31 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        if (a1 < 0)
        {
          sub_20C10DDE0(v30, v32, a1 & 1, v24);
        }

        else
        {
          sub_20B621860(v32, v28, v29, v30, a1 & 1, v24);
        }
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BFC5CBC()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_20BFC5DC4()
{
  sub_20BFC5CBC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChartGalleryShelf()
{
  result = qword_27C7715E8;
  if (!qword_27C7715E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BFC5E70()
{
  result = sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20BFC5F40()
{
  sub_20BFC602C(0);
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BFC602C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  sub_20C02BC6C(*(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_placeholders), v10);
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  *(v14 + 24) = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20BFC6B48;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_20B5DF3B8;
  *(v16 + 24) = v15;
  (*(v5 + 16))(v7, v10, v4);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = (v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v5 + 32))(v19 + v17, v7, v4);
  v20 = (v19 + v18);
  *v20 = sub_20B66A8B4;
  v20[1] = v16;

  sub_20C137C94();
  v21 = *(v5 + 8);
  v21(v10, v4);
  v22 = sub_20C137CB4();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v22(sub_20B5DF6DC, v23);

  return (v21)(v13, v4);
}

uint64_t sub_20BFC6318(uint64_t a1)
{
  v35 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = v6;
    v34 = v9;
    sub_20C13B534();
    v16 = sub_20C13BB74();
    v17 = sub_20C13D1F4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20B517000, v16, v17, "[ChartGalleryShelf] archived sessions updated, updating shelf", v18, 2u);
      MEMORY[0x20F2F6A40](v18, -1, -1);
    }

    (*(v11 + 8))(v13, v10);

    v19 = sub_20C13AEB4();
    v20 = v33;
    sub_20C02CCD0(v19, v33);

    v21 = swift_allocObject();
    *(v21 + 16) = sub_20BFC6B74;
    *(v21 + 24) = v15;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_20B849B38;
    *(v22 + 24) = v21;
    v23 = v32;
    (*(v2 + 16))(v32, v20, v1);
    v24 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v25 = swift_allocObject();
    (*(v2 + 32))(v25 + v24, v23, v1);
    v26 = (v25 + ((v3 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v26 = sub_20B66A8B4;
    v26[1] = v22;

    v27 = v34;
    sub_20C137C94();
    v28 = *(v2 + 8);
    v28(v20, v1);
    v29 = sub_20C137CB4();
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    v29(sub_20B5DF6DC, v30);

    return (v28)(v27, v1);
  }

  return result;
}

uint64_t sub_20BFC6748(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  sub_20C02C77C(a1, v10);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20BFC6B38;
  *(v14 + 24) = v2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20B622D08;
  *(v15 + 24) = v14;
  (*(v5 + 16))(v7, v10, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, v7, v4);
  v18 = (v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_20B5DF3D4;
  v18[1] = v15;

  sub_20C137C94();
  v19 = *(v5 + 8);
  v19(v10, v4);
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_20B52347C, v21);

  return (v19)(v13, v4);
}

uint64_t sub_20BFC6A0C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BFC6A84@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20BFC6B78()
{
  if (*v0)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_20BFC6BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_20C13DFF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C13DFF4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20BFC6CA8(uint64_t a1)
{
  v2 = sub_20BFC7314();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20BFC6CE4(uint64_t a1)
{
  v2 = sub_20BFC7314();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20BFC6D2C(uint64_t a1)
{
  v2 = sub_20BFC7420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20BFC6D68(uint64_t a1)
{
  v2 = sub_20BFC7420();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20BFC6DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C13DFF4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20BFC6E24(uint64_t a1)
{
  v2 = sub_20BFC73CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20BFC6E60(uint64_t a1)
{
  v2 = sub_20BFC73CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CatalogTipPlayerConfiguration.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7715F8);
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v23 = &v20 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771600);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v22 = &v20 - v5;
  v21 = type metadata accessor for CatalogTipPlaybackContent();
  MEMORY[0x28223BE20](v21);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CatalogTipPlayerConfiguration();
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771608);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20BFC7314();
  sub_20C13E1F4();
  sub_20BFC7368(v28, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = 1;
    sub_20BFC73CC();
    v15 = v23;
    sub_20C13DF24();
    v16 = v27;
    sub_20C13DF54();

    (*(v26 + 8))(v15, v16);
  }

  else
  {
    sub_20BFC7A84(v10, v7, type metadata accessor for CatalogTipPlaybackContent);
    v29 = 0;
    sub_20BFC7420();
    v17 = v22;
    sub_20C13DF24();
    sub_20BFC83CC(&qword_27C771628, type metadata accessor for CatalogTipPlaybackContent);
    v18 = v25;
    sub_20C13DF64();
    (*(v24 + 8))(v17, v18);
    sub_20BFC87C4(v7, type metadata accessor for CatalogTipPlaybackContent);
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t type metadata accessor for CatalogTipPlayerConfiguration()
{
  result = qword_281100C10;
  if (!qword_281100C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20BFC7314()
{
  result = qword_27C771610;
  if (!qword_27C771610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771610);
  }

  return result;
}

uint64_t sub_20BFC7368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogTipPlayerConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20BFC73CC()
{
  result = qword_27C771618;
  if (!qword_27C771618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771618);
  }

  return result;
}

unint64_t sub_20BFC7420()
{
  result = qword_27C771620;
  if (!qword_27C771620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771620);
  }

  return result;
}

uint64_t CatalogTipPlayerConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771630);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771638);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v51 = v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771640);
  v53 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v43 - v8;
  v10 = type metadata accessor for CatalogTipPlayerConfiguration();
  MEMORY[0x28223BE20](v10);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v43 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v43 - v17;
  v19 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_20BFC7314();
  v20 = v54;
  sub_20C13E1E4();
  if (!v20)
  {
    v44 = v12;
    v45 = v15;
    v54 = v18;
    v21 = v10;
    v22 = v52;
    v23 = sub_20C13DF14();
    v24 = v9;
    if (*(v23 + 16) == 1)
    {
      v43[0] = v21;
      v43[1] = v23;
      if (*(v23 + 32))
      {
        v57 = 1;
        sub_20BFC73CC();
        v25 = v50;
        sub_20C13DEB4();
        v26 = v53;
        v27 = v54;
        v28 = v22;
        v29 = v25;
        v30 = v49;
        v51 = sub_20C13DEF4();
        v40 = v39;
        (*(v48 + 8))(v29, v30);
        (*(v26 + 8))(v24, v7);
        swift_unknownObjectRelease();
        v41 = v44;
        *v44 = v51;
        v41[1] = v40;
        swift_storeEnumTagMultiPayload();
        v42 = v41;
      }

      else
      {
        v56 = 0;
        sub_20BFC7420();
        v34 = v51;
        sub_20C13DEB4();
        v35 = v53;
        v27 = v54;
        v28 = v22;
        type metadata accessor for CatalogTipPlaybackContent();
        v50 = v7;
        sub_20BFC83CC(&qword_27C771650, type metadata accessor for CatalogTipPlaybackContent);
        v37 = v45;
        v38 = v47;
        sub_20C13DF04();
        (*(v46 + 8))(v34, v38);
        (*(v35 + 8))(v24, v50);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v42 = v37;
      }

      sub_20BFC7A84(v42, v27, type metadata accessor for CatalogTipPlayerConfiguration);
      sub_20BFC7A84(v27, v28, type metadata accessor for CatalogTipPlayerConfiguration);
    }

    else
    {
      v31 = sub_20C13DCF4();
      swift_allocError();
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771648);
      *v33 = v21;
      sub_20C13DEC4();
      sub_20C13DCE4();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
      swift_willThrow();
      (*(v53 + 8))(v9, v7);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t sub_20BFC7A84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CatalogTipPlayerConfiguration.hash(into:)()
{
  v1 = type metadata accessor for CatalogTipPlaybackContent();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CatalogTipPlayerConfiguration();
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20BFC7368(v0, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13CA64();
  }

  else
  {
    sub_20BFC7A84(v6, v3, type metadata accessor for CatalogTipPlaybackContent);
    MEMORY[0x20F2F58E0](0);
    CatalogTipPlaybackContent.hash(into:)();
    return sub_20BFC87C4(v3, type metadata accessor for CatalogTipPlaybackContent);
  }
}

uint64_t CatalogTipPlayerConfiguration.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CatalogTipPlaybackContent();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CatalogTipPlayerConfiguration();
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13E164();
  sub_20BFC7368(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13CA64();
  }

  else
  {
    sub_20BFC7A84(v7, v4, type metadata accessor for CatalogTipPlaybackContent);
    MEMORY[0x20F2F58E0](0);
    CatalogTipPlaybackContent.hash(into:)();
    sub_20BFC87C4(v4, type metadata accessor for CatalogTipPlaybackContent);
  }

  return sub_20C13E1B4();
}

uint64_t sub_20BFC7DE0()
{
  v1 = type metadata accessor for CatalogTipPlaybackContent();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20BFC7368(v0, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13CA64();
  }

  else
  {
    sub_20BFC7A84(v6, v3, type metadata accessor for CatalogTipPlaybackContent);
    MEMORY[0x20F2F58E0](0);
    CatalogTipPlaybackContent.hash(into:)();
    return sub_20BFC87C4(v3, type metadata accessor for CatalogTipPlaybackContent);
  }
}

uint64_t sub_20BFC7F2C()
{
  v1 = v0;
  v2 = type metadata accessor for CatalogTipPlaybackContent();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13E164();
  sub_20BFC7368(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13CA64();
  }

  else
  {
    sub_20BFC7A84(v7, v4, type metadata accessor for CatalogTipPlaybackContent);
    MEMORY[0x20F2F58E0](0);
    CatalogTipPlaybackContent.hash(into:)();
    sub_20BFC87C4(v4, type metadata accessor for CatalogTipPlaybackContent);
  }

  return sub_20C13E1B4();
}

uint64_t _s9SeymourUI29CatalogTipPlayerConfigurationO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogTipPlaybackContent();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for CatalogTipPlayerConfiguration();
  MEMORY[0x28223BE20](v7);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = (&v24 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7716A8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - v14;
  v17 = (&v24 + *(v16 + 56) - v14);
  sub_20BFC7368(a1, &v24 - v14);
  sub_20BFC7368(a2, v17);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20BFC7368(v15, v12);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_20BFC7A84(v17, v6, type metadata accessor for CatalogTipPlaybackContent);
      v22 = static CatalogTipPlaybackContent.== infix(_:_:)(v12, v6);
      sub_20BFC87C4(v6, type metadata accessor for CatalogTipPlaybackContent);
      sub_20BFC87C4(v12, type metadata accessor for CatalogTipPlaybackContent);
      sub_20BFC87C4(v15, type metadata accessor for CatalogTipPlayerConfiguration);
      return v22 & 1;
    }

    sub_20BFC87C4(v12, type metadata accessor for CatalogTipPlaybackContent);
    goto LABEL_12;
  }

  sub_20BFC7368(v15, v9);
  v19 = *v9;
  v18 = v9[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_12:
    sub_20BFC875C(v15);
    goto LABEL_13;
  }

  if (v19 == *v17 && v18 == v17[1])
  {

    goto LABEL_16;
  }

  v21 = sub_20C13DFF4();

  if (v21)
  {
LABEL_16:
    sub_20BFC87C4(v15, type metadata accessor for CatalogTipPlayerConfiguration);
    v22 = 1;
    return v22 & 1;
  }

  sub_20BFC87C4(v15, type metadata accessor for CatalogTipPlayerConfiguration);
LABEL_13:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_20BFC83CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20BFC8448()
{
  result = qword_27C771660;
  if (!qword_27C771660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771660);
  }

  return result;
}

unint64_t sub_20BFC84A0()
{
  result = qword_27C771668;
  if (!qword_27C771668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771668);
  }

  return result;
}

unint64_t sub_20BFC84F8()
{
  result = qword_27C771670;
  if (!qword_27C771670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771670);
  }

  return result;
}

unint64_t sub_20BFC8550()
{
  result = qword_27C771678;
  if (!qword_27C771678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771678);
  }

  return result;
}

unint64_t sub_20BFC85A8()
{
  result = qword_27C771680;
  if (!qword_27C771680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771680);
  }

  return result;
}

unint64_t sub_20BFC8600()
{
  result = qword_27C771688;
  if (!qword_27C771688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771688);
  }

  return result;
}

unint64_t sub_20BFC8658()
{
  result = qword_27C771690;
  if (!qword_27C771690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771690);
  }

  return result;
}

unint64_t sub_20BFC86B0()
{
  result = qword_27C771698;
  if (!qword_27C771698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771698);
  }

  return result;
}

unint64_t sub_20BFC8708()
{
  result = qword_27C7716A0;
  if (!qword_27C7716A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7716A0);
  }

  return result;
}

uint64_t sub_20BFC875C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7716A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BFC87C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20BFC88A8()
{
  result = qword_27C7716B0;
  if (!qword_27C7716B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7716B0);
  }

  return result;
}

id NotificationConsentViewController.__allocating_init(dependencies:contentAvailability:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_20BFCBE74(a1, a2);

  return v2;
}

uint64_t sub_20BFC8958@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_continueButtonHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20B5E0E90;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20B584050(v4);
}

uint64_t sub_20BFC89F8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20BFCC794;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_continueButtonHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_20B584050(v3);
  return sub_20B583ECC(v8);
}

uint64_t NotificationConsentViewController.continueButtonHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_continueButtonHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_20B584050(*v1);
  return v2;
}

uint64_t NotificationConsentViewController.continueButtonHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_continueButtonHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_20B583ECC(v6);
}

id NotificationConsentViewController.__allocating_init(contentAvailability:)(uint64_t a1)
{
  v3 = sub_20C135534();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  (*(v4 + 16))(v6, a1, v3);
  v7 = sub_20C1380F4();
  v8 = objc_allocWithZone(v1);
  v9 = sub_20BFC8CFC(v11, v6, v7);
  (*(v4 + 8))(a1, v3);
  return v9;
}

id sub_20BFC8CFC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v59 = a3;
  v54 = a2;
  v55 = a1;
  ObjectType = swift_getObjectType();
  v58 = sub_20C13A814();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_scrollView;
  v7 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v6] = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_contentView;
  v9 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v9 &selRef_count + 2];
  *&v3[v8] = v9;
  v10 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_titleLabel;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v11 &selRef_count + 2];
  [v11 setAdjustsFontForContentSizeCategory_];
  v12 = *MEMORY[0x277D743F8];
  v13 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769A8] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  v53 = xmmword_20C14F980;
  *(inited + 16) = xmmword_20C14F980;
  v15 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v16 = swift_initStackObject();
  v17 = MEMORY[0x277D74430];
  *(v16 + 16) = v53;
  v18 = *v17;
  *(v16 + 32) = *v17;
  *(v16 + 40) = v12;
  v19 = v15;
  v20 = v18;
  v21 = sub_20B6B134C(v16);
  swift_setDeallocating();
  sub_20B520158(v16 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v21;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20BFCC7BC(&qword_27C7618A0, type metadata accessor for AttributeName);
  v22 = sub_20C13C744();

  v23 = [v13 fontDescriptorByAddingAttributes_];

  v24 = objc_opt_self();
  v25 = [v24 fontWithDescriptor:v23 size:0.0];

  [v11 setFont_];
  v26 = objc_opt_self();
  v27 = [v26 whiteColor];
  [v11 setTextColor_];

  LODWORD(v28) = 1148846080;
  [v11 setContentHuggingPriority:1 forAxis:v28];
  LODWORD(v29) = 1148846080;
  [v11 setContentCompressionResistancePriority:1 forAxis:v29];

  *&v4[v10] = v11;
  v30 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_bodyLabel;
  v31 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  [v31 setAdjustsFontForContentSizeCategory_];
  v32 = [v24 preferredFontForTextStyle_];
  [v31 setFont_];

  v33 = [v26 secondaryLabelColor];
  v34 = v54;
  [v31 setTextColor_];

  LODWORD(v35) = 1148846080;
  [v31 setContentHuggingPriority:1 forAxis:v35];
  LODWORD(v36) = 1148846080;
  [v31 setContentCompressionResistancePriority:1 forAxis:v36];

  *&v4[v30] = v31;
  v37 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_continueButton;
  v38 = [objc_opt_self() boldButton];
  LODWORD(v39) = 1148846080;
  [v38 setContentHuggingPriority:1 forAxis:v39];
  v40 = v55;
  LODWORD(v41) = 1148846080;
  [v38 setContentCompressionResistancePriority:1 forAxis:v41];

  *&v4[v37] = v38;
  v42 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_fallbackLocalizationBundle;
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v42] = [objc_opt_self() bundleForClass_];
  v44 = &v4[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_continueButtonHandler];
  *v44 = 0;
  v44[1] = 0;
  (*(v57 + 104))(v56, *MEMORY[0x277D4F070], v58);
  v62 = 1;
  sub_20C13A384();
  sub_20B52F9E8(v40, &v4[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_storefrontLocalizer], &qword_27C76AB58);
  v4[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_platform] = v59;
  v45 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_contentAvailability;
  v46 = sub_20C135534();
  v47 = *(v46 - 8);
  (*(v47 + 16))(&v4[v45], v34, v46);
  sub_20C1380F4();
  v48 = sub_20C138104();
  if (v48 == sub_20C138104())
  {
    v49 = type metadata accessor for DynamicHeightImageView();
  }

  else
  {
    type metadata accessor for NoIntrinsicImageView();
    v49 = swift_getObjCClassFromMetadata();
  }

  v50 = [objc_allocWithZone(v49) init];
  [v50 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_imageView] = v50;
  v61.receiver = v4;
  v61.super_class = ObjectType;
  v51 = objc_msgSendSuper2(&v61, sel_initWithNibName_bundle_, 0, 0);
  (*(v47 + 8))(v34, v46);
  sub_20B520158(v40, &qword_27C76AB58);
  return v51;
}

id NotificationConsentViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t NotificationConsentViewController.onContinue(_:)(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_continueButtonHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  sub_20B583ECC(v6);
}

Swift::Void __swiftcall NotificationConsentViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v144 - v7;
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v144 - v11;
  v154.receiver = v1;
  v154.super_class = ObjectType;
  objc_msgSendSuper2(&v154, sel_viewDidLoad, v10);
  v13 = [v1 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_27;
  }

  v14 = v13;
  v146 = objc_opt_self();
  v15 = [v146 secondarySystemGroupedBackgroundColor];
  [v14 setBackgroundColor_];

  [v1 setModalInPresentation_];
  v16 = *&v1[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_imageView];
  v17 = [v1 traitCollection];
  v18 = sub_20BFCA81C(v17);

  [v16 setImage_];
  [v16 setClipsToBounds_];
  v148 = v16;
  [v16 setContentMode_];
  v19 = *&v1[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_titleLabel];
  v20 = sub_20BFCA908();
  [v19 setAttributedText_];

  [v19 setTextAlignment_];
  v149 = v19;
  [v19 setNumberOfLines_];
  v21 = *&v1[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_bodyLabel];
  v22 = v1[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_platform];
  v147 = v22;
  if (!v22)
  {
    sub_20BFCB290();
    goto LABEL_6;
  }

  if (v22 == 1)
  {
    sub_20BFCAAE8();
LABEL_6:
    v23 = sub_20C13C914();

    [v21 setText_];

    [v21 setTextAlignment_];
    v150 = v21;
    [v21 setNumberOfLines_];
    v24 = *&v1[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_continueButton];
    [v24 addTarget:v1 action:sel_didTapContinueButton forControlEvents:64];
    sub_20BFCAAE8();
    v25 = sub_20C13C914();

    [v24 setTitle:v25 forState:0];

    sub_20C13D884();
    v26 = sub_20C13D874();
    v27 = *(*(v26 - 8) + 48);
    if (v27(v12, 1, v26))
    {
      sub_20B52F9E8(v12, v5, &qword_27C764C60);
      sub_20C13D894();
      sub_20B520158(v12, &qword_27C764C60);
    }

    else
    {
      [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
      sub_20C13D774();
      sub_20C13D894();
    }

    sub_20C13D884();
    if (v27(v8, 1, v26))
    {
      sub_20B52F9E8(v8, v5, &qword_27C764C60);
      sub_20C13D894();
      sub_20B520158(v8, &qword_27C764C60);
    }

    else
    {
      v28 = [v146 secondarySystemBackgroundColor];
      sub_20C13D764();
      sub_20C13D894();
    }

    v29 = v150;
    v30 = [v1 view];
    if (v30)
    {
      v31 = v30;
      v32 = *&v1[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_scrollView];
      [v30 addSubview_];

      v33 = *&v1[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_contentView];
      [v32 addSubview_];
      [v33 addSubview_];
      [v33 addSubview_];
      [v33 addSubview_];
      [v33 addSubview_];
      v34 = [v1 view];
      if (v34)
      {
        v35 = v34;
        v145 = v24;
        [v34 directionalLayoutMargins];
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v43 = v42;

        [v33 setDirectionalLayoutMargins_];
        v44 = 24.0;
        if (v147)
        {
          v44 = 74.0;
        }

        [v32 setDirectionalLayoutMargins_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_20C1647C0;
        v46 = [v32 topAnchor];
        v47 = [v1 view];
        if (v47)
        {
          v48 = v47;
          v49 = [v47 topAnchor];

          v50 = [v46 constraintEqualToAnchor_];
          *(inited + 32) = v50;
          v51 = [v32 bottomAnchor];
          v52 = [v1 view];
          if (v52)
          {
            v53 = v52;
            v54 = [v52 bottomAnchor];

            v55 = [v51 constraintEqualToAnchor_];
            *(inited + 40) = v55;
            v56 = [v32 leadingAnchor];
            v57 = [v1 view];
            if (v57)
            {
              v58 = v57;
              v59 = [v57 leadingAnchor];

              v60 = [v56 constraintEqualToAnchor_];
              *(inited + 48) = v60;
              v61 = [v32 trailingAnchor];
              v62 = [v1 view];
              v146 = v1;
              if (v62)
              {
                v63 = v62;
                v64 = [v62 trailingAnchor];

                v65 = [v61 constraintEqualToAnchor_];
                *(inited + 56) = v65;
                v66 = [v33 leadingAnchor];
                v67 = [v32 leadingAnchor];
                v68 = [v66 constraintEqualToAnchor_];

                *(inited + 64) = v68;
                v69 = [v33 trailingAnchor];
                v70 = [v32 trailingAnchor];
                v71 = [v69 constraintEqualToAnchor_];

                *(inited + 72) = v71;
                v72 = [v33 topAnchor];
                v73 = [v32 topAnchor];
                v74 = [v72 constraintEqualToAnchor_];

                *(inited + 80) = v74;
                v75 = [v33 bottomAnchor];
                v76 = [v32 bottomAnchor];
                v77 = [v75 constraintEqualToAnchor_];

                *(inited + 88) = v77;
                v78 = [v33 widthAnchor];
                v79 = v146;
                v80 = [v146 view];
                if (v80)
                {
                  v81 = v80;
                  v82 = [v80 widthAnchor];

                  v83 = [v78 constraintEqualToAnchor_];
                  *(inited + 96) = v83;
                  v84 = [v33 heightAnchor];
                  v85 = [v79 view];
                  if (v85)
                  {
                    v86 = v85;
                    v87 = [v85 heightAnchor];

                    v88 = [v84 constraintGreaterThanOrEqualToAnchor_];
                    *(inited + 104) = v88;
                    v89 = v149;
                    v90 = [v149 leadingAnchor];
                    v91 = [v32 layoutMarginsGuide];
                    v92 = [v91 leadingAnchor];

                    v93 = [v90 constraintEqualToAnchor_];
                    *(inited + 112) = v93;
                    v94 = [v89 trailingAnchor];
                    v95 = [v32 &selRef_startPrewarming + 1];
                    v96 = [v95 trailingAnchor];

                    v97 = [v94 constraintEqualToAnchor_];
                    *(inited + 120) = v97;
                    v98 = [v89 firstBaselineAnchor];
                    v99 = [v148 bottomAnchor];
                    v100 = 74.0;
                    if (!v147)
                    {
                      v100 = 64.0;
                    }

                    v101 = [v98 constraintEqualToAnchor:v99 constant:v100];

                    *(inited + 128) = v101;
                    v102 = [v89 centerXAnchor];
                    v103 = [v33 centerXAnchor];
                    v104 = [v102 constraintEqualToAnchor_];

                    *(inited + 136) = v104;
                    v105 = v150;
                    v106 = [v150 leadingAnchor];
                    v107 = [v32 layoutMarginsGuide];
                    v108 = [v107 leadingAnchor];

                    v109 = [v106 constraintEqualToAnchor_];
                    *(inited + 144) = v109;
                    v110 = [v105 trailingAnchor];
                    v111 = [v32 layoutMarginsGuide];
                    v112 = [v111 trailingAnchor];

                    v113 = [v110 constraintEqualToAnchor_];
                    *(inited + 152) = v113;
                    v114 = [v105 firstBaselineAnchor];
                    v115 = [v89 lastBaselineAnchor];
                    v116 = [v114 constraintEqualToAnchor:v115 constant:44.0];

                    *(inited + 160) = v116;
                    v117 = [v105 centerXAnchor];
                    v118 = [v33 centerXAnchor];
                    v119 = [v117 constraintEqualToAnchor_];

                    *(inited + 168) = v119;
                    v120 = v145;
                    v121 = [v145 leadingAnchor];
                    v122 = [v32 layoutMarginsGuide];
                    v123 = [v122 leadingAnchor];

                    v124 = [v121 constraintEqualToAnchor_];
                    *(inited + 176) = v124;
                    v125 = [v120 trailingAnchor];
                    v126 = [v32 layoutMarginsGuide];
                    v127 = [v126 trailingAnchor];

                    v128 = [v125 constraintEqualToAnchor_];
                    *(inited + 184) = v128;
                    v129 = [v120 widthAnchor];
                    v130 = [v129 constraintEqualToConstant_];

                    type metadata accessor for UILayoutPriority(0);
                    v152 = 1148846080;
                    v151 = 1065353216;
                    sub_20BFCC7BC(&qword_27C768270, type metadata accessor for UILayoutPriority);
                    sub_20C13BBA4();
                    LODWORD(v131) = v153;
                    [v130 setPriority_];
                    *(inited + 192) = v130;
                    v132 = [v120 bottomAnchor];
                    v133 = [v33 &selRef_startPrewarming + 1];
                    v134 = [v133 bottomAnchor];

                    v135 = [v132 constraintEqualToAnchor:v134 constant:-55.0];
                    *(inited + 200) = v135;
                    v136 = [v120 topAnchor];
                    v137 = [v150 lastBaselineAnchor];
                    v138 = [v136 constraintGreaterThanOrEqualToAnchor:v137 constant:24.0];

                    *(inited + 208) = v138;
                    v139 = [v120 centerXAnchor];
                    v140 = [v146 view];
                    if (v140)
                    {
                      v141 = v140;
                      v142 = [v140 &selRef_handleMenuButtonTapped + 2];

                      v143 = [v139 constraintEqualToAnchor_];
                      *(inited + 216) = v143;
                      sub_20BFCAC54();
                      swift_setDeallocating();
                      swift_arrayDestroy();
                      return;
                    }

                    goto LABEL_35;
                  }

LABEL_34:
                  __break(1u);
LABEL_35:
                  __break(1u);
                  goto LABEL_36;
                }

LABEL_33:
                __break(1u);
                goto LABEL_34;
              }

LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_36:
  sub_20C13DE24();
  __break(1u);
}

id sub_20BFCA81C(void *a1)
{
  swift_getObjectType();
  v3 = [a1 layoutDirection] == 1;
  _s9SeymourUI30NotificationConsentNameBuilderV08makeFileE08platform11rightToLeftSS0A4Core8PlatformO_SbtFZ_0(*(v1 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_platform), v3);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_20C13C914();

  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5 withConfiguration:0];

  return v7;
}

id sub_20BFCA908()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  LODWORD(v1) = 0.5;
  [v0 setHyphenationFactor_];
  sub_20BFCAAE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v3 = *MEMORY[0x277D74118];
  *(inited + 32) = *MEMORY[0x277D74118];
  *(inited + 64) = sub_20B51C88C(0, &qword_27C769D08);
  *(inited + 40) = v0;
  v4 = v3;
  v5 = v0;
  sub_20B6B1650(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C763978);
  v6 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v7 = sub_20C13C914();

  type metadata accessor for Key(0);
  sub_20BFCC7BC(&qword_27C761D80, type metadata accessor for Key);
  v8 = sub_20C13C744();

  v9 = [v6 initWithString:v7 attributes:v8];

  return v9;
}

uint64_t sub_20BFCAAE8()
{
  sub_20B52F9E8(v0 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_storefrontLocalizer, &v8, &qword_27C76AB58);
  if (v9)
  {
    sub_20B52E424(&v8, v10);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v1 = sub_20C138D34();
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_20B520158(&v8, &qword_27C76AB58);
    v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_fallbackLocalizationBundle);
    v3 = sub_20C13C914();
    v4 = sub_20C13C914();
    v5 = sub_20C13C914();
    v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

    v1 = sub_20C13C954();
  }

  return v1;
}

void sub_20BFCAC54()
{
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_platform))
  {
    if (*(v0 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_platform) != 1)
    {
      sub_20C13DE24();
      __break(1u);
      return;
    }

    v2 = MEMORY[0x277D84F90];
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_scrollView);
    [v1 setContentInsetAdjustmentBehavior_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_20C14F580;
    v3 = [*(v0 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_imageView) heightAnchor];
    v4 = [v1 heightAnchor];
    v5 = [v3 constraintEqualToAnchor:v4 multiplier:0.5];

    *(v2 + 32) = v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20C14FE90;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_imageView);
  v8 = [v7 leadingAnchor];
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_contentView);
  v10 = [v9 leadingAnchor];
  v11 = [v8 constraintEqualToAnchor_];

  *(v6 + 32) = v11;
  v12 = [v7 trailingAnchor];
  v13 = [v9 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v6 + 40) = v14;
  v15 = [v7 topAnchor];
  v16 = [v9 topAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v6 + 48) = v17;
  v18 = [v7 centerXAnchor];
  v19 = [v9 centerXAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v6 + 56) = v20;
  v21 = objc_opt_self();

  sub_20B8D9310(v22);
  sub_20B8D9310(v2);
  sub_20B51C88C(0, &qword_281100500);
  v23 = sub_20C13CC54();

  [v21 activateConstraints_];
}

Swift::Void __swiftcall NotificationConsentViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v18.receiver = v1;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_traitCollectionDidChange_, isa);
  if (isa)
  {
    v3 = isa;
    v4 = [(objc_class *)v3 preferredContentSizeCategory];
    v5 = [v1 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    v7 = sub_20C13C954();
    v9 = v8;
    if (v7 == sub_20C13C954() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_20C13DFF4();

      if ((v12 & 1) == 0)
      {
        v13 = [v1 traitCollection];
        v14 = *&v1[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_imageView];
        v15 = sub_20BFCA81C(v13);
        [v14 setImage_];

        v3 = v15;
      }
    }
  }

  else
  {
    v16 = [v1 traitCollection];
    v17 = *&v1[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_imageView];
    v3 = sub_20BFCA81C(v16);
    [v17 setImage_];
  }
}

uint64_t sub_20BFCB290()
{
  v0 = sub_20C135534();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D51A28], v0, v2);
  sub_20BFCC7BC(&qword_281103BB0, MEMORY[0x277D51A40]);
  sub_20C13CC34();
  sub_20C13CC34();
  if (v6[2] == v6[0] && v6[3] == v6[1])
  {
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    sub_20C13DFF4();
    (*(v1 + 8))(v4, v0);
  }

  return sub_20BFCAAE8();
}

void sub_20BFCB4A4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = sub_20C138104();
  if (v6 == sub_20C138104())
  {
    v7 = 39;
  }

  else
  {
    (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController__fitnessPlusNotificationSettingsEnabled, v2);
    sub_20C13A344();
    (*(v3 + 8))(v5, v2);
    if (LOBYTE(aBlock[0]))
    {
      v7 = 39;
    }

    else
    {
      v7 = 7;
    }
  }

  v8 = [objc_opt_self() currentNotificationCenter];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_20BFCC784;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B906664;
  aBlock[3] = &block_descriptor_169;
  v10 = _Block_copy(aBlock);

  [v8 requestAuthorizationWithOptions:v7 completionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_20BFCB6C0(int a1, void *a2, uint64_t a3)
{
  v28 = a1;
  v5 = sub_20C13C4B4();
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13C4F4();
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v15 = a2;
  v16 = sub_20C13BB74();
  v17 = sub_20C13D1F4();

  if (os_log_type_enabled(v16, v17))
  {
    v26 = a3;
    v27 = v5;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 67109378;
    *(v18 + 4) = v28 & 1;
    *(v18 + 8) = 2112;
    if (a2)
    {
      v20 = a2;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      v22 = v21;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    *(v18 + 10) = v21;
    *v19 = v22;
    _os_log_impl(&dword_20B517000, v16, v17, "Notification authorization completed (granted: %{BOOL}d, error: %@", v18, 0x12u);
    sub_20B520158(v19, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v19, -1, -1);
    MEMORY[0x20F2F6A40](v18, -1, -1);
    a3 = v26;
    v5 = v27;
  }

  (*(v12 + 8))(v14, v11);
  sub_20B51C88C(0, &qword_281100530);
  v23 = sub_20C13D374();
  aBlock[4] = sub_20BFCC78C;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_4;
  v24 = _Block_copy(aBlock);

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20BFCC7BC(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v10, v7, v24);
  _Block_release(v24);

  (*(v31 + 8))(v7, v5);
  return (*(v29 + 8))(v10, v30);
}

void sub_20BFCBB14()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (Strong + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_continueButtonHandler);
    swift_beginAccess();
    v3 = *v2;
    if (*v2)
    {
      sub_20B584050(v3);

      v3();
      sub_20B583ECC(v3);
    }

    else
    {
    }
  }
}

id NotificationConsentViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C13C914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id NotificationConsentViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20BFCBE74(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C135534();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20C133AA4();
  v7 = v11[0];
  sub_20B51CC64(v12, v11);
  (*(v4 + 104))(v6, *MEMORY[0x277D51A28], v3);
  v8 = objc_allocWithZone(type metadata accessor for NotificationConsentViewController());
  v9 = sub_20BFC8CFC(v11, v6, v7);
  (*(v4 + 8))(a2, v3);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v9;
}

void _s9SeymourUI33NotificationConsentViewControllerC5coderACSo7NSCoderC_tcfc_0()
{
  v1 = sub_20C13A814();
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_scrollView;
  v5 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v4) = v5;
  v6 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_contentView;
  v7 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v7 &selRef_count + 2];
  *(v0 + v6) = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_titleLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v9 &selRef_count + 2];
  [v9 setAdjustsFontForContentSizeCategory_];
  v10 = *MEMORY[0x277D743F8];
  v11 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769A8] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  v40 = xmmword_20C14F980;
  *(inited + 16) = xmmword_20C14F980;
  v13 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v14 = swift_initStackObject();
  *(v14 + 16) = v40;
  v15 = *MEMORY[0x277D74430];
  *(v14 + 32) = *MEMORY[0x277D74430];
  *(v14 + 40) = v10;
  v16 = v13;
  v17 = v15;
  v18 = sub_20B6B134C(v14);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v18;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20BFCC7BC(&qword_27C7618A0, type metadata accessor for AttributeName);
  v19 = sub_20C13C744();

  v20 = [v11 fontDescriptorByAddingAttributes_];

  v21 = objc_opt_self();
  v22 = [v21 fontWithDescriptor:v20 size:0.0];

  [v9 setFont_];
  v23 = objc_opt_self();
  v24 = [v23 whiteColor];
  [v9 setTextColor_];

  LODWORD(v25) = 1148846080;
  [v9 setContentHuggingPriority:1 forAxis:v25];
  LODWORD(v26) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v26];

  *(v0 + v8) = v9;
  v27 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_bodyLabel;
  v28 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  [v28 setAdjustsFontForContentSizeCategory_];
  v29 = [v21 preferredFontForTextStyle_];
  [v28 setFont_];

  v30 = [v23 secondaryLabelColor];
  [v28 setTextColor_];

  LODWORD(v31) = 1148846080;
  [v28 setContentHuggingPriority:1 forAxis:v31];
  LODWORD(v32) = 1148846080;
  [v28 setContentCompressionResistancePriority:1 forAxis:v32];

  *(v0 + v27) = v28;
  v33 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_continueButton;
  v34 = [objc_opt_self() boldButton];
  LODWORD(v35) = 1148846080;
  [v34 setContentHuggingPriority:1 forAxis:v35];
  LODWORD(v36) = 1148846080;
  [v34 setContentCompressionResistancePriority:1 forAxis:v36];

  *(v0 + v33) = v34;
  v37 = OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_fallbackLocalizationBundle;
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v37) = [objc_opt_self() bundleForClass_];
  v39 = (v0 + OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_continueButtonHandler);
  *v39 = 0;
  v39[1] = 0;
  (*(v41 + 104))(v3, *MEMORY[0x277D4F070], v42);
  v43 = 1;
  sub_20C13A384();
  sub_20C13DE24();
  __break(1u);
}

uint64_t type metadata accessor for NotificationConsentViewController()
{
  result = qword_27C771710;
  if (!qword_27C771710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BFCC66C()
{
  sub_20C135534();
  if (v0 <= 0x3F)
  {
    sub_20B52432C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_20BFCC7BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BFCC80C()
{
  v1[18] = v0;
  v2 = sub_20C132C14();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BFCC8CC, 0, 0);
}

uint64_t sub_20BFCC8CC()
{
  sub_20BFCCD5C(v0[21]);
  v0[22] = objc_opt_self();
  sub_20C13CDA4();
  v0[23] = sub_20C13CD94();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BFCC9CC, v2, v1);
}

uint64_t sub_20BFCC9CC()
{
  v1 = *(v0 + 176);

  *(v0 + 192) = [v1 sharedApplication];

  return MEMORY[0x2822009F8](sub_20BFCCA50, 0, 0);
}

uint64_t sub_20BFCCA50()
{
  v1 = v0[24];
  v2 = sub_20C132B64();
  v0[25] = v2;
  sub_20B6B3B84(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_20BB0BE80();
  v3 = sub_20C13C744();
  v0[26] = v3;

  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_20BFCCBE0;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771720);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20BFCF9C8;
  v0[13] = &block_descriptor_170;
  v0[14] = v4;
  [v1 openURL:v2 options:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20BFCCBE0()
{

  return MEMORY[0x2822009F8](sub_20BFCCCC0, 0, 0);
}

uint64_t sub_20BFCCCC0()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BFCCD5C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_20C132704();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1326F4();
  sub_20C1326D4();
  MEMORY[0x20F2E9E20](7824750, 0xE300000000000000);
  sub_20BFCCFAC();
  sub_20C132674();
  sub_20C132694();
  v9 = sub_20C132C14();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_20B520158(v4, &unk_27C7617F0);
    sub_20BFD19A0();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    return (*(v10 + 32))(a1, v4, v9);
  }
}

char *sub_20BFCCFAC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767EA8);
  MEMORY[0x28223BE20](v2 - 8);
  v332 = &v296 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v331 = &v296 - v5;
  MEMORY[0x28223BE20](v6);
  v330 = &v296 - v7;
  MEMORY[0x28223BE20](v8);
  v327 = &v296 - v9;
  MEMORY[0x28223BE20](v10);
  v324 = &v296 - v11;
  MEMORY[0x28223BE20](v12);
  v321 = &v296 - v13;
  MEMORY[0x28223BE20](v14);
  v320 = &v296 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v296 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v296 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v296 - v23;
  v25 = sub_20C132654();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v299 = &v296 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v298 = &v296 - v29;
  MEMORY[0x28223BE20](v30);
  v315 = &v296 - v31;
  MEMORY[0x28223BE20](v32);
  v314 = &v296 - v33;
  MEMORY[0x28223BE20](v34);
  v351 = &v296 - v35;
  MEMORY[0x28223BE20](v36);
  v313 = &v296 - v37;
  MEMORY[0x28223BE20](v38);
  v350 = &v296 - v39;
  MEMORY[0x28223BE20](v40);
  v349 = &v296 - v41;
  MEMORY[0x28223BE20](v42);
  v312 = &v296 - v43;
  MEMORY[0x28223BE20](v44);
  v348 = &v296 - v45;
  MEMORY[0x28223BE20](v46);
  v329 = &v296 - v47;
  MEMORY[0x28223BE20](v48);
  v328 = &v296 - v49;
  MEMORY[0x28223BE20](v50);
  v347 = &v296 - v51;
  MEMORY[0x28223BE20](v52);
  v311 = &v296 - v53;
  MEMORY[0x28223BE20](v54);
  v346 = &v296 - v55;
  MEMORY[0x28223BE20](v56);
  v345 = &v296 - v57;
  MEMORY[0x28223BE20](v58);
  v310 = &v296 - v59;
  MEMORY[0x28223BE20](v60);
  v344 = &v296 - v61;
  MEMORY[0x28223BE20](v62);
  v343 = &v296 - v63;
  MEMORY[0x28223BE20](v64);
  v309 = &v296 - v65;
  MEMORY[0x28223BE20](v66);
  v342 = &v296 - v67;
  MEMORY[0x28223BE20](v68);
  v341 = &v296 - v69;
  MEMORY[0x28223BE20](v70);
  v308 = &v296 - v71;
  MEMORY[0x28223BE20](v72);
  v340 = &v296 - v73;
  MEMORY[0x28223BE20](v74);
  v326 = &v296 - v75;
  MEMORY[0x28223BE20](v76);
  v325 = &v296 - v77;
  MEMORY[0x28223BE20](v78);
  v352 = &v296 - v79;
  MEMORY[0x28223BE20](v80);
  v307 = &v296 - v81;
  MEMORY[0x28223BE20](v82);
  v339 = &v296 - v83;
  MEMORY[0x28223BE20](v84);
  v338 = &v296 - v85;
  MEMORY[0x28223BE20](v86);
  v306 = &v296 - v87;
  MEMORY[0x28223BE20](v88);
  v337 = &v296 - v89;
  MEMORY[0x28223BE20](v90);
  v336 = &v296 - v91;
  MEMORY[0x28223BE20](v92);
  v305 = &v296 - v93;
  MEMORY[0x28223BE20](v94);
  v335 = &v296 - v95;
  MEMORY[0x28223BE20](v96);
  v323 = &v296 - v97;
  MEMORY[0x28223BE20](v98);
  v322 = &v296 - v99;
  MEMORY[0x28223BE20](v100);
  v334 = &v296 - v101;
  MEMORY[0x28223BE20](v102);
  v304 = &v296 - v103;
  MEMORY[0x28223BE20](v104);
  v333 = &v296 - v105;
  MEMORY[0x28223BE20](v106);
  v303 = &v296 - v107;
  MEMORY[0x28223BE20](v108);
  v302 = &v296 - v109;
  MEMORY[0x28223BE20](v110);
  v301 = &v296 - v111;
  MEMORY[0x28223BE20](v112);
  v300 = &v296 - v113;
  MEMORY[0x28223BE20](v114);
  v319 = &v296 - v115;
  MEMORY[0x28223BE20](v116);
  v318 = &v296 - v117;
  MEMORY[0x28223BE20](v118);
  v317 = &v296 - v119;
  MEMORY[0x28223BE20](v120);
  v316 = &v296 - v121;
  MEMORY[0x28223BE20](v122);
  v124 = &v296 - v123;
  v126 = MEMORY[0x28223BE20](v125);
  v128 = &v296 - v127;
  v356 = v26;
  v357 = MEMORY[0x277D84F90];
  v129 = *(v1 + 24);
  v353 = v1;
  if (!v129)
  {
    v354 = *(v26 + 56);
    v354(v24, 1, 1, v25, v126);
LABEL_5:
    sub_20B520158(v24, &qword_27C767EA8);
    v130 = *(v1 + 48);
    if (!v130)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v26 = v356;
  sub_20C132624();
  v354 = *(v26 + 56);
  (v354)(v24, 0, 1, v25);

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v1 = v353;
    goto LABEL_5;
  }

  v355 = *(v26 + 32);
  v355(v128, v24, v25);
  (*(v26 + 16))(v124, v128, v25);
  v153 = sub_20BC06654(0, 1, 1, MEMORY[0x277D84F90]);
  v155 = *(v153 + 2);
  v154 = *(v153 + 3);
  v297 = v18;
  if (v155 >= v154 >> 1)
  {
    v153 = sub_20BC06654(v154 > 1, v155 + 1, 1, v153);
  }

  v156 = v356;
  v157 = v356 + 8;
  (*(v356 + 8))(v128, v25);
  *(v153 + 2) = v155 + 1;
  v158 = &v153[((*(v157 + 72) + 32) & ~*(v157 + 72)) + *(v157 + 64) * v155];
  v26 = v156;
  v355(v158, v124, v25);
  v357 = v153;
  v1 = v353;
  v18 = v297;
  v130 = *(v353 + 48);
  if (v130)
  {
LABEL_6:
    v132 = *(v1 + 56);
    v131 = *(v1 + 64);
    v358 = *(v1 + 32);
    v359 = v130;
    v360 = v132;
    v361 = v131;
    v133 = sub_20BFCFA24();
    sub_20B8D9414(v133);
  }

LABEL_7:
  v134 = *(v1 + 88);

  sub_20BFD0D24(v134, v21);

  v355 = *(v26 + 48);
  if (v355(v21, 1, v25) == 1)
  {
    sub_20B520158(v21, &qword_27C767EA8);
  }

  else
  {
    v135 = *(v26 + 32);
    v136 = v316;
    v135(v316, v21, v25);
    (*(v26 + 16))(v317, v136, v25);
    v137 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v137 = sub_20BC06654(0, *(v137 + 2) + 1, 1, v137);
    }

    v139 = *(v137 + 2);
    v138 = *(v137 + 3);
    if (v139 >= v138 >> 1)
    {
      v137 = sub_20BC06654(v138 > 1, v139 + 1, 1, v137);
    }

    (*(v26 + 8))(v316, v25);
    *(v137 + 2) = v139 + 1;
    v135(&v137[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v139], v317, v25);
    v357 = v137;
    v1 = v353;
  }

  v140 = *(v1 + 112);

  sub_20BFD0F18(v140, v18);

  if (v355(v18, 1, v25) == 1)
  {
    sub_20B520158(v18, &qword_27C767EA8);
    if (*(v1 + 144))
    {
      goto LABEL_16;
    }

LABEL_28:
    v141 = v320;
    (v354)(v320, 1, 1, v25);
    goto LABEL_29;
  }

  v148 = *(v26 + 32);
  v149 = v318;
  v148(v318, v18, v25);
  (*(v26 + 16))(v319, v149, v25);
  v150 = v357;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v150 = sub_20BC06654(0, *(v150 + 2) + 1, 1, v150);
  }

  v152 = *(v150 + 2);
  v151 = *(v150 + 3);
  if (v152 >= v151 >> 1)
  {
    v150 = sub_20BC06654(v151 > 1, v152 + 1, 1, v150);
  }

  (*(v26 + 8))(v318, v25);
  *(v150 + 2) = v152 + 1;
  v148(&v150[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v152], v319, v25);
  v357 = v150;
  if (!*(v1 + 144))
  {
    goto LABEL_28;
  }

LABEL_16:

  v141 = v320;
  sub_20C132624();
  (v354)(v141, 0, 1, v25);

  if (v355(v141, 1, v25) != 1)
  {
    v142 = *(v26 + 32);
    v143 = v300;
    v142(v300, v141, v25);
    (*(v26 + 16))(v301, v143, v25);
    v144 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v144 = sub_20BC06654(0, *(v144 + 2) + 1, 1, v144);
    }

    v146 = *(v144 + 2);
    v145 = *(v144 + 3);
    if (v146 >= v145 >> 1)
    {
      v144 = sub_20BC06654(v145 > 1, v146 + 1, 1, v144);
    }

    (*(v26 + 8))(v300, v25);
    *(v144 + 2) = v146 + 1;
    v142(&v144[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v146], v301, v25);
    v357 = v144;
    if (!*(v1 + 176))
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_20B520158(v141, &qword_27C767EA8);
  if (!*(v1 + 176))
  {
LABEL_22:
    v147 = v321;
    (v354)(v321, 1, 1, v25);
LABEL_31:
    sub_20B520158(v147, &qword_27C767EA8);
    goto LABEL_41;
  }

LABEL_30:

  v147 = v321;
  sub_20C132624();
  (v354)(v147, 0, 1, v25);

  if (v355(v147, 1, v25) == 1)
  {
    goto LABEL_31;
  }

  v159 = *(v26 + 32);
  v160 = v302;
  v159(v302, v147, v25);
  (*(v26 + 16))(v303, v160, v25);
  v161 = v357;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v161 = sub_20BC06654(0, *(v161 + 2) + 1, 1, v161);
  }

  v163 = *(v161 + 2);
  v162 = *(v161 + 3);
  if (v163 >= v162 >> 1)
  {
    v161 = sub_20BC06654(v162 > 1, v163 + 1, 1, v161);
  }

  (*(v26 + 8))(v302, v25);
  *(v161 + 2) = v163 + 1;
  v159(&v161[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v163], v303, v25);
  v357 = v161;
LABEL_41:

  sub_20BFD1848(v164);
  if (v165)
  {
    v166 = v304;
    sub_20C132624();

    v167 = *(v26 + 32);
    v168 = v333;
    v167(v333, v166, v25);
    (*(v26 + 16))(v334, v168, v25);
    v169 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v169 = sub_20BC06654(0, *(v169 + 2) + 1, 1, v169);
    }

    v171 = *(v169 + 2);
    v170 = *(v169 + 3);
    if (v171 >= v170 >> 1)
    {
      v169 = sub_20BC06654(v170 > 1, v171 + 1, 1, v169);
    }

    (*(v26 + 8))(v333, v25);
    *(v169 + 2) = v171 + 1;
    v167(&v169[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v171], v334, v25);
    v357 = v169;
  }

  else
  {
  }

  v172 = type metadata accessor for TapToRadarDraft();
  v173 = v324;
  sub_20BFD1070(v324);
  if (v355(v173, 1, v25) == 1)
  {
    sub_20B520158(v173, &qword_27C767EA8);
  }

  else
  {
    v174 = *(v26 + 32);
    v175 = v322;
    v174(v322, v173, v25);
    (*(v26 + 16))(v323, v175, v25);
    v176 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v176 = sub_20BC06654(0, *(v176 + 2) + 1, 1, v176);
    }

    v178 = *(v176 + 2);
    v177 = *(v176 + 3);
    if (v178 >= v177 >> 1)
    {
      v176 = sub_20BC06654(v177 > 1, v178 + 1, 1, v176);
    }

    (*(v26 + 8))(v322, v25);
    *(v176 + 2) = v178 + 1;
    v174(&v176[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v178], v323, v25);
    v357 = v176;
    v1 = v353;
  }

  sub_20BFD1634(v179);
  if (v180)
  {
    v181 = v305;
    sub_20C132624();

    v182 = *(v26 + 32);
    v183 = v335;
    v182(v335, v181, v25);
    (*(v26 + 16))(v336, v183, v25);
    v184 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v184 = sub_20BC06654(0, *(v184 + 2) + 1, 1, v184);
    }

    v186 = *(v184 + 2);
    v185 = *(v184 + 3);
    if (v186 >= v185 >> 1)
    {
      v184 = sub_20BC06654(v185 > 1, v186 + 1, 1, v184);
    }

    (*(v26 + 8))(v335, v25);
    *(v184 + 2) = v186 + 1;
    v182(&v184[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v186], v336, v25);
    v357 = v184;
    v1 = v353;
  }

  else
  {
  }

  sub_20BFD1634(v187);
  if (v188)
  {
    v189 = v306;
    sub_20C132624();

    v190 = *(v26 + 32);
    v191 = v337;
    v190(v337, v189, v25);
    (*(v26 + 16))(v338, v191, v25);
    v192 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v192 = sub_20BC06654(0, *(v192 + 2) + 1, 1, v192);
    }

    v194 = *(v192 + 2);
    v193 = *(v192 + 3);
    if (v194 >= v193 >> 1)
    {
      v192 = sub_20BC06654(v193 > 1, v194 + 1, 1, v192);
    }

    (*(v26 + 8))(v337, v25);
    *(v192 + 2) = v194 + 1;
    v190(&v192[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v194], v338, v25);
    v357 = v192;
    v1 = v353;
  }

  else
  {
  }

  sub_20BFD1504(v195);
  if (v196)
  {
    v197 = v307;
    sub_20C132624();

    v198 = *(v26 + 32);
    v199 = v339;
    v198(v339, v197, v25);
    (*(v26 + 16))(v352, v199, v25);
    v200 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v200 = sub_20BC06654(0, *(v200 + 2) + 1, 1, v200);
    }

    v202 = *(v200 + 2);
    v201 = *(v200 + 3);
    if (v202 >= v201 >> 1)
    {
      v200 = sub_20BC06654(v201 > 1, v202 + 1, 1, v200);
    }

    (*(v26 + 8))(v339, v25);
    *(v200 + 2) = v202 + 1;
    v198(&v200[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v202], v352, v25);
    v357 = v200;
    v1 = v353;
  }

  else
  {
  }

  v203 = v327;
  sub_20C132624();

  v352 = (v26 + 56);
  (v354)(v203, 0, 1, v25);

  if (v355(v203, 1, v25) == 1)
  {
    sub_20B520158(v203, &qword_27C767EA8);
  }

  else
  {
    v204 = *(v26 + 32);
    v205 = v325;
    v204(v325, v203, v25);
    (*(v26 + 16))(v326, v205, v25);
    v206 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v206 = sub_20BC06654(0, *(v206 + 2) + 1, 1, v206);
    }

    v208 = *(v206 + 2);
    v207 = *(v206 + 3);
    if (v208 >= v207 >> 1)
    {
      v206 = sub_20BC06654(v207 > 1, v208 + 1, 1, v206);
    }

    v209 = v356 + 8;
    (*(v356 + 8))(v325, v25);
    *(v206 + 2) = v208 + 1;
    v204(&v206[((*(v209 + 72) + 32) & ~*(v209 + 72)) + *(v209 + 64) * v208], v326, v25);
    v357 = v206;
  }

  sub_20BFD1504(v210);
  if (v211)
  {
    v212 = v308;
    sub_20C132624();

    v213 = v356;
    v214 = *(v356 + 32);
    v215 = v340;
    v214(v340, v212, v25);
    (*(v213 + 16))(v341, v215, v25);
    v216 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v216 = sub_20BC06654(0, *(v216 + 2) + 1, 1, v216);
    }

    v218 = *(v216 + 2);
    v217 = *(v216 + 3);
    if (v218 >= v217 >> 1)
    {
      v216 = sub_20BC06654(v217 > 1, v218 + 1, 1, v216);
    }

    v219 = v356 + 8;
    (*(v356 + 8))(v340, v25);
    *(v216 + 2) = v218 + 1;
    v214(&v216[((*(v219 + 72) + 32) & ~*(v219 + 72)) + *(v219 + 64) * v218], v341, v25);
    v357 = v216;
  }

  else
  {
  }

  sub_20BFD132C(v220);
  if (v221)
  {
    v222 = v309;
    sub_20C132624();

    v223 = v356;
    v224 = *(v356 + 32);
    v225 = v342;
    v224(v342, v222, v25);
    (*(v223 + 16))(v343, v225, v25);
    v226 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v226 = sub_20BC06654(0, *(v226 + 2) + 1, 1, v226);
    }

    v228 = *(v226 + 2);
    v227 = *(v226 + 3);
    if (v228 >= v227 >> 1)
    {
      v226 = sub_20BC06654(v227 > 1, v228 + 1, 1, v226);
    }

    v229 = v356 + 8;
    (*(v356 + 8))(v342, v25);
    *(v226 + 2) = v228 + 1;
    v224(&v226[((*(v229 + 72) + 32) & ~*(v229 + 72)) + *(v229 + 64) * v228], v343, v25);
    v357 = v226;
  }

  else
  {
  }

  sub_20BFD1504(v230);
  if (v231)
  {
    v232 = v310;
    sub_20C132624();

    v233 = v356;
    v234 = *(v356 + 32);
    v235 = v344;
    v234(v344, v232, v25);
    (*(v233 + 16))(v345, v235, v25);
    v236 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v236 = sub_20BC06654(0, *(v236 + 2) + 1, 1, v236);
    }

    v238 = *(v236 + 2);
    v237 = *(v236 + 3);
    if (v238 >= v237 >> 1)
    {
      v236 = sub_20BC06654(v237 > 1, v238 + 1, 1, v236);
    }

    v239 = v356 + 8;
    (*(v356 + 8))(v344, v25);
    *(v236 + 2) = v238 + 1;
    v234(&v236[((*(v239 + 72) + 32) & ~*(v239 + 72)) + *(v239 + 64) * v238], v345, v25);
    v357 = v236;
  }

  else
  {
  }

  v240 = *(v1 + v172[19] + 16);

  sub_20BFD053C(v240);
  if (v241)
  {
    v242 = v311;
    sub_20C132624();

    v243 = v356;
    v244 = *(v356 + 32);
    v245 = v346;
    v244(v346, v242, v25);
    (*(v243 + 16))(v347, v245, v25);
    v246 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v246 = sub_20BC06654(0, *(v246 + 2) + 1, 1, v246);
    }

    v248 = *(v246 + 2);
    v247 = *(v246 + 3);
    if (v248 >= v247 >> 1)
    {
      v246 = sub_20BC06654(v247 > 1, v248 + 1, 1, v246);
    }

    v249 = v356 + 8;
    (*(v356 + 8))(v346, v25);
    *(v246 + 2) = v248 + 1;
    v244(&v246[((*(v249 + 72) + 32) & ~*(v249 + 72)) + *(v249 + 64) * v248], v347, v25);
    v357 = v246;
  }

  else
  {
  }

  v250 = v330;
  sub_20C132624();

  (v354)(v250, 0, 1, v25);
  v251 = v250;

  if (v355(v250, 1, v25) == 1)
  {
    sub_20B520158(v250, &qword_27C767EA8);
  }

  else
  {
    v252 = v356;
    v253 = *(v356 + 32);
    v254 = v328;
    v253(v328, v251, v25);
    (*(v252 + 16))(v329, v254, v25);
    v255 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v255 = sub_20BC06654(0, *(v255 + 2) + 1, 1, v255);
    }

    v257 = *(v255 + 2);
    v256 = *(v255 + 3);
    if (v257 >= v256 >> 1)
    {
      v255 = sub_20BC06654(v256 > 1, v257 + 1, 1, v255);
    }

    v258 = v356 + 8;
    (*(v356 + 8))(v328, v25);
    *(v255 + 2) = v257 + 1;
    v253(&v255[((*(v258 + 72) + 32) & ~*(v258 + 72)) + *(v258 + 64) * v257], v329, v25);
    v357 = v255;
  }

  v259 = *(v1 + v172[21] + 16);

  sub_20BFD08EC(v259);
  if (v260)
  {
    v261 = v312;
    sub_20C132624();

    v262 = v356;
    v263 = *(v356 + 32);
    v264 = v348;
    v263(v348, v261, v25);
    (*(v262 + 16))(v349, v264, v25);
    v265 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v265 = sub_20BC06654(0, *(v265 + 2) + 1, 1, v265);
    }

    v267 = *(v265 + 2);
    v266 = *(v265 + 3);
    if (v267 >= v266 >> 1)
    {
      v265 = sub_20BC06654(v266 > 1, v267 + 1, 1, v265);
    }

    v268 = v356 + 8;
    (*(v356 + 8))(v348, v25);
    *(v265 + 2) = v267 + 1;
    v263(&v265[((*(v268 + 72) + 32) & ~*(v268 + 72)) + *(v268 + 64) * v267], v349, v25);
    v357 = v265;
  }

  else
  {
  }

  sub_20BFD1504(v269);
  if (v270)
  {
    v271 = v313;
    sub_20C132624();

    v272 = v356;
    v273 = *(v356 + 32);
    v274 = v350;
    v273(v350, v271, v25);
    (*(v272 + 16))(v351, v274, v25);
    v275 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v275 = sub_20BC06654(0, *(v275 + 2) + 1, 1, v275);
    }

    v277 = *(v275 + 2);
    v276 = *(v275 + 3);
    if (v277 >= v276 >> 1)
    {
      v275 = sub_20BC06654(v276 > 1, v277 + 1, 1, v275);
    }

    v278 = v356 + 8;
    (*(v356 + 8))(v350, v25);
    *(v275 + 2) = v277 + 1;
    v273(&v275[((*(v278 + 72) + 32) & ~*(v278 + 72)) + *(v278 + 64) * v277], v351, v25);
    v357 = v275;
  }

  else
  {
  }

  if (!*(v1 + v172[23] + 24))
  {
    v279 = v331;
    (v354)(v331, 1, 1, v25);
    v281 = v356;
    goto LABEL_140;
  }

  v279 = v331;
  sub_20C132624();
  (v354)(v279, 0, 1, v25);

  v280 = v355(v279, 1, v25);
  v281 = v356;
  if (v280 == 1)
  {
LABEL_140:
    sub_20B520158(v279, &qword_27C767EA8);
    goto LABEL_141;
  }

  v282 = *(v356 + 32);
  v283 = v314;
  v282(v314, v279, v25);
  (*(v281 + 16))(v315, v283, v25);
  v284 = v357;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v284 = sub_20BC06654(0, *(v284 + 2) + 1, 1, v284);
  }

  v286 = *(v284 + 2);
  v285 = *(v284 + 3);
  if (v286 >= v285 >> 1)
  {
    v284 = sub_20BC06654(v285 > 1, v286 + 1, 1, v284);
  }

  v281 = v356;
  v287 = v356 + 8;
  (*(v356 + 8))(v314, v25);
  *(v284 + 2) = v286 + 1;
  v282(&v284[((*(v287 + 72) + 32) & ~*(v287 + 72)) + *(v287 + 64) * v286], v315, v25);
  v357 = v284;
LABEL_141:
  if (!*(v353 + v172[24] + 24))
  {
    v288 = v332;
    (v354)(v332, 1, 1, v25);
    goto LABEL_149;
  }

  v288 = v332;
  sub_20C132624();
  (v354)(v288, 0, 1, v25);

  if (v355(v288, 1, v25) == 1)
  {
LABEL_149:
    sub_20B520158(v288, &qword_27C767EA8);
    return v357;
  }

  v289 = *(v281 + 32);
  v290 = v298;
  v289(v298, v288, v25);
  v291 = v299;
  (*(v281 + 16))(v299, v290, v25);
  v292 = v357;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v292 = sub_20BC06654(0, *(v292 + 2) + 1, 1, v292);
  }

  v294 = *(v292 + 2);
  v293 = *(v292 + 3);
  if (v294 >= v293 >> 1)
  {
    v292 = sub_20BC06654(v293 > 1, v294 + 1, 1, v292);
  }

  (*(v281 + 8))(v290, v25);
  *(v292 + 2) = v294 + 1;
  v289(&v292[((*(v281 + 80) + 32) & ~*(v281 + 80)) + *(v281 + 72) * v294], v291, v25);
  return v292;
}

uint64_t sub_20BFCF9C8(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_20BFCFA24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767EB0);
  sub_20C132654();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20C1517D0;
  sub_20C13DFA4();
  sub_20C132624();

  sub_20C132624();
  sub_20C132624();
  return v0;
}

uint64_t sub_20BFCFBA0()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1);
  sub_20C13CA64();
  sub_20C13CA64();
  return sub_20C13E1B4();
}

uint64_t sub_20BFCFC20()
{
  MEMORY[0x20F2F58E0](*v0);
  sub_20C13CA64();

  return sub_20C13CA64();
}

uint64_t sub_20BFCFC90()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1);
  sub_20C13CA64();
  sub_20C13CA64();
  return sub_20C13E1B4();
}

uint64_t sub_20BFCFD0C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_20C13DFF4() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_20C13DFF4();
}

unint64_t sub_20BFCFDC0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x2065727574616546;
    v6 = 0x6D65636E61686E45;
    if (a1 != 8)
    {
      v6 = 1802723668;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x2073756F69726553;
    if (a1 != 5)
    {
      v7 = 0x754220726568744FLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7974697275636553;
    v2 = 0x7265776F50;
    v3 = 0x616D726F66726550;
    if (a1 != 3)
    {
      v3 = 0x69626173552F4955;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_20BFCFF24(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_20BFCFDC0(*a1);
  v5 = v4;
  if (v3 == sub_20BFCFDC0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_20C13DFF4();
  }

  return v8 & 1;
}

uint64_t sub_20BFCFFAC()
{
  v1 = *v0;
  sub_20C13E164();
  sub_20BFCFDC0(v1);
  sub_20C13CA64();

  return sub_20C13E1B4();
}

uint64_t sub_20BFD0010()
{
  sub_20BFCFDC0(*v0);
  sub_20C13CA64();
}

uint64_t sub_20BFD0064()
{
  v1 = *v0;
  sub_20C13E164();
  sub_20BFCFDC0(v1);
  sub_20C13CA64();

  return sub_20C13E1B4();
}

uint64_t sub_20BFD00C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20BFD2AFC();
  *a1 = result;
  return result;
}

unint64_t sub_20BFD00F4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_20BFCFDC0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_20BFD0134()
{
  sub_20C13CA64();
}

uint64_t sub_20BFD0238@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20BFD2B48();
  *a1 = result;
  return result;
}

void sub_20BFD0268(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_20BFD034C()
{
  sub_20C13CA64();
}

uint64_t sub_20BFD0448@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20BFD2B94();
  *a1 = result;
  return result;
}

void sub_20BFD0478(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE300000000000000;
  v6 = 6512973;
  if (v2 != 5)
  {
    v6 = 0x6E6F69736956;
    v5 = 0xE600000000000000;
  }

  v7 = 0x5654656C707041;
  if (v2 != 3)
  {
    v7 = 0x646F50656D6F48;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (v2 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_20BFD053C(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1)
    {
      v2 = sub_20BC05BA4(0, 1, 1, MEMORY[0x277D84F90]);
      v4 = *(v2 + 2);
      v3 = *(v2 + 3);
      if (v4 >= v3 >> 1)
      {
        v2 = sub_20BC05BA4((v3 > 1), v4 + 1, 1, v2);
      }

      *(v2 + 2) = v4 + 1;
      v5 = &v2[16 * v4];
      *(v5 + 4) = 0x79616C50726941;
      *(v5 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_20BC05BA4(0, *(v2 + 2) + 1, 1, v2);
          }

          v10 = *(v2 + 2);
          v9 = *(v2 + 3);
          if (v10 >= v9 >> 1)
          {
            v2 = sub_20BC05BA4((v9 > 1), v10 + 1, 1, v2);
          }

          *(v2 + 2) = v10 + 1;
          v11 = &v2[16 * v10];
          strcpy(v11 + 32, "MediaSystems");
          v11[45] = 0;
          *(v11 + 23) = -5120;
        }

        if ((v1 & 8) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_20BC05BA4(0, *(v2 + 2) + 1, 1, v2);
          }

          v13 = *(v2 + 2);
          v12 = *(v2 + 3);
          if (v13 >= v12 >> 1)
          {
            v2 = sub_20BC05BA4((v12 > 1), v13 + 1, 1, v2);
          }

          *(v2 + 2) = v13 + 1;
          v14 = &v2[16 * v13];
          *(v14 + 4) = 0x616C506572616853;
          *(v14 + 5) = 0xE900000000000079;
          if ((v1 & 0x10) == 0)
          {
LABEL_22:
            if ((v1 & 0x20) == 0)
            {
LABEL_39:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765218);
              sub_20B86A1D4();
              v1 = sub_20C13C824();

              return v1;
            }

LABEL_34:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v2 = sub_20BC05BA4(0, *(v2 + 2) + 1, 1, v2);
            }

            v19 = *(v2 + 2);
            v18 = *(v2 + 3);
            if (v19 >= v18 >> 1)
            {
              v2 = sub_20BC05BA4((v18 > 1), v19 + 1, 1, v2);
            }

            *(v2 + 2) = v19 + 1;
            v20 = &v2[16 * v19];
            *(v20 + 4) = 0x657463656E6E6F43;
            *(v20 + 5) = 0xE900000000000064;
            goto LABEL_39;
          }
        }

        else if ((v1 & 0x10) == 0)
        {
          goto LABEL_22;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_20BC05BA4(0, *(v2 + 2) + 1, 1, v2);
        }

        v16 = *(v2 + 2);
        v15 = *(v2 + 3);
        if (v16 >= v15 >> 1)
        {
          v2 = sub_20BC05BA4((v15 > 1), v16 + 1, 1, v2);
        }

        *(v2 + 2) = v16 + 1;
        v17 = &v2[16 * v16];
        *(v17 + 4) = 0x79627261654ELL;
        *(v17 + 5) = 0xE600000000000000;
        if ((v1 & 0x20) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
      if ((a1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_20BC05BA4(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_20BC05BA4((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x4874694B656D6F48;
    *(v8 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return v1;
}

uint64_t sub_20BFD08EC(unsigned __int8 a1)
{
  if (!a1)
  {

    return 0;
  }

  v2 = sub_20C13DFF4();

  if (v2)
  {
    return 0;
  }

  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (a1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (a1 == 1)
  {
    return 48;
  }

  else if (a1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_20BFD0ABC()
{
  sub_20C13CA64();
}

uint64_t sub_20BFD0BC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20BFD2BE0();
  *a1 = result;
  return result;
}

void sub_20BFD0BF0(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000020C191C80;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x800000020C191CA0;
    }

    v5 = 0x800000020C191C40;
    if (v2 != 3)
    {
      v5 = 0x800000020C191C60;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

unint64_t sub_20BFD0CC0()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t sub_20BFD0D24@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 9u)
  {
    v3 = 1;
  }

  else
  {
    sub_20C132624();

    v3 = 0;
  }

  v4 = sub_20C132654();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_20BFD0F18@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 5u)
  {
    v3 = 1;
  }

  else
  {
    sub_20C132624();

    v3 = 0;
  }

  v4 = sub_20C132654();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_20BFD1070@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_20C132E94();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FD90);
  sub_20BAC6DEC(v2 + *(v11 + 36), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20B520158(v6, &qword_27C762AC0);
    v12 = 1;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v14 = sub_20C13C914();
    [v13 setDateFormat_];

    [v13 setDoesRelativeDateFormatting_];
    v15 = sub_20C132DE4();
    v16 = [v13 stringFromDate_];

    sub_20C13C954();
    (*(v8 + 8))(v10, v7);
    sub_20C132624();

    v12 = 0;
  }

  v17 = sub_20C132654();
  return (*(*(v17 - 8) + 56))(a1, v12, 1, v17);
}

uint64_t sub_20BFD132C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *v2++;
    v4 = v5;
    v6 = v5 == 5;
    v7 = 6512973;
    if (v5 != 5)
    {
      v7 = 0x6E6F69736956;
    }

    v8 = 0xE300000000000000;
    if (!v6)
    {
      v8 = 0xE600000000000000;
    }

    v9 = 0x5654656C707041;
    if (v4 != 3)
    {
      v9 = 0x646F50656D6F48;
    }

    if (v4 <= 4)
    {
      v7 = v9;
      v8 = 0xE700000000000000;
    }

    v10 = 1684099177;
    if (v4 != 1)
    {
      v10 = 0x6863746157;
    }

    v11 = 0xE400000000000000;
    if (v4 != 1)
    {
      v11 = 0xE500000000000000;
    }

    if (!v4)
    {
      v10 = 0x656E6F685069;
      v11 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    if (v4 <= 2)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_20BC05BA4(0, *(v3 + 2) + 1, 1, v3);
    }

    v15 = *(v3 + 2);
    v14 = *(v3 + 3);
    if (v15 >= v14 >> 1)
    {
      v3 = sub_20BC05BA4((v14 > 1), v15 + 1, 1, v3);
    }

    *(v3 + 2) = v15 + 1;
    v16 = &v3[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v13;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765218);
  sub_20B86A1D4();
  v17 = sub_20C13C824();

  return v17;
}

uint64_t sub_20BFD1504(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_20BC05BA4(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_20BC05BA4((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765218);
  sub_20B86A1D4();
  v9 = sub_20C13C824();

  return v9;
}

uint64_t sub_20BFD1634(uint64_t a1)
{
  v24 = sub_20C132C14();
  v3 = MEMORY[0x28223BE20](v24);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v8 = *(v2 + 16);
  v7 = v2 + 16;
  v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
  v22 = *(v7 + 56);
  v23 = v8;
  v10 = (v7 - 8);
  v11 = MEMORY[0x277D84F90];
  do
  {
    v12 = v24;
    v13 = v7;
    v23(v5, v9, v24, v3);
    v14 = sub_20C132BC4();
    v16 = v15;
    (*v10)(v5, v12);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_20BC05BA4(0, *(v11 + 2) + 1, 1, v11);
    }

    v18 = *(v11 + 2);
    v17 = *(v11 + 3);
    if (v18 >= v17 >> 1)
    {
      v11 = sub_20BC05BA4((v17 > 1), v18 + 1, 1, v11);
    }

    *(v11 + 2) = v18 + 1;
    v19 = &v11[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v16;
    v9 += v22;
    --v6;
    v7 = v13;
  }

  while (v6);
  v25 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765218);
  sub_20B86A1D4();
  v20 = sub_20C13C824();

  return v20;
}

uint64_t sub_20BFD1848(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x277D84F90];
  do
  {
    v2 += 8;
    v4 = sub_20C13DFA4();
    v6 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_20BC05BA4(0, *(v3 + 2) + 1, 1, v3);
    }

    v8 = *(v3 + 2);
    v7 = *(v3 + 3);
    if (v8 >= v7 >> 1)
    {
      v3 = sub_20BC05BA4((v7 > 1), v8 + 1, 1, v3);
    }

    *(v3 + 2) = v8 + 1;
    v9 = &v3[16 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v6;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765218);
  sub_20B86A1D4();
  v10 = sub_20C13C824();

  return v10;
}

unint64_t sub_20BFD19A0()
{
  result = qword_27C771728[0];
  if (!qword_27C771728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C771728);
  }

  return result;
}

uint64_t type metadata accessor for TapToRadarDraft()
{
  result = qword_27C7717B0;
  if (!qword_27C7717B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BFD1A50()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20BFD1AD0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_20BFD1C54(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void sub_20BFD1EE4()
{
  sub_20BFD2308(319, &qword_27C7717C0, &qword_27C767830, &unk_20C15CA20, sub_20BFD223C);
  if (v0 <= 0x3F)
  {
    sub_20BFD22B8();
    if (v1 <= 0x3F)
    {
      sub_20BFD2308(319, &qword_27C7717D8, &qword_27C7717E0, "ʲ\a", sub_20BFD2378);
      if (v2 <= 0x3F)
      {
        sub_20BFD2308(319, &qword_27C7717F0, &qword_27C7717F8, "ʲ\a", sub_20BFD23F4);
        if (v3 <= 0x3F)
        {
          sub_20BFD2308(319, &qword_27C771808, &qword_27C769B38, &unk_20C1884E0, sub_20BFD2470);
          if (v4 <= 0x3F)
          {
            sub_20BFD2308(319, &qword_27C771818, &qword_27C762AC0, &unk_20C14FC90, sub_20BFD24EC);
            if (v5 <= 0x3F)
            {
              sub_20BFD2308(319, &qword_27C771828, &qword_27C771830, &unk_20C1884E8, sub_20BFD2568);
              if (v6 <= 0x3F)
              {
                sub_20BFD2308(319, &qword_27C771840, &qword_27C765218, &unk_20C15F3D0, sub_20BFD25E4);
                if (v7 <= 0x3F)
                {
                  sub_20BFD26DC(319, &qword_27C771850);
                  if (v8 <= 0x3F)
                  {
                    sub_20BFD2308(319, &qword_27C771858, &qword_27C771860, &unk_20C1884F0, sub_20BFD2660);
                    if (v9 <= 0x3F)
                    {
                      sub_20BFD26DC(319, &qword_27C771870);
                      if (v10 <= 0x3F)
                      {
                        sub_20BFD26DC(319, &qword_27C771878);
                        if (v11 <= 0x3F)
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
    }
  }
}

unint64_t sub_20BFD223C()
{
  result = qword_27C7717C8;
  if (!qword_27C7717C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C767830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7717C8);
  }

  return result;
}

void sub_20BFD22B8()
{
  if (!qword_27C7717D0)
  {
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_27C7717D0);
    }
  }
}

void sub_20BFD2308(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    a5();
    v7 = type metadata accessor for URLParameter();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_20BFD2378()
{
  result = qword_27C7717E8;
  if (!qword_27C7717E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7717E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7717E8);
  }

  return result;
}

unint64_t sub_20BFD23F4()
{
  result = qword_27C771800;
  if (!qword_27C771800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7717F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771800);
  }

  return result;
}

unint64_t sub_20BFD2470()
{
  result = qword_27C771810;
  if (!qword_27C771810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C769B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771810);
  }

  return result;
}

unint64_t sub_20BFD24EC()
{
  result = qword_27C771820;
  if (!qword_27C771820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C762AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771820);
  }

  return result;
}

unint64_t sub_20BFD2568()
{
  result = qword_27C771838;
  if (!qword_27C771838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C771830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771838);
  }

  return result;
}

unint64_t sub_20BFD25E4()
{
  result = qword_27C771848;
  if (!qword_27C771848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C765218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771848);
  }

  return result;
}

unint64_t sub_20BFD2660()
{
  result = qword_27C771868;
  if (!qword_27C771868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C771860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771868);
  }

  return result;
}

void sub_20BFD26DC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for URLParameter();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_20BFD2790()
{
  result = qword_27C771880;
  if (!qword_27C771880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771880);
  }

  return result;
}

unint64_t sub_20BFD27E8()
{
  result = qword_27C771888;
  if (!qword_27C771888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771888);
  }

  return result;
}

unint64_t sub_20BFD2840()
{
  result = qword_27C771890;
  if (!qword_27C771890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771890);
  }

  return result;
}

unint64_t sub_20BFD2898()
{
  result = qword_27C771898;
  if (!qword_27C771898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771898);
  }

  return result;
}

unint64_t sub_20BFD28EC()
{
  result = qword_27C7718A0;
  if (!qword_27C7718A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7718A0);
  }

  return result;
}

unint64_t sub_20BFD2944()
{
  result = qword_27C7718A8;
  if (!qword_27C7718A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7718A8);
  }

  return result;
}

unint64_t sub_20BFD299C()
{
  result = qword_27C7718B0;
  if (!qword_27C7718B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7718B0);
  }

  return result;
}

unint64_t sub_20BFD29F4()
{
  result = qword_27C7718B8;
  if (!qword_27C7718B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7718B8);
  }

  return result;
}

unint64_t sub_20BFD2A4C()
{
  result = qword_27C7718C0;
  if (!qword_27C7718C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7718C0);
  }

  return result;
}

unint64_t sub_20BFD2AA8()
{
  result = qword_27C7718C8;
  if (!qword_27C7718C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7718C8);
  }

  return result;
}

uint64_t sub_20BFD2AFC()
{
  v0 = sub_20C13DEA4();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_20BFD2B48()
{
  v0 = sub_20C13DEA4();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_20BFD2B94()
{
  v0 = sub_20C13DEA4();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_20BFD2BE0()
{
  v0 = sub_20C13DEA4();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

id TVUpNextQueueViewController.__allocating_init(dependencies:pageNavigator:pageContext:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v12 = sub_20BFD3A20(a1, v11, a3, a4, v4, v9, v10);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v12;
}

id TVUpNextQueueViewController.init(dependencies:pageNavigator:pageContext:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_20BFD37C4(a1, v14, a3, a4, v4, v9, v10);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v16;
}

Swift::Void __swiftcall TVUpNextQueueViewController.viewDidLoad()()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI27TVUpNextQueueViewController_focusedWorkoutController];
  [v0 addChildViewController_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_24;
  }

  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v5 = v4;
  [v3 addSubview_];

  [v1 didMoveToParentViewController_];
  v6 = [v1 view];
  if (!v6)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = v6;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];

  v8 = *&v0[OBJC_IVAR____TtC9SeymourUI27TVUpNextQueueViewController_listViewController];
  [v0 addChildViewController_];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v10 = v9;
  v11 = [v8 view];
  if (!v11)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v12 = v11;
  [v10 addSubview_];

  [v8 didMoveToParentViewController_];
  v13 = [v8 view];
  if (!v13)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v14 = v13;
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20C14FE90;
  v16 = [v8 view];
  if (!v16)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v17 = v16;
  v18 = [v16 leadingAnchor];

  v19 = [v1 view];
  if (!v19)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v20 = v19;
  v21 = [v19 trailingAnchor];

  v22 = [v18 constraintEqualToAnchor:v21 constant:90.0];
  *(v15 + 32) = v22;
  v23 = [v8 view];
  if (!v23)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v24 = v23;
  v25 = [v23 trailingAnchor];

  v26 = [v0 view];
  if (!v26)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v27 = v26;
  v28 = [v26 safeAreaLayoutGuide];

  v29 = [v28 trailingAnchor];
  v30 = [v25 constraintEqualToAnchor_];

  *(v15 + 40) = v30;
  v31 = [v8 view];
  if (!v31)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v32 = v31;
  v33 = [v31 bottomAnchor];

  v34 = [v0 view];
  if (!v34)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v35 = v34;
  v36 = [v34 bottomAnchor];

  v37 = [v33 constraintEqualToAnchor_];
  *(v15 + 48) = v37;
  v38 = [v8 view];
  if (!v38)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v39 = v38;
  v40 = [v38 topAnchor];

  v41 = [v0 view];
  if (!v41)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v42 = v41;
  v43 = [v41 topAnchor];

  v44 = [v40 constraintEqualToAnchor:v43 constant:110.0];
  *(v15 + 56) = v44;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  v46 = [v1 view];
  if (!v46)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v47 = v46;
  v48 = [v46 leadingAnchor];

  v49 = [v0 view];
  if (!v49)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v50 = v49;
  v51 = [v49 safeAreaLayoutGuide];

  v52 = [v51 leadingAnchor];
  v53 = [v48 constraintEqualToAnchor_];

  *(inited + 32) = v53;
  v54 = [v1 view];
  if (!v54)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v55 = v54;
  v56 = [v54 topAnchor];

  v57 = [v0 view];
  if (!v57)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v58 = v57;
  v59 = [v57 topAnchor];

  v60 = [v56 constraintEqualToAnchor:v59 constant:130.0];
  *(inited + 40) = v60;
  v61 = [v1 view];
  if (!v61)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v62 = v61;
  v63 = [v61 bottomAnchor];

  v64 = [v0 view];
  if (!v64)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v65 = v64;
  v66 = [v64 safeAreaLayoutGuide];

  v67 = [v66 bottomAnchor];
  v68 = [v63 constraintEqualToAnchor_];

  *(inited + 48) = v68;
  v69 = [v1 view];
  if (v69)
  {
    v70 = v69;
    v71 = [v69 widthAnchor];

    v72 = [v71 constraintEqualToConstant_];
    *(inited + 56) = v72;
    v73 = objc_opt_self();
    sub_20B8D9310(inited);
    sub_20B5E29D0();
    v74 = sub_20C13CC54();

    [v73 activateConstraints_];

    return;
  }

LABEL_43:
  __break(1u);
}

id TVUpNextQueueViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C13C914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TVUpNextQueueViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20BFD37C4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v14 = *(a6 - 8);
  MEMORY[0x28223BE20](ObjectType);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v30 - v19;
  (*(v14 + 32))(&v30 - v19, a2, a6, v18);
  v21 = &a5[OBJC_IVAR____TtC9SeymourUI27TVUpNextQueueViewController_layout];
  *v21 = xmmword_20C153DC0;
  *(v21 + 1) = xmmword_20C153DD0;
  type metadata accessor for TVUpNextQueuePresenter();
  swift_allocObject();

  v23 = sub_20B91BCA8(v22, a3, a4);
  *&a5[OBJC_IVAR____TtC9SeymourUI27TVUpNextQueueViewController_presenter] = v23;
  v24 = *(v23 + 24);
  v25 = objc_allocWithZone(type metadata accessor for TVUpNextQueueListViewController());
  (*(v14 + 16))(v16, v20, a6);

  v26 = sub_20B9F61F4(a1, v24, v16, v25, a6, a7);

  *&a5[OBJC_IVAR____TtC9SeymourUI27TVUpNextQueueViewController_listViewController] = v26;
  objc_allocWithZone(type metadata accessor for TVQueueFocusedWorkoutViewController());

  *&a5[OBJC_IVAR____TtC9SeymourUI27TVUpNextQueueViewController_focusedWorkoutController] = sub_20BC1C728(v27);
  v32.receiver = a5;
  v32.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v32, sel_initWithNibName_bundle_, 0, 0);
  (*(v14 + 8))(v20, a6);
  return v28;
}

id sub_20BFD3A20(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(v16);
  (*(v13 + 16))(v15, a2, a6);
  return sub_20BFD37C4(a1, v15, a3, a4, v17, a6, a7);
}

uint64_t sub_20BFD3B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
    if (a5)
    {
      MEMORY[0x20F2F58E0](2);
      sub_20C13D604();
    }

    else
    {
      MEMORY[0x20F2F58E0](0);
    }

    return sub_20C13D604();
  }

  if (a5 == 2)
  {
    MEMORY[0x20F2F58E0](3);
    MEMORY[0x20F2F58E0](a2);
    sub_20C13D604();
    return sub_20C13D604();
  }

  return MEMORY[0x20F2F58E0](1);
}

uint64_t sub_20BFD3C58()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  sub_20C13E164();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      MEMORY[0x20F2F58E0](3);
      MEMORY[0x20F2F58E0](v1);
      sub_20C13D604();
      sub_20C13D604();
    }

    else
    {
      MEMORY[0x20F2F58E0](1);
    }
  }

  else
  {
    if (v2)
    {
      MEMORY[0x20F2F58E0](2);
      sub_20C13D604();
    }

    else
    {
      MEMORY[0x20F2F58E0](0);
    }

    sub_20C13D604();
  }

  return sub_20C13E1B4();
}

uint64_t sub_20BFD3D3C()
{
  v1 = *v0;
  if (*(v0 + 24) <= 1u)
  {
    if (*(v0 + 24))
    {
      MEMORY[0x20F2F58E0](2);
      sub_20C13D604();
    }

    else
    {
      MEMORY[0x20F2F58E0](0);
    }

    return sub_20C13D604();
  }

  if (*(v0 + 24) == 2)
  {
    MEMORY[0x20F2F58E0](3);
    MEMORY[0x20F2F58E0](v1);
    sub_20C13D604();
    return sub_20C13D604();
  }

  return MEMORY[0x20F2F58E0](1);
}

uint64_t sub_20BFD3E04()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  sub_20C13E164();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      MEMORY[0x20F2F58E0](3);
      MEMORY[0x20F2F58E0](v1);
      sub_20C13D604();
      sub_20C13D604();
    }

    else
    {
      MEMORY[0x20F2F58E0](1);
    }
  }

  else
  {
    if (v2)
    {
      MEMORY[0x20F2F58E0](2);
      sub_20C13D604();
    }

    else
    {
      MEMORY[0x20F2F58E0](0);
    }

    sub_20C13D604();
  }

  return sub_20C13E1B4();
}

unint64_t sub_20BFD3F0C()
{
  result = qword_27C7718F0;
  if (!qword_27C7718F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7718F0);
  }

  return result;
}

BOOL sub_20BFD3F60(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      if (a8 == 1)
      {
        sub_20B63C198();
        if (sub_20C13D5F4())
        {
          return sub_20C13D5F4() & 1;
        }
      }
    }

    else if (!a8)
    {
      sub_20B63C198();
      return sub_20C13D5F4() & 1;
    }

    return 0;
  }

  if (a4 == 2)
  {
    if (a8 == 2 && a1 == a5)
    {
      sub_20B63C198();
      if (sub_20C13D5F4())
      {
        return sub_20C13D5F4() & 1;
      }
    }

    return 0;
  }

  return a8 == 3 && !(a6 | a5 | a7);
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI18WeekdayPlannerItemO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_20BFD40A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20BFD40E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_20BFD4130(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

unint64_t sub_20BFD4170()
{
  result = qword_27C7718F8;
  if (!qword_27C7718F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7718F8);
  }

  return result;
}

uint64_t sub_20BFD41E8()
{
  v1 = [*v0 sourceApplication];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_20C13C954();

  return v3;
}

uint64_t sub_20BFD4274(uint64_t a1, uint64_t a2, SEL *a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v9 = [*v6 *a3];
  sub_20B51C88C(0, a4);
  sub_20B7187E0(a6, a4);
  v10 = sub_20C13CF74();

  return v10;
}

id PlaceholderViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *PlaceholderViewController.init()()
{
  v1 = OBJC_IVAR____TtC9SeymourUI25PlaceholderViewController_activityIndicator;
  v2 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v1] = v2;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for PlaceholderViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
  [*&v3[OBJC_IVAR____TtC9SeymourUI25PlaceholderViewController_activityIndicator] setHidesWhenStopped_];
  return v3;
}

void sub_20BFD4590()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for PlaceholderViewController();
  objc_msgSendSuper2(&v20, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [objc_opt_self() blackColor];
  [v2 setBackgroundColor_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  v6 = *&v0[OBJC_IVAR____TtC9SeymourUI25PlaceholderViewController_activityIndicator];
  [v4 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20C151490;
  v8 = [v6 centerYAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = v9;
  v11 = [v9 centerYAnchor];

  v12 = [v8 constraintEqualToAnchor_];
  *(v7 + 32) = v12;
  v13 = [v6 centerXAnchor];
  v14 = [v0 view];
  if (v14)
  {
    v15 = v14;
    v16 = objc_opt_self();
    v17 = [v15 centerXAnchor];

    v18 = [v13 constraintEqualToAnchor_];
    *(v7 + 40) = v18;
    sub_20B5E29D0();
    v19 = sub_20C13CC54();

    [v16 activateConstraints_];

    return;
  }

LABEL_9:
  __break(1u);
}

id PlaceholderViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C13C914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PlaceholderViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceholderViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_20BFD4964(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = a1;
  v3[3] = a2;
  v10 = objc_allocWithZone(MEMORY[0x277CEF768]);
  swift_unknownObjectRetain();
  v11 = [v10 init];
  v12 = sub_20C13C914();
  [v11 setIdentifier_];

  [v11 setEventMask_];
  sub_20C13CEC4();
  [v11 setAttentionLostTimeout_];
  v13 = [objc_allocWithZone(MEMORY[0x277CEF760]) init];
  v3[4] = v13;
  [v13 setConfiguration:v11 shouldReset:0];
  v14 = v3[4];
  sub_20B5E2E18();
  v15 = v14;
  v16 = sub_20C13D374();
  v17 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_20BFD505C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B762A80;
  aBlock[3] = &block_descriptor_171;
  v18 = _Block_copy(aBlock);

  [v15 setEventHandlerWithQueue:v16 block:v18];
  _Block_release(v18);

  v19 = v3[4];
  aBlock[0] = 0;
  if ([v19 resumeWithError_])
  {
    v20 = aBlock[0];
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = aBlock[0];
    v22 = sub_20C132A44();

    swift_willThrow();
    sub_20C13B534();
    v23 = v22;
    v37 = v9;
    v24 = sub_20C13BB74();
    v25 = sub_20C13D1D4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v36 = v7;
      v27 = v26;
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v29 = MEMORY[0x20F2F5860](v38, v39);
      v31 = sub_20B51E694(v29, v30, aBlock);
      v35 = v6;
      v32 = v31;

      *(v27 + 4) = v32;
      _os_log_impl(&dword_20B517000, v24, v25, "Unable to resume awareness client: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x20F2F6A40](v28, -1, -1);
      MEMORY[0x20F2F6A40](v27, -1, -1);

      swift_unknownObjectRelease();
      (*(v36 + 8))(v37, v35);
    }

    else
    {
      swift_unknownObjectRelease();

      (*(v7 + 8))(v37, v6);
    }
  }

  return v3;
}

uint64_t sub_20BFD4DAC(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BFD4E0C(a1);
  }

  return result;
}

uint64_t sub_20BFD4E0C(void *a1)
{
  v2 = sub_20C13A974();
  v13 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13A6F4();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 eventMask];
  swift_getObjectType();
  if (v10 == 1)
  {
    sub_20C13A6E4();
    sub_20C13A764();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    sub_20C13A964();
    sub_20C13A764();
    return (*(v13 + 8))(v4, v2);
  }
}

uint64_t sub_20BFD4FF8()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id static UIColor.keyTint.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
}

id static UIColor.background.getter()
{
  v0 = [objc_opt_self() systemBackgroundColor];

  return v0;
}

id static UIColor.focusedBackground.getter()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

id static UIColor.meditationTeal.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.419607843 green:0.984313725 blue:0.97254902 alpha:1.0];
}

uint64_t sub_20BFD519C()
{
  v1 = v0;

  sub_20C13CEC4();
  v3 = v2;
  type metadata accessor for TVSubscribeOnPersonalDevicePresenter();
  swift_allocObject();
  sub_20BC9A1C0(v3);

  v4 = objc_allocWithZone(type metadata accessor for TVSubscribeOnPersonalDeviceViewController());

  v6 = sub_20BD7DB9C(v5);
  v7 = [v1 navigationController];
  if (v7)
  {
    v8 = v7;
    [v7 presentViewController:v6 animated:1 completion:0];
  }
}

uint64_t sub_20BFD528C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  (*(a3 + 16))(a1, a3);
  sub_20C13CEC4();
  v6 = v5;
  type metadata accessor for TVSubscribeOnPersonalDevicePresenter();
  swift_allocObject();
  sub_20BC9A1C0(v6);

  v7 = objc_allocWithZone(type metadata accessor for TVSubscribeOnPersonalDeviceViewController());

  v9 = sub_20BD7DB9C(v8);
  v10 = [v4 navigationController];
  if (v10)
  {
    v11 = v10;
    [v10 presentViewController:v9 animated:1 completion:0];
  }
}

uint64_t sub_20BFD5394(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v24, v25);
  sub_20C138D34();
  __swift_project_boxed_opaque_existential_1(v24, v25);
  sub_20C138D34();
  v9 = sub_20C13C914();

  v10 = sub_20C13C914();

  v11 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:1];

  __swift_project_boxed_opaque_existential_1(v24, v25);
  sub_20C138D34();
  v12 = sub_20C13C914();

  v13 = objc_opt_self();
  v14 = [v13 actionWithTitle:v12 style:1 handler:0];

  [v11 addAction_];
  if ((a1 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v24, v25);
    sub_20C138D34();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v16 = sub_20C13C914();

    aBlock[4] = a4;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B762A80;
    aBlock[3] = a5;
    v17 = _Block_copy(aBlock);

    v18 = [v13 actionWithTitle:v16 style:0 handler:v17];
    _Block_release(v17);

    [v11 addAction_];
  }

  v19 = [v7 navigationController];
  if (v19)
  {
    v20 = v19;
    [v19 presentViewController:v11 animated:1 completion:0];
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_20BFD571C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  (*(a4 + 16))(a2, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();

  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_20C138D34();
  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_20C138D34();
  v9 = sub_20C13C914();

  v10 = sub_20C13C914();

  v11 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:1];

  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_20C138D34();
  v12 = sub_20C13C914();

  v13 = objc_opt_self();
  v14 = [v13 actionWithTitle:v12 style:1 handler:0];

  [v11 addAction_];
  if ((a1 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v25, v26);
    sub_20C138D34();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    v16[2] = a2;
    v16[3] = a3;
    v16[4] = a4;
    v16[5] = v15;

    v17 = sub_20C13C914();

    aBlock[4] = sub_20BFDA5C8;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B762A80;
    aBlock[3] = &block_descriptor_62_1;
    v18 = _Block_copy(aBlock);

    v19 = [v13 actionWithTitle:v17 style:0 handler:v18];
    _Block_release(v18);

    [v11 addAction_];
  }

  v20 = [v5 navigationController];
  if (v20)
  {
    v21 = v20;
    [v20 presentViewController:v11 animated:1 completion:0];
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_20BFD5B08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = type metadata accessor for NavigationRequest();
  v8 = (v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7710E0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 64);
  v14 = sub_20C1387E4();
  (*(*(v14 - 8) + 16))(v10, a2, v14);
  v15 = sub_20C1388F4();
  (*(*(v15 - 8) + 16))(&v10[v12], a3, v15);
  v10[v13] = 0;
  type metadata accessor for NavigationResource();
  swift_storeEnumTagMultiPayload();
  v10[v8[7]] = 1;
  type metadata accessor for NavigationIntent();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationSource();
  swift_storeEnumTagMultiPayload();
  v10[v8[9]] = 0;
  v10[v8[10]] = 2;
  *&v10[v8[11]] = 0;
  a4(v10);
  return sub_20BB2C79C(v10);
}

uint64_t sub_20BFD5CC4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for NavigationRequest();
  v13 = (v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7710E0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 64);
  v19 = sub_20C1387E4();
  (*(*(v19 - 8) + 16))(v15, a1, v19);
  v20 = sub_20C1388F4();
  (*(*(v20 - 8) + 16))(&v15[v17], a2, v20);
  v15[v18] = 0;
  type metadata accessor for NavigationResource();
  swift_storeEnumTagMultiPayload();
  v15[v13[7]] = 1;
  type metadata accessor for NavigationIntent();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationSource();
  swift_storeEnumTagMultiPayload();
  v15[v13[9]] = 0;
  v15[v13[10]] = 2;
  *&v15[v13[11]] = 0;
  sub_20BFD8534(v15, a3, a4, a5, a6);
  return sub_20BB2C79C(v15);
}

uint64_t sub_20BFD5EA8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_20C13BB84();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350);
  v7 = *(v60 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v60);
  v57 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764240);
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = *(v63 + 64);
  MEMORY[0x28223BE20](v11);
  v59 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v65 = &v56 - v14;
  MEMORY[0x28223BE20](v15);
  v66 = &v56 - v16;
  v17 = sub_20C138F84();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51CC64(a1, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771908);
  sub_20B51C88C(0, &unk_27C769A50);
  if (swift_dynamicCast())
  {
    v61 = v68[0];
    v62 = a2;
    swift_getObjectType();
    sub_20C138F74();
    sub_20BFDA3D0(&qword_27C76C460, MEMORY[0x277D541F0]);
    sub_20C13A764();
    (*(v18 + 8))(v20, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00);
    sub_20C133AA4();
    __swift_project_boxed_opaque_existential_1(v70, v70[3]);
    v21 = v58;
    sub_20C13B954();
    v22 = v57;
    v23 = v60;
    (*(v7 + 16))(v57, v21, v60);
    v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v25 = swift_allocObject();
    (*(v7 + 32))(v25 + v24, v22, v23);
    v26 = (v25 + ((v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v26 = sub_20BFD8DEC;
    v26[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8);
    v27 = v65;
    sub_20C137C94();
    (*(v7 + 8))(v21, v23);
    v28 = v63;
    v29 = v64;
    v60 = *(v63 + 16);
    v30 = v59;
    (v60)(v59, v27, v64);
    v31 = *(v28 + 80);
    v58 = ((v31 + 16) & ~v31);
    v32 = &v58[v12 + 7] & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    v57 = *(v28 + 32);
    (v57)(v33 + ((v31 + 16) & ~v31), v30, v29);
    v34 = (v33 + v32);
    *v34 = sub_20BFD8E7C;
    v34[1] = 0;
    v35 = v66;
    sub_20C137C94();
    v63 = *(v28 + 8);
    v36 = v65;
    (v63)(v65, v29);
    v37 = swift_allocObject();
    v38 = v67;
    v39 = v60;
    v40 = v61;
    *(v37 + 16) = v67;
    *(v37 + 24) = v40;
    v39(v36, v35, v29);
    v41 = swift_allocObject();
    (v57)(&v58[v41], v36, v29);
    v42 = (v41 + v32);
    *v42 = sub_20BFDA5D4;
    v42[1] = v37;
    v43 = v38;
    sub_20C137C94();
    (v63)(v66, v29);
    return __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_20C13B534();
    sub_20B51CC64(a1, v70);
    v45 = sub_20C13BB74();
    v46 = sub_20C13D1D4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v69 = v48;
      *v47 = 136315138;
      sub_20B51CC64(v70, v68);
      v49 = sub_20C13C9D4();
      v51 = v50;
      __swift_destroy_boxed_opaque_existential_1(v70);
      v52 = sub_20B51E694(v49, v51, &v69);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_20B517000, v45, v46, "Failed to handle purchase with non-AMS buy params: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x20F2F6A40](v48, -1, -1);
      MEMORY[0x20F2F6A40](v47, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v70);
    }

    (*(v61 + 8))(v6, v62);
    v53 = sub_20C138A84();
    sub_20BFDA3D0(&qword_27C771910, MEMORY[0x277D54140]);
    v54 = swift_allocError();
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D54138], v53);
    *(swift_allocObject() + 16) = v54;
    return sub_20C137CA4();
  }
}

uint64_t sub_20BFD6778@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_20C13BB84();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350);
  v7 = *(v60 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v60);
  v57 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764240);
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = *(v63 + 64);
  MEMORY[0x28223BE20](v11);
  v59 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v65 = &v56 - v14;
  MEMORY[0x28223BE20](v15);
  v66 = &v56 - v16;
  v17 = sub_20C138F84();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51CC64(a1, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771908);
  sub_20B51C88C(0, &unk_27C769A50);
  if (swift_dynamicCast())
  {
    v61 = v68[0];
    v62 = a2;
    swift_getObjectType();
    sub_20C138F74();
    sub_20BFDA3D0(&qword_27C76C460, MEMORY[0x277D541F0]);
    sub_20C13A764();
    (*(v18 + 8))(v20, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00);
    sub_20C133AA4();
    __swift_project_boxed_opaque_existential_1(v70, v70[3]);
    v21 = v58;
    sub_20C13B954();
    v22 = v57;
    v23 = v60;
    (*(v7 + 16))(v57, v21, v60);
    v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v25 = swift_allocObject();
    (*(v7 + 32))(v25 + v24, v22, v23);
    v26 = (v25 + ((v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v26 = sub_20BFD8DEC;
    v26[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8);
    v27 = v65;
    sub_20C137C94();
    (*(v7 + 8))(v21, v23);
    v28 = v63;
    v29 = v64;
    v60 = *(v63 + 16);
    v30 = v59;
    (v60)(v59, v27, v64);
    v31 = *(v28 + 80);
    v58 = ((v31 + 16) & ~v31);
    v32 = &v58[v12 + 7] & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    v57 = *(v28 + 32);
    (v57)(v33 + ((v31 + 16) & ~v31), v30, v29);
    v34 = (v33 + v32);
    *v34 = sub_20BFD8E7C;
    v34[1] = 0;
    v35 = v66;
    sub_20C137C94();
    v63 = *(v28 + 8);
    v36 = v65;
    (v63)(v65, v29);
    v37 = swift_allocObject();
    v38 = v67;
    v39 = v60;
    v40 = v61;
    *(v37 + 16) = v67;
    *(v37 + 24) = v40;
    v39(v36, v35, v29);
    v41 = swift_allocObject();
    (v57)(&v58[v41], v36, v29);
    v42 = (v41 + v32);
    *v42 = sub_20BFDA6BC;
    v42[1] = v37;
    v43 = v38;
    sub_20C137C94();
    (v63)(v66, v29);
    return __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_20C13B534();
    sub_20B51CC64(a1, v70);
    v45 = sub_20C13BB74();
    v46 = sub_20C13D1D4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v69 = v48;
      *v47 = 136315138;
      sub_20B51CC64(v70, v68);
      v49 = sub_20C13C9D4();
      v51 = v50;
      __swift_destroy_boxed_opaque_existential_1(v70);
      v52 = sub_20B51E694(v49, v51, &v69);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_20B517000, v45, v46, "Failed to handle purchase with non-AMS buy params: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x20F2F6A40](v48, -1, -1);
      MEMORY[0x20F2F6A40](v47, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v70);
    }

    (*(v61 + 8))(v6, v62);
    v53 = sub_20C138A84();
    sub_20BFDA3D0(&qword_27C771910, MEMORY[0x277D54140]);
    v54 = swift_allocError();
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D54138], v53);
    *(swift_allocObject() + 16) = v54;
    return sub_20C137CA4();
  }
}

uint64_t sub_20BFD7048@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v77 = a5;
  v74 = a3;
  v76 = a2;
  v69 = sub_20C13BB84();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350);
  v9 = *(v70 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v70);
  v65 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v66 = &v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764240);
  v72 = *(v13 - 8);
  v73 = v13;
  v14 = *(v72 + 64);
  MEMORY[0x28223BE20](v13);
  v67 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v75 = &v63 - v16;
  MEMORY[0x28223BE20](v17);
  v71 = &v63 - v18;
  v19 = sub_20C138F84();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51CC64(a1, v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771908);
  sub_20B51C88C(0, &unk_27C769A50);
  if (swift_dynamicCast())
  {
    v69 = v79[0];
    v23 = *(a4 + 24);
    v68 = v10;
    v24 = v76;
    v23(v76, a4);
    v63 = v25;
    swift_getObjectType();
    sub_20C138F74();
    sub_20BFDA3D0(&qword_27C76C460, MEMORY[0x277D541F0]);
    sub_20C13A764();
    swift_unknownObjectRelease();
    (*(v20 + 8))(v22, v19);
    v64 = a4;
    (*(a4 + 16))(v24, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00);
    sub_20C133AA4();

    __swift_project_boxed_opaque_existential_1(v81, v81[3]);
    v26 = v66;
    sub_20C13B954();
    v27 = v65;
    v28 = v70;
    (*(v9 + 16))(v65, v26, v70);
    v29 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v30 = (v68 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    (*(v9 + 32))(v31 + v29, v27, v28);
    v32 = (v31 + v30);
    *v32 = sub_20BFD8DEC;
    v32[1] = 0;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8);
    v33 = v75;
    sub_20C137C94();
    (*(v9 + 8))(v26, v28);
    v34 = v72;
    v35 = v73;
    v70 = *(v72 + 16);
    v36 = v67;
    (v70)(v67, v33, v73);
    v37 = *(v34 + 80);
    v68 = (v37 + 16) & ~v37;
    v38 = (v14 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = v38;
    v39 = swift_allocObject();
    v66 = *(v34 + 32);
    (v66)(v39 + ((v37 + 16) & ~v37), v36, v35);
    v40 = (v39 + v38);
    *v40 = sub_20BFD8E7C;
    v40[1] = 0;
    v41 = v71;
    sub_20C137C94();
    v72 = *(v34 + 8);
    v42 = v75;
    (v72)(v75, v35);
    v43 = swift_allocObject();
    v44 = v74;
    *(v43 + 2) = v76;
    *(v43 + 3) = v44;
    v45 = v78;
    *(v43 + 4) = v64;
    *(v43 + 5) = v45;
    v46 = v70;
    *(v43 + 6) = v69;
    v46(v42, v41, v35);
    v47 = v63;
    v48 = swift_allocObject();
    (v66)(v48 + v68, v42, v35);
    v49 = (v48 + v47);
    *v49 = sub_20BFDA33C;
    v49[1] = v43;
    v50 = v45;
    sub_20C137C94();
    (v72)(v41, v35);
    return __swift_destroy_boxed_opaque_existential_1(v81);
  }

  else
  {
    sub_20C13B534();
    sub_20B51CC64(a1, v81);
    v52 = sub_20C13BB74();
    v53 = sub_20C13D1D4();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v80 = v55;
      *v54 = 136315138;
      sub_20B51CC64(v81, v79);
      v56 = sub_20C13C9D4();
      v58 = v57;
      __swift_destroy_boxed_opaque_existential_1(v81);
      v59 = sub_20B51E694(v56, v58, &v80);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_20B517000, v52, v53, "Failed to handle purchase with non-AMS buy params: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x20F2F6A40](v55, -1, -1);
      MEMORY[0x20F2F6A40](v54, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v81);
    }

    (*(v68 + 8))(v8, v69);
    v60 = sub_20C138A84();
    sub_20BFDA3D0(&qword_27C771910, MEMORY[0x277D54140]);
    v61 = swift_allocError();
    (*(*(v60 - 8) + 104))(v62, *MEMORY[0x277D54138], v60);
    *(swift_allocObject() + 16) = v61;
    return sub_20C137CA4();
  }
}

uint64_t sub_20BFD7BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v43 = a2;
  v3 = type metadata accessor for NavigationRequest();
  v42 = *(v3 - 8);
  v41 = *(v42 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7719A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D260);
  v12 = *(v39 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v35 = &v34 - v15;
  v37 = v2;
  sub_20BD28F0C(*(v2 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dependencies), *(v2 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dynamicOfferCoordinator), *(v2 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_webUserInterfaceCoordinator), v11);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_20BFD8A44;
  *(v16 + 24) = 0;
  (*(v6 + 16))(v8, v11, v5);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = (v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v6 + 32))(v19 + v17, v8, v5);
  v20 = (v19 + v18);
  *v20 = sub_20BFDB1B8;
  v20[1] = v16;
  sub_20B51C88C(0, &qword_281100550);
  v21 = v35;
  sub_20C137C94();
  (*(v6 + 8))(v11, v5);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = v40;
  sub_20B65FE58(v36, v40);
  v24 = (*(v42 + 80) + 24) & ~*(v42 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  sub_20B75B150(v23, v25 + v24);
  v26 = v38;
  v27 = v21;
  v28 = v21;
  v29 = v39;
  (*(v12 + 16))(v38, v27, v39);
  v30 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v31 = swift_allocObject();
  (*(v12 + 32))(v31 + v30, v26, v29);
  v32 = (v31 + ((v13 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v32 = sub_20BFDAFEC;
  v32[1] = v25;
  sub_20C137C94();
  return (*(v12 + 8))(v28, v29);
}

uint64_t sub_20BFD8088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v43 = a2;
  v3 = type metadata accessor for NavigationRequest();
  v42 = *(v3 - 8);
  v41 = *(v42 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7719A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D260);
  v12 = *(v39 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v35 = &v34 - v15;
  v37 = v2;
  sub_20BD28F0C(*(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_dependencies), *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_dynamicOfferCoordinator), *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_webUserInterfaceCoordinator), v11);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_20BFD8A44;
  *(v16 + 24) = 0;
  (*(v6 + 16))(v8, v11, v5);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = (v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v6 + 32))(v19 + v17, v8, v5);
  v20 = (v19 + v18);
  *v20 = sub_20BFDB1B8;
  v20[1] = v16;
  sub_20B51C88C(0, &qword_281100550);
  v21 = v35;
  sub_20C137C94();
  (*(v6 + 8))(v11, v5);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = v40;
  sub_20B65FE58(v36, v40);
  v24 = (*(v42 + 80) + 24) & ~*(v42 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  sub_20B75B150(v23, v25 + v24);
  v26 = v38;
  v27 = v21;
  v28 = v21;
  v29 = v39;
  (*(v12 + 16))(v38, v27, v39);
  v30 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v31 = swift_allocObject();
  (*(v12 + 32))(v31 + v30, v26, v29);
  v32 = (v31 + ((v13 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v32 = sub_20BFDA670;
  v32[1] = v25;
  sub_20C137C94();
  return (*(v12 + 8))(v28, v29);
}

uint64_t sub_20BFD8534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a3;
  v55 = a5;
  v56 = a1;
  v8 = type metadata accessor for NavigationRequest();
  v53 = *(v8 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7719A0);
  v10 = *(v46 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v46);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D260);
  v16 = *(v50 - 8);
  v49 = *(v16 + 64);
  MEMORY[0x28223BE20](v50);
  v48 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v44 = &v43 - v20;
  v45 = v5;
  v21 = *(a4 + 16);
  v47 = a2;
  v22 = v21(a2, a4, v19);
  v23 = (*(a4 + 32))(a2, a4);
  v24 = (*(a4 + 56))(a2, a4);
  sub_20BD28F0C(v22, v23, v24, v15);

  v25 = swift_allocObject();
  *(v25 + 16) = sub_20BFD8A44;
  *(v25 + 24) = 0;
  v26 = v46;
  (*(v10 + 16))(v12, v15, v46);
  v27 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v28 = swift_allocObject();
  (*(v10 + 32))(v28 + v27, v12, v26);
  v29 = (v28 + ((v11 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v29 = sub_20BFDA4D0;
  v29[1] = v25;
  sub_20B51C88C(0, &qword_281100550);
  v30 = v44;
  sub_20C137C94();
  (*(v10 + 8))(v15, v26);
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = v51;
  sub_20B65FE58(v56, v51);
  v33 = (*(v53 + 80) + 48) & ~*(v53 + 80);
  v34 = swift_allocObject();
  v35 = v54;
  *(v34 + 2) = v47;
  *(v34 + 3) = v35;
  *(v34 + 4) = a4;
  *(v34 + 5) = v31;
  sub_20B75B150(v32, v34 + v33);
  v36 = v48;
  v37 = v50;
  (*(v16 + 16))(v48, v30, v50);
  v38 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v39 = (v49 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  (*(v16 + 32))(v40 + v38, v36, v37);
  v41 = (v40 + v39);
  *v41 = sub_20BFDA500;
  v41[1] = v34;
  sub_20C137C94();
  return (*(v16 + 8))(v30, v37);
}

id sub_20BFD8A44@<X0>(void *a1@<X8>)
{
  sub_20C1380F4();
  result = sub_20B9066DC();
  *a1 = result;
  return result;
}

uint64_t sub_20BFD8A84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong navigationController];

    if (v9)
    {
      swift_getObjectType();
      v10 = swift_conformsToProtocol2();
      if (v10)
      {
        v11 = v10;
        swift_beginAccess();
        v12 = swift_unknownObjectWeakLoadStrong();
        if (v12)
        {
          v13 = *(v12 + *a4);
          v14 = v12;

          ObjectType = swift_getObjectType();
          (*(v11 + 56))(a1, a3, v13, ObjectType, v11);
        }
      }
    }
  }

  sub_20B5D9BA8();
  v17 = swift_allocError();
  *v18 = 11;
  *(swift_allocObject() + 16) = v17;
  return sub_20C137CA4();
}

uint64_t sub_20BFD8C2C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong navigationController];

    if (v12)
    {
      swift_getObjectType();
      v13 = swift_conformsToProtocol2();
      if (v13)
      {
        v14 = v13;
        swift_beginAccess();
        v15 = swift_unknownObjectWeakLoadStrong();
        if (v15)
        {
          v16 = v15;
          v17 = (*(a6 + 16))(a4, a6);

          ObjectType = swift_getObjectType();
          (*(v14 + 56))(v9, a3, v17, ObjectType, v14);
        }
      }
    }
  }

  sub_20B5D9BA8();
  v20 = swift_allocError();
  *v21 = 11;
  *(swift_allocObject() + 16) = v20;
  return sub_20C137CA4();
}

uint64_t sub_20BFD8DEC(void **a1)
{
  v1 = *a1;
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8);

  return sub_20C137CA4();
}

uint64_t sub_20BFD8E7C(void *a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v6 = a1;
  v7 = sub_20C13BB74();
  v8 = sub_20C13D1D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x20F2F5850](v15[2], v15[3]);
    v13 = sub_20B51E694(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20B517000, v7, v8, "Failed to fetchCurrentAccount: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  *(swift_allocObject() + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8);
  return sub_20C137CA4();
}

uint64_t sub_20BFD90A0(void **a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = v11;
  v12[6] = a3;
  v12[7] = v10;
  v13 = v10;
  v14 = a3;

  return sub_20C137C94();
}

void sub_20BFD9178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong && (v11 = sub_20BFD9770(a4, a5, &OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_bag, &OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_purchaseCoordinator), Strong, v12 = [v11 performPurchase], v11, v12))
  {
    v13 = swift_allocObject();
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    v15 = v12;

    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = sub_20BFDB1E8;
    v16[4] = v9;
    v18[4] = sub_20BFDA620;
    v18[5] = v16;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_20B98FE2C;
    v18[3] = &block_descriptor_98_1;
    v17 = _Block_copy(v18);

    [v15 addFinishBlock_];

    _Block_release(v17);
  }

  else
  {
  }
}

void sub_20BFD936C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong && (v11 = sub_20BFD9770(a4, a5, &OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_bag, &OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_purchaseCoordinator), Strong, v12 = [v11 performPurchase], v11, v12))
  {
    v13 = swift_allocObject();
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    v15 = v12;

    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = sub_20BFDB1E8;
    v16[4] = v9;
    v18[4] = sub_20BFDA750;
    v18[5] = v16;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_20B98FE2C;
    v18[3] = &block_descriptor_164;
    v17 = _Block_copy(v18);

    [v15 addFinishBlock_];

    _Block_release(v17);
  }

  else
  {
  }
}

void sub_20BFD9560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong && (v17 = sub_20BFD9850(a4, a5, a6, a7, a8), Strong, v18 = [v17 performPurchase], v17, v18))
  {
    v19 = swift_allocObject();
    swift_beginAccess();
    v20 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    v21 = v18;

    v22 = swift_allocObject();
    v22[2] = a6;
    v22[3] = a7;
    v22[4] = a8;
    v22[5] = v19;
    v22[6] = sub_20B8A3EDC;
    v22[7] = v15;
    v24[4] = sub_20BFDA38C;
    v24[5] = v22;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 1107296256;
    v24[2] = sub_20B98FE2C;
    v24[3] = &block_descriptor_172;
    v23 = _Block_copy(v24);

    [v21 addFinishBlock_];

    _Block_release(v23);
  }

  else
  {
  }
}

id sub_20BFD9770(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x277CEE640]) initWithPurchaseType:0 buyParams:a1];
  [v8 setUserInitiated_];
  [v8 setRequiresAccount_];
  [v8 setAccount_];
  v9 = [objc_allocWithZone(MEMORY[0x277CEE660]) initWithPurchase:v8 bag:*(v4 + *a3)];
  [v9 setDelegate_];

  return v9;
}

id sub_20BFD9850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [objc_allocWithZone(MEMORY[0x277CEE640]) initWithPurchaseType:0 buyParams:a1];
  [v8 setUserInitiated_];
  [v8 setRequiresAccount_];
  [v8 setAccount_];
  v9 = *(a5 + 8);
  v10 = v8;
  v11 = [objc_allocWithZone(MEMORY[0x277CEE660]) initWithPurchase:v10 bag:{v9(a3, a5)}];

  swift_unknownObjectRelease();
  v12 = (*(a5 + 40))(a3, a5);
  [v11 setDelegate_];

  return v11;
}

uint64_t sub_20BFD9988(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v26 = a4;
  v12 = sub_20C13C4B4();
  v31 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_20C13C4F4();
  v15 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51C88C(0, &qword_281100530);
  v29 = sub_20C13D374();
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a1;
  v20 = v26;
  v19 = v27;
  v18[4] = a2;
  v18[5] = v20;
  v18[6] = a5;
  aBlock[4] = v19;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = v28;
  v21 = _Block_copy(aBlock);

  v22 = a1;
  v23 = a2;

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20BFDA3D0(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  sub_20C13DA94();
  v24 = v29;
  MEMORY[0x20F2F4AF0](0, v17, v14, v21);
  _Block_release(v21);

  (*(v31 + 8))(v14, v12);
  return (*(v15 + 8))(v17, v30);
}

uint64_t sub_20BFD9C74(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v29 = a4;
  v13 = sub_20C13C4B4();
  v32 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C13C4F4();
  v16 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51C88C(0, &qword_281100530);
  v30 = sub_20C13D374();
  v19 = swift_allocObject();
  v21 = v27;
  v20 = v28;
  v19[2] = a6;
  v19[3] = v21;
  v19[4] = v20;
  v19[5] = a3;
  v19[6] = a1;
  v19[7] = a2;
  v19[8] = v29;
  v19[9] = a5;
  aBlock[4] = sub_20BFDA3BC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_31;
  v22 = _Block_copy(aBlock);

  v23 = a1;
  v24 = a2;

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20BFDA3D0(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  sub_20C13DA94();
  v25 = v30;
  MEMORY[0x20F2F4AF0](0, v18, v15, v22);
  _Block_release(v22);

  (*(v32 + 8))(v15, v13);
  return (*(v16 + 8))(v18, v31);
}

void sub_20BFD9F80(uint64_t a1, void *a2, void *a3, void (*a4)(void *, void), uint64_t a5, void *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + *a6);

    sub_20C065618(a2, a3, 0);
  }

  v13 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
  sub_20C13E1C4();
  a4(v14, v15);
  sub_20B583FB8(v14, v15);
}

void sub_20BFDA07C(uint64_t a1, void *a2, void *a3, void (*a4)(void *, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = (*(a8 + 48))(a6, a8);

    sub_20C065618(a2, a3, 0);
  }

  v16 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
  sub_20C13E1C4();
  a4(v17, v18);
  sub_20B583FB8(v17, v18);
}

uint64_t sub_20BFDA194()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_20BB2A16C();
    sub_20C13A764();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BFDA234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    (*(a5 + 24))(a3, a5);

    swift_getObjectType();
    sub_20BB2A16C();
    sub_20C13A764();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BFDA3D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BFDA418(void **a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a3;
  v6[4] = v4;
  v7 = v4;
  v8 = a3;

  return sub_20C137C94();
}

uint64_t sub_20BFDA500(uint64_t *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(type metadata accessor for NavigationRequest() - 8);
  v7 = v1[5];
  v8 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return sub_20BFD8C2C(a1, v7, v8, v3, v4, v5);
}

uint64_t objectdestroy_86Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_100Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_115Tm_0()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &qword_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &qword_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v2;
    v27 = v0;
    v28 = v3;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v0 = v27;
    v2 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20BFDB0AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

void sub_20BFDB234()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
  }
}

unint64_t sub_20BFDB2C4()
{
  result = qword_27C771918;
  if (!qword_27C771918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771918);
  }

  return result;
}

__n128 sub_20BFDB318@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v111 = sub_20C132EE4();
  v10 = *(v111 - 8);
  v11 = MEMORY[0x28223BE20](v111);
  v12 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v16 = &v100 - v15;
  v106 = a3;
  if ((a3 & 0x80) != 0)
  {
    v101 = v14;
    v102 = v13;
    v103 = v10;
    v110 = a4;
    v105 = a2;
    v29 = *(a1 + 16);
    v30 = MEMORY[0x277D84F90];
    v108 = a1;
    v104 = a5;
    if (v29)
    {
      v133 = MEMORY[0x277D84F90];
      sub_20BB5EAB0(0, v29, 0);
      v31 = v133;
      v107 = (v103 + 8);
      v32 = (a1 + 40);
      v33 = v101;
      do
      {
        v109 = v29;
        v34 = *v32;
        ObjectType = swift_getObjectType();
        v36 = *(v34 + 8);
        swift_unknownObjectRetain();
        v37 = v33;
        v36(ObjectType, v34);
        v38 = v110;
        if (*(v110 + 16))
        {
          v39 = sub_20B65AAD8(v37);
          if (v40)
          {
            v41 = *(v38 + 56) + 168 * v39;
            v43 = *(v41 + 16);
            v42 = *(v41 + 32);
            v112 = *v41;
            v113 = v43;
            v114 = v42;
            v44 = *(v41 + 96);
            v46 = *(v41 + 48);
            v45 = *(v41 + 64);
            v117 = *(v41 + 80);
            v118 = v44;
            v115 = v46;
            v116 = v45;
            v48 = *(v41 + 128);
            v47 = *(v41 + 144);
            v49 = *(v41 + 112);
            v122 = *(v41 + 160);
            v120 = v48;
            v121 = v47;
            v119 = v49;
            sub_20B622224(&v112, &v134);
            swift_unknownObjectRelease();
            (*v107)(v37, v111);
            v131 = v120;
            v132[0] = v121;
            *&v132[1] = v122;
            v127 = v116;
            v128 = v117;
            v129 = v118;
            v130 = v119;
            v123 = v112;
            v124 = v113;
            v125 = v114;
            v126 = v115;
            nullsub_1(&v123);
          }

          else
          {
            swift_unknownObjectRelease();
            (*v107)(v37, v111);
            sub_20B5D8060(&v123);
          }

          v142 = v131;
          v143[0] = v132[0];
          *&v143[1] = *&v132[1];
          v138 = v127;
          v139 = v128;
          v140 = v129;
          v141 = v130;
          v134 = v123;
          v135 = v124;
          v136 = v125;
          v137 = v126;
        }

        else
        {
          swift_unknownObjectRelease();
          (*v107)(v37, v111);
          sub_20B5D8060(&v134);
        }

        v33 = v37;
        v50 = v109;
        v133 = v31;
        v52 = *(v31 + 16);
        v51 = *(v31 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_20BB5EAB0((v51 > 1), v52 + 1, 1);
          v33 = v101;
          v31 = v133;
        }

        *(v31 + 16) = v52 + 1;
        v53 = v31 + 168 * v52;
        v54 = v134;
        v55 = v136;
        *(v53 + 48) = v135;
        *(v53 + 64) = v55;
        *(v53 + 32) = v54;
        v56 = v137;
        v57 = v138;
        v58 = v140;
        *(v53 + 112) = v139;
        *(v53 + 128) = v58;
        *(v53 + 80) = v56;
        *(v53 + 96) = v57;
        v59 = v141;
        v60 = v142;
        v61 = v143[0];
        *(v53 + 192) = *&v143[1];
        *(v53 + 160) = v60;
        *(v53 + 176) = v61;
        *(v53 + 144) = v59;
        v32 += 2;
        v29 = v50 - 1;
      }

      while (v29);
      a5 = v104;
      v62 = v105;
      v30 = MEMORY[0x277D84F90];
      v63 = *(v105 + 16);
      if (v63)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v31 = MEMORY[0x277D84F90];
      v62 = v105;
      v63 = *(v105 + 16);
      if (v63)
      {
LABEL_19:
        v101 = v31;
        v133 = v30;
        sub_20BB5EAB0(0, v63, 0);
        v64 = v133;
        v65 = v102;
        v107 = (v103 + 8);
        v109 = v63 - 1;
        for (i = (v62 + 40); ; i += 2)
        {
          v67 = *i;
          v68 = swift_getObjectType();
          v69 = *(v67 + 8);
          swift_unknownObjectRetain();
          v69(v68, v67);
          v70 = v110;
          if (*(v110 + 16))
          {
            v71 = sub_20B65AAD8(v65);
            if (v72)
            {
              v73 = *(v70 + 56) + 168 * v71;
              v75 = *(v73 + 16);
              v74 = *(v73 + 32);
              v112 = *v73;
              v113 = v75;
              v114 = v74;
              v76 = *(v73 + 96);
              v78 = *(v73 + 48);
              v77 = *(v73 + 64);
              v117 = *(v73 + 80);
              v118 = v76;
              v115 = v78;
              v116 = v77;
              v80 = *(v73 + 128);
              v79 = *(v73 + 144);
              v81 = *(v73 + 112);
              v122 = *(v73 + 160);
              v120 = v80;
              v121 = v79;
              v119 = v81;
              sub_20B622224(&v112, &v123);
              swift_unknownObjectRelease();
              (*v107)(v65, v111);
              v131 = v120;
              v132[0] = v121;
              *&v132[1] = v122;
              v127 = v116;
              v128 = v117;
              v129 = v118;
              v130 = v119;
              v123 = v112;
              v124 = v113;
              v125 = v114;
              v126 = v115;
              nullsub_1(&v123);
            }

            else
            {
              swift_unknownObjectRelease();
              (*v107)(v65, v111);
              sub_20B5D8060(&v123);
            }

            v142 = v131;
            v143[0] = v132[0];
            *&v143[1] = *&v132[1];
            v138 = v127;
            v139 = v128;
            v140 = v129;
            v141 = v130;
            v134 = v123;
            v135 = v124;
            v136 = v125;
            v137 = v126;
          }

          else
          {
            swift_unknownObjectRelease();
            (*v107)(v65, v111);
            sub_20B5D8060(&v134);
          }

          v82 = v108;
          v133 = v64;
          v84 = *(v64 + 16);
          v83 = *(v64 + 24);
          if (v84 >= v83 >> 1)
          {
            sub_20BB5EAB0((v83 > 1), v84 + 1, 1);
            v65 = v102;
            v64 = v133;
          }

          *(v64 + 16) = v84 + 1;
          v85 = v64 + 168 * v84;
          v86 = v134;
          v87 = v136;
          *(v85 + 48) = v135;
          *(v85 + 64) = v87;
          *(v85 + 32) = v86;
          v88 = v137;
          v89 = v138;
          v90 = v140;
          *(v85 + 112) = v139;
          *(v85 + 128) = v90;
          *(v85 + 80) = v88;
          *(v85 + 96) = v89;
          v91 = v141;
          v92 = v142;
          v93 = v143[0];
          *(v85 + 192) = *&v143[1];
          *(v85 + 160) = v92;
          *(v85 + 176) = v93;
          *(v85 + 144) = v91;
          if (!v109)
          {
            break;
          }

          --v109;
        }

        v94 = v106;
        sub_20BE402F4(v82, v105, v106);
        a5 = v104;
        v31 = v101;
        goto LABEL_33;
      }
    }

    v94 = v106;
    sub_20BE402F4(v108, v62, v106);
    v64 = MEMORY[0x277D84F90];
LABEL_33:
    *&v123 = v31;
    *(&v123 + 1) = v64;
    LOBYTE(v124) = v94 & 1;
    sub_20BFDBBB8(&v123);
    goto LABEL_34;
  }

  v17 = swift_getObjectType();
  (*(a2 + 8))(v17, a2);
  if (*(a4 + 16) && (v18 = sub_20B65AAD8(v16), (v19 & 1) != 0))
  {
    v20 = *(a4 + 56) + 168 * v18;
    v22 = *(v20 + 16);
    v21 = *(v20 + 32);
    v123 = *v20;
    v124 = v22;
    v125 = v21;
    v23 = *(v20 + 96);
    v25 = *(v20 + 48);
    v24 = *(v20 + 64);
    v128 = *(v20 + 80);
    v129 = v23;
    v126 = v25;
    v127 = v24;
    v27 = *(v20 + 128);
    v26 = *(v20 + 144);
    v28 = *(v20 + 112);
    *&v132[1] = *(v20 + 160);
    v131 = v27;
    v132[0] = v26;
    v130 = v28;
    sub_20B622224(&v123, &v134);
    sub_20BE402F4(a1, a2, v106);
    (*(v10 + 8))(v16, v111);

    v142 = v131;
    v143[0] = v132[0];
    *&v143[1] = *&v132[1];
    v138 = v127;
    v139 = v128;
    v140 = v129;
    v141 = v130;
    v134 = v123;
    v135 = v124;
    v136 = v125;
    v137 = v126;
    nullsub_1(&v134);
    v120 = v142;
    v121 = v143[0];
    v122 = *&v143[1];
    v116 = v138;
    v117 = v139;
    v118 = v140;
    v119 = v141;
    v112 = v134;
    v113 = v135;
    v114 = v136;
    v115 = v137;
  }

  else
  {

    sub_20BE402F4(a1, a2, v106);
    (*(v10 + 8))(v16, v111);
    sub_20B5D8060(&v112);
  }

  v131 = v120;
  v132[0] = v121;
  *&v132[1] = v122;
  v127 = v116;
  v128 = v117;
  v129 = v118;
  v130 = v119;
  v123 = v112;
  v124 = v113;
  v125 = v114;
  v126 = v115;
  sub_20BFDBBC4(&v123);
LABEL_34:
  v143[0] = v132[0];
  *(v143 + 9) = *(v132 + 9);
  v138 = v127;
  v139 = v128;
  v140 = v129;
  v141 = v130;
  v134 = v123;
  v135 = v124;
  v136 = v125;
  v137 = v126;
  v95 = v143[0];
  *(a5 + 128) = v131;
  *(a5 + 144) = v95;
  *(a5 + 153) = *(v143 + 9);
  v96 = v139;
  *(a5 + 64) = v138;
  *(a5 + 80) = v96;
  v97 = v141;
  *(a5 + 96) = v140;
  *(a5 + 112) = v97;
  v98 = v135;
  *a5 = v134;
  *(a5 + 16) = v98;
  result = v137;
  *(a5 + 32) = v136;
  *(a5 + 48) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI8ShelfRowVSg(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_20BFDBC2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 169))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 168);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20BFDBC74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 169) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 169) = 0;
    }

    if (a2)
    {
      *(result + 168) = -a2;
    }
  }

  return result;
}

id sub_20BFDBE8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVSessionWatchDiscoveryView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BFDBFA0(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_imageView);
  if (*(a1 + 8))
  {
    type metadata accessor for RemoteBrowsingDiscoveryPresenter(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = *(a1 + 64);
    v7 = sub_20C13C914();
    v8 = objc_opt_self();
    if (v6)
    {
      v9 = [v8 smm:v7 systemImageNamed:?];
    }

    else
    {
      v9 = [v8 imageNamed:v7 inBundle:v5 compatibleWithTraitCollection:0];
    }

    v13 = v9;

    [v3 setImage_];
    v10 = &selRef_stopAnimating;
    v11 = 0.0;
    v12 = 1.0;
  }

  else
  {
    v10 = &selRef_startAnimating;
    v11 = 1.0;
    v12 = 0.0;
  }

  [v3 setAlpha_];
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_spinnerView);
  [v14 setAlpha_];
  [v14 *v10];
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_lookingLabel);
  v16 = sub_20C13C914();
  [v15 setText_];

  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_checkLabel);
  v18 = sub_20C13C914();
  [v17 setText_];
}

void sub_20BFDC17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v9;
  v18 = sub_20BFDDBDC;
  v19 = v10;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_20B7B548C;
  v17 = &block_descriptor_19_6;
  v11 = _Block_copy(&v14);

  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v18 = sub_20B5E4150;
  v19 = v12;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_20B5E3874;
  v17 = &block_descriptor_25_1;
  v13 = _Block_copy(&v14);

  [v8 animateWithDuration:v11 animations:v13 completion:0.25];
  _Block_release(v13);
  _Block_release(v11);
}

void sub_20BFDC348(void (*a1)(void))
{
  a1();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setAlpha_];
  }
}

void sub_20BFDC3B4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  v5 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a1 + 64);
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  *(v4 + 88) = v3;
  aBlock[4] = sub_20BFDDBC8;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_8_1;
  v7 = _Block_copy(aBlock);
  sub_20B5E40E0(a1, v10);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_20BFDDBD4;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_20B5E3874;
  v10[3] = &block_descriptor_12_5;
  v9 = _Block_copy(v10);

  [v2 animateWithDuration:v7 animations:v9 completion:0.25];
  _Block_release(v9);
  _Block_release(v7);
}

void sub_20BFDC590(uint64_t a1)
{
  if (*(a1 + 8))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = *(Strong + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_imageView);

      v4 = sub_20C13C914();
      v5 = [objc_opt_self() systemImageNamed_];

      [v3 setImage_];
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_lookingLabel);

    v9 = sub_20C13C914();
    [v8 setText_];
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = *(v10 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_checkLabel);

    v13 = sub_20C13C914();
    [v12 setText_];
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = *(v14 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_spinnerView);

    [v16 setAlpha_];
  }

  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = *(v17 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_imageView);

    [v19 setAlpha_];
  }
}

void sub_20BFDC7D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_spinnerView);

    [v2 stopAnimating];
  }
}

void sub_20BFDC850()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_productPlacementView);

    [v2 setHidden_];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    [v3 layoutIfNeeded];
  }
}

id sub_20BFDC94C()
{
  [v0 removeFromSuperview];

  return [v0 setAlpha_];
}

uint64_t sub_20BFDC990()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_productPlacementView;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_productPlacementView);
  v3 = *(v1 + 8);
  v4 = v2;
  return sub_20B7F9F58(v2, v3);
}

void sub_20BFDC9DC()
{
  [v0 layoutIfNeeded];
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_20BFDDBC0;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_20B7B548C;
  v4[3] = &block_descriptor_173;
  v3 = _Block_copy(v4);

  [v1 animateWithDuration:v3 animations:0.3];
  _Block_release(v3);
}

char *sub_20BFDCAE0(uint64_t a1)
{
  v2 = v1;
  v130 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v3 - 8);
  v126 = &v124 - v4;
  v5 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_spinnerView;
  v6 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v125 = v5;
  *(v2 + v5) = v6;
  v129 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_lookingLabel;
  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v8 = *MEMORY[0x277D74420];
  v9 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A28] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  v128 = xmmword_20C14F980;
  *(inited + 16) = xmmword_20C14F980;
  v11 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v12 = swift_initStackObject();
  v13 = MEMORY[0x277D74430];
  *(v12 + 16) = v128;
  v14 = *v13;
  *(v12 + 32) = *v13;
  *(v12 + 40) = v8;
  v15 = v11;
  v16 = v14;
  v17 = sub_20B6B134C(v12);
  swift_setDeallocating();
  sub_20B520158(v12 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v17;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v18 = sub_20C13C744();

  v19 = [v9 fontDescriptorByAddingAttributes_];

  v20 = objc_opt_self();
  v21 = [v20 fontWithDescriptor:v19 size:0.0];

  [v7 setFont_];
  v22 = objc_opt_self();
  v23 = [v22 labelColor];
  [v7 setTextColor_];

  [v7 setLineBreakMode_];
  [v7 setNumberOfLines_];
  [v7 setTextAlignment_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v129[v2] = v7;
  v24 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_checkLabel;
  v25 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v26 = [v20 preferredFontForTextStyle_];
  [v25 setFont_];

  v27 = [v22 labelColor];
  [v25 setTextColor_];

  [v25 setTextAlignment_];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v128 = v24;
  *(v2 + v24) = v25;
  if (qword_27C7609B8 != -1)
  {
    swift_once();
  }

  v28 = qword_27C79BC30;
  v29 = *algn_27C79BC38;
  v30 = [v20 preferredFontForTextStyle_];
  v31 = _UISolariumEnabled();
  objc_allocWithZone(type metadata accessor for TVButtonTextContentView());

  v32 = TVButtonTextContentView.init(title:)(v28, v29);
  v33 = v32;
  if (v30)
  {
    [*&v32[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel] setFont_];
  }

  v34 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_startStandaloneButton;
  v127 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_startStandaloneButton;
  v35 = objc_allocWithZone(type metadata accessor for TVButton());
  v36 = sub_20BB87F6C(v33, v31, 0, v35, 0.0, 0.0, 0.0, 0.0);

  v37 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [*&v36[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setBackgroundColor:v37 forState:8];

  *(v2 + v34) = v36;
  v38 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_imageView;
  v39 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  LODWORD(v40) = 1148846080;
  [v39 setContentCompressionResistancePriority:0 forAxis:v40];
  LODWORD(v41) = 1148846080;
  [v39 setContentCompressionResistancePriority:1 forAxis:v41];
  [v39 &selRef_count + 2];

  *(v2 + v38) = v39;
  v42 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_connectingView;
  v43 = [objc_allocWithZone(MEMORY[0x277D75D18]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v43 &selRef_count + 2];
  *(v2 + v42) = v43;
  v44 = v130;
  *(v2 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_presenter) = v130;
  sub_20C0134C0(*(v44 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_platform), v132);
  v45 = v133;
  v46 = v134;
  __swift_project_boxed_opaque_existential_1(v132, v133);
  v47 = *(v46 + 136);

  v48 = v47(v45, v46);
  v49 = v2 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_productPlacementView;
  *v49 = v48;
  *(v49 + 1) = v50;
  __swift_destroy_boxed_opaque_existential_1(v132);
  [*v49 setHidden_];
  v51 = *(v2 + v38);
  v52 = sub_20C13C914();
  v53 = [objc_opt_self() systemImageNamed_];

  [v51 setImage_];
  v54 = *(v2 + v38);
  v55 = objc_opt_self();
  v56 = v54;
  v57 = [v55 configurationWithPointSize_];
  [v56 setPreferredSymbolConfiguration_];

  [*(v2 + v42) addSubview_];
  v58 = *(v2 + v42);
  v124 = v42;
  [v58 addSubview_];
  [*(v2 + v38) setAlpha_];
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_20C150050;
  v60 = *(v2 + v42);
  v61 = v129;
  v62 = *&v129[v2];
  *(v59 + 32) = v60;
  *(v59 + 40) = v62;
  v63 = *(v2 + v128);
  v64 = *(v2 + v127);
  *(v59 + 48) = v63;
  *(v59 + 56) = v64;
  v65 = *v49;
  *(v59 + 64) = v65;
  v66 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B51C88C(0, &qword_27C762910);
  v67 = v60;
  v68 = v62;
  v69 = v63;
  v70 = v64;
  v71 = v65;
  v72 = sub_20C13CC54();

  v73 = [v66 initWithArrangedSubviews_];

  [v73 setAlignment_];
  [v73 setAxis_];
  [v73 setTranslatesAutoresizingMaskIntoConstraints_];
  v74 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_stackView;
  *(v2 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_stackView) = v73;
  [v73 setCustomSpacing:*(v2 + v124) afterView:40.0];
  [*(v2 + v74) setCustomSpacing:*&v61[v2] afterView:25.0];
  [*(v2 + v74) setCustomSpacing:*(v2 + v128) afterView:40.0];
  [*(v2 + v74) setCustomSpacing:*(v2 + v127) afterView:30.0];
  v75 = type metadata accessor for TVSessionWatchDiscoveryView();
  v131.receiver = v2;
  v131.super_class = v75;
  v76 = objc_msgSendSuper2(&v131, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_project_boxed_opaque_existential_1((v130 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_remoteBrowsingSource), *(v130 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_remoteBrowsingSource + 24));
  v77 = v76;
  v78 = v126;
  sub_20C13B184();
  v79 = sub_20C135174();
  v80 = *(v79 - 8);
  if ((*(v80 + 48))(v78, 1, v79) == 1)
  {
    sub_20B520158(v78, &unk_27C76BC00);
LABEL_8:
    v82 = 1;
    goto LABEL_9;
  }

  v81 = sub_20C1350F4();
  (*(v80 + 8))(v78, v79);
  v82 = v81;
  if (v81 == 4)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_20B59046C(v82, 4u, v132);
  v83 = *&v77[OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_lookingLabel];
  v84 = sub_20C13C914();
  [v83 setText_];

  v85 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_checkLabel;
  v86 = *&v77[OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_checkLabel];
  v87 = sub_20C13C914();
  sub_20B5E5C74(v132);
  [v86 setText_];

  *&v128 = v85;
  [*&v77[v85] setContentMode_];
  [*&v77[v85] setLineBreakMode_];
  [*&v77[v85] setNumberOfLines_];
  v88 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_startStandaloneButton;
  [*&v77[OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_startStandaloneButton] addTarget:v77 action:sel_didTapStartStandaloneButton forControlEvents:0x2000];
  [*&v77[v88] becomeFirstResponder];
  v127 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_spinnerView;
  [*&v77[OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_spinnerView] startAnimating];
  v89 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_stackView;
  v90 = *&v77[OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_stackView];
  v91 = v77;
  [v91 addSubview_];
  v129 = objc_opt_self();
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_20C150060;
  v93 = [*&v77[v89] centerXAnchor];
  v94 = [v91 &selRef_handleMenuButtonTapped + 2];
  v95 = [v93 constraintEqualToAnchor_];

  *(v92 + 32) = v95;
  v96 = [*&v77[v89] centerYAnchor];
  v97 = [v91 centerYAnchor];

  v98 = [v96 constraintEqualToAnchor_];
  *(v92 + 40) = v98;
  v99 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_imageView;
  v100 = [*&v91[OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_imageView] centerXAnchor];
  v101 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_connectingView;
  v102 = [*&v91[OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_connectingView] centerXAnchor];
  v103 = [v100 constraintEqualToAnchor_];

  *(v92 + 48) = v103;
  v104 = [*&v91[v99] centerYAnchor];
  v105 = [*&v91[v101] centerYAnchor];
  v106 = [v104 constraintEqualToAnchor_];

  *(v92 + 56) = v106;
  v107 = v127;
  v108 = [*&v77[v127] centerXAnchor];
  v109 = [*&v91[v99] centerXAnchor];
  v110 = [v108 constraintEqualToAnchor_];

  *(v92 + 64) = v110;
  v111 = [*&v77[v107] bottomAnchor];
  v112 = [*&v91[v99] bottomAnchor];
  v113 = [v111 constraintEqualToAnchor_];

  *(v92 + 72) = v113;
  v114 = [*&v91[v101] heightAnchor];
  v115 = [*&v91[v99] heightAnchor];
  v116 = [v114 constraintEqualToAnchor_];

  *(v92 + 80) = v116;
  v117 = [*&v77[v128] widthAnchor];
  v118 = [v91 widthAnchor];

  v119 = [v117 constraintLessThanOrEqualToAnchor:v118 multiplier:0.5];
  *(v92 + 88) = v119;
  v120 = [*&v91[OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_productPlacementView] widthAnchor];
  v121 = [v120 constraintEqualToConstant_];

  *(v92 + 96) = v121;
  sub_20B51C88C(0, &qword_281100500);
  v122 = sub_20C13CC54();

  [v129 activateConstraints_];

  [v91 setAlpha_];
  *(v130 + 40) = &off_2822FE220;
  swift_unknownObjectWeakAssign();

  return v91;
}

void sub_20BFDDBE8()
{
  v1 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_spinnerView;
  v2 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = v0;
  v40 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_lookingLabel;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v5 = *MEMORY[0x277D74420];
  v6 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A28] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v8 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_20C14F980;
  v10 = *MEMORY[0x277D74430];
  *(v9 + 32) = *MEMORY[0x277D74430];
  *(v9 + 40) = v5;
  v11 = v8;
  v12 = v10;
  v13 = sub_20B6B134C(v9);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v13;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v14 = sub_20C13C744();

  v15 = [v6 fontDescriptorByAddingAttributes_];

  v16 = objc_opt_self();
  v17 = [v16 fontWithDescriptor:v15 size:0.0];

  [v4 setFont_];
  v18 = objc_opt_self();
  v19 = [v18 labelColor];
  [v4 setTextColor_];

  [v4 setLineBreakMode_];
  [v4 setNumberOfLines_];
  [v4 setTextAlignment_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v3 + v40) = v4;
  v20 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_checkLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v22 = [v16 preferredFontForTextStyle_];
  [v21 setFont_];

  v23 = [v18 labelColor];
  [v21 setTextColor_];

  [v21 setTextAlignment_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v3 + v20) = v21;
  if (qword_27C7609B8 != -1)
  {
    swift_once();
  }

  v24 = qword_27C79BC30;
  v25 = *algn_27C79BC38;
  v26 = [v16 preferredFontForTextStyle_];
  v27 = _UISolariumEnabled();
  objc_allocWithZone(type metadata accessor for TVButtonTextContentView());

  v28 = TVButtonTextContentView.init(title:)(v24, v25);
  v29 = v28;
  if (v26)
  {
    [*&v28[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel] setFont_];
  }

  v30 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_startStandaloneButton;
  v31 = objc_allocWithZone(type metadata accessor for TVButton());
  v32 = sub_20BB87F6C(v29, v27, 0, v31, 0.0, 0.0, 0.0, 0.0);

  v33 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [*&v32[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setBackgroundColor:v33 forState:8];

  *(v3 + v30) = v32;
  v34 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_imageView;
  v35 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  LODWORD(v36) = 1148846080;
  [v35 setContentCompressionResistancePriority:0 forAxis:v36];
  LODWORD(v37) = 1148846080;
  [v35 setContentCompressionResistancePriority:1 forAxis:v37];
  [v35 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v3 + v34) = v35;
  v38 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_connectingView;
  v39 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v39 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v3 + v38) = v39;
  sub_20C13DE24();
  __break(1u);
}

void sub_20BFDE228(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v250 = a4;
  v246 = a2;
  v247 = a3;
  v5 = type metadata accessor for NavigationRequest();
  v234 = *(v5 - 8);
  v6 = *(v234 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v235 = &v234 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771990);
  v238 = *(v239 - 8);
  v7 = *(v238 + 64);
  MEMORY[0x28223BE20](v239);
  v236 = &v234 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v237 = &v234 - v9;
  v243 = sub_20C138204();
  v242 = *(v243 - 8);
  MEMORY[0x28223BE20](v243);
  v11 = &v234 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v240 = &v234 - v13;
  MEMORY[0x28223BE20](v14);
  v241 = &v234 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v234 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7719A0);
  v244 = *(v19 - 8);
  v245 = v19;
  v20 = *(v244 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = &v234 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v234 - v23;
  v25 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v25);
  v27 = &v234 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = a1;
  sub_20BDC6590(a1, v27, type metadata accessor for NavigationResource);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v147 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FC0) + 48);
      v148 = sub_20C1388F4();
      (*(*(v148 - 8) + 8))(&v27[v147], v148);
      v149 = sub_20C132C14();
      goto LABEL_20;
    case 2u:
    case 5u:
      sub_20BFE0938(v27, type metadata accessor for NavigationResource);
      goto LABEL_21;
    case 3u:
      v66 = *v27;
      v67 = *(v27 + 1);
      v68 = *(v27 + 2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
      sub_20C133AA4();
      v69 = v252;
      v70 = type metadata accessor for MarketingEngagementSheetHandler();
      v71 = objc_allocWithZone(v70);
      v72 = &v71[OBJC_IVAR____TtC9SeymourUI31MarketingEngagementSheetHandler_placement];
      *v72 = v67;
      *(v72 + 1) = v68;
      v251.receiver = v71;
      v251.super_class = v70;
      v73 = objc_msgSendSuper2(&v251, sel_init);
      v74 = [objc_allocWithZone(MEMORY[0x277CEE8E0]) initWithRequest:v66 bag:v69 delegate:v73];
      *(swift_allocObject() + 16) = v74;
      sub_20B62BB28();
      sub_20C137CA4();

      swift_unknownObjectRelease();
      return;
    case 4u:
      v177 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7710E0) + 48);
      v178 = sub_20C1388F4();
      (*(*(v178 - 8) + 8))(&v27[v177], v178);
      v149 = sub_20C1387E4();
      goto LABEL_20;
    case 6u:
      v179 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763FD0) + 48);
      v180 = sub_20C1388F4();
      (*(*(v180 - 8) + 8))(&v27[v179], v180);
      v149 = sub_20C138894();
LABEL_20:
      (*(*(v149 - 8) + 8))(v27, v149);
LABEL_21:
      sub_20BD28F0C(*v249, v246, v247, v24);
      v181 = swift_allocObject();
      *(v181 + 16) = sub_20BFD8A44;
      *(v181 + 24) = 0;
      v183 = v244;
      v182 = v245;
      (*(v244 + 16))(v21, v24, v245);
      v184 = (*(v183 + 80) + 16) & ~*(v183 + 80);
      v185 = swift_allocObject();
      (*(v183 + 32))(v185 + v184, v21, v182);
      v186 = (v185 + ((v20 + v184 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v186 = sub_20BFDA4D0;
      v186[1] = v181;
      sub_20B62BB28();
      sub_20C137C94();
      (*(v183 + 8))(v24, v182);
      return;
    case 7u:
      v151 = *v27;
      v150 = *(v27 + 1);
      v152 = *v249;
      sub_20B51CC64((v249 + 2), &v252);
      type metadata accessor for CatalogModalityPageDataProvider();
      swift_allocObject();

      v153 = sub_20BB9F644(v151, v150, v152);
      sub_20B51CC64(&v252, v256);
      v154 = objc_allocWithZone(type metadata accessor for CatalogModalityDetailViewController());
      v155 = v257;
      v156 = v258;
      v157 = __swift_mutable_project_boxed_opaque_existential_1(v256, v257);
      v158 = MEMORY[0x28223BE20](v157);
      v160 = &v234 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v161 + 16))(v160, v158);
      v162 = sub_20BF9D8F0(v152, v153, v160, v154, v155, v156);

      __swift_destroy_boxed_opaque_existential_1(&v252);
      __swift_destroy_boxed_opaque_existential_1(v256);
      *(swift_allocObject() + 16) = v162;
      sub_20B62BB28();
      goto LABEL_28;
    case 8u:
      v188 = *v27;
      v187 = *(v27 + 1);
      v189 = *v249;
      sub_20B51CC64((v249 + 2), &v252);
      type metadata accessor for CatalogProgramPageDataProvider();
      swift_allocObject();

      v190 = sub_20BC94DE8(v188, v187, v189);
      sub_20B51CC64(&v252, v256);
      v191 = objc_allocWithZone(type metadata accessor for CatalogProgramDetailViewController());
      v192 = v257;
      v193 = v258;
      v194 = __swift_mutable_project_boxed_opaque_existential_1(v256, v257);
      v195 = MEMORY[0x28223BE20](v194);
      v197 = &v234 - ((v196 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v198 + 16))(v197, v195);
      v199 = sub_20C0474E4(v189, v190, v197, v191, v192, v193);

      __swift_destroy_boxed_opaque_existential_1(&v252);
      __swift_destroy_boxed_opaque_existential_1(v256);
      *(swift_allocObject() + 16) = v199;
      sub_20B62BB28();
      goto LABEL_28;
    case 9u:
      v230 = sub_20C132C14();
      (*(*(v230 - 8) + 8))(v27, v230);
      goto LABEL_37;
    case 0xAu:
      v64 = v249[1];
      *(swift_allocObject() + 16) = v64;
      sub_20B62BB28();
      v65 = v64;
      sub_20C137CA4();
      return;
    case 0xBu:
      v164 = *v27;
      v163 = *(v27 + 1);
      v165 = *v249;
      sub_20B51CC64((v249 + 2), &v252);
      (*(v242 + 56))(v18, 1, 1, v243);
      type metadata accessor for PlaylistDetailDataProvider();
      swift_allocObject();

      v166 = sub_20B7DA994(v164, v163, v165, 0, 0, v18);

      sub_20B51CC64(&v252, v256);
      v167 = objc_allocWithZone(type metadata accessor for PlaylistDetailViewController());
      v168 = v257;
      v169 = v258;
      v170 = __swift_mutable_project_boxed_opaque_existential_1(v256, v257);
      v171 = MEMORY[0x28223BE20](v170);
      v173 = &v234 - ((v172 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v174 + 16))(v173, v171);

      v175 = sub_20BF27DF8(v165, v166, 0, 0, v173, v167, v168, v169);
      __swift_destroy_boxed_opaque_existential_1(v256);
      v176 = v175;
      sub_20BF23204(&unk_28228D570);

      __swift_destroy_boxed_opaque_existential_1(&v252);
      *(swift_allocObject() + 16) = v176;
      sub_20B62BB28();
      goto LABEL_28;
    case 0xCu:
      v28 = *v27;
      v29 = *(v27 + 1);
      v30 = *v249;
      sub_20B51CC64((v249 + 2), &v252);
      if (v28)
      {

        v31 = [v28 string];
        v32 = sub_20C13C954();
        v248 = v33;
        v249 = v32;

        if (v29)
        {
LABEL_5:
          v34 = [v29 string];
          v35 = sub_20C13C954();
          v37 = v36;

          goto LABEL_31;
        }
      }

      else
      {

        v248 = 0;
        v249 = 0;
        if (v29)
        {
          goto LABEL_5;
        }
      }

      v35 = 0;
      v37 = 0;
LABEL_31:
      v220 = type metadata accessor for CatalogTipGalleryViewController();
      v222 = *(&v253 + 1);
      v221 = v254;
      v223 = __swift_mutable_project_boxed_opaque_existential_1(&v252, *(&v253 + 1));
      v224 = MEMORY[0x28223BE20](v223);
      v226 = &v234 - ((v225 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v227 + 16))(v226, v224);
      v228 = sub_20B765EDC(v30, v226, v249, v248, v35, v37, v220, v222, v221);

      __swift_destroy_boxed_opaque_existential_1(&v252);
      *(swift_allocObject() + 16) = v228;
      sub_20B62BB28();
      sub_20C137CA4();

LABEL_32:
      return;
    case 0xDu:
      v52 = *v27;
      v51 = *(v27 + 1);
      v53 = *v249;
      sub_20B51CC64((v249 + 2), &v252);
      type metadata accessor for TrainerPageDataProvider();
      swift_allocObject();

      v54 = sub_20BF802CC(v52, v51, v53);
      sub_20B51CC64(&v252, v256);
      v55 = objc_allocWithZone(type metadata accessor for TrainerDetailViewController());
      v56 = v257;
      v57 = v258;
      v58 = __swift_mutable_project_boxed_opaque_existential_1(v256, v257);
      v59 = MEMORY[0x28223BE20](v58);
      v61 = &v234 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v62 + 16))(v61, v59);
      v63 = sub_20B8B8F30(v53, v54, v61, v55, v56, v57);

      __swift_destroy_boxed_opaque_existential_1(&v252);
      __swift_destroy_boxed_opaque_existential_1(v256);
      *(swift_allocObject() + 16) = v63;
      sub_20B62BB28();
      goto LABEL_28;
    case 0xEu:
      v229 = type metadata accessor for NavigationResource;
      goto LABEL_35;
    case 0xFu:
      v75 = v242;
      v76 = v241;
      v77 = v243;
      (*(v242 + 32))(v241, v27, v243);
      v78 = *v249;
      sub_20B51CC64((v249 + 2), &v252);
      v79 = *(v75 + 16);
      v80 = v240;
      v79(v240, v76, v77);
      v79(v11, v80, v77);

      v81 = sub_20C1381A4();
      v83 = v82;
      v79(v18, v11, v77);
      (*(v75 + 56))(v18, 0, 1, v77);
      type metadata accessor for PlaylistDetailDataProvider();
      swift_allocObject();
      v84 = sub_20B7DA994(v81, v83, v78, 0, 0, v18);

      v85 = *(v75 + 8);
      v85(v11, v77);
      sub_20B51CC64(&v252, v256);
      v86 = objc_allocWithZone(type metadata accessor for PlaylistDetailViewController());
      v87 = v257;
      v88 = v258;
      v89 = __swift_mutable_project_boxed_opaque_existential_1(v256, v257);
      v90 = MEMORY[0x28223BE20](v89);
      v92 = &v234 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v93 + 16))(v92, v90);

      v94 = sub_20BF27DF8(v78, v84, 0, 0, v92, v86, v87, v88);
      __swift_destroy_boxed_opaque_existential_1(v256);
      v95 = v94;
      sub_20BF23204(&unk_28228D598);

      v85(v240, v77);
      __swift_destroy_boxed_opaque_existential_1(&v252);
      *(swift_allocObject() + 16) = v95;
      sub_20B62BB28();
      sub_20C137CA4();
      v85(v241, v77);
      return;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_39;
      }

      v201 = *v27;
      v200 = *(v27 + 1);
      v202 = *v249;
      sub_20B51CC64((v249 + 2), &v252);
      type metadata accessor for CatalogWorkoutPageDataProvider();
      swift_allocObject();

      v203 = sub_20C114A78(v201, v200, v202);
      sub_20B51CC64(&v252, v256);
      v204 = objc_allocWithZone(type metadata accessor for CatalogWorkoutDetailViewController());
      v205 = v257;
      v206 = v258;
      v207 = __swift_mutable_project_boxed_opaque_existential_1(v256, v257);
      v208 = MEMORY[0x28223BE20](v207);
      v210 = &v234 - ((v209 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v211 + 16))(v210, v208);
      v212 = sub_20BF02044(v202, v203, v210, v204, v205, v206);

      __swift_destroy_boxed_opaque_existential_1(&v252);
      __swift_destroy_boxed_opaque_existential_1(v256);
      *(swift_allocObject() + 16) = v212;
      sub_20B62BB28();
      goto LABEL_28;
    case 0x11u:
      while (1)
      {
        sub_20C13DE24();
        __break(1u);
LABEL_39:
        v229 = type metadata accessor for WorkoutNavigationResource;
LABEL_35:
        sub_20BFE0938(v27, v229);
LABEL_37:
        *&v252 = 0;
        *(&v252 + 1) = 0xE000000000000000;
        sub_20C13DC94();
        v231 = NavigationRequest.description.getter();
        v233 = v232;

        *&v252 = v231;
        *(&v252 + 1) = v233;
        v27 = &v252;
        MEMORY[0x20F2F4230](0xD000000000000022, 0x800000020C1B9EF0);
      }

    case 0x12u:
      v38 = type metadata accessor for AccountViewController();
      sub_20B51CC64((v249 + 2), &v252);
      v39 = *(&v253 + 1);
      v40 = v254;
      v41 = __swift_mutable_project_boxed_opaque_existential_1(&v252, *(&v253 + 1));
      v42 = MEMORY[0x28223BE20](v41);
      v44 = &v234 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v45 + 16))(v44, v42);

      v47 = sub_20BB681F0(v46, 0, 0, v44, v38, v39, v40);
      __swift_destroy_boxed_opaque_existential_1(&v252);
      v48 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
      v49 = objc_allocWithZone(type metadata accessor for NotificationSettingsViewController());
      v50 = sub_20BFB2120();

      [v48 pushViewController:v50 animated:0];
      *(swift_allocObject() + 16) = v48;
      sub_20B62BB28();
      sub_20C137CA4();

      return;
    case 0x13u:
      v219 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
      *(swift_allocObject() + 16) = v219;
      sub_20B62BB28();
      goto LABEL_28;
    case 0x14u:
      v96 = v248;
      v97 = v235;
      sub_20BDC6590(v248, v235, type metadata accessor for NavigationRequest);
      v98 = v249;
      sub_20BFE0734(v249, &v252);
      v99 = *(v234 + 80);
      v100 = (v99 + 16) & ~v99;
      v101 = swift_allocObject();
      sub_20B75B150(v97, v101 + v100);
      v102 = v101 + ((v6 + v100 + 7) & 0xFFFFFFFFFFFFFFF8);
      v103 = v253;
      *v102 = v252;
      *(v102 + 16) = v103;
      *(v102 + 32) = v254;
      *(v102 + 48) = v255;
      v104 = swift_allocObject();
      *(v104 + 16) = "SeymourUI/NavigationViewControllerFactory.swift";
      *(v104 + 24) = 47;
      *(v104 + 32) = 2;
      *(v104 + 40) = 100;
      *(v104 + 48) = &unk_20C189168;
      *(v104 + 56) = v101;
      sub_20C1353F4();
      v105 = v237;
      sub_20C137C94();
      sub_20BFE0734(v98, &v252);
      sub_20BDC6590(v96, v97, type metadata accessor for NavigationRequest);
      v106 = swift_allocObject();
      v107 = v253;
      *(v106 + 16) = v252;
      *(v106 + 32) = v107;
      *(v106 + 48) = v254;
      *(v106 + 64) = v255;
      sub_20B75B150(v97, v106 + ((v99 + 72) & ~v99));
      v108 = v238;
      v109 = v236;
      v110 = v239;
      (*(v238 + 16))(v236, v105, v239);
      v111 = (*(v108 + 80) + 16) & ~*(v108 + 80);
      v112 = swift_allocObject();
      (*(v108 + 32))(v112 + v111, v109, v110);
      v113 = (v112 + ((v7 + v111 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v113 = sub_20BFE088C;
      v113[1] = v106;
      sub_20B62BB28();
      sub_20C137C94();
      (*(v108 + 8))(v105, v110);
      return;
    case 0x15u:
      v128 = type metadata accessor for WorkoutPlanSurveyViewController();
      sub_20B51CC64((v249 + 2), &v252);
      v129 = *(&v253 + 1);
      v130 = v254;
      v131 = __swift_mutable_project_boxed_opaque_existential_1(&v252, *(&v253 + 1));

      v28 = sub_20C08BEC0(v132, 0, 0, v131, v128, v129, v130);

      __swift_destroy_boxed_opaque_existential_1(&v252);
      v133 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
      *(swift_allocObject() + 16) = v133;
      sub_20B62BB28();
      sub_20C137CA4();
      goto LABEL_32;
    case 0x16u:
      v213 = type metadata accessor for WorkoutPlanScheduleViewController();
      sub_20B51CC64((v249 + 2), &v252);
      v214 = *(&v253 + 1);
      v215 = v254;
      v216 = __swift_mutable_project_boxed_opaque_existential_1(&v252, *(&v253 + 1));

      v218 = sub_20BC67B50(v217, 0, 0, 0, v216, v213, v214, v215);

      __swift_destroy_boxed_opaque_existential_1(&v252);
      *(swift_allocObject() + 16) = v218;
      sub_20B62BB28();
      goto LABEL_28;
    case 0x17u:
      v114 = v249;
      v115 = *v249;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
      sub_20C133AA4();
      v116 = type metadata accessor for WorkoutPlanGalleryViewController();
      sub_20B51CC64((v114 + 2), v256);
      __swift_project_boxed_opaque_existential_1(&v252, *(&v253 + 1));

      v117 = sub_20C138D34();
      v119 = v118;
      v120 = v257;
      v121 = v258;
      v122 = __swift_mutable_project_boxed_opaque_existential_1(v256, v257);
      v123 = MEMORY[0x28223BE20](v122);
      v125 = &v234 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v126 + 16))(v125, v123);
      v127 = sub_20BC5F048(v115, v125, v117, v119, v116, v120, v121);

      __swift_destroy_boxed_opaque_existential_1(v256);
      *(swift_allocObject() + 16) = v127;
      sub_20B62BB28();
      sub_20C137CA4();
      __swift_destroy_boxed_opaque_existential_1(&v252);
      return;
    default:
      v135 = *v27;
      v134 = *(v27 + 1);
      v136 = *v249;
      sub_20B51CC64((v249 + 2), &v252);
      type metadata accessor for CatalogEditorialCollectionPageDataProvider();
      swift_allocObject();

      v137 = sub_20BF68BB0(v135, v134, v136);
      sub_20B51CC64(&v252, v256);
      v138 = objc_allocWithZone(type metadata accessor for CatalogEditorialCollectionDetailViewController());
      v139 = v257;
      v140 = v258;
      v141 = __swift_mutable_project_boxed_opaque_existential_1(v256, v257);
      v142 = MEMORY[0x28223BE20](v141);
      v144 = &v234 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v145 + 16))(v144, v142);
      v146 = sub_20BD18EA0(v136, v137, v144, v138, v139, v140);

      __swift_destroy_boxed_opaque_existential_1(&v252);
      __swift_destroy_boxed_opaque_existential_1(v256);
      *(swift_allocObject() + 16) = v146;
      sub_20B62BB28();
LABEL_28:
      sub_20C137CA4();
      return;
  }
}