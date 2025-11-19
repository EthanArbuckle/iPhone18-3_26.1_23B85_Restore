unint64_t sub_1C047AAE0()
{
  v1 = v0;
  result = (*(*v0 + 184))();
  if (result > 0x21 || ((1 << result) & 0x327000000) == 0)
  {
    sub_1C047ABF8(1);
    v4 = *(v0[15] + 16);
    result = sub_1C04F6490();
    if (v6 == 5)
    {
      sub_1C047ACAC();
      v5 = (*(*v1 + 488))();
      sub_1C047AE18(v5 & 1);
    }
  }

  return result;
}

uint64_t sub_1C047ABF8(char a1)
{
  v3 = *(v1 + 96);

  sub_1C047AC48(a1);
}

void sub_1C047AC48(char a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3);
  *(v1 + 16) = a1;

  os_unfair_lock_unlock(v3);
}

uint64_t sub_1C047ACAC()
{
  OUTLINED_FUNCTION_141();
  swift_beginAccess();
  v1 = *(v0 + 88);

  v2 = sub_1C047AD00();

  return v2;
}

uint64_t sub_1C047AD00()
{
  OUTLINED_FUNCTION_22_5();
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v0);
  return v2;
}

uint64_t OUTLINED_FUNCTION_21()
{
  *(v4 - 144) = v0;

  return sub_1C049FB48(v3, v2, 0xD00000000000001BLL, v1 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_45()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_21_4@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

void sub_1C047AE18(char a1)
{
  v2 = v1;
  v4 = sub_1C04F6200();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v42 - v15;
  v17 = sub_1C04F5340();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  if ((a1 & 1) == 0)
  {
    if (qword_1EDE42870 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    v26 = sub_1C04D1C14();

    if (!v26)
    {
      if (qword_1EDE44480 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      v40 = sub_1C04F6400();
      __swift_project_value_buffer(v40, qword_1EDE44DB0);
      v28 = sub_1C04F63E0();
      v41 = sub_1C04F6A20();
      if (!OUTLINED_FUNCTION_19_1(v41))
      {
        goto LABEL_20;
      }

      v32 = OUTLINED_FUNCTION_25_0();
      *v32 = 0;
      v33 = "Device hasn't completed setup, skipping warmup";
      goto LABEL_19;
    }
  }

  sub_1C047B774();
  sub_1C04F5330();

  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1C04CBB84(v16, &qword_1EBE0CE60, &unk_1C04F9130);
    if (qword_1EDE44480 != -1)
    {
      OUTLINED_FUNCTION_0_11();
    }

    v27 = sub_1C04F6400();
    __swift_project_value_buffer(v27, qword_1EDE44DB0);
    v28 = sub_1C04F63E0();
    v29 = sub_1C04F6A20();
    if (!OUTLINED_FUNCTION_19_1(v29))
    {
      goto LABEL_20;
    }

    v32 = OUTLINED_FUNCTION_25_0();
    *v32 = 0;
    v33 = "Could construct warmup url";
LABEL_19:
    OUTLINED_FUNCTION_13_5(&dword_1C0479000, v30, v31, v33);
    MEMORY[0x1C68DCEB0](v32, -1, -1);
LABEL_20:

    return;
  }

  (*(v20 + 32))(v25, v16, v17);
  if (qword_1EDE44480 != -1)
  {
    OUTLINED_FUNCTION_0_11();
  }

  v34 = sub_1C04F6400();
  __swift_project_value_buffer(v34, qword_1EDE44DB0);
  v35 = sub_1C04F63E0();
  v36 = sub_1C04F6A10();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_25_0();
    *v37 = 0;
    _os_log_impl(&dword_1C0479000, v35, v36, "Warming up connection if needed", v37, 2u);
    MEMORY[0x1C68DCEB0](v37, -1, -1);
  }

  v38 = *(v2 + OBJC_IVAR____TtC10PegasusKit10GRPCClient_sharedSession);
  sub_1C04F61D0();
  v39 = sub_1C047BB00();
  sub_1C047BBD0(v12, v25, v39 & 1, 0, 0, 0, 0);
  (*(v7 + 8))(v12, v4);
  (*(v20 + 8))(v25, v17);
}

uint64_t OUTLINED_FUNCTION_225()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_8()
{
  v2 = v0[59];
  result = v0[60];
  v4 = v0[57];
  v3 = v0[58];
  v6 = v0[55];
  v5 = v0[56];
  v8 = v0[51];
  v7 = v0[52];
  v9 = v0[48];
  v10 = v0[45];
  v11 = v0[42];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_10()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_14()
{

  return sub_1C04F6C40();
}

uint64_t OUTLINED_FUNCTION_0_17()
{
  v4 = *(v1 - 280);
  v2 = *(v0 + 16);
  return v1 - 128;
}

double OUTLINED_FUNCTION_0_18(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_21()
{
  v3 = v0[52];
  v2 = v0[53];
  v5 = v0[48];
  v4 = v0[49];
  v6 = v0[47];
  v7 = v0[44];
  v9 = v0[40];
  v8 = v0[41];
  v10 = v0[36];
  v11 = v0[37];
}

uint64_t OUTLINED_FUNCTION_0_22()
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v29 = (v27 << 10) | (16 * __clz(__rbit64(v28)));
  v30 = (*(a27 + 48) + v29);
  v32 = *v30;
  v31 = v30[1];
  v33 = (*(a27 + 56) + v29);
  v35 = *v33;
  v34 = v33[1];
}

uint64_t OUTLINED_FUNCTION_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_7(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 176);
  v4 = *(v2 + 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_13()
{

  return swift_once();
}

uint64_t sub_1C047B774()
{
  OUTLINED_FUNCTION_9_5();
  v1 = *(v0 + 24);

  sub_1C047B9BC();

  return OUTLINED_FUNCTION_12_4();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_9@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;
  v5 = v1[50];
  v4 = v1[51];
  v6 = v1[49];
  v7 = v1[31];
  v8 = v1[27];

  return sub_1C04F54A0();
}

uint64_t OUTLINED_FUNCTION_150()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_1()
{
  sub_1C04A1208((v0 - 128), (v0 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_13()
{

  JUMPOUT(0x1C68DCEB0);
}

uint64_t OUTLINED_FUNCTION_9_3()
{

  return sub_1C049FB48(v0, v1, 0x6567612D72657375, 0xEA0000000000746ELL);
}

uint64_t OUTLINED_FUNCTION_9_5()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_9_8()
{
  v3 = v0[54];
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[42];
  v7 = v0[33];
}

uint64_t sub_1C047B9BC()
{
  v1 = v0[4];
  os_unfair_lock_lock(v1);
  v3 = v0[2];
  v2 = v0[3];

  os_unfair_lock_unlock(v1);
  return v3;
}

uint64_t OUTLINED_FUNCTION_25(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v25 = v24[31];
  v24[55] = result;
  v24[22] = result;
  v24[23] = a24;
  return result;
}

void OUTLINED_FUNCTION_10_0()
{

  JUMPOUT(0x1C68DCEB0);
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_25_1()
{
  v1 = *(v0 - 248);
  v2 = *(v0 - 288);
  v3 = *(v0 - 296);
}

uint64_t OUTLINED_FUNCTION_25_4()
{
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[19];
}

uint64_t OUTLINED_FUNCTION_25_6()
{

  return swift_slowAlloc();
}

uint64_t sub_1C047BAC8(uint64_t *a1)
{
  OUTLINED_FUNCTION_24_0(*a1);
  v1 = sub_1C047BBA0();

  return v1 & 1;
}

uint64_t OUTLINED_FUNCTION_24_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);
}

uint64_t OUTLINED_FUNCTION_24_3()
{
  v2 = *(v0 + 184);
  v3 = *(*(v0 + 120) + 16);
}

uint64_t sub_1C047BBA0()
{
  OUTLINED_FUNCTION_22_5();
  v2 = *(v1 + 16);
  os_unfair_lock_unlock(v0);
  return v2;
}

uint64_t sub_1C047BBD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47 = a6;
  v48 = a7;
  v45 = a4;
  v46 = a5;
  v43 = a3;
  v8 = sub_1C04F65E0();
  v9 = OUTLINED_FUNCTION_0(v8);
  v52 = v10;
  v53 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v42[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1C04F6610();
  v15 = OUTLINED_FUNCTION_0(v14);
  v49 = v16;
  v50 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v42[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_1C04F5340();
  v22 = OUTLINED_FUNCTION_0(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v42[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDE44040 != -1)
  {
    swift_once();
  }

  v44 = qword_1EDE44D88;
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v24 + 16))(&v42[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v21);
  v29 = (*(v24 + 80) + 24) & ~*(v24 + 80);
  v30 = v29 + v26;
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  (*(v24 + 32))(v31 + v29, v27, v21);
  *(v31 + v30) = v43 & 1;
  v32 = v31 + (v30 & 0xFFFFFFFFFFFFFFF8);
  v34 = v45;
  v33 = v46;
  *(v32 + 8) = v45;
  *(v32 + 16) = v33;
  v35 = (v31 + (((v30 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v37 = v47;
  v36 = v48;
  *v35 = v47;
  v35[1] = v36;
  v59 = sub_1C047C258;
  v60 = v31;
  OUTLINED_FUNCTION_1_10();
  v56 = 1107296256;
  v57 = sub_1C047C214;
  v58 = &block_descriptor_37;
  v38 = _Block_copy(aBlock);

  sub_1C047BFEC(v34);
  sub_1C047BFEC(v37);
  sub_1C04F65F0();
  v54 = MEMORY[0x1E69E7CC0];
  sub_1C047C15C(qword_1EDE44180, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D8F8, &qword_1C04FAA18);
  sub_1C047C1A4(&qword_1EDE44178, &qword_1EBE0D8F8, &qword_1C04FAA18);
  v39 = v51;
  v40 = v53;
  sub_1C04F6BC0();
  MEMORY[0x1C68DC350](0, v20, v39, v38);
  _Block_release(v38);
  (*(v52 + 8))(v39, v40);
  (*(v49 + 8))(v20, v50);
}

uint64_t sub_1C047BFEC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C047BFFC()
{
  MEMORY[0x1C68DCF50](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C047C034()
{
  v1 = sub_1C04F5340();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = (v4 + 24) & ~v4;
  v7 = (v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 31) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);

  (*(v3 + 8))(v0 + v6, v1);
  if (*(v0 + v7 + 8))
  {
    v10 = *(v0 + v7 + 16);
  }

  if (*(v0 + v8))
  {
    v11 = *(v0 + v8 + 8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v8 + 16, v4 | 7);
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

uint64_t sub_1C047C15C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C047C1A4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1C047C214(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1C047C258()
{
  v1 = sub_1C04F5340();
  OUTLINED_FUNCTION_66(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = ((v7 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  v10 = *(v0 + v7);
  v11 = v0 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  v14 = *(v0 + v8);
  v15 = *(v0 + v8 + 8);

  sub_1C047C31C(v9, v0 + v6, v10, v12, v13, v14, v15);
}

void OUTLINED_FUNCTION_105_0()
{

  JUMPOUT(0x1C68DC0D0);
}

void sub_1C047C31C(uint64_t a1, uint64_t a2, int a3, void (*a4)(_BYTE *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v135 = a6;
  v136 = a7;
  v130 = a5;
  v134 = a4;
  v133 = a3;
  v8 = sub_1C04F5230();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v140 = &v121[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1C04F5340();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v131 = &v121[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v121[-v17];
  v19 = sub_1C04F5460();
  v139 = *(v19 - 8);
  v20 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v138 = &v121[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D000, &qword_1C04FAA20);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v129 = &v121[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v132 = &v121[-v27];
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v121[-v28];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v128 = a2;
    v137 = sub_1C04F52E0();
    v141 = v32;
    if (!v32)
    {
      if (qword_1EDE440E0 != -1)
      {
        swift_once();
      }

      v37 = sub_1C04F6400();
      __swift_project_value_buffer(v37, qword_1EDE44D90);
      v38 = v31;
      v39 = sub_1C04F63E0();
      v40 = sub_1C04F6A20();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        aBlock[0] = v42;
        *v41 = 136315138;
        v43 = sub_1C047D6CC();
        v45 = sub_1C047D76C(v43, v44, aBlock);

        *(v41 + 4) = v45;
        v46 = "Throttling warmup for session: %s couldn't infer hostname";
LABEL_23:
        v57 = v40;
        v58 = v39;
        v59 = v41;
        v60 = 12;
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    v126 = v9;
    if (qword_1EDE44020 != -1)
    {
      swift_once();
    }

    v34 = sub_1C047D240(v33);

    sub_1C047D284(v34, v29);

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v19);
    v36 = v13;
    v127 = v19;
    if (EnumTagSinglePayload)
    {
      sub_1C04CBB84(v29, &qword_1EBE0D000, &qword_1C04FAA20);
    }

    else
    {
      v48 = v138;
      v47 = v139;
      (*(v139 + 16))(v138, v29, v19);
      sub_1C04CBB84(v29, &qword_1EBE0D000, &qword_1C04FAA20);
      sub_1C04F5430();
      v50 = v49;
      (*(v47 + 8))(v48, v19);
      v51 = fabs(v50);
      if (v51 < 180.0)
      {

        if (qword_1EDE440E0 != -1)
        {
          swift_once();
        }

        v52 = sub_1C04F6400();
        __swift_project_value_buffer(v52, qword_1EDE44D90);
        v38 = v31;
        v39 = sub_1C04F63E0();
        v53 = sub_1C04F6A40();

        if (os_log_type_enabled(v39, v53))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          aBlock[0] = v42;
          *v41 = 136315394;
          v54 = sub_1C047D6CC();
          v56 = sub_1C047D76C(v54, v55, aBlock);

          *(v41 + 4) = v56;
          *(v41 + 12) = 2048;
          *(v41 + 14) = v51;
          v46 = "Throttling warmup for session: %s attempted %f seconds ago";
          v57 = v53;
          v58 = v39;
          v59 = v41;
          v60 = 22;
LABEL_24:
          _os_log_impl(&dword_1C0479000, v58, v57, v46, v59, v60);
          __swift_destroy_boxed_opaque_existential_1(v42);
          MEMORY[0x1C68DCEB0](v42, -1, -1);
          MEMORY[0x1C68DCEB0](v41, -1, -1);

          return;
        }

LABEL_25:

        return;
      }
    }

    if (qword_1EDE44038 != -1)
    {
      swift_once();
    }

    v61 = qword_1EDE44D80;
    v62 = *(qword_1EDE44D80 + 16);

    Lock.lock()();
    swift_beginAccess();
    if (*(v61 + 24))
    {
      Lock.unlock()();

      if (qword_1EDE440E0 != -1)
      {
        swift_once();
      }

      v63 = sub_1C04F6400();
      __swift_project_value_buffer(v63, qword_1EDE44D90);
      v38 = v31;
      v39 = sub_1C04F63E0();
      v40 = sub_1C04F6A40();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        aBlock[0] = v42;
        *v41 = 136315138;
        v64 = sub_1C047D6CC();
        v66 = sub_1C047D76C(v64, v65, aBlock);

        *(v41 + 4) = v66;
        v46 = "Throttling warmup for session: %s: already in progress";
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    v125 = v8;
    *(v61 + 24) = 1;
    Lock.unlock()();

    if (qword_1EDE440E0 != -1)
    {
      swift_once();
    }

    v67 = sub_1C04F6400();
    v68 = __swift_project_value_buffer(v67, qword_1EDE44D90);
    v69 = *(v13 + 16);
    v70 = v128;
    v69(v18, v128, v12);
    v71 = v31;
    v124 = v68;
    v72 = sub_1C04F63E0();
    v73 = sub_1C04F6A10();

    v74 = os_log_type_enabled(v72, v73);
    v123 = v71;
    if (v74)
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      aBlock[0] = v76;
      *v75 = 136315394;
      v122 = v73;
      v77 = sub_1C047D6CC();
      v79 = sub_1C047D76C(v77, v78, aBlock);

      *(v75 + 4) = v79;
      *(v75 + 12) = 2080;
      v80 = sub_1C04F52D0();
      v82 = v81;
      (*(v36 + 8))(v18, v12);
      v83 = sub_1C047D76C(v80, v82, aBlock);

      *(v75 + 14) = v83;
      _os_log_impl(&dword_1C0479000, v72, v122, "Warming up session %s to %s", v75, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C68DCEB0](v76, -1, -1);
      v84 = v75;
      v70 = v128;
      MEMORY[0x1C68DCEB0](v84, -1, -1);
    }

    else
    {

      (*(v36 + 8))(v18, v12);
    }

    v85 = v134;
    v69(v131, v70, v12);
    v86 = v140;
    sub_1C04F51F0();
    sub_1C04F51B0();
    sub_1C04F51E0();
    if (v85)
    {

      v85(v86);
      sub_1C047D1E0(v85);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D900, &qword_1C04FAA28);
    swift_allocObject();
    v87 = sub_1C047D92C(0);
    v88 = sub_1C04F51C0();
    v89 = swift_allocObject();
    v90 = v123;
    swift_unknownObjectWeakInit();
    v91 = swift_allocObject();
    v91[2] = v87;
    v91[3] = v89;
    v93 = v135;
    v92 = v136;
    v91[4] = v135;
    v91[5] = v92;
    aBlock[4] = sub_1C047DFD8;
    aBlock[5] = v91;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C047DCE8;
    aBlock[3] = &block_descriptor_44;
    v94 = _Block_copy(aBlock);

    sub_1C047BFEC(v93);

    v95 = [v90 dataTaskWithRequest:v88 completionHandler:v94];
    _Block_release(v94);

    v96 = v95;
    sub_1C047D9FC();

    v97 = v132;
    sub_1C04F5450();
    v98 = v127;
    __swift_storeEnumTagSinglePayload(v97, 0, 1, v127);

    v100 = sub_1C047D240(v99);
    if (__swift_getEnumTagSinglePayload(v97, 1, v98) == 1)
    {
      sub_1C04CBB84(v97, &qword_1EBE0D000, &qword_1C04FAA20);
      v101 = sub_1C047D36C();
      if (v102)
      {
        v103 = v101;
        swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v100;
        v104 = *(v100 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF18, &qword_1C04FAA30);
        v86 = v140;
        sub_1C04F6CC0();
        v100 = aBlock[0];
        v105 = *(*(aBlock[0] + 48) + 16 * v103 + 8);

        v106 = v129;
        (*(v139 + 32))(v129, *(v100 + 56) + *(v139 + 72) * v103, v127);
        sub_1C04F6CE0();
        v107 = 0;
      }

      else
      {
        v107 = 1;
        v106 = v129;
      }

      __swift_storeEnumTagSinglePayload(v106, v107, 1, v127);

      sub_1C04CBB84(v106, &qword_1EBE0D000, &qword_1C04FAA20);
    }

    else
    {
      (*(v139 + 32))(v138, v97, v127);
      swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v100;
      sub_1C047DB10();

      v100 = aBlock[0];
    }

    sub_1C047DCE0(v100);

    v108 = v90;
    v109 = sub_1C04F63E0();
    v110 = sub_1C04F6A40();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      aBlock[0] = v112;
      *v111 = 136315138;
      v113 = sub_1C047D6CC();
      v115 = sub_1C047D76C(v113, v114, aBlock);

      *(v111 + 4) = v115;
      _os_log_impl(&dword_1C0479000, v109, v110, "Kicked off connection warmup for session %s", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v112);
      MEMORY[0x1C68DCEB0](v112, -1, -1);
      v116 = v111;
      v86 = v140;
      MEMORY[0x1C68DCEB0](v116, -1, -1);
    }

    v117 = v125;
    v118 = *MEMORY[0x1E696A9C8];
    v119 = v96;
    LODWORD(v120) = v118;
    [v119 setPriority_];
    [v119 set:1 preconnect:?];

    [v119 resume];

    (*(v126 + 8))(v86, v117);
  }
}

uint64_t sub_1C047D1E0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C047D1F0()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[4])
  {
    v3 = v0[5];
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C047D24C()
{
  OUTLINED_FUNCTION_22_5();
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v0);
  return v2;
}

uint64_t sub_1C047D29C@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  if (*(a1 + 16) && (v6 = sub_1C047D36C(), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a1 + 56);
    v10 = a2(0);
    OUTLINED_FUNCTION_152(v10);
    (*(v11 + 16))(a3, v9 + *(v11 + 72) * v8, v10);
    v12 = a3;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v14 = a2(0);
    v12 = a3;
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
}

unint64_t sub_1C047D36C()
{
  OUTLINED_FUNCTION_312();
  v1 = *(v0 + 40);
  sub_1C04F6E60();
  sub_1C04F67E0();
  sub_1C04F6E80();
  v2 = OUTLINED_FUNCTION_293();

  return sub_1C047D3E8(v2, v3, v4);
}

unint64_t sub_1C047D3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1C04F6D80() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_6_2(uint64_t a1, unint64_t a2)
{
  v5 = v2[48];
  v16 = v2[51];
  v17 = v2[47];
  v18 = v2[46];
  *(v3 - 120) = v2[45];
  v14 = v2[44];
  v15 = v2[43];
  v6 = v2[41];
  *(v3 - 112) = v2[42];
  *(v3 - 104) = v6;
  v8 = v2[39];
  v7 = v2[40];
  v9 = v2[38];
  *(v3 - 96) = v2[37];
  v10 = v2[33];
  v11 = v2[34];
  v12 = v2[32];

  return sub_1C04A1144(a1, a2);
}

uint64_t OUTLINED_FUNCTION_14()
{

  return swift_once();
}

void OUTLINED_FUNCTION_6_5()
{

  JUMPOUT(0x1C68DCEB0);
}

uint64_t OUTLINED_FUNCTION_6_6(uint64_t a1)
{
  *(v2 + 552) = a1;
  v5 = v1[9];
  v4 = v1[10];
  *(v2 + 16) = v1[8];
  *(v2 + 32) = v5;
  *(v2 + 48) = v4;
  *(v2 + 144) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 112) = 0u;

  return sub_1C04C68D4(v2 + 16, v2 + 64);
}

void OUTLINED_FUNCTION_6_7()
{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v9 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  v8 = v0[13];
}

uint64_t OUTLINED_FUNCTION_7_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_6_9()
{
  v3 = *(v2 - 88);
  __swift_project_boxed_opaque_existential_1((v2 - 120), v1);
  v4 = *(v3 + 24);
  return v0;
}

uint64_t OUTLINED_FUNCTION_6_11(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 160);
  v4 = *(v2 + 128);
  return result;
}

uint64_t sub_1C047D6CC()
{
  result = sub_1C04AE604(v0, &selRef_sessionDescription);
  if (!v2)
  {
    return 0x6E776F6E6B6E75;
  }

  return result;
}

uint64_t sub_1C047D728(uint64_t (*a1)(void))
{
  result = a1(*(v1 + 16));
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C047D76C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_312();

  OUTLINED_FUNCTION_171();
  v10 = v13[0];
  if (sub_1C047D820(v7, v8, v9, 1, v4, v3))
  {
    OUTLINED_FUNCTION_244();
    ObjectType = swift_getObjectType();
    v13[0] = v5;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v13[0] = v4;
    v13[1] = v3;
  }

  v11 = *a3;
  if (*a3)
  {
    sub_1C047D9A0(v13, *a3);
    *a3 = v11 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  return v10;
}

unint64_t sub_1C047D820(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1C049EA14(a5, a6);
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
    result = sub_1C04F6C70();
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

uint64_t sub_1C047D92C(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D908, &qword_1C04FAA38);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;

  *(v1 + 24) = v3;
  return v1;
}

uint64_t sub_1C047D9A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1C047D9FC()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1C047DA64();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1C047DA64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1C047DAD8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1C047DB10()
{
  v4 = v1;
  v5 = OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_108(v5, v6);
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF18, &qword_1C04FAA30);
  OUTLINED_FUNCTION_224();
  if (sub_1C04F6CC0())
  {
    v12 = *v1;
    OUTLINED_FUNCTION_293();
    v13 = sub_1C047D36C();
    if ((v11 & 1) == (v14 & 1))
    {
      v10 = v13;
      goto LABEL_5;
    }

LABEL_13:
    result = sub_1C04F6DD0();
    __break(1u);
    return result;
  }

LABEL_5:
  v15 = *v4;
  if (v11)
  {
    v16 = v15[7];
    v17 = sub_1C04F5460();
    OUTLINED_FUNCTION_152(v17);
    v19 = *(v18 + 40);
    v20 = v16 + *(v18 + 72) * v10;
    OUTLINED_FUNCTION_314();

    __asm { BRAA            X3, X16 }
  }

  sub_1C04A104C(v10, v3, v2, v0, v15);
  OUTLINED_FUNCTION_314();
}

uint64_t OUTLINED_FUNCTION_113()
{
  v2 = v0[48];
  v3 = v0[45];
  v4 = v0[43];

  return sub_1C04F6400();
}

unint64_t OUTLINED_FUNCTION_248()
{
  v2 = *v0;

  return sub_1C047D36C();
}

void sub_1C047DC98()
{
  OUTLINED_FUNCTION_11_5();
  v3 = *(v1 + 16);
  *(v1 + 16) = v0;

  os_unfair_lock_unlock(v2);
}

uint64_t sub_1C047DCE8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = sub_1C04F53C0();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_1C047E0BC(v6, v11);
}

void sub_1C047DDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (qword_1EDE440E0 != -1)
    {
      swift_once();
    }

    v10 = sub_1C04F6400();
    __swift_project_value_buffer(v10, qword_1EDE44D90);
    v11 = v9;
    v12 = sub_1C04F63E0();
    v13 = sub_1C04F6A40();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      v16 = sub_1C047D6CC();
      v18 = sub_1C047D76C(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1C0479000, v12, v13, "warmup attempt complete for session %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C68DCEB0](v15, -1, -1);
      MEMORY[0x1C68DCEB0](v14, -1, -1);
    }

    if (a7)
    {

      v19 = sub_1C04E4258();
      if (v19)
      {
        v20 = v19;
        a7(v19);
      }

      sub_1C047D1E0(a7);
    }

    if (qword_1EDE44038 != -1)
    {
      swift_once();
    }

    sub_1C047DFE4(0);
  }

  sub_1C047E03C();
}

void sub_1C047DFE4(char a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  Lock.lock()();
  swift_beginAccess();
  *(v2 + 24) = a1;
  Lock.unlock()();
}

void sub_1C047E03C()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1C04E5CE8();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1C047E0BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C04A1144(a1, a2);
  }

  return a1;
}

uint64_t sub_1C047E0D0()
{
  sub_1C047E104();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1C047E104()
{
  MEMORY[0x1C68DCF50](v0 + 16);
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_1C047E140(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C047E48C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C047E4D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEB8, &qword_1C04F8628);
  OUTLINED_FUNCTION_152(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C047E560()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEE0, &qword_1C04F8640);
  OUTLINED_FUNCTION_152(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1C047E604()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C047E63C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEE8, &qword_1C04F8668);
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_1C04F60B0();
  OUTLINED_FUNCTION_0(v7);
  v9 = v8;
  v10 = (v4 + v6 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  OUTLINED_FUNCTION_6();

  return MEMORY[0x1EEE6BDD0](v13, v14, v15);
}

uint64_t sub_1C047E774()
{
  MEMORY[0x1C68DCF50](v0 + 16);
  OUTLINED_FUNCTION_6_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C047E7A8()
{
  v1 = sub_1C04F55B0();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v4 | 7);
}

uint64_t sub_1C047E878()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C047E8C4()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_7_5();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C047E950()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C047E988()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  if (*(v0 + 48))
  {
    v4 = *(v0 + 56);
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C047E9E8()
{
  v1 = sub_1C04F65C0();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);
  v7 = v0[2];

  v8 = v0[3];

  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  }

  v9 = (v4 + 72) & ~v4;
  (*(v3 + 8))(v0 + v9, v1);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v6, v4 | 7);
}

uint64_t sub_1C047EAE0()
{
  v1 = *(type metadata accessor for CancellableStoreKey() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = sub_1C04F54B0();
  OUTLINED_FUNCTION_152(v7);
  (*(v8 + 8))(v0 + v3);
  v9 = *(v0 + v4);

  if (*(v0 + v5))
  {
    v10 = *(v0 + v5 + 8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v2 | 7);
}

uint64_t sub_1C047EBE4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C047EC44()
{
  v1 = sub_1C04F5700();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = (v4 + 24) & ~v4;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v6, v1);
  if (*(v0 + v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v7));
  }

  v9 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v9);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 8, v4 | 7);
}

uint64_t sub_1C047ED28()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C047ED60()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C047EDA0()
{
  v1 = sub_1C04F5700();
  OUTLINED_FUNCTION_152(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  __swift_destroy_boxed_opaque_existential_1((v0 + v7));

  return MEMORY[0x1EEE6BDD0](v0, ((v7 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1C047EE64()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C047EED8()
{
  v1 = sub_1C04F5AF0();
  OUTLINED_FUNCTION_152(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1C047EF8C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C047EFC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1C04B73D8();
  *a2 = result;
  return result;
}

uint64_t sub_1C047F098()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_38_0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C047F0CC()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_6_3();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C047F144()
{
  v1 = sub_1C04F5E70();
  OUTLINED_FUNCTION_152(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C047F1D0()
{
  v1 = sub_1C04F5E70();
  OUTLINED_FUNCTION_152(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  v10 = *(v0 + v7 + 8);

  v11 = *(v0 + v7 + 32);

  return MEMORY[0x1EEE6BDD0](v0, ((v7 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1C047F2A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C047F2E0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C047F41C()
{
  v1 = sub_1C04F5790();
  OUTLINED_FUNCTION_152(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C047F4A8()
{
  v1 = sub_1C04F5790();
  OUTLINED_FUNCTION_152(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  v10 = *(v0 + v7 + 8);

  v11 = *(v0 + v7 + 32);

  return MEMORY[0x1EEE6BDD0](v0, ((v7 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1C047F578()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C047F5B8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C047F5F0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_44_0();
  *(v1 + 24) = v2;
  return OUTLINED_FUNCTION_12_5(v2);
}

uint64_t sub_1C047F614(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = OUTLINED_FUNCTION_44_0();
  v2[4] = v3;
  return OUTLINED_FUNCTION_12_5(v3);
}

uint64_t sub_1C047F670()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = OUTLINED_FUNCTION_3_12();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1C047F6B0()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_3_12();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C047F6E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = OUTLINED_FUNCTION_3_12();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1C047F718()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D5B8, &unk_1C04FA1B0);
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C047F7DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C04F54B0();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1C047F824(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C04F54B0();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1C047F958()
{
  v1 = sub_1C04F5CE0();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1C047FA24()
{
  v1 = sub_1C04F5CE0();
  OUTLINED_FUNCTION_152(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1C047FAD8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C047FB18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C047FC2C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D8C0, &qword_1C04FA8D8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1C047FC5C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D8C8, &qword_1C04FA8E0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1C047FCBC()
{
  v1 = sub_1C04F5230();
  OUTLINED_FUNCTION_1_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C047FD4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C047FD84()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t NetworkFeedbackGenerator.feedbackID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NetworkFeedbackGenerator.consumer.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void NetworkFeedbackGenerator.init(isBodyDataRedacted:consumer:)()
{
  OUTLINED_FUNCTION_7_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C04F54B0();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  sub_1C04F54A0();
  v17 = sub_1C04F5470();
  v19 = v18;
  (*(v11 + 8))(v16, v8);
  *v7 = v17;
  *(v7 + 8) = v19;
  *(v7 + 16) = v5;
  *(v7 + 24) = v3;
  *(v7 + 32) = v1;
  OUTLINED_FUNCTION_6();
}

void NetworkFeedbackGenerator.onRequest(url:headers:bodyData:payloadSize:requestId:)()
{
  OUTLINED_FUNCTION_7_0();
  v2 = v0;
  v59 = v3;
  v57 = v4;
  v69 = v5;
  v70 = v6;
  v64 = v7;
  v60 = v8;
  v61 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CAA0, &qword_1C04F7A40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v66 = &v57 - v12;
  v13 = sub_1C04F55B0();
  v14 = OUTLINED_FUNCTION_0(v13);
  v67 = v15;
  v68 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_0();
  v65 = v18 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v62 = OUTLINED_FUNCTION_3_0();
  v21 = OUTLINED_FUNCTION_0(v62);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v28 = v27 - v26;
  v63 = sub_1C04F5AC0();
  v29 = OUTLINED_FUNCTION_0(v63);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_0();
  v36 = v34 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v57 - v38;
  v41 = *v2;
  v40 = v2[1];
  v42 = *(v2 + 16);
  v43 = v2[3];
  v44 = v2[4];
  v58 = v43;

  sub_1C04F5AB0();
  mach_absolute_time();
  sub_1C04F59F0();
  OUTLINED_FUNCTION_5();
  sub_1C04F59D0();
  if ((v42 & 1) == 0)
  {
    v45 = OUTLINED_FUNCTION_5();
    sub_1C048087C(v45, v46);
    OUTLINED_FUNCTION_5();
    sub_1C04F5A80();
  }

  v47 = OUTLINED_FUNCTION_5();
  if (MEMORY[0x1C68DAC70](v47) < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1C04F5A20();
    if ((v59 & 1) == 0)
    {
      sub_1C04F5A40();
    }

    sub_1C04F5A50();
    if (v64)
    {

      sub_1C04F5A70();
    }

    v48 = v63;
    (*(v31 + 32))(v39, v36, v63);
    (*(v31 + 16))(v28, v39, v48);
    v49 = v62;
    (*(v23 + 104))(v28, *MEMORY[0x1E69BCB98], v62);
    sub_1C04F55A0();
    v50 = v66;
    (*(v23 + 32))(v66, v28, v49);
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v49);
    sub_1C04F5580();
    v52 = v67;
    v51 = v68;
    v53 = *(v67 + 16);
    v54 = v65;
    v55 = OUTLINED_FUNCTION_4_0();
    v56(v55);
    v58(v54);
    (*(v52 + 8))(v1, v51);
    (*(v31 + 8))(v39, v48);
    OUTLINED_FUNCTION_6();
  }
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

uint64_t sub_1C048087C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void NetworkFeedbackGenerator.onResponse(result:messageLength:httpURLResponse:contentSize:timingData:requestId:)()
{
  OUTLINED_FUNCTION_7_0();
  v59 = v2;
  v60 = v3;
  v56 = v4;
  v57 = v5;
  v54 = v6;
  v55 = v7;
  v52 = v8;
  v53 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CAA0, &qword_1C04F7A40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v50 - v12;
  v14 = sub_1C04F55B0();
  v15 = OUTLINED_FUNCTION_0(v14);
  v61 = v16;
  v62 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_0();
  v58 = v19 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_3_0();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  v31 = sub_1C04F5A10();
  v32 = OUTLINED_FUNCTION_0(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1();
  v39 = v38 - v37;
  v40 = *v0;
  v41 = v0[1];
  v42 = *(v0 + 16);
  v43 = v0[4];
  v51 = v0[3];
  v63 = v40;
  v64 = v41;
  v65 = v42;
  v66 = v51;
  v67 = v43;
  sub_1C0480BCC(v52, v53, v54, v55, v56, v59, v60, v39);
  (*(v34 + 16))(v30, v39, v31);
  (*(v25 + 104))(v30, *MEMORY[0x1E69BCB90], v22);
  sub_1C04F55A0();
  (*(v25 + 32))(v13, v30, v22);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v22);
  sub_1C04F5580();
  v45 = v61;
  v44 = v62;
  v46 = *(v61 + 16);
  v47 = v58;
  v48 = OUTLINED_FUNCTION_4_0();
  v49(v48);
  v51(v47);
  (*(v45 + 8))(v1, v44);
  (*(v34 + 8))(v39, v31);
  OUTLINED_FUNCTION_6();
}

void sub_1C0480BCC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void **p_cache@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v82 = a7;
  v78 = a6;
  v79 = a2;
  v80 = a4;
  v81 = a1;
  v85 = a8;
  v11 = sub_1C04F5D60();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C04F5A10();
  v83 = *(v16 - 8);
  v84 = v16;
  v17 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v8;
  v21 = v8[1];

  sub_1C04F5A00();
  mach_absolute_time();
  sub_1C04F59F0();
  sub_1C04F59D0();
  v86 = a3;
  v22 = [a3 statusCode];
  if (v22 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_84;
  }

  if (v22 > 0x7FFFFFFF)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    swift_once();
    goto LABEL_5;
  }

  v23 = sub_1C04F5940();
  (p_cache)(v23);
  sub_1C04F5D30();
  sub_1C04F5960();
  sub_1C04F5950();
  v24 = sub_1C04F5D50();
  v21 = *(v12 + 8);
  v21(v15, v11);
  p_cache = &OBJC_METACLASS____TtC10PegasusKit17ParsecdConnection.cache;
  if (v24)
  {
    goto LABEL_8;
  }

  if (qword_1EDE44480 != -1)
  {
    goto LABEL_85;
  }

LABEL_5:
  v25 = sub_1C04F6400();
  __swift_project_value_buffer(v25, qword_1EDE44DB0);
  v26 = sub_1C04F63E0();
  v27 = sub_1C04F6A20();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1C0479000, v26, v27, "RPC request did not reuse connection", v28, 2u);
    MEMORY[0x1C68DCEB0](v28, -1, -1);
  }

LABEL_8:
  sub_1C04F5950();
  v29 = sub_1C04F5D40();
  v21(v15, v11);
  if (v29 >= 0x65)
  {
    if (p_cache[144] != -1)
    {
      swift_once();
    }

    v30 = sub_1C04F6400();
    __swift_project_value_buffer(v30, qword_1EDE44DB0);
    v31 = v82;

    v32 = sub_1C04F63E0();
    v33 = sub_1C04F6A10();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = v31;
      v35 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *&v87 = v77;
      *v35 = 136446466;
      *(v35 + 4) = sub_1C047D76C(v78, v34, &v87);
      *(v35 + 12) = 2082;
      swift_beginAccess();
      sub_1C04F5950();
      swift_endAccess();
      sub_1C04821D4();
      v36 = sub_1C04F6380();
      v38 = v37;
      v21(v15, v11);
      v39 = sub_1C047D76C(v36, v38, &v87);

      *(v35 + 14) = v39;
      _os_log_impl(&dword_1C0479000, v32, v33, "Response Network Timing Data for request %{public}s: %{public}s", v35, 0x16u);
      v40 = v77;
      swift_arrayDestroy();
      MEMORY[0x1C68DCEB0](v40, -1, -1);
      MEMORY[0x1C68DCEB0](v35, -1, -1);
    }
  }

  v41 = sub_1C04F6740();
  v42 = v86;
  v43 = [v86 valueForHTTPHeaderField_];

  if (v43)
  {
    sub_1C04F6750();

    swift_beginAccess();
    sub_1C04F59C0();
    swift_endAccess();
  }

  if ([v42 statusCode] != 200)
  {
    swift_beginAccess();
    goto LABEL_38;
  }

  v44 = sub_1C04F6740();
  v45 = [v42 valueForHTTPHeaderField_];

  if (!v45)
  {
    goto LABEL_88;
  }

  v46 = sub_1C04F6750();
  v48 = v47;

  v49 = HIBYTE(v48) & 0xF;
  v50 = v46 & 0xFFFFFFFFFFFFLL;
  if ((v48 & 0x2000000000000000) != 0)
  {
    v51 = HIBYTE(v48) & 0xF;
  }

  else
  {
    v51 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (!v51)
  {
    goto LABEL_82;
  }

  if ((v48 & 0x1000000000000000) != 0)
  {
    LOBYTE(v87) = 0;

    v54 = sub_1C049EDC0(v46, v48, 10);
    v75 = v74;

    if (v75)
    {
      goto LABEL_82;
    }

LABEL_87:
    swift_beginAccess();
    sub_1C04F5980();
    swift_endAccess();
    if (!v54)
    {
LABEL_88:
      swift_beginAccess();
      sub_1C04F5990();
      sub_1C04F59A0();
      swift_endAccess();
      v76 = v81;
      sub_1C04820C0(v81, v90);
      if (v91)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CB40, &qword_1C04F7B88);
        if (swift_dynamicCast())
        {
          if (*(&v88 + 1))
          {
            sub_1C047E140(&v87, v90);
            __swift_project_boxed_opaque_existential_1(v90, v91);
            sub_1C04F5B40();
            swift_beginAccess();
            sub_1C04F59E0();
            swift_endAccess();
            __swift_destroy_boxed_opaque_existential_1(v90);
            goto LABEL_95;
          }
        }

        else
        {
          v89 = 0;
          v87 = 0u;
          v88 = 0u;
        }
      }

      else
      {
        sub_1C0482130(v90, &qword_1EBE0CB20, &unk_1C04F8B20);
        v87 = 0u;
        v88 = 0u;
        v89 = 0;
      }

      sub_1C0482130(&v87, &qword_1EBE0CB28, &qword_1C04F7B70);
LABEL_95:
      sub_1C04820C0(v76, v90);
      v59 = v83;
      v58 = v84;
      if (v91)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB38, &qword_1C04F7B80);
        if (swift_dynamicCast())
        {
          if (*(&v88 + 1))
          {
            sub_1C047E140(&v87, v90);
            __swift_project_boxed_opaque_existential_1(v90, v91);
            sub_1C04F5B30();
            swift_beginAccess();
            sub_1C04F59B0();
            swift_endAccess();
            __swift_destroy_boxed_opaque_existential_1(v90);
            goto LABEL_102;
          }
        }

        else
        {
          v89 = 0;
          v87 = 0u;
          v88 = 0u;
        }
      }

      else
      {
        sub_1C0482130(v90, &qword_1EBE0CB20, &unk_1C04F8B20);
        v87 = 0u;
        v88 = 0u;
        v89 = 0;
      }

      sub_1C0482130(&v87, &qword_1EBE0CB30, &qword_1C04F7B78);
      goto LABEL_102;
    }

LABEL_38:
    v59 = v83;
    v58 = v84;
LABEL_102:
    (*(v59 + 16))(v85, v19, v58);
    (*(v59 + 8))(v19, v58);
    return;
  }

  if ((v48 & 0x2000000000000000) == 0)
  {
    if ((v46 & 0x1000000000000000) != 0)
    {
      v52 = ((v48 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v52 = sub_1C04F6C70();
    }

    v53 = *v52;
    if (v53 == 43)
    {
      if (v50 >= 1)
      {
        v49 = v50 - 1;
        if (v50 != 1)
        {
          v54 = 0;
          if (v52)
          {
            v63 = v52 + 1;
            while (1)
            {
              v64 = *v63 - 48;
              if (v64 > 9)
              {
                goto LABEL_80;
              }

              v65 = 10 * v54;
              if ((v54 * 10) >> 64 != (10 * v54) >> 63)
              {
                goto LABEL_80;
              }

              v54 = v65 + v64;
              if (__OFADD__(v65, v64))
              {
                goto LABEL_80;
              }

              ++v63;
              if (!--v49)
              {
                goto LABEL_81;
              }
            }
          }

          goto LABEL_72;
        }

        goto LABEL_80;
      }

      goto LABEL_106;
    }

    if (v53 != 45)
    {
      if (v50)
      {
        v54 = 0;
        if (v52)
        {
          while (1)
          {
            v69 = *v52 - 48;
            if (v69 > 9)
            {
              goto LABEL_80;
            }

            v70 = 10 * v54;
            if ((v54 * 10) >> 64 != (10 * v54) >> 63)
            {
              goto LABEL_80;
            }

            v54 = v70 + v69;
            if (__OFADD__(v70, v69))
            {
              goto LABEL_80;
            }

            ++v52;
            if (!--v50)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_72;
      }

LABEL_80:
      v54 = 0;
      LOBYTE(v49) = 1;
LABEL_81:
      LOBYTE(v87) = v49;
      if (v49)
      {
LABEL_82:

        goto LABEL_88;
      }

      goto LABEL_87;
    }

    if (v50 >= 1)
    {
      v49 = v50 - 1;
      if (v50 != 1)
      {
        v54 = 0;
        if (v52)
        {
          v55 = v52 + 1;
          while (1)
          {
            v56 = *v55 - 48;
            if (v56 > 9)
            {
              goto LABEL_80;
            }

            v57 = 10 * v54;
            if ((v54 * 10) >> 64 != (10 * v54) >> 63)
            {
              goto LABEL_80;
            }

            v54 = v57 - v56;
            if (__OFSUB__(v57, v56))
            {
              goto LABEL_80;
            }

            ++v55;
            if (!--v49)
            {
              goto LABEL_81;
            }
          }
        }

LABEL_72:
        LOBYTE(v49) = 0;
        goto LABEL_81;
      }

      goto LABEL_80;
    }

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v90[0] = v46;
  v90[1] = v48 & 0xFFFFFFFFFFFFFFLL;
  if (v46 != 43)
  {
    if (v46 != 45)
    {
      if (v49)
      {
        v54 = 0;
        v71 = v90;
        while (1)
        {
          v72 = *v71 - 48;
          if (v72 > 9)
          {
            break;
          }

          v73 = 10 * v54;
          if ((v54 * 10) >> 64 != (10 * v54) >> 63)
          {
            break;
          }

          v54 = v73 + v72;
          if (__OFADD__(v73, v72))
          {
            break;
          }

          v71 = (v71 + 1);
          if (!--v49)
          {
            goto LABEL_81;
          }
        }
      }

      goto LABEL_80;
    }

    if (v49)
    {
      if (--v49)
      {
        v54 = 0;
        v60 = v90 + 1;
        while (1)
        {
          v61 = *v60 - 48;
          if (v61 > 9)
          {
            break;
          }

          v62 = 10 * v54;
          if ((v54 * 10) >> 64 != (10 * v54) >> 63)
          {
            break;
          }

          v54 = v62 - v61;
          if (__OFSUB__(v62, v61))
          {
            break;
          }

          ++v60;
          if (!--v49)
          {
            goto LABEL_81;
          }
        }
      }

      goto LABEL_80;
    }

    goto LABEL_105;
  }

  if (v49)
  {
    if (--v49)
    {
      v54 = 0;
      v66 = v90 + 1;
      while (1)
      {
        v67 = *v66 - 48;
        if (v67 > 9)
        {
          break;
        }

        v68 = 10 * v54;
        if ((v54 * 10) >> 64 != (10 * v54) >> 63)
        {
          break;
        }

        v54 = v68 + v67;
        if (__OFADD__(v68, v67))
        {
          break;
        }

        ++v66;
        if (!--v49)
        {
          goto LABEL_81;
        }
      }
    }

    goto LABEL_80;
  }

LABEL_107:
  __break(1u);
}

void NetworkFeedbackGenerator.onError(_:)()
{
  OUTLINED_FUNCTION_7_0();
  v43 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CAA0, &qword_1C04F7A40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = &v43 - v5;
  v6 = sub_1C04F55B0();
  v7 = OUTLINED_FUNCTION_0(v6);
  v46 = v8;
  v47 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v44 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_3_0();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  v23 = sub_1C04F5930();
  v24 = OUTLINED_FUNCTION_0(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  v31 = v30 - v29;
  v32 = v0[1];
  v33 = *(v0 + 16);
  v34 = v0[3];
  v35 = v0[4];
  v48 = *v0;
  v49 = v32;
  v50 = v33;
  v51 = v34;
  v52 = v35;
  sub_1C04819E8(v43);
  (*(v26 + 16))(v22, v31, v23);
  (*(v17 + 104))(v22, *MEMORY[0x1E69BCBA0], v14);
  sub_1C04F55A0();
  v36 = v45;
  (*(v17 + 32))(v45, v22, v14);
  __swift_storeEnumTagSinglePayload(v36, 0, 1, v14);
  sub_1C04F5580();
  v38 = v46;
  v37 = v47;
  v39 = *(v46 + 16);
  v40 = v44;
  v41 = OUTLINED_FUNCTION_4_0();
  v42(v41);
  v34(v40);
  (*(v38 + 8))(v1, v37);
  (*(v26 + 8))(v31, v23);
  OUTLINED_FUNCTION_6();
}

uint64_t sub_1C04819E8(char *a1)
{
  v3 = sub_1C04F5BB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v27 - v9;
  v11 = v1[1];
  v29 = *v1;
  sub_1C04F5BA0();
  sub_1C04F5920();
  v37 = a1;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  if (swift_dynamicCast())
  {
    v13 = DynamicType;
    v14 = v34;
    v28 = v10;
    v15 = v3;
    v16 = v35;
    v17 = v36;
    sub_1C04C971C(DynamicType, v34, v35, v36);
    v18 = v16;
    v3 = v15;
    v10 = v28;
    sub_1C0482080(v13, v14, v18, v17);
  }

  else
  {

    v37 = a1;
    v19 = a1;
    if (swift_dynamicCast())
    {
      v28 = a1;
      v20 = DynamicType;
      v21 = v34;
      v22 = v35;
      sub_1C04E32F0(DynamicType, v34, v35);
      v27[1] = v23;
      if (v22 == 1)
      {
        [v20 code];
        sub_1C0482070(v20, v21, 1);
      }

      else
      {
        sub_1C0482070(v20, v21, 0);
      }
    }

    else
    {

      v37 = a1;
      v24 = a1;
      if (!swift_dynamicCast())
      {

        swift_getErrorValue();
        sub_1C04F6E10();
        goto LABEL_10;
      }

      v25 = v32;
      DynamicType = 0;
      v34 = 0xE000000000000000;
      sub_1C04F6C40();
      MEMORY[0x1C68DC0D0](0xD000000000000012, 0x80000001C04FBBA0);
      v30 = v25;
      sub_1C04F6CB0();
    }
  }

LABEL_10:
  swift_getErrorValue();
  DynamicType = swift_getDynamicType();
  v34 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB18, &unk_1C04F7B60);
  sub_1C04F6790();
  sub_1C04F5B80();
  sub_1C04F5B90();
  sub_1C04F5B70();

  sub_1C04F5900();
  (*(v4 + 16))(v8, v10, v3);
  sub_1C04F5910();
  return (*(v4 + 8))(v10, v3);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C0481E1C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1C0481E5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

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

uint64_t sub_1C0481ECC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0481EEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C0481F4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0481F6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GZIPError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GZIPError(uint64_t result, int a2, int a3)
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

void sub_1C0482024(uint64_t a1, unint64_t *a2)
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

void sub_1C0482070(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1C0482080(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C04820C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB20, &unk_1C04F8B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0482130(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1C04821D4()
{
  result = qword_1EDE41E08;
  if (!qword_1EDE41E08)
  {
    sub_1C04F5D60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE41E08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return sub_1C04F5540();
}

uint64_t sub_1C0482278@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 type] - 1;
  if (v3 > 0xC)
  {
    v4 = MEMORY[0x1E69BCEF8];
  }

  else
  {
    v4 = qword_1E8117B18[v3];
  }

  v5 = *v4;
  v6 = sub_1C04F5BF0();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

uint64_t sub_1C0482318()
{
  v1 = sub_1C04F5460();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = [v0 timestamp];
  sub_1C04F5440();

  sub_1C04F5430();
  v12 = v11;
  result = (*(v4 + 8))(v9, v1);
  if (v12 >= 0.0)
  {
    return sub_1C04F6280();
  }

  v14 = fabs(v12);
  if (v14 >= 2147483650.0 || v14 < 2147483650.0)
  {
    return sub_1C04F62A0();
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall Apple_Parsec_Search_PegasusQueryContext.augment(withLocation:)(CLLocation withLocation)
{
  isa = withLocation.super.isa;
  v2 = sub_1C04F6290();
  v3 = OUTLINED_FUNCTION_2_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v6 = sub_1C04F5BF0();
  v7 = OUTLINED_FUNCTION_2_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = sub_1C04F5C50();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v14);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v24 - v22;
  sub_1C04F5C40();
  [(objc_class *)isa horizontalAccuracy];
  sub_1C04F5BD0();
  [(objc_class *)isa coordinate];
  sub_1C04F5C20();
  [(objc_class *)isa coordinate];
  sub_1C04F5C30();
  sub_1C0482278(v12);
  sub_1C04F5C00();
  sub_1C0482318();
  sub_1C04F5BE0();
  (*(v16 + 16))(v21, v23, v13);
  sub_1C04F54E0();
  (*(v16 + 8))(v23, v13);
}

uint64_t sub_1C0482664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  v7 = OUTLINED_FUNCTION_2_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = sub_1C04F54F0();
  (*(*(v12 - 8) + 16))(v11, a2, v12);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  sub_1C0482788(a1, v11, a3);
  sub_1C0482A3C(v11);
  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v12);
}

uint64_t sub_1C0482788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v29 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  v7 = OUTLINED_FUNCTION_2_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - v10;
  v12 = sub_1C04F54F0();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v13);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v26 - v21;
  sub_1C04829CC(a2, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1C0482A3C(v11);
    (*(v15 + 16))(v22, v3, v12);
    result = (*(v15 + 32))(v29, v22, v12);
  }

  else
  {
    v24 = *(v15 + 32);
    v24(v20, v11, v12);
    sub_1C04F54C0();
    if (v4)
    {
      return (*(v15 + 8))(v20, v12);
    }

    (*(v15 + 8))(v20, v12);
    result = (v24)(v29, v22, v12);
  }

  if (v27 != 13)
  {
    v25 = sub_1C04F54D0();
    sub_1C04F5C10();
    return v25(v28, 0);
  }

  return result;
}

uint64_t sub_1C04829CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0482A3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

const char *sub_1C0482AB0(uint64_t a1)
{
  result = "unknown";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "configuration";
      break;
    case 2:
      result = "parsecdSearch";
      break;
    case 3:
      result = "parsecdZeroKeyWord";
      break;
    case 4:
      result = "parsecdLookup";
      break;
    case 5:
      result = "parsecdFlight";
      break;
    case 6:
      result = "parsecdMoreResults";
      break;
    case 7:
      result = "parsecdCard";
      break;
    case 8:
      result = "parsecdWarm";
      break;
    case 9:
      result = "bagResourceDownload";
      break;
    case 10:
      result = "pegasusKitVisualSearch";
      break;
    case 11:
      result = "pegasusKitSiriPersonalization";
      break;
    case 12:
      result = "pegasusKitHashtagImages";
      break;
    case 13:
      result = "pegasusKitAssistant";
      break;
    case 14:
      result = "pegasusKitBagFetchXPC";
      break;
    case 15:
      result = "pegasusKitContextFetchXPC";
      break;
    case 16:
      result = "pegasusKitLookup";
      break;
    case 17:
      result = "pegasusKitSpotlightZKW";
      break;
    case 18:
      result = "pegasusKitEngagementSearch";
      break;
    case 19:
      result = "engagementCache";
      break;
    case 20:
      result = "topicCache";
      break;
    case 21:
      result = "pegasusKitIntelligencePlatform";
      break;
    case 22:
    case 36:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
      goto LABEL_90;
    case 23:
      result = "pegasusKitIntelligenceFlow";
      break;
    case 24:
      result = "pegasusKitSafariAssistantPrefetch";
      break;
    case 25:
      result = "pegasusKitSafariAssistantSummarize";
      break;
    case 26:
      result = "pegasusKitEncryptedVisualSearch";
      break;
    case 27:
      result = "pegasusKitSportsWatchFace";
      break;
    case 28:
      result = "pegasusKitLookupSearch";
      break;
    case 29:
      result = "pegasusKitEncryptedVisualSearchConfig";
      break;
    case 30:
      result = "pegasusKitSafariSearch";
      break;
    case 31:
      result = "pegasusKitCameraVisualSearch";
      break;
    case 32:
      result = "pegasusKitEncryptedPQAGeo";
      break;
    case 33:
      result = "pegasusKitEncryptedPQAGeoConfig";
      break;
    case 34:
      result = "pegasusKitEncryptedVisualSearchSupportedUsecases";
      break;
    case 35:
      result = "pegasusKitEncryptedPQAGeoSupportedUsecases";
      break;
    case 37:
      result = "pegasusKitFlightUtilities";
      break;
    case 38:
      result = "pegasusKitFlightUtilitiesSubscribe";
      break;
    case 39:
      result = "pegasusKitDeviceExpertSearch";
      break;
    case 50:
      result = "installedAppWhitelist";
      break;
    case 60:
      result = "assetDeliveryPreloadAsset";
      break;
    case 61:
      result = "assetDeliveryPrefilterPrefetch";
      break;
    case 62:
      result = "assetDeliveryGetPreloadedData";
      break;
    case 63:
      result = "assetDeliveryBloomFilter";
      break;
    case 65:
      result = "assetDeliveryRetrieveAsset";
      break;
    case 66:
      result = "assetDeliveryRedact";
      break;
    case 67:
      result = "assetDeliveryFeatureSupported";
      break;
    case 100:
      result = "contextFetchAMSTreatments";
      break;
    default:
      switch(a1)
      {
        case 200:
          result = "feedbackEnumerator";
          break;
        case 201:
          result = "feedbackFileCreation";
          break;
        case 202:
          result = "simpleFeedbackEnumerator";
          break;
        case 300:
          result = "aggregation";
          break;
        case 301:
          result = "uploadaggregates";
          break;
        case 400:
          result = "clientXPCConnection";
          break;
        case 401:
          result = "clientSessionComplete";
          break;
        case 500:
          result = "sbaPlugin";
          break;
        case 600:
          result = "parsecdCloudConnectionSubscribe";
          break;
        case 601:
          result = "parsecdCloudConnectionUnsubscribe";
          break;
        case 602:
          result = "parsecdCloudConnectionFetchLatestPush";
          break;
        case 700:
          result = "parseKeys";
          break;
        default:
LABEL_90:
          result = sub_1C04F6DB0();
          __break(1u);
          break;
      }

      break;
  }

  return result;
}

uint64_t sub_1C0482EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v10 = a5 & 1;
  *(v6 + qword_1EDE44718) = 0;
  *(v6 + qword_1EDE44DF8) = 0;
  v11 = v6 + qword_1EDE44DF0;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v6 + qword_1EDE44720) = 0;
  v12 = qword_1EDE44DE8;
  v13 = sub_1C04F6200();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v6 + v12, a3, v13);
  *v11 = a4;
  *(v11 + 8) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
  if (a5)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C04F7BB0;
    v16 = sub_1C04F61E0();
    v18 = v17;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1C0483A94();
    *(inited + 32) = v16;
    *(inited + 40) = v18;
  }

  else
  {
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_1C04F7BA0;
    v20 = sub_1C04F61E0();
    v22 = v21;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    v23 = sub_1C0483A94();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    v24 = MEMORY[0x1E69E7738];
    *(v19 + 96) = MEMORY[0x1E69E76D8];
    *(v19 + 104) = v24;
    *(v19 + 64) = v23;
    *(v19 + 72) = a4;
  }

  sub_1C04D85D0();
  v26 = v25;
  (*(v14 + 8))(a3, v13);
  return v26;
}

uint64_t sub_1C048310C()
{
  v1 = *(v0 + qword_1EDE44DF8);

  v2 = qword_1EDE44DE8;
  v3 = sub_1C04F6200();
  OUTLINED_FUNCTION_1_0(v3);
  v5 = *(v4 + 8);

  return v5(v0 + v2);
}

uint64_t sub_1C0483178()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    sub_1C0483574();
  }

  v1 = sub_1C04E84A0();
  v2 = *(v1 + qword_1EDE44DF8);

  v3 = qword_1EDE44DE8;
  v4 = sub_1C04F6200();
  OUTLINED_FUNCTION_1_0(v4);
  (*(v5 + 8))(v1 + v3);
  return v1;
}

uint64_t sub_1C04831F0()
{
  v0 = sub_1C0483178();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for ResourceAccessSpan()
{
  result = qword_1EDE44708;
  if (!qword_1EDE44708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C0483290()
{
  result = sub_1C04F6200();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C0483348()
{
  v1 = *(v0 + 96);
  sub_1C04F6A20();
  OUTLINED_FUNCTION_0_0();
  sub_1C04F6390();
  sub_1C04E85B8();
  sub_1C04F6A20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C04F7BB0;
  v19 = *(v0 + qword_1EDE44718);
  v3 = sub_1C04F6790();
  v5 = v4;
  v6 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1C0483A94();
  *(v2 + 64) = v7;
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  OUTLINED_FUNCTION_0_0();
  sub_1C04F6390();

  sub_1C04F6A20();
  v8 = OUTLINED_FUNCTION_2_2();
  *(v8 + 16) = xmmword_1C04F7BB0;
  v17 = *(v0 + qword_1EDE44DF0);
  v18 = *(v0 + qword_1EDE44DF0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC78, &qword_1C04F7CD0);
  v9 = sub_1C04F6790();
  *(v8 + 56) = v6;
  *(v8 + 64) = v7;
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  OUTLINED_FUNCTION_0_0();
  sub_1C04F6390();

  sub_1C04F6A20();
  v11 = OUTLINED_FUNCTION_2_2();
  v12 = *(v0 + qword_1EDE44DF8);
  *(v11 + 16) = xmmword_1C04F7BB0;
  v13 = v12 == 0;
  v14 = 7562617;
  if (v13)
  {
    v14 = 28526;
  }

  v15 = 0xE300000000000000;
  *(v11 + 56) = v6;
  *(v11 + 64) = v7;
  if (v13)
  {
    v15 = 0xE200000000000000;
  }

  *(v11 + 32) = v14;
  *(v11 + 40) = v15;
  OUTLINED_FUNCTION_0_0();
  sub_1C04F6390();

  sub_1C04F6A20();
  OUTLINED_FUNCTION_0_0();
  return sub_1C04F6390();
}

void sub_1C0483574()
{
  if ((v0[88] & 1) == 0)
  {
    v1 = v0;
    if (*&v0[qword_1EDE44DF8])
    {

      sub_1C04EAD44();
    }

    v2 = MEMORY[0x1E69E6158];
    if ((v0[qword_1EDE44720] & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC80, &qword_1C04F7CD8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C04F7BA0;
      *(inited + 32) = 0x726574706F6461;
      *(inited + 40) = 0xE700000000000000;
      sub_1C04F61F0();
      *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      *(inited + 56) = 0x656D6F6374756FLL;
      *(inited + 64) = 0xE700000000000000;
      *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      sub_1C0483AE8();
      v4 = sub_1C04F66F0();
      sub_1C04837D8(v4);
      v6 = v5;

      sub_1C04E9054(v6);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C04F7BB0;
    v12 = v0[qword_1EDE44718];
    v8 = sub_1C04F6790();
    v10 = v9;
    *(v7 + 56) = v2;
    *(v7 + 64) = sub_1C0483A94();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    sub_1C04E9BEC("outcome=%{signpost.description:attribute,public}s", 49, 2, v7);

    v11 = *(*&v1[*(*v1 + 152)] + 16);

    os_unfair_lock_lock(v11);
    if ((v1[88] & 1) == 0)
    {
      sub_1C04E9738();
    }

    os_unfair_lock_unlock(v11);
  }
}

void sub_1C04837D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC88, &unk_1C04F7CE0);
    v2 = sub_1C04F6D30();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v15 = v14;
    v16 = sub_1C047D36C();
    v17 = v16;
    if (v18)
    {
      v19 = (v2[6] + 16 * v16);
      v20 = v19[1];
      *v19 = v13;
      v19[1] = v12;

      v21 = v2[7];
      v22 = *(v21 + 8 * v17);
      *(v21 + 8 * v17) = v15;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
      v23 = (v2[6] + 16 * v16);
      *v23 = v13;
      v23[1] = v12;
      *(v2[7] + 8 * v16) = v15;
      v24 = v2[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_20;
      }

      v2[2] = v26;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

unint64_t sub_1C04839BC(uint64_t a1)
{
  *(a1 + 8) = sub_1C04839EC();
  result = sub_1C0483A40();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C04839EC()
{
  result = qword_1EDE446D0;
  if (!qword_1EDE446D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE446D0);
  }

  return result;
}

unint64_t sub_1C0483A40()
{
  result = qword_1EDE446C0;
  if (!qword_1EDE446C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE446C0);
  }

  return result;
}

unint64_t sub_1C0483A94()
{
  result = qword_1EDE44780;
  if (!qword_1EDE44780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE44780);
  }

  return result;
}

unint64_t sub_1C0483AE8()
{
  result = qword_1EDE44778;
  if (!qword_1EDE44778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE44778);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_2()
{

  return swift_allocObject();
}

void *BaseSiriSearchProxy.init()()
{
  OUTLINED_FUNCTION_5_0();
  *&v5 = v1;
  *(&v5 + 1) = v0;
  OUTLINED_FUNCTION_3_1();
  v6 = v2;
  v7 = v3;
  v8 = xmmword_1C04F80E0;
  return sub_1C0483BC8(&v5);
}

void *sub_1C0483BC8(_OWORD *a1)
{
  v2 = v1;
  v4 = sub_1C04F6240();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C04F6260();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  v2[8] = *a1;
  v2[9] = v14;
  v2[10] = a1[2];
  (*(v5 + 104))(v8, *MEMORY[0x1E69BDB08], v4);
  sub_1C04F6270();
  v15 = sub_1C04F6250();
  v17 = v16;
  (*(v10 + 8))(v13, v9);
  if (qword_1EDE44538 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDE44DC8;
  v19 = qword_1EDE44DC8;
  return sub_1C04B8AAC(v15, v17, 0, 0, 0xF000000000000000, v18);
}

void *_s10PegasusKit0A24ProxyForIntelligenceFlowC8endpointACSS_tcfc_0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_0();
  *(v2 + 128) = v6;
  *(v2 + 136) = v5;
  OUTLINED_FUNCTION_3_1();
  *(v2 + 144) = v7;
  *(v2 + 152) = v8;
  *(v2 + 160) = xmmword_1C04F80E0;
  if (qword_1EDE44538 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDE44DC8;
  v10 = qword_1EDE44DC8;

  return sub_1C04B979C(a1, a2, 0, v9);
}

uint64_t sub_1C0483EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = a4;
  v71 = a3;
  v68 = a2;
  v69 = a1;
  v4 = sub_1C04F5CB0();
  v5 = OUTLINED_FUNCTION_0(v4);
  v76 = v6;
  v77 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_1();
  v75 = v9;
  OUTLINED_FUNCTION_4_1();
  v10 = sub_1C04F5610();
  v11 = OUTLINED_FUNCTION_0(v10);
  v73 = v12;
  v74 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_1();
  v72 = v15;
  OUTLINED_FUNCTION_4_1();
  v70 = sub_1C04F54F0();
  v16 = OUTLINED_FUNCTION_0(v70);
  v67 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_1();
  v66 = v20;
  OUTLINED_FUNCTION_4_1();
  v21 = sub_1C04F5CA0();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  OUTLINED_FUNCTION_1_1();
  v64 = v23;
  OUTLINED_FUNCTION_4_1();
  v24 = sub_1C04F5650();
  v62 = OUTLINED_FUNCTION_0(v24);
  v63 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_2_0();
  v65 = v28 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v61 = &v60 - v31;
  OUTLINED_FUNCTION_4_1();
  v32 = sub_1C04F54B0();
  v33 = OUTLINED_FUNCTION_0(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v39 = &v60 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1C04F55F0();
  v60 = *(v40 - 8);
  v41 = v60;
  v42 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v60 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C04F56F0();
  sub_1C04F55E0();
  sub_1C04F54A0();
  sub_1C04F5470();
  (*(v35 + 8))(v39, v32);
  v45 = v40;
  v46 = v60;
  sub_1C04F55C0();

  sub_1C04F55D0();
  v47 = sub_1C04F56E0();
  v49 = v48;
  sub_1C04B2B20();
  v50 = *(*v49 + 16);
  sub_1C04B2BAC(v50);
  v51 = v41;
  v52 = v62;
  v53 = *v49;
  *(v53 + 16) = v50 + 1;
  v54 = v53 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v51 + 72) * v50;
  v55 = v61;
  (*(v46 + 16))(v54, v44, v45);
  v47(v79, 0);
  v56 = v63;
  sub_1C04F5640();
  sub_1C04F5C90();
  sub_1C04F5630();
  (*(v67 + 16))(v66, v71, v70);
  OUTLINED_FUNCTION_6_0();
  sub_1C04F56B0();
  sub_1C04F5680();
  (*(v56 + 16))(v65, v55, v52);
  OUTLINED_FUNCTION_6_0();
  sub_1C04F5670();
  sub_1C04F56D0();
  if (qword_1EDE41E20 != -1)
  {
    swift_once();
  }

  v57 = byte_1EDE44D78;
  sub_1C04F5660();
  v58 = MEMORY[0x1E69BCBB8];
  if (!v57)
  {
    v58 = MEMORY[0x1E69BCBB0];
  }

  (*(v73 + 104))(v72, *v58, v74);
  OUTLINED_FUNCTION_6_0();
  sub_1C04F56C0();
  (*(v76 + 16))(v75, v78, v77);
  OUTLINED_FUNCTION_6_0();
  sub_1C04F5690();
  (*(v56 + 8))(v55, v52);
  return (*(v46 + 8))(v44, v45);
}

uint64_t sub_1C0484440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27 - v8;
  v10 = sub_1C04F54F0();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v27 - v20;
  sub_1C04829CC(a1, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1C0482A3C(v9);
    v22 = sub_1C04F5700();
    OUTLINED_FUNCTION_7_2(v22);
    return (*(v23 + 16))(a3, a2);
  }

  else
  {
    (*(v13 + 32))(v21, v9, v10);
    v25 = sub_1C04F5700();
    OUTLINED_FUNCTION_7_2(v25);
    (*(v26 + 16))(a3, a2);
    (*(v13 + 16))(v18, v21, v10);
    sub_1C04F56B0();
    return (*(v13 + 8))(v21, v10);
  }
}

uint64_t sub_1C0484644@<X0>(uint64_t a1@<X8>)
{
  sub_1C04F56A0();
  v2 = sub_1C04F54F0();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

BOOL sub_1C0484694(uint64_t a1)
{
  v2 = sub_1C04F5730();
  v3 = OUTLINED_FUNCTION_0(v2);
  v58 = v4;
  v59 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_1();
  v57 = v7;
  OUTLINED_FUNCTION_4_1();
  v8 = sub_1C04F5C60();
  v9 = OUTLINED_FUNCTION_0(v8);
  v61 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  v60 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  v18 = sub_1C04F5750();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_0();
  v26 = (v24 - v25);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v53 - v28;
  v30 = *(v21 + 16);
  v30(&v53 - v28, a1, v18);
  v30(v26, a1, v18);
  v31 = sub_1C04F63E0();
  v32 = sub_1C04F6A40();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v54 = v32;
    v34 = v33;
    v55 = swift_slowAlloc();
    v62 = v55;
    *v34 = 136315394;
    v53 = v31;
    sub_1C04F5710();
    v35 = sub_1C04F6790();
    v37 = v36;
    v56 = a1;
    v38 = *(v21 + 8);
    v38(v29, v18);
    v39 = sub_1C047D76C(v35, v37, &v62);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2080;
    v40 = v57;
    sub_1C04F5740();
    v41 = sub_1C04F5720();
    v43 = v42;
    (*(v58 + 8))(v40, v59);
    v38(v26, v18);
    v44 = sub_1C047D76C(v41, v43, &v62);

    *(v34 + 14) = v44;
    v45 = v53;
    _os_log_impl(&dword_1C0479000, v53, v54, "received rpc response with search status: %s, error detail: %s", v34, 0x16u);
    v46 = v55;
    swift_arrayDestroy();
    MEMORY[0x1C68DCEB0](v46, -1, -1);
    MEMORY[0x1C68DCEB0](v34, -1, -1);
  }

  else
  {

    v47 = *(v21 + 8);
    v47(v26, v18);
    v47(v29, v18);
  }

  sub_1C04F5710();
  v49 = v60;
  v48 = v61;
  (*(v61 + 104))(v60, *MEMORY[0x1E69BD138], v8);
  sub_1C0484C50();
  v50 = sub_1C04F6730();
  v51 = *(v48 + 8);
  v51(v49, v8);
  v51(v17, v8);
  return (v50 & 1) == 0;
}

uint64_t BaseSiriSearchProxy.deinit()
{
  v1 = BasePegasusProxy.deinit();
  OUTLINED_FUNCTION_8(v1);

  return v0;
}

uint64_t BaseSiriSearchProxy.__deallocating_deinit()
{
  v1 = BasePegasusProxy.deinit();
  OUTLINED_FUNCTION_8(v1);

  return MEMORY[0x1EEE6BDC0](v0, 176, 7);
}

uint64_t type metadata accessor for BaseSiriSearchProxy()
{
  result = qword_1EDE41980;
  if (!qword_1EDE41980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C0484C50()
{
  result = qword_1EDE41528;
  if (!qword_1EDE41528)
  {
    sub_1C04F5C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE41528);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8(void *a1)
{
  v3 = a1[17];
  v4 = a1[19];
  v5 = a1[21];
}

void *sub_1C0484D70()
{
  v1 = v0[2];
  v6[2] = *(*v0 + 80);
  v2 = type metadata accessor for TimedReference.State();

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD48, &qword_1C04F81F8);
  sub_1C0485168(sub_1C048514C, v6, v1, v2, v3);

  v4 = v0[2];

  return v0;
}

void *sub_1C0484E24@<X0>(void *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *(*result + qword_1EBE0CCB0);
  if (v3)
  {
    v4 = *(*result + qword_1EBE0CCB0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    sub_1C04F6990();
  }

  *a2 = v3 == 0;
  return result;
}

uint64_t sub_1C0484EB8()
{
  sub_1C0484D70();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1C0484F04()
{
  sub_1C048508C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_1C0484FB8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_1C04850E4(v0 + qword_1EBE0CC90);
  v2 = *(v0 + qword_1EBE0CCA0 + 8);
  sub_1C047D1E0(*(v0 + qword_1EBE0CCA0));
  v3 = *(v0 + qword_1EBE0CCA8 + 8);
  sub_1C047D1E0(*(v0 + qword_1EBE0CCA8));
  v4 = *(v0 + qword_1EBE0CCB0);

  return v0;
}

uint64_t sub_1C0485020()
{
  v0 = sub_1C0484FB8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1C048508C()
{
  if (!qword_1EBE0CD38)
  {
    sub_1C04F6C80();
    v0 = sub_1C04F6B20();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBE0CD38);
    }
  }
}

uint64_t sub_1C04850E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD40, &qword_1C04F81F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C04851F4(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

uint64_t static PegasusProxyForNews.useragent.getter()
{
  v0 = sub_1C04F6240();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C04F6260();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69BDB08], v0);
  sub_1C04F6270();
  v16 = sub_1C04F6250();
  (*(v11 + 8))(v15, v8);
  return v16;
}

void sub_1C0485470(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v8 = *(v2 - 8) + 64;
    sub_1C0486944();
    if (v5 <= 0x3F)
    {
      v9 = *(v4 - 8) + 64;
      v6 = sub_1C04F5460();
      if (v7 <= 0x3F)
      {
        v10 = *(v6 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

void *sub_1C04855B0()
{
  OUTLINED_FUNCTION_0_1();
  v2 = v1;
  if ((*(v0 + *(v3 + 120)) & 1) == 0)
  {
    (*(v1 + 400))();
  }

  swift_weakDestroy();
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_4();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v8 + 112));
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_4();
  sub_1C04871F4(v0 + *(v10 + 136), &qword_1EBE0CD58, &qword_1C04F8388);
  OUTLINED_FUNCTION_4();
  v12 = *(v11 + 144);
  v13 = sub_1C04F5460();
  OUTLINED_FUNCTION_6_1(v13);
  (*(v14 + 8))(v0 + v12);
  OUTLINED_FUNCTION_4();
  v16 = *(v0 + *(v15 + 152));

  return v0;
}

uint64_t sub_1C048573C()
{
  v1 = v0;
  OUTLINED_FUNCTION_0_1();
  v3 = *(v0 + *(v2 + 152));
  v5 = *(v4 + 80);
  v6 = *(v4 + 88);
  v7 = type metadata accessor for ActivitySpan.ActivityData();

  v36 = v7;
  sub_1C04BD518(sub_1C0486E4C);

  v42 = v38;
  v43 = v39;
  v44 = v40;
  v45 = v41;
  v8 = *(v1 + *(*v1 + 128));
  sub_1C04F6A20();
  sub_1C04F6390();
  sub_1C04F6A20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C04F8240;
  sub_1C0485D7C();
  v10 = sub_1C04F6C50();
  v12 = v11;
  v13 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1C0483A94();
  *(v9 + 64) = v14;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v15 = sub_1C0485D28();
  *(v9 + 96) = v13;
  *(v9 + 104) = v14;
  *(v9 + 72) = v15;
  *(v9 + 80) = v16;
  v17 = sub_1C0485CD4();
  *(v9 + 136) = v13;
  *(v9 + 144) = v14;
  v37 = v14;
  *(v9 + 112) = v17;
  *(v9 + 120) = v18;
  sub_1C04F6390();

  if ((BYTE1(v43) & 1) == 0)
  {
    sub_1C04F6A20();
    v19 = OUTLINED_FUNCTION_5_1();
    *(v19 + 16) = xmmword_1C04F7BB0;
    v20 = sub_1C04F6C50();
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = v14;
    *(v19 + 32) = v20;
    *(v19 + 40) = v21;
    OUTLINED_FUNCTION_3_2();
    sub_1C04F6390();

    v22 = v44;
    if (v44)
    {

      sub_1C04F6A20();
      v23 = OUTLINED_FUNCTION_5_1();
      *(v23 + 16) = xmmword_1C04F7BB0;
      *(v23 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD80, &qword_1C04FAF60);
      *(v23 + 64) = sub_1C047C1A4(&unk_1EBE0CD88, &qword_1EBE0CD80, &qword_1C04FAF60);
      *(v23 + 32) = v22;
      OUTLINED_FUNCTION_3_2();
      sub_1C04F6390();
    }
  }

  v24 = *(&v43 + 1);
  if (*(&v43 + 1))
  {

    sub_1C04F6A20();
    v25 = OUTLINED_FUNCTION_5_1();
    *(v25 + 16) = xmmword_1C04F7BB0;
    *(v25 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD70, &qword_1C04F8390);
    *(v25 + 64) = sub_1C047C1A4(&qword_1EBE0CD78, &qword_1EBE0CD70, &qword_1C04F8390);
    *(v25 + 32) = v24;
    OUTLINED_FUNCTION_3_2();
    sub_1C04F6390();
  }

  v26 = *(&v44 + 1);
  result = sub_1C04EB71C(*(&v44 + 1));
  v28 = v36;
  if (result)
  {
    v29 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v30 = 0;
    do
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68DC500](v30, v26);
      }

      else
      {
        v31 = *(v26 + 8 * v30 + 32);
        swift_unknownObjectRetain();
      }

      ++v30;
      sub_1C04F6A20();
      v32 = OUTLINED_FUNCTION_5_1();
      *(v32 + 16) = xmmword_1C04F7BB0;
      swift_unknownObjectRetain();
      v33 = sub_1C04F6790();
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 64) = v37;
      *(v32 + 32) = v33;
      *(v32 + 40) = v34;
      sub_1C04F6390();
      swift_unknownObjectRelease();
    }

    while (v29 != v30);

    v28 = v36;
  }

  sub_1C04F6A20();
  OUTLINED_FUNCTION_3_2();
  sub_1C04F6390();
  if (sub_1C0485DE4())
  {
    sub_1C04F6A30();
    OUTLINED_FUNCTION_3_2();
    sub_1C04F6390();
  }

  OUTLINED_FUNCTION_6_1(v28);
  return (*(v35 + 8))(&v42, v28);
}

uint64_t sub_1C0485CD4()
{
  OUTLINED_FUNCTION_0_1();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1_2();
  return (*(*(v2 + 88) + 24))();
}

uint64_t sub_1C0485D28()
{
  OUTLINED_FUNCTION_0_1();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1_2();
  return (*(*(v2 + 88) + 32))();
}

uint64_t sub_1C0485D7C()
{
  OUTLINED_FUNCTION_0_1();
  v1 = *(v0 + 112);
  v3 = *(*(v2 + 88) + 40);
  OUTLINED_FUNCTION_1_2();
  return v5(*(v4 + 80));
}

uint64_t sub_1C0485DE4()
{
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v13 - v5;
  OUTLINED_FUNCTION_1_2();
  (*(v8 + 16))(v6, v0 + *(v7 + 112), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD98, &qword_1C04F8398);
  if (swift_dynamicCast())
  {
    sub_1C047E140(v13, v15);
    v9 = v16;
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v11 = (*(v10 + 8))(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_1C04871F4(v13, &unk_1EBE0CDA0, &qword_1C04F83A0);
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1C0485F5C()
{
  v1 = sub_1C04F5460();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_4();
  (*(v2 + 16))(v5, v0 + *(v6 + 144), v1);
  sub_1C04F5430();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1C04860BC(void (*a1)(void))
{
  OUTLINED_FUNCTION_4();
  v4 = *(*(v1 + *(v3 + 152)) + 16);

  os_unfair_lock_lock(v4);
  sub_1C0486AA8(v1, a1);
  os_unfair_lock_unlock(v4);
}

uint64_t sub_1C0486144()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD58, &qword_1C04F8388);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v50[-v9];
  v11 = *(v2 + 80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v8);
  v16 = &v50[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v50[-v17];
  v19 = *(v1 + 40);
  v60 = *(v1 + 24);
  v61 = v19;
  v62 = *(v1 + 56);
  v63 = *(v1 + 72);
  v20 = *(&v19 + 1);
  v54 = *(v2 + 88);
  v21 = type metadata accessor for ActivitySpan.ActivityData();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v53 = v21;
  v23(v55, &v60);
  sub_1C0486AFC(v20);
  if ((BYTE1(v61) & 1) == 0)
  {
    v24 = v62;
    if (v62)
    {
      v52 = *(&v60 + 1);
      v25 = v60;
      v51 = v61;
      OUTLINED_FUNCTION_2();
      (*(v12 + 16))(v18, v1 + *(v26 + 112), v11);
      OUTLINED_FUNCTION_2();
      v28 = *(v27 + 136);
      swift_beginAccess();
      sub_1C04870FC(v1 + v28, v10);
      v29 = sub_1C04F63D0();
      result = __swift_getEnumTagSinglePayload(v10, 1, v29);
      if (result != 1)
      {
        v31 = v10;
        OUTLINED_FUNCTION_2();
        v33 = *(v1 + *(v32 + 128));

        sub_1C0486814(v31, v33, v25, v52, v51, v24, v11, v54);

        (*(v12 + 8))(v18, v11);
        OUTLINED_FUNCTION_6_1(v29);
        (*(v34 + 8))(v31, v29);
        goto LABEL_7;
      }

LABEL_14:
      __break(1u);
      return result;
    }
  }

  OUTLINED_FUNCTION_2();
  (*(v12 + 16))(v16, v1 + *(v35 + 112), v11);
  OUTLINED_FUNCTION_2();
  v37 = *(v36 + 136);
  swift_beginAccess();
  sub_1C04870FC(v1 + v37, v7);
  v38 = sub_1C04F63D0();
  result = __swift_getEnumTagSinglePayload(v7, 1, v38);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_2();
  sub_1C0486784(v7, *(v1 + *(v39 + 128)), v11, v54);
  (*(v12 + 8))(v16, v11);
  OUTLINED_FUNCTION_6_1(v38);
  (*(v40 + 8))(v7, v38);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v42 = Strong;
    v43 = type metadata accessor for ActivitySpan();
    sub_1C04E82E4(v1, v42, v43, &off_1F3F85FC0);
    v58 = 0uLL;
    v59 = 0;
    *&v57[6] = 0;
    *&v57[14] = 0;

    v44 = *(v22 + 8);
    v45 = v53;
    v44(&v60, v53);
    v46 = *(v1 + 40);
    v55[0] = *(v1 + 24);
    v47 = *(v1 + 56);
    v55[1] = v46;
    v55[2] = v47;
    v56 = *(v1 + 72);
    *(v1 + 24) = v58;
    *(v1 + 40) = v59;
    *(v1 + 41) = 1;
    *(v1 + 42) = *v57;
    v48 = MEMORY[0x1E69E7CC0];
    *(v1 + 56) = *&v57[14];
    *(v1 + 64) = v48;
    *(v1 + 72) = 0;
    v44(v55, v45);
    OUTLINED_FUNCTION_2();
    *(v1 + *(v49 + 120)) = 1;
    return swift_weakAssign();
  }

  else
  {
    if (sub_1C0485DE4())
    {
      sub_1C04F6A30();
      sub_1C04F6390();
    }

    return (*(v22 + 8))(&v60, v53);
  }
}

uint64_t sub_1C04866E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4();
  v10 = *(*(v4 + *(v9 + 152)) + 16);

  os_unfair_lock_lock(v10);
  sub_1C0486CD4(v4, a1, a2, a3, a4);
  os_unfair_lock_unlock(v10);
}

uint64_t sub_1C0486784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C04F6AD0();
  (*(a4 + 40))(a3, a4);

  return sub_1C04F63B0();
}

void sub_1C0486814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_1C04F6AD0();
  v17 = (*(a8 + 40))(a7, a8);
  LOBYTE(v20) = a5;
  sub_1C04D8118(v16, a2, v17, v18, v19, a1, a3, a4, v20, a6);
}

uint64_t sub_1C04868D4()
{
  sub_1C04855B0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1C0486944()
{
  if (!qword_1EDE44790)
  {
    sub_1C04F63D0();
    v0 = sub_1C04F6B20();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE44790);
    }
  }
}

uint64_t sub_1C048699C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C0486A00(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1C0486A40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0486AA8(uint64_t result, void (*a2)(void))
{
  if ((*(result + *(*result + 120)) & 1) == 0)
  {
    a2();
    return sub_1C0486144();
  }

  return result;
}

void sub_1C0486AFC(uint64_t a1)
{
  if (sub_1C0486E54(a1))
  {
    OUTLINED_FUNCTION_4();
    v3 = *(v1 + *(v2 + 128));
    sub_1C04F6A10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C04F7BA0;
    v5 = sub_1C0485D28();
    v7 = v6;
    v8 = MEMORY[0x1E69E6158];
    *(v4 + 56) = MEMORY[0x1E69E6158];
    v9 = sub_1C0483A94();
    *(v4 + 64) = v9;
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    sub_1C048716C();
    OUTLINED_FUNCTION_7_3();
    v10 = sub_1C04F66D0();
    *(v4 + 96) = v8;
    *(v4 + 104) = v9;
    *(v4 + 72) = v10;
    *(v4 + 80) = v11;
    OUTLINED_FUNCTION_3_2();
    sub_1C04F6390();

    sub_1C0485CD4();
    v12 = sub_1C0485D28();
    v14 = v13;

    MEMORY[0x1C68DC0D0](46, 0xE100000000000000);
    MEMORY[0x1C68DC0D0](v12, v14);

    v15 = sub_1C04F6740();

    OUTLINED_FUNCTION_7_3();
    v16 = sub_1C04F66B0();
    AnalyticsSendEvent();
  }
}

uint64_t sub_1C0486CD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 41) = 0;
  v5 = *(a1 + 56);
  *(a1 + 56) = a5;
}

uint64_t sub_1C0486D20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 5);
  v11[0] = *(a1 + 3);
  v11[1] = v3;
  v12 = *(a1 + 7);
  v4 = v12;
  v13 = a1[9];
  v5 = v13;
  *a2 = v11[0];
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  v8 = type metadata accessor for ActivitySpan.ActivityData();
  return (*(*(v8 - 8) + 16))(v10, v11, v8);
}

uint64_t sub_1C0486E54(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  v7 = *(v6 + 80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  (*(v8 + 16))(&v22 - v11, v2 + *(v13 + 112), v7);
  DynamicType = swift_getDynamicType();
  (*(v8 + 8))(v12, v7);
  v16 = dynamic_cast_existential_1_conditional(DynamicType);
  result = 0;
  if (v16)
  {
    if (a1)
    {
      v18 = v15;
      v19 = *(v15 + 16);

      v19(v16, v18);
      v20 = *(*(v5 + 88) + 16);
      sub_1C04F68E0();
      sub_1C04F6B80();
      swift_isUniquelyReferenced_nonNull_native();
      v22 = a1;
      sub_1C049FA54();

      v21 = v22;
      (*(v18 + 8))(v16, v18);
      sub_1C0485F5C();
      sub_1C04F69C0();
      swift_isUniquelyReferenced_nonNull_native();
      v23 = v21;
      sub_1C049FA54();

      return v23;
    }
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

uint64_t sub_1C04870FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD58, &qword_1C04F8388);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C048716C()
{
  result = qword_1EDE446A0;
  if (!qword_1EDE446A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE446A0);
  }

  return result;
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

uint64_t sub_1C04871F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return swift_allocObject();
}

uint64_t sub_1C048728C(uint64_t result, unint64_t a2)
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

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (result == 43)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            OUTLINED_FUNCTION_311();
            while (1)
            {
              OUTLINED_FUNCTION_194();
              if (!v9 & v8)
              {
                break;
              }

              OUTLINED_FUNCTION_133();
              if (!v9)
              {
                break;
              }

              v7 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              OUTLINED_FUNCTION_295();
              if (v9)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_68;
        }

LABEL_79:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          while (1)
          {
            OUTLINED_FUNCTION_194();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_133();
            if (!v9)
            {
              break;
            }

            v7 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            OUTLINED_FUNCTION_295();
            if (v9)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }

      if (v3)
      {
        if (v3 != 1)
        {
          OUTLINED_FUNCTION_311();
          while (1)
          {
            OUTLINED_FUNCTION_194();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_133();
            if (!v9)
            {
              break;
            }

            v7 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            OUTLINED_FUNCTION_295();
            if (v9)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1C04F6C70();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              while (1)
              {
                OUTLINED_FUNCTION_194();
                if (!v9 & v8)
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_133();
                if (!v9)
                {
                  goto LABEL_68;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_295();
                if (v9)
                {
                  goto LABEL_69;
                }
              }
            }

            goto LABEL_59;
          }

          goto LABEL_68;
        }

        goto LABEL_78;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_68;
              }

              v20 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_68;
              }

              v7 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_68;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_59;
              }
            }
          }

          goto LABEL_59;
        }

LABEL_68:
        v7 = 0;
        v12 = 1;
        goto LABEL_69;
      }

      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_194();
              if (!v9 & v8)
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_133();
              if (!v9)
              {
                goto LABEL_68;
              }

              v7 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_295();
              if (v9)
              {
                goto LABEL_69;
              }
            }
          }

LABEL_59:
          v12 = 0;
LABEL_69:
          v23 = v12;
          goto LABEL_70;
        }

        goto LABEL_68;
      }

      __break(1u);
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v7 = sub_1C049EDC0(result, a2, 10);
  v23 = v24;
LABEL_70:

  if (v23)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1C04874F4()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EBE0CDB0);
  __swift_project_value_buffer(v0, qword_1EBE0CDB0);
  return sub_1C04F63F0();
}

uint64_t sub_1C0487570()
{
  v0 = sub_1C04F6240();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C04F6260();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69BDB08], v0);
  sub_1C04F6270();
  v10 = sub_1C04F6250();
  v12 = v11;
  result = (*(v6 + 8))(v9, v5);
  qword_1EBE0CDC8 = v10;
  unk_1EBE0CDD0 = v12;
  return result;
}

void sub_1C04876F8()
{
  qword_1EBE0CDD8 = 0xD000000000000023;
  unk_1EBE0CDE0 = 0x80000001C04FCD70;
  qword_1EBE0CDE8 = 0x686372616553;
  unk_1EBE0CDF0 = 0xE600000000000000;
  qword_1EBE0CDF8 = 0xD000000000000010;
  unk_1EBE0CE00 = 0x80000001C04FCDF0;
}

void sub_1C048774C()
{
  qword_1EBE0CE08 = 0xD000000000000023;
  unk_1EBE0CE10 = 0x80000001C04FCD70;
  qword_1EBE0CE18 = 0xD000000000000016;
  unk_1EBE0CE20 = 0x80000001C04FCDA0;
  qword_1EBE0CE28 = 0xD000000000000020;
  unk_1EBE0CE30 = 0x80000001C04FCDC0;
}

void *PegasusProxyForFlightSearch.init()()
{
  if (qword_1EBE0C998 != -1)
  {
    OUTLINED_FUNCTION_132();
  }

  OUTLINED_FUNCTION_141();

  return sub_1C04B8AAC(v0, v1, v2, v3, 0xF000000000000000, 0);
}

void sub_1C0487854(uint64_t a1)
{
  v3 = sub_1C04F6130();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = sub_1C04F6200();
  v13 = OUTLINED_FUNCTION_2_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v19 = *(v1 + 16);
  (*(v6 + 104))(v11, *MEMORY[0x1E69BDAC0], v3);

  sub_1C04F6120();
  v20 = *(v6 + 8);
  v21 = OUTLINED_FUNCTION_293();
  v22(v21);
  sub_1C04F6210();
  v23 = type metadata accessor for ResourceAccessSpan();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = OUTLINED_FUNCTION_204();
  sub_1C0482EFC(v26, a1, v18, 0, 1);
  OUTLINED_FUNCTION_314();
}

uint64_t sub_1C04879BC()
{
  OUTLINED_FUNCTION_144();
  v1[33] = v2;
  v1[34] = v0;
  v1[32] = v3;
  v1[35] = *v0;
  v4 = sub_1C04F5B60();
  v1[36] = v4;
  OUTLINED_FUNCTION_66(v4);
  v1[37] = v5;
  v7 = *(v6 + 64);
  v1[38] = OUTLINED_FUNCTION_287();
  v8 = sub_1C04F5BC0();
  v1[39] = v8;
  OUTLINED_FUNCTION_66(v8);
  v1[40] = v9;
  v11 = *(v10 + 64);
  v1[41] = OUTLINED_FUNCTION_286();
  v1[42] = swift_task_alloc();
  v12 = sub_1C04F5EB0();
  v1[43] = v12;
  OUTLINED_FUNCTION_66(v12);
  v1[44] = v13;
  v15 = *(v14 + 64);
  v1[45] = OUTLINED_FUNCTION_286();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  OUTLINED_FUNCTION_2_1(v16);
  v18 = *(v17 + 64);
  v1[48] = OUTLINED_FUNCTION_287();
  v19 = sub_1C04F54F0();
  v1[49] = v19;
  OUTLINED_FUNCTION_66(v19);
  v1[50] = v20;
  v22 = *(v21 + 64);
  v1[51] = OUTLINED_FUNCTION_286();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v23 = sub_1C04F5DC0();
  v1[54] = v23;
  OUTLINED_FUNCTION_66(v23);
  v1[55] = v24;
  v26 = *(v25 + 64);
  v1[56] = OUTLINED_FUNCTION_287();
  v27 = sub_1C04F5530();
  v1[57] = v27;
  OUTLINED_FUNCTION_66(v27);
  v1[58] = v28;
  v30 = *(v29 + 64);
  v1[59] = OUTLINED_FUNCTION_287();
  v31 = sub_1C04F5E30();
  v1[60] = v31;
  OUTLINED_FUNCTION_66(v31);
  v1[61] = v32;
  v34 = *(v33 + 64);
  v1[62] = OUTLINED_FUNCTION_286();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v35, v36, v37);
}

uint64_t sub_1C0487CD8()
{
  if (qword_1EBE0C998 != -1)
  {
    OUTLINED_FUNCTION_132();
  }

  v1 = v0[34];

  v2 = sub_1C04B7354();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_307();
  v3 = OUTLINED_FUNCTION_136();
  sub_1C049FB48(v3, v4, v5, 0xEA0000000000746ELL);
  sub_1C04B7390(v2);
  if (qword_1EBE0C990 != -1)
  {
    OUTLINED_FUNCTION_65();
  }

  v6 = v0[63];
  v7 = v0[64];
  v8 = v0[60];
  v9 = v0[61];
  v10 = v0[33];
  v11 = sub_1C04F6400();
  v0[65] = __swift_project_value_buffer(v11, qword_1EBE0CDB0);
  v13 = *(v9 + 16);
  v12 = v9 + 16;
  v0[66] = v13;
  v0[67] = v12 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  OUTLINED_FUNCTION_237();
  v13();
  OUTLINED_FUNCTION_237();
  v13();
  v14 = sub_1C04F63E0();
  v15 = sub_1C04F6A10();
  v16 = OUTLINED_FUNCTION_143();
  v18 = os_log_type_enabled(v16, v17);
  v20 = v0[63];
  v19 = v0[64];
  v22 = v0[60];
  v21 = v0[61];
  if (v18)
  {
    v24 = v0[58];
    v23 = v0[59];
    v43 = v0[57];
    v44 = v0[56];
    v45 = v0[55];
    v46 = v0[54];
    OUTLINED_FUNCTION_155();
    swift_slowAlloc();
    OUTLINED_FUNCTION_170();
    *v12 = 136643075;
    log = v14;
    sub_1C04F5DF0();
    sub_1C04F5500();
    (*(v24 + 8))(v23, v43);
    v25 = *(v21 + 8);
    v25(v19, v22);
    v26 = OUTLINED_FUNCTION_238();
    v29 = sub_1C047D76C(v26, v27, v28);

    *(v12 + 4) = v29;
    *(v12 + 12) = 2085;
    sub_1C04F5E20();
    sub_1C04F5DB0();
    OUTLINED_FUNCTION_161();
    (*(v45 + 8))(v44, v46);
    v25(v20, v22);
    v30 = OUTLINED_FUNCTION_135();
    v33 = sub_1C047D76C(v30, v31, v32);

    *(v12 + 14) = v33;
    _os_log_impl(&dword_1C0479000, log, v15, "Searching for fight %{sensitive}s, [bundleId: %{sensitive}s]", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
    v34 = OUTLINED_FUNCTION_50();
    MEMORY[0x1C68DCEB0](v34);
  }

  else
  {

    v25 = *(v21 + 8);
    v25(v20, v22);
    v25(v19, v22);
  }

  v0[68] = v25;
  v35 = v0[34];
  sub_1C0487854(37);
  v0[69] = v36;
  v37 = swift_task_alloc();
  v0[70] = v37;
  *v37 = v0;
  OUTLINED_FUNCTION_246(v37);
  OUTLINED_FUNCTION_142();

  return sub_1C04B832C(v38, v39, v40, v41);
}

uint64_t sub_1C0488068()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_77();
  *v3 = v2;
  v5 = *(v4 + 560);
  v6 = *v1;
  OUTLINED_FUNCTION_49();
  *v7 = v6;
  *(v8 + 568) = v0;

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C0488160()
{
  OUTLINED_FUNCTION_144();
  v1 = *(v0 + 536);
  (*(v0 + 528))(*(v0 + 496), *(v0 + 264), *(v0 + 480));
  if (qword_1EDE42870 != -1)
  {
    OUTLINED_FUNCTION_225();
  }

  OUTLINED_FUNCTION_141();
  swift_beginAccess();
  *(v0 + 576) = qword_1EDE42878;

  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  *(v0 + 584) = v2;
  *v2 = v3;
  v2[1] = sub_1C0488258;
  v4 = *(v0 + 424);

  return sub_1C04D0E9C();
}

uint64_t sub_1C0488258()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  OUTLINED_FUNCTION_64();
  *v4 = v3;
  v6 = *(v5 + 584);
  v7 = *v1;
  OUTLINED_FUNCTION_49();
  *v8 = v7;
  *(v3 + 592) = v0;

  if (!v0)
  {
    v9 = *(v3 + 576);
  }

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C0488358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_230();
  v20 = *(v18 + 496);
  v21 = *(v18 + 424);
  v23 = *(v18 + 400);
  v22 = *(v18 + 408);
  v25 = *(v18 + 384);
  v24 = *(v18 + 392);
  sub_1C04F5E00();
  OUTLINED_FUNCTION_319();
  v26 = *(v23 + 8);
  v27 = OUTLINED_FUNCTION_136();
  v26(v27);
  if (__swift_getEnumTagSinglePayload(v25, 1, v24) == 1)
  {
    v28 = *(v18 + 520);
    sub_1C04A12B4(*(v18 + 384), &qword_1EBE0CC70, &qword_1C04F8CB0);
    v29 = sub_1C04F63E0();
    v30 = sub_1C04F6A20();
    v31 = OUTLINED_FUNCTION_143();
    if (os_log_type_enabled(v31, v32))
    {
      OUTLINED_FUNCTION_154();
      v33 = swift_slowAlloc();
      OUTLINED_FUNCTION_158(v33);
      OUTLINED_FUNCTION_80(&dword_1C0479000, v34, v35, "unable to create unified query context");
      OUTLINED_FUNCTION_134();
      MEMORY[0x1C68DCEB0]();
    }

    v36 = *(v18 + 424);
    v37 = *(v18 + 392);

    v38 = sub_1C049FC7C();
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_142();
    v39 = swift_allocError();
    OUTLINED_FUNCTION_320(v39, v40);
    (v26)(v36, v37);
    *(v18 + 216) = v19;
    v41 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    if (OUTLINED_FUNCTION_297() && *(v18 + 130) == 9)
    {
      v42 = *(v18 + 552);
      OUTLINED_FUNCTION_279();

      OUTLINED_FUNCTION_324(qword_1EDE44718);
      OUTLINED_FUNCTION_142();
      v43 = swift_allocError();
      OUTLINED_FUNCTION_221(v43, v44);

      v45 = OUTLINED_FUNCTION_131();
      v30(v45);
    }

    else
    {
      v73 = *(v18 + 520);

      v74 = v19;
      v75 = sub_1C04F63E0();
      sub_1C04F6A20();

      if (OUTLINED_FUNCTION_323())
      {
        OUTLINED_FUNCTION_145();
        swift_slowAlloc();
        v76 = OUTLINED_FUNCTION_245();
        *v38 = 138412290;
        v77 = v19;
        v78 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_313(v78);
        OUTLINED_FUNCTION_67();
        _os_log_impl(v79, v80, v81, v82, v83, 0xCu);
        sub_1C04A12B4(v76, &qword_1EBE0CE38, &unk_1C04FB970);
        v84 = OUTLINED_FUNCTION_50();
        MEMORY[0x1C68DCEB0](v84);
        v85 = OUTLINED_FUNCTION_63();
        MEMORY[0x1C68DCEB0](v85);
      }

      v86 = *(v18 + 552);
      OUTLINED_FUNCTION_279();

      OUTLINED_FUNCTION_253(qword_1EDE44718);
      swift_willThrow();
      v87 = OUTLINED_FUNCTION_131();
      v30(v87);

      a14 = v19;
    }

    v89 = *(v18 + 504);
    v88 = *(v18 + 512);
    OUTLINED_FUNCTION_79();
    v90 = *(v18 + 376);
    v91 = *(v18 + 384);
    OUTLINED_FUNCTION_200();

    OUTLINED_FUNCTION_150();
    OUTLINED_FUNCTION_195();

    return v93(v92, v93, v94, v95, v96, v97, v98, v99, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v46 = *(v18 + 496);
    v48 = *(v18 + 416);
    v47 = *(v18 + 424);
    v50 = *(v18 + 400);
    v49 = *(v18 + 408);
    v51 = *(v18 + 384);
    v52 = *(v18 + 392);
    v53 = OUTLINED_FUNCTION_289();
    v54(v53);
    v55 = *(v50 + 16);
    v56 = OUTLINED_FUNCTION_192();
    v57(v56);
    sub_1C04F5E10();
    (v26)(v48, v52);
    v58 = OUTLINED_FUNCTION_193();
    v26(v58);
    *(v18 + 600) = sub_1C047ACAC();
    if (qword_1EBE0C9A0 != -1)
    {
      swift_once();
    }

    v59 = *(v18 + 272);
    *(v18 + 608) = OUTLINED_FUNCTION_316(&qword_1EBE0CDD8);
    OUTLINED_FUNCTION_288();
    OUTLINED_FUNCTION_315(dword_1C04F8420);
    OUTLINED_FUNCTION_146();
    *(v18 + 616) = v60;
    *v60 = v61;
    v60[1] = sub_1C04887CC;
    v62 = *(v18 + 496);
    v63 = *(v18 + 368);
    OUTLINED_FUNCTION_304();
    OUTLINED_FUNCTION_195();

    return v70(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_1C04887CC()
{
  OUTLINED_FUNCTION_172();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_49();
  *v4 = v3;
  v5 = v2[77];
  *v4 = *v1;
  v3[78] = v0;

  v6 = v2[76];
  v7 = v2[75];

  sub_1C04A12B4((v3 + 8), &qword_1EBE0CE40, &qword_1C04F8900);
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C0488924()
{
  v99 = v0;
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[39];
  v4 = v0[40];
  v5 = *(v0[44] + 32);
  v5(v0[47], v0[46], v0[43]);
  sub_1C04F5E90();
  (*(v4 + 104))(v2, *MEMORY[0x1E69BCED0], v3);
  OUTLINED_FUNCTION_217();
  sub_1C04A1764(v6, v7);
  v8 = OUTLINED_FUNCTION_302();
  v10 = *(v4 + 8);
  v9 = v4 + 8;
  v11 = OUTLINED_FUNCTION_136();
  v10(v11);
  v12 = OUTLINED_FUNCTION_294();
  v10(v12);
  v13 = v0[65];
  if (v8)
  {
    (*(v0[44] + 16))(v0[45], v0[47], v0[43]);
    v14 = sub_1C04F63E0();
    sub_1C04F6A20();
    OUTLINED_FUNCTION_190();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[45];
    if (v16)
    {
      OUTLINED_FUNCTION_145();
      v18 = swift_slowAlloc();
      OUTLINED_FUNCTION_149();
      v19 = swift_slowAlloc();
      v98[0] = v19;
      *v18 = 136315138;
      if (sub_1C04F5EA0())
      {
        v20 = v0[45];
        v22 = v0[37];
        v21 = v0[38];
        v23 = v0[36];
        sub_1C04F5E80();
        v9 = sub_1C04F5B50();
        v17 = v24;
        v25 = *(v22 + 8);
        v26 = OUTLINED_FUNCTION_189();
        v27(v26);
      }

      else
      {
        OUTLINED_FUNCTION_308();
      }

      v96 = *(v0[44] + 8);
      (v96)(v0[45], v0[43]);
      v56 = sub_1C047D76C(v9, v17, v98);

      *(v18 + 4) = v56;
      OUTLINED_FUNCTION_223(&dword_1C0479000, v57, v58, "search received status error: %s");
      __swift_destroy_boxed_opaque_existential_1(v19);
      v59 = OUTLINED_FUNCTION_50();
      MEMORY[0x1C68DCEB0](v59);
      v60 = OUTLINED_FUNCTION_63();
      MEMORY[0x1C68DCEB0](v60);
    }

    else
    {
      v51 = v0[43];
      v52 = v0[44];

      v53 = *(v52 + 8);
      v54 = OUTLINED_FUNCTION_160();
      v96 = v55;
      v55(v54);
    }

    v61 = v0[69];
    v91 = v0[68];
    v63 = v0[61];
    v62 = v0[62];
    v64 = v0[60];
    v65 = v0[47];
    v66 = v0[43];
    v67 = v0[44];
    OUTLINED_FUNCTION_301(qword_1EDE44718);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    *v68 = 6;
    swift_willThrow();

    v69 = OUTLINED_FUNCTION_231();
    v96(v69);
    v70 = OUTLINED_FUNCTION_282();
    v91(v70);
    v72 = v0[63];
    v71 = v0[64];
    OUTLINED_FUNCTION_79();
    v73 = v0[47];
    v74 = v0[48];
    v85 = v0[46];
    v87 = v0[45];
    v89 = v0[42];
    v92 = v0[41];
    v97 = v0[38];

    OUTLINED_FUNCTION_150();
  }

  else
  {
    v95 = v5;
    v28 = sub_1C04F63E0();
    sub_1C04F6A10();
    OUTLINED_FUNCTION_190();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v0[62];
      v32 = v0[58];
      v31 = v0[59];
      v93 = v0[57];
      OUTLINED_FUNCTION_145();
      v33 = swift_slowAlloc();
      OUTLINED_FUNCTION_149();
      v34 = swift_slowAlloc();
      v98[0] = v34;
      OUTLINED_FUNCTION_296(4.9654e-34);
      sub_1C04F5DF0();
      v35 = sub_1C04F5500();
      v37 = v36;
      (*(v32 + 8))(v31, v93);
      swift_endAccess();
      v38 = sub_1C047D76C(v35, v37, v98);

      *(v33 + 4) = v38;
      OUTLINED_FUNCTION_223(&dword_1C0479000, v39, v40, "fetched flight %{sensitive}s successfully");
      __swift_destroy_boxed_opaque_existential_1(v34);
      v41 = OUTLINED_FUNCTION_50();
      MEMORY[0x1C68DCEB0](v41);
      v42 = OUTLINED_FUNCTION_63();
      MEMORY[0x1C68DCEB0](v42);
    }

    v43 = v0[68];
    v76 = v0[64];
    v77 = v0[63];
    v44 = v0[61];
    v45 = v0[62];
    v46 = v0[60];
    v78 = v0[59];
    v79 = v0[56];
    v80 = v0[53];
    v81 = v0[52];
    v47 = v0[47];
    v82 = v0[51];
    v83 = v0[48];
    v84 = v0[46];
    v86 = v0[45];
    v48 = v0[43];
    v88 = v0[42];
    v90 = v0[41];
    v94 = v0[38];
    v49 = v0[32];
    *(v0[69] + qword_1EDE44718) = 2;
    sub_1C0483574();

    v95(v49, v47, v48);
    v43(v45, v46);

    OUTLINED_FUNCTION_150();
  }

  return v50();
}

uint64_t sub_1C0488EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_230();
  v19 = *(v18 + 568);
  *(v18 + 208) = v19;
  v20 = (v18 + 208);
  v21 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  OUTLINED_FUNCTION_238();
  v22 = swift_dynamicCast();
  v23 = *(v18 + 568);
  v24 = *(v18 + 552);
  if (v22)
  {

    v25 = *(v18 + 129);
    OUTLINED_FUNCTION_301(qword_1EDE44718);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    *v26 = v25;
    OUTLINED_FUNCTION_285();
  }

  else
  {

    OUTLINED_FUNCTION_301(qword_1EDE44718);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    *v27 = 0;
    OUTLINED_FUNCTION_285();
  }

  v29 = *(v18 + 504);
  v28 = *(v18 + 512);
  OUTLINED_FUNCTION_79();
  v30 = *(v18 + 376);
  v31 = *(v18 + 384);
  OUTLINED_FUNCTION_200();

  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_195();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C0489078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_230();
  v22 = *(v20 + 576);

  v23 = *(v20 + 592);
  OUTLINED_FUNCTION_321();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  if (swift_dynamicCast())
  {
    v24 = *(v19 - 86) == 9;
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
    v40 = *(v20 + 552);
    v41 = *(v20 + 544);
    v43 = *(v20 + 488);
    v42 = *(v20 + 496);
    v44 = *(v20 + 480);

    OUTLINED_FUNCTION_324(qword_1EDE44718);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    v45 = swift_allocError();
    OUTLINED_FUNCTION_221(v45, v46);

    v41(v42, v44);
  }

  else
  {
    v25 = *(v20 + 520);

    v26 = v23;
    v27 = sub_1C04F63E0();
    sub_1C04F6A20();

    if (OUTLINED_FUNCTION_323())
    {
      OUTLINED_FUNCTION_145();
      swift_slowAlloc();
      v28 = OUTLINED_FUNCTION_245();
      *v21 = 138412290;
      v29 = v23;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_313(v30);
      OUTLINED_FUNCTION_67();
      _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
      sub_1C04A12B4(v28, &qword_1EBE0CE38, &unk_1C04FB970);
      v36 = OUTLINED_FUNCTION_50();
      MEMORY[0x1C68DCEB0](v36);
      v37 = OUTLINED_FUNCTION_63();
      MEMORY[0x1C68DCEB0](v37);
    }

    v38 = *(v20 + 552);
    OUTLINED_FUNCTION_279();

    OUTLINED_FUNCTION_253(qword_1EDE44718);
    a14 = v23;
    swift_willThrow();
    v39 = OUTLINED_FUNCTION_131();
    v18(v39);
  }

  v48 = *(v20 + 504);
  v47 = *(v20 + 512);
  OUTLINED_FUNCTION_79();
  v49 = *(v20 + 376);
  v50 = *(v20 + 384);
  OUTLINED_FUNCTION_200();

  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_195();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C04892F4()
{
  v78 = v0;
  v1 = *(v0 + 624);
  *(v0 + 224) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  OUTLINED_FUNCTION_135();
  v3 = swift_dynamicCast();
  v4 = *(v0 + 624);
  if (v3)
  {
    v5 = *(v0 + 552);
    OUTLINED_FUNCTION_283();
    v6 = *(v0 + 480);
    OUTLINED_FUNCTION_300();
    v7 = *(v0 + 104);
    v8 = *(v0 + 112);
    v9 = *(v0 + 120);
    v10 = *(v0 + 128);
    v11 = OUTLINED_FUNCTION_159();
    sub_1C04B915C(v11, v12, v13, v14, v5);
    v15 = OUTLINED_FUNCTION_159();
    sub_1C0482080(v15, v16, v17, v18);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    OUTLINED_FUNCTION_298(v19, 7);

    v20 = OUTLINED_FUNCTION_294();
LABEL_8:
    v75(v20);
    goto LABEL_9;
  }

  *(v0 + 232) = v4;
  v21 = v4;
  v22 = OUTLINED_FUNCTION_251();
  v23 = *(v0 + 624);
  if (v22)
  {
    v24 = *(v0 + 552);
    OUTLINED_FUNCTION_283();
    v25 = *(v0 + 480);
    OUTLINED_FUNCTION_300();
    v26 = *(v0 + 184);
    v27 = *(v0 + 192);
    v28 = *(v0 + 200);
    v29 = OUTLINED_FUNCTION_227();
    sub_1C04B93C4(v29, v30, v31, v24);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    OUTLINED_FUNCTION_298(v32, 5);

    v33 = OUTLINED_FUNCTION_227();
    sub_1C0482070(v33, v34, v35);
    v36 = *(v0 + 232);
LABEL_7:

    v20 = OUTLINED_FUNCTION_193();
    goto LABEL_8;
  }

  *(v0 + 240) = v23;
  v37 = v23;
  v38 = OUTLINED_FUNCTION_251();
  v39 = *(v0 + 624);
  v40 = *(v0 + 552);
  if (v38)
  {
    OUTLINED_FUNCTION_283();
    v41 = *(v0 + 480);
    OUTLINED_FUNCTION_300();
    v42 = *(v0 + 131);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    v43 = swift_allocError();
    *v44 = v42;
    sub_1C04B9574(v43, v40);

    OUTLINED_FUNCTION_142();
    swift_allocError();
    *v45 = v42;
    swift_willThrow();

    v36 = *(v0 + 240);
    goto LABEL_7;
  }

  v52 = *(v0 + 520);

  *(v40 + qword_1EDE44718) = 51;
  sub_1C0483574();
  v53 = v39;
  v54 = sub_1C04F63E0();
  sub_1C04F6A20();

  if (os_log_type_enabled(v54, v40))
  {
    v55 = *(v0 + 624);
    OUTLINED_FUNCTION_145();
    v56 = swift_slowAlloc();
    OUTLINED_FUNCTION_149();
    v77 = swift_slowAlloc();
    *v56 = 136315138;
    *(v0 + 248) = v55;
    v57 = v55;
    v58 = sub_1C04F6790();
    v60 = sub_1C047D76C(v58, v59, &v77);

    *(v56 + 4) = v60;
    OUTLINED_FUNCTION_247(&dword_1C0479000, v61, v40, "search failure: %s");
    OUTLINED_FUNCTION_78();
    v62 = OUTLINED_FUNCTION_50();
    MEMORY[0x1C68DCEB0](v62);
  }

  v63 = *(v0 + 624);
  v64 = *(v0 + 552);
  v65 = *(v0 + 544);
  v67 = *(v0 + 488);
  v66 = *(v0 + 496);
  v68 = *(v0 + 480);
  sub_1C049FC7C();
  OUTLINED_FUNCTION_142();
  swift_allocError();
  OUTLINED_FUNCTION_298(v69, 1);

  v70 = OUTLINED_FUNCTION_131();
  v65(v70);
LABEL_9:
  v47 = *(v0 + 504);
  v46 = *(v0 + 512);
  OUTLINED_FUNCTION_79();
  v48 = *(v0 + 376);
  v49 = *(v0 + 384);
  v71 = *(v0 + 368);
  v72 = *(v0 + 360);
  v73 = *(v0 + 336);
  v74 = *(v0 + 328);
  v76 = *(v0 + 304);

  OUTLINED_FUNCTION_150();

  return v50();
}

uint64_t sub_1C0489740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 56) = a5;
  v13 = swift_task_alloc();
  *(v6 + 64) = v13;
  *v13 = v6;
  v13[1] = sub_1C048981C;

  return sub_1C048EA80(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1C048981C()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_77();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_49();
  *v7 = v6;
  *(v8 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_171();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_150();

    return v12();
  }
}

uint64_t sub_1C0489930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 56) = a5;
  v13 = swift_task_alloc();
  *(v6 + 64) = v13;
  *v13 = v6;
  v13[1] = sub_1C048981C;

  return sub_1C048FFC4(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1C0489A0C()
{
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_17(v0, v1, v2, v3, v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_109(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_12(v6);
  OUTLINED_FUNCTION_241();

  return sub_1C0491508(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1C0489A98()
{
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_17(v0, v1, v2, v3, v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_109(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_12(v6);
  OUTLINED_FUNCTION_241();

  return sub_1C0492A4C(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1C0489B24()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_77();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_49();
  *v7 = v6;
  *(v8 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_171();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_150();

    return v12();
  }
}

uint64_t sub_1C0489C38()
{
  OUTLINED_FUNCTION_172();
  sub_1C04A13B0(v0[7], (v0 + 2), &qword_1EBE0CE40, &qword_1C04F8900);
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[9];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    (*(v3 + 24))(v2, v1, v3);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  else
  {
    sub_1C04A12B4((v0 + 2), &qword_1EBE0CE40, &qword_1C04F8900);
  }

  v4 = v0[9];
  swift_willThrow();
  OUTLINED_FUNCTION_150();
  v6 = v0[9];

  return v5();
}

uint64_t sub_1C0489D20()
{
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_17(v0, v1, v2, v3, v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_109(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_12(v6);
  OUTLINED_FUNCTION_241();

  return sub_1C04940F4(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1C0489DAC()
{
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_17(v0, v1, v2, v3, v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_109(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_12(v6);
  OUTLINED_FUNCTION_241();

  return sub_1C0495638(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1C0489E38()
{
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_17(v0, v1, v2, v3, v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_109(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_12(v6);
  OUTLINED_FUNCTION_241();

  return sub_1C0496B7C(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1C0489EC4()
{
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_17(v0, v1, v2, v3, v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_109(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_12(v6);
  OUTLINED_FUNCTION_241();

  return sub_1C04980C0(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1C0489F50()
{
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_17(v0, v1, v2, v3, v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_109(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_12(v6);
  OUTLINED_FUNCTION_241();

  return sub_1C0499604(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1C0489FDC()
{
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_17(v0, v1, v2, v3, v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_109(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_12(v6);
  OUTLINED_FUNCTION_241();

  return sub_1C049AB48(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1C048A068()
{
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_17(v0, v1, v2, v3, v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_109(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_12(v6);
  OUTLINED_FUNCTION_241();

  return sub_1C049C08C(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1C048A0F4()
{
  OUTLINED_FUNCTION_172();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_81(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_226(v1);

  return sub_1C048A264();
}

uint64_t sub_1C048A184()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_49();
  *v4 = v3;

  OUTLINED_FUNCTION_150();

  return v5();
}

uint64_t sub_1C048A264()
{
  OUTLINED_FUNCTION_144();
  v1[33] = v2;
  v1[34] = v0;
  v1[32] = v3;
  v1[35] = *v0;
  v4 = sub_1C04F5B60();
  v1[36] = v4;
  OUTLINED_FUNCTION_66(v4);
  v1[37] = v5;
  v7 = *(v6 + 64);
  v1[38] = OUTLINED_FUNCTION_287();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE48, &qword_1C04F8440);
  OUTLINED_FUNCTION_2_1(v8);
  v10 = *(v9 + 64);
  v1[39] = OUTLINED_FUNCTION_287();
  v11 = sub_1C04F5BC0();
  v1[40] = v11;
  OUTLINED_FUNCTION_66(v11);
  v1[41] = v12;
  v14 = *(v13 + 64);
  v1[42] = OUTLINED_FUNCTION_286();
  v1[43] = swift_task_alloc();
  v15 = sub_1C04F60B0();
  v1[44] = v15;
  OUTLINED_FUNCTION_66(v15);
  v1[45] = v16;
  v18 = *(v17 + 64);
  v1[46] = OUTLINED_FUNCTION_286();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  OUTLINED_FUNCTION_2_1(v19);
  v21 = *(v20 + 64);
  v1[49] = OUTLINED_FUNCTION_287();
  v22 = sub_1C04F54F0();
  v1[50] = v22;
  OUTLINED_FUNCTION_66(v22);
  v1[51] = v23;
  v25 = *(v24 + 64);
  v1[52] = OUTLINED_FUNCTION_286();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v26 = sub_1C04F5530();
  v1[55] = v26;
  OUTLINED_FUNCTION_66(v26);
  v1[56] = v27;
  v29 = *(v28 + 64);
  v1[57] = OUTLINED_FUNCTION_287();
  v30 = sub_1C04F6060();
  v1[58] = v30;
  OUTLINED_FUNCTION_66(v30);
  v1[59] = v31;
  v33 = *(v32 + 64);
  v1[60] = OUTLINED_FUNCTION_286();
  v1[61] = swift_task_alloc();
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v34, v35, v36);
}

uint64_t sub_1C048A554()
{
  if (qword_1EBE0C998 != -1)
  {
    OUTLINED_FUNCTION_132();
  }

  v1 = v0[34];

  v2 = sub_1C04B7354();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_307();
  v3 = OUTLINED_FUNCTION_136();
  sub_1C049FB48(v3, v4, v5, 0xEA0000000000746ELL);
  sub_1C04B7390(v2);
  if (qword_1EBE0C990 != -1)
  {
    OUTLINED_FUNCTION_65();
  }

  v6 = v0[61];
  v8 = v0[58];
  v7 = v0[59];
  v9 = v0[33];
  v10 = sub_1C04F6400();
  v0[62] = __swift_project_value_buffer(v10, qword_1EBE0CDB0);
  v0[63] = *(v7 + 16);
  v0[64] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  OUTLINED_FUNCTION_237();
  v11();
  v12 = sub_1C04F63E0();
  v13 = sub_1C04F6A10();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[61];
  v17 = v0[58];
  v16 = v0[59];
  if (v14)
  {
    v18 = v0[56];
    v19 = v0[57];
    v36 = v0[55];
    OUTLINED_FUNCTION_145();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_149();
    v38 = swift_slowAlloc();
    *v20 = 136642819;
    v37 = v13;
    sub_1C04F6030();
    sub_1C04F5500();
    OUTLINED_FUNCTION_161();
    (*(v18 + 8))(v19, v36);
    v21 = *(v16 + 8);
    v22 = OUTLINED_FUNCTION_189();
    v21(v22);
    v23 = OUTLINED_FUNCTION_135();
    v26 = sub_1C047D76C(v23, v24, v25);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_1C0479000, v12, v37, "Subscribing to flight status updates for %{sensitive}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
  }

  else
  {

    v21 = *(v16 + 8);
    v27 = OUTLINED_FUNCTION_189();
    v21(v27);
  }

  v0[65] = v21;
  v28 = v0[34];
  sub_1C0487854(38);
  v0[66] = v29;
  v30 = swift_task_alloc();
  v0[67] = v30;
  *v30 = v0;
  OUTLINED_FUNCTION_246(v30);
  OUTLINED_FUNCTION_142();

  return sub_1C04B832C(v31, v32, v33, v34);
}

uint64_t sub_1C048A830()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_77();
  *v3 = v2;
  v5 = *(v4 + 536);
  v6 = *v1;
  OUTLINED_FUNCTION_49();
  *v7 = v6;
  *(v8 + 544) = v0;

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C048A928()
{
  OUTLINED_FUNCTION_144();
  v1 = *(v0 + 512);
  (*(v0 + 504))(*(v0 + 480), *(v0 + 264), *(v0 + 464));
  if (qword_1EDE42870 != -1)
  {
    OUTLINED_FUNCTION_225();
  }

  OUTLINED_FUNCTION_141();
  swift_beginAccess();
  *(v0 + 552) = qword_1EDE42878;

  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  *(v0 + 560) = v2;
  *v2 = v3;
  v2[1] = sub_1C048AA1C;
  v4 = *(v0 + 432);

  return sub_1C04D0E9C();
}

uint64_t sub_1C048AA1C()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  OUTLINED_FUNCTION_64();
  *v4 = v3;
  v6 = *(v5 + 560);
  v7 = *v1;
  OUTLINED_FUNCTION_49();
  *v8 = v7;
  *(v3 + 568) = v0;

  if (!v0)
  {
    v9 = *(v3 + 552);
  }

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C048AB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_230();
  v20 = *(v18 + 480);
  v21 = *(v18 + 432);
  v23 = *(v18 + 408);
  v22 = *(v18 + 416);
  v25 = *(v18 + 392);
  v24 = *(v18 + 400);
  sub_1C04F6040();
  OUTLINED_FUNCTION_319();
  v26 = *(v23 + 8);
  v27 = OUTLINED_FUNCTION_136();
  v26(v27);
  if (__swift_getEnumTagSinglePayload(v25, 1, v24) == 1)
  {
    v28 = *(v18 + 496);
    sub_1C04A12B4(*(v18 + 392), &qword_1EBE0CC70, &qword_1C04F8CB0);
    v29 = sub_1C04F63E0();
    v30 = sub_1C04F6A20();
    v31 = OUTLINED_FUNCTION_143();
    if (os_log_type_enabled(v31, v32))
    {
      OUTLINED_FUNCTION_154();
      v33 = swift_slowAlloc();
      OUTLINED_FUNCTION_158(v33);
      OUTLINED_FUNCTION_80(&dword_1C0479000, v34, v35, "unable to create unified query context");
      OUTLINED_FUNCTION_134();
      MEMORY[0x1C68DCEB0]();
    }

    v36 = *(v18 + 432);
    v37 = *(v18 + 400);

    v38 = sub_1C049FC7C();
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_142();
    v39 = swift_allocError();
    OUTLINED_FUNCTION_320(v39, v40);
    (v26)(v36, v37);
    *(v18 + 216) = v19;
    v41 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    if (OUTLINED_FUNCTION_297() && *(v18 + 130) == 9)
    {
      v42 = *(v18 + 528);
      OUTLINED_FUNCTION_280();

      OUTLINED_FUNCTION_324(qword_1EDE44718);
      OUTLINED_FUNCTION_142();
      v43 = swift_allocError();
      OUTLINED_FUNCTION_221(v43, v44);

      v45 = OUTLINED_FUNCTION_131();
      v30(v45);
    }

    else
    {
      v73 = *(v18 + 496);

      v74 = v19;
      v75 = sub_1C04F63E0();
      sub_1C04F6A20();

      if (OUTLINED_FUNCTION_323())
      {
        OUTLINED_FUNCTION_145();
        swift_slowAlloc();
        v76 = OUTLINED_FUNCTION_245();
        *v38 = 138412290;
        v77 = v19;
        v78 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_313(v78);
        OUTLINED_FUNCTION_67();
        _os_log_impl(v79, v80, v81, v82, v83, 0xCu);
        sub_1C04A12B4(v76, &qword_1EBE0CE38, &unk_1C04FB970);
        v84 = OUTLINED_FUNCTION_50();
        MEMORY[0x1C68DCEB0](v84);
        v85 = OUTLINED_FUNCTION_63();
        MEMORY[0x1C68DCEB0](v85);
      }

      v86 = *(v18 + 528);
      OUTLINED_FUNCTION_280();

      OUTLINED_FUNCTION_253(qword_1EDE44718);
      swift_willThrow();
      v87 = OUTLINED_FUNCTION_131();
      v30(v87);

      a14 = v19;
    }

    v89 = *(v18 + 480);
    v88 = *(v18 + 488);
    OUTLINED_FUNCTION_107();
    v90 = *(v18 + 368);
    v91 = *(v18 + 376);
    OUTLINED_FUNCTION_240();

    OUTLINED_FUNCTION_150();
    OUTLINED_FUNCTION_195();

    return v93(v92, v93, v94, v95, v96, v97, v98, v99, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v46 = *(v18 + 480);
    v48 = *(v18 + 424);
    v47 = *(v18 + 432);
    v50 = *(v18 + 408);
    v49 = *(v18 + 416);
    v51 = *(v18 + 392);
    v52 = *(v18 + 400);
    v53 = OUTLINED_FUNCTION_289();
    v54(v53);
    v55 = *(v50 + 16);
    v56 = OUTLINED_FUNCTION_192();
    v57(v56);
    sub_1C04F6050();
    (v26)(v48, v52);
    v58 = OUTLINED_FUNCTION_193();
    v26(v58);
    *(v18 + 576) = sub_1C047ACAC();
    if (qword_1EBE0C9A8 != -1)
    {
      swift_once();
    }

    v59 = *(v18 + 272);
    *(v18 + 584) = OUTLINED_FUNCTION_316(&qword_1EBE0CE08);
    OUTLINED_FUNCTION_288();
    OUTLINED_FUNCTION_315(&unk_1C04F8448);
    OUTLINED_FUNCTION_146();
    *(v18 + 592) = v60;
    *v60 = v61;
    v60[1] = sub_1C048AF88;
    v62 = *(v18 + 480);
    v63 = *(v18 + 376);
    OUTLINED_FUNCTION_304();
    OUTLINED_FUNCTION_195();

    return v70(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_1C048AF88()
{
  OUTLINED_FUNCTION_172();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_49();
  *v4 = v3;
  v5 = v2[74];
  *v4 = *v1;
  v3[75] = v0;

  v6 = v2[73];
  v7 = v2[72];

  sub_1C04A12B4((v3 + 8), &qword_1EBE0CE40, &qword_1C04F8900);
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C048B0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t), void (*a12)(void), uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_220();
  a25 = v28;
  a26 = v29;
  OUTLINED_FUNCTION_230();
  a24 = v26;
  v31 = v26[42];
  v30 = v26[43];
  v32 = v26[40];
  v33 = v26[41];
  (*(v26[45] + 32))(v26[48], v26[47], v26[44]);
  sub_1C04F5E90();
  (*(v33 + 104))(v31, *MEMORY[0x1E69BCED0], v32);
  OUTLINED_FUNCTION_217();
  sub_1C04A1764(v34, v35);
  v36 = OUTLINED_FUNCTION_302();
  v37 = *(v33 + 8);
  v38 = OUTLINED_FUNCTION_136();
  v37(v38);
  v39 = OUTLINED_FUNCTION_294();
  v37(v39);
  if (v36)
  {
    v40 = v26[62];
    (*(v26[45] + 16))(v26[46], v26[48], v26[44]);
    v41 = sub_1C04F63E0();
    sub_1C04F6A20();
    OUTLINED_FUNCTION_190();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v26[46];
    if (v43)
    {
      OUTLINED_FUNCTION_145();
      v45 = swift_slowAlloc();
      OUTLINED_FUNCTION_149();
      v46 = swift_slowAlloc();
      a14 = v46;
      *v45 = 136315138;
      if (sub_1C04F60A0())
      {
        v47 = v26[46];
        v49 = v26[37];
        v48 = v26[38];
        v50 = v26[36];
        sub_1C04F6080();
        v37 = sub_1C04F5B50();
        v44 = v51;
        v52 = *(v49 + 8);
        v53 = OUTLINED_FUNCTION_189();
        v54(v53);
      }

      else
      {
        OUTLINED_FUNCTION_308();
      }

      a12 = *(v26[45] + 8);
      (a12)(v26[46], v26[44]);
      v114 = sub_1C047D76C(v37, v44, &a14);

      *(v45 + 4) = v114;
      OUTLINED_FUNCTION_223(&dword_1C0479000, v115, v116, "subscribe token received status error: %s");
      __swift_destroy_boxed_opaque_existential_1(v46);
      v117 = OUTLINED_FUNCTION_50();
      MEMORY[0x1C68DCEB0](v117);
      v118 = OUTLINED_FUNCTION_63();
      MEMORY[0x1C68DCEB0](v118);
    }

    else
    {
      v86 = v26[44];
      v87 = v26[45];

      v88 = *(v87 + 8);
      v89 = OUTLINED_FUNCTION_160();
      a12 = v90;
      v90(v89);
    }

    v119 = v26[66];
    a11 = v26[65];
    OUTLINED_FUNCTION_306();
    OUTLINED_FUNCTION_301(qword_1EDE44718);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    OUTLINED_FUNCTION_233(v120, 6);

    v121 = OUTLINED_FUNCTION_231();
    a12(v121);
    v122 = OUTLINED_FUNCTION_282();
    a11(v122);
    goto LABEL_16;
  }

  v55 = v26[62];
  *(v26[66] + qword_1EDE44718) = 2;
  sub_1C0483574();
  v56 = sub_1C04F63E0();
  sub_1C04F6A10();
  OUTLINED_FUNCTION_190();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = v26[60];
    v60 = v26[56];
    v59 = v26[57];
    v61 = v26[55];
    OUTLINED_FUNCTION_145();
    v62 = swift_slowAlloc();
    OUTLINED_FUNCTION_149();
    v63 = swift_slowAlloc();
    a14 = v63;
    OUTLINED_FUNCTION_296(4.9654e-34);
    sub_1C04F6030();
    v64 = sub_1C04F5500();
    v66 = v65;
    v67 = *(v60 + 8);
    v27 = v60 + 8;
    v68 = OUTLINED_FUNCTION_231();
    v69(v68);
    swift_endAccess();
    v70 = sub_1C047D76C(v64, v66, &a14);

    *(v62 + 4) = v70;
    OUTLINED_FUNCTION_223(&dword_1C0479000, v71, v72, "successfully received subscription token for flight %{sensitive}s");
    __swift_destroy_boxed_opaque_existential_1(v63);
    v73 = OUTLINED_FUNCTION_50();
    MEMORY[0x1C68DCEB0](v73);
    v74 = OUTLINED_FUNCTION_63();
    MEMORY[0x1C68DCEB0](v74);
  }

  v75 = v26[48];
  v76 = v26[39];
  v77 = sub_1C04F6070();
  sub_1C048C2B4(v77, v76);

  v78 = sub_1C04F5F20();
  if (__swift_getEnumTagSinglePayload(v76, 1, v78) == 1)
  {
    v79 = v26[66];
    v80 = v26[65];
    OUTLINED_FUNCTION_306();
    sub_1C04A12B4(v26[39], &qword_1EBE0CE48, &qword_1C04F8440);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    OUTLINED_FUNCTION_233(v81, 10);

    v82 = *(v27 + 8);
    v83 = OUTLINED_FUNCTION_231();
    v84(v83);
    v85 = OUTLINED_FUNCTION_282();
    v80(v85);
LABEL_16:
    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_318();

    OUTLINED_FUNCTION_150();
    OUTLINED_FUNCTION_195();

    return v124(v123, v124, v125, v126, v127, v128, v129, v130, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  v91 = v26[48];
  v92 = v26[39];
  v93 = sub_1C04F5F10();
  v95 = v94;
  v26[76] = v94;
  v96 = *(*(v78 - 8) + 8);
  v97 = OUTLINED_FUNCTION_135();
  v98(v97);
  v99 = swift_task_alloc();
  v26[77] = v99;
  v99[2] = v93;
  v99[3] = v95;
  v99[4] = v91;
  v100 = *(MEMORY[0x1E69E8920] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  v26[78] = v101;
  *v101 = v102;
  v101[1] = sub_1C048B6C8;
  v103 = v26[44];
  v104 = v26[32];
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x1EEE6DE38](v105, v106, v107, v108, v109, v110, v111, v112);
}

uint64_t sub_1C048B6C8()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  OUTLINED_FUNCTION_64();
  *v4 = v3;
  v6 = *(v5 + 624);
  v7 = *v1;
  OUTLINED_FUNCTION_49();
  *v8 = v7;
  v3[79] = v0;

  if (!v0)
  {
    v9 = v3[77];
    v10 = v3[76];
  }

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C048B7D4()
{
  v1 = v0[66];
  v2 = v0[65];
  v4 = v0[60];
  v3 = v0[61];
  v6 = v0[58];
  v5 = v0[59];
  v7 = v0[57];
  v14 = v0[54];
  v15 = v0[53];
  v8 = v0[48];
  v16 = v0[52];
  v17 = v0[49];
  v18 = v0[47];
  v19 = v0[46];
  v10 = v0[44];
  v9 = v0[45];
  v20 = v0[43];
  v21 = v0[42];
  v22 = v0[39];
  v23 = v0[38];

  (*(v9 + 8))(v8, v10);
  v11 = OUTLINED_FUNCTION_189();
  v2(v11);

  OUTLINED_FUNCTION_150();

  return v12();
}

uint64_t sub_1C048B930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_230();
  v19 = *(v18 + 544);
  *(v18 + 208) = v19;
  v20 = (v18 + 208);
  v21 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  OUTLINED_FUNCTION_238();
  v22 = swift_dynamicCast();
  v23 = *(v18 + 544);
  v24 = *(v18 + 528);
  if (v22)
  {

    v25 = *(v18 + 129);
    OUTLINED_FUNCTION_301(qword_1EDE44718);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    *v26 = v25;
    OUTLINED_FUNCTION_285();
  }

  else
  {

    OUTLINED_FUNCTION_301(qword_1EDE44718);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    *v27 = 0;
    OUTLINED_FUNCTION_285();
  }

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_240();

  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_195();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C048BAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_230();
  v22 = *(v20 + 552);

  v23 = *(v20 + 568);
  OUTLINED_FUNCTION_321();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  if (swift_dynamicCast())
  {
    v24 = *(v19 - 86) == 9;
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
    v40 = *(v20 + 528);
    v41 = *(v20 + 520);
    v43 = *(v20 + 472);
    v42 = *(v20 + 480);
    v44 = *(v20 + 464);

    OUTLINED_FUNCTION_324(qword_1EDE44718);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    v45 = swift_allocError();
    OUTLINED_FUNCTION_221(v45, v46);

    v41(v42, v44);
  }

  else
  {
    v25 = *(v20 + 496);

    v26 = v23;
    v27 = sub_1C04F63E0();
    sub_1C04F6A20();

    if (OUTLINED_FUNCTION_323())
    {
      OUTLINED_FUNCTION_145();
      swift_slowAlloc();
      v28 = OUTLINED_FUNCTION_245();
      *v21 = 138412290;
      v29 = v23;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_313(v30);
      OUTLINED_FUNCTION_67();
      _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
      sub_1C04A12B4(v28, &qword_1EBE0CE38, &unk_1C04FB970);
      v36 = OUTLINED_FUNCTION_50();
      MEMORY[0x1C68DCEB0](v36);
      v37 = OUTLINED_FUNCTION_63();
      MEMORY[0x1C68DCEB0](v37);
    }

    v38 = *(v20 + 528);
    OUTLINED_FUNCTION_280();

    OUTLINED_FUNCTION_253(qword_1EDE44718);
    a14 = v23;
    swift_willThrow();
    v39 = OUTLINED_FUNCTION_131();
    v18(v39);
  }

  v48 = *(v20 + 480);
  v47 = *(v20 + 488);
  OUTLINED_FUNCTION_107();
  v49 = *(v20 + 368);
  v50 = *(v20 + 376);
  OUTLINED_FUNCTION_240();

  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_195();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C048BD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_220();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_230();
  a24 = v26;
  v29 = *(v26 + 600);
  *(v26 + 224) = v29;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  OUTLINED_FUNCTION_135();
  v31 = swift_dynamicCast();
  v32 = *(v26 + 600);
  if (v31)
  {
    v33 = *(v26 + 528);
    OUTLINED_FUNCTION_278();
    v34 = *(v26 + 464);
    OUTLINED_FUNCTION_300();
    v35 = *(v26 + 104);
    v36 = *(v26 + 112);
    v37 = *(v26 + 120);
    v38 = *(v26 + 128);
    v39 = OUTLINED_FUNCTION_159();
    sub_1C04B915C(v39, v40, v41, v42, v33);
    v43 = OUTLINED_FUNCTION_159();
    sub_1C0482080(v43, v44, v45, v46);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    OUTLINED_FUNCTION_233(v47, 7);

    v48 = OUTLINED_FUNCTION_294();
LABEL_8:
    a12(v48);
    goto LABEL_9;
  }

  *(v26 + 232) = v32;
  v49 = v32;
  v50 = OUTLINED_FUNCTION_251();
  v51 = *(v26 + 600);
  if (v50)
  {
    v52 = *(v26 + 528);
    OUTLINED_FUNCTION_278();
    v53 = *(v26 + 464);
    OUTLINED_FUNCTION_300();
    v54 = *(v26 + 184);
    v55 = *(v26 + 192);
    v56 = *(v26 + 200);
    v57 = OUTLINED_FUNCTION_227();
    sub_1C04B93C4(v57, v58, v59, v52);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    OUTLINED_FUNCTION_233(v60, 5);

    v61 = OUTLINED_FUNCTION_227();
    sub_1C0482070(v61, v62, v63);
    v64 = *(v26 + 232);
LABEL_7:

    v48 = OUTLINED_FUNCTION_193();
    goto LABEL_8;
  }

  *(v26 + 240) = v51;
  v65 = v51;
  v66 = OUTLINED_FUNCTION_251();
  v67 = *(v26 + 600);
  v68 = *(v26 + 528);
  if (v66)
  {
    OUTLINED_FUNCTION_278();
    v69 = *(v26 + 464);
    OUTLINED_FUNCTION_300();
    v70 = *(v26 + 131);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    v71 = swift_allocError();
    *v72 = v70;
    sub_1C04B9574(v71, v68);

    OUTLINED_FUNCTION_142();
    v73 = swift_allocError();
    *v74 = v70;
    a13 = v73;
    swift_willThrow();

    v64 = *(v26 + 240);
    goto LABEL_7;
  }

  v84 = *(v26 + 496);

  *(v68 + qword_1EDE44718) = 51;
  sub_1C0483574();
  v85 = v67;
  v86 = sub_1C04F63E0();
  sub_1C04F6A20();

  if (os_log_type_enabled(v86, v68))
  {
    v87 = *(v26 + 600);
    OUTLINED_FUNCTION_145();
    v88 = swift_slowAlloc();
    OUTLINED_FUNCTION_149();
    a14 = swift_slowAlloc();
    *v88 = 136315138;
    *(v26 + 248) = v87;
    v89 = v87;
    v90 = sub_1C04F6790();
    v92 = sub_1C047D76C(v90, v91, &a14);

    *(v88 + 4) = v92;
    OUTLINED_FUNCTION_247(&dword_1C0479000, v93, v68, "search failure: %s");
    OUTLINED_FUNCTION_78();
    v94 = OUTLINED_FUNCTION_50();
    MEMORY[0x1C68DCEB0](v94);
  }

  v95 = *(v26 + 600);
  v96 = *(v26 + 528);
  v97 = *(v26 + 520);
  v99 = *(v26 + 472);
  v98 = *(v26 + 480);
  v100 = *(v26 + 464);
  sub_1C049FC7C();
  OUTLINED_FUNCTION_142();
  swift_allocError();
  OUTLINED_FUNCTION_233(v101, 1);

  v102 = OUTLINED_FUNCTION_131();
  v97(v102);
LABEL_9:
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_318();

  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_195();

  return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C048C15C()
{
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[59];
  v5 = v0[60];
  v7 = v0[58];
  v8 = v0[48];
  v9 = v0[44];
  v10 = v0[45];

  v11 = OUTLINED_FUNCTION_82();
  v12(v11);
  v13 = OUTLINED_FUNCTION_136();
  v4(v13);
  v14 = v0[79];
  OUTLINED_FUNCTION_106();
  v17 = v0[43];
  v18 = v0[42];
  v19 = v0[39];
  v20 = v0[38];

  OUTLINED_FUNCTION_150();

  return v15();
}

uint64_t sub_1C048C2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1C04F5F20();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_1C048C5F0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C04F60B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_1EBE0C990 != -1)
    {
      swift_once();
    }

    v10 = sub_1C04F6400();
    __swift_project_value_buffer(v10, qword_1EBE0CDB0);
    v11 = a1;
    v12 = sub_1C04F63E0();
    v13 = sub_1C04F6A20();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = a1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1C0479000, v12, v13, "returning error from subscription %@", v14, 0xCu);
      sub_1C04A12B4(v15, &qword_1EBE0CE38, &unk_1C04FB970);
      MEMORY[0x1C68DCEB0](v15, -1, -1);
      MEMORY[0x1C68DCEB0](v14, -1, -1);
    }

    v24[1] = a1;
    v18 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEE8, &qword_1C04F8668);
    return sub_1C04F6950();
  }

  else
  {
    if (qword_1EBE0C990 != -1)
    {
      swift_once();
    }

    v20 = sub_1C04F6400();
    __swift_project_value_buffer(v20, qword_1EBE0CDB0);
    v21 = sub_1C04F63E0();
    v22 = sub_1C04F6A10();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C0479000, v21, v22, "returning flight subscription token response", v23, 2u);
      MEMORY[0x1C68DCEB0](v23, -1, -1);
    }

    (*(v6 + 16))(v9, a3, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEE8, &qword_1C04F8668);
    return sub_1C04F6960();
  }
}

uint64_t sub_1C048C8F4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D1B0, &qword_1C04F8450);
  v6 = OUTLINED_FUNCTION_2_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  v11 = sub_1C04F6980();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v2;
  v12[5] = a1;
  v12[6] = a2;

  sub_1C048CBF0(0, 0, v10, &unk_1C04F8460, v12);

  return sub_1C04A12B4(v10, &qword_1EBE0D1B0, &qword_1C04F8450);
}

uint64_t sub_1C048CA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v9 = swift_task_alloc();
  *(v6 + 24) = v9;
  *v9 = v6;
  v9[1] = sub_1C048CABC;

  return sub_1C048CEA8(a5, a6);
}

uint64_t sub_1C048CABC()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_77();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_49();
  *v7 = v6;
  *(v8 + 32) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C048CBBC()
{
  **(v0 + 16) = *(v0 + 32) != 0;
  OUTLINED_FUNCTION_150();
  return v1();
}

uint64_t sub_1C048CBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D1B0, &qword_1C04F8450);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v26 - v11;
  sub_1C04A13B0(a3, v26 - v11, &qword_1EBE0D1B0, &qword_1C04F8450);
  v13 = sub_1C04F6980();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C04A12B4(v12, &qword_1EBE0D1B0, &qword_1C04F8450);
  }

  else
  {
    sub_1C04F6970();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1C04F6940();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1C04F67B0() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD48, &qword_1C04F81F8);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      return v23;
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

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD48, &qword_1C04F81F8);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1C048CEA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  OUTLINED_FUNCTION_171();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C048CED4()
{
  OUTLINED_FUNCTION_188();
  if (qword_1EBE0C990 != -1)
  {
    OUTLINED_FUNCTION_65();
  }

  v1 = v0[3];
  v2 = sub_1C04F6400();
  __swift_project_value_buffer(v2, qword_1EBE0CDB0);
  OUTLINED_FUNCTION_147();

  v3 = sub_1C04F63E0();
  v4 = sub_1C04F6A10();

  if (OUTLINED_FUNCTION_243())
  {
    v6 = v0[2];
    v5 = v0[3];
    OUTLINED_FUNCTION_145();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_149();
    v25 = swift_slowAlloc();
    *v7 = 136315138;
    v8 = OUTLINED_FUNCTION_192();
    *(v7 + 4) = sub_1C047D76C(v8, v9, v10);
    OUTLINED_FUNCTION_247(&dword_1C0479000, v11, v4, "unsubscribing flight updates for channel %s");
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
    v12 = OUTLINED_FUNCTION_50();
    MEMORY[0x1C68DCEB0](v12);
  }

  v14 = v0[2];
  v13 = v0[3];
  v15 = swift_task_alloc();
  v0[4] = v15;
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v16 = *(MEMORY[0x1E69E8920] + 4);
  v17 = swift_task_alloc();
  v0[5] = v17;
  *v17 = v0;
  v17[1] = sub_1C048D0A4;
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DE38](v18, v19, v20, 0xD000000000000017, v21, v22, v15, v23);
}

uint64_t sub_1C048D0A4()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  OUTLINED_FUNCTION_64();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_49();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (!v0)
  {
    v9 = *(v3 + 32);
  }

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C048D1C8()
{
  OUTLINED_FUNCTION_144();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_150();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_1C048D400(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = a1;
    if (qword_1EBE0C990 != -1)
    {
      swift_once();
    }

    v6 = sub_1C04F6400();
    __swift_project_value_buffer(v6, qword_1EBE0CDB0);
    v7 = a1;
    v8 = sub_1C04F63E0();
    v9 = sub_1C04F6A20();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1C0479000, v8, v9, "Failed to unsubscribe from flight updates: %@", v10, 0xCu);
      sub_1C04A12B4(v11, &qword_1EBE0CE38, &unk_1C04FB970);
      MEMORY[0x1C68DCEB0](v11, -1, -1);
      MEMORY[0x1C68DCEB0](v10, -1, -1);
    }

    v22 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEE0, &qword_1C04F8640);
    return sub_1C04F6950();
  }

  else
  {
    if (qword_1EBE0C990 != -1)
    {
      swift_once();
    }

    v17 = sub_1C04F6400();
    __swift_project_value_buffer(v17, qword_1EBE0CDB0);

    v18 = sub_1C04F63E0();
    v19 = sub_1C04F6A10();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1C047D76C(a3, a4, &v22);
      _os_log_impl(&dword_1C0479000, v18, v19, "successfully unsubscribed flight updates for channel %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1C68DCEB0](v21, -1, -1);
      MEMORY[0x1C68DCEB0](v20, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEE0, &qword_1C04F8640);
    return sub_1C04F6960();
  }
}

uint64_t sub_1C048D6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  OUTLINED_FUNCTION_171();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C048D6F8()
{
  OUTLINED_FUNCTION_188();
  if (qword_1EBE0C990 != -1)
  {
    OUTLINED_FUNCTION_65();
  }

  v1 = v0[4];
  v2 = sub_1C04F6400();
  __swift_project_value_buffer(v2, qword_1EBE0CDB0);
  OUTLINED_FUNCTION_147();

  v3 = sub_1C04F63E0();
  v4 = sub_1C04F6A10();

  if (OUTLINED_FUNCTION_243())
  {
    v6 = v0[3];
    v5 = v0[4];
    OUTLINED_FUNCTION_145();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_149();
    v26 = swift_slowAlloc();
    *v7 = 136315138;
    v8 = OUTLINED_FUNCTION_192();
    *(v7 + 4) = sub_1C047D76C(v8, v9, v10);
    OUTLINED_FUNCTION_247(&dword_1C0479000, v11, v4, "fetching flight update for channel %s");
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
    v12 = OUTLINED_FUNCTION_50();
    MEMORY[0x1C68DCEB0](v12);
  }

  v14 = v0[3];
  v13 = v0[4];
  v15 = swift_task_alloc();
  v0[5] = v15;
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v16 = *(MEMORY[0x1E69E8920] + 4);
  v17 = swift_task_alloc();
  v0[6] = v17;
  sub_1C04F6020();
  *v17 = v0;
  v17[1] = sub_1C048D8D0;
  v18 = v0[2];
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DE38](v19, v20, v21, 0xD000000000000011, v22, v23, v15, v24);
}

uint64_t sub_1C048D8D0()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  OUTLINED_FUNCTION_64();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_49();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_171();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    OUTLINED_FUNCTION_150();

    return v13();
  }
}

uint64_t sub_1C048D9EC()
{
  OUTLINED_FUNCTION_144();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_150();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_1C048DC08(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v81 = a4;
  v79 = sub_1C04F6020();
  v77 = *(v79 - 8);
  v7 = *(v77 + 64);
  v8 = MEMORY[0x1EEE9AC00](v79);
  v78 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v69 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v69 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEC0, &qword_1C04F8630);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v69 - v19;
  v21 = sub_1C04F6300();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEC8, &qword_1C04F8638);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v69 - v25;
  v27 = sub_1C04F5D90();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 != 15)
  {
    v75 = v29;
    v84 = a1;
    v85 = a2;
    v83 = 0;
    memset(v82, 0, sizeof(v82));
    sub_1C04A12A0(a1, a2);
    v76 = a1;
    sub_1C048087C(a1, a2);
    sub_1C04F62F0();
    sub_1C04A1764(&qword_1EBE0CED0, MEMORY[0x1E69BD4C0]);
    sub_1C04F6360();
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v27);
    (*(v75 + 32))(v31, v26, v27);
    v41 = v20;
    sub_1C04F5D80();
    v42 = sub_1C04F5D70();
    if (__swift_getEnumTagSinglePayload(v20, 1, v42) != 1)
    {
      sub_1C04A13B0(v20, v18, &qword_1EBE0CEC0, &qword_1C04F8630);
      v43 = *(v42 - 8);
      if ((*(v43 + 88))(v18, v42) == *MEMORY[0x1E69BD4B0])
      {
        (*(v43 + 96))(v18, v42);
        v44 = v77;
        v45 = v79;
        v46 = v80;
        (*(v77 + 32))(v80, v18, v79);
        if (qword_1EBE0C990 != -1)
        {
          swift_once();
        }

        v47 = sub_1C04F6400();
        __swift_project_value_buffer(v47, qword_1EBE0CDB0);
        v74 = *(v44 + 16);
        v74(v12, v46, v45);
        v48 = sub_1C04F63E0();
        v73 = sub_1C04F6A10();
        if (os_log_type_enabled(v48, v73))
        {
          v49 = swift_slowAlloc();
          v72 = v49;
          v71 = swift_slowAlloc();
          *&v82[0] = v71;
          *v49 = 136642819;
          sub_1C04A1764(&qword_1EBE0CED8, MEMORY[0x1E69BDA60]);
          v70 = v48;
          v50 = sub_1C04F6370();
          v52 = v51;
          v77 = *(v44 + 8);
          (v77)(v12, v45);
          v53 = sub_1C047D76C(v50, v52, v82);
          v46 = v80;

          v54 = v72;
          *(v72 + 1) = v53;
          v55 = v70;
          _os_log_impl(&dword_1C0479000, v70, v73, "received flightPush in proxy: %{sensitive}s", v54, 0xCu);
          v56 = v71;
          __swift_destroy_boxed_opaque_existential_1(v71);
          MEMORY[0x1C68DCEB0](v56, -1, -1);
          MEMORY[0x1C68DCEB0](v72, -1, -1);
        }

        else
        {

          v77 = *(v44 + 8);
          (v77)(v12, v45);
        }

        v74(v78, v46, v45);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEB8, &qword_1C04F8628);
        sub_1C04F6960();
        sub_1C047E0BC(v76, a2);
        (v77)(v46, v45);
LABEL_26:
        (*(v75 + 8))(v31, v27);
        return sub_1C04A12B4(v41, &qword_1EBE0CEC0, &qword_1C04F8630);
      }

      (*(v43 + 8))(v18, v42);
    }

    if (qword_1EBE0C990 != -1)
    {
      swift_once();
    }

    v61 = sub_1C04F6400();
    __swift_project_value_buffer(v61, qword_1EBE0CDB0);
    v62 = sub_1C04F63E0();
    v63 = sub_1C04F6A20();
    v64 = os_log_type_enabled(v62, v63);
    v65 = v76;
    if (v64)
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_1C0479000, v62, v63, "push message received does not contain flights push payload", v66, 2u);
      MEMORY[0x1C68DCEB0](v66, -1, -1);
    }

    sub_1C049FC7C();
    v67 = swift_allocError();
    *v68 = 0;
    *&v82[0] = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEB8, &qword_1C04F8628);
    sub_1C04F6950();
    sub_1C047E0BC(v65, a2);
    goto LABEL_26;
  }

  if (qword_1EBE0C990 != -1)
  {
    swift_once();
  }

  v32 = sub_1C04F6400();
  __swift_project_value_buffer(v32, qword_1EBE0CDB0);
  v33 = a3;
  v34 = sub_1C04F63E0();
  v35 = sub_1C04F6A20();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    if (a3)
    {
      v38 = a3;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      v40 = v39;
    }

    else
    {
      v39 = 0;
      v40 = 0;
    }

    *(v36 + 4) = v39;
    *v37 = v40;
    _os_log_impl(&dword_1C0479000, v34, v35, "failed to get latest push, %@", v36, 0xCu);
    sub_1C04A12B4(v37, &qword_1EBE0CE38, &unk_1C04FB970);
    MEMORY[0x1C68DCEB0](v37, -1, -1);
    MEMORY[0x1C68DCEB0](v36, -1, -1);
  }

  v57 = a3;
  if (!a3)
  {
    sub_1C049FC7C();
    v57 = swift_allocError();
    *v58 = 0;
  }

  *&v82[0] = v57;
  v59 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEB8, &qword_1C04F8628);
  return sub_1C04F6950();
}

uint64_t PegasusProxyForFlightSearch.__deallocating_deinit()
{
  v0 = BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t sub_1C048E70C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C04A1810;

  return sub_1C04879BC();
}

uint64_t sub_1C048E7B8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C04A1810;

  return sub_1C048A0F4();
}

uint64_t sub_1C048E888(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C04A1810;

  return sub_1C048CEA8(a1, a2);
}

uint64_t sub_1C048E924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C04A1810;

  return sub_1C048D6C8(a1, a2, a3);
}

uint64_t sub_1C048E9D4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C04A1810;

  return sub_1C048A264();
}

uint64_t sub_1C048EA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v26 = *MEMORY[0x1E69E9840];
  *(v7 + 477) = a6;
  *(v7 + 240) = a5;
  *(v7 + 248) = v6;
  *(v7 + 224) = a3;
  *(v7 + 232) = a4;
  *(v7 + 208) = a1;
  *(v7 + 216) = a2;
  v8 = sub_1C04F61C0();
  *(v7 + 256) = v8;
  v9 = *(v8 - 8);
  *(v7 + 264) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 272) = swift_task_alloc();
  v11 = sub_1C04F62E0();
  *(v7 + 280) = v11;
  v12 = *(v11 - 8);
  *(v7 + 288) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 296) = swift_task_alloc();
  v14 = sub_1C04F5230();
  *(v7 + 304) = v14;
  v15 = *(v14 - 8);
  *(v7 + 312) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 320) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130) - 8) + 64) + 15;
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v18 = sub_1C04F5340();
  *(v7 + 344) = v18;
  v19 = *(v18 - 8);
  *(v7 + 352) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  v21 = sub_1C04F54B0();
  *(v7 + 392) = v21;
  v22 = *(v21 - 8);
  *(v7 + 400) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 408) = swift_task_alloc();
  v24 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C048ED50, 0, 0);
}

uint64_t sub_1C048FB94()
{
  OUTLINED_FUNCTION_172();
  v14 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *v1;
  OUTLINED_FUNCTION_49();
  *v7 = v6;
  *(v2 + 464) = v0;

  if (v0)
  {
    v8 = *(v2 + 424);
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C048FFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v26 = *MEMORY[0x1E69E9840];
  *(v7 + 477) = a6;
  *(v7 + 240) = a5;
  *(v7 + 248) = v6;
  *(v7 + 224) = a3;
  *(v7 + 232) = a4;
  *(v7 + 208) = a1;
  *(v7 + 216) = a2;
  v8 = sub_1C04F61C0();
  *(v7 + 256) = v8;
  v9 = *(v8 - 8);
  *(v7 + 264) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 272) = swift_task_alloc();
  v11 = sub_1C04F62E0();
  *(v7 + 280) = v11;
  v12 = *(v11 - 8);
  *(v7 + 288) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 296) = swift_task_alloc();
  v14 = sub_1C04F5230();
  *(v7 + 304) = v14;
  v15 = *(v14 - 8);
  *(v7 + 312) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 320) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130) - 8) + 64) + 15;
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v18 = sub_1C04F5340();
  *(v7 + 344) = v18;
  v19 = *(v18 - 8);
  *(v7 + 352) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  v21 = sub_1C04F54B0();
  *(v7 + 392) = v21;
  v22 = *(v21 - 8);
  *(v7 + 400) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 408) = swift_task_alloc();
  v24 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0490294, 0, 0);
}

uint64_t sub_1C04910D8()
{
  OUTLINED_FUNCTION_172();
  v14 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *v1;
  OUTLINED_FUNCTION_49();
  *v7 = v6;
  *(v2 + 464) = v0;

  if (v0)
  {
    v8 = *(v2 + 424);
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C0491508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v26 = *MEMORY[0x1E69E9840];
  *(v7 + 477) = a6;
  *(v7 + 240) = a5;
  *(v7 + 248) = v6;
  *(v7 + 224) = a3;
  *(v7 + 232) = a4;
  *(v7 + 208) = a1;
  *(v7 + 216) = a2;
  v8 = sub_1C04F61C0();
  *(v7 + 256) = v8;
  v9 = *(v8 - 8);
  *(v7 + 264) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 272) = swift_task_alloc();
  v11 = sub_1C04F62E0();
  *(v7 + 280) = v11;
  v12 = *(v11 - 8);
  *(v7 + 288) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 296) = swift_task_alloc();
  v14 = sub_1C04F5230();
  *(v7 + 304) = v14;
  v15 = *(v14 - 8);
  *(v7 + 312) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 320) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130) - 8) + 64) + 15;
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v18 = sub_1C04F5340();
  *(v7 + 344) = v18;
  v19 = *(v18 - 8);
  *(v7 + 352) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  v21 = sub_1C04F54B0();
  *(v7 + 392) = v21;
  v22 = *(v21 - 8);
  *(v7 + 400) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 408) = swift_task_alloc();
  v24 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C04917D8, 0, 0);
}

uint64_t sub_1C049261C()
{
  OUTLINED_FUNCTION_172();
  v14 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *v1;
  OUTLINED_FUNCTION_49();
  *v7 = v6;
  *(v2 + 464) = v0;

  if (v0)
  {
    v8 = *(v2 + 424);
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C0492A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v26 = *MEMORY[0x1E69E9840];
  *(v7 + 477) = a6;
  *(v7 + 240) = a5;
  *(v7 + 248) = v6;
  *(v7 + 224) = a3;
  *(v7 + 232) = a4;
  *(v7 + 208) = a1;
  *(v7 + 216) = a2;
  v8 = sub_1C04F61C0();
  *(v7 + 256) = v8;
  v9 = *(v8 - 8);
  *(v7 + 264) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 272) = swift_task_alloc();
  v11 = sub_1C04F62E0();
  *(v7 + 280) = v11;
  v12 = *(v11 - 8);
  *(v7 + 288) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 296) = swift_task_alloc();
  v14 = sub_1C04F5230();
  *(v7 + 304) = v14;
  v15 = *(v14 - 8);
  *(v7 + 312) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 320) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130) - 8) + 64) + 15;
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v18 = sub_1C04F5340();
  *(v7 + 344) = v18;
  v19 = *(v18 - 8);
  *(v7 + 352) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  v21 = sub_1C04F54B0();
  *(v7 + 392) = v21;
  v22 = *(v21 - 8);
  *(v7 + 400) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 408) = swift_task_alloc();
  v24 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0492D1C, 0, 0);
}

uint64_t sub_1C0493B60()
{
  OUTLINED_FUNCTION_172();
  v14 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *v1;
  OUTLINED_FUNCTION_49();
  *v7 = v6;
  *(v2 + 464) = v0;

  if (v0)
  {
    v8 = *(v2 + 424);
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C0493F90()
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = v0[56];
  v2 = v0[48];
  v3 = v0[43];
  v4 = v0[44];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[38];
  sub_1C04A1144(v0[55], v0[54]);
  v8 = OUTLINED_FUNCTION_83();
  v9(v8);
  v10 = OUTLINED_FUNCTION_135();
  v1(v10);
  sub_1C04A1144(v0[24], v0[25]);
  sub_1C04A1144(v0[22], v0[23]);
  v24 = v0[58];
  v11 = v0[51];
  v13 = v0[47];
  v12 = v0[48];
  v15 = v0[45];
  v14 = v0[46];
  v17 = v0[41];
  v16 = v0[42];
  v18 = v0[40];
  v19 = v0[37];
  v20 = v0[34];

  OUTLINED_FUNCTION_150();
  v22 = *MEMORY[0x1E69E9840];

  return v21();
}

uint64_t sub_1C04940F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v26 = *MEMORY[0x1E69E9840];
  *(v7 + 477) = a6;
  *(v7 + 240) = a5;
  *(v7 + 248) = v6;
  *(v7 + 224) = a3;
  *(v7 + 232) = a4;
  *(v7 + 208) = a1;
  *(v7 + 216) = a2;
  v8 = sub_1C04F61C0();
  *(v7 + 256) = v8;
  v9 = *(v8 - 8);
  *(v7 + 264) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 272) = swift_task_alloc();
  v11 = sub_1C04F62E0();
  *(v7 + 280) = v11;
  v12 = *(v11 - 8);
  *(v7 + 288) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 296) = swift_task_alloc();
  v14 = sub_1C04F5230();
  *(v7 + 304) = v14;
  v15 = *(v14 - 8);
  *(v7 + 312) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 320) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130) - 8) + 64) + 15;
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v18 = sub_1C04F5340();
  *(v7 + 344) = v18;
  v19 = *(v18 - 8);
  *(v7 + 352) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  v21 = sub_1C04F54B0();
  *(v7 + 392) = v21;
  v22 = *(v21 - 8);
  *(v7 + 400) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 408) = swift_task_alloc();
  v24 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C04943C4, 0, 0);
}

uint64_t sub_1C0495208()
{
  OUTLINED_FUNCTION_172();
  v14 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *v1;
  OUTLINED_FUNCTION_49();
  *v7 = v6;
  *(v2 + 464) = v0;

  if (v0)
  {
    v8 = *(v2 + 424);
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C0495638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v26 = *MEMORY[0x1E69E9840];
  *(v7 + 477) = a6;
  *(v7 + 240) = a5;
  *(v7 + 248) = v6;
  *(v7 + 224) = a3;
  *(v7 + 232) = a4;
  *(v7 + 208) = a1;
  *(v7 + 216) = a2;
  v8 = sub_1C04F61C0();
  *(v7 + 256) = v8;
  v9 = *(v8 - 8);
  *(v7 + 264) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 272) = swift_task_alloc();
  v11 = sub_1C04F62E0();
  *(v7 + 280) = v11;
  v12 = *(v11 - 8);
  *(v7 + 288) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 296) = swift_task_alloc();
  v14 = sub_1C04F5230();
  *(v7 + 304) = v14;
  v15 = *(v14 - 8);
  *(v7 + 312) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 320) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130) - 8) + 64) + 15;
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v18 = sub_1C04F5340();
  *(v7 + 344) = v18;
  v19 = *(v18 - 8);
  *(v7 + 352) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  v21 = sub_1C04F54B0();
  *(v7 + 392) = v21;
  v22 = *(v21 - 8);
  *(v7 + 400) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 408) = swift_task_alloc();
  v24 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0495908, 0, 0);
}

uint64_t sub_1C049674C()
{
  OUTLINED_FUNCTION_172();
  v14 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *v1;
  OUTLINED_FUNCTION_49();
  *v7 = v6;
  *(v2 + 464) = v0;

  if (v0)
  {
    v8 = *(v2 + 424);
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C0496B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v26 = *MEMORY[0x1E69E9840];
  *(v7 + 477) = a6;
  *(v7 + 240) = a5;
  *(v7 + 248) = v6;
  *(v7 + 224) = a3;
  *(v7 + 232) = a4;
  *(v7 + 208) = a1;
  *(v7 + 216) = a2;
  v8 = sub_1C04F61C0();
  *(v7 + 256) = v8;
  v9 = *(v8 - 8);
  *(v7 + 264) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 272) = swift_task_alloc();
  v11 = sub_1C04F62E0();
  *(v7 + 280) = v11;
  v12 = *(v11 - 8);
  *(v7 + 288) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 296) = swift_task_alloc();
  v14 = sub_1C04F5230();
  *(v7 + 304) = v14;
  v15 = *(v14 - 8);
  *(v7 + 312) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 320) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130) - 8) + 64) + 15;
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v18 = sub_1C04F5340();
  *(v7 + 344) = v18;
  v19 = *(v18 - 8);
  *(v7 + 352) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  v21 = sub_1C04F54B0();
  *(v7 + 392) = v21;
  v22 = *(v21 - 8);
  *(v7 + 400) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 408) = swift_task_alloc();
  v24 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0496E4C, 0, 0);
}

uint64_t sub_1C0497C90()
{
  OUTLINED_FUNCTION_172();
  v14 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *v1;
  OUTLINED_FUNCTION_49();
  *v7 = v6;
  *(v2 + 464) = v0;

  if (v0)
  {
    v8 = *(v2 + 424);
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C04980C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v26 = *MEMORY[0x1E69E9840];
  *(v7 + 477) = a6;
  *(v7 + 240) = a5;
  *(v7 + 248) = v6;
  *(v7 + 224) = a3;
  *(v7 + 232) = a4;
  *(v7 + 208) = a1;
  *(v7 + 216) = a2;
  v8 = sub_1C04F61C0();
  *(v7 + 256) = v8;
  v9 = *(v8 - 8);
  *(v7 + 264) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 272) = swift_task_alloc();
  v11 = sub_1C04F62E0();
  *(v7 + 280) = v11;
  v12 = *(v11 - 8);
  *(v7 + 288) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 296) = swift_task_alloc();
  v14 = sub_1C04F5230();
  *(v7 + 304) = v14;
  v15 = *(v14 - 8);
  *(v7 + 312) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 320) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130) - 8) + 64) + 15;
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v18 = sub_1C04F5340();
  *(v7 + 344) = v18;
  v19 = *(v18 - 8);
  *(v7 + 352) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  v21 = sub_1C04F54B0();
  *(v7 + 392) = v21;
  v22 = *(v21 - 8);
  *(v7 + 400) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 408) = swift_task_alloc();
  v24 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0498390, 0, 0);
}

uint64_t sub_1C04991D4()
{
  OUTLINED_FUNCTION_172();
  v14 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *v1;
  OUTLINED_FUNCTION_49();
  *v7 = v6;
  *(v2 + 464) = v0;

  if (v0)
  {
    v8 = *(v2 + 424);
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C0499604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v26 = *MEMORY[0x1E69E9840];
  *(v7 + 477) = a6;
  *(v7 + 240) = a5;
  *(v7 + 248) = v6;
  *(v7 + 224) = a3;
  *(v7 + 232) = a4;
  *(v7 + 208) = a1;
  *(v7 + 216) = a2;
  v8 = sub_1C04F61C0();
  *(v7 + 256) = v8;
  v9 = *(v8 - 8);
  *(v7 + 264) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 272) = swift_task_alloc();
  v11 = sub_1C04F62E0();
  *(v7 + 280) = v11;
  v12 = *(v11 - 8);
  *(v7 + 288) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 296) = swift_task_alloc();
  v14 = sub_1C04F5230();
  *(v7 + 304) = v14;
  v15 = *(v14 - 8);
  *(v7 + 312) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 320) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130) - 8) + 64) + 15;
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v18 = sub_1C04F5340();
  *(v7 + 344) = v18;
  v19 = *(v18 - 8);
  *(v7 + 352) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  v21 = sub_1C04F54B0();
  *(v7 + 392) = v21;
  v22 = *(v21 - 8);
  *(v7 + 400) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 408) = swift_task_alloc();
  v24 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C04998D4, 0, 0);
}

uint64_t sub_1C049A718()
{
  OUTLINED_FUNCTION_172();
  v14 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *v1;
  OUTLINED_FUNCTION_49();
  *v7 = v6;
  *(v2 + 464) = v0;

  if (v0)
  {
    v8 = *(v2 + 424);
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C049AB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v26 = *MEMORY[0x1E69E9840];
  *(v7 + 477) = a6;
  *(v7 + 240) = a5;
  *(v7 + 248) = v6;
  *(v7 + 224) = a3;
  *(v7 + 232) = a4;
  *(v7 + 208) = a1;
  *(v7 + 216) = a2;
  v8 = sub_1C04F61C0();
  *(v7 + 256) = v8;
  v9 = *(v8 - 8);
  *(v7 + 264) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 272) = swift_task_alloc();
  v11 = sub_1C04F62E0();
  *(v7 + 280) = v11;
  v12 = *(v11 - 8);
  *(v7 + 288) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 296) = swift_task_alloc();
  v14 = sub_1C04F5230();
  *(v7 + 304) = v14;
  v15 = *(v14 - 8);
  *(v7 + 312) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 320) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130) - 8) + 64) + 15;
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v18 = sub_1C04F5340();
  *(v7 + 344) = v18;
  v19 = *(v18 - 8);
  *(v7 + 352) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  v21 = sub_1C04F54B0();
  *(v7 + 392) = v21;
  v22 = *(v21 - 8);
  *(v7 + 400) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 408) = swift_task_alloc();
  v24 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C049AE18, 0, 0);
}

uint64_t sub_1C049BC5C()
{
  OUTLINED_FUNCTION_172();
  v14 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *v1;
  OUTLINED_FUNCTION_49();
  *v7 = v6;
  *(v2 + 464) = v0;

  if (v0)
  {
    v8 = *(v2 + 424);
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C049C08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v26 = *MEMORY[0x1E69E9840];
  *(v7 + 477) = a6;
  *(v7 + 240) = a5;
  *(v7 + 248) = v6;
  *(v7 + 224) = a3;
  *(v7 + 232) = a4;
  *(v7 + 208) = a1;
  *(v7 + 216) = a2;
  v8 = sub_1C04F61C0();
  *(v7 + 256) = v8;
  v9 = *(v8 - 8);
  *(v7 + 264) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 272) = swift_task_alloc();
  v11 = sub_1C04F62E0();
  *(v7 + 280) = v11;
  v12 = *(v11 - 8);
  *(v7 + 288) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 296) = swift_task_alloc();
  v14 = sub_1C04F5230();
  *(v7 + 304) = v14;
  v15 = *(v14 - 8);
  *(v7 + 312) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 320) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130) - 8) + 64) + 15;
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v18 = sub_1C04F5340();
  *(v7 + 344) = v18;
  v19 = *(v18 - 8);
  *(v7 + 352) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  v21 = sub_1C04F54B0();
  *(v7 + 392) = v21;
  v22 = *(v21 - 8);
  *(v7 + 400) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 408) = swift_task_alloc();
  v24 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C049C35C, 0, 0);
}

uint64_t sub_1C049D1A0()
{
  OUTLINED_FUNCTION_172();
  v14 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *v1;
  OUTLINED_FUNCTION_49();
  *v7 = v6;
  *(v2 + 464) = v0;

  if (v0)
  {
    v8 = *(v2 + 424);
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1C049D5D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, unint64_t *a6@<X6>, void (*a7)(uint64_t)@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v187 = a7;
  v186 = a6;
  v188 = a4;
  v185 = a8;
  v24 = sub_1C04F6300();
  v25 = OUTLINED_FUNCTION_2_1(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1();
  v28 = a5(0);
  v29 = OUTLINED_FUNCTION_0(v28);
  v184 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v34 = &v177 - v33;
  v189 = a1;
  v35 = sub_1C04F61B0();
  if (!v35)
  {
    goto LABEL_10;
  }

  v36 = v35;
  objc_opt_self();
  v37 = swift_dynamicCastObjCClass();
  if (!v37)
  {

LABEL_10:
    *&v193 = sub_1C04F61B0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE68, &unk_1C04F8580);
    v50 = sub_1C04F6790();
    v52 = v51;
    sub_1C04A0FF8();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    *v53 = v50;
    v53[1] = v52;
    v53[2] = 0;
    OUTLINED_FUNCTION_299(v53, 1);
    return;
  }

  v38 = v37;
  v183 = a2;
  v196 = 0u;
  v197 = 0u;
  if ([v37 statusCode] != 200)
  {
    v54 = v38;
    if (qword_1EDE44480 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v55 = sub_1C04F6400();
    __swift_project_value_buffer(v55, qword_1EDE44DB0);
    v56 = v36;
    v57 = sub_1C04F63E0();
    v58 = sub_1C04F6A10();
    v59 = OUTLINED_FUNCTION_143();
    if (os_log_type_enabled(v59, v60))
    {
      OUTLINED_FUNCTION_145();
      v61 = swift_slowAlloc();
      *v61 = 134217984;
      *(v61 + 4) = [v54 statusCode];

      _os_log_impl(&dword_1C0479000, v57, v58, "Non 200 HTTP status %ld", v61, 0xCu);
      v62 = OUTLINED_FUNCTION_63();
      MEMORY[0x1C68DCEB0](v62);
    }

    else
    {

      v57 = v56;
    }

    v63 = [v54 statusCode];
    v64 = v56;
    v65 = [v54 description];
    v66 = sub_1C04F6750();
    v68 = v67;

    sub_1C04A0FF8();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    *v69 = v63;
    v69[1] = v66;
    v69[2] = v68;
    v70 = OUTLINED_FUNCTION_299(v69, 2);
    OUTLINED_FUNCTION_191(v70, v71, &qword_1EBE0CE40, &qword_1C04F8900);
    if (*(&v194 + 1))
    {
      v72 = v195;
      v73 = __swift_project_boxed_opaque_existential_1(&v193, *(&v194 + 1));
      MEMORY[0x1EEE9AC00](v73);
      OUTLINED_FUNCTION_249();
      (*(v72 + 16))(&v196, 0, v54, 0, a19);

LABEL_38:
      sub_1C04A12B4(&v196, &qword_1EBE0CB20, &unk_1C04F8B20);
      __swift_destroy_boxed_opaque_existential_1(&v193);
      return;
    }

    sub_1C04A12B4(&v196, &qword_1EBE0CB20, &unk_1C04F8B20);

    goto LABEL_78;
  }

  v181 = a3;
  v39 = sub_1C04F6740();
  v182 = v38;
  v40 = [v38 valueForHTTPHeaderField_];

  if (v40)
  {
    v180 = v36;
    v41 = sub_1C04F6750();
    v43 = v42;

    v179 = v41;
    v44 = sub_1C048728C(v41, v43);
    if ((v45 & 1) == 0 && v44)
    {
      v187 = v44;
      v46 = sub_1C04F6740();
      v47 = [v182 valueForHTTPHeaderField_];

      if (v47)
      {
        v48 = sub_1C04F6750();
        v34 = v49;
      }

      else
      {
        v48 = 0;
        v34 = 0xE000000000000000;
      }

      v36 = v180;
      if (qword_1EDE44480 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v85 = sub_1C04F6400();
      __swift_project_value_buffer(v85, qword_1EDE44DB0);

      v86 = sub_1C04F63E0();
      sub_1C04F6A10();

      v87 = OUTLINED_FUNCTION_203();
      if (os_log_type_enabled(v87, v88))
      {
        OUTLINED_FUNCTION_155();
        v89 = swift_slowAlloc();
        *&v193 = swift_slowAlloc();
        *v89 = 136315394;
        v90 = sub_1C047D76C(v179, v43, &v193);

        *(v89 + 4) = v90;
        *(v89 + 12) = 2080;
        *(v89 + 14) = sub_1C047D76C(v48, v34, &v193);
        OUTLINED_FUNCTION_322(&dword_1C0479000, v91, v92, "RPC error: %s: %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_134();
        MEMORY[0x1C68DCEB0]();
        OUTLINED_FUNCTION_134();
        MEMORY[0x1C68DCEB0]();
      }

      else
      {
      }

      sub_1C04A0FF8();
      OUTLINED_FUNCTION_142();
      swift_allocError();
      *v93 = v187;
      v93[1] = v48;
      v93[2] = v34;
      v94 = OUTLINED_FUNCTION_299(v93, 3);
      OUTLINED_FUNCTION_191(v94, v95, &qword_1EBE0CE40, &qword_1C04F8900);
      if (*(&v194 + 1))
      {
        a17 = a18;
LABEL_36:
        v96 = OUTLINED_FUNCTION_219();
        MEMORY[0x1EEE9AC00](v96);
        OUTLINED_FUNCTION_249();
        (*(v34 + 2))(&v196, 0, v182, 0, a17);
        goto LABEL_37;
      }

      goto LABEL_77;
    }

    v36 = v180;
  }

  v191 = sub_1C04F61A0();
  v192 = v74;
  if (sub_1C04E2444(v191, v74))
  {
    sub_1C04A0FF8();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    v75[1] = 0;
    v75[2] = 0;
    *v75 = 0;
    OUTLINED_FUNCTION_299(v75, 5);
    v76 = sub_1C04A1144(v191, v192);
    OUTLINED_FUNCTION_191(v76, v77, &qword_1EBE0CE40, &qword_1C04F8900);
    if (*(&v194 + 1))
    {
      OUTLINED_FUNCTION_219();
      OUTLINED_FUNCTION_252();
      MEMORY[0x1EEE9AC00](v78);
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_305();
LABEL_23:
      v79();
LABEL_37:

      goto LABEL_38;
    }

LABEL_77:
    sub_1C04A12B4(&v196, &qword_1EBE0CB20, &unk_1C04F8B20);

LABEL_78:
    sub_1C04A12B4(&v193, &qword_1EBE0CE40, &qword_1C04F8900);
    return;
  }

  v80 = sub_1C049E6A8();
  if (v19)
  {
    v81 = sub_1C04A1144(v191, v192);
    OUTLINED_FUNCTION_191(v81, v82, &qword_1EBE0CE40, &qword_1C04F8900);
    if (*(&v194 + 1))
    {
      goto LABEL_36;
    }

    goto LABEL_77;
  }

  v84 = v80;
  v97 = bswap32(sub_1C049E82C());
  v180 = v97;
  v99 = v191;
  v98 = v192;
  if (MEMORY[0x1C68DAC70](v191, v192) != v97)
  {
    *&v193 = 0;
    *(&v193 + 1) = 0xE000000000000000;
    sub_1C04F6C40();
    MEMORY[0x1C68DC0D0](0xD000000000000018, 0x80000001C04FCC90);
    LODWORD(v190) = v97;
    v116 = sub_1C04F6D60();
    MEMORY[0x1C68DC0D0](v116);

    MEMORY[0x1C68DC0D0](0xD000000000000019, 0x80000001C04FCCB0);
    v190 = MEMORY[0x1C68DAC70](v191, v192);
    v117 = sub_1C04F6D60();
    MEMORY[0x1C68DC0D0](v117);

    v118 = v193;
    sub_1C04A0FF8();
    OUTLINED_FUNCTION_142();
    v119 = swift_allocError();
    *v120 = v118;
    *(v120 + 16) = 0;
    OUTLINED_FUNCTION_299(v120, 4);
    v121 = sub_1C04A1144(v191, v192);
    OUTLINED_FUNCTION_191(v121, v122, &qword_1EBE0CE40, &qword_1C04F8900);
    if (!*(&v194 + 1))
    {
      goto LABEL_77;
    }

    OUTLINED_FUNCTION_169();
    if ((v97 & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    __break(1u);
    OUTLINED_FUNCTION_0_2();
    swift_once();
    v155 = sub_1C04F6400();
    __swift_project_value_buffer(v155, qword_1EDE44DB0);
    v156 = v119;
    v157 = sub_1C04F63E0();
    v158 = sub_1C04F6A20();

    v159 = os_log_type_enabled(v157, v158);
    v178 = v97;
    if (v159)
    {
      OUTLINED_FUNCTION_145();
      v160 = swift_slowAlloc();
      OUTLINED_FUNCTION_149();
      v161 = swift_slowAlloc();
      *&v193 = v161;
      *v160 = 136315138;
      v198 = v119;
      v162 = v119;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
      v163 = sub_1C04F6790();
      v165 = sub_1C047D76C(v163, v164, &v193);

      *(v160 + 4) = v165;
      _os_log_impl(&dword_1C0479000, v157, v158, "Couldn't parse response data. Error: %s", v160, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v161);
      v166 = OUTLINED_FUNCTION_50();
      MEMORY[0x1C68DCEB0](v166);
      OUTLINED_FUNCTION_134();
      MEMORY[0x1C68DCEB0]();
    }

    swift_willThrow();
    v175 = sub_1C04A1144(v191, v192);
    OUTLINED_FUNCTION_191(v175, v176, &qword_1EBE0CE40, &qword_1C04F8900);
    if (!*(&v194 + 1))
    {
      goto LABEL_77;
    }

    OUTLINED_FUNCTION_219();
    if ((v179 & 0x80000000) == 0)
    {
LABEL_53:
      OUTLINED_FUNCTION_252();
      MEMORY[0x1EEE9AC00](v126);
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_305();
      goto LABEL_23;
    }

LABEL_81:
    __break(1u);
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v179 = v97;
  if (!v84)
  {
    goto LABEL_68;
  }

  v100 = v98;
  v178 = a12;
  if (qword_1EDE44480 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v101 = sub_1C04F6400();
  v177 = __swift_project_value_buffer(v101, qword_1EDE44DB0);
  v102 = sub_1C04F63E0();
  v103 = sub_1C04F6A10();
  v104 = OUTLINED_FUNCTION_143();
  if (os_log_type_enabled(v104, v105))
  {
    OUTLINED_FUNCTION_154();
    v106 = swift_slowAlloc();
    *v106 = 0;
    _os_log_impl(&dword_1C0479000, v102, v103, "Response indicates compressed payload, attempting to inflate", v106, 2u);
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
  }

  v107 = OUTLINED_FUNCTION_236();
  sub_1C048087C(v107, v108);
  v109 = sub_1C04CAAA4(v178, v99, v100);
  v110 = OUTLINED_FUNCTION_236();
  sub_1C04A1144(v110, v111);
  if ((v109 & 1) == 0)
  {
    sub_1C04A0FF8();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    *v123 = 0xD000000000000043;
    v123[1] = 0x80000001C04FCCD0;
    v123[2] = 0;
    OUTLINED_FUNCTION_299(v123, 4);
    v124 = sub_1C04A1144(v191, v192);
    OUTLINED_FUNCTION_191(v124, v125, &qword_1EBE0CE40, &qword_1C04F8900);
    if (!*(&v194 + 1))
    {
      goto LABEL_77;
    }

    OUTLINED_FUNCTION_169();
    if ((v179 & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    __break(1u);
    goto LABEL_81;
  }

  v112 = OUTLINED_FUNCTION_236();
  sub_1C048087C(v112, v113);
  v114 = OUTLINED_FUNCTION_236();
  v178 = sub_1C04E2498(v114, v115);
  v128 = v127;
  v129 = OUTLINED_FUNCTION_236();
  sub_1C04A1144(v129, v130);
  v131 = OUTLINED_FUNCTION_284();
  sub_1C048087C(v131, v132);
  v133 = sub_1C04F63E0();
  sub_1C04F6A10();
  v134 = OUTLINED_FUNCTION_143();
  if (os_log_type_enabled(v134, v135))
  {
    OUTLINED_FUNCTION_155();
    v136 = swift_slowAlloc();
    *v136 = 134218240;
    OUTLINED_FUNCTION_141();
    swift_beginAccess();
    v137 = 0;
    switch(v192 >> 62)
    {
      case 1uLL:
        OUTLINED_FUNCTION_202();
        if (v141)
        {
          goto LABEL_84;
        }

        v137 = v140;
        break;
      case 2uLL:
        OUTLINED_FUNCTION_201(v191);
        if (v141)
        {
          goto LABEL_85;
        }

        break;
      case 3uLL:
        break;
      default:
        v137 = BYTE6(v192);
        break;
    }

    *(v136 + 4) = v137;
    *(v136 + 12) = 2048;
    v142 = 0;
    switch(v128 >> 62)
    {
      case 1uLL:
        LODWORD(v142) = HIDWORD(v178) - v178;
        if (__OFSUB__(HIDWORD(v178), v178))
        {
          goto LABEL_86;
        }

        v142 = v142;
        break;
      case 2uLL:
        v144 = *(v178 + 16);
        v143 = *(v178 + 24);
        v141 = __OFSUB__(v143, v144);
        v142 = v143 - v144;
        if (v141)
        {
          goto LABEL_87;
        }

        break;
      case 3uLL:
        break;
      default:
        v142 = BYTE6(v128);
        break;
    }

    *(v136 + 14) = v142;
    v145 = OUTLINED_FUNCTION_284();
    sub_1C04A1144(v145, v146);
    OUTLINED_FUNCTION_322(&dword_1C0479000, v147, v148, "Response inflated in size from %ld to %ld");
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
  }

  else
  {
    v138 = OUTLINED_FUNCTION_284();
    sub_1C04A1144(v138, v139);
  }

  swift_beginAccess();
  v149 = v191;
  v150 = v192;
  v151 = v178;
  v191 = v178;
  v192 = v128;
  sub_1C048087C(v178, v128);
  sub_1C04A1144(v149, v150);
  v152 = MEMORY[0x1C68DAC70](v151, v128);
  v153 = v151;
  v154 = v152;
  sub_1C04A1144(v153, v128);
  if (v154 < 0)
  {
    goto LABEL_82;
  }

LABEL_68:
  OUTLINED_FUNCTION_141();
  swift_beginAccess();
  v195 = 0;
  v193 = 0u;
  v194 = 0u;
  sub_1C048087C(v191, v192);
  sub_1C04F62F0();
  sub_1C04A1764(v186, v187);
  sub_1C04F6340();
  *(&v194 + 1) = v28;
  __swift_allocate_boxed_opaque_existential_0(&v193);
  v167 = v184;
  v168 = *(v184 + 16);
  OUTLINED_FUNCTION_310();
  v169();
  sub_1C04A12B4(&v196, &qword_1EBE0CB20, &unk_1C04F8B20);
  v196 = v193;
  v197 = v194;
  v170 = *(v167 + 32);
  OUTLINED_FUNCTION_310();
  v171();
  v172 = sub_1C04A1144(v191, v192);
  OUTLINED_FUNCTION_191(v172, v173, &qword_1EBE0CE40, &qword_1C04F8900);
  v174 = v179;
  if (!*(&v194 + 1))
  {
    goto LABEL_77;
  }

  OUTLINED_FUNCTION_169();
  if ((v174 & 0x80000000) == 0)
  {
    goto LABEL_53;
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
}