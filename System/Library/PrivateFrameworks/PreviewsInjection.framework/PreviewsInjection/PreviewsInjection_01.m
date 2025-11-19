unint64_t sub_25F35ECB0()
{
  result = qword_27FD67460;
  if (!qword_27FD67460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67460);
  }

  return result;
}

uint64_t sub_25F35ED04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for EntryPointIndex.PendingShellResource(0);
  v3[6] = swift_task_alloc();
  v4 = sub_25F3C274C();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_25F3C245C();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F35EE54, 0, 0);
}

uint64_t sub_25F35EE54()
{
  v1 = v0[4];
  (*(v0[8] + 16))(v0[9], v0[2], v0[7]);
  sub_25F3C240C();

  return MEMORY[0x2822009F8](sub_25F35EEF0, v1, 0);
}

uint64_t sub_25F35EEF0()
{
  (*(v0[11] + 16))(v0[6], v0[12], v0[10]);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_25F35EFB8;
  v2 = v0[6];
  v3 = v0[3];

  return sub_25F3A9964(v2, v3);
}

uint64_t sub_25F35EFB8()
{
  v1 = *(*v0 + 48);

  sub_25F35F740(v1);

  return MEMORY[0x2822009F8](sub_25F35F0D0, 0, 0);
}

uint64_t sub_25F35F0D0()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F35F168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_25F3C2F3C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_25F3C354C();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F35F284, 0, 0);
}

uint64_t sub_25F35F284()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_25F35F324;
  v2 = *(v0 + 24);

  return MEMORY[0x2821A0EA0](v2);
}

uint64_t sub_25F35F324()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F35F46C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25F35F46C()
{
  v1 = v0[11];
  sub_25F3C351C();
  v2 = v1;
  v3 = sub_25F3C353C();
  v4 = sub_25F3C431C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_25F342000, v3, v4, "Failed to attach transport to message pipe: %@", v6, 0xCu);
    sub_25F35F6D8(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  v10 = v0[11];
  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[6];
  v14 = v0[7];
  v15 = v0[4];
  v16 = v0[5];
  v17 = v0[3];

  (*(v12 + 8))(v11, v14);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_25F3C2F2C();
  sub_25F3C2F1C();

  (*(v16 + 8))(v13, v15);

  v18 = v0[1];

  return v18();
}

uint64_t sub_25F35F67C()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25F35F6D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F35F740(uint64_t a1)
{
  v2 = type metadata accessor for EntryPointIndex.PendingShellResource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

dispatch_semaphore_t sub_25F35F79C()
{
  result = dispatch_semaphore_create(0);
  qword_27FD67468 = result;
  return result;
}

uint64_t sub_25F35F7C0()
{
  result = sub_25F3C34FC();
  qword_27FD67470 = result;
  return result;
}

uint64_t sub_25F35F7F8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_25F3C354C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (!*a1 || v8 == 1)
  {
    result = sub_25F3C44FC();
    __break(1u);
  }

  else
  {
    sub_25F3C352C();
    v9 = sub_25F3C353C();
    v10 = sub_25F3C42FC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v15 = a1;
      v12 = v11;
      *v11 = 0;
      _os_log_impl(&dword_25F342000, v9, v10, "Received JIT executor", v11, 2u);
      a1 = v15;
      MEMORY[0x25F8DC6C0](v12, -1, -1);
    }

    result = (*(v5 + 8))(v7, v4);
    *a1 = 1;
    *a2 = v8;
  }

  return result;
}

void ___abort_timed_out_waiting_for_previews_jit_executor()()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C352C();
  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_25F342000, v4, v5, "Timed out waiting for Previews JIT executor", v6, 2u);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_25F3C44FC();
  __break(1u);
}

void sub_25F35FB90()
{
  if ([objc_opt_self() isMainThread])
  {
    sub_25F3C44FC();
    __break(1u);
  }

  else
  {
    if (qword_27FD66ED0 != -1)
    {
      swift_once();
    }

    v0 = qword_27FD67470;
    os_unfair_lock_lock((qword_27FD67470 + 24));
    sub_25F35FDAC((v0 + 16));

    os_unfair_lock_unlock((v0 + 24));
  }
}

uint64_t sub_25F35FC88(void *a1, uint64_t a2)
{
  if (*a1)
  {
    result = sub_25F3C44FC();
    __break(1u);
  }

  else
  {
    *a1 = a2;
    v2 = qword_27FD66EC8;

    if (v2 != -1)
    {
      swift_once();
    }

    return sub_25F3C436C();
  }

  return result;
}

uint64_t sub_25F35FDC8()
{
  v0 = sub_25F3C3EEC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - v5;
  v7 = sub_25F3C354C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    sub_25F3C352C();
    v11 = sub_25F3C353C();
    v12 = sub_25F3C42FC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_25F342000, v11, v12, "Waiting for JIT executor", v13, 2u);
      MEMORY[0x25F8DC6C0](v13, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    if (qword_27FD66EC8 != -1)
    {
      swift_once();
    }

    sub_25F3C3EDC();
    sub_25F3C3F0C();
    v14 = *(v1 + 8);
    v14(v4, v0);
    v15 = sub_25F3C434C();
    v14(v6, v0);
    if (v15)
    {
      ___abort_timed_out_waiting_for_previews_jit_executor()();
    }

    if (qword_27FD66ED0 != -1)
    {
      swift_once();
    }

    v16 = qword_27FD67470;
    os_unfair_lock_lock((qword_27FD67470 + 24));
    sub_25F35F7F8((v16 + 16), &v19);
    os_unfair_lock_unlock((v16 + 24));
    return v19;
  }

  else
  {
    result = sub_25F3C44FC();
    __break(1u);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17PreviewsInjection17JITExecutorWaiterO5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25F360128(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F36017C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_25F3601D8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_25F360208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD674A8);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD674B0);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD674B8);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD674C0);
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = sub_25F3C41CC();
  v5[15] = sub_25F3C41BC();
  v10 = sub_25F3C416C();
  v5[16] = v10;
  v5[17] = v9;

  return MEMORY[0x2822009F8](sub_25F360414, v10, v9);
}

uint64_t sub_25F360414()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_25F3C2D9C();
  sub_25F364AE0(&qword_27FD674C8, MEMORY[0x277D40F10]);
  sub_25F3C20DC();
  sub_25F3C421C();
  (*(v2 + 8))(v1, v3);
  v4 = sub_25F3C41BC();
  v0[18] = v4;
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_25F36056C;
  v6 = v0[11];
  v7 = v0[7];
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v7, v4, v8, v6);
}

uint64_t sub_25F36056C()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_25F3606B0, v3, v2);
}

uint64_t sub_25F3606B0()
{
  v1 = v0[7];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    sub_25F364B7C(v1, v0[6], &qword_27FD674A8);
    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    v4[1] = sub_25F360820;
    v5 = v0[6];

    return sub_25F360A14(v5);
  }
}

uint64_t sub_25F360820()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_25F360940, v3, v2);
}

uint64_t sub_25F360940()
{
  sub_25F349AA8(v0[6], &qword_27FD674A8);
  v1 = sub_25F3C41BC();
  v0[18] = v1;
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_25F36056C;
  v3 = v0[11];
  v4 = v0[7];
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v4, v1, v5, v3);
}

uint64_t sub_25F360A14(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for EntryPointIndex.PendingShellResource(0);
  v2[5] = swift_task_alloc();
  v3 = sub_25F3C2EBC();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_25F3C271C();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67B00);
  v2[12] = swift_task_alloc();
  v5 = sub_25F3C2CEC();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v6 = sub_25F3C25BC();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  v7 = sub_25F3C2B8C();
  v2[19] = v7;
  v2[20] = *(v7 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD674A8);
  v2[23] = swift_task_alloc();
  v2[24] = sub_25F3C41CC();
  v2[25] = sub_25F3C41BC();
  v9 = sub_25F3C416C();
  v2[26] = v9;
  v2[27] = v8;

  return MEMORY[0x2822009F8](sub_25F360D20, v9, v8);
}

uint64_t sub_25F360D20()
{
  v1 = v0[23];
  v2 = v0[2];
  sub_25F3C41BC();
  sub_25F3C417C();

  sub_25F355568(v2, v1, &qword_27FD674A8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v12 = v0[23];
    v13 = v0[17];
    v35 = v0[16];
    v36 = v0[18];
    v15 = v0[10];
    v14 = v0[11];
    v16 = v0[9];
    v38 = v0[8];
    v17 = v0[7];
    v37 = v0[6];
    v0[31] = *v12;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD674D0);
    v19 = &v12[*(v18 + 48)];
    v20 = *(v18 + 64);
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD674D8) + 48);
    (*(v15 + 32))(v14, v19, v16);
    (*(v13 + 32))(v36, &v12[v20], v35);
    (*(v17 + 32))(v38, &v19[v21], v37);
    v0[32] = sub_25F3C41BC();
    v23 = sub_25F3C416C();
    v0[33] = v23;
    v0[34] = v22;

    return MEMORY[0x2822009F8](sub_25F3616B0, v23, v22);
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v4 = v0[23];
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD674E8) + 48);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD674F0);
    if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
    {
      (*(v0[17] + 32))(v0[18], v4 + v5, v0[16]);
      v7 = swift_task_alloc();
      v0[30] = v7;
      *v7 = v0;
      v7[1] = sub_25F36143C;
      v8 = v0[12];
      v9 = v0[6];
      v10 = v0[3];
      v11 = &unk_25F3C62A0;
    }

    else
    {
      v25 = v0[21];
      v26 = v0[18];
      v27 = v0[16];
      v28 = v0[17];
      v30 = v0[14];
      v29 = v0[15];
      v39 = v0[13];
      v40 = v0[3];
      v31 = *(v6 + 48);
      (*(v0[20] + 32))(v25, v4, v0[19]);
      (*(v28 + 32))(v26, v4 + v5, v27);
      (*(v30 + 32))(v29, v4 + v31, v39);
      v32 = swift_task_alloc();
      v0[28] = v32;
      v32[2] = v40;
      v32[3] = v25;
      v32[4] = v29;
      v33 = swift_task_alloc();
      v0[29] = v33;
      *v33 = v0;
      v33[1] = sub_25F36116C;
      v8 = v0[12];
      v9 = v0[6];
      v11 = &unk_25F3C62B0;
      v10 = v32;
    }

    return MEMORY[0x2821A0DB0](v8, v11, v10, v9);
  }

  else
  {
    v24 = v0[22];

    return MEMORY[0x2821FDEB8](v24, v24);
  }
}

uint64_t sub_25F36116C()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_25F3612B0, v3, v2);
}

uint64_t sub_25F3612B0()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[14];
  v7 = v0[12];

  sub_25F3C258C();
  sub_25F349AA8(v7, &qword_27FD67B00);
  (*(v2 + 8))(v1, v3);
  (*(v6 + 8))(v4, v5);
  (*(v0[20] + 8))(v0[21], v0[19]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_25F36143C()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_25F36155C, v3, v2);
}

uint64_t sub_25F36155C()
{
  v1 = v0[12];

  sub_25F3C258C();
  sub_25F349AA8(v1, &qword_27FD67B00);
  (*(v0[17] + 8))(v0[18], v0[16]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_25F3616B0()
{
  v1 = *(*(v0 + 24) + 48);
  *(v0 + 280) = v1;
  return MEMORY[0x2822009F8](sub_25F3616D4, v1, 0);
}

uint64_t sub_25F3616D4()
{
  v1 = v0[31];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD674E0) + 48);
  *v5 = v1;
  (*(v3 + 16))(&v5[v6], v2, v4);
  swift_storeEnumTagMultiPayload();
  v7 = v1;
  v8 = swift_task_alloc();
  v0[36] = v8;
  *v8 = v0;
  v8[1] = sub_25F3617E0;
  v9 = v0[11];
  v10 = v0[5];

  return sub_25F3A9964(v10, v9);
}

uint64_t sub_25F3617E0()
{
  v1 = *v0;
  v2 = *(*v0 + 40);

  sub_25F364A80(v2, type metadata accessor for EntryPointIndex.PendingShellResource);
  v3 = *(v1 + 272);
  v4 = *(v1 + 264);

  return MEMORY[0x2822009F8](sub_25F361938, v4, v3);
}

uint64_t sub_25F361938()
{

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return MEMORY[0x2822009F8](sub_25F36199C, v1, v2);
}

uint64_t sub_25F36199C()
{
  v1 = v0[31];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];

  sub_25F3C257C();

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  (*(v0[10] + 8))(v0[11], v0[9]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_25F361AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_25F3C41CC();
  v4[3] = sub_25F3C41BC();
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_25F361BD4;

  return sub_25F361D30(a1, a3, a4);
}

uint64_t sub_25F361BD4()
{
  *(*v1 + 40) = v0;

  v3 = sub_25F3C416C();
  if (v0)
  {
    v4 = sub_25F365334;
  }

  else
  {
    v4 = sub_25F365338;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_25F361D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v4[22] = sub_25F3C2CFC();
  v4[23] = swift_task_alloc();
  sub_25F3C21BC();
  v4[24] = swift_task_alloc();
  v5 = sub_25F3C221C();
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  v6 = sub_25F3C2D7C();
  v4[28] = v6;
  v4[29] = *(v6 - 8);
  v4[30] = swift_task_alloc();
  v7 = sub_25F3C21DC();
  v4[31] = v7;
  v4[32] = *(v7 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD674F8);
  v4[35] = swift_task_alloc();
  v8 = sub_25F3C2BDC();
  v4[36] = v8;
  v4[37] = *(v8 - 8);
  v4[38] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67498);
  v4[39] = v9;
  v4[40] = *(v9 - 8);
  v4[41] = swift_task_alloc();
  v10 = sub_25F3C2E1C();
  v4[42] = v10;
  v4[43] = *(v10 - 8);
  v4[44] = swift_task_alloc();
  v11 = sub_25F3C2EBC();
  v4[45] = v11;
  v4[46] = *(v11 - 8);
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67500);
  v4[50] = swift_task_alloc();
  v12 = sub_25F3C2B8C();
  v4[51] = v12;
  v4[52] = *(v12 - 8);
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v13 = sub_25F3C354C();
  v4[55] = v13;
  v4[56] = *(v13 - 8);
  v4[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67508);
  v4[58] = swift_task_alloc();
  v14 = sub_25F3C2B6C();
  v4[59] = v14;
  v4[60] = *(v14 - 8);
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  sub_25F3C41CC();
  v4[63] = sub_25F3C41BC();
  v16 = sub_25F3C416C();
  v4[64] = v16;
  v4[65] = v15;

  return MEMORY[0x2822009F8](sub_25F3622AC, v16, v15);
}

uint64_t sub_25F3622AC()
{
  v1 = v0[62];
  v2 = v0[59];
  v3 = v0[60];
  sub_25F3C2B7C();
  sub_25F3C2B5C();
  v4 = *(v3 + 8);
  v0[66] = v4;
  v0[67] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v5 = swift_task_alloc();
  v0[68] = v5;
  *v5 = v0;
  v5[1] = sub_25F3623A4;
  v6 = v0[58];

  return sub_25F36EE50(v6);
}

uint64_t sub_25F3623A4()
{
  v2 = *v1;
  (*v1)[69] = v0;

  sub_25F349AA8(v2[58], &qword_27FD67508);
  v3 = v2[65];
  v4 = v2[64];
  if (v0)
  {
    v5 = sub_25F3633AC;
  }

  else
  {
    v5 = sub_25F362508;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25F362508()
{
  v1 = swift_task_alloc();
  *(v0 + 560) = v1;
  *v1 = v0;
  v1[1] = sub_25F3625A8;
  v2 = *(v0 + 152);

  return sub_25F3A5500(v0 + 16, v2);
}

uint64_t sub_25F3625A8()
{
  v2 = *v1;
  *(*v1 + 568) = v0;

  v3 = *(v2 + 520);
  v4 = *(v2 + 512);
  if (v0)
  {
    v5 = sub_25F363514;
  }

  else
  {
    v5 = sub_25F3626E4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25F3626E4()
{
  v56 = v0;
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[51];
  v4 = v0[52];
  v5 = v0[19];
  sub_25F3C351C();
  v6 = *(v4 + 16);
  v6(v1, v5, v3);
  sub_25F349E38((v0 + 2), (v0 + 7));
  v6(v2, v5, v3);
  v7 = sub_25F3C353C();
  v8 = sub_25F3C433C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[66];
    v10 = v0[61];
    v11 = v0[59];
    log = v7;
    v52 = v0[56];
    v12 = v0[54];
    v53 = v0[55];
    v54 = v0[57];
    v13 = v0[52];
    v14 = v0[50];
    v44 = v0[51];
    v45 = v0[48];
    v46 = v0[53];
    v47 = v0[45];
    v48 = v0[46];
    v15 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v55 = v50;
    *v15 = 136315650;
    v49 = v8;
    sub_25F3C2B7C();
    sub_25F3C2B4C();
    v9(v10, v11);
    v16 = sub_25F3C43AC();
    v18 = v17;
    sub_25F349AA8(v14, &qword_27FD67500);
    v19 = *(v13 + 8);
    v19(v12, v44);
    v20 = sub_25F369EE8(v16, v18, &v55);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2082;
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v21 = sub_25F36C274();
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 7));
    v24 = sub_25F369EE8(v21, v23, &v55);

    *(v15 + 14) = v24;
    *(v15 + 22) = 2080;
    sub_25F3C2B0C();
    sub_25F364AE0(&qword_27FD67510, MEMORY[0x277D40450]);
    v25 = sub_25F3C455C();
    v27 = v26;
    (*(v48 + 8))(v45, v47);
    v19(v46, v44);
    v28 = sub_25F369EE8(v25, v27, &v55);

    *(v15 + 24) = v28;
    _os_log_impl(&dword_25F342000, log, v49, "Performing update #%s\n  - Entry point = %{public}s\n  - Payload = %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F8DC6C0](v50, -1, -1);
    MEMORY[0x25F8DC6C0](v15, -1, -1);

    (*(v52 + 8))(v54, v53);
  }

  else
  {
    v29 = v0[56];
    v30 = v0[57];
    v32 = v0[54];
    v31 = v0[55];
    v34 = v0[52];
    v33 = v0[53];
    v35 = v0[51];

    v36 = *(v34 + 8);
    v36(v33, v35);
    v36(v32, v35);
    (*(v29 + 8))(v30, v31);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 7));
  }

  v37 = v0[21];
  v38 = v0[5];
  v39 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v38);
  sub_25F3C2B0C();
  v40 = swift_task_alloc();
  v0[72] = v40;
  *v40 = v0;
  v40[1] = sub_25F362B44;
  v41 = v0[47];
  v42 = v0[44];

  return sub_25F37ECF0(v42, v41, v37 + 40, v38, v39);
}

uint64_t sub_25F362B44()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  (*(v2[46] + 8))(v2[47], v2[45]);
  v3 = v2[65];
  v4 = v2[64];
  if (v0)
  {
    v5 = sub_25F36367C;
  }

  else
  {
    v5 = sub_25F362CCC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25F362CCC()
{
  v1 = v0[73];
  v2 = v0[41];
  v3 = v0[38];
  v4 = v0[21];

  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  sub_25F3C2CBC();
  v7 = *(v4 + 16);
  sub_25F37F664(v3, v7, v5, v6, v2);
  if (v1)
  {
    v9 = v0[43];
    v8 = v0[44];
    v10 = v0[42];
    (*(v0[37] + 8))(v0[38], v0[36]);
    (*(v9 + 8))(v8, v10);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 2));

    v11 = v0[1];
    goto LABEL_11;
  }

  v12 = v0[21];
  (*(v0[37] + 8))(v0[38], v0[36]);
  v13 = *(v12 + 24);
  if (v13)
  {
    [v13 setRootViewController_];
  }

  v14 = v0[40];
  v15 = v0[39];
  v17 = v0[34];
  v16 = v0[35];
  v18 = v0[31];
  v19 = v0[32];
  v20 = v0[21];
  sub_25F355568(v0[41], v16, &qword_27FD67498);
  (*(v14 + 56))(v16, 0, 1, v15);
  v21 = OBJC_IVAR____TtC17PreviewsInjection17PreviewSceneAgent_currentUpdateResult;
  swift_beginAccess();
  sub_25F364A10(v16, v20 + v21);
  swift_endAccess();
  sub_25F3C2CDC();
  v22 = (*(v19 + 88))(v17, v18);
  if (v22 == *MEMORY[0x277D41020])
  {
    v54 = v0[41];
    v23 = v0[39];
    v25 = v0[29];
    v24 = v0[30];
    v26 = v0[27];
    v56 = v0[28];
    v27 = v0[26];
    v53 = v0[25];
    v28 = v0[23];
    v29 = objc_opt_self();
    swift_beginAccess();
    v30 = [v29 createForScene_];
    (*(v27 + 16))(v26, v54 + *(v23 + 36), v53);
    sub_25F3C2CCC();
    v31 = v30;
    sub_25F3C2D6C();
    (*(v25 + 16))(v28, v24, v56);
    swift_storeEnumTagMultiPayload();
    sub_25F3C21AC();
    sub_25F364A80(v28, MEMORY[0x277D40E80]);
    [v31 invalidate];
  }

  else
  {
    if (v22 != *MEMORY[0x277D41018])
    {
      v46 = v0[43];
      v45 = v0[44];
      v48 = v0[41];
      v47 = v0[42];
      v49 = v0[33];
      v55 = v0[34];
      v50 = v0[31];
      v51 = v0[32];
      sub_25F3C2CDC();
      sub_25F3C21CC();
      v52 = *(v51 + 8);
      v52(v49, v50);
      swift_willThrow();
      (*(v46 + 8))(v45, v47);
      sub_25F349AA8(v48, &qword_27FD67498);
      v52(v55, v50);
      goto LABEL_3;
    }

    v33 = v0[29];
    v32 = v0[30];
    v34 = v0[28];
    v35 = v0[23];
    (*(v0[26] + 16))(v0[27], v0[41] + *(v0[39] + 36), v0[25]);
    sub_25F3C2CCC();
    sub_25F3C2D6C();
    (*(v33 + 16))(v35, v32, v34);
    swift_storeEnumTagMultiPayload();
    sub_25F3C21AC();
    sub_25F364A80(v35, MEMORY[0x277D40E80]);
  }

  v37 = v0[45];
  v36 = v0[46];
  v39 = v0[43];
  v38 = v0[44];
  v41 = v0[41];
  v40 = v0[42];
  v42 = v0[39];
  v43 = v0[18];
  (*(v0[29] + 8))(v0[30], v0[28]);
  (*(v39 + 8))(v38, v40);
  (*(v36 + 16))(v43, v41 + *(v42 + 40), v37);
  sub_25F349AA8(v41, &qword_27FD67498);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 2));

  v11 = v0[1];
LABEL_11:

  return v11();
}

uint64_t sub_25F3633AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F363514()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F36367C()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F3637EC(uint64_t a1)
{
  v1[2] = sub_25F3C41CC();
  v1[3] = sub_25F3C41BC();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_25F34DEA8;

  return sub_25F3638AC(a1);
}

uint64_t sub_25F3638AC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD674F8);
  v2[7] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67498);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  sub_25F3C41CC();
  v2[11] = sub_25F3C41BC();
  v5 = sub_25F3C416C();
  v2[12] = v5;
  v2[13] = v4;

  return MEMORY[0x2822009F8](sub_25F3639E4, v5, v4);
}

uint64_t sub_25F3639E4()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = OBJC_IVAR____TtC17PreviewsInjection17PreviewSceneAgent_currentUpdateResult;
  swift_beginAccess();
  sub_25F355568(v4 + v5, v3, &qword_27FD674F8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[7];

    sub_25F349AA8(v6, &qword_27FD674F8);
    sub_25F364B28();
    swift_allocError();
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[10];
    v10 = v0[8];
    sub_25F364B7C(v0[7], v9, &qword_27FD67498);
    v13 = (*(v9 + *(v10 + 44)) + **(v9 + *(v10 + 44)));
    v11 = swift_task_alloc();
    v0[14] = v11;
    *v11 = v0;
    v11[1] = sub_25F363C08;
    v12 = v0[5];

    return v13(v12);
  }
}

uint64_t sub_25F363C08()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_25F363DD4;
  }

  else
  {
    v5 = sub_25F363D44;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25F363D44()
{
  v1 = *(v0 + 80);

  sub_25F349AA8(v1, &qword_27FD67498);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F363DD4()
{
  v1 = *(v0 + 80);

  sub_25F349AA8(v1, &qword_27FD67498);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F363E9C(uint64_t a1)
{
  v2 = sub_25F3652D0();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F363ED8(uint64_t a1)
{
  v2 = sub_25F3652D0();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F363F14()
{

  sub_25F36486C((v0 + 5));
  sub_25F349AA8(v0 + OBJC_IVAR____TtC17PreviewsInjection17PreviewSceneAgent_currentUpdateResult, &qword_27FD674F8);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for PreviewSceneAgent()
{
  result = qword_27FD67480;
  if (!qword_27FD67480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25F363FFC()
{
  sub_25F3640B0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_25F3640B0()
{
  if (!qword_27FD67490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD67498);
    v0 = sub_25F3C43BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD67490);
    }
  }
}

uint64_t sub_25F364114(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F364164(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_25F3641B8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

char *sub_25F3641EC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67178);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42[-v9];
  v11 = sub_25F3C354C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v42[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = OBJC_IVAR____TtC17PreviewsInjection17PreviewSceneAgent_currentUpdateResult;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67498);
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  sub_25F3C351C();
  v17 = a1;
  v18 = sub_25F3C353C();
  v19 = sub_25F3C430C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v46 = v12;
    v21 = v20;
    v45 = swift_slowAlloc();
    v48 = v45;
    *v21 = 136446210;
    v22 = [v17 previewSceneIdentifier];
    v47 = a3;
    v23 = v22;
    v24 = sub_25F3C3FEC();
    v43 = v19;
    v25 = a2;
    v26 = v24;
    v44 = v11;
    v27 = v10;
    v29 = v28;

    v30 = v26;
    a2 = v25;
    v31 = sub_25F369EE8(v30, v29, &v48);
    v10 = v27;

    *(v21 + 4) = v31;
    a3 = v47;
    _os_log_impl(&dword_25F342000, v18, v43, "PreviewSceneAgent init for %{public}s", v21, 0xCu);
    v32 = v45;
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    MEMORY[0x25F8DC6C0](v32, -1, -1);
    MEMORY[0x25F8DC6C0](v21, -1, -1);

    (*(v46 + 8))(v14, v44);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  type metadata accessor for SceneServices();
  v33 = swift_allocObject();
  *(v33 + 16) = v17;
  *(v33 + 24) = sub_25F35350C(MEMORY[0x277D84F90]);
  *(v4 + 2) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD674A0);
  *(swift_allocObject() + 16) = v17;
  v34 = v17;
  *(v4 + 4) = sub_25F3C217C();
  sub_25F364718(a3, (v4 + 40));
  v35 = 0;
  if (sub_25F3C437C())
  {
    v35 = [objc_allocWithZone(MEMORY[0x277D75DA0]) initWithWindowScene_];
    [v35 makeKeyAndVisible];
  }

  *(v4 + 3) = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_25F364774;
  *(v36 + 24) = v4;

  sub_25F3C219C();

  sub_25F3C439C();

  v37 = sub_25F3C41EC();
  (*(*(v37 - 8) + 56))(v10, 1, 1, v37);
  sub_25F3C41CC();

  v38 = sub_25F3C41BC();
  v39 = swift_allocObject();
  v40 = MEMORY[0x277D85700];
  v39[2] = v38;
  v39[3] = v40;
  v39[4] = a2;
  v39[5] = v4;
  sub_25F3823F4(0, 0, v10, &unk_25F3C6238, v39);

  sub_25F36486C(a3);
  return v4;
}

uint64_t sub_25F3647AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F34905C;

  return sub_25F360208(a1, v4, v5, v7, v6);
}

uint64_t sub_25F3648C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25F34905C;

  return sub_25F3637EC(a1);
}

uint64_t sub_25F36495C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F351058;

  return sub_25F361AFC(a1, v4, v5, v6);
}

uint64_t sub_25F364A10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD674F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F364A80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F364AE0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25F364B28()
{
  result = qword_27FD67518;
  if (!qword_27FD67518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67518);
  }

  return result;
}

uint64_t sub_25F364B7C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_25F364BE4(int a1, uint64_t a2)
{
  LODWORD(v36) = a1;
  v3 = sub_25F3C354C();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25F3C2EFC();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67520);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  v11 = sub_25F3C224C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - v16;
  sub_25F355568(a2, v10, &qword_27FD67520);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v18 = v36;
    sub_25F349AA8(v10, &qword_27FD67520);
    v19 = v33;
    sub_25F3C351C();
    v20 = sub_25F3C353C();
    v21 = sub_25F3C431C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136446210;
      v37 = v18 & 1;
      sub_25F3650A8();
      v24 = sub_25F3C455C();
      v26 = sub_25F369EE8(v24, v25, &v38);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_25F342000, v20, v21, "Scene message %{public}s received without responder", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x25F8DC6C0](v23, -1, -1);
      MEMORY[0x25F8DC6C0](v22, -1, -1);
    }

    (*(v34 + 8))(v19, v35);
  }

  else
  {
    v27 = *(v12 + 32);
    v27(v17, v10, v11);
    if (v36)
    {
      sub_25F3650FC();
      v28 = swift_allocError();
      sub_25F3C222C();
      (*(v12 + 8))(v17, v11);
    }

    else
    {
      v36 = sub_25F365150();
      sub_25F3C2EEC();
      (*(v12 + 16))(v15, v17, v11);
      v29 = (*(v12 + 80) + 16) & ~*(v12 + 80);
      v30 = swift_allocObject();
      v27((v30 + v29), v15, v11);
      sub_25F3C42DC();

      (*(v31 + 8))(v7, v32);
      (*(v12 + 8))(v17, v11);
    }
  }
}

unint64_t sub_25F3650A8()
{
  result = qword_27FD67528;
  if (!qword_27FD67528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67528);
  }

  return result;
}

unint64_t sub_25F3650FC()
{
  result = qword_27FD67530;
  if (!qword_27FD67530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67530);
  }

  return result;
}

unint64_t sub_25F365150()
{
  result = qword_27FD67538;
  if (!qword_27FD67538)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD67538);
  }

  return result;
}

unint64_t sub_25F365224()
{
  result = qword_27FD67540;
  if (!qword_27FD67540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67540);
  }

  return result;
}

unint64_t sub_25F36527C()
{
  result = qword_27FD67548;
  if (!qword_27FD67548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67548);
  }

  return result;
}

unint64_t sub_25F3652D0()
{
  result = qword_27FD67550;
  if (!qword_27FD67550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67550);
  }

  return result;
}

uint64_t sub_25F36533C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_25F365364, 0, 0);
}

uint64_t sub_25F365364()
{
  sub_25F3C41CC();
  *(v0 + 40) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F3653F8, v2, v1);
}

uint64_t sub_25F3653F8()
{

  v1 = sub_25F365CE4();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t EntryPoint.handle(hostMessageStream:instance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25F36549C, 0, 0);
}

uint64_t sub_25F36549C()
{
  sub_25F3C41CC();
  *(v0 + 56) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F365530, v2, v1);
}

uint64_t sub_25F365530()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v5 = (*(v1 + 80))(v4, v3, v2, v1);
  v6 = v0[1];
  v7 = v5 & 1;

  return v6(v7);
}

uint64_t sub_25F3655D0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_25F3655F4, 0, 0);
}

uint64_t sub_25F3655F4()
{
  sub_25F3C41CC();
  *(v0 + 32) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F365688, v2, v1);
}

uint64_t sub_25F365688()
{

  sub_25F366820();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t EntryPoint.handle(shellMessageStream:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_25F365718, 0, 0);
}

uint64_t sub_25F365718()
{
  sub_25F3C41CC();
  *(v0 + 48) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F3657AC, v2, v1);
}

uint64_t sub_25F3657AC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  (*(v1 + 88))(v3, v2, v1);

  return MEMORY[0x2822009F8](sub_25F347644, 0, 0);
}

uint64_t sub_25F365844(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v3 + 16) = a2;
  *(v3 + 24) = v4;
  return MEMORY[0x2822009F8](sub_25F365868, 0, 0);
}

uint64_t sub_25F365868()
{
  sub_25F3C41CC();
  *(v0 + 32) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F3658FC, v2, v1);
}

uint64_t sub_25F3658FC()
{

  sub_25F36B3B0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t EntryPoint.handle(endpoint:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25F365990, 0, 0);
}

uint64_t sub_25F365990()
{
  sub_25F3C41CC();
  *(v0 + 56) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F365A24, v2, v1);
}

uint64_t sub_25F365A24()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  (*(v1 + 96))(v4, v3, v2, v1);

  return MEMORY[0x2822009F8](sub_25F36CEF8, 0, 0);
}

uint64_t static EntryPoint<>.decode(updatePayload:)(uint64_t a1)
{
  v2 = sub_25F3C2EBC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  (*(v3 + 16))(v5, a1, v2);
  return sub_25F3C316C();
}

uint64_t sub_25F365CE4()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();

  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0xD000000000000015, 0x800000025F3CAA30, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received a host message stream but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_25F365E94()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();

  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0xD000000000000011, 0x800000025F3CAA50, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received a host message stream but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_25F366044()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();

  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0xD000000000000012, 0x800000025F3CAA90, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received a host message stream but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_25F3661F4()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();

  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0xD000000000000013, 0x800000025F3CAA70, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received a host message stream but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_25F3663A4()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();

  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0xD000000000000014, 0x800000025F3CAA10, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received a host message stream but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t EntryPoint.handleHostMessageStream(_:instance:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F3C354C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();
  (*(v5 + 16))(v7, v3, a3);
  v12 = sub_25F3C353C();
  v13 = sub_25F3C431C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = v8;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24 = v9;
    v17 = v16;
    v26 = v16;
    *v15 = 136446210;
    v18 = sub_25F3C455C();
    v20 = v19;
    (*(v5 + 8))(v7, a3);
    v21 = sub_25F369EE8(v18, v20, &v26);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_25F342000, v12, v13, "Entry point received a host message stream but does not handle them: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x25F8DC6C0](v17, -1, -1);
    MEMORY[0x25F8DC6C0](v15, -1, -1);

    (*(v24 + 8))(v11, v25);
  }

  else
  {

    (*(v5 + 8))(v7, a3);
    (*(v9 + 8))(v11, v8);
  }

  return 0;
}

uint64_t sub_25F366820()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();

  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0xD000000000000015, 0x800000025F3CAA30, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received a shell message stream but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_25F3C245C();
  sub_25F36CEAC(&qword_27FD67558, MEMORY[0x277D40750]);
  return sub_25F3C2F0C();
}

uint64_t sub_25F366A58()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();

  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0xD000000000000011, 0x800000025F3CAA50, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received a shell message stream but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_25F3C245C();
  sub_25F36CEAC(&qword_27FD67558, MEMORY[0x277D40750]);
  return sub_25F3C2F0C();
}

uint64_t sub_25F366C90()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();

  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0xD000000000000012, 0x800000025F3CAA90, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received a shell message stream but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_25F3C245C();
  sub_25F36CEAC(&qword_27FD67558, MEMORY[0x277D40750]);
  return sub_25F3C2F0C();
}

uint64_t sub_25F366EC8()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();

  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0xD000000000000013, 0x800000025F3CAA70, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received a shell message stream but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_25F3C245C();
  sub_25F36CEAC(&qword_27FD67558, MEMORY[0x277D40750]);
  return sub_25F3C2F0C();
}

uint64_t sub_25F367100()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();

  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0xD000000000000014, 0x800000025F3CAA10, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received a shell message stream but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_25F3C245C();
  sub_25F36CEAC(&qword_27FD67558, MEMORY[0x277D40750]);
  return sub_25F3C2F0C();
}

uint64_t EntryPoint.handleShellMessageStream(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F3C354C();
  v23 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();
  (*(v5 + 16))(v7, v2, a2);
  v11 = sub_25F3C353C();
  v12 = sub_25F3C431C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[1] = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22[0] = v8;
    v16 = v15;
    v24 = v15;
    *v14 = 136446210;
    v17 = sub_25F3C455C();
    v19 = v18;
    (*(v5 + 8))(v7, a2);
    v20 = sub_25F369EE8(v17, v19, &v24);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_25F342000, v11, v12, "Entry point received a shell message stream but does not handle them: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x25F8DC6C0](v16, -1, -1);
    MEMORY[0x25F8DC6C0](v14, -1, -1);

    (*(v23 + 8))(v10, v22[0]);
  }

  else
  {

    (*(v5 + 8))(v7, a2);
    (*(v23 + 8))(v10, v8);
  }

  sub_25F3C245C();
  sub_25F36CEAC(&qword_27FD67558, MEMORY[0x277D40750]);
  return sub_25F3C2F0C();
}

uint64_t sub_25F3676A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_25F3676C8, 0, 0);
}

uint64_t sub_25F3676C8()
{
  sub_25F3C41CC();
  *(v0 + 32) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F36775C, v2, v1);
}

uint64_t sub_25F36775C()
{

  v1 = sub_25F36A4A0();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_25F3677F0()
{
  sub_25F3C41CC();
  *(v0 + 24) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F367884, v2, v1);
}

uint64_t sub_25F367884()
{

  sub_25F36AB18();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F36790C()
{
  sub_25F3C41CC();
  *(v0 + 24) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F3679A0, v2, v1);
}

uint64_t sub_25F3679A0()
{

  sub_25F36B55C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F367A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25F367ADC;

  return EntryPoint.handle(hostMessageStream:instance:)(a1, a2, a3, a4);
}

uint64_t sub_25F367ADC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_25F367BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F34905C;

  return EntryPoint.handle(shellMessageStream:)(a1, a2, a3);
}

uint64_t sub_25F367C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25F351058;

  return EntryPoint.handle(endpoint:context:)(a1, a2, a3, a4);
}

uint64_t sub_25F367D70()
{
  sub_25F3C445C();

  strcpy(v3, "Cannot decode ");
  swift_getAssociatedTypeWitness();
  v0 = sub_25F3C469C();
  MEMORY[0x25F8DB8E0](v0);

  MEMORY[0x25F8DB8E0](0xD000000000000014, 0x800000025F3CB040);
  sub_25F3C2EBC();
  sub_25F36CEAC(&qword_27FD67510, MEMORY[0x277D40450]);
  v1 = sub_25F3C455C();
  MEMORY[0x25F8DB8E0](v1);

  return v3[0];
}

uint64_t sub_25F367EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F3C2EBC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_25F367F3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0810](a1, WitnessTable);
}

uint64_t sub_25F367F90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A07F0](a1, WitnessTable);
}

uint64_t AnyNonUIEntryPoint.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_25F36809C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t))
{
  v8 = *(a1 - 8);
  v9 = MEMORY[0x28223BE20]();
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(v9);
  (*(v8 + 16))(v11, v4, a1);
  return a4(v11, a1, a2);
}

uint64_t *sub_25F36818C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[5] = a2;
  v6[6] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6 + 2);
  (*(*(a2 - 8) + 32))(boxed_opaque_existential_1, a1, a2);
  return v6;
}

uint64_t *sub_25F368210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3 + 2);
  (*(*(a2 - 8) + 32))(boxed_opaque_existential_1, a1, a2);
  return v3;
}

uint64_t sub_25F36827C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_25F3682A4, 0, 0);
}

uint64_t sub_25F3682A4()
{
  sub_25F3C41CC();
  *(v0 + 40) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F368338, v2, v1);
}

uint64_t sub_25F368338()
{

  v1 = sub_25F365E94();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_25F3683B4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_25F3683D8, 0, 0);
}

uint64_t sub_25F3683D8()
{
  sub_25F3C41CC();
  *(v0 + 32) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F36846C, v2, v1);
}

uint64_t sub_25F36846C()
{

  sub_25F366A58();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F3684D8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v3 + 16) = a2;
  *(v3 + 24) = v4;
  return MEMORY[0x2822009F8](sub_25F3684FC, 0, 0);
}

uint64_t sub_25F3684FC()
{
  sub_25F3C41CC();
  *(v0 + 32) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F368590, v2, v1);
}

uint64_t sub_25F368590()
{

  sub_25F36B6FC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F368658(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  v10 = sub_25F3C2EBC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4(0);
  (*(v11 + 16))(v13, a1, v10);
  sub_25F36CEAC(a5, a6);
  return sub_25F3C316C();
}

uint64_t sub_25F368784(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  a4(0);
  sub_25F36CEAC(a5, a6);
  return sub_25F3C315C();
}

uint64_t sub_25F36886C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_25F36888C, 0, 0);
}

uint64_t sub_25F36888C()
{
  sub_25F3C41CC();
  *(v0 + 32) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F368920, v2, v1);
}

uint64_t sub_25F368920()
{

  v1 = sub_25F36A7E0();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_25F3689B4()
{
  sub_25F3C41CC();
  *(v0 + 24) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F368A48, v2, v1);
}

uint64_t sub_25F368A48()
{

  sub_25F36AF68();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F368AD0()
{
  sub_25F3C41CC();
  *(v0 + 24) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F368B64, v2, v1);
}

uint64_t sub_25F368B64()
{

  sub_25F36BF44();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F368C60(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_25F368C88, 0, 0);
}

uint64_t sub_25F368C88()
{
  sub_25F3C41CC();
  *(v0 + 40) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F368D1C, v2, v1);
}

uint64_t sub_25F368D1C()
{

  v1 = sub_25F3663A4();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_25F368D98(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_25F368DBC, 0, 0);
}

uint64_t sub_25F368DBC()
{
  sub_25F3C41CC();
  *(v0 + 32) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F368E50, v2, v1);
}

uint64_t sub_25F368E50()
{

  sub_25F367100();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F368EBC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v3 + 16) = a2;
  *(v3 + 24) = v4;
  return MEMORY[0x2822009F8](sub_25F368EE0, 0, 0);
}

uint64_t sub_25F368EE0()
{
  sub_25F3C41CC();
  *(v0 + 32) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F368F74, v2, v1);
}

uint64_t sub_25F368F74()
{

  sub_25F36BC00();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F369054(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_25F369078, 0, 0);
}

uint64_t sub_25F369078()
{
  sub_25F3C41CC();
  *(v0 + 32) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F36910C, v2, v1);
}

uint64_t sub_25F36910C()
{

  sub_25F366EC8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F36917C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v3 + 16) = a2;
  *(v3 + 24) = v4;
  return MEMORY[0x2822009F8](sub_25F3691A0, 0, 0);
}

uint64_t sub_25F3691A0()
{
  sub_25F3C41CC();
  *(v0 + 32) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F369234, v2, v1);
}

uint64_t sub_25F369234()
{

  sub_25F36BA54();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F369358(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_25F36937C, 0, 0);
}

uint64_t sub_25F36937C()
{
  sub_25F3C41CC();
  *(v0 + 32) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F369410, v2, v1);
}

uint64_t sub_25F369410()
{

  sub_25F366C90();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F36947C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v3 + 16) = a2;
  *(v3 + 24) = v4;
  return MEMORY[0x2822009F8](sub_25F3694A0, 0, 0);
}

uint64_t sub_25F3694A0()
{
  sub_25F3C41CC();
  *(v0 + 32) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F369534, v2, v1);
}

uint64_t sub_25F369534()
{

  sub_25F36B8A8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F369614(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_25F369634, 0, 0);
}

uint64_t sub_25F369634()
{
  sub_25F3C41CC();
  *(v0 + 32) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F3696C8, v2, v1);
}

uint64_t sub_25F3696C8()
{

  v1 = sub_25F36A97C();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_25F36975C()
{
  sub_25F3C41CC();
  *(v0 + 24) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F3697F0, v2, v1);
}

uint64_t sub_25F3697F0()
{

  sub_25F36B18C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F369878()
{
  sub_25F3C41CC();
  *(v0 + 24) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F36990C, v2, v1);
}

uint64_t sub_25F36990C()
{

  sub_25F36C0DC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F36999C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  a6();
  return sub_25F3C315C();
}

uint64_t sub_25F369A04(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_25F369A24, 0, 0);
}

uint64_t sub_25F369A24()
{
  sub_25F3C41CC();
  *(v0 + 32) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F369AB8, v2, v1);
}

uint64_t sub_25F369AB8()
{

  v1 = sub_25F36A644();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_25F369B4C()
{
  sub_25F3C41CC();
  *(v0 + 24) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F369BE0, v2, v1);
}

uint64_t sub_25F369BE0()
{

  sub_25F36AD44();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F369C68()
{
  sub_25F3C41CC();
  *(v0 + 24) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F369CFC, v2, v1);
}

uint64_t sub_25F369CFC()
{

  sub_25F36BDAC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F369E18(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_25F369E8C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_25F369EE8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_25F369EE8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25F369FB4(v11, 0, 0, 1, a1, a2);
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
    sub_25F36CB24(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_25F369FB4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25F36A0C0(a5, a6);
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
    result = sub_25F3C44AC();
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

uint64_t sub_25F36A0C0(uint64_t a1, unint64_t a2)
{
  v3 = sub_25F36A10C(a1, a2);
  sub_25F36A23C(&unk_28716FB58);
  return v3;
}

uint64_t sub_25F36A10C(uint64_t a1, unint64_t a2)
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

  v6 = sub_25F36A328(v5, 0);
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

  result = sub_25F3C44AC();
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
        v10 = sub_25F3C409C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25F36A328(v10, 0);
        result = sub_25F3C443C();
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

uint64_t sub_25F36A23C(uint64_t result)
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

  result = sub_25F36A39C(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_25F36A328(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD67580);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25F36A39C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD67580);
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

_BYTE **sub_25F36A490(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_25F36A4A0()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();
  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0x72746E45706F6F4ELL, 0xEE00746E696F5079, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received a host message stream but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_25F36A644()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();
  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0xD000000000000019, 0x800000025F3CAAF0, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received a host message stream but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_25F36A7E0()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();
  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0xD00000000000001ALL, 0x800000025F3CAAD0, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received a host message stream but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_25F36A97C()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();
  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0xD00000000000001BLL, 0x800000025F3CAAB0, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received a host message stream but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_25F36AB18()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();
  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0x72746E45706F6F4ELL, 0xEE00746E696F5079, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received a shell message stream but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_25F3C245C();
  sub_25F36CEAC(&qword_27FD67558, MEMORY[0x277D40750]);
  return sub_25F3C2F0C();
}

uint64_t sub_25F36AD44()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();
  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0xD000000000000019, 0x800000025F3CAAF0, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received a shell message stream but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_25F3C245C();
  sub_25F36CEAC(&qword_27FD67558, MEMORY[0x277D40750]);
  return sub_25F3C2F0C();
}

uint64_t sub_25F36AF68()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();
  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0xD00000000000001ALL, 0x800000025F3CAAD0, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received a shell message stream but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_25F3C245C();
  sub_25F36CEAC(&qword_27FD67558, MEMORY[0x277D40750]);
  return sub_25F3C2F0C();
}

uint64_t sub_25F36B18C()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();
  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0xD00000000000001BLL, 0x800000025F3CAAB0, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received a shell message stream but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_25F3C245C();
  sub_25F36CEAC(&qword_27FD67558, MEMORY[0x277D40750]);
  return sub_25F3C2F0C();
}

uint64_t sub_25F36B3B0()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();

  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0xD000000000000015, 0x800000025F3CAA30, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received an endpoint but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_25F36B55C()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();
  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0x72746E45706F6F4ELL, 0xEE00746E696F5079, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received an endpoint but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_25F36B6FC()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();

  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0xD000000000000011, 0x800000025F3CAA50, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received an endpoint but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_25F36B8A8()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();

  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0xD000000000000012, 0x800000025F3CAA90, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received an endpoint but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_25F36BA54()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();

  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0xD000000000000013, 0x800000025F3CAA70, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received an endpoint but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_25F36BC00()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();

  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0xD000000000000014, 0x800000025F3CAA10, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received an endpoint but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_25F36BDAC()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();
  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0xD000000000000019, 0x800000025F3CAAF0, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received an endpoint but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_25F36BF44()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();
  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0xD00000000000001ALL, 0x800000025F3CAAD0, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received an endpoint but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_25F36C0DC()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();
  v4 = sub_25F3C353C();
  v5 = sub_25F3C431C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_25F369EE8(0xD00000000000001BLL, 0x800000025F3CAAB0, &v10);
    _os_log_impl(&dword_25F342000, v4, v5, "Entry point received an endpoint but does not handle them: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_25F36C2A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F3C354C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();
  (*(v4 + 16))(v6, v2, a2);
  v11 = sub_25F3C353C();
  v12 = sub_25F3C431C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = v7;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23 = v8;
    v16 = v15;
    v25 = v15;
    *v14 = 136446210;
    v17 = sub_25F3C455C();
    v19 = v18;
    (*(v4 + 8))(v6, a2);
    v20 = sub_25F369EE8(v17, v19, &v25);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_25F342000, v11, v12, "Entry point received an endpoint but does not handle them: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x25F8DC6C0](v16, -1, -1);
    MEMORY[0x25F8DC6C0](v14, -1, -1);

    return (*(v23 + 8))(v10, v24);
  }

  else
  {

    (*(v4 + 8))(v6, a2);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t dispatch thunk of EntryPoint.handle(hostMessageStream:instance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25F367ADC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of EntryPoint.handle(shellMessageStream:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F351058;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of EntryPoint.handle(endpoint:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25F351058;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of EntryPoint.cancelUpdate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F34905C;

  return v7(a1, a2);
}

uint64_t sub_25F36CB24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25F36CB80()
{
  result = sub_25F3C2EBC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F36CC80()
{
  sub_25F3C445C();
  MEMORY[0x25F8DB8E0](0xD000000000000014, 0x800000025F3CB060);
  v0 = sub_25F3C469C();
  MEMORY[0x25F8DB8E0](v0);

  MEMORY[0x25F8DB8E0](0xD000000000000020, 0x800000025F3CB080);
  swift_getAssociatedTypeWitness();
  v1 = sub_25F3C469C();
  MEMORY[0x25F8DB8E0](v1);

  return 0;
}

unint64_t sub_25F36CD7C()
{
  result = qword_27FD67620;
  if (!qword_27FD67620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD67618);
    sub_25F36CEAC(&qword_27FD67628, MEMORY[0x277D40778]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67620);
  }

  return result;
}

unint64_t sub_25F36CE30()
{
  result = qword_27FD67640;
  if (!qword_27FD67640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD67638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67640);
  }

  return result;
}

uint64_t sub_25F36CEAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F36CF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_25F3C2A8C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_25F3C253C();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_25F3C271C();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_25F3C2A4C();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = sub_25F3C261C();
  v4[19] = swift_task_alloc();
  v9 = sub_25F3C274C();
  v4[20] = v9;
  v4[21] = *(v9 - 8);
  v4[22] = swift_task_alloc();
  v10 = sub_25F3C245C();
  v4[23] = v10;
  v4[24] = *(v10 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F36D1E8, 0, 0);
}

uint64_t sub_25F36D1E8()
{
  v1 = v0[19];
  v2 = v0[3];
  (*(v0[21] + 16))(v0[22], v0[2], v0[20]);
  sub_25F3C240C();
  sub_25F36E4C0(v2, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = v0[19];
    v5 = v0[13];
    v4 = v0[14];
    v6 = v0[12];
    v7 = v0[9];
    v8 = v0[10];
    v9 = v0[7];
    v27 = v0[8];
    v25 = v0[11];
    v26 = v0[6];
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67650);
    v11 = *(v10 + 48);
    v12 = *(v10 + 64);
    (*(v5 + 32))(v4, v3, v6);
    (*(v8 + 32))(v25, v3 + v11, v7);
    (*(v9 + 32))(v27, v3 + v12, v26);
    v13 = swift_task_alloc();
    v0[26] = v13;
    *v13 = v0;
    v13[1] = sub_25F36D480;
    v14 = v0[25];
    v15 = v0[14];
    v16 = v0[11];
    v17 = v0[8];

    return sub_25F3A7AC0(v14, v15, v16, v17);
  }

  else
  {
    v19 = v0[25];
    v20 = v0[17];
    (*(v0[16] + 32))(v20, v0[19], v0[15]);
    sub_25F36D6A8(v19, v20);
    v22 = v0[24];
    v21 = v0[25];
    v23 = v0[23];
    (*(v0[16] + 8))(v0[17], v0[15]);
    (*(v22 + 8))(v21, v23);

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_25F36D480()
{

  return MEMORY[0x2822009F8](sub_25F36D57C, 0, 0);
}

uint64_t sub_25F36D57C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v2 + 8))(v1, v3);
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_25F36D6A8(uint64_t a1, uint64_t a2)
{
  v10 = sub_25F3C354C();
  MEMORY[0x28223BE20](v10);
  v4 = sub_25F3C325C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 16);

  sub_25F3C326C();
  v11 = a2;
  v12 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67660);
  sub_25F36E540();
  sub_25F3C31CC();
  (*(v5 + 8))(v7, v4);

  swift_getObjectType();
  sub_25F3C292C();
  return swift_unknownObjectRelease();
}

uint64_t sub_25F36DA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_25F3C2F3C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_25F3C354C();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F36DB94, 0, 0);
}

uint64_t sub_25F36DB94()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_25F36DC34;
  v2 = *(v0 + 24);

  return MEMORY[0x2821A0EA0](v2);
}

uint64_t sub_25F36DC34()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F36DD7C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25F36DD7C()
{
  v1 = v0[11];
  sub_25F3C351C();
  v2 = v1;
  v3 = sub_25F3C353C();
  v4 = sub_25F3C431C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_25F342000, v3, v4, "Failed to attach transport to message pipe: %@", v6, 0xCu);
    sub_25F35F6D8(v7);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  v10 = v0[11];
  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[6];
  v14 = v0[7];
  v15 = v0[4];
  v16 = v0[5];
  v17 = v0[3];

  (*(v12 + 8))(v11, v14);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_25F35F678();
  sub_25F3C2F1C();

  (*(v16 + 8))(v13, v15);

  v18 = v0[1];

  return v18();
}

uint64_t sub_25F36DFB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_25F3C2A2C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  sub_25F3C2A3C();
  v13 = *a1;
  if (*(*a1 + 16) && (v14 = sub_25F35C66C(v12), (v15 & 1) != 0))
  {
    v16 = (*(v13 + 56) + 16 * v14);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(v7 + 8);
    swift_unknownObjectRetain();
    v20 = v12;
    v21 = v17;
    result = v19(v20, v6);
  }

  else
  {
    v27 = a3;
    v23 = *(v7 + 8);
    v23(v12, v6);
    v24 = v28;
    result = sub_25F36E5A4(a2);
    if (v24)
    {
      return result;
    }

    v18 = result;
    v21 = v25;
    v28 = 0;
    sub_25F3C2A3C();
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *a1;
    sub_25F35D704(v18, v21, v10, isUniquelyReferenced_nonNull_native);
    result = (v23)(v10, v6);
    *a1 = v29;
    a3 = v27;
  }

  *a3 = v18;
  a3[1] = v21;
  return result;
}

uint64_t sub_25F36E1A8()
{
  v1 = *v0;
  sub_25F3C464C();
  MEMORY[0x25F8DBEC0](v1);
  return sub_25F3C466C();
}

uint64_t sub_25F36E21C()
{
  v1 = *v0;
  sub_25F3C464C();
  MEMORY[0x25F8DBEC0](v1);
  return sub_25F3C466C();
}

unint64_t sub_25F36E260()
{
  AgentError = type metadata accessor for AgentCache.CreateAgentError();
  if (!*(v0 + *(AgentError + 20)))
  {
    return 0xD00000000000001FLL;
  }

  if (*(v0 + *(AgentError + 20)) == 1)
  {
    sub_25F3C445C();

    v7 = 0xD000000000000010;
    v2 = sub_25F3C2A0C();
    MEMORY[0x25F8DB8E0](v2);

    v3 = 39;
    v4 = 0xE100000000000000;
  }

  else
  {
    v7 = 0;
    sub_25F3C445C();
    MEMORY[0x25F8DB8E0](0x27207373616C43, 0xE700000000000000);
    v6 = sub_25F3C2A0C();
    MEMORY[0x25F8DB8E0](v6);

    v3 = 0xD000000000000030;
    v4 = 0x800000025F3CB220;
  }

  MEMORY[0x25F8DB8E0](v3, v4);
  return v7;
}

uint64_t sub_25F36E3C4(uint64_t a1)
{
  v2 = sub_25F36EE08(&qword_27FD67678, type metadata accessor for AgentCache.CreateAgentError);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F36E430(uint64_t a1)
{
  v2 = sub_25F36EE08(&qword_27FD67678, type metadata accessor for AgentCache.CreateAgentError);

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F36E4C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3C261C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F36E540()
{
  result = qword_27FD67668;
  if (!qword_27FD67668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD67658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67668);
  }

  return result;
}

uint64_t sub_25F36E5A4(uint64_t a1)
{
  v3 = sub_25F3C2EBC();
  MEMORY[0x28223BE20](v3 - 8);
  AgentError = type metadata accessor for AgentCache.CreateAgentError();
  MEMORY[0x28223BE20](AgentError);
  v6 = &v28[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C29FC();
  if (v7)
  {
    v8 = sub_25F35E778();
    if (v1)
    {

      v9 = sub_25F3C2A4C();
      (*(*(v9 - 8) + 16))(v6, a1, v9);
      v6[*(AgentError + 20)] = 0;
      v10 = v1;
      sub_25F36EE08(&qword_27FD67678, type metadata accessor for AgentCache.CreateAgentError);
      sub_25F3C2FEC();

      sub_25F36EA74(v6);
      v11 = v29;
      v12 = __swift_project_boxed_opaque_existential_1(v28, v29);
      v13 = *(v11 - 8);
      MEMORY[0x28223BE20](v12);
      v15 = &v28[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v15);
      if (sub_25F3C456C())
      {
        (*(v13 + 8))(v15, v11);
      }

      else
      {
        swift_allocError();
        (*(v13 + 32))(v24, v15, v11);
      }

      swift_willThrow();

      return __swift_destroy_boxed_opaque_existential_0Tm(v28);
    }

    v16 = v8;
  }

  sub_25F3C2A0C();
  v17 = sub_25F3C446C();

  if (v17)
  {
    if (swift_conformsToProtocol2())
    {
      sub_25F3C2A1C();
      return sub_25F3C293C();
    }

    sub_25F36EE08(&qword_27FD67670, type metadata accessor for AgentCache.CreateAgentError);
    swift_allocError();
    v20 = v25;
    v26 = sub_25F3C2A4C();
    (*(*(v26 - 8) + 16))(v20, a1, v26);
    v22 = *(AgentError + 20);
    v23 = 2;
  }

  else
  {
    sub_25F36EE08(&qword_27FD67670, type metadata accessor for AgentCache.CreateAgentError);
    swift_allocError();
    v20 = v19;
    v21 = sub_25F3C2A4C();
    (*(*(v21 - 8) + 16))(v20, a1, v21);
    v22 = *(AgentError + 20);
    v23 = 1;
  }

  *(v20 + v22) = v23;
  return swift_willThrow();
}

uint64_t type metadata accessor for AgentCache.CreateAgentError()
{
  result = qword_27FD67680;
  if (!qword_27FD67680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F36EA74(uint64_t a1)
{
  AgentError = type metadata accessor for AgentCache.CreateAgentError();
  (*(*(AgentError - 8) + 8))(a1, AgentError);
  return a1;
}

uint64_t sub_25F36EAF8()
{
  result = sub_25F3C2A4C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AgentCache.CreateAgentError.Reason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AgentCache.CreateAgentError.Reason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F36ECDC()
{
  result = qword_27FD67690;
  if (!qword_27FD67690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67690);
  }

  return result;
}

uint64_t sub_25F36EE08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F36EE50(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_25F3C354C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F36EF10, 0, 0);
}

uint64_t sub_25F36EF10()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_25F36EFAC;
  v2 = *(v0 + 16);

  return sub_25F36F394(v2);
}

uint64_t sub_25F36EFAC(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 72) = a1 & 1;

    return MEMORY[0x2822009F8](sub_25F36F104, 0, 0);
  }
}

uint64_t sub_25F36F104()
{
  if (*(v0 + 72) == 1)
  {
    sub_25F3C351C();
    v1 = sub_25F3C353C();
    v2 = sub_25F3C430C();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_25F342000, v1, v2, "Loaded new products; will clear caches", v3, 2u);
      MEMORY[0x25F8DC6C0](v3, -1, -1);
    }

    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = *(v0 + 32);

    (*(v5 + 8))(v4, v6);
    v7 = swift_task_alloc();
    *(v0 + 64) = v7;
    *v7 = v0;
    v7[1] = sub_25F36F280;

    return sub_25F3560F0();
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_25F36F280()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25F36F394(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67508);
  v2[4] = swift_task_alloc();
  v3 = sub_25F3C283C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_25F3C41CC();
  v2[8] = sub_25F3C41BC();
  v5 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F36F4C0, v5, v4);
}

uint64_t sub_25F36F4C0()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[2];

  sub_25F371234(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_25F349AA8(v0[4], &qword_27FD67508);
    v5 = 0;
    goto LABEL_11;
  }

  (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
  v6 = sub_25F3C280C();
  v7 = sub_25F36F6AC(v6);

  v8 = sub_25F3C282C();
  v9 = sub_25F370490(v8);

  if ((v7 & 1) == 0)
  {
    if (sub_25F3C281C())
    {
      sub_25F3C3A5C();
      if (v9)
      {
LABEL_7:
        v5 = 1;
        goto LABEL_10;
      }
    }

    else if (v9)
    {
      goto LABEL_7;
    }

    v5 = sub_25F3C281C();
    goto LABEL_10;
  }

  sub_25F3C3A5C();
  v5 = 1;
LABEL_10:
  (*(v0[6] + 8))(v0[7], v0[5]);
LABEL_11:

  v10 = v0[1];

  return v10(v5 & 1);
}

uint64_t sub_25F36F6AC(uint64_t a1)
{
  v2 = v1;
  v86 = sub_25F3C354C();
  v4 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v93 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_25F3C296C();
  v6 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v102 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_25F3C325C();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_25F3C1F2C();
  v9 = *(v92 - 8);
  v10 = MEMORY[0x28223BE20](v92);
  v91 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v90 = &v75 - v12;
  v106 = sub_25F3C29CC();
  v13 = *(v106 - 8);
  v14 = MEMORY[0x28223BE20](v106);
  v82 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v104 = &v75 - v16;
  v113 = sub_25F3C29EC();
  v17 = MEMORY[0x28223BE20](v113);
  MEMORY[0x28223BE20](v17);
  v22 = &v75 - v18;
  v23 = *(a1 + 16);
  v80 = a1;
  if (v23)
  {
    v84 = v19;
    v25 = *(v20 + 16);
    v24 = v20 + 16;
    v108 = v25;
    v100 = (v13 + 88);
    v99 = *MEMORY[0x277D40BF0];
    v89 = *MEMORY[0x277D40BE8];
    v87 = v9 + 1;
    v75 = v6;
    v98 = (v6 + 88);
    v97 = *MEMORY[0x277D40BD8];
    v88 = *MEMORY[0x277D40BE0];
    v85 = *MEMORY[0x277D40BD0];
    v101 = (v24 - 8);
    v83 = (v4 + 8);
    v26 = a1 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v107 = v24;
    v95 = *(v24 + 56);
    *&v21 = 136446466;
    v79 = v21;
    v111 = &v75 - v18;
    v96 = v13;
    v25(v22, v26, v113);
    while (1)
    {
      v28 = v104;
      sub_25F3C29DC();
      v29 = (*v100)(v28, v106);
      if (v29 == v99)
      {
        v110 = sub_25F3C29BC();
        v31 = v30;
        sub_25F3C295C();
        v9 = sub_25F3C3FDC();
      }

      else
      {
        if (v29 != v89)
        {
          v71 = v76;
          sub_25F3C326C();
          sub_25F3C2F4C();
          (*(v77 + 8))(v71, v78);
          sub_25F3C318C();
          sub_25F371DCC(&qword_27FD676A8, MEMORY[0x277D404F8]);
          swift_allocError();
          sub_25F3C317C();
          swift_willThrow();
          (*v101)(v22, v113);
          (*(v13 + 8))(v104, v106);
          return v9 & 1;
        }

        v32 = [objc_opt_self() mainBundle];
        v33 = [v32 bundleURL];

        v109 = v23;
        v34 = v91;
        sub_25F3C1EFC();

        v35 = v90;
        sub_25F3C1E9C();
        v105 = v2;
        v94 = v26;
        isa = v87->isa;
        v37 = v92;
        (v87->isa)(v34, v92);
        sub_25F3C29BC();
        sub_25F3C1EDC();

        v110 = sub_25F3C1F1C();
        v31 = v38;
        isa(v34, v37);
        sub_25F3C295C();
        sub_25F3C1EDC();

        sub_25F3C1F1C();
        v23 = v109;
        isa(v34, v37);
        v39 = sub_25F3C3FDC();

        v40 = v37;
        v9 = v39;
        isa(v35, v40);
        v26 = v94;
        v2 = v105;
        v22 = v111;
      }

      v41 = v102;
      sub_25F3C297C();
      v42 = (*v98)(v41, v103);
      if (v42 == v97)
      {
        v43 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
        v44 = v110;
        v45 = sub_25F3C3FDC();
        v46 = [v43 initWithPath_];

        if (!v46)
        {
          sub_25F371D14();
          swift_allocError();
          *v72 = v44;
          *(v72 + 8) = v31;
          *(v72 + 16) = 0;
          *(v72 + 24) = 0;
          *(v72 + 32) = 0;
          swift_willThrow();

          (*v101)(v22, v113);
          return v9 & 1;
        }
      }

      else
      {
        if (v42 != v88)
        {
          v47 = v42;

          if (v47 != v85)
          {
            v73 = v76;
            sub_25F3C326C();
            sub_25F3C2F4C();
            (*(v77 + 8))(v73, v78);
            sub_25F3C318C();
            sub_25F371DCC(&qword_27FD676A8, MEMORY[0x277D404F8]);
            swift_allocError();
            sub_25F3C317C();
            swift_willThrow();

            (*v101)(v22, v113);
            (*(v75 + 8))(v102, v103);
            return v9 & 1;
          }

          v109 = v23;
          sub_25F3C352C();
          v48 = v84;
          v108(v84, v22, v113);
          v49 = v9;
          v9 = sub_25F3C353C();
          v50 = sub_25F3C430C();

          if (os_log_type_enabled(v9, v50))
          {
            v51 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            v112 = v110;
            *v51 = v79;
            v52 = [v49 lastPathComponent];
            v53 = sub_25F3C3FEC();
            LODWORD(v94) = v50;
            v54 = v53;
            v105 = v2;
            v56 = v55;

            v57 = sub_25F369EE8(v54, v56, &v112);

            *(v51 + 4) = v57;
            *(v51 + 12) = 2080;
            sub_25F3C29DC();
            v58 = sub_25F3C404C();
            v60 = v59;
            v61 = *v101;
            v62 = v48;
            v63 = v113;
            (*v101)(v62, v113);
            v64 = sub_25F369EE8(v58, v60, &v112);

            *(v51 + 14) = v64;
            _os_log_impl(&dword_25F342000, v9, v94, "ProductLoader NOT loading %{public}s because XOJIT has already loaded it from the shell (%s)", v51, 0x16u);
            v65 = v110;
            swift_arrayDestroy();
            MEMORY[0x25F8DC6C0](v65, -1, -1);
            v66 = v51;
            v22 = v111;
            MEMORY[0x25F8DC6C0](v66, -1, -1);

            (*v83)(v93, v86);
            v61(v22, v63);
            v2 = v105;
          }

          else
          {

            v27 = *v101;
            v9 = v113;
            (*v101)(v48, v113);
            (*v83)(v93, v86);
            v27(v22, v9);
          }

          v23 = v109;
          goto LABEL_5;
        }
      }

      sub_25F37154C(v9, v22);
      if (v2)
      {
        (*v101)(v22, v113);

        return v9 & 1;
      }

      (*v101)(v22, v113);

LABEL_5:
      v26 += v95;
      --v23;
      v13 = v96;
      if (!v23)
      {
        break;
      }

      v108(v22, v26, v113);
    }
  }

  v67 = v81;
  if ((*(v81 + 16) & 1) == 0)
  {
    sub_25F3C3BCC();
    *(v67 + 16) = 1;
  }

  v112 = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD676B8);
  sub_25F371D68();
  sub_25F371DCC(&qword_27FD676C8, MEMORY[0x277D40BF8]);
  v68 = sub_25F3C42CC();
  swift_beginAccess();

  v70 = sub_25F370AA4(v69, v68);

  LOBYTE(v9) = v70 ^ 1;
  swift_beginAccess();
  sub_25F371024(v68);
  swift_endAccess();
  return v9 & 1;
}

uint64_t sub_25F370490(uint64_t a1)
{
  v63 = sub_25F3C2EBC();
  v3 = *(v63 - 1);
  MEMORY[0x28223BE20](v63);
  v62 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25F3C28FC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v65 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v56 - v9;
  v11 = *(a1 + 16);
  v58 = v1;
  if (v11)
  {
    v64 = v5;
    v71[0] = MEMORY[0x277D84F90];
    sub_25F349B74(0, v11, 0);
    v12 = v71[0];
    v57 = v6;
    v13 = v6 + 16;
    v60 = *(v6 + 16);
    v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v56 = a1;
    v15 = a1 + v14;
    v59 = *(v13 + 56);
    v16 = (v3 + 8);
    v61 = v13;
    v17 = (v13 - 8);
    v66 = v11;
    do
    {
      v18 = v64;
      v60(v10, v15, v64);
      v19 = v62;
      sub_25F3C28CC();
      v20 = sub_25F3C2E8C();
      (*v16)(v19, v63);
      (*v17)(v10, v18);
      v71[0] = v12;
      v22 = *(v12 + 16);
      v21 = *(v12 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_25F349B74((v21 > 1), v22 + 1, 1);
        v12 = v71[0];
      }

      *(v12 + 16) = v22 + 1;
      *(v12 + 8 * v22 + 32) = v20;
      v15 += v59;
      --v11;
    }

    while (v11);
    v5 = v64;
    v6 = v57;
    v11 = v66;
    a1 = v56;
  }

  sub_25F3C3BBC();

  v23 = sub_25F3544D4(MEMORY[0x277D84F90]);
  if (!v11)
  {
LABEL_21:
    v52 = v58;

    v54 = sub_25F3712A4(v53, v23);

    *(v52 + 32) = v23;

    return (v54 & 1) == 0;
  }

  v25 = *(v6 + 16);
  v24 = v6 + 16;
  v64 = v25;
  v26 = a1 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
  v62 = *(v24 + 56);
  v63 = (v24 - 8);
  while (1)
  {
    v66 = v11;
    v28 = v5;
    v29 = v24;
    v64(v65, v26, v5);
    v30 = sub_25F3C28DC();
    v32 = v31;
    sub_25F3C28EC();
    v33 = __swift_project_boxed_opaque_existential_1(v71, v71[3]);
    MEMORY[0x28223BE20](v33);
    (*(v35 + 16))(&v56 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_25F3C440C();
    v68 = v72;
    v69 = v73;
    v70 = v74;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v23;
    v37 = sub_25F35C378(v30, v32);
    v39 = v23[2];
    v40 = (v38 & 1) == 0;
    v41 = __OFADD__(v39, v40);
    v42 = v39 + v40;
    if (v41)
    {
      break;
    }

    v43 = v38;
    if (v23[3] < v42)
    {
      sub_25F3BA48C(v42, isUniquelyReferenced_nonNull_native);
      v37 = sub_25F35C378(v30, v32);
      if ((v43 & 1) != (v44 & 1))
      {
        goto LABEL_24;
      }

LABEL_16:
      if (v43)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v51 = v37;
    sub_25F3BC9F8();
    v37 = v51;
    v5 = v28;
    if (v43)
    {
LABEL_9:
      v27 = v37;

      v23 = v67;
      sub_25F371440(&v68, v67[7] + 40 * v27);
      (*v63)(v65, v5);
      goto LABEL_10;
    }

LABEL_17:
    v23 = v67;
    v67[(v37 >> 6) + 8] |= 1 << v37;
    v45 = (v23[6] + 16 * v37);
    *v45 = v30;
    v45[1] = v32;
    v46 = v23[7] + 40 * v37;
    v47 = v70;
    v48 = v69;
    *v46 = v68;
    *(v46 + 16) = v48;
    *(v46 + 32) = v47;
    (*v63)(v65, v5);
    v49 = v23[2];
    v41 = __OFADD__(v49, 1);
    v50 = v49 + 1;
    if (v41)
    {
      goto LABEL_23;
    }

    v23[2] = v50;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0Tm(v71);
    v26 += v62;
    v11 = v66 - 1;
    v24 = v29;
    if (v66 == 1)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_25F3C45CC();
  __break(1u);
  return result;
}

uint64_t sub_25F370AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3C29EC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v34 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v15 = a2 + 56;
  v16 = 1 << *(a2 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a2 + 56);
  v39 = v5 + 32;
  v40 = (v16 + 63) >> 6;
  v43 = a1 + 56;
  v44 = v5 + 16;
  v45 = (v5 + 8);

  v20 = 0;
  v34 = a2 + 56;
  v35 = v13;
  v38 = a2;
  v36 = v5;
  v21 = v40;
  if (v18)
  {
    while (1)
    {
      v22 = v20;
LABEL_11:
      v23 = *(v5 + 72);
      v24 = *(a2 + 48) + v23 * (__clz(__rbit64(v18)) | (v22 << 6));
      v41 = *(v5 + 16);
      v42 = v23;
      v41(v13, v24, v4);
      (*(v5 + 32))(v11, v13, v4);
      v25 = *(a1 + 16);
      v37 = v45 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v26 = v11;
      if (!v25)
      {
        break;
      }

      sub_25F371DCC(&qword_27FD676C8, MEMORY[0x277D40BF8]);
      v27 = sub_25F3C3FBC();
      v28 = -1 << *(a1 + 32);
      v29 = v27 & ~v28;
      if (((*(v43 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
      {
        break;
      }

      v30 = a1;
      v18 &= v18 - 1;
      v31 = ~v28;
      while (1)
      {
        v41(v8, *(v30 + 48) + v29 * v42, v4);
        sub_25F371DCC(&qword_27FD676D0, MEMORY[0x277D40BF8]);
        v32 = sub_25F3C3FCC();
        v33 = *v45;
        (*v45)(v8, v4);
        if (v32)
        {
          break;
        }

        v29 = (v29 + 1) & v31;
        if (((*(v43 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
          v33(v26, v4);
          goto LABEL_19;
        }
      }

      v11 = v26;
      result = (v33)(v26, v4);
      v20 = v22;
      a2 = v38;
      a1 = v30;
      v13 = v35;
      v5 = v36;
      v15 = v34;
      v21 = v40;
      if (!v18)
      {
        goto LABEL_8;
      }
    }

    (*v45)(v11, v4);
LABEL_19:
    v14 = 0;
LABEL_21:

    return v14;
  }

LABEL_8:
  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
      v14 = 1;
      goto LABEL_21;
    }

    v18 = *(v15 + 8 * v22);
    ++v20;
    if (v18)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F370E74()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[4])
  {
    v4 = v0[2];
    v3 = v0[3];
    sub_25F3C445C();

    v8 = 0x1000000000000022;
    MEMORY[0x25F8DB8E0](v1, v2);
    MEMORY[0x25F8DB8E0](0x203A9D80E2, 0xA500000000000000);
    v5 = v4;
    v6 = v3;
  }

  else
  {
    sub_25F3C445C();

    v8 = 0x1000000000000024;
    MEMORY[0x25F8DB8E0](v1, v2);
    v5 = 10322146;
    v6 = 0xA300000000000000;
  }

  MEMORY[0x25F8DB8E0](v5, v6);
  return v8;
}

uint64_t sub_25F370FC0()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_25F371024(uint64_t a1)
{
  v2 = sub_25F3C29EC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v23 - v8;
  result = MEMORY[0x28223BE20](v7);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v12, v2);
      sub_25F3AC75C(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F371234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67508);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F3712A4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_25F37149C(*(v3 + 56) + 40 * v12, &v24);
    v21 = v24;
    v22 = v25;
    v16 = v26;

    if (!v14)
    {
      return 1;
    }

    v24 = v21;
    v25 = v22;
    v26 = v16;
    v17 = sub_25F35C378(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_25F3714F8(&v24);
      return 0;
    }

    sub_25F37149C(*(a2 + 56) + 40 * v17, v23);
    v20 = MEMORY[0x25F8DBC50](v23, &v24);
    sub_25F3714F8(v23);
    result = sub_25F3714F8(&v24);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_25F37154C(void *a1, uint64_t a2)
{
  v83 = a1;
  v74 = sub_25F3C403C();
  v76 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v75 = &v69[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v80 = sub_25F3C299C();
  v85 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v84 = &v69[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = sub_25F3C29CC();
  MEMORY[0x28223BE20](v78);
  v77 = &v69[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_25F3C29EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v69[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_25F3C354C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v69[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v69[-v15];
  sub_25F3C351C();
  v79 = v7;
  v17 = *(v7 + 16);
  v81 = v9;
  v82 = v6;
  v17(v9, a2, v6);
  v18 = v83;
  v83 = v16;
  v19 = sub_25F3C353C();
  v20 = sub_25F3C430C();

  v21 = os_log_type_enabled(v19, v20);
  v72 = v14;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v88 = v71;
    *v22 = 136380931;
    v23 = [v18 lastPathComponent];
    v70 = v20;
    v24 = v23;
    v25 = sub_25F3C3FEC();
    v26 = v11;
    v73 = v10;
    v27 = v25;
    v29 = v28;

    v30 = v27;
    v11 = v26;
    v31 = sub_25F369EE8(v30, v29, &v88);

    *(v22 + 4) = v31;
    *(v22 + 12) = 2080;
    v32 = v81;
    sub_25F3C29DC();
    v33 = sub_25F3C404C();
    v35 = v34;
    (*(v79 + 8))(v32, v82);
    v36 = sub_25F369EE8(v33, v35, &v88);

    *(v22 + 14) = v36;
    _os_log_impl(&dword_25F342000, v19, v70, "ProductLoader loading %{private}s (%s)", v22, 0x16u);
    v37 = v71;
    swift_arrayDestroy();
    MEMORY[0x25F8DC6C0](v37, -1, -1);
    v10 = v73;
    MEMORY[0x25F8DC6C0](v22, -1, -1);
  }

  else
  {

    (*(v79 + 8))(v81, v82);
  }

  v38 = v11;
  v39 = v83;
  v83 = *(v11 + 8);
  (v83)(v39, v10);
  v40 = v84;
  sub_25F3C29AC();
  v41 = sub_25F3C298C();
  (*(v85 + 8))(v40, v80);
  if (!dlopen([v18 UTF8String], v41))
  {
    v42 = dlerror();
    if (v42)
    {
      v43 = v42;
      v44 = v75;
      sub_25F3C401C();
      v45 = sub_25F3C402C();
      (*(v76 + 8))(v44, v74);
      v46 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithCString:v43 encoding:v45];
      if (sub_25F3C294C())
      {
        v47 = sub_25F3C3FEC();
        v49 = v48;
        v88 = v46;
        v50 = v46;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD676D8);
        v51 = sub_25F3C404C();
        v53 = v52;
        sub_25F371D14();
        v54 = swift_allocError();
        *v55 = v47;
        *(v55 + 8) = v49;
        *(v55 + 16) = v51;
        *(v55 + 24) = v53;
        *(v55 + 32) = 1;
        v86 = v54;
        swift_willThrow();
      }

      else
      {
        v85 = v38;
        v73 = v10;
        v56 = v72;
        sub_25F3C351C();
        v57 = v18;
        v58 = v46;
        v59 = sub_25F3C353C();
        v60 = sub_25F3C431C();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v88 = v63;
          *v61 = 138412546;
          *(v61 + 4) = v57;
          *v62 = v57;
          *(v61 + 12) = 2080;
          v87 = v46;
          v64 = v57;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD676D8);
          v65 = sub_25F3C43AC();
          v67 = sub_25F369EE8(v65, v66, &v88);

          *(v61 + 14) = v67;
          _os_log_impl(&dword_25F342000, v59, v60, "Failed to load optional product: %@: %s", v61, 0x16u);
          sub_25F349AA8(v62, &qword_27FD67A50);
          MEMORY[0x25F8DC6C0](v62, -1, -1);
          __swift_destroy_boxed_opaque_existential_0Tm(v63);
          MEMORY[0x25F8DC6C0](v63, -1, -1);
          MEMORY[0x25F8DC6C0](v61, -1, -1);

          v68 = v72;
        }

        else
        {

          v68 = v56;
        }

        (v83)(v68, v73);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_25F371D14()
{
  result = qword_27FD676B0;
  if (!qword_27FD676B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD676B0);
  }

  return result;
}

unint64_t sub_25F371D68()
{
  result = qword_27FD676C0;
  if (!qword_27FD676C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD676B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD676C0);
  }

  return result;
}

uint64_t sub_25F371DCC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25F371E34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_25F371E7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_25F371EE4()
{
  result = qword_27FD676E0;
  if (!qword_27FD676E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD676E0);
  }

  return result;
}

uint64_t sub_25F371F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  sub_25F372108(a1, a2, a3, &v13);
  v8 = v14;
  v9 = v16;
  *a4 = v13;
  *(a4 + 16) = v8;
  *(a4 + 24) = v15;
  *(a4 + 40) = v9;
  v10 = *MEMORY[0x277D407E8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD671C0);
  return (*(*(v11 - 8) + 104))(a4, v10, v11);
}

uint64_t sub_25F372108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_25F3C446C();
  if (!v8)
  {
    sub_25F3732B4();
    swift_allocError();
    *v18 = a1;
    *(v18 + 8) = a2;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
LABEL_8:
    *(v18 + 32) = 1;
    return swift_willThrow();
  }

  v9 = v8;
  v10 = swift_conformsToProtocol2();
  if (!v10)
  {
    sub_25F3732B4();
    swift_allocError();
    *v18 = a1;
    *(v18 + 8) = a2;
    *(v18 + 16) = xmmword_25F3C5390;
    goto LABEL_8;
  }

  v11 = v10;

  v12 = *(sub_25F3C387C() + 16);

  v13 = a3;
  v14 = v12;
  if (v12 > a3)
  {
    sub_25F3C373C();
    v15 = sub_25F3C36EC();
    if (v15)
    {
      v16 = v15;

      *a4 = a1;
      a4[1] = a2;
      a4[2] = a3;
      a4[3] = v16;
      a4[4] = v9;
      a4[5] = v11;
      return result;
    }

    v14 = 0;
    v13 = 2;
  }

  v19 = v14;
  sub_25F3732B4();
  swift_allocError();
  *v20 = a1;
  *(v20 + 8) = a2;
  *(v20 + 16) = v13;
  *(v20 + 24) = v19;
  *(v20 + 32) = v12 > a3;
  swift_willThrow();
}

uint64_t ProviderPreview.retrieveUnderlyingPreview()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_25F3C372C();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  if (v3 >= *(result + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = sub_25F3C3EAC();
  (*(*(v6 - 8) + 16))(a1, v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v3, v6);
}

uint64_t ProviderPreview.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_25F372378@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F3C27FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F3C3EAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 16);
  result = sub_25F3C372C();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v11 >= *(result + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v8 + 16))(v10, result + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v11, v7);

  sub_25F3BEB38(v6);
  (*(v8 + 8))(v10, v7);
  v13 = v16[1];
  sub_25F3725CC(a1);
  if (v13)
  {
    return (*(v4 + 8))(v6, v3);
  }

  (*(v4 + 8))(v6, v3);
  v14 = *MEMORY[0x277D40768];
  v15 = sub_25F3C246C();
  return (*(*(v15 - 8) + 104))(a1, v14, v15);
}

uint64_t sub_25F3725CC@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_25F3C325C();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_25F3C24CC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_25F3C284C();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67700);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - v5;
  v7 = sub_25F3C25DC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - v12;
  sub_25F3C27BC();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_25F37335C(v6);
    sub_25F3C326C();
    sub_25F3C2E4C();
    sub_25F37404C(&qword_27FD67708, MEMORY[0x277D40410]);
    swift_allocError();
    sub_25F3C2E5C();
    return swift_willThrow();
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    sub_25F3C279C();
    (*(v8 + 16))(v11, v13, v7);
    sub_25F3C27CC();
    sub_25F3C278C();
    sub_25F3C27AC();
    sub_25F3C277C();
    sub_25F3C263C();
    return (*(v8 + 8))(v13, v7);
  }
}

uint64_t sub_25F37296C()
{
  v1 = sub_25F3C27FC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25F3C3EAC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 16);
  result = sub_25F3C372C();
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *(result + 16))
  {
    (*(v6 + 16))(v8, result + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v9, v5);

    sub_25F3BEB38(v4);
    (*(v6 + 8))(v8, v5);
    sub_25F3C27DC();
    return (*(v2 + 8))(v4, v1);
  }

  __break(1u);
  return result;
}

BOOL static ProviderPreview.ID.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_25F3C459C();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t ProviderPreview.ID.hash(into:)()
{
  v1 = *(v0 + 16);
  sub_25F3C406C();
  return MEMORY[0x25F8DBEC0](v1);
}

uint64_t ProviderPreview.ID.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_25F3C464C();
  sub_25F3C406C();
  MEMORY[0x25F8DBEC0](v1);
  return sub_25F3C466C();
}

uint64_t sub_25F372C40()
{
  v1 = *(v0 + 16);
  sub_25F3C464C();
  sub_25F3C406C();
  MEMORY[0x25F8DBEC0](v1);
  return sub_25F3C466C();
}

uint64_t sub_25F372CA4()
{
  v1 = *(v0 + 16);
  sub_25F3C406C();
  return MEMORY[0x25F8DBEC0](v1);
}

uint64_t sub_25F372CDC()
{
  v1 = *(v0 + 16);
  sub_25F3C464C();
  sub_25F3C406C();
  MEMORY[0x25F8DBEC0](v1);
  return sub_25F3C466C();
}

unint64_t sub_25F372D40()
{
  result = qword_27FD676E8;
  if (!qword_27FD676E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD676E8);
  }

  return result;
}

BOOL sub_25F372D94(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_25F3C459C();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_25F372DF0()
{
  v1 = sub_25F3C3EAC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  result = sub_25F3C372C();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *(result + 16))
  {
    (*(v2 + 16))(v4, result + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v5, v1);

    v7 = sub_25F3C3E3C();
    (*(v2 + 8))(v4, v1);
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_25F372F40()
{
  v1 = sub_25F3C3EAC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  result = sub_25F3C372C();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *(result + 16))
  {
    (*(v2 + 16))(v4, result + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v5, v1);

    sub_25F3C3E7C();
    return (*(v2 + 8))(v4, v1);
  }

  __break(1u);
  return result;
}

unint64_t sub_25F373080@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 40);
  type metadata accessor for PreviewProviderHostProvider.Host(0);
  v4 = swift_allocObject();
  *(v4 + 16) = *(v1 + 24);
  *(v4 + 32) = v3;
  swift_beginAccess();

  sub_25F3C35BC();
  swift_endAccess();
  a1[3] = &type metadata for PreviewProviderHostProvider;
  result = sub_25F373308();
  a1[4] = result;
  *a1 = v4;
  return result;
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

uint64_t sub_25F373164(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F3731AC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25F37321C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F373264(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F3732B4()
{
  result = qword_27FD676F0;
  if (!qword_27FD676F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD676F0);
  }

  return result;
}

unint64_t sub_25F373308()
{
  result = qword_27FD676F8;
  if (!qword_27FD676F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD676F8);
  }

  return result;
}

uint64_t sub_25F37335C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F3733C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F37340C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F373460()
{
  v1 = v0;
  if (*(v0 + 32))
  {
    if (*(v0 + 16) == 0)
    {
      sub_25F3C445C();

      v11 = 0x100000000000001CLL;
      goto LABEL_8;
    }

    if (!(*(v0 + 16) ^ 1 | *(v0 + 24)))
    {
      sub_25F3C445C();

      v20 = 10322146;
      v3 = *v0;
      v2 = *(v0 + 8);

      sub_25F3C30BC();
      if (v6)
      {
        v7 = v4;
        v8 = v5;

        sub_25F3740F8(v1);
        v3 = v7;
        v2 = v8;
      }

      MEMORY[0x25F8DB8E0](v3, v2);

      v9 = 0x800000025F3CB700;
      v10 = 0x100000000000001ELL;
      goto LABEL_11;
    }
  }

  sub_25F3C445C();

  v11 = 0x100000000000001ELL;
LABEL_8:
  v20 = v11;
  v13 = *v0;
  v12 = *(v0 + 8);

  sub_25F3C30BC();
  if (v16)
  {
    v17 = v14;
    v18 = v15;

    sub_25F3740F8(v1);
    v13 = v17;
    v12 = v18;
  }

  MEMORY[0x25F8DB8E0](v13, v12);

  v10 = 10322146;
  v9 = 0xA300000000000000;
LABEL_11:
  MEMORY[0x25F8DB8E0](v10, v9);
  return v20;
}

uint64_t sub_25F373638()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v0[4])
  {
    v3 = v0;
    if (!(v1 | v2))
    {
      v36 = 0;
      sub_25F3C445C();
      v16 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
      v17 = [v16 processName];

      v18 = sub_25F3C3FEC();
      v20 = v19;

      MEMORY[0x25F8DB8E0](v18, v20);

      MEMORY[0x25F8DB8E0](0x100000000000002ELL, 0x800000025F3CB650);
      v22 = *v3;
      v21 = v3[1];

      sub_25F3C30BC();
      if (v25)
      {
        v26 = v23;
        v27 = v24;

        sub_25F3740F8(v3);
        v22 = v26;
        v21 = v27;
      }

      MEMORY[0x25F8DB8E0](v22, v21);

      v11 = "n a preview provider named ”";
      v12 = 0x100000000000005CLL;
      goto LABEL_11;
    }

    if (!(v1 ^ 1 | v2))
    {
      v36 = 0;
      sub_25F3C445C();
      MEMORY[0x25F8DB8E0](0x6570797420656854, 0xAC0000009D80E220);
      v5 = *v0;
      v4 = v0[1];

      sub_25F3C30BC();
      if (v8)
      {
        v9 = v6;
        v10 = v7;

        sub_25F3740F8(v3);
        v5 = v9;
        v4 = v10;
      }

      MEMORY[0x25F8DB8E0](v5, v4);

      v11 = " _PreviewHost for ”";
      v12 = 0x1000000000000047;
LABEL_11:
      v15 = v11 | 0x8000000000000000;
      goto LABEL_15;
    }

    sub_25F3C445C();

    v36 = 0x1000000000000025;
    v29 = *v0;
    v28 = v0[1];

    sub_25F3C30BC();
    if (v32)
    {
      v33 = v30;
      v34 = v31;

      sub_25F3740F8(v3);
      v29 = v33;
      v28 = v34;
    }

    MEMORY[0x25F8DB8E0](v29, v28);

    v12 = 10322146;
    v15 = 0xA300000000000000;
  }

  else
  {
    v36 = 0;
    sub_25F3C445C();
    MEMORY[0x25F8DB8E0](0x2077656976657250, 0xEF27207865646E69);
    v13 = sub_25F3C455C();
    MEMORY[0x25F8DB8E0](v13);

    MEMORY[0x25F8DB8E0](0xD000000000000030, 0x800000025F3CB590);
    v14 = sub_25F3C455C();
    MEMORY[0x25F8DB8E0](v14);

    v12 = 46;
    v15 = 0xE100000000000000;
  }

LABEL_15:
  MEMORY[0x25F8DB8E0](v12, v15);
  return v36;
}

uint64_t sub_25F373A48()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F3C445C();

  strcpy(v4, "Mangled name: ");
  MEMORY[0x25F8DB8E0](v1, v2);
  return v4[0];
}

uint64_t sub_25F373ACC@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 32) == 1 && *(v1 + 16) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67720);
    v6 = sub_25F3C314C();
    v7 = *(v6 - 8);
    *(swift_allocObject() + 16) = xmmword_25F3C6CC0;
    sub_25F3C313C();
    sub_25F37404C(&qword_27FD67728, MEMORY[0x277D404D8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67730);
    sub_25F374094();
    sub_25F3C43CC();
    return (*(v7 + 56))(a1, 0, 1, v6);
  }

  else
  {
    v3 = sub_25F3C314C();
    v4 = *(*(v3 - 8) + 56);

    return v4(a1, 1, 1, v3);
  }
}

uint64_t sub_25F373CB0(uint64_t a1)
{
  v2 = sub_25F374128();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F373CEC(uint64_t a1)
{
  v2 = sub_25F374128();

  return MEMORY[0x2821A07F0](a1, v2);
}

unint64_t sub_25F373D30()
{
  result = qword_27FD67710;
  if (!qword_27FD67710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67710);
  }

  return result;
}

unint64_t sub_25F373D88()
{
  result = qword_27FD67718;
  if (!qword_27FD67718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67718);
  }

  return result;
}

uint64_t sub_25F373DDC(uint64_t a1, uint64_t a2)
{
  v5 = sub_25F3C446C();
  if (!v5)
  {
    sub_25F3732B4();
    swift_allocError();
    *v19 = a1;
    *(v19 + 8) = a2;
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
LABEL_16:
    *(v19 + 32) = 1;
    swift_willThrow();

    return v2;
  }

  v6 = v5;
  v24 = a2;
  v7 = swift_conformsToProtocol2();
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (!v7)
  {
    sub_25F3732B4();
    swift_allocError();
    *v19 = a1;
    *(v19 + 8) = a2;
    *(v19 + 16) = xmmword_25F3C5390;
    goto LABEL_16;
  }

  v9 = v7;
  v10 = *(sub_25F3C387C() + 16);

  v2 = MEMORY[0x277D84F90];
  if (v10)
  {
    v25 = MEMORY[0x277D84F90];
    sub_25F349B94(0, v10, 0);
    v11 = 0;
    v2 = v25;
    while (1)
    {
      v12 = a1;

      v13 = *(sub_25F3C387C() + 16);

      if (v11 >= v13)
      {
        v20 = v11;
        v21 = v13;
        goto LABEL_19;
      }

      sub_25F3C373C();
      v14 = sub_25F3C36EC();
      if (!v14)
      {
        break;
      }

      v26 = v2;
      v16 = *(v2 + 16);
      v15 = *(v2 + 24);
      if (v16 >= v15 >> 1)
      {
        v18 = v14;
        sub_25F349B94((v15 > 1), v16 + 1, 1);
        v14 = v18;
        v2 = v26;
      }

      *(v2 + 16) = v16 + 1;
      v17 = (v2 + 48 * v16);
      a1 = v12;
      v17[4] = v12;
      v17[5] = v24;
      v17[6] = v11;
      v17[7] = v14;
      v17[8] = v8;
      v17[9] = v9;
      if (v10 == ++v11)
      {
        return v2;
      }
    }

    v21 = 0;
    v20 = 2;
LABEL_19:
    sub_25F3732B4();
    swift_allocError();
    *v22 = v12;
    *(v22 + 8) = v24;
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;
    *(v22 + 32) = v11 < v13;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_25F37404C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25F374094()
{
  result = qword_27FD67738;
  if (!qword_27FD67738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD67730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67738);
  }

  return result;
}

unint64_t sub_25F374128()
{
  result = qword_27FD67740;
  if (!qword_27FD67740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67740);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProviderError.Problem(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProviderError.Problem(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_25F3741CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F3741E8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_25F374244@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67750);
  v2 = v1 - 8;
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = (&v32 - v6);
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67758);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for EnvironmentView();
  v9 = *(v8 + 20);
  *(v7 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67760);
  swift_storeEnumTagMultiPayload();
  v10 = *(v8 + 24);
  *(v7 + v10) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  LOBYTE(v8) = sub_25F3C3C0C();
  sub_25F3C366C();
  v11 = v7 + *(v2 + 44);
  *v11 = v8;
  *(v11 + 1) = v12;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  *(v11 + 4) = v15;
  v11[40] = 0;
  v16 = sub_25F3C3D4C();
  v37 = sub_25F3C39DC();
  v36 = sub_25F3C393C();
  v35 = sub_25F3C384C();
  v34 = sub_25F3C3BFC();
  v17 = sub_25F3C3D5C();
  v33 = sub_25F3C39EC();
  v18 = sub_25F3C392C();
  v19 = sub_25F3C3D7C();
  v20 = sub_25F3C392C();
  v21 = sub_25F3C39DC();
  v38 = v5;
  sub_25F355568(v7, v5, &qword_27FD67750);
  v22 = v5;
  v23 = v39;
  sub_25F355568(v22, v39, &qword_27FD67750);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67768);
  v25 = v23 + v24[12];
  v26 = v36;
  v27 = v37;
  *v25 = v16;
  *(v25 + 8) = v27;
  *(v25 + 16) = v26;
  *(v25 + 24) = 0;
  *(v25 + 32) = v35;
  *(v25 + 40) = v34;
  v28 = v23 + v24[16];
  v29 = v33;
  *v28 = v17;
  *(v28 + 8) = v29;
  *(v28 + 16) = v18;
  *(v28 + 24) = 1;
  v30 = v23 + v24[20];
  *v30 = v19;
  *(v30 + 8) = 0;
  *(v30 + 16) = v20;
  *(v30 + 24) = v21;

  sub_25F349AA8(v7, &qword_27FD67750);

  return sub_25F349AA8(v38, &qword_27FD67750);
}

uint64_t sub_25F374524@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25F3C39CC();
  v3 = sub_25F3C393C();
  *a1 = v2;
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67748);
  return sub_25F374244(a1 + *(v4 + 44));
}

__n128 sub_25F374574@<Q0>(char a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  sub_25F3746C4(a1, &v14);
  v36 = v24;
  v37[0] = v25[0];
  *(v37 + 9) = *(v25 + 9);
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v26 = v14;
  v27 = v15;
  v38[10] = v24;
  v39[0] = v25[0];
  *(v39 + 9) = *(v25 + 9);
  v38[6] = v20;
  v38[7] = v21;
  v38[8] = v22;
  v38[9] = v23;
  v38[2] = v16;
  v38[3] = v17;
  v38[4] = v18;
  v38[5] = v19;
  v38[0] = v14;
  v38[1] = v15;
  sub_25F355568(&v26, &v13, &qword_27FD677B8);
  sub_25F349AA8(v38, &qword_27FD677B8);
  *a4 = a3;
  *(a4 + 8) = a2;
  v7 = v37[0];
  *(a4 + 176) = v36;
  *(a4 + 192) = v7;
  *(a4 + 201) = *(v37 + 9);
  v8 = v33;
  *(a4 + 112) = v32;
  *(a4 + 128) = v8;
  v9 = v35;
  *(a4 + 144) = v34;
  *(a4 + 160) = v9;
  v10 = v29;
  *(a4 + 48) = v28;
  *(a4 + 64) = v10;
  v11 = v31;
  *(a4 + 80) = v30;
  *(a4 + 96) = v11;
  result = v27;
  *(a4 + 16) = v26;
  *(a4 + 32) = result;
  return result;
}

uint64_t sub_25F3746C4@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v4 = sub_25F3C3D8C();
  v5 = sub_25F3C39DC();
  sub_25F3749C8(a1, v62);
  *&v59[7] = v62[0];
  *&v59[23] = v62[1];
  *&v59[39] = v62[2];
  *&v59[55] = v62[3];
  v30 = sub_25F3C3C5C();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD677C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25F3C6F80;
  v8 = sub_25F3C3C2C();
  *(v7 + 32) = v8;
  v9 = sub_25F3C3C4C();
  *(v7 + 33) = v9;
  v10 = sub_25F3C3C3C();
  sub_25F3C3C3C();
  if (sub_25F3C3C3C() != v8)
  {
    v10 = sub_25F3C3C3C();
  }

  sub_25F3C3C3C();
  if (sub_25F3C3C3C() != v9)
  {
    v10 = sub_25F3C3C3C();
  }

  sub_25F3C366C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v60 = 0;
  v19 = sub_25F3C3C1C();
  v32 = v5;
  v33[0] = 1;
  *&v33[64] = *&v59[63];
  *&v33[72] = KeyPath;
  v20 = *&v59[32];
  *&v33[49] = *&v59[48];
  v21 = *v59;
  *&v33[17] = *&v59[16];
  v22 = *&v59[16];
  *&v33[33] = *&v59[32];
  *&v33[1] = *v59;
  *&v34 = v30;
  BYTE8(v34) = v10;
  *&v35 = v12;
  *(&v35 + 1) = v14;
  *&v36 = v16;
  *(&v36 + 1) = v18;
  LOBYTE(v37) = 0;
  BYTE8(v37) = v19;
  v38 = 0u;
  v39 = 0u;
  v23 = *&v33[64];
  *(a2 + 72) = *&v33[48];
  v24 = *&v33[16];
  *(a2 + 56) = *&v33[32];
  *(a2 + 40) = v24;
  v25 = v32;
  *(a2 + 24) = *v33;
  *(a2 + 8) = v25;
  v26 = v38;
  *(a2 + 184) = v39;
  *(a2 + 168) = v26;
  v27 = v36;
  *(a2 + 152) = v37;
  *(a2 + 136) = v27;
  v28 = v34;
  *(a2 + 120) = v35;
  *(a2 + 104) = v28;
  v61 = 1;
  v40 = 1;
  *a2 = v4;
  *(a2 + 200) = 1;
  *(a2 + 88) = v23;
  v41[0] = v5;
  v41[1] = 0;
  v42 = 1;
  v44 = v22;
  v45 = v20;
  *v46 = *&v59[48];
  v43 = v21;
  *&v46[15] = *&v59[63];
  v47 = KeyPath;
  v48 = v30;
  v49 = v10;
  v50 = v12;
  v51 = v14;
  v52 = v16;
  v53 = v18;
  v54 = 0;
  v55 = v19;
  v57 = 0u;
  v56 = 0u;
  v58 = 1;

  sub_25F355568(&v32, v31, &qword_27FD677C8);
  sub_25F349AA8(v41, &qword_27FD677C8);
}

uint64_t sub_25F3749C8@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    sub_25F3C375C();
    sub_25F374B2C(v7, v8);
    sub_25F375EBC();
    v3 = sub_25F3C3CBC();
    v4 = v9;
    v6 = v10;
    v5 = v11 & 1;
    sub_25F375F10(v3, v9, v11 & 1);
  }

  sub_25F3C374C();
  sub_25F374C54(v12, v13, v14, v15);
  sub_25F375EBC();
  v16 = sub_25F3C3CBC();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_25F375F20(v3, v4, v5, v6);
  v20 &= 1u;
  sub_25F375F10(v16, v18, v20);

  sub_25F375F64(v3, v4, v5, v6);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v16;
  *(a2 + 40) = v18;
  *(a2 + 48) = v20;
  *(a2 + 56) = v22;
  sub_25F375FA8(v16, v18, v20);

  return sub_25F375F64(v3, v4, v5, v6);
}

uint64_t sub_25F374B2C(double a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD677D8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25F3C6CC0;
  v5 = MEMORY[0x277D85048];
  *(v4 + 56) = MEMORY[0x277D85048];
  v6 = sub_25F375FB8();
  *(v4 + 64) = v6;
  *(v4 + 32) = a1;
  v7 = sub_25F3C3FFC();
  MEMORY[0x25F8DB8E0](v7);

  MEMORY[0x25F8DB8E0](120, 0xE100000000000000);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25F3C6CC0;
  *(v8 + 56) = v5;
  *(v8 + 64) = v6;
  *(v8 + 32) = a2;
  v9 = sub_25F3C3FFC();
  MEMORY[0x25F8DB8E0](v9);

  return 0x203A657A6953;
}

uint64_t sub_25F374C54(double a1, double a2, double a3, double a4)
{
  sub_25F3C445C();

  strcpy(v19, "Insets: Top ");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD677D8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25F3C6CC0;
  v9 = MEMORY[0x277D85048];
  *(v8 + 56) = MEMORY[0x277D85048];
  v10 = sub_25F375FB8();
  *(v8 + 64) = v10;
  *(v8 + 32) = a1;
  v11 = sub_25F3C3FFC();
  MEMORY[0x25F8DB8E0](v11);

  MEMORY[0x25F8DB8E0](0x6E696461654C202CLL, 0xEA00000000002067);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25F3C6CC0;
  *(v12 + 56) = v9;
  *(v12 + 64) = v10;
  *(v12 + 32) = a2;
  v13 = sub_25F3C3FFC();
  MEMORY[0x25F8DB8E0](v13);

  MEMORY[0x25F8DB8E0](0x6D6F74746F42202CLL, 0xE900000000000020);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25F3C6CC0;
  *(v14 + 56) = v9;
  *(v14 + 64) = v10;
  *(v14 + 32) = a3;
  v15 = sub_25F3C3FFC();
  MEMORY[0x25F8DB8E0](v15);

  MEMORY[0x25F8DB8E0](0x696C69617254202CLL, 0xEB0000000020676ELL);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25F3C6CC0;
  *(v16 + 56) = v9;
  *(v16 + 64) = v10;
  *(v16 + 32) = a4;
  v17 = sub_25F3C3FFC();
  MEMORY[0x25F8DB8E0](v17);

  return v19[0];
}

uint64_t sub_25F374E90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25F3C391C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67758);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_25F355568(v2, &v14 - v9, &qword_27FD67758);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_25F3C368C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_25F3C432C();
    v13 = sub_25F3C3BDC();
    sub_25F3C34EC();

    sub_25F3C390C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_25F375090@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F3C391C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67760);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for EnvironmentView();
  sub_25F355568(v1 + *(v10 + 20), v9, &qword_27FD67760);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_25F3761F8(v9, a1);
  }

  sub_25F3C432C();
  v12 = sub_25F3C3BDC();
  sub_25F3C34EC();

  sub_25F3C390C();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_25F375268@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F3C391C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67760);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for EnvironmentView();
  sub_25F355568(v1 + *(v10 + 24), v9, &qword_27FD67760);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_25F3761F8(v9, a1);
  }

  sub_25F3C432C();
  v12 = sub_25F3C3BDC();
  sub_25F3C34EC();

  sub_25F3C390C();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_25F375440@<X0>(double (**a1)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = v1[2];
  v5 = v1[3];
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  *a1 = sub_25F375EAC;
  a1[1] = v7;
}

double sub_25F3754C4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_25F3C39DC();
  v18 = 1;
  sub_25F37563C(&v11);
  v23 = v15;
  v24[0] = v16[0];
  *(v24 + 9) = *(v16 + 9);
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v25[0] = v11;
  v25[1] = v12;
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v26[0] = v16[0];
  *(v26 + 9) = *(v16 + 9);
  sub_25F355568(&v19, &v10, &qword_27FD677E8);
  sub_25F349AA8(v25, &qword_27FD677E8);
  *&v17[55] = v22;
  *&v17[71] = v23;
  *&v17[87] = v24[0];
  *&v17[96] = *(v24 + 9);
  *&v17[7] = v19;
  *&v17[23] = v20;
  *&v17[39] = v21;
  v3 = v18;
  v4 = sub_25F3C3C5C();
  KeyPath = swift_getKeyPath();
  v6 = *&v17[32];
  *(a1 + 65) = *&v17[48];
  v7 = *&v17[80];
  *(a1 + 81) = *&v17[64];
  *(a1 + 97) = v7;
  *(a1 + 113) = *&v17[96];
  result = *v17;
  v9 = *&v17[16];
  *(a1 + 17) = *v17;
  *(a1 + 33) = v9;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 49) = v6;
  *(a1 + 136) = KeyPath;
  *(a1 + 144) = v4;
  return result;
}

uint64_t sub_25F37563C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67770);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  v5 = sub_25F3C368C();
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F3C39AC();
  MEMORY[0x28223BE20](v8 - 8);
  sub_25F3C399C();
  sub_25F3C398C();
  sub_25F374E90(v7);
  sub_25F3C404C();
  sub_25F3C397C();

  sub_25F3C398C();
  sub_25F3C39BC();
  v9 = sub_25F3C3CAC();
  v32 = v10;
  v31 = v11;
  v30 = v12;
  sub_25F3C399C();
  sub_25F3C398C();
  sub_25F375090(v4);
  sub_25F37600C(v4);
  sub_25F349AA8(v4, &qword_27FD67770);
  sub_25F3C397C();

  sub_25F3C398C();
  sub_25F3C39BC();
  v13 = sub_25F3C3CAC();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_25F3C399C();
  sub_25F3C398C();
  sub_25F375268(v4);
  sub_25F37600C(v4);
  sub_25F349AA8(v4, &qword_27FD67770);
  sub_25F3C397C();

  sub_25F3C398C();
  sub_25F3C39BC();
  v20 = sub_25F3C3CAC();
  v22 = v21;
  v23 = v31 & 1;
  v38 = v31 & 1;
  v17 &= 1u;
  v37 = v17;
  v36 = v31 & 1;
  v35 = v17;
  v25 = v24 & 1;
  v34 = v24 & 1;
  v33 = 1;
  v26 = v32;
  *a1 = v9;
  *(a1 + 8) = v26;
  *(a1 + 16) = v23;
  *(a1 + 24) = v30;
  *(a1 + 32) = v13;
  *(a1 + 40) = v15;
  *(a1 + 48) = v17;
  *(a1 + 56) = v19;
  *(a1 + 64) = v20;
  *(a1 + 72) = v22;
  *(a1 + 80) = v24 & 1;
  *(a1 + 88) = v27;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  sub_25F375F10(v9, v26, v23);

  sub_25F375F10(v13, v15, v17);

  sub_25F375F10(v20, v22, v25);

  sub_25F375FA8(v20, v22, v25);

  sub_25F375FA8(v13, v15, v37);

  sub_25F375FA8(v9, v32, v38);
}

uint64_t sub_25F375AA4(uint64_t a1)
{
  v2 = sub_25F3C368C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25F3C389C();
}

uint64_t type metadata accessor for EnvironmentView()
{
  result = qword_27FD67788;
  if (!qword_27FD67788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F375BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67770);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_25F355568(a1, &v11 - v8, &qword_27FD67770);
  return a5(v9);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25F375C74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25F375CBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_25F375D34()
{
  sub_25F375DB8();
  if (v0 <= 0x3F)
  {
    sub_25F375E10();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25F375DB8()
{
  if (!qword_27FD67798)
  {
    sub_25F3C368C();
    v0 = sub_25F3C369C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD67798);
    }
  }
}

void sub_25F375E10()
{
  if (!qword_27FD677A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD67770);
    v0 = sub_25F3C369C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD677A0);
    }
  }
}

unint64_t sub_25F375EBC()
{
  result = qword_27FD677D0;
  if (!qword_27FD677D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD677D0);
  }

  return result;
}

uint64_t sub_25F375F10(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25F375F20(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_25F375F10(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_25F375F64(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_25F375FA8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_25F375FA8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_25F375FB8()
{
  result = qword_27FD677E0;
  if (!qword_27FD677E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD677E0);
  }

  return result;
}

uint64_t sub_25F37600C(uint64_t a1)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67770);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  sub_25F355568(a1, &v13 - v7, &qword_27FD67770);
  v9 = sub_25F3C3AFC();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    sub_25F355568(v8, v6, &qword_27FD67770);
    v11 = (*(v10 + 88))(v6, v9);
    if (v11 == *MEMORY[0x277CE0558])
    {
      v2 = 0x746361706D6F63;
    }

    else if (v11 == *MEMORY[0x277CE0560])
    {
      v2 = 0x72616C75676572;
    }

    else
    {
      (*(v10 + 8))(v6, v9);
    }
  }

  sub_25F349AA8(v8, &qword_27FD67770);
  return v2;
}

uint64_t sub_25F3761F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67770);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F376268()
{
  result = qword_27FD67800;
  if (!qword_27FD67800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD67808);
    sub_25F34A598(&qword_27FD67810, &qword_27FD67818);
    sub_25F34A598(&qword_27FD67820, &qword_27FD67828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67800);
  }

  return result;
}

uint64_t sub_25F376354()
{
  type metadata accessor for UVJITAgent();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD678B8);
  result = swift_allocObject();
  *(result + 64) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(v0 + 16) = result;
  qword_27FD6D360 = v0;
  return result;
}

uint64_t sub_25F3763C4(uint64_t a1)
{
  v76 = a1;
  v1 = sub_25F3C1F6C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v71 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v72 = &v67 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v73 = &v67 - v8;
  MEMORY[0x28223BE20](v7);
  v77 = &v67 - v9;
  v10 = sub_25F3C354C();
  v11 = *(v10 - 8);
  v74 = v10;
  v75 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v67 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v67 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v67 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v67 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v67 - v27;
  v29 = [objc_opt_self() processInfo];
  v30 = sub_25F3C42EC();

  if ((v30 & 1) == 0)
  {
    v77 = v26;
    v68 = v23;
    v69 = v14;
    v70 = v20;
    v42 = *(v2 + 16);
    v43 = v72;
    v44 = v76;
    v42(v72);
    v45 = (*(v2 + 88))(v43, v1);
    if (v45 == *MEMORY[0x277D7E960])
    {
      sub_25F3C352C();
      v46 = sub_25F3C353C();
      v47 = sub_25F3C42FC();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_25F342000, v46, v47, "JIT linker connection terminated", v48, 2u);
        MEMORY[0x25F8DC6C0](v48, -1, -1);
      }

      (*(v75 + 8))(v17, v74);
      exit(124);
    }

    if (v45 == *MEMORY[0x277D7E948])
    {
      sub_25F3C352C();
      v49 = sub_25F3C353C();
      v50 = sub_25F3C431C();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_25F342000, v49, v50, "JIT linker connection terminated due to bad command", v51, 2u);
        MEMORY[0x25F8DC6C0](v51, -1, -1);
      }

      (*(v75 + 8))(v77, v74);
      exit(121);
    }

    if (v45 == *MEMORY[0x277D7E958])
    {
      sub_25F3C352C();
      v52 = sub_25F3C353C();
      v53 = sub_25F3C42FC();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_25F342000, v52, v53, "JIT linker connection terminated due to remote disconnect", v54, 2u);
        MEMORY[0x25F8DC6C0](v54, -1, -1);
      }

      (*(v75 + 8))(v70, v74);
      exit(123);
    }

    if (v45 == *MEMORY[0x277D7E950])
    {
      sub_25F3C352C();
      v55 = sub_25F3C353C();
      v56 = sub_25F3C431C();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_25F342000, v55, v56, "JIT linker connection terminated due to failed setup", v57, 2u);
        MEMORY[0x25F8DC6C0](v57, -1, -1);
      }

      (*(v75 + 8))(v68, v74);
      exit(122);
    }

    sub_25F3C352C();
    (v42)(v71, v44, v1);
    v58 = sub_25F3C353C();
    v59 = sub_25F3C42FC();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v78 = v77;
      *v60 = 136446210;
      v61 = v71;
      (v42)(v73, v71, v1);
      v62 = sub_25F3C404C();
      v64 = v63;
      (*(v2 + 8))(v61, v1);
      v65 = sub_25F369EE8(v62, v64, &v78);

      *(v60 + 4) = v65;
      _os_log_impl(&dword_25F342000, v58, v59, "JIT linker connection terminated for unknown reason: %{public}s", v60, 0xCu);
      v66 = v77;
      __swift_destroy_boxed_opaque_existential_0Tm(v77);
      MEMORY[0x25F8DC6C0](v66, -1, -1);
      MEMORY[0x25F8DC6C0](v60, -1, -1);
    }

    else
    {

      (*(v2 + 8))(v71, v1);
    }

    (*(v75 + 8))(v69, v74);
    exit(200);
  }

  sub_25F3C352C();
  v31 = *(v2 + 16);
  v31(v77, v76, v1);
  v32 = sub_25F3C353C();
  v33 = sub_25F3C431C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v78 = v76;
    *v34 = 136446210;
    v35 = v77;
    v31(v73, v77, v1);
    v36 = sub_25F3C404C();
    v38 = v37;
    (*(v2 + 8))(v35, v1);
    v39 = sub_25F369EE8(v36, v38, &v78);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_25F342000, v32, v33, "JIT linker connection terminated but will keep agent alive. (termination result: %{public}s)", v34, 0xCu);
    v40 = v76;
    __swift_destroy_boxed_opaque_existential_0Tm(v76);
    MEMORY[0x25F8DC6C0](v40, -1, -1);
    MEMORY[0x25F8DC6C0](v34, -1, -1);
  }

  else
  {

    (*(v2 + 8))(v77, v1);
  }

  return (*(v75 + 8))(v28, v74);
}

uint64_t sub_25F376C44(uint64_t *a1, unsigned int *a2)
{
  v4 = *a2;
  v5 = *(a2 + 5);
  sub_25F37AB88(*a1, a1[1], a1[2], a1[3]);
  *a1 = v4;
  v6 = *(a2 + 2);
  *(a1 + 3) = *(a2 + 6);
  *(a1 + 1) = v6;
  a1[5] = v5;
  v7 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = v7;
  sub_25F37ABD0(&v11, v9);
  return sub_25F37ABD0(&v10, v9);
}

uint64_t sub_25F376CDC()
{
  v1 = sub_25F3C354C();
  v72 = *(v1 - 8);
  v73 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v68 = &v65 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v67 = &v65 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v69 = &v65 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v65 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v65 - v14;
  v16 = sub_25F3C325C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *(v0 + 16);

  sub_25F3C326C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD678A8);
  sub_25F37AB34(&qword_27FD678B0, &qword_27FD678A8);
  sub_25F3C31DC();
  (*(v17 + 8))(v19, v16);

  if (v75[3] == 1)
  {
    sub_25F3C352C();
    v61 = sub_25F3C353C();
    v62 = sub_25F3C431C();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v75[0] = v64;
      *v63 = 136315138;
      *(v63 + 4) = sub_25F369EE8(0xD000000000000014, 0x800000025F3CBC30, v75);
      _os_log_impl(&dword_25F342000, v61, v62, "%s No user entry point config provided.", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v64);
      MEMORY[0x25F8DC6C0](v64, -1, -1);
      MEMORY[0x25F8DC6C0](v63, -1, -1);
    }

    (*(v72 + 8))(v4, v73);
    goto LABEL_29;
  }

  v20 = v75[1];
  v22 = v75[4];
  v21 = v75[5];
  v71 = v75[0];
  v23 = dlsym(0xFFFFFFFFFFFFFFFELL, "__debug_blank_executor_run_user_entry_point");
  if (v23)
  {
    v24 = v23;
    sub_25F3C352C();
    v25 = sub_25F3C353C();
    v26 = sub_25F3C433C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v70 = v21;
      v29 = v28;
      v75[0] = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_25F369EE8(0xD000000000000014, 0x800000025F3CBC30, v75);
      *(v27 + 12) = 2082;
      *(v27 + 14) = sub_25F369EE8(0xD00000000000002BLL, 0x800000025F3CBC80, v75);
      _os_log_impl(&dword_25F342000, v25, v26, "%s Invoking executor entry point, %{public}s.", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8DC6C0](v29, -1, -1);
      MEMORY[0x25F8DC6C0](v27, -1, -1);
    }

    (*(v72 + 8))(v15, v73);
    v30 = v24(v71, v20);
    goto LABEL_25;
  }

  v65 = v20;
  v70 = v21;
  sub_25F3C352C();
  v31 = sub_25F3C353C();
  v32 = sub_25F3C431C();
  v33 = os_log_type_enabled(v31, v32);
  v34 = v73;
  if (v33)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v75[0] = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_25F369EE8(0xD00000000000002BLL, 0x800000025F3CBC80, v75);
    _os_log_impl(&dword_25F342000, v31, v32, "Unable to find entry point trampoline '%s', falling back.", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    MEMORY[0x25F8DC6C0](v36, -1, -1);
    MEMORY[0x25F8DC6C0](v35, -1, -1);
  }

  v66 = *(v72 + 8);
  v66(v13, v34);
  v37 = dlsym(0xFFFFFFFFFFFFFFFELL, "__previews_blank_executor_run_user_entry_point");
  if (!v37)
  {
    v44 = v67;
    sub_25F3C352C();
    v45 = sub_25F3C353C();
    v46 = sub_25F3C431C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v75[0] = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_25F369EE8(0xD00000000000002ELL, 0x800000025F3CBCB0, v75);
      _os_log_impl(&dword_25F342000, v45, v46, "Unable to find entry point trampoline '%s', falling back.", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      MEMORY[0x25F8DC6C0](v48, -1, -1);
      MEMORY[0x25F8DC6C0](v47, -1, -1);
    }

    v66(v44, v34);
    if (v70)
    {
      v49 = v22;
    }

    else
    {
      v49 = 1852399981;
    }

    if (v70)
    {
      v50 = v70;
    }

    else
    {
      v50 = 0xE400000000000000;
    }

    v51 = sub_25F3C405C();

    v52 = dlsym(0xFFFFFFFFFFFFFFFELL, (v51 + 32));

    if (v52)
    {
      v53 = v68;
      sub_25F3C352C();

      v54 = sub_25F3C353C();
      v55 = sub_25F3C433C();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v75[0] = v57;
        *v56 = 136315394;
        *(v56 + 4) = sub_25F369EE8(0xD000000000000014, 0x800000025F3CBC30, v75);
        *(v56 + 12) = 2082;
        v58 = sub_25F369EE8(v49, v50, v75);

        *(v56 + 14) = v58;
        _os_log_impl(&dword_25F342000, v54, v55, "%s Invoking executor entry point, %{public}s.", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8DC6C0](v57, -1, -1);
        MEMORY[0x25F8DC6C0](v56, -1, -1);

        v59 = v68;
      }

      else
      {

        v59 = v53;
      }

      v66(v59, v73);
      v30 = v52(v71, v65);
      goto LABEL_25;
    }

    while (1)
    {
LABEL_29:
      sub_25F3C44FC();
      __break(1u);
    }
  }

  v38 = v37;
  v39 = v69;
  sub_25F3C352C();
  v40 = sub_25F3C353C();
  v41 = sub_25F3C433C();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v75[0] = v43;
    *v42 = 136315394;
    *(v42 + 4) = sub_25F369EE8(0xD000000000000014, 0x800000025F3CBC30, v75);
    *(v42 + 12) = 2082;
    *(v42 + 14) = sub_25F369EE8(0xD00000000000002ELL, 0x800000025F3CBCB0, v75);
    _os_log_impl(&dword_25F342000, v40, v41, "%s Invoking executor entry point, %{public}s.", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8DC6C0](v43, -1, -1);
    MEMORY[0x25F8DC6C0](v42, -1, -1);
  }

  v66(v39, v34);
  v30 = v38(v71, v65);
LABEL_25:

  return v30;
}

uint64_t __previewsInjectionJITLinkEntrypoint(argc:argv:previewsDylibPath:previewsDylibEntryPointName:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v53 = a4;
  v51 = a2;
  v50 = a1;
  v4 = sub_25F3C354C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v47 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v47 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v47 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v47 - v18;
  sub_25F3C352C();
  v20 = sub_25F3C353C();
  v21 = sub_25F3C42FC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_25F342000, v20, v21, "__previews_injection_jit_link_entrypoint start", v22, 2u);
    MEMORY[0x25F8DC6C0](v22, -1, -1);
  }

  v23 = *(v5 + 8);
  v23(v19, v4);
  v24 = [objc_opt_self() processInfo];
  v25 = [v24 environment];

  v26 = sub_25F3C3F7C();
  if (!*(v26 + 16))
  {
  }

  sub_25F35C378(0xD000000000000013, 0x800000025F3CB810);
  v28 = v27;

  if (v28)
  {
    sub_25F3C352C();
    v30 = sub_25F3C353C();
    v31 = sub_25F3C430C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_25F342000, v30, v31, "Previews JIT link environment variable present.", v32, 2u);
      MEMORY[0x25F8DC6C0](v32, -1, -1);
    }

    v23(v17, v4);
    if (qword_27FD66ED8 != -1)
    {
      swift_once();
    }

    v49 = qword_27FD6D360;
    if (v52)
    {
      v33 = sub_25F3C408C();
      v52 = v34;
    }

    else
    {
      v33 = 0;
      v52 = 0;
    }

    if (v53)
    {
      v48 = sub_25F3C408C();
      v53 = v35;
    }

    else
    {
      v48 = 0;
      v53 = 0;
    }

    sub_25F3C352C();
    v36 = sub_25F3C353C();
    v37 = sub_25F3C430C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_25F342000, v36, v37, "Received debug dylib entry point config", v38, 2u);
      MEMORY[0x25F8DC6C0](v38, -1, -1);
    }

    v39 = (v23)(v14, v4);
    v47 = &v47;
    v54 = v50;
    v55 = v51;
    v56 = v33;
    v57 = v52;
    v58 = v48;
    v59 = v53;
    v40 = *(v49 + 16);
    MEMORY[0x28223BE20](v39);
    *(&v47 - 2) = &v54;
    os_unfair_lock_lock((v40 + 64));
    sub_25F379EEC((v40 + 16));
    os_unfair_lock_unlock((v40 + 64));

    sub_25F35FDC8();
    sub_25F3C352C();
    v41 = sub_25F3C353C();
    v42 = sub_25F3C430C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_25F342000, v41, v42, "__previews_injection_jit_link_entrypoint JIT connection received.", v43, 2u);
      MEMORY[0x25F8DC6C0](v43, -1, -1);
    }

    v23(v11, v4);
    sub_25F34AA40();
    sub_25F3C1F8C();
    sub_25F3C1F7C();
    sub_25F3C352C();
    v44 = sub_25F3C353C();
    v45 = sub_25F3C430C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_25F342000, v44, v45, "__previews_injection_jit_link_entrypoint JIT program returned.", v46, 2u);
      MEMORY[0x25F8DC6C0](v46, -1, -1);
    }

    v23(v8, v4);
    exit(-1);
  }

  return result;
}

Swift::Int32 __swiftcall __previewsInjectionRunUserEntryPoint()()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C352C();
  v4 = sub_25F3C353C();
  v5 = sub_25F3C430C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_25F342000, v4, v5, "__previews_injection_run_user_entrypoint called", v6, 2u);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  if (qword_27FD66ED8 != -1)
  {
    swift_once();
  }

  v7 = sub_25F376CDC();
  exit(v7);
}

uint64_t __previewsInjectionPerformFirstJITLink(argc:argv:)(unsigned int a1, uint64_t *a2)
{
  v4 = sub_25F3C354C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C352C();
  v8 = sub_25F3C353C();
  v9 = sub_25F3C430C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_25F342000, v8, v9, "__previews_injection_perform_first_jit_link called", v10, 2u);
    MEMORY[0x25F8DC6C0](v10, -1, -1);
  }

  result = (*(v5 + 8))(v7, v4);
  if ((a1 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (a1)
  {
    v12 = a1;
    v13 = MEMORY[0x277D84F90];
    v14 = a2;
    while (a2)
    {
      result = *v14;
      if (!*v14)
      {
        goto LABEL_18;
      }

      v15 = sub_25F3C408C();
      v17 = v16;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25F37A1CC(0, *(v13 + 16) + 1, 1, v13);
        v13 = result;
      }

      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_25F37A1CC((v18 > 1), v19 + 1, 1, v13);
        v13 = result;
      }

      *(v13 + 16) = v19 + 1;
      v20 = v13 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      ++v14;
      if (!--v12)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_17;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_15:
  sub_25F34B354(v13);

  return 0;
}

uint64_t sub_25F3780E0(uint64_t a1)
{
  *&v65 = a1;
  v2 = sub_25F3C403C();
  MEMORY[0x28223BE20](v2 - 8);
  v59[1] = v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_25F3C354C();
  *&v64 = *(v67 - 8);
  v4 = MEMORY[0x28223BE20](v67);
  v61 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v60 = v59 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = v59 - v8;
  v10 = [objc_opt_self() processInfo];
  v11 = [v10 environment];

  v12 = sub_25F3C3F7C();
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 64);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  v18 = 0x4952505F444C5944;
  if (!v15)
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        v66 = 0;
        goto LABEL_12;
      }

      v15 = *(v12 + 64 + 8 * v19);
      ++v17;
      if (v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  while (1)
  {
    v19 = v17;
LABEL_8:
    v1 = *(*(v12 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v15)))));

    if (sub_25F3C40AC())
    {
      break;
    }

    v15 &= v15 - 1;

    v17 = v19;
    if (!v15)
    {
      goto LABEL_5;
    }
  }

  v66 = 1;
LABEL_12:

  v21 = *(v65 + 16);
  if (v21)
  {
    v63 = 0x800000025F3CBC10;
    v22 = (v64 + 8);
    v23 = (v65 + 40);
    *(&v24 + 1) = 2;
    v65 = xmmword_25F3C6CC0;
    v62 = 0xD000000000000017;
    *&v24 = 136446210;
    v64 = v24;
    while (1)
    {
      v18 = *(v23 - 1);
      v12 = *v23;
      if (v66)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67890);
        v25 = swift_allocObject();
        *(v25 + 16) = v65;
        v70 = 0;
        v71 = 0xE000000000000000;

        sub_25F3C445C();

        v70 = v62;
        v71 = v63;
        MEMORY[0x25F8DB8E0](v18, v12);
        MEMORY[0x25F8DB8E0](0x5F444C5452202C22, 0xEF2E2E2E29574F4ELL);
        v26 = v70;
        v27 = v71;
        *(v25 + 56) = MEMORY[0x277D837D0];
        *(v25 + 32) = v26;
        *(v25 + 40) = v27;
        sub_25F37AAE0();
        sub_25F3C462C();
      }

      else
      {
      }

      sub_25F3C352C();

      v28 = sub_25F3C353C();
      v29 = sub_25F3C430C();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v70 = v31;
        *v30 = v64;
        *(v30 + 4) = sub_25F369EE8(v18, v12, &v70);
        _os_log_impl(&dword_25F342000, v28, v29, "Agent: calling dlopen(%{public}s, RTLD_NOW)...", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        MEMORY[0x25F8DC6C0](v31, -1, -1);
        MEMORY[0x25F8DC6C0](v30, -1, -1);
      }

      v1 = *v22;
      (*v22)(v9, v67);
      v32 = sub_25F3C405C();
      v33 = dlopen((v32 + 32), 2);

      if (!v33)
      {
        break;
      }

      if (!_dyld_is_pseudodylib())
      {
        sub_25F3C352C();

        v35 = sub_25F3C353C();
        v36 = sub_25F3C431C();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v70 = v38;
          *v37 = v64;
          *(v37 + 4) = sub_25F369EE8(v18, v12, &v70);
          _os_log_impl(&dword_25F342000, v35, v36, "Expected %{public}s to be a pseudodylib but it was not.", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v38);
          MEMORY[0x25F8DC6C0](v38, -1, -1);
          MEMORY[0x25F8DC6C0](v37, -1, -1);
        }

        v1(v60, v67);
        if (v66)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67890);
          v39 = swift_allocObject();
          *(v39 + 16) = v65;
          v70 = 0;
          v71 = 0xE000000000000000;
          sub_25F3C445C();

          v70 = 0x6465746365707845;
          v71 = 0xE900000000000020;
          MEMORY[0x25F8DB8E0](v18, v12);
          MEMORY[0x25F8DB8E0](0xD000000000000024, 0x800000025F3CBBE0);
          v40 = v70;
          v41 = v71;
          *(v39 + 56) = MEMORY[0x277D837D0];
          *(v39 + 32) = v40;
          *(v39 + 40) = v41;
          sub_25F37AAE0();

          sub_25F3C462C();
        }

        v70 = 0;
        v71 = 0xE000000000000000;
        sub_25F3C445C();

        v70 = 0x6465746365707845;
        v71 = 0xE900000000000020;
        MEMORY[0x25F8DB8E0](v18, v12);
        MEMORY[0x25F8DB8E0](0xD000000000000024, 0x800000025F3CBBE0);
        goto LABEL_50;
      }

      v23 += 2;
      if (!--v21)
      {
        return result;
      }
    }

LABEL_25:
    if (dlerror())
    {
      sub_25F3C401C();
      v63 = sub_25F3C400C();
      *&v64 = v34;
    }

    else
    {
      v63 = 0;
      *&v64 = 0;
    }

    sub_25F3C352C();

    v42 = sub_25F3C353C();
    v43 = sub_25F3C431C();

    v44 = v43;
    if (os_log_type_enabled(v42, v43))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v70 = v46;
      *v45 = 136446466;
      *(v45 + 4) = sub_25F369EE8(v18, v12, &v70);
      *(v45 + 12) = 2082;
      if (v64)
      {
        v47 = v63;
      }

      else
      {
        v47 = 0;
      }

      if (v64)
      {
        v48 = v64;
      }

      else
      {
        v48 = 0xE000000000000000;
      }

      v49 = sub_25F369EE8(v47, v48, &v70);

      *(v45 + 14) = v49;
      _os_log_impl(&dword_25F342000, v42, v44, "Agent: Failed linking pseudodylib %{public}s %{public}s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8DC6C0](v46, -1, -1);
      MEMORY[0x25F8DC6C0](v45, -1, -1);
    }

    v1(v61, v67);
    if (v66)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67890);
      v50 = swift_allocObject();
      *(v50 + 16) = v65;
      v70 = 0;
      v71 = 0xE000000000000000;
      sub_25F3C445C();

      v70 = 0xD000000000000022;
      v71 = 0x800000025F3CBBB0;
      MEMORY[0x25F8DB8E0](v18, v12);
      v51 = v70;
      v52 = v71;
      *(v50 + 56) = MEMORY[0x277D837D0];
      *(v50 + 32) = v51;
      *(v50 + 40) = v52;
      sub_25F37AAE0();

      sub_25F3C462C();

      if (v64)
      {
        v53 = swift_allocObject();
        *(v53 + 16) = v65;
        v68 = 0x203A746E656741;
        v69 = 0xE700000000000000;
        v54 = v64;

        MEMORY[0x25F8DB8E0](v63, v54);

        v56 = v68;
        v55 = v69;
        *(v53 + 56) = MEMORY[0x277D837D0];
        *(v53 + 32) = v56;
        *(v53 + 40) = v55;

        sub_25F3C462C();
      }
    }

    v57 = 0xE000000000000000;
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_25F3C445C();

    v70 = 0x6C2064656C696146;
    v71 = 0xEF20676E696B6E69;
    MEMORY[0x25F8DB8E0](v18, v12);
    MEMORY[0x25F8DB8E0](8238, 0xE200000000000000);
    if (v64)
    {
      v58 = v63;
    }

    else
    {
      v58 = 0;
    }

    if (v64)
    {
      v57 = v64;
    }

    MEMORY[0x25F8DB8E0](v58, v57);

LABEL_50:
    result = sub_25F3C44FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_25F378BF8()
{
  v0 = sub_25F3C359C();
  v1 = sub_25F3C405C();
  fputs((v1 + 32), v0);
}

uint64_t __previewsInjectionGetDebugPseudodylibSwiftEntrySectionData()()
{
  v0 = sub_25F3C325C();
  v41 = *(v0 - 8);
  v42 = v0;
  MEMORY[0x28223BE20](v0);
  v40 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_25F3C3ECC();
  v2 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v4 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_25F3C3EEC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  v12 = sub_25F3C354C();
  v13 = *(v12 - 8);
  v43 = v12;
  v44 = v13;
  v14 = MEMORY[0x28223BE20](v12);
  v37 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v39 = &v37 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - v18;
  sub_25F3C352C();
  v20 = sub_25F3C353C();
  v21 = sub_25F3C430C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_25F342000, v20, v21, "__previews_injection_get_debug_dodylib_swift_entry_section_data called", v22, 2u);
    MEMORY[0x25F8DC6C0](v22, -1, -1);
  }

  v23 = *(v44 + 8);
  v44 += 8;
  v23(v19, v43);
  if (qword_27FD66EE8 != -1)
  {
    swift_once();
  }

  sub_25F3C3EDC();
  *v4 = 1;
  v24 = v38;
  (*(v2 + 104))(v4, *MEMORY[0x277D85188], v38);
  MEMORY[0x25F8DB760](v9, v4);
  (*(v2 + 8))(v4, v24);
  v25 = *(v6 + 8);
  v25(v9, v5);
  LOBYTE(v24) = sub_25F3C434C();
  v25(v11, v5);
  if (v24)
  {
    sub_25F3C352C();
    v33 = sub_25F3C353C();
    v34 = sub_25F3C431C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_25F342000, v33, v34, "Timed out waiting for swift entry section registration.", v35, 2u);
      MEMORY[0x25F8DC6C0](v35, -1, -1);
    }

    v23(v37, v43);
  }

  else
  {
    if (qword_27FD66EE0 != -1)
    {
      swift_once();
    }

    v47 = qword_27FD67830;

    v26 = v40;
    sub_25F3C326C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67840);
    sub_25F37AB34(&qword_27FD67848, &qword_27FD67840);
    sub_25F3C31CC();
    (*(v41 + 8))(v26, v42);

    v27 = v45;
    v28 = v39;
    sub_25F3C352C();
    v29 = sub_25F3C353C();
    v30 = sub_25F3C430C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      *(v31 + 4) = v27;
      _os_log_impl(&dword_25F342000, v29, v30, "Received Swift entry point: %lx)", v31, 0xCu);
      MEMORY[0x25F8DC6C0](v31, -1, -1);
    }

    v23(v28, v43);
    if (v27)
    {
      return v27;
    }

    v45 = 0;
    v46 = 0xE000000000000000;
    sub_25F3C445C();

    v45 = 0xD00000000000002FLL;
    v46 = 0x800000025F3CB960;
    v47 = 0;
    v36 = sub_25F3C455C();
    MEMORY[0x25F8DB8E0](v36);
  }

  result = sub_25F3C44FC();
  __break(1u);
  return result;
}

uint64_t sub_25F379378@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 8))
  {
    result = sub_25F3C44FC();
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

uint64_t __previewsInjectionRegisterSwiftExtensionEntrySeciont(argc:argv:)(int a1, void *a2)
{
  v46 = a1;
  v3 = sub_25F3C325C();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_25F3C312C();
  v5 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F3C354C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v44 = &v43 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v43 = &v43 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - v19;
  sub_25F3C352C();
  v21 = sub_25F3C353C();
  v22 = sub_25F3C430C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = v9;
    v24 = v8;
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_25F342000, v21, v22, "__previews_injection_register_swift_extension_entry_section called", v25, 2u);
    v26 = v25;
    v8 = v24;
    v9 = v23;
    MEMORY[0x25F8DC6C0](v26, -1, -1);
  }

  v27 = *(v9 + 8);
  v27(v20, v8);
  if (v46 < 1 || !a2)
  {
    sub_25F3C352C();
    v37 = sub_25F3C353C();
    v38 = sub_25F3C431C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_25F342000, v37, v38, "No data passed to swift entry registration function.", v39, 2u);
      MEMORY[0x25F8DC6C0](v39, -1, -1);
    }

    v27(v44, v8);
    goto LABEL_19;
  }

  if (!*a2)
  {
    sub_25F3C352C();
    v40 = sub_25F3C353C();
    v41 = sub_25F3C431C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_25F342000, v40, v41, "Could not dereference swift entry pointer string argument.", v42, 2u);
      MEMORY[0x25F8DC6C0](v42, -1, -1);
    }

    v27(v43, v8);
LABEL_19:
    result = sub_25F3C44FC();
    __break(1u);
    return result;
  }

  sub_25F3C408C();

  sub_25F3C310C();

  v28 = sub_25F3C311C();
  (*(v5 + 8))(v7, v47);
  sub_25F3C352C();
  v29 = sub_25F3C353C();
  v30 = sub_25F3C430C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = v8;
    v32 = swift_slowAlloc();
    *v32 = 134349056;
    *(v32 + 4) = v28;
    _os_log_impl(&dword_25F342000, v29, v30, "Swift entry pointer section received: %{public}llx", v32, 0xCu);
    v33 = v32;
    v8 = v31;
    MEMORY[0x25F8DC6C0](v33, -1, -1);
  }

  v27(v18, v8);
  if (qword_27FD66EE0 != -1)
  {
    swift_once();
  }

  v51 = qword_27FD67830;

  v34 = v48;
  v35 = sub_25F3C326C();
  MEMORY[0x28223BE20](v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67840);
  sub_25F37AB34(&qword_27FD67848, &qword_27FD67840);
  sub_25F3C31CC();
  (*(v49 + 8))(v34, v50);

  if (qword_27FD66EE8 != -1)
  {
    swift_once();
  }

  sub_25F3C436C();
  return 0;
}

uint64_t sub_25F379CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3C354C();
  result = MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 1)
  {
    *a1 = a2;
    *(a1 + 8) = 0;
  }

  else
  {
    v13 = v6;
    v15 = result;
    v9 = v8;
    sub_25F3C352C();
    v14 = v9;
    v10 = sub_25F3C353C();
    v11 = sub_25F3C431C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_25F342000, v10, v11, "Swift extension entry section already registered.", v12, 2u);
      MEMORY[0x25F8DC6C0](v12, -1, -1);
    }

    (*(v13 + 8))(v14, v15);
    result = sub_25F3C44FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_25F379E78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67888);
  result = sub_25F3C34FC();
  qword_27FD67830 = result;
  return result;
}

dispatch_semaphore_t sub_25F379EC8()
{
  result = dispatch_semaphore_create(0);
  qword_27FD67838 = result;
  return result;
}

void *sub_25F379F08(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD678C8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD678D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F37A078(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67860);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_25F37A1CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD678A0);
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

size_t sub_25F37A364(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
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

char *sub_25F37A554(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

void *sub_25F37A650(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_25F37A6B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_25F37A70C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_25F37A77C(uint64_t a1)
{
  v2 = sub_25F3C354C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    __break(1u);
  }

  else
  {
    sub_25F3C352C();
    v13 = sub_25F3C353C();
    v14 = sub_25F3C42FC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_25F342000, v13, v14, "Agent asked to activate JIT XPC endpoint. Waiting for stub executor to be invoked.", v15, 2u);
      MEMORY[0x25F8DC6C0](v15, -1, -1);
    }

    v16 = *(v3 + 8);
    v16(v11, v2);
    v17 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithListenerEndpoint_];
    sub_25F3C352C();
    v18 = sub_25F3C353C();
    v19 = sub_25F3C430C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_25F342000, v18, v19, "Creating XOJIT executor from connection", v20, 2u);
      MEMORY[0x25F8DC6C0](v20, -1, -1);
    }

    v16(v9, v2);
    v21 = [v17 _xpcConnection];
    sub_25F3C1FAC();
    swift_allocObject();
    sub_25F3C1F5C();
    sub_25F3C352C();
    v22 = sub_25F3C353C();
    v23 = sub_25F3C42FC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_25F342000, v22, v23, "Calling XOJIT executor start()", v24, 2u);
      MEMORY[0x25F8DC6C0](v24, -1, -1);
    }

    v16(v6, v2);
    sub_25F3C1F9C();
    sub_25F35FB90();
  }

  return result;
}

unint64_t sub_25F37AAE0()
{
  result = qword_27FD67898;
  if (!qword_27FD67898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67898);
  }

  return result;
}