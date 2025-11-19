uint64_t sub_2692DA408()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

id sub_2692DA488()
{
  v1 = *v0;
  if ((DeviceUnit.isRemote.getter() & 1) == 0)
  {

    return 0;
  }

  return v1;
}

uint64_t sub_2692DA544(uint64_t a1, uint64_t a2)
{
  v4 = sub_26932D640();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2692DA5B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26932D640();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_2692DA620(id result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return result;
  }

  return result;
}

void sub_2692DA634(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}

uint64_t sub_2692DA658()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2692DA6CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308670, &unk_269330810);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2692DA760()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308678, &qword_269330820);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2692DA918@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_26932C9C0();
  *a2 = v5;
  return result;
}

uint64_t sub_2692DAB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26932D6B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2692DABC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26932D6B0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2692DAC84()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2692DACBC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2692DAD70@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  result = sub_26932C120();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_2692DAE24(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2692DAEE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2692DAF90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2692DB04C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2692DB0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
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

    return (v10 + 1);
  }
}

uint64_t sub_2692DB1C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2692DB294()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2692DB324(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2692DB728()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2814B2398);
  v1 = __swift_project_value_buffer(v0, qword_2814B2398);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v10 = sub_26932C610();
  v9[11] = v10;
  v11 = *(v10 - 8);
  v9[12] = v11;
  v12 = *(v11 + 64) + 15;
  v9[13] = swift_task_alloc();
  v13 = sub_26932C390();
  v9[14] = v13;
  v14 = *(v13 - 8);
  v9[15] = v14;
  v15 = *(v14 + 64) + 15;
  v9[16] = swift_task_alloc();
  v9[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2692DB928, 0, 0);
}

uint64_t sub_2692DB928()
{
  v52 = v0;
  if (qword_2814B2390 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[10];
  v5 = v0[3];
  v6 = sub_26932D6B0();
  __swift_project_value_buffer(v6, qword_2814B2398);
  v7 = *(v3 + 16);
  v7(v1, v5, v2);
  v8 = v4;
  v9 = sub_26932D690();
  v10 = sub_26932D9B0();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[17];
  if (v11)
  {
    v45 = v0[16];
    v46 = v7;
    v48 = v10;
    v14 = v0[14];
    v13 = v0[15];
    v15 = v0[10];
    v16 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v51 = v47;
    *v16 = 136315394;
    v17 = [v15 catId];
    v18 = sub_26932D770();
    v20 = v19;

    v21 = sub_2692DD5A8(v18, v20, &v51);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v46(v45, v12, v14);
    v22 = sub_26932D790();
    v24 = v23;
    (*(v13 + 8))(v12, v14);
    v25 = sub_2692DD5A8(v22, v24, &v51);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_2692D8000, v9, v48, "#Response 2.0 dialog-only generation for catId=%s, dialogPhase=%s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v47, -1, -1);
    MEMORY[0x26D639280](v16, -1, -1);
  }

  else
  {
    v26 = v0[14];
    v27 = v0[15];

    (*(v27 + 8))(v12, v26);
  }

  v28 = v0[13];
  v29 = v0[10];
  v49 = v0[9];
  v31 = v0[7];
  v30 = v0[8];
  v32 = v0[6];
  v34 = v0[3];
  v33 = v0[4];
  v35 = sub_26932C490();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v0[18] = sub_26932C480();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D10, &qword_26932EA98);
  v38 = swift_allocObject();
  v0[19] = v38;
  *(v38 + 16) = xmmword_26932EA80;
  *(v38 + 32) = v29;
  v39 = v29;
  static OutputGenerationManifest.defaultManifest(for:contextUpdate:sessionID:responseViewId:dismissAssistant:shouldCoordinateWithSpeech:)(v34, v33, v32, v31, v30, v49, 0, v28);
  v40 = *(MEMORY[0x277D5BD50] + 4);
  v50 = (*MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50]);
  v41 = swift_task_alloc();
  v0[20] = v41;
  *v41 = v0;
  v41[1] = sub_2692DBCCC;
  v42 = v0[13];
  v43 = v0[2];

  return v50(v43, v38, v42);
}

uint64_t sub_2692DBCCC()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 104);
  v5 = *(*v0 + 96);
  v6 = *(*v0 + 88);
  v8 = *v0;

  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_2692DBE64, 0, 0);
}

uint64_t sub_2692DBE64()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[13];
  v4 = v0[5];
  SiriTimeMeasurement.logDelta()();

  v5 = v0[1];

  return v5();
}

uint64_t DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 288) = v19;
  *(v9 + 160) = v18;
  *(v9 + 168) = v8;
  *(v9 + 144) = a7;
  *(v9 + 152) = a8;
  *(v9 + 128) = a5;
  *(v9 + 136) = a6;
  *(v9 + 112) = a3;
  *(v9 + 120) = a4;
  *(v9 + 96) = a1;
  *(v9 + 104) = a2;
  v10 = sub_26932C610();
  *(v9 + 176) = v10;
  v11 = *(v10 - 8);
  *(v9 + 184) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 192) = swift_task_alloc();
  v13 = sub_26932C390();
  *(v9 + 200) = v13;
  v14 = *(v13 - 8);
  *(v9 + 208) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2692DC040, 0, 0);
}

uint64_t sub_2692DC040()
{
  v101 = v0;
  sub_2692DDB50(*(v0 + 120), v0 + 56);
  if (*(v0 + 80))
  {
    sub_2692DB324((v0 + 56), v0 + 16);
    if (qword_2814B2390 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 232);
    v2 = *(v0 + 200);
    v3 = *(v0 + 208);
    v4 = *(v0 + 168);
    v5 = *(v0 + 104);
    v6 = sub_26932D6B0();
    __swift_project_value_buffer(v6, qword_2814B2398);
    v7 = *(v3 + 16);
    v7(v1, v5, v2);
    v8 = v4;
    v9 = sub_26932D690();
    v10 = sub_26932D9B0();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 232);
    if (v11)
    {
      v87 = *(v0 + 224);
      v89 = v7;
      v94 = v10;
      v14 = *(v0 + 200);
      v13 = *(v0 + 208);
      v15 = *(v0 + 168);
      v16 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v100 = v91;
      *v16 = 136315394;
      v17 = [v15 catId];
      v18 = sub_26932D770();
      v20 = v19;

      v21 = sub_2692DD5A8(v18, v20, &v100);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2080;
      v89(v87, v12, v14);
      v22 = sub_26932D790();
      v24 = v23;
      (*(v13 + 8))(v12, v14);
      v25 = sub_2692DD5A8(v22, v24, &v100);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_2692D8000, v9, v94, "#Response 2.0 dialog/snippet generation for catId=%s, dialogPhase=%s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v91, -1, -1);
      MEMORY[0x26D639280](v16, -1, -1);
    }

    else
    {
      v49 = *(v0 + 200);
      v50 = *(v0 + 208);

      (*(v50 + 8))(v12, v49);
    }

    v51 = *(v0 + 192);
    v52 = *(v0 + 168);
    v53 = *(v0 + 144);
    v93 = *(v0 + 152);
    v96 = *(v0 + 160);
    v54 = *(v0 + 136);
    v56 = *(v0 + 104);
    v55 = *(v0 + 112);
    v57 = *(v0 + 288);
    v58 = sub_26932C490();
    v59 = *(v58 + 48);
    v60 = *(v58 + 52);
    swift_allocObject();
    *(v0 + 240) = sub_26932C480();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D10, &qword_26932EA98);
    v61 = swift_allocObject();
    *(v0 + 248) = v61;
    *(v61 + 16) = xmmword_26932EA80;
    *(v61 + 32) = v52;
    v62 = v52;
    static OutputGenerationManifest.defaultManifest(for:contextUpdate:sessionID:responseViewId:dismissAssistant:shouldCoordinateWithSpeech:)(v56, v55, v54, v53, v93, v96, 0, v51);
    v63 = *(MEMORY[0x277D5BD38] + 4);
    v97 = (*MEMORY[0x277D5BD38] + MEMORY[0x277D5BD38]);
    v64 = swift_task_alloc();
    *(v0 + 256) = v64;
    *v64 = v0;
    v64[1] = sub_2692DC778;
    v65 = *(v0 + 192);
    v66 = *(v0 + 96);

    return v97(v66, v0 + 16, v61, v65);
  }

  else
  {
    sub_2692DDBC0(v0 + 56);
    if (qword_2814B2390 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 208);
    v26 = *(v0 + 216);
    v28 = *(v0 + 200);
    v29 = *(v0 + 168);
    v30 = *(v0 + 104);
    v31 = sub_26932D6B0();
    __swift_project_value_buffer(v31, qword_2814B2398);
    v32 = *(v27 + 16);
    v32(v26, v30, v28);
    v33 = v29;
    v34 = sub_26932D690();
    v35 = sub_26932D9B0();

    if (os_log_type_enabled(v34, v35))
    {
      v88 = *(v0 + 224);
      v90 = *(v0 + 216);
      v92 = v32;
      v37 = *(v0 + 200);
      v36 = *(v0 + 208);
      v38 = *(v0 + 168);
      v39 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v100 = v95;
      *v39 = 136315394;
      v40 = [v38 catId];
      v41 = sub_26932D770();
      v43 = v42;

      v44 = sub_2692DD5A8(v41, v43, &v100);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2080;
      v92(v88, v90, v37);
      v45 = sub_26932D790();
      v47 = v46;
      (*(v36 + 8))(v90, v37);
      v48 = sub_2692DD5A8(v45, v47, &v100);

      *(v39 + 14) = v48;
      _os_log_impl(&dword_2692D8000, v34, v35, "#Response 2.0 dialog-only generation for catId=%s, dialogPhase=%s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v95, -1, -1);
      MEMORY[0x26D639280](v39, -1, -1);
    }

    else
    {
      v69 = *(v0 + 208);
      v68 = *(v0 + 216);
      v70 = *(v0 + 200);

      (*(v69 + 8))(v68, v70);
    }

    v71 = *(v0 + 192);
    v72 = *(v0 + 168);
    v98 = *(v0 + 160);
    v74 = *(v0 + 144);
    v73 = *(v0 + 152);
    v75 = *(v0 + 136);
    v77 = *(v0 + 104);
    v76 = *(v0 + 112);
    v78 = sub_26932C490();
    v79 = *(v78 + 48);
    v80 = *(v78 + 52);
    swift_allocObject();
    *(v0 + 264) = sub_26932C480();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D10, &qword_26932EA98);
    v81 = swift_allocObject();
    *(v0 + 272) = v81;
    *(v81 + 16) = xmmword_26932EA80;
    *(v81 + 32) = v72;
    v82 = v72;
    static OutputGenerationManifest.defaultManifest(for:contextUpdate:sessionID:responseViewId:dismissAssistant:shouldCoordinateWithSpeech:)(v77, v76, v75, v74, v73, v98, 0, v71);
    v83 = *(MEMORY[0x277D5BD50] + 4);
    v99 = (*MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50]);
    v84 = swift_task_alloc();
    *(v0 + 280) = v84;
    *v84 = v0;
    v84[1] = sub_2692DC9A8;
    v85 = *(v0 + 192);
    v86 = *(v0 + 96);

    return v99(v86, v81, v85);
  }
}

uint64_t sub_2692DC778()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 240);
  v4 = *(*v0 + 192);
  v5 = *(*v0 + 184);
  v6 = *(*v0 + 176);
  v8 = *v0;

  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_2692DC910, 0, 0);
}

uint64_t sub_2692DC910()
{
  v1 = v0[16];
  SiriTimeMeasurement.logDelta()();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  v5 = v0[24];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2692DC9A8()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);
  v4 = *(*v0 + 192);
  v5 = *(*v0 + 184);
  v6 = *(*v0 + 176);
  v8 = *v0;

  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_2692DCB40, 0, 0);
}

uint64_t sub_2692DCB40()
{
  v1 = v0[16];
  SiriTimeMeasurement.logDelta()();
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  v5 = v0[24];

  v6 = v0[1];

  return v6();
}

uint64_t DialogExecutionResult.generateConversationOutput(dialogPhase:context:conversationModel:measure:sessionID:responseViewId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = v18;
  v9[11] = v8;
  v9[8] = a7;
  v9[9] = a8;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;
  v10 = sub_26932C610();
  v9[12] = v10;
  v11 = *(v10 - 8);
  v9[13] = v11;
  v12 = *(v11 + 64) + 15;
  v9[14] = swift_task_alloc();
  v13 = sub_26932C390();
  v9[15] = v13;
  v14 = *(v13 - 8);
  v9[16] = v14;
  v15 = *(v14 + 64) + 15;
  v9[17] = swift_task_alloc();
  v9[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2692DCD10, 0, 0);
}

uint64_t sub_2692DCD10()
{
  v53 = v0;
  if (qword_2814B2390 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[11];
  v5 = v0[3];
  v6 = sub_26932D6B0();
  __swift_project_value_buffer(v6, qword_2814B2398);
  v7 = *(v3 + 16);
  v7(v1, v5, v2);
  v8 = v4;
  v9 = sub_26932D690();
  v10 = sub_26932D9B0();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[18];
  if (v11)
  {
    v46 = v0[17];
    v47 = v7;
    v49 = v10;
    v14 = v0[15];
    v13 = v0[16];
    v15 = v0[11];
    v16 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v52 = v48;
    *v16 = 136315394;
    v17 = [v15 catId];
    v18 = sub_26932D770();
    v20 = v19;

    v21 = sub_2692DD5A8(v18, v20, &v52);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v47(v46, v12, v14);
    v22 = sub_26932D790();
    v24 = v23;
    (*(v13 + 8))(v12, v14);
    v25 = sub_2692DD5A8(v22, v24, &v52);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_2692D8000, v9, v49, "#Response 2.0 dialog/snippet conversation space generation for catId=%s, dialogPhase=%s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v48, -1, -1);
    MEMORY[0x26D639280](v16, -1, -1);
  }

  else
  {
    v26 = v0[15];
    v27 = v0[16];

    (*(v27 + 8))(v12, v26);
  }

  v28 = v0[14];
  v29 = v0[11];
  v50 = v0[10];
  v31 = v0[8];
  v30 = v0[9];
  v32 = v0[7];
  v34 = v0[3];
  v33 = v0[4];
  v35 = sub_26932C490();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v0[19] = sub_26932C480();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D10, &qword_26932EA98);
  v38 = swift_allocObject();
  v0[20] = v38;
  *(v38 + 16) = xmmword_26932EA80;
  *(v38 + 32) = v29;
  v39 = v29;
  static OutputGenerationManifest.defaultManifest(for:contextUpdate:sessionID:responseViewId:dismissAssistant:shouldCoordinateWithSpeech:)(v34, v33, v32, v31, v30, v50, 0, v28);
  v40 = *(MEMORY[0x277D5BD40] + 4);
  v51 = (*MEMORY[0x277D5BD40] + MEMORY[0x277D5BD40]);
  v41 = swift_task_alloc();
  v0[21] = v41;
  *v41 = v0;
  v41[1] = sub_2692DD0B8;
  v42 = v0[14];
  v43 = v0[5];
  v44 = v0[2];

  return v51(v44, v43, v38, v42);
}

uint64_t sub_2692DD0B8()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 112);
  v5 = *(*v0 + 104);
  v6 = *(*v0 + 96);
  v8 = *v0;

  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_2692DD250, 0, 0);
}

uint64_t sub_2692DD250()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[14];
  v4 = v0[6];
  SiriTimeMeasurement.logDelta()();

  v5 = v0[1];

  return v5();
}

uint64_t Output.generateFlow()(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  (*(v5 + 32))(v8 + v7, v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_26932C580();
  v9 = sub_26932C190();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v14[1] = sub_26932C180();
  v12 = sub_26932C1E0();

  return v12;
}

uint64_t sub_2692DD460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2692DD484, 0, 0);
}

uint64_t sub_2692DD484()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v6 = *(v0 + 32);
  *(v1 + 24) = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_2692DD5A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2692DD674(v11, 0, 0, 1, a1, a2);
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
    sub_2692DDEB4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2692DD674(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2692DD780(a5, a6);
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
    result = sub_26932DBD0();
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

uint64_t sub_2692DD780(uint64_t a1, unint64_t a2)
{
  v4 = sub_2692DD7CC(a1, a2);
  sub_2692DD8FC(&unk_2879E7EA0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2692DD7CC(uint64_t a1, unint64_t a2)
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

  v6 = sub_2692DD9E8(v5, 0);
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

  result = sub_26932DBD0();
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
        v10 = sub_26932D810();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2692DD9E8(v10, 0);
        result = sub_26932DB50();
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

uint64_t sub_2692DD8FC(uint64_t result)
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

  result = sub_2692DDA5C(result, v12, 1, v3);
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

void *sub_2692DD9E8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280307D80, &qword_26932EAC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2692DDA5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280307D80, &qword_26932EAC8);
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

uint64_t sub_2692DDB50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D18, &qword_26932EAA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2692DDBC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D18, &qword_26932EAA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2692DDC28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2692DDD10;

  return sub_2692DD460(a1, v1 + v6, v4, v5);
}

uint64_t sub_2692DDD10()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2692DDEB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_2692DDF78()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2814B2408);
  v1 = __swift_project_value_buffer(v0, qword_2814B2408);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

const char *sub_2692DE040(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = "timer_RF";
    v7 = "cross_device";
    v8 = "multiTimeriOS";
    if (a1 != 3)
    {
      v8 = "timer_bobcat_locale_expansion";
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = "confirmations_RF";
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = "alarm_smart";
    v2 = "week_of_year";
    if (a1 != 9)
    {
      v2 = "clock_smart";
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = "uod_asr_on_server_enabled_homepod";
    v4 = "suggestion_hints";
    if (a1 != 6)
    {
      v4 = "sleep_timers_tvOS";
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2692DE14C()
{
  v1 = *v0;
  sub_26932DF50();
  MEMORY[0x26D638C20](v1);
  return sub_26932DF70();
}

uint64_t sub_2692DE194()
{
  v1 = *v0;
  sub_26932DF50();
  MEMORY[0x26D638C20](v1);
  return sub_26932DF70();
}

const char *sub_2692DE1D8()
{
  if (*v0 == 5)
  {
    return "Siri";
  }

  else
  {
    return "SiriTime";
  }
}

uint64_t sub_2692DE26C(char a1, const char *a2)
{
  v10[3] = &type metadata for Features;
  v10[4] = sub_2692DE634();
  LOBYTE(v10[0]) = a1;
  v4 = sub_26932C710();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  if (v4)
  {
    if (qword_2814B2400 != -1)
    {
      swift_once();
    }

    v5 = sub_26932D6B0();
    __swift_project_value_buffer(v5, qword_2814B2408);
    v6 = sub_26932D690();
    v7 = sub_26932D9B0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2692D8000, v6, v7, a2, v8, 2u);
      MEMORY[0x26D639280](v8, -1, -1);
    }
  }

  return v4 & 1;
}

uint64_t sub_2692DE3B4(char a1, const char *a2)
{
  v10[3] = &type metadata for Features;
  v10[4] = sub_2692DE634();
  LOBYTE(v10[0]) = a1;
  v4 = sub_26932C710();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  if (qword_2814B2400 != -1)
  {
    swift_once();
  }

  v5 = sub_26932D6B0();
  __swift_project_value_buffer(v5, qword_2814B2408);
  v6 = sub_26932D690();
  v7 = sub_26932D9B0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v4 & 1;
    _os_log_impl(&dword_2692D8000, v6, v7, a2, v8, 8u);
    MEMORY[0x26D639280](v8, -1, -1);
  }

  return v4 & 1;
}

uint64_t sub_2692DE4F0(char a1, const char *a2)
{
  v11[3] = &type metadata for Features;
  v11[4] = sub_2692DE634();
  LOBYTE(v11[0]) = a1;
  v4 = sub_26932C710();
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  if (v4)
  {
    v5 = _s16SiriTimeInternal0aB16FeatureFlagsImplV19isTimerSmartEnabledSbyF_0();
  }

  else
  {
    v5 = 0;
  }

  if (qword_2814B2400 != -1)
  {
    swift_once();
  }

  v6 = sub_26932D6B0();
  __swift_project_value_buffer(v6, qword_2814B2408);
  v7 = sub_26932D690();
  v8 = sub_26932D9B0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v5 & 1;
    _os_log_impl(&dword_2692D8000, v7, v8, a2, v9, 8u);
    MEMORY[0x26D639280](v9, -1, -1);
  }

  return v5 & 1;
}

unint64_t sub_2692DE634()
{
  result = qword_2814B2338;
  if (!qword_2814B2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B2338);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriTimeFeatureFlagsImpl(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SiriTimeFeatureFlagsImpl(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Features(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Features(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2692DE8D0()
{
  result = qword_2803080F0;
  if (!qword_2803080F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803080F0);
  }

  return result;
}

uint64_t sub_2692DE924()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2803080F8);
  v1 = __swift_project_value_buffer(v0, qword_2803080F8);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t String.toDismissSnoozeId.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_26932BD00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308110, &qword_26932EBD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  sub_26932BF50();
  v13 = sub_26932BFA0();
  v14 = (*(*(v13 - 8) + 48))(v12, 1, v13);
  sub_2692DEDE4(v12);
  if (v14 != 1)
  {
    if (qword_280307C18 != -1)
    {
      swift_once();
    }

    v22 = sub_26932D6B0();
    __swift_project_value_buffer(v22, qword_2803080F8);
    v23 = sub_26932D690();
    v24 = sub_26932D9B0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2692D8000, v23, v24, "[toDismissSnoozeId] Alarm/Timer ID is already a UUID - not modifying", v25, 2u);
      MEMORY[0x26D639280](v25, -1, -1);
    }

    return a1;
  }

  *&v31 = a1;
  *(&v31 + 1) = a2;
  v15 = sub_2692DEE4C();
  v16 = MEMORY[0x26D638760](61, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v15);
  if (*(v16 + 16) != 2)
  {

    if (qword_280307C18 != -1)
    {
      swift_once();
    }

    v26 = sub_26932D6B0();
    __swift_project_value_buffer(v26, qword_2803080F8);

    v27 = sub_26932D690();
    v28 = sub_26932D9A0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v31 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_2692DD5A8(a1, a2, &v31);
      _os_log_impl(&dword_2692D8000, v27, v28, "Bad alarm/timer identifier: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x26D639280](v30, -1, -1);
      MEMORY[0x26D639280](v29, -1, -1);
    }

    return 0;
  }

  v17 = *(v16 + 80);
  v18 = *(v16 + 88);
  v31 = *(v16 + 64);
  v32 = v17;
  v33 = v18;

  sub_26932BCE0();
  sub_2692DEEA0();
  a1 = sub_26932DA70();
  v20 = v19;
  result = (*(v5 + 8))(v8, v4);
  if (v20)
  {

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2692DEDE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308110, &qword_26932EBD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2692DEE4C()
{
  result = qword_280308118;
  if (!qword_280308118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308118);
  }

  return result;
}

unint64_t sub_2692DEEA0()
{
  result = qword_280308120;
  if (!qword_280308120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308120);
  }

  return result;
}

uint64_t sub_2692DEEF4()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308128);
  v1 = __swift_project_value_buffer(v0, qword_280308128);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static DialogActBuilder.buildPromptValueDialogActFrom(_:forDomain:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a2;
  v52 = a3;
  v53 = a4;
  v5 = sub_26932C830();
  v50 = *(v5 - 8);
  v6 = *(v50 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  v12 = sub_26932C720();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308140, &unk_26932EBE0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v45 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D10, &qword_26932EA98);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26932EA80;
  *(v24 + 32) = a1;
  v25 = sub_26932C9E0();
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);

  v26 = MEMORY[0x26D637670](v24, v23);

  sub_2692DF674(v23);
  sub_26932C940();
  v46 = v17;
  v47 = v5;
  v48 = v9;
  v49 = v12;
  if (qword_280307C20 != -1)
  {
    swift_once();
  }

  v27 = sub_26932D6B0();
  __swift_project_value_buffer(v27, qword_280308128);
  v28 = v52;

  v29 = sub_26932D690();
  v30 = sub_26932D9B0();

  v31 = v13;
  if (os_log_type_enabled(v29, v30))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v55[0] = v33;
    *v32 = 136315394;
    *(v32 + 4) = sub_2692DD5A8(v51, v28, v55);
    *(v32 + 12) = 2080;
    v54 = v26;
    sub_26932D060();
    sub_2692DFF94();
    v34 = sub_26932DDD0();
    v36 = sub_2692DD5A8(v34, v35, v55);

    *(v32 + 14) = v36;
    _os_log_impl(&dword_2692D8000, v29, v30, "#%sNLContextUpdateFactory sending SystemPrompted dialog act with graph: %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v33, -1, -1);
    MEMORY[0x26D639280](v32, -1, -1);
  }

  v38 = v48;
  v37 = v49;
  v39 = v46;
  sub_26932C820();
  (*(v31 + 16))(v39, v19, v37);
  sub_26932C810();
  sub_26932C8B0();
  v40 = v50;
  v41 = v31;
  v42 = v47;
  (*(v50 + 16))(v38, v11, v47);
  sub_26932C8A0();

  (*(v40 + 8))(v11, v42);
  (*(v41 + 8))(v19, v37);
  v43 = sub_26932C8C0();
  return (*(*(v43 - 8) + 56))(v53, 0, 1, v43);
}

uint64_t sub_2692DF674(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308140, &unk_26932EBE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static DialogActBuilder.buildPromptConfirmationDialogActFrom(_:forDomain:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a2;
  v78 = a3;
  v80 = a4;
  v5 = sub_26932C770();
  v75 = *(v5 - 8);
  v76 = v5;
  v6 = *(v75 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v72 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v73 = &v61 - v9;
  v74 = sub_26932C800();
  v67 = *(v74 - 8);
  v10 = *(v67 + 64);
  v11 = MEMORY[0x28223BE20](v74);
  v68 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v71 = &v61 - v13;
  v14 = sub_26932C920();
  v70 = *(v14 - 8);
  v15 = *(v70 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v61 - v19;
  v21 = sub_26932C720();
  v69 = *(v21 - 8);
  v22 = *(v69 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v61 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308140, &unk_26932EBE0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v61 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D10, &qword_26932EA98);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_26932EA80;
  *(v32 + 32) = a1;
  v33 = sub_26932C9E0();
  (*(*(v33 - 8) + 56))(v31, 1, 1, v33);

  v34 = MEMORY[0x26D637670](v32, v31);

  sub_2692DF674(v31);
  v79 = v34;
  sub_26932C940();
  v63 = v25;
  v64 = v18;
  v65 = v27;
  v66 = v20;
  v35 = v14;
  v36 = v67;
  if (qword_280307C20 != -1)
  {
    swift_once();
  }

  v37 = sub_26932D6B0();
  __swift_project_value_buffer(v37, qword_280308128);

  v38 = v78;

  v39 = sub_26932D690();
  v40 = sub_26932D9B0();

  v41 = v21;
  if (os_log_type_enabled(v39, v40))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v82[0] = v43;
    *v42 = 136315394;
    *(v42 + 4) = sub_2692DD5A8(v77, v38, v82);
    *(v42 + 12) = 2080;
    v81 = a1;
    sub_26932C970();

    v44 = sub_26932D790();
    v46 = sub_2692DD5A8(v44, v45, v82);

    *(v42 + 14) = v46;
    _os_log_impl(&dword_2692D8000, v39, v40, "#%sNLContextUpdateFactory sending SystemOffered dialog act with graph: %s", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v43, -1, -1);
    MEMORY[0x26D639280](v42, -1, -1);
  }

  v47 = v73;
  v48 = v74;
  v49 = v72;
  v50 = v35;
  v51 = v66;
  v52 = v69;
  v53 = v63;
  v62 = v35;
  sub_26932C910();
  (*(v52 + 16))(v53, v65, v41);
  sub_26932C900();
  v54 = v52;
  v78 = v41;
  v55 = v71;
  sub_26932C7F0();
  v56 = v70;
  (*(v70 + 16))(v64, v51, v50);
  sub_26932C7E0();
  sub_26932C760();
  (*(v36 + 16))(v68, v55, v48);
  sub_26932C750();
  sub_26932C8B0();
  v57 = v75;
  v58 = v76;
  (*(v75 + 16))(v49, v47, v76);
  sub_26932C890();

  (*(v57 + 8))(v47, v58);
  (*(v36 + 8))(v55, v48);
  (*(v56 + 8))(v66, v62);
  (*(v54 + 8))(v65, v78);
  v59 = sub_26932C8C0();
  return (*(*(v59 - 8) + 56))(v80, 0, 1, v59);
}

unint64_t sub_2692DFF94()
{
  result = qword_280308150;
  if (!qword_280308150)
  {
    sub_26932D060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308150);
  }

  return result;
}

SiriTimeInternal::SiriTimeAppBundleId_optional __swiftcall SiriTimeAppBundleId.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26932DC60();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SiriTimeAppBundleId.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v5 = 0x6C7070612E6D6F63;
    if (v1 != 2)
    {
      v5 = 0xD00000000000001BLL;
    }

    v6 = 0xD000000000000018;
    if (!*v0)
    {
      v6 = 0xD000000000000015;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD00000000000001FLL;
    if (v1 != 6)
    {
      v2 = 0xD000000000000035;
    }

    v3 = 0xD000000000000013;
    if (v1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0 <= 5u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_2692E01B0()
{
  result = qword_280308158;
  if (!qword_280308158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308158);
  }

  return result;
}

uint64_t sub_2692E0204()
{
  v1 = *v0;
  sub_26932DF50();
  sub_26930FCF4();
  return sub_26932DF70();
}

uint64_t sub_2692E0254()
{
  v1 = *v0;
  sub_26932DF50();
  sub_26930FCF4();
  return sub_26932DF70();
}

unint64_t sub_2692E02A4@<X0>(unint64_t *a1@<X8>)
{
  result = SiriTimeAppBundleId.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SiriTimeAppBundleId(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriTimeAppBundleId(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2692E041C()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308160);
  v1 = __swift_project_value_buffer(v0, qword_280308160);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t HALDeviceContext.remoteDevice.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = v4();
  v6 = DeviceUnit.isRemote.getter();

  if (v6)
  {
    return (v4)(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t static HALDeviceContext.remoteExecutionId(for:from:)(void *a1, unint64_t a2)
{
  v4 = DeviceUnit.isRemote.getter();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v19 = a1;
  MEMORY[0x28223BE20](v4);
  v18[2] = &v19;
  if (sub_2692E088C(sub_2692E0A08, v18, a2))
  {
    return 0;
  }

  if (qword_280307C28 != -1)
  {
    swift_once();
  }

  v6 = sub_26932D6B0();
  __swift_project_value_buffer(v6, qword_280308160);
  v7 = a1;
  v8 = sub_26932D690();
  v9 = sub_26932D9B0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315394;
    v12 = sub_26932D550();
    v14 = sub_2692DD5A8(v12, v13, &v19);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = sub_26932D560();
    v17 = sub_2692DD5A8(v15, v16, &v19);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_2692D8000, v8, v9, "Remote device %s doesn't support intent handling. Will send ace command to remote assistant %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v11, -1, -1);
    MEMORY[0x26D639280](v10, -1, -1);
  }

  return sub_26932D560();
}

BOOL HALDeviceContext.isLocal.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  sub_26932D570();
  v3 = sub_26932D680();
  v4 = sub_26932D680();

  return v3 == v4;
}

uint64_t sub_2692E0840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = (*(a2 + 8))();
  LOBYTE(a3) = a3();

  return a3 & 1;
}

uint64_t sub_2692E088C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x26D638850](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_26932DAE0();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_2692E09B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_26932D580();
  return sub_26932D9F0() & 1;
}

uint64_t sub_2692E0A08(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_26932D580();
  return sub_26932D9F0() & 1;
}

uint64_t sub_2692E0AA0()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308178);
  v1 = __swift_project_value_buffer(v0, qword_280308178);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TemporalEntityMatching.MatchResult.LabelMatchType.hashValue.getter()
{
  v1 = *v0;
  sub_26932DF50();
  MEMORY[0x26D638C20](v1);
  return sub_26932DF70();
}

BOOL static TemporalEntityMatching.MatchResult.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v3 == 5)
  {
    return 0;
  }

  return v2 == v3;
}

BOOL sub_2692E0C2C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v3 == 5)
  {
    return 0;
  }

  return v2 == v3;
}

void static TemporalEntityMatching.matchLabel(intentsSearchTitle:entityTitle:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  v38 = a4;
  v39 = a5;
  v8 = sub_26932BD00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  v43 = a2;
  sub_26932BCD0();
  sub_2692DEE4C();
  v13 = sub_26932DA60();
  v15 = v14;
  v16 = *(v9 + 8);
  v16(v12, v8);
  v42 = a3;
  v43 = v38;
  sub_26932BCD0();
  v17 = sub_26932DA60();
  v19 = v18;
  v16(v12, v8);
  v20 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v20 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = v13;
    v42 = v17;
    v43 = v19;
    v40 = v13;
    v41 = v15;
    if (sub_26932DA90())
    {
      v42 = v17;
      v43 = v19;
      v40 = v13;
      v41 = v15;
      v22 = sub_26932DA80() != 0;

LABEL_6:

      v23 = 2 * v22;
      goto LABEL_12;
    }

    v42 = v13;
    v43 = v15;
    v40 = v17;
    v41 = v19;
    if (sub_26932DA90())
    {
      goto LABEL_11;
    }

    v42 = v17;
    v43 = v19;

    sub_2692E1114(&v42);
    v25 = v42;
    v26 = v43;
    v42 = v13;
    v43 = v15;

    sub_2692E1114(&v42);
    v28 = v42;
    v27 = v43;
    v42 = v25;
    v43 = v26;
    v40 = v28;
    v41 = v27;
    if (sub_26932DA90())
    {

      v42 = v25;
      v43 = v26;
      v40 = v28;
      v41 = v27;
      v22 = sub_26932DA80() != 0;

      goto LABEL_6;
    }

    v42 = v28;
    v43 = v27;
    v40 = v25;
    v41 = v26;
    v29 = sub_26932DA90();

    if (v29)
    {
LABEL_11:

      v23 = 3;
      goto LABEL_12;
    }

    if (qword_280307C30 != -1)
    {
      swift_once();
    }

    v30 = sub_26932D6B0();
    __swift_project_value_buffer(v30, qword_280308178);

    v31 = sub_26932D690();
    v32 = sub_26932D980();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v42 = v34;
      *v33 = 136315394;
      v35 = sub_2692DD5A8(v17, v19, &v42);

      *(v33 + 4) = v35;
      *(v33 + 12) = 2080;
      v36 = sub_2692DD5A8(v21, v15, &v42);

      *(v33 + 14) = v36;
      _os_log_impl(&dword_2692D8000, v31, v32, "Titles don't match: MTTimer – %s, SiriTimer - %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v34, -1, -1);
      MEMORY[0x26D639280](v33, -1, -1);
    }

    else
    {
    }

    v23 = 5;
  }

  else
  {
    v24 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v24 = v17 & 0xFFFFFFFFFFFFLL;
    }

    v23 = v24 != 0;
  }

LABEL_12:
  *v39 = v23;
}

{
  if (!a2)
  {
    if (a4)
    {
      v7 = HIBYTE(a4) & 0xF;
      if ((a4 & 0x2000000000000000) == 0)
      {
        v7 = a3 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        *a5 = 1;
        return;
      }
    }

    goto LABEL_19;
  }

  if (a4)
  {

    static TemporalEntityMatching.matchLabel(intentsSearchTitle:entityTitle:)(a1, a2, a3, a4, a5);
    return;
  }

  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
LABEL_19:
    *a5 = 0;
    return;
  }

  v17[9] = v5;
  v17[10] = v6;
  if (qword_280307C30 != -1)
  {
    swift_once();
  }

  v12 = sub_26932D6B0();
  __swift_project_value_buffer(v12, qword_280308178);

  v13 = sub_26932D690();
  v14 = sub_26932D980();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_2692DD5A8(a1, a2, v17);
    _os_log_impl(&dword_2692D8000, v13, v14, "Title doesn't match: MTTimer – nil, SiriTimer - %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x26D639280](v16, -1, -1);
    MEMORY[0x26D639280](v15, -1, -1);
  }

  *a5 = 5;
}

uint64_t sub_2692E1114(uint64_t *a1)
{
  v31 = sub_26932BD00();
  v3 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  v29 = 0;
  v30 = 0xE000000000000000;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    v23 = 0;
    v24 = 0xE000000000000000;
    goto LABEL_25;
  }

  v25[0] = a1;
  v25[1] = v1;
  v10 = 0;
  v26 = (v7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v27 = v7 & 0xFFFFFFFFFFFFFFLL;
  v11 = (v4 + 8);
  do
  {
    if ((v7 & 0x1000000000000000) != 0)
    {
      sub_26932DB70();
      v15 = v14;
      goto LABEL_16;
    }

    if ((v7 & 0x2000000000000000) != 0)
    {
      v28[0] = v8;
      v28[1] = v27;
      v13 = v28 + v10;
    }

    else
    {
      v12 = v26;
      if ((v8 & 0x1000000000000000) == 0)
      {
        v12 = sub_26932DBD0();
      }

      v13 = (v12 + v10);
    }

    v16 = *v13;
    if ((*v13 & 0x80000000) == 0)
    {
LABEL_15:
      v15 = 1;
      goto LABEL_16;
    }

    v18 = (__clz(v16 ^ 0xFF) - 24);
    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v20 = ((v16 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3Fu;
        v15 = 3;
      }

      else
      {
        v21 = ((v16 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3Fu;
        v15 = 4;
      }
    }

    else
    {
      if (v18 == 1)
      {
        goto LABEL_15;
      }

      v19 = v13[1] & 0x3F | ((v16 & 0x1F) << 6);
      v15 = 2;
    }

LABEL_16:
    sub_26932BCD0();
    v17 = sub_26932BCF0();
    (*v11)(v6, v31);
    if ((v17 & 1) == 0)
    {
      sub_26932D7C0();
    }

    v10 += v15;
  }

  while (v10 < v9);

  v23 = v29;
  v24 = v30;
  a1 = v25[0];
LABEL_25:
  *a1 = v23;
  a1[1] = v24;
  return result;
}

unint64_t sub_2692E153C()
{
  result = qword_280308190;
  if (!qword_280308190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308190);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TemporalEntityMatching.MatchResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 5;
  v9 = v7 - 5;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TemporalEntityMatching.MatchResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2692E16F4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2692E1708(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TemporalEntityMatching.MatchResult.LabelMatchType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TemporalEntityMatching.MatchResult.LabelMatchType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2692E1878()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308198);
  v1 = __swift_project_value_buffer(v0, qword_280308198);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t Siri_Nlu_External_UserParse.firstUsoTask.getter()
{
  v0 = sub_26932C870();
  v39 = *(v0 - 8);
  v40 = v0;
  v1 = *(v39 + 64);
  MEMORY[0x28223BE20](v0);
  v38 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26932C800();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  v11 = sub_26932C720();
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = *(v42 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v37 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v41 = &v37 - v15;
  v16 = sub_26932C730();
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = 0;
    while (v18 < *(v16 + 16))
    {
      (*(v4 + 16))(v8, v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18, v3);
      if (sub_26932C780())
      {

        (*(v4 + 32))(v10, v8, v3);
        v19 = v38;
        sub_26932C7C0();
        (*(v4 + 8))(v10, v3);
        v20 = v37;
        sub_26932C840();
        (*(v39 + 8))(v19, v40);
        v22 = v41;
        v21 = v42;
        v23 = v43;
        (*(v42 + 32))(v41, v20, v43);
        sub_26932C930();
        v29 = MEMORY[0x26D6376B0]();
        if (!(v29 >> 62))
        {
          if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

LABEL_22:

          if (qword_280307C38 == -1)
          {
LABEL_23:
            v33 = sub_26932D6B0();
            __swift_project_value_buffer(v33, qword_280308198);
            v34 = sub_26932D690();
            v35 = sub_26932D9A0();
            if (os_log_type_enabled(v34, v35))
            {
              v36 = swift_slowAlloc();
              *v36 = 0;
              _os_log_impl(&dword_2692D8000, v34, v35, "NLToSiriKitIntentConverter userStartUSOGraph has no tasks. Returning nil intent", v36, 2u);
              MEMORY[0x26D639280](v36, -1, -1);
            }

            (*(v21 + 8))(v22, v23);
            return 0;
          }

LABEL_28:
          swift_once();
          goto LABEL_23;
        }

        v31 = v29;
        v32 = sub_26932DAE0();
        v29 = v31;
        if (!v32)
        {
          goto LABEL_22;
        }

LABEL_15:
        if ((v29 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x26D638850](0);
        }

        else
        {
          if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_28;
          }

          v30 = *(v29 + 32);
        }

        (*(v21 + 8))(v22, v23);
        return v30;
      }

      ++v18;
      (*(v4 + 8))(v8, v3);
      if (v17 == v18)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_6:

  if (qword_280307C38 != -1)
  {
LABEL_20:
    swift_once();
  }

  v24 = sub_26932D6B0();
  __swift_project_value_buffer(v24, qword_280308198);
  v25 = sub_26932D690();
  v26 = sub_26932D9A0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2692D8000, v25, v26, "Failed to parse userParse. Returning nil intent", v27, 2u);
    MEMORY[0x26D639280](v27, -1, -1);
  }

  return 0;
}

uint64_t SIRINLUUserDialogAct.firstUsoTask.getter()
{
  v0 = sub_26932CA00();
  if (v0 >> 62)
  {
    v14 = v0;
    v15 = sub_26932DAE0();
    v0 = v14;
    if (v15)
    {
      goto LABEL_5;
    }
  }

  else if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v0 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x26D638850](0);
      goto LABEL_8;
    }

    if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v0 + 32);

LABEL_8:

      if (qword_280307C38 != -1)
      {
        swift_once();
      }

      v1 = sub_26932D6B0();
      __swift_project_value_buffer(v1, qword_280308198);

      v2 = sub_26932D690();
      v3 = sub_26932D9B0();

      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v20[0] = v5;
        *v4 = 136315394;
        v6 = sub_26932D080();
        v8 = sub_2692DD5A8(v6, v7, v20);

        *(v4 + 4) = v8;
        *(v4 + 12) = 2080;
        v9 = sub_26932D070();
        v11 = sub_2692DD5A8(v9, v10, v20);

        *(v4 + 14) = v11;
        _os_log_impl(&dword_2692D8000, v2, v3, "NLv4TranslationParse: Input is entity=%s verb=%s", v4, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D639280](v5, -1, -1);
        MEMORY[0x26D639280](v4, -1, -1);
      }

      return v12;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (qword_280307C38 != -1)
  {
LABEL_20:
    swift_once();
  }

  v16 = sub_26932D6B0();
  __swift_project_value_buffer(v16, qword_280308198);
  v17 = sub_26932D690();
  v18 = sub_26932D9A0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2692D8000, v17, v18, "NLv4TranslationParse: No tasks in input?", v19, 2u);
    MEMORY[0x26D639280](v19, -1, -1);
  }

  return 0;
}

uint64_t static Siri_Nlu_External_SystemDialogAct.buildDisambiguationDialogActFrom(_:includeBinaryPrompt:)@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v85 = a3;
  v4 = sub_26932C770();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v75 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v74 = &v73 - v9;
  v10 = sub_26932C8F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v78 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v73 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308140, &unk_26932EBE0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v73 - v19;
  v21 = sub_26932C720();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v89 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_26932C870();
  v24 = *(v103 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v103);
  v93 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v105 = &v73 - v28;
  v104 = sub_26932C800();
  v94 = *(v104 - 8);
  v29 = *(v94 + 64);
  v30 = MEMORY[0x28223BE20](v104);
  v73 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v96 = &v73 - v33;
  MEMORY[0x28223BE20](v32);
  v95 = &v73 - v34;
  v35 = sub_26932C8C0();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v86 = &v73 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26932C8B0();
  v102 = a1;
  if (a1 >> 62)
  {
    result = sub_26932DAE0();
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v82 = v16;
  v83 = v11;
  v84 = v10;
  v40 = v105;
  v81 = v35;
  v80 = v36;
  v77 = v4;
  v76 = v5;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v41 = 0;
    v99 = (v24 + 8);
    v100 = v102 & 0xC000000000000001;
    v98 = v94 + 8;
    v91 = (v94 + 16);
    v92 = (v24 + 16);
    v90 = v94 + 32;
    v42 = MEMORY[0x277D84F90];
    *(&v43 + 1) = 3;
    v97 = xmmword_26932EA80;
    *&v43 = 136315138;
    v87 = v43;
    v44 = v95;
    v88 = v20;
    v101 = result;
    do
    {
      if (v100)
      {
        v45 = MEMORY[0x26D638850](v41, v102);
      }

      else
      {
        v45 = *(v102 + 8 * v41 + 32);
      }

      sub_26932C7F0();
      sub_26932C860();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D10, &qword_26932EA98);
      v46 = swift_allocObject();
      *(v46 + 16) = v97;
      *(v46 + 32) = v45;

      sub_26932C9D0();
      v47 = sub_26932C9E0();
      (*(*(v47 - 8) + 56))(v20, 0, 1, v47);
      MEMORY[0x26D637670](v46, v20);

      sub_2692DF674(v20);
      sub_26932C940();

      sub_26932C850();
      (*v92)(v93, v40, v103);
      sub_26932C7D0();
      (*v91)(v96, v44, v104);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_2692E30D0(0, v42[2] + 1, 1, v42, &qword_2803081F0, &unk_26932EE90, MEMORY[0x277D5DB80]);
      }

      v49 = v42[2];
      v48 = v42[3];
      if (v49 >= v48 >> 1)
      {
        v42 = sub_2692E30D0(v48 > 1, v49 + 1, 1, v42, &qword_2803081F0, &unk_26932EE90, MEMORY[0x277D5DB80]);
      }

      (*v99)(v105, v103);
      v50 = v94;
      v44 = v95;
      v51 = v104;
      (*(v94 + 8))(v95, v104);
      v42[2] = v49 + 1;
      (*(v50 + 32))(v42 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v49, v96, v51);
      ++v41;
      v40 = v105;
    }

    while (v101 != v41);
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
  }

  v52 = v82;
  sub_26932C8E0();
  swift_bridgeObjectRetain_n();
  sub_26932C8D0();
  v53 = v83;
  v54 = v84;
  (*(v83 + 16))(v78, v52, v84);
  v55 = v86;
  sub_26932C880();
  if (v79)
  {
    v56 = v74;
    sub_26932C760();
    sub_26932C7F0();
    sub_26932C750();
    v57 = v76;
    v58 = v77;
    (*(v76 + 16))(v75, v56, v77);
    sub_26932C890();
    (*(v57 + 8))(v56, v58);
  }

  if (qword_280307C38 != -1)
  {
    swift_once();
  }

  v59 = sub_26932D6B0();
  __swift_project_value_buffer(v59, qword_280308198);

  v60 = sub_26932D690();
  v61 = sub_26932D9B0();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = v42;
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v106 = v64;
    *v63 = 134218242;
    *(v63 + 4) = v62[2];

    *(v63 + 12) = 2080;
    v65 = MEMORY[0x26D638530](v62, v104);
    v67 = v66;

    v68 = v65;
    v55 = v86;
    v69 = sub_2692DD5A8(v68, v67, &v106);

    *(v63 + 14) = v69;
    _os_log_impl(&dword_2692D8000, v60, v61, "#NLContextUpdateFactory sending SystemGaveOptions dialog act with %ld choices: %s", v63, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    MEMORY[0x26D639280](v64, -1, -1);
    MEMORY[0x26D639280](v63, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  (*(v53 + 8))(v52, v54);
  v70 = v80;
  v71 = v85;
  v72 = v81;
  (*(v80 + 32))(v85, v55, v81);
  return (*(v70 + 56))(v71, 0, 1, v72);
}

char *sub_2692E2F60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081E8, &qword_26932EE88);
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

size_t sub_2692E30D0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_2692E32C8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

size_t sub_2692E33D4(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081B8, &qword_26932EE70);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78) - 8);
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

char *sub_2692E35C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081B0, &qword_26932EE68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2692E36D4()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2803081F8);
  v1 = __swift_project_value_buffer(v0, qword_2803081F8);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static DateTimeInferenceUtils.defaultAnchorDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308210, &qword_26932EEC0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  if (qword_280307C48 != -1)
  {
    v11 = v4;
    swift_once();
    v4 = v11;
  }

  v7 = __swift_project_value_buffer(v4, qword_28030CD60);
  sub_2692E3B90(v7, v6, &qword_280308210, &qword_26932EEC0);
  v8 = sub_26932BF40();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_2692EB48C(v6, &qword_280308210, &qword_26932EEC0);
  return sub_26932BF30();
}

uint64_t sub_2692E3974(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  __swift_allocate_value_buffer(v7, a4);
  v8 = __swift_project_value_buffer(v7, a4);
  v9 = a5(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v8, 1, 1, v9);
}

uint64_t static DateTimeInferenceUtils.defaultCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308218, &qword_26932EEC8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  if (qword_280307C50 != -1)
  {
    v11 = v4;
    swift_once();
    v4 = v11;
  }

  v7 = __swift_project_value_buffer(v4, qword_28030CD78);
  sub_2692E3B90(v7, v6, &qword_280308218, &qword_26932EEC8);
  v8 = sub_26932C0B0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_2692EB48C(v6, &qword_280308218, &qword_26932EEC8);
  return sub_26932C050();
}

uint64_t sub_2692E3B90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t static DateTimeInferenceUtils.dateComponents(forDateTime:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308220, &unk_26932EED0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308218, &qword_26932EEC8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_26932D2D0();
  v9 = sub_26932D2E0();
  v10 = sub_26932C0B0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = sub_26932C0D0();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  sub_26932BE60();
  if (v8)
  {

    sub_26932D190();

    sub_26932BDE0();

    sub_26932D1A0();

    sub_26932BE00();

    sub_26932D180();
  }

  else
  {
    sub_26932BDE0();
    sub_26932BE00();
  }

  sub_26932BD90();
  if (v9)
  {

    sub_26932D200();
    v13 = v12;

    if (v13)
    {
      sub_26932D210();
    }

    sub_26932BDC0();

    sub_26932D220();
  }

  else
  {
    sub_26932BDC0();
  }

  sub_26932BE10();
}

uint64_t static DateTimeInferenceUtils.simpleTimeResolution(forDateComponents:meridiemSetByUser:allowNearest:referenceDate:)@<X0>(char *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v428 = a4;
  v399 = a3;
  v414 = a2;
  v421 = a5;
  v417 = sub_26932C030();
  v426 = *(v417 - 8);
  v6 = *(v426 + 64);
  MEMORY[0x28223BE20](v417);
  v416 = &v358 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v432 = sub_26932C040();
  v431 = *(v432 - 8);
  v8 = *(v431 + 64);
  MEMORY[0x28223BE20](v432);
  v415 = &v358 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v430 = sub_26932C000();
  v429 = *(v430 - 8);
  v10 = *(v429 + 64);
  MEMORY[0x28223BE20](v430);
  v425 = &v358 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v409 = sub_26932C0A0();
  v408 = *(v409 - 1);
  v12 = *(v408 + 64);
  MEMORY[0x28223BE20](v409);
  v14 = &v358 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308210, &qword_26932EEC0);
  v15 = *(*(v389 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v389);
  v398 = &v358 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v388 = &v358 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v397 = &v358 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v402 = &v358 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v375 = &v358 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v391 = (&v358 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v378 = &v358 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v387 = &v358 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v386 = &v358 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v405 = (&v358 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v392 = &v358 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v401 = (&v358 - v39);
  MEMORY[0x28223BE20](v38);
  v41 = &v358 - v40;
  v42 = sub_26932BF40();
  v43 = *(v42 - 8);
  v418 = v43;
  v44 = *(v43 + 64);
  v45 = MEMORY[0x28223BE20](v42);
  v390 = &v358 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v372 = &v358 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v370 = &v358 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v371 = &v358 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v380 = (&v358 - v54);
  v55 = MEMORY[0x28223BE20](v53);
  v379 = &v358 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v383 = &v358 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v374 = &v358 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v373 = &v358 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v382 = &v358 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v393 = &v358 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v377 = &v358 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v376 = &v358 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v394 = &v358 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v400 = &v358 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v413 = &v358 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v381 = &v358 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v384 = &v358 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v412 = &v358 - v82;
  MEMORY[0x28223BE20](v81);
  v84 = &v358 - v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308218, &qword_26932EEC8);
  v86 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v88 = &v358 - v87;
  v420 = sub_26932C0B0();
  v419 = *(v420 - 8);
  v89 = *(v419 + 64);
  MEMORY[0x28223BE20](v420);
  v433 = &v358 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_26932BE70();
  v92 = *(*(v91 - 8) + 64);
  v93 = MEMORY[0x28223BE20](v91);
  v385 = &v358 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = MEMORY[0x28223BE20](v93);
  v403 = &v358 - v96;
  MEMORY[0x28223BE20](v95);
  v98 = &v358 - v97;
  v424 = v99;
  v100 = *(v99 + 16);
  v396 = v99 + 16;
  v395 = v100;
  v100(&v358 - v97, a1, v91);
  sub_26932BDE0();
  sub_26932BE00();
  sub_26932BD90();
  v434 = v98;
  v101 = sub_26932BDB0();
  if ((v102 & 1) == 0)
  {
    v369 = v14;
    v362 = v101;
    v422 = v42;
    if (qword_280307C50 != -1)
    {
      swift_once();
    }

    v103 = __swift_project_value_buffer(v85, qword_28030CD78);
    sub_2692E3B90(v103, v88, &qword_280308218, &qword_26932EEC8);
    v104 = v419;
    v105 = v420;
    if ((*(v419 + 48))(v88, 1, v420) == 1)
    {
      sub_2692EB48C(v88, &qword_280308218, &qword_26932EEC8);
      sub_26932C050();
    }

    else
    {
      (*(v104 + 32))(v433, v88, v105);
    }

    v410 = v91;
    v411 = v41;
    v106 = v422;
    if (qword_280307C40 != -1)
    {
      swift_once();
    }

    v107 = sub_26932D6B0();
    v108 = __swift_project_value_buffer(v107, qword_2803081F8);
    v109 = *(v43 + 16);
    v407 = v43 + 16;
    v406 = v109;
    v109(v84, v428, v106);
    v423 = v108;
    v110 = sub_26932D690();
    v111 = sub_26932D990();
    v112 = os_log_type_enabled(v110, v111);
    v427 = v43;
    v113 = v369;
    if (v112)
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v437 = v115;
      *v114 = 136315138;
      sub_2692EB38C(&qword_280308230, MEMORY[0x277CC9578]);
      v116 = sub_26932DDD0();
      v118 = v117;
      v404 = *(v43 + 8);
      v404(v84, v106);
      v119 = sub_2692DD5A8(v116, v118, &v437);

      *(v114 + 4) = v119;
      _os_log_impl(&dword_2692D8000, v110, v111, "simpleDateTimeResolution: Using referenceDate %s", v114, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v115);
      MEMORY[0x26D639280](v115, -1, -1);
      MEMORY[0x26D639280](v114, -1, -1);
    }

    else
    {

      v404 = *(v43 + 8);
      v404(v84, v106);
    }

    v120 = v408;
    v121 = v409;
    (*(v408 + 104))(v113, *MEMORY[0x277CC99A8], v409);
    v122 = v411;
    sub_26932C080();
    (*(v120 + 8))(v113, v121);
    v123 = MEMORY[0x277CC9900];
    v124 = MEMORY[0x277CC98E8];
    v125 = v412;
    if (v414)
    {
      v126 = v401;
      sub_2692E3B90(v122, v401, &qword_280308210, &qword_26932EEC0);
      v127 = v427;
      v128 = *(v427 + 48);
      v129 = v422;
      if ((v128)(v126, 1, v422) != 1)
      {
        v409 = v128;
        v130 = *(v127 + 32);
        v408 = v127 + 32;
        v401 = v130;
        (v130)(v125, v126, v129);
        v131 = v425;
        (*(v429 + 104))(v425, *MEMORY[0x277CC9870], v430);
        v132 = v415;
        (*(v431 + 104))(v415, *v123, v432);
        v133 = v426;
        v134 = v416;
        v135 = v417;
        (*(v426 + 104))(v416, *v124, v417);
        v136 = v392;
        sub_26932C090();
        (*(v133 + 8))(v134, v135);
        (*(v431 + 8))(v132, v432);
        v137 = v131;
        v138 = v422;
        v126 = v136;
        (*(v429 + 8))(v137, v430);
        if ((v409)(v136, 1, v138) != 1)
        {
          v202 = v384;
          v203 = v401;
          (v401)(v384, v136, v138);
          v204 = v381;
          v406(v381, v202, v138);
          v205 = sub_26932D690();
          v206 = sub_26932D990();
          if (os_log_type_enabled(v205, v206))
          {
            v207 = swift_slowAlloc();
            v208 = swift_slowAlloc();
            v437 = v208;
            *v207 = 136315138;
            sub_2692EB38C(&qword_280308230, MEMORY[0x277CC9578]);
            v209 = sub_26932DDD0();
            v211 = v210;
            v212 = v404;
            v404(v204, v138);
            v213 = sub_2692DD5A8(v209, v211, &v437);
            v214 = v434;

            *(v207 + 4) = v213;
            _os_log_impl(&dword_2692D8000, v205, v206, "simpleDateTimeResolution: exact match: %s", v207, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v208);
            v215 = v208;
            v203 = v401;
            MEMORY[0x26D639280](v215, -1, -1);
            MEMORY[0x26D639280](v207, -1, -1);

            v212(v412, v138);
            v202 = v384;
            sub_2692EB48C(v411, &qword_280308210, &qword_26932EEC0);
            (*(v419 + 8))(v433, v420);
          }

          else
          {

            v226 = v404;
            v404(v204, v138);
            v226(v412, v138);
            sub_2692EB48C(v411, &qword_280308210, &qword_26932EEC0);
            (*(v419 + 8))(v433, v420);
            v214 = v434;
          }

          v227 = v421;
          v203(v421, v202, v138);
          (*(v427 + 56))(v227, 0, 1, v138);
          goto LABEL_95;
        }

        v404(v412, v138);
        v124 = MEMORY[0x277CC98E8];
        v123 = MEMORY[0x277CC9900];
      }

      sub_2692EB48C(v126, &qword_280308210, &qword_26932EEC0);
    }

    v139 = v429;
    v140 = *(v429 + 104);
    v365 = *MEMORY[0x277CC9878];
    v392 = (v429 + 104);
    v384 = v140;
    (v140)(v425);
    v141 = v431;
    v142 = *(v431 + 104);
    v143 = v415;
    LODWORD(v408) = *v123;
    v409 = (v431 + 104);
    v401 = v142;
    v142(v415);
    v144 = v426;
    v145 = *(v426 + 104);
    v146 = v416;
    v361 = *v124;
    v147 = v417;
    v369 = (v426 + 104);
    v368 = v145;
    v145(v416);
    v148 = v405;
    v149 = v425;
    sub_26932C090();
    v151 = *(v144 + 8);
    v150 = v144 + 8;
    v426 = v150;
    v381 = v151;
    (v151)(v146, v147);
    v152 = *(v141 + 8);
    v431 = v141 + 8;
    v366 = v152;
    v152(v143, v432);
    v153 = *(v139 + 8);
    v429 = v139 + 8;
    v367 = v153;
    v153(v149, v430);
    v154 = v427;
    v155 = (v427 + 48);
    v156 = *(v427 + 48);
    v157 = v422;
    if ((v156)(v148, 1, v422) == 1)
    {
      sub_2692EB48C(v148, &qword_280308210, &qword_26932EEC0);
      v158 = sub_26932D690();
      v159 = sub_26932D990();
      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        *v160 = 0;
        _os_log_impl(&dword_2692D8000, v158, v159, "simpleDateTimeResolution: unable to find next matching date for date components", v160, 2u);
        MEMORY[0x26D639280](v160, -1, -1);
      }

      sub_2692EB48C(v411, &qword_280308210, &qword_26932EEC0);
      (*(v419 + 8))(v433, v420);
      (*(v427 + 56))(v421, 1, 1, v157);
      v91 = v410;
      goto LABEL_22;
    }

    v163 = v154 + 32;
    v162 = *(v154 + 32);
    v164 = v413;
    v364 = v162;
    v363 = v163;
    v162(v413, v148, v157);
    v165 = v400;
    v406(v400, v164, v157);
    v166 = v423;
    v167 = sub_26932D690();
    v168 = sub_26932D990();
    if (os_log_type_enabled(v167, v168))
    {
      v150 = swift_slowAlloc();
      v169 = v155;
      v170 = swift_slowAlloc();
      v437 = v170;
      *v150 = 136315138;
      sub_2692EB38C(&qword_280308230, MEMORY[0x277CC9578]);
      v171 = sub_26932DDD0();
      v173 = v172;
      v404(v165, v157);
      v166 = sub_2692DD5A8(v171, v173, &v437);

      *(v150 + 4) = v166;
      _os_log_impl(&dword_2692D8000, v167, v168, "simpleDateTimeResolution: nextMatching: %s", v150, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v170);
      v174 = v170;
      v155 = v169;
      MEMORY[0x26D639280](v174, -1, -1);
      MEMORY[0x26D639280](v150, -1, -1);
    }

    else
    {

      v404(v165, v157);
    }

    v175 = v403;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081E0, &unk_26932F960);
    v176 = (*(v427 + 80) + 32) & ~*(v427 + 80);
    v360 = *(v427 + 72);
    v177 = swift_allocObject();
    *(v177 + 1) = xmmword_26932EEA0;
    v406(v177 + v176, v413, v157);
    v412 = v155;
    v400 = v156;
    if (v414)
    {
      goto LABEL_54;
    }

    v395(v175, v434, v410);
    v178 = v362 + 12;
    if (__OFADD__(v362, 12))
    {
      __break(1u);
      goto LABEL_98;
    }

    sub_26932BDC0();
    v179 = sub_26932D690();
    v180 = sub_26932D990();
    v181 = os_log_type_enabled(v179, v180);
    v405 = v177;
    if (v181)
    {
      v182 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      v437 = v183;
      *v182 = 136315138;
      swift_beginAccess();
      sub_2692EB38C(&qword_280308228, MEMORY[0x277CC8990]);
      v184 = sub_26932DDD0();
      v186 = sub_2692DD5A8(v184, v185, &v437);

      *(v182 + 4) = v186;
      _os_log_impl(&dword_2692D8000, v179, v180, "simpleDateTimeResolution: using components for nextMatchingOffset: %s", v182, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v183);
      MEMORY[0x26D639280](v183, -1, -1);
      MEMORY[0x26D639280](v182, -1, -1);
    }

    v187 = sub_26932D690();
    v188 = sub_26932D990();
    if (os_log_type_enabled(v187, v188))
    {
      v189 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v437 = v190;
      *v189 = 136315138;
      swift_beginAccess();
      sub_2692EB38C(&qword_280308228, MEMORY[0x277CC8990]);
      v191 = sub_26932DDD0();
      v193 = sub_2692DD5A8(v191, v192, &v437);

      *(v189 + 4) = v193;
      _os_log_impl(&dword_2692D8000, v187, v188, "simpleDateTimeResolution: using components for nextMatchingOffset: %s", v189, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v190);
      MEMORY[0x26D639280](v190, -1, -1);
      MEMORY[0x26D639280](v189, -1, -1);
    }

    swift_beginAccess();
    v194 = v425;
    v195 = v430;
    (v384)(v425, v365, v430);
    v196 = v415;
    v197 = v432;
    (v401)(v415, v408, v432);
    v198 = v416;
    v199 = v417;
    (v368)(v416, v361, v417);
    v200 = v386;
    sub_26932C090();
    (v381)(v198, v199);
    v366(v196, v197);
    v367(v194, v195);
    v157 = v422;
    if ((v156)(v200, 1, v422) != 1)
    {
      v216 = v394;
      v364(v394, v200, v157);
      v217 = v376;
      v406(v376, v216, v157);
      v218 = sub_26932D690();
      v219 = sub_26932D990();
      if (os_log_type_enabled(v218, v219))
      {
        v220 = swift_slowAlloc();
        v221 = swift_slowAlloc();
        v435 = v221;
        *v220 = 136315138;
        sub_2692EB38C(&qword_280308230, MEMORY[0x277CC9578]);
        v222 = sub_26932DDD0();
        v224 = v223;
        v404(v217, v157);
        v225 = sub_2692DD5A8(v222, v224, &v435);

        *(v220 + 4) = v225;
        _os_log_impl(&dword_2692D8000, v218, v219, "simpleDateTimeResolution: nextMatchingOffset: %s", v220, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v221);
        MEMORY[0x26D639280](v221, -1, -1);
        MEMORY[0x26D639280](v220, -1, -1);
      }

      else
      {

        v404(v217, v157);
      }

      v177 = v405;
      v168 = v377;
      v406(v377, v394, v157);
      v166 = v177[2];
      v228 = v177[3];
      v167 = (v166 + 1);
      v175 = v403;
      if (v166 >= v228 >> 1)
      {
        goto LABEL_100;
      }

      goto LABEL_42;
    }

    sub_2692EB48C(v200, &qword_280308210, &qword_26932EEC0);
    v201 = v364;
    v177 = v405;
    v175 = v403;
    while (1)
    {
      v229 = v387;
      sub_2692E3B90(v411, v387, &qword_280308210, &qword_26932EEC0);
      if ((v156)(v229, 1, v157) == 1)
      {
        sub_2692EB48C(v229, &qword_280308210, &qword_26932EEC0);
      }

      else
      {
        v405 = v177;
        v359 = v176;
        v201(v393, v229, v157);
        v230 = v425;
        v231 = v430;
        (v384)(v425, *MEMORY[0x277CC9870], v430);
        v232 = v415;
        v233 = v432;
        (v401)(v415, v408, v432);
        v234 = v416;
        v235 = v417;
        (v368)(v416, v361, v417);
        v236 = v378;
        sub_26932C090();
        (v381)(v234, v235);
        v366(v232, v233);
        v367(v230, v231);
        if ((v156)(v236, 1, v157) == 1)
        {
          v404(v393, v157);
          sub_2692EB48C(v236, &qword_280308210, &qword_26932EEC0);
          v156 = v400;
          v176 = v359;
          v177 = v405;
          v175 = v403;
        }

        else
        {
          v237 = v382;
          v364(v382, v236, v157);
          v238 = v373;
          v406(v373, v237, v157);
          v239 = sub_26932D690();
          v240 = sub_26932D990();
          v241 = os_log_type_enabled(v239, v240);
          v176 = v359;
          v175 = v403;
          if (v241)
          {
            v242 = swift_slowAlloc();
            v243 = swift_slowAlloc();
            v435 = v243;
            *v242 = 136315138;
            sub_2692EB38C(&qword_280308230, MEMORY[0x277CC9578]);
            v244 = sub_26932DDD0();
            v246 = v245;
            v404(v238, v157);
            v247 = sub_2692DD5A8(v244, v246, &v435);

            *(v242 + 4) = v247;
            _os_log_impl(&dword_2692D8000, v239, v240, "simpleDateTimeResolution: exact match: %s", v242, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v243);
            MEMORY[0x26D639280](v243, -1, -1);
            MEMORY[0x26D639280](v242, -1, -1);
          }

          else
          {

            v404(v238, v157);
          }

          v156 = v400;
          v177 = v405;
          v248 = v374;
          v406(v374, v382, v157);
          v250 = v177[2];
          v249 = v177[3];
          if (v250 >= v249 >> 1)
          {
            v177 = sub_2692E3064(v249 > 1, v250 + 1, 1, v177);
          }

          v251 = v157;
          v252 = v404;
          v404(v382, v251);
          v252(v393, v422);
          v157 = v422;
          v177[2] = v250 + 1;
          v364(v177 + v176 + v250 * v360, v248, v157);
        }
      }

      (*(v424 + 8))(v175, v410);
LABEL_54:
      if ((v399 & 1) == 0)
      {
        goto LABEL_66;
      }

      v405 = v177;
      v253 = sub_26932D690();
      v254 = sub_26932D990();
      v255 = os_log_type_enabled(v253, v254);
      v359 = v176;
      if (v255)
      {
        v256 = swift_slowAlloc();
        v257 = swift_slowAlloc();
        v435 = v257;
        *v256 = 136315138;
        swift_beginAccess();
        sub_2692EB38C(&qword_280308228, MEMORY[0x277CC8990]);
        v258 = sub_26932DDD0();
        v260 = sub_2692DD5A8(v258, v259, &v435);

        *(v256 + 4) = v260;
        v261 = v434;
        _os_log_impl(&dword_2692D8000, v253, v254, "simpleDateTimeResolution: using components for previousMatching: %s", v256, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v257);
        MEMORY[0x26D639280](v257, -1, -1);
        MEMORY[0x26D639280](v256, -1, -1);
      }

      else
      {

        v261 = v434;
      }

      swift_beginAccess();
      v262 = v425;
      v263 = v430;
      (v384)(v425, v365, v430);
      v264 = v416;
      LODWORD(v403) = *MEMORY[0x277CC98F0];
      v265 = v417;
      v368(v416);
      v168 = v415;
      v266 = v432;
      (v401)(v415, v408, v432);
      v167 = v391;
      v175 = v261;
      v166 = v433;
      sub_26932C090();
      v366(v168, v266);
      (v381)(v264, v265);
      v367(v262, v263);
      v157 = v422;
      if ((v156)(v167, 1, v422) == 1)
      {
        sub_2692EB48C(v167, &qword_280308210, &qword_26932EEC0);
        v176 = v359;
        v156 = v433;
        v177 = v405;
      }

      else
      {
        v177 = v383;
        v364(v383, v167, v157);
        v267 = v379;
        v406(v379, v177, v157);
        v268 = sub_26932D690();
        v269 = sub_26932D990();
        if (os_log_type_enabled(v268, v269))
        {
          v270 = v157;
          v271 = swift_slowAlloc();
          v272 = swift_slowAlloc();
          v435 = v272;
          *v271 = 136315138;
          sub_2692EB38C(&qword_280308230, MEMORY[0x277CC9578]);
          v273 = sub_26932DDD0();
          v275 = v274;
          v404(v267, v270);
          v276 = sub_2692DD5A8(v273, v275, &v435);
          v156 = v433;

          *(v271 + 4) = v276;
          _os_log_impl(&dword_2692D8000, v268, v269, "simpleDateTimeResolution: previousMatching: %s", v271, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v272);
          v277 = v272;
          v177 = v383;
          v175 = v434;
          MEMORY[0x26D639280](v277, -1, -1);
          v278 = v271;
          v157 = v270;
          MEMORY[0x26D639280](v278, -1, -1);

          v167 = v380;
        }

        else
        {

          v404(v267, v157);
          v167 = v380;
          v156 = v433;
        }

        v406(v167, v177, v157);
        v150 = v405[2];
        v178 = v405[3];
        v166 = v150 + 1;
        v176 = v359;
        if (v150 >= v178 >> 1)
        {
LABEL_98:
          v405 = sub_2692E3064(v178 > 1, v166, 1, v405);
        }

        v404(v177, v157);
        v177 = v405;
        v405[2] = v166;
        v364(v177 + v176 + v150 * v360, v167, v157);
      }

      if (v414)
      {
LABEL_66:
        v279 = v397;
        goto LABEL_79;
      }

      v176 = v385;
      v395(v385, v175, v410);
      v228 = v362 + 12;
      if (!__OFADD__(v362, 12))
      {
        break;
      }

      __break(1u);
LABEL_100:
      v177 = sub_2692E3064(v228 > 1, v167, 1, v177);
LABEL_42:
      v201 = v364;
      v404(v394, v157);
      v177[2] = v167;
      v201(v177 + v176 + v166 * v360, v168, v157);
    }

    v405 = v177;
    sub_26932BDC0();
    v280 = sub_26932D690();
    v281 = sub_26932D990();
    if (os_log_type_enabled(v280, v281))
    {
      v282 = v157;
      v283 = swift_slowAlloc();
      v284 = swift_slowAlloc();
      v435 = v284;
      *v283 = 136315138;
      swift_beginAccess();
      sub_2692EB38C(&qword_280308228, MEMORY[0x277CC8990]);
      v285 = sub_26932DDD0();
      v287 = sub_2692DD5A8(v285, v286, &v435);

      *(v283 + 4) = v287;
      _os_log_impl(&dword_2692D8000, v280, v281, "simpleDateTimeResolution: using components for otherPrevious: %s", v283, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v284);
      MEMORY[0x26D639280](v284, -1, -1);
      v288 = v283;
      v157 = v282;
      MEMORY[0x26D639280](v288, -1, -1);
    }

    swift_beginAccess();
    v289 = v425;
    v290 = v430;
    (v384)(v425, v365, v430);
    v291 = v416;
    v292 = v417;
    (v368)(v416, v403, v417);
    v293 = v415;
    v294 = v432;
    (v401)(v415, v408, v432);
    v295 = v375;
    sub_26932C090();
    v366(v293, v294);
    (v381)(v291, v292);
    v367(v289, v290);
    if ((v400)(v295, 1, v157) == 1)
    {
      sub_2692EB48C(v295, &qword_280308210, &qword_26932EEC0);
      v296 = v410;
      v279 = v397;
      v176 = v359;
      v177 = v405;
    }

    else
    {
      v297 = v371;
      v364(v371, v295, v157);
      v298 = v370;
      v406(v370, v297, v157);
      v299 = sub_26932D690();
      v300 = v157;
      v301 = sub_26932D990();
      v302 = os_log_type_enabled(v299, v301);
      v296 = v410;
      v279 = v397;
      if (v302)
      {
        v303 = swift_slowAlloc();
        v304 = swift_slowAlloc();
        v435 = v304;
        *v303 = 136315138;
        sub_2692EB38C(&qword_280308230, MEMORY[0x277CC9578]);
        v305 = sub_26932DDD0();
        v306 = v298;
        v308 = v307;
        v404(v306, v300);
        v309 = sub_2692DD5A8(v305, v308, &v435);

        *(v303 + 4) = v309;
        _os_log_impl(&dword_2692D8000, v299, v301, "simpleDateTimeResolution: otherPreviousOffset: %s", v303, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v304);
        MEMORY[0x26D639280](v304, -1, -1);
        MEMORY[0x26D639280](v303, -1, -1);
      }

      else
      {

        v404(v298, v300);
      }

      v157 = v300;
      v310 = v372;
      v406(v372, v297, v300);
      v177 = v405;
      v312 = v405[2];
      v311 = v405[3];
      v176 = v359;
      if (v312 >= v311 >> 1)
      {
        v177 = sub_2692E3064(v311 > 1, v312 + 1, 1, v405);
      }

      v404(v297, v157);
      v177[2] = v312 + 1;
      v364(v177 + v176 + v312 * v360, v310, v157);
    }

    (*(v424 + 8))(v385, v296);
LABEL_79:

    v313 = sub_26932D690();
    v314 = sub_26932D990();

    if (os_log_type_enabled(v313, v314))
    {
      v315 = swift_slowAlloc();
      v316 = swift_slowAlloc();
      v317 = v157;
      v318 = v316;
      v435 = v316;
      *v315 = 136315138;
      v319 = v317;
      v320 = MEMORY[0x26D638530](v177);
      v322 = v177;
      v323 = sub_2692DD5A8(v320, v321, &v435);

      *(v315 + 4) = v323;
      v177 = v322;
      _os_log_impl(&dword_2692D8000, v313, v314, "simpleDateTimeResolution: Found matches for inferred time: %s", v315, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v318);
      MEMORY[0x26D639280](v318, -1, -1);
      MEMORY[0x26D639280](v315, -1, -1);
    }

    else
    {
      v319 = v157;
    }

    v324 = v402;
    MEMORY[0x28223BE20](v325);
    *(&v358 - 2) = v428;
    v435 = v177;

    sub_2692E7834(sub_2692EB324, (&v358 - 4));

    if (*(v435 + 2))
    {
      v326 = v319;
      v406(v324, &v435[v176], v319);
      v327 = 0;
    }

    else
    {
      v327 = 1;
      v326 = v319;
    }

    v328 = *(v427 + 56);
    v329 = v326;
    v427 += 56;
    v328(v324, v327, 1, v326);
    sub_2692E3B90(v324, v279, &qword_280308210, &qword_26932EEC0);
    v330 = sub_26932D690();
    v331 = sub_26932D990();
    if (os_log_type_enabled(v330, v331))
    {
      v332 = swift_slowAlloc();
      v333 = swift_slowAlloc();
      v435 = v333;
      *v332 = 136315138;
      sub_2692E3B90(v279, v388, &qword_280308210, &qword_26932EEC0);
      v334 = sub_26932D790();
      v335 = v279;
      v336 = v334;
      v338 = v337;
      sub_2692EB48C(v335, &qword_280308210, &qword_26932EEC0);
      v339 = sub_2692DD5A8(v336, v338, &v435);

      *(v332 + 4) = v339;
      v324 = v402;
      _os_log_impl(&dword_2692D8000, v330, v331, "simpleDateTimeResolution: Selecting date for inference: %s", v332, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v333);
      MEMORY[0x26D639280](v333, -1, -1);
      MEMORY[0x26D639280](v332, -1, -1);
    }

    else
    {

      sub_2692EB48C(v279, &qword_280308210, &qword_26932EEC0);
    }

    v340 = v421;
    v341 = v411;
    v214 = v434;
    v342 = v398;
    sub_2692E3B90(v324, v398, &qword_280308210, &qword_26932EEC0);
    v343 = v329;
    if ((v400)(v342, 1, v329) == 1)
    {
      sub_2692EB48C(v342, &qword_280308210, &qword_26932EEC0);
      v344 = sub_26932D690();
      v345 = sub_26932D990();
      if (os_log_type_enabled(v344, v345))
      {
        v346 = swift_slowAlloc();
        v347 = swift_slowAlloc();
        v436 = v347;
        *v346 = 136315138;
        swift_beginAccess();
        sub_2692EB38C(&qword_280308228, MEMORY[0x277CC8990]);
        v348 = sub_26932DDD0();
        v350 = sub_2692DD5A8(v348, v349, &v436);

        *(v346 + 4) = v350;
        v214 = v434;
        _os_log_impl(&dword_2692D8000, v344, v345, "simpleDateTimeResolution: No matches found for %s", v346, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v347);
        MEMORY[0x26D639280](v347, -1, -1);
        MEMORY[0x26D639280](v346, -1, -1);

        v351 = v402;
      }

      else
      {

        v351 = v324;
      }

      sub_2692EB48C(v351, &qword_280308210, &qword_26932EEC0);
      v343 = v329;
      v404(v413, v329);
      sub_2692EB48C(v341, &qword_280308210, &qword_26932EEC0);
      (*(v419 + 8))(v433, v420);
      v355 = v340;
      v356 = 1;
    }

    else
    {
      sub_2692EB48C(v324, &qword_280308210, &qword_26932EEC0);
      v404(v413, v329);
      sub_2692EB48C(v341, &qword_280308210, &qword_26932EEC0);
      (*(v419 + 8))(v433, v420);
      v352 = v390;
      v353 = v342;
      v354 = v364;
      v364(v390, v353, v329);
      v354(v340, v352, v329);
      v355 = v340;
      v356 = 0;
    }

    v328(v355, v356, 1, v343);
LABEL_95:
    v91 = v410;
    v161 = v214;
    return (*(v424 + 8))(v161, v91);
  }

  (*(v43 + 56))(v421, 1, 1, v42);
LABEL_22:
  v161 = v434;
  return (*(v424 + 8))(v161, v91);
}

uint64_t sub_2692E7834(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v3 = v2;
  v6 = *(sub_26932BF40() - 8);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_2692E91A4(v7);
  }

  v9 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10 = v7[2];
  result = sub_2692E78F4(a1, a2);
  *v3 = v7;
  return result;
}

uint64_t sub_2692E78F4(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_26932DDC0();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_26932BF40();
        v9 = sub_26932D890();
        *(v9 + 16) = v8;
      }

      v10 = *(sub_26932BF40() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_2692E7D1C(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_2692E7A30(0, v5, 1, a1, a2);
  }

  return result;
}

uint64_t sub_2692E7A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v7 = v6;
  v53 = a5;
  v54 = a4;
  v11 = sub_26932BF40();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v48 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v55 = &v39 - v16;
  result = MEMORY[0x28223BE20](v15);
  v40 = a2;
  if (a3 != a2)
  {
    v51 = &v39 - v18;
    v20 = *v5;
    v22 = *(v19 + 16);
    v21 = v19 + 16;
    v23 = *(v21 + 56);
    v49 = v22;
    v50 = (v21 - 8);
    v52 = v21;
    v46 = (v21 + 16);
    v47 = v20;
    v24 = v20 + v23 * (a3 - 1);
    v45 = -v23;
    v25 = a1 - a3;
    v39 = v23;
    v26 = v20 + v23 * a3;
    v27 = v55;
    while (2)
    {
      v43 = v24;
      v44 = a3;
      v41 = v26;
      v42 = v25;
      v28 = v24;
      while (1)
      {
        v29 = v51;
        v30 = v49;
        v49(v51, v26, v11);
        v30(v27, v28, v11);
        v31 = v54(v29, v27);
        if (v7)
        {
          v38 = *v50;
          (*v50)(v27, v11);
          return (v38)(v29, v11);
        }

        v32 = v31;
        v33 = v27;
        v34 = *v50;
        (*v50)(v33, v11);
        result = (v34)(v29, v11);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v47)
        {
          __break(1u);
          return result;
        }

        v35 = *v46;
        v36 = v48;
        (*v46)(v48, v26, v11);
        swift_arrayInitWithTakeFrontToBack();
        result = (v35)(v28, v36, v11);
        v28 += v45;
        v26 += v45;
        v37 = __CFADD__(v25++, 1);
        v27 = v55;
        v7 = 0;
        if (v37)
        {
          goto LABEL_11;
        }
      }

      v27 = v55;
      v7 = 0;
LABEL_11:
      a3 = v44 + 1;
      v24 = v43 + v39;
      v25 = v42 - 1;
      v26 = v41 + v39;
      if (v44 + 1 != v40)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2692E7D1C(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v142 = a1;
  v163 = sub_26932BF40();
  v12 = *(*(v163 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v163);
  v146 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v149 = &v134 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v134 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v140 = &v134 - v23;
  MEMORY[0x28223BE20](v22);
  result = MEMORY[0x28223BE20](&v134 - v24);
  v161 = v27;
  v162 = a3;
  v30 = a3[1];
  if (v30 < 1)
  {
    v32 = MEMORY[0x277D84F90];
    v33 = a4;
LABEL_104:
    a4 = *v142;
    if (*v142)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_106;
    }

    goto LABEL_147;
  }

  v141 = &v134 - v26;
  v139 = result;
  v151 = v21;
  v147 = v29;
  v148 = v28;
  v137 = a6;
  v31 = 0;
  v159 = (v27 + 8);
  v160 = v27 + 16;
  v155 = (v27 + 32);
  v32 = MEMORY[0x277D84F90];
  v156 = a5;
  v33 = a4;
  v158 = a4;
  while (1)
  {
    v34 = v31;
    v143 = v32;
    if ((v31 + 1) < v30)
    {
      v144 = v31;
      v145 = v30;
      v35 = *v162;
      v36 = *(v161 + 72);
      a4 = *v162 + v36 * (v31 + 1);
      v37 = *(v161 + 16);
      v38 = v163;
      v37(v141, a4, v163);
      v157 = v36;
      v138 = v35;
      v39 = &v35[v36 * v144];
      v40 = v139;
      v152 = v37;
      v37(v139, v39, v38);
      v41 = v141;
      LODWORD(v154) = v33(v141, v40);
      if (v7)
      {
        v133 = *v159;
        (*v159)(v40, v38);
        v133(v41, v38);
      }

      v164 = 0;
      v42 = *v159;
      (*v159)(v40, v38);
      v150 = v42;
      result = (v42)(v41, v38);
      v136 = v145 - 1;
      v153 = v145 - 2;
      v43 = v144;
      a5 = v156;
      v44 = v157;
      v45 = &v138[v157 * (v144 + 2)];
      v46 = v140;
      while (v153 != v43)
      {
        v47 = v163;
        v48 = v152;
        (v152)(v46, v45, v163);
        v49 = a5;
        v50 = v151;
        (v48)(v151, a4, v47);
        v51 = v49;
        v52 = v164;
        v53 = v158(v46, v50);
        v164 = v52;
        if (v52)
        {
          v131 = v150;
          (v150)(v50, v47);
          v131(v46, v47);
        }

        v54 = v53;
        v55 = v150;
        (v150)(v50, v47);
        result = v55(v46, v47);
        ++v43;
        v44 = v157;
        v45 += v157;
        a4 += v157;
        a5 = v51;
        if ((v154 ^ v54))
        {
          v56 = v43 + 1;
          goto LABEL_12;
        }
      }

      v43 = v136;
      v56 = v145;
LABEL_12:
      v34 = v144;
      if (v154)
      {
        if (v56 < v144)
        {
          goto LABEL_141;
        }

        v32 = v163;
        if (v144 <= v43)
        {
          a4 = v44 * (v56 - 1);
          v57 = v56;
          v58 = v56 * v44;
          v145 = v57;
          v59 = v57;
          v60 = v144;
          v61 = v144 * v44;
          do
          {
            if (v60 != --v59)
            {
              v63 = *v162;
              if (!*v162)
              {
                goto LABEL_145;
              }

              v64 = *v155;
              (*v155)(v146, &v63[v61], v163);
              if (v61 < a4 || &v63[v61] >= &v63[v58])
              {
                v62 = v163;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v62 = v163;
                if (v61 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v64)(&v63[a4], v146, v62);
              a5 = v156;
              v44 = v157;
              v32 = v62;
            }

            ++v60;
            a4 -= v44;
            v58 -= v44;
            v61 += v44;
          }

          while (v60 < v59);
          v7 = v164;
          v33 = v158;
          v34 = v144;
          v56 = v145;
        }

        else
        {
          v7 = v164;
          v33 = v158;
        }
      }

      else
      {
        v32 = v163;
        v7 = v164;
        v33 = v158;
      }
    }

    else
    {
      v56 = (v31 + 1);
      v32 = v163;
    }

    v65 = v162[1];
    if (v56 < v65)
    {
      if (__OFSUB__(v56, v34))
      {
        goto LABEL_137;
      }

      if (v56 - v34 < v137)
      {
        if (__OFADD__(v34, v137))
        {
          __break(1u);
        }

        else
        {
          v145 = v56;
          if (&v34[v137] >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = &v34[v137];
          }

          if (v66 >= v34)
          {
            if (v145 == v66)
            {
              v56 = v145;
              goto LABEL_38;
            }

            v164 = v7;
            v113 = *v162;
            v114 = *(v161 + 72);
            v157 = *(v161 + 16);
            v115 = (v113 + v114 * (v145 - 1));
            v153 = -v114;
            v154 = v113;
            v144 = v34;
            v116 = &v34[-v145];
            v135 = v114;
            a4 = v113 + v145 * v114;
            v152 = v66;
            while (1)
            {
              v136 = a4;
              v138 = v116;
              v150 = v115;
              while (1)
              {
                v117 = v147;
                v118 = v157;
                (v157)(v147, a4, v32);
                v119 = v148;
                v118(v148, v115, v32);
                v120 = v164;
                v121 = v158(v117, v119);
                v164 = v120;
                if (v120)
                {
                  v132 = *v159;
                  (*v159)(v119, v32);
                  v132(v117, v32);
                }

                v122 = v121;
                v123 = *v159;
                (*v159)(v119, v32);
                result = (v123)(v117, v32);
                if ((v122 & 1) == 0)
                {
                  break;
                }

                if (!v154)
                {
                  goto LABEL_143;
                }

                v124 = *v155;
                v125 = v149;
                v32 = v163;
                (*v155)(v149, a4, v163);
                swift_arrayInitWithTakeFrontToBack();
                v124(v115, v125, v32);
                v115 += v153;
                a4 += v153;
                v126 = __CFADD__(v116++, 1);
                a5 = v156;
                if (v126)
                {
                  goto LABEL_101;
                }
              }

              a5 = v156;
              v32 = v163;
LABEL_101:
              v115 = &v150[v135];
              v116 = v138 - 1;
              a4 = v136 + v135;
              v56 = v152;
              if (++v145 == v152)
              {
                v33 = v158;
                v7 = v164;
                v34 = v144;
                goto LABEL_38;
              }
            }
          }
        }

        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

LABEL_38:
    v32 = v143;
    if (v56 < v34)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    a4 = v33;
    if ((result & 1) == 0)
    {
      result = sub_2692E2F60(0, *(v32 + 2) + 1, 1, v32);
      v32 = result;
    }

    v68 = *(v32 + 2);
    v67 = *(v32 + 3);
    v69 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      result = sub_2692E2F60((v67 > 1), v68 + 1, 1, v32);
      v32 = result;
    }

    *(v32 + 2) = v69;
    v70 = &v32[16 * v68];
    *(v70 + 4) = v34;
    *(v70 + 5) = v56;
    v152 = v56;
    v71 = *v142;
    if (!*v142)
    {
      goto LABEL_146;
    }

    if (v68)
    {
      break;
    }

    a5 = v156;
    v33 = a4;
LABEL_90:
    v30 = v162[1];
    v31 = v152;
    if (v152 >= v30)
    {
      goto LABEL_104;
    }
  }

  a5 = v156;
  v33 = a4;
  while (1)
  {
    a4 = v69 - 1;
    if (v69 >= 4)
    {
      v76 = &v32[16 * v69 + 32];
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_123;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_124;
      }

      v83 = &v32[16 * v69];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_126;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_129;
      }

      if (v87 >= v79)
      {
        v105 = &v32[16 * a4 + 32];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_135;
        }

        if (v74 < v108)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v69 == 3)
    {
      v72 = *(v32 + 4);
      v73 = *(v32 + 5);
      v82 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      v75 = v82;
LABEL_59:
      if (v75)
      {
        goto LABEL_125;
      }

      v88 = &v32[16 * v69];
      v90 = *v88;
      v89 = *(v88 + 1);
      v91 = __OFSUB__(v89, v90);
      v92 = v89 - v90;
      v93 = v91;
      if (v91)
      {
        goto LABEL_128;
      }

      v94 = &v32[16 * a4 + 32];
      v96 = *v94;
      v95 = *(v94 + 1);
      v82 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v82)
      {
        goto LABEL_131;
      }

      if (__OFADD__(v92, v97))
      {
        goto LABEL_132;
      }

      if (v92 + v97 >= v74)
      {
        if (v74 < v97)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v98 = &v32[16 * v69];
    v100 = *v98;
    v99 = *(v98 + 1);
    v82 = __OFSUB__(v99, v100);
    v92 = v99 - v100;
    v93 = v82;
LABEL_73:
    if (v93)
    {
      goto LABEL_127;
    }

    v101 = &v32[16 * a4];
    v103 = *(v101 + 4);
    v102 = *(v101 + 5);
    v82 = __OFSUB__(v102, v103);
    v104 = v102 - v103;
    if (v82)
    {
      goto LABEL_130;
    }

    if (v104 < v92)
    {
      goto LABEL_90;
    }

LABEL_80:
    v109 = a4 - 1;
    if (a4 - 1 >= v69)
    {
      break;
    }

    if (!*v162)
    {
      goto LABEL_142;
    }

    v110 = *&v32[16 * v109 + 32];
    v111 = *&v32[16 * a4 + 40];
    sub_2692E8928(*v162 + *(v161 + 72) * v110, *v162 + *(v161 + 72) * *&v32[16 * a4 + 32], *v162 + *(v161 + 72) * v111, v71, v33, a5);
    if (v7)
    {
    }

    if (v111 < v110)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_2692E90AC(v32);
    }

    if (v109 >= *(v32 + 2))
    {
      goto LABEL_122;
    }

    v112 = &v32[16 * v109];
    *(v112 + 4) = v110;
    *(v112 + 5) = v111;
    v165 = v32;
    result = sub_2692E9020(a4);
    v32 = v165;
    v69 = *(v165 + 2);
    if (v69 <= 1)
    {
      goto LABEL_90;
    }
  }

  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
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
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  result = sub_2692E90AC(v32);
  v32 = result;
LABEL_106:
  v165 = v32;
  v127 = *(v32 + 2);
  if (v127 < 2)
  {
  }

  while (*v162)
  {
    v128 = *&v32[16 * v127];
    v129 = *&v32[16 * v127 + 24];
    sub_2692E8928(*v162 + *(v161 + 72) * v128, *v162 + *(v161 + 72) * *&v32[16 * v127 + 16], *v162 + *(v161 + 72) * v129, a4, v33, a5);
    if (v7)
    {
    }

    if (v129 < v128)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_2692E90AC(v32);
    }

    if (v127 - 2 >= *(v32 + 2))
    {
      goto LABEL_134;
    }

    v130 = &v32[16 * v127];
    *v130 = v128;
    *(v130 + 1) = v129;
    v165 = v32;
    result = sub_2692E9020(v127 - 1);
    v32 = v165;
    v127 = *(v165 + 2);
    if (v127 <= 1)
    {
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_2692E8928(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6)
{
  v79 = a6;
  v80 = a5;
  v78 = sub_26932BF40();
  v11 = *(v78 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v78);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v70 - v18;
  result = MEMORY[0x28223BE20](v17);
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v25 = &v70 - v21;
  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_67;
  }

  v26 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v24 != -1)
  {
    v27 = (a2 - a1) / v24;
    v86 = a1;
    v85 = a4;
    v81 = v24;
    if (v27 < v26 / v24)
    {
      v28 = v27 * v24;
      if (a4 < a1 || a1 + v28 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v77 = a4 + v28;
      v84 = a4 + v28;
      if (v28 >= 1 && a2 < a3)
      {
        v54 = *(v11 + 16);
        v75 = v19;
        v76 = v11 + 16;
        v73 = v54;
        v74 = (v11 + 8);
        v55 = v25;
        v56 = v78;
        v57 = v6;
        v72 = a3;
        while (1)
        {
          v82 = a1;
          v58 = v73;
          v73(v55, a2, v56);
          v59 = a2;
          v60 = v55;
          v61 = v75;
          v58(v75, a4, v56);
          v62 = v80(v60, v61);
          if (v57)
          {
            break;
          }

          v63 = v62;
          v83 = 0;
          v64 = *v74;
          (*v74)(v61, v56);
          v64(v60, v56);
          v55 = v60;
          if (v63)
          {
            v65 = v81;
            v66 = v82;
            a2 = v59 + v81;
            if (v82 < v59 || v82 >= a2)
            {
              v56 = v78;
              swift_arrayInitWithTakeFrontToBack();
              v65 = v81;
              v57 = v83;
            }

            else
            {
              v57 = v83;
              v56 = v78;
              if (v82 != v59)
              {
                swift_arrayInitWithTakeBackToFront();
                v65 = v81;
              }
            }
          }

          else
          {
            v65 = v81;
            v66 = v82;
            v67 = a4 + v81;
            a2 = v59;
            if (v82 < a4 || v82 >= v67)
            {
              v56 = v78;
              swift_arrayInitWithTakeFrontToBack();
              v65 = v81;
              v57 = v83;
            }

            else
            {
              v57 = v83;
              v56 = v78;
              if (v82 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
                v65 = v81;
              }
            }

            v85 = v67;
            a4 = v67;
          }

          a1 = v66 + v65;
          v86 = a1;
          if (a4 >= v77 || a2 >= v72)
          {
            goto LABEL_65;
          }
        }

        v68 = *v74;
        (*v74)(v61, v56);
        v68(v60, v56);
      }

LABEL_65:
      sub_2692E90C0(&v86, &v85, &v84);
      return 1;
    }

    v77 = v22;
    v29 = a3;
    v30 = a2;
    v31 = v26 / v24 * v24;
    if (a4 < v30 || v30 + v31 <= a4)
    {
      v32 = v30;
      v33 = v78;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v32 = v30;
      v33 = v78;
      if (a4 == v30)
      {
LABEL_24:
        v83 = v6;
        v35 = a4 + v31;
        if (v31 >= 1)
        {
          v36 = -v24;
          v70 = a4;
          v71 = (v11 + 16);
          v73 = (v11 + 8);
          v37 = a4 + v31;
          v38 = v29;
          v39 = v77;
          v82 = a1;
          v75 = -v24;
          do
          {
            v76 = v35;
            v72 = v35;
            v40 = v32;
            v78 = v32 + v36;
            v74 = v32;
            while (1)
            {
              if (v40 <= a1)
              {
                v86 = v40;
                v35 = v72;
                goto LABEL_64;
              }

              v41 = v38;
              v42 = v75;
              v81 = v37;
              v43 = v37 + v75;
              v44 = *v71;
              (*v71)(v39, v37 + v75, v33);
              v44(v15, v78, v33);
              v45 = v39;
              v46 = v83;
              v47 = v80(v39, v15);
              v83 = v46;
              if (v46)
              {
                v69 = *v73;
                (*v73)(v15, v33);
                v69(v45, v33);
                v86 = v74;
                v35 = v76;
                goto LABEL_64;
              }

              v48 = v47;
              v49 = &v41[v42];
              v50 = v15;
              v51 = *v73;
              v52 = v50;
              (*v73)();
              v51(v45, v33);
              if (v48)
              {
                break;
              }

              v38 = &v41[v42];
              if (v41 < v81 || v49 >= v81)
              {
                swift_arrayInitWithTakeFrontToBack();
                v15 = v52;
                v39 = v77;
              }

              else
              {
                v15 = v52;
                v39 = v77;
                if (v41 != v81)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v76 = v43;
              v37 = v43;
              a1 = v82;
              v40 = v74;
              if (v43 <= v70)
              {
                v32 = v74;
                v35 = v76;
                goto LABEL_63;
              }
            }

            v38 = &v41[v42];
            if (v41 < v74 || v49 >= v74)
            {
              v32 = v78;
              swift_arrayInitWithTakeFrontToBack();
              v53 = v70;
              v15 = v52;
              v39 = v77;
            }

            else
            {
              v39 = v77;
              v32 = v78;
              v53 = v70;
              v15 = v52;
              if (v41 != v74)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v37 = v81;
            a1 = v82;
            v36 = v75;
            v35 = v76;
          }

          while (v81 > v53);
        }

LABEL_63:
        v86 = v32;
LABEL_64:
        v84 = v35;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v24 = v81;
    goto LABEL_24;
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_2692E9020(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2692E90AC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2692E90C0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_26932BF40();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_2692E91B8(uint64_t a1, int a2, uint64_t a3)
{
  v216 = a2;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308238, "({");
  v192 = *(v188 - 8);
  v5 = *(v192 + 64);
  v6 = MEMORY[0x28223BE20](v188);
  v180 = &v178 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v226 = &v178 - v8;
  v218 = sub_26932D240();
  v217 = *(v218 - 8);
  v9 = *(v217 + 64);
  v10 = MEMORY[0x28223BE20](v218);
  v220 = &v178 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v219 = &v178 - v12;
  v215 = sub_26932D0D0();
  v214 = *(v215 - 8);
  v13 = *(v214 + 64);
  MEMORY[0x28223BE20](v215);
  v221 = &v178 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_26932D0E0();
  v212 = *(v213 - 8);
  v15 = *(v212 + 64);
  MEMORY[0x28223BE20](v213);
  v230 = &v178 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_26932D100();
  v224 = *(v225 - 8);
  v17 = *(v224 + 64);
  MEMORY[0x28223BE20](v225);
  v227 = &v178 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_26932D110();
  v208 = *(v209 - 8);
  v19 = *(v208 + 64);
  MEMORY[0x28223BE20](v209);
  v211 = &v178 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_26932C0D0();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v210 = &v178 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_26932BFA0();
  v203 = *(v204 - 8);
  v24 = *(v203 + 64);
  MEMORY[0x28223BE20](v204);
  v201 = &v178 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_26932D6B0();
  v202 = *(v231 - 8);
  v26 = *(v202 + 64);
  MEMORY[0x28223BE20](v231);
  v200 = &v178 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for SiriTimeMeasurement();
  v28 = *(*(v199 - 8) + 64);
  MEMORY[0x28223BE20](v199);
  v232 = &v178 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_26932D0C0();
  v222 = *(v223 - 8);
  v30 = *(v222 + 64);
  MEMORY[0x28223BE20](v223);
  v233 = &v178 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_26932C0A0();
  v186 = *(v187 - 8);
  v32 = *(v186 + 64);
  MEMORY[0x28223BE20](v187);
  v185 = &v178 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_26932BFF0();
  v195 = *(v196 - 8);
  v34 = *(v195 + 64);
  v35 = MEMORY[0x28223BE20](v196);
  v207 = &v178 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v206 = &v178 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v205 = &v178 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v178 - v41;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308218, &qword_26932EEC8);
  v43 = *(*(v193 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v193);
  v197 = &v178 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v183 = &v178 - v47;
  MEMORY[0x28223BE20](v46);
  v49 = &v178 - v48;
  v229 = sub_26932C0B0();
  v228 = *(v229 - 8);
  v50 = *(v228 + 64);
  v51 = MEMORY[0x28223BE20](v229);
  v198 = &v178 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v184 = &v178 - v54;
  MEMORY[0x28223BE20](v53);
  v56 = &v178 - v55;
  v194 = sub_26932D160();
  v57 = *(v194 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v194);
  v60 = &v178 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308210, &qword_26932EEC0);
  v62 = *(*(v61 - 8) + 64);
  v63 = MEMORY[0x28223BE20](v61);
  v182 = &v178 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v63);
  v67 = &v178 - v66;
  MEMORY[0x28223BE20](v65);
  v69 = &v178 - v68;
  v237 = sub_26932BF40();
  v235 = *(v237 - 8);
  v70 = *(v235 + 64);
  v71 = MEMORY[0x28223BE20](v237);
  MEMORY[0x28223BE20](v71);
  v236 = &v178 - v73;
  v234 = a1;
  if (!a1)
  {
    if (qword_280307C40 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v231, qword_2803081F8);
    v78 = sub_26932D690();
    v79 = sub_26932D9B0();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_2692D8000, v78, v79, "Can NOT infer dateTime from nil.", v80, 2u);
      MEMORY[0x26D639280](v80, -1, -1);
    }

    return 0;
  }

  v181 = v72;
  v179 = a3;
  if (!a3)
  {
    v74 = v235;
    (*(v235 + 56))(v69, 1, 1, v237);

    goto LABEL_11;
  }

  DateTime.asDate()(v69);
  v74 = v235;
  v189 = *(v235 + 48);
  if (v189(v69, 1, v237) == 1)
  {
LABEL_11:
    if (qword_280307C48 != -1)
    {
      swift_once();
    }

    v81 = __swift_project_value_buffer(v61, qword_28030CD60);
    sub_2692E3B90(v81, v67, &qword_280308210, &qword_26932EEC0);
    v82 = v237;
    v189 = *(v74 + 48);
    if (v189(v67, 1, v237) == 1)
    {
      sub_2692EB48C(v67, &qword_280308210, &qword_26932EEC0);
      sub_26932BF30();
    }

    else
    {
      (*(v74 + 32))(v236, v67, v82);
    }

    v83 = v189(v69, 1, v82);
    v76 = v229;
    v77 = v228;
    v75 = v57;
    if (v83 != 1)
    {
      sub_2692EB48C(v69, &qword_280308210, &qword_26932EEC0);
    }

    goto LABEL_18;
  }

  v75 = v57;
  (*(v74 + 32))(v236, v69, v237);
  v76 = v229;
  v77 = v228;
LABEL_18:
  if (qword_2814B2520)
  {
    v84 = qword_2814B2520;
  }

  else
  {
    type metadata accessor for ApplicationContext();
    v84 = swift_allocObject();
    sub_26932C6E0();
    qword_2814B2520 = v84;
  }

  v85 = v75;
  sub_2692EB3E4(v84 + 16, v242);

  sub_26932D150();
  v86 = v77;
  if (qword_280307C50 != -1)
  {
    swift_once();
  }

  v193 = __swift_project_value_buffer(v193, qword_28030CD78);
  sub_2692E3B90(v193, v49, &qword_280308218, &qword_26932EEC8);
  v87 = *(v77 + 48);
  v191 = v77 + 48;
  v190 = v87;
  if (v87(v49, 1, v76) == 1)
  {
    sub_2692EB48C(v49, &qword_280308218, &qword_26932EEC8);
    sub_26932C050();
  }

  else
  {
    (*(v77 + 32))(v56, v49, v76);
  }

  __swift_project_boxed_opaque_existential_1(v242, v242[3]);
  sub_26932C310();
  sub_2692ED318(MEMORY[0x277D84F90]);
  v88 = sub_26932D140();

  (*(v195 + 8))(v42, v196);
  v89 = *(v77 + 8);
  v89(v56, v76);
  (*(v85 + 8))(v60, v194);
  if (v88)
  {
    if (qword_280307C40 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v231, qword_2803081F8);
    v90 = sub_26932D690();
    v91 = sub_26932D9B0();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_2692D8000, v90, v91, "witching hours active; moving referenceDate back by 1 day", v92, 2u);
      MEMORY[0x26D639280](v92, -1, -1);
    }

    v93 = v183;
    sub_2692E3B90(v193, v183, &qword_280308218, &qword_26932EEC8);
    if (v190(v93, 1, v76) == 1)
    {
      sub_2692EB48C(v93, &qword_280308218, &qword_26932EEC8);
      v94 = v184;
      sub_26932C050();
    }

    else
    {
      v94 = v184;
      (*(v86 + 32))(v184, v93, v76);
    }

    v95 = v186;
    v96 = v185;
    v97 = v187;
    (*(v186 + 104))(v185, *MEMORY[0x277CC9968], v187);
    v98 = v182;
    v99 = v236;
    sub_26932C080();
    (*(v95 + 8))(v96, v97);
    v89(v94, v76);
    v100 = v235;
    v101 = v237;
    if (v189(v98, 1, v237) == 1)
    {
      sub_2692EB48C(v98, &qword_280308210, &qword_26932EEC0);
    }

    else
    {
      (*(v100 + 8))(v99, v101);
      (*(v100 + 32))(v99, v98, v101);
    }
  }

  sub_26932D0B0();
  if (qword_2814B2520)
  {
    v102 = qword_2814B2520;
  }

  else
  {
    type metadata accessor for ApplicationContext();
    v102 = swift_allocObject();
    sub_26932C6E0();
    qword_2814B2520 = v102;
  }

  sub_2692EB3E4(v102 + 16, &v240);

  if (qword_280307C40 != -1)
  {
    swift_once();
  }

  v103 = v231;
  v104 = __swift_project_value_buffer(v231, qword_2803081F8);
  v105 = v202;
  v106 = *(v202 + 16);
  v107 = v200;
  v196 = v104;
  v106(v200);
  v195 = mach_absolute_time();
  v108 = v199;
  v109 = v232;
  *(v232 + *(v199 + 28)) = xmmword_26932EEB0;
  *(v109 + v108[8]) = 0x7FEFFFFFFFFFFFFFLL;
  v194 = v108[9];
  v110 = v201;
  sub_26932BF90();
  v111 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v112 = sub_26932BF70();
  v113 = [v111 initWithNSUUID_];

  (*(v203 + 8))(v110, v204);
  *(v109 + v194) = v113;
  *(v109 + 8) = 27;
  (v106)(v109 + v108[6], v107, v103);
  *v109 = v195;
  sub_26931A2C8();
  (*(v105 + 8))(v107, v103);
  __swift_project_boxed_opaque_existential_1(&v240, v241);
  sub_26932C310();
  __swift_project_boxed_opaque_existential_1(&v240, v241);
  sub_26932C310();
  __swift_project_boxed_opaque_existential_1(&v240, v241);
  sub_26932C310();
  sub_26932C0C0();
  (*(v208 + 104))(v211, *MEMORY[0x277D56150], v209);
  v114 = v197;
  sub_2692E3B90(v193, v197, &qword_280308218, &qword_26932EEC8);
  v115 = v229;
  if (v190(v114, 1, v229) == 1)
  {
    sub_2692EB48C(v114, &qword_280308218, &qword_26932EEC8);
    sub_26932C050();
  }

  else
  {
    (*(v228 + 32))(v198, v114, v115);
  }

  (*(v235 + 16))(v181, v236, v237);
  v116 = sub_26932D130();
  v117 = *(v116 + 48);
  v118 = *(v116 + 52);
  swift_allocObject();
  v231 = sub_26932D120();
  v119 = MEMORY[0x277D56138];
  if ((v216 & 1) == 0)
  {
    v119 = MEMORY[0x277D56130];
  }

  (*(v212 + 104))(v230, *v119, v213);
  (*(v214 + 104))(v221, *MEMORY[0x277D56128], v215);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308240, &qword_26932EF18);
  v120 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308248, &qword_26932EF20) - 8);
  v121 = *(*v120 + 72);
  v122 = (*(*v120 + 80) + 32) & ~*(*v120 + 80);
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_26932EEA0;
  v124 = v123 + v122;
  v125 = v120[14];
  v126 = *MEMORY[0x277D563C8];
  v127 = sub_26932D260();
  (*(*(v127 - 8) + 104))(v124, v126, v127);
  v128 = *MEMORY[0x277D56298];
  v129 = *(v217 + 104);
  v130 = v218;
  v129(v219, v128, v218);
  v129(v220, v128, v130);
  v131 = sub_26932D2F0();
  v132 = *(v131 + 48);
  v133 = *(v131 + 52);
  swift_allocObject();
  *(v124 + v125) = sub_26932D2B0();
  sub_2692ED318(v123);
  swift_setDeallocating();
  sub_2692EB48C(v124, &qword_280308248, &qword_26932EF20);
  swift_deallocClassInstance();
  v134 = v227;
  sub_26932D0F0();
  v135 = v226;
  sub_26932D0A0();
  SiriTimeMeasurement.logDelta()();
  v136 = v192;
  v137 = v180;
  v138 = v188;
  (*(v192 + 16))(v180, v135, v188);
  if ((*(v136 + 88))(v137, v138) == *MEMORY[0x277D56080])
  {
    (*(v136 + 96))(v137, v138);
    v139 = *v137;

    v140 = sub_26932D690();
    v141 = sub_26932D9B0();

    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v239 = v143;
      *v142 = 136315138;
      if (sub_26932D2E0())
      {
        v144 = sub_26932D1E0();

        v145 = v144 & 1;
      }

      else
      {
        v145 = 2;
      }

      LOBYTE(v238) = v145;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308258, &unk_26932EF30);
      v165 = sub_26932D790();
      v167 = sub_2692DD5A8(v165, v166, &v239);

      *(v142 + 4) = v167;
      _os_log_impl(&dword_2692D8000, v140, v141, "[DateTimeInferenceUtils.infer] Inference recommended meridiemSetByUser = %s", v142, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v143);
      MEMORY[0x26D639280](v143, -1, -1);
      MEMORY[0x26D639280](v142, -1, -1);

      v138 = v188;
      v136 = v192;
      v134 = v227;
    }

    else
    {
    }

    if (sub_26932D2E0() || v179 && sub_26932D2E0())
    {
      sub_26932D1E0();
    }

    if (sub_26932D2E0())
    {
      v168 = sub_26932D1E0();

      if ((v168 & 1) == 0 && sub_26932D2E0())
      {
        sub_26932D1F0();
      }

      v169 = sub_26932D690();
      v170 = sub_26932D9B0();

      if (os_log_type_enabled(v169, v170))
      {
        v171 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        v239 = v172;
        *v171 = 136315138;
        if (sub_26932D2E0())
        {
          v173 = sub_26932D1E0();

          v174 = v173 & 1;
        }

        else
        {
          v174 = 2;
        }

        LOBYTE(v238) = v174;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308258, &unk_26932EF30);
        v175 = sub_26932D790();
        v177 = sub_2692DD5A8(v175, v176, &v239);

        *(v171 + 4) = v177;
        _os_log_impl(&dword_2692D8000, v169, v170, "[DateTimeInferenceUtils.infer] Returning with meridiemSetByUser = %s", v171, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v172);
        MEMORY[0x26D639280](v172, -1, -1);
        MEMORY[0x26D639280](v171, -1, -1);

        (*(v192 + 8))(v135, v188);
        (*(v224 + 8))(v227, v225);
        goto LABEL_80;
      }
    }

    else
    {
      if (sub_26932D2E0())
      {
        sub_26932D1F0();
      }
    }

    (*(v136 + 8))(v135, v138);
    (*(v224 + 8))(v134, v225);
LABEL_80:
    sub_2692EB4EC(v232);
    (*(v222 + 8))(v233, v223);
    (*(v235 + 8))(v236, v237);
    __swift_destroy_boxed_opaque_existential_1Tm(&v240);
    __swift_destroy_boxed_opaque_existential_1Tm(v242);
    return v139;
  }

  v230 = *(v136 + 8);
  (v230)(v137, v138);

  v146 = sub_26932D690();
  v147 = sub_26932D9A0();

  v148 = os_log_type_enabled(v146, v147);
  v192 = v136 + 8;
  if (v148)
  {
    v149 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    v239 = v150;
    *v149 = 136315138;
    v151 = sub_26932D290();
    v153 = sub_2692DD5A8(v151, v152, &v239);

    *(v149 + 4) = v153;
    _os_log_impl(&dword_2692D8000, v146, v147, "Not confident when inferring alarm time, dateTime = %s", v149, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v150);
    MEMORY[0x26D639280](v150, -1, -1);
    MEMORY[0x26D639280](v149, -1, -1);
  }

  v154 = sub_26932D690();
  v155 = sub_26932D9A0();

  if (os_log_type_enabled(v154, v155))
  {
    v156 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    v239 = v157;
    *v156 = 136315138;
    v238 = sub_26932D2A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308250, &qword_26932EF28);
    v158 = sub_26932DA30();
    v160 = v159;

    v161 = sub_2692DD5A8(v158, v160, &v239);

    *(v156 + 4) = v161;
    _os_log_impl(&dword_2692D8000, v154, v155, "%s", v156, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v157);
    MEMORY[0x26D639280](v157, -1, -1);
    MEMORY[0x26D639280](v156, -1, -1);

    v162 = v135;
    v163 = v188;
  }

  else
  {

    v162 = v135;
    v163 = v138;
  }

  (v230)(v162, v163);
  (*(v224 + 8))(v227, v225);
  sub_2692EB4EC(v232);
  (*(v222 + 8))(v233, v223);
  (*(v235 + 8))(v236, v237);
  __swift_destroy_boxed_opaque_existential_1Tm(&v240);
  __swift_destroy_boxed_opaque_existential_1Tm(v242);
  return 0;
}

BOOL sub_2692EB324()
{
  v1 = *(v0 + 16);
  sub_26932BF10();
  v3 = fabs(v2);
  sub_26932BF10();
  return v3 < fabs(v4);
}

uint64_t sub_2692EB38C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2692EB3E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2692EB48C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2692EB4EC(uint64_t a1)
{
  v2 = type metadata accessor for SiriTimeMeasurement();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2692EB548()
{
  sub_26932DF50();
  sub_26932D7D0();

  return sub_26932DF70();
}

uint64_t sub_2692EB638()
{
  sub_26932DF50();
  sub_26932D7D0();

  return sub_26932DF70();
}

uint64_t sub_2692EB728()
{
  sub_26932DF50();
  sub_26932D7D0();

  return sub_26932DF70();
}

uint64_t sub_2692EB814()
{
  sub_26932DF50();
  sub_26932D7D0();

  return sub_26932DF70();
}

uint64_t sub_2692EB900()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308260);
  v1 = __swift_project_value_buffer(v0, qword_280308260);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

SiriTimeInternal::ButtonOption_optional __swiftcall ButtonOption.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26932DC60();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ButtonOption.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6C65636E6163;
  }

  else
  {
    result = 7562617;
  }

  *v0;
  return result;
}

uint64_t sub_2692EBA5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6C65636E6163;
  }

  else
  {
    v4 = 7562617;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x6C65636E6163;
  }

  else
  {
    v6 = 7562617;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26932DF00();
  }

  return v9 & 1;
}

uint64_t sub_2692EBAF8()
{
  v1 = *v0;
  sub_26932DF50();
  sub_26932D7D0();

  return sub_26932DF70();
}

uint64_t sub_2692EBB70()
{
  *v0;
  sub_26932D7D0();
}

uint64_t sub_2692EBBD4()
{
  v1 = *v0;
  sub_26932DF50();
  sub_26932D7D0();

  return sub_26932DF70();
}

uint64_t sub_2692EBC48@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26932DC60();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2692EBCA8(uint64_t *a1@<X8>)
{
  v2 = 7562617;
  if (*v1)
  {
    v2 = 0x6C65636E6163;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t static DirectInvocationUtils.siriKitConfirmationResponse(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26932C6A0();
  v4 = v3;
  v5 = sub_26932C290();
  v6 = [v5 identifier];

  v7 = sub_26932D770();
  v9 = v8;

  if (v2 == v7 && v4 == v9)
  {

LABEL_8:

    if (qword_280307C58 != -1)
    {
      swift_once();
    }

    v12 = sub_26932D6B0();
    __swift_project_value_buffer(v12, qword_280308260);
    v13 = sub_26932D690();
    v14 = sub_26932D9B0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2692D8000, v13, v14, "User selected SiriKit confirm action", v15, 2u);
      MEMORY[0x26D639280](v15, -1, -1);
    }

    v16 = MEMORY[0x277D5BED8];
LABEL_23:
    v27 = *v16;
    v28 = sub_26932C540();
    v41 = *(v28 - 8);
    (*(v41 + 104))(a1, v27, v28);
    v29 = *(v41 + 56);
    v30 = a1;
    v31 = 0;
    v32 = v28;
    goto LABEL_24;
  }

  v11 = sub_26932DF00();

  if (v11)
  {
    goto LABEL_8;
  }

  v17 = sub_26932C280();
  v18 = [v17 identifier];

  v19 = sub_26932D770();
  v21 = v20;

  if (v2 == v19 && v4 == v21)
  {
    goto LABEL_15;
  }

  v22 = sub_26932DF00();

  if (v22)
  {
    goto LABEL_17;
  }

  v34 = sub_26932C270();
  v35 = [v34 identifier];

  v36 = sub_26932D770();
  v38 = v37;

  if (v2 == v36 && v4 == v38)
  {
LABEL_15:

LABEL_17:

LABEL_18:
    if (qword_280307C58 != -1)
    {
      swift_once();
    }

    v23 = sub_26932D6B0();
    __swift_project_value_buffer(v23, qword_280308260);
    v24 = sub_26932D690();
    v25 = sub_26932D9B0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2692D8000, v24, v25, "User selected SiriKit cancel/reject action", v26, 2u);
      MEMORY[0x26D639280](v26, -1, -1);
    }

    v16 = MEMORY[0x277D5BED0];
    goto LABEL_23;
  }

  v39 = sub_26932DF00();

  if (v39)
  {
    goto LABEL_18;
  }

  v40 = sub_26932C540();
  v29 = *(*(v40 - 8) + 56);
  v32 = v40;
  v30 = a1;
  v31 = 1;
LABEL_24:

  return v29(v30, v31, 1, v32);
}

uint64_t static DirectInvocationUtils.isQuickStopDirectInvocation(_:)()
{
  if (sub_26932C6A0() == 0xD00000000000003ALL && 0x8000000269336080 == v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_26932DF00();
  }

  return v1 & 1;
}

SiriTimeInternal::DirectInvocationUtils::Timer::URI_optional __swiftcall DirectInvocationUtils.Timer.URI.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26932DC60();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DirectInvocationUtils.Timer.URI.rawValue.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000036;
  if (v1 == 4)
  {
    v2 = 0xD00000000000002ALL;
  }

  if (v1 == 3)
  {
    v3 = 0xD00000000000002ALL;
  }

  else
  {
    v3 = v2;
  }

  v4 = 0xD000000000000042;
  if (v1 == 1)
  {
    v4 = 0xD000000000000034;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000031;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2692EC29C()
{
  *v0;
  *v0;
  sub_26932D7D0();
}

void sub_2692EC388(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "armIntentFromTimer";
  v4 = "irectInvocation.Timer.Stop";
  v5 = 0xD000000000000036;
  if (v2 == 4)
  {
    v5 = 0xD00000000000002ALL;
  }

  else
  {
    v4 = "irectInvocation.Timer.Undo";
  }

  if (v2 == 3)
  {
    v6 = 0xD00000000000002ALL;
  }

  else
  {
    v6 = v5;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v7 = "Timer.ButtonPress";
  v8 = 0xD000000000000042;
  if (v2 == 1)
  {
    v8 = 0xD000000000000034;
  }

  else
  {
    v7 = "Timer.Disambiguation";
  }

  if (*v1)
  {
    v9 = v7;
  }

  else
  {
    v8 = 0xD000000000000031;
    v9 = "nsion";
  }

  if (*v1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v8 = v6;
    v10 = v3;
  }

  *a1 = v8;
  a1[1] = v10 | 0x8000000000000000;
}

SiriTimeInternal::DirectInvocationUtils::Timer::UserInfoKey_optional __swiftcall DirectInvocationUtils.Timer.UserInfoKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26932DC60();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DirectInvocationUtils.Timer.UserInfoKey.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 1651664246;
    v7 = 0x72506E6F74747562;
    if (v1 != 2)
    {
      v7 = 1920298856;
    }

    if (*v0)
    {
      v6 = 0x644972656D6974;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x646573756170;
    v3 = 0x6E6F697461727564;
    if (v1 != 7)
    {
      v3 = 0x6C6562616CLL;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x6574756E696DLL;
    if (v1 != 4)
    {
      v4 = 0x7469746E456F7375;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2692EC5F0@<X0>(uint64_t *a1@<X8>)
{
  result = DirectInvocationUtils.Timer.UserInfoKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static DirectInvocationUtils.Timer.makeReformedAlarmInvocation(hour:minute:label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308278, &qword_26932EF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26932EF40;
  *(inited + 32) = 1651664246;
  v9 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0x657461657263;
  *(inited + 56) = 0xE600000000000000;
  *(inited + 72) = v9;
  *(inited + 80) = 1920298856;
  v10 = MEMORY[0x277D83B88];
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = a1;
  *(inited + 120) = v10;
  *(inited + 128) = 0x6574756E696DLL;
  *(inited + 168) = v10;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = a2;
  sub_2692ED51C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308280, &qword_26932EF68);
  swift_arrayDestroy();
  if (a4)
  {
    v15 = v9;
    *&v14 = a3;
    *(&v14 + 1) = a4;
    sub_2692ED64C(&v14, v13);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2692ED1C8(v13, 0x6C6562616CLL, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  }

  return sub_26932C690();
}

SiriTimeInternal::DirectInvocationUtils::Alarm::URI_optional __swiftcall DirectInvocationUtils.Alarm.URI.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26932DC60();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DirectInvocationUtils.Alarm.URI.rawValue.getter()
{
  v1 = 0xD00000000000002ALL;
  v2 = *v0;
  v3 = 0xD000000000000036;
  if (v2 != 4)
  {
    v3 = 0xD000000000000042;
  }

  if (v2 == 3)
  {
    v3 = 0xD00000000000002ALL;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000034;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000031;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_2692EC8C0()
{
  *v0;
  *v0;
  *v0;
  sub_26932D7D0();
}

void sub_2692EC9AC(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000002ALL;
  v3 = *v1;
  v4 = "irectInvocation.Alarm.Stop";
  v5 = "irectInvocation.Alarm.Undo";
  v6 = 0xD000000000000036;
  if (v3 != 4)
  {
    v6 = 0xD000000000000042;
    v5 = "Timer.Disambiguation";
  }

  if (v3 == 3)
  {
    v6 = 0xD00000000000002ALL;
  }

  else
  {
    v4 = v5;
  }

  v7 = "Alarm.ButtonPress";
  if (v3 == 1)
  {
    v2 = 0xD000000000000034;
  }

  else
  {
    v7 = "Alarm.Disambiguation";
  }

  if (*v1)
  {
    v8 = v7;
  }

  else
  {
    v2 = 0xD000000000000031;
    v8 = "oEntity";
  }

  if (*v1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v2 = v6;
    v9 = v4;
  }

  *a1 = v2;
  a1[1] = v9 | 0x8000000000000000;
}

SiriTimeInternal::DirectInvocationUtils::Alarm::UserInfoKey_optional __swiftcall DirectInvocationUtils.Alarm.UserInfoKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26932DC60();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DirectInvocationUtils.Alarm.UserInfoKey.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 1651664246;
    v7 = 0x64496D72616C61;
    if (v1 != 2)
    {
      v7 = 0xD000000000000012;
    }

    if (*v0)
    {
      v6 = 0x72506E6F74747562;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x706D6F4365746164;
    v3 = 1920298856;
    if (v1 != 7)
    {
      v3 = 0x6574756E696DLL;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x6953656C646E6168;
    if (v1 != 4)
    {
      v4 = 0x6C6562616CLL;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2692ECC04(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v5 = *v3;
  sub_26932DF50();
  a3(v7, v5);
  return sub_26932DF70();
}

uint64_t sub_2692ECC74(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_26932DF50();
  a4(v8, v6);
  return sub_26932DF70();
}

unint64_t sub_2692ECCCC@<X0>(unint64_t *a1@<X8>)
{
  result = DirectInvocationUtils.Alarm.UserInfoKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static DirectInvocationUtils.Alarm.reformToTimer(duration:label:)(unint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308278, &qword_26932EF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26932EF50;
  *(inited + 32) = 1651664246;
  v5 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0x657461657263;
  *(inited + 56) = 0xE600000000000000;
  *(inited + 72) = v5;
  *(inited + 80) = 0x6E6F697461727564;
  *(inited + 88) = 0xE800000000000000;
  v6 = sub_26932D910();
  *(inited + 120) = sub_2692ED65C();
  *(inited + 96) = v6;
  sub_2692ED51C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308280, &qword_26932EF68);
  swift_arrayDestroy();
  if (a2)
  {
    v7 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v7 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {

      sub_2692ED890(1, a1, a2, v8);

      v9 = sub_26932DA50();
      v11 = v10;

      sub_2692ED92C(1uLL, a1, a2, v12);
      v14 = v13;

      *&v17[0] = v9;
      *(&v17[0] + 1) = v11;
      v19 = v14;
      sub_2692ED9DC();
      sub_26932D7F0();

      v20 = v5;
      *&v18 = v9;
      *(&v18 + 1) = v11;
      sub_2692ED64C(&v18, v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_2692ED1C8(v17, 0x6C6562616CLL, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    }
  }

  return sub_26932C690();
}

unint64_t static DirectInvocationUtils.Alarm.handleVerbActionPayload(verbStr:alarmId:handleSilently:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308278, &qword_26932EF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26932EF40;
  *(inited + 32) = 1651664246;
  v11 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = v11;
  *(inited + 80) = 0x64496D72616C61;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = a3;
  *(inited + 104) = a4;
  *(inited + 120) = v11;
  strcpy((inited + 128), "handleSilently");
  *(inited + 143) = -18;
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = a5;

  v12 = sub_2692ED51C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308280, &qword_26932EF68);
  swift_arrayDestroy();
  return v12;
}

unint64_t sub_2692ED0A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v5 = 7562617;
  }

  else
  {
    v5 = 0x6C65636E6163;
  }

  if (a3)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308278, &qword_26932EF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26932EF50;
  *(inited + 32) = 1651664246;
  v8 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = v8;
  strcpy((inited + 80), "buttonPressed");
  *(inited + 120) = v8;
  *(inited + 94) = -4864;
  *(inited + 96) = v5;
  *(inited + 104) = v6;

  v9 = sub_2692ED51C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308280, &qword_26932EF68);
  swift_arrayDestroy();
  return v9;
}

_OWORD *sub_2692ED1C8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_269324148(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_269324810();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2693244EC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_269324148(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_26932DF40();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    return sub_2692ED64C(a1, v23);
  }

  else
  {
    sub_2693247A4(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_2692ED330(uint64_t a1, uint64_t (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308248, &qword_26932EF20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803082D8, &unk_26932F390);
    v10 = sub_26932DC50();
    v11 = *(v4 + 48);
    v12 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);

    while (1)
    {
      sub_2692E3B90(v12, v8, &qword_280308248, &qword_26932EF20);
      result = a2(v8);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v10 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = v10[6];
      v18 = sub_26932D260();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v16, v8, v18);
      *(v10[7] + 8 * v16) = *&v8[v11];
      v19 = v10[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v10[2] = v21;
      v12 += v13;
      if (!--v9)
      {

        return v10;
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

unint64_t sub_2692ED51C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803082D0, &unk_26932F380);
    v3 = sub_26932DC50();
    v4 = a1 + 32;

    while (1)
    {
      sub_2692E3B90(v4, &v13, &qword_280308280, &qword_26932EF68);
      v5 = v13;
      v6 = v14;
      result = sub_269324148(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2692ED64C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

_OWORD *sub_2692ED64C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2692ED65C()
{
  result = qword_280308288;
  if (!qword_280308288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280308288);
  }

  return result;
}

unint64_t sub_2692ED6A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803082C0, &qword_26932F370);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803082C8, &qword_26932F378);
    v8 = sub_26932DC50();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2692E3B90(v10, v6, &qword_2803082C0, &qword_26932F370);
      result = sub_2693241C0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_26932BFA0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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

uint64_t sub_2692ED890(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_26932D7E0();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t sub_2692ED92C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
  }

  v4 = a3;
  v5 = a2;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  a1 = sub_26932D7E0();
  if (a2)
  {
    a1 = v8;
  }

  if (4 * v6 < a1 >> 14)
  {
    goto LABEL_14;
  }

  a2 = v8;
  a3 = v5;
  a4 = v4;

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

unint64_t sub_2692ED9DC()
{
  result = qword_280308290;
  if (!qword_280308290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308290);
  }

  return result;
}

unint64_t sub_2692EDA34()
{
  result = qword_280308298;
  if (!qword_280308298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308298);
  }

  return result;
}

unint64_t sub_2692EDA8C()
{
  result = qword_2803082A0;
  if (!qword_2803082A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803082A0);
  }

  return result;
}

unint64_t sub_2692EDAE4()
{
  result = qword_2803082A8;
  if (!qword_2803082A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803082A8);
  }

  return result;
}

unint64_t sub_2692EDB3C()
{
  result = qword_2803082B0;
  if (!qword_2803082B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803082B0);
  }

  return result;
}

unint64_t sub_2692EDB94()
{
  result = qword_2803082B8;
  if (!qword_2803082B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803082B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ButtonOption(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ButtonOption(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ClockTimeSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClockTimeSnippetModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2692EDF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x77656956656D6974 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26932DF00();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2692EDFF0(uint64_t a1)
{
  v2 = sub_2692EE4C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2692EE02C(uint64_t a1)
{
  v2 = sub_2692EE4C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2692EE068()
{
  sub_26932DF50();
  MEMORY[0x26D638C20](0);
  return sub_26932DF70();
}

uint64_t sub_2692EE0AC()
{
  sub_26932DF50();
  MEMORY[0x26D638C20](0);
  return sub_26932DF70();
}

uint64_t sub_2692EE0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26932DF00();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2692EE178(uint64_t a1)
{
  v2 = sub_2692EE514();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2692EE1B4(uint64_t a1)
{
  v2 = sub_2692EE514();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriClockSnippetModels.encode(to:)(void *a1)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803082E0, &qword_26932F3A0);
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v19);
  v5 = &v18 - v4;
  v6 = type metadata accessor for SiriClockSnippetModels(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803082E8, &qword_26932F3A8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2692EE4C0();
  sub_26932DF90();
  sub_2692F08DC(v18, v9, type metadata accessor for SiriClockSnippetModels);
  sub_2692EE514();
  sub_26932DD40();
  type metadata accessor for ClockTimeSnippetModel(0);
  sub_2692EEA08(&qword_280308300, type metadata accessor for ClockTimeSnippetModel);
  v16 = v19;
  sub_26932DDA0();
  sub_2692EE5C0(v9);
  (*(v2 + 8))(v5, v16);
  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_2692EE4C0()
{
  result = qword_2803082F0;
  if (!qword_2803082F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803082F0);
  }

  return result;
}

unint64_t sub_2692EE514()
{
  result = qword_2803082F8;
  if (!qword_2803082F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803082F8);
  }

  return result;
}

uint64_t sub_2692EE588(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2692EE5C0(uint64_t a1)
{
  v2 = type metadata accessor for ClockTimeSnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SiriClockSnippetModels.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for SiriClockSnippetModels(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308308, &qword_26932F3B0);
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308310, &qword_26932F3B8);
  v11 = *(v31 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v31);
  v14 = &v25 - v13;
  v15 = a1[3];
  v16 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2692EE4C0();
  v30 = v14;
  v17 = v28;
  sub_26932DF80();
  if (!v17)
  {
    v18 = v27;
    v28 = v11;
    if (*(sub_26932DD10() + 16) == 1)
    {
      sub_2692EE514();
      sub_26932DC80();
      v19 = v28;
      type metadata accessor for ClockTimeSnippetModel(0);
      sub_2692EEA08(&qword_280308320, type metadata accessor for ClockTimeSnippetModel);
      sub_26932DD00();
      (*(v18 + 8))(v10, v7);
      (*(v19 + 8))(v30, v31);
      swift_unknownObjectRelease();
      sub_2692EEA50(v6, v26);
    }

    else
    {
      v20 = sub_26932DBC0();
      swift_allocError();
      v22 = v21;
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308318, &unk_26932F3C0) + 48);
      *v22 = v3;
      sub_26932DC90();
      sub_26932DBB0();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v28 + 8))(v30, v31);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v29);
}

uint64_t sub_2692EEA08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2692EEA50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriClockSnippetModels(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2692EEAB4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ClockTimeSnippetModel.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ClockTimeSnippetModel.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ClockTimeSnippetModel.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClockTimeSnippetModel(0) + 20);
  v4 = sub_26932BF40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClockTimeSnippetModel.date.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClockTimeSnippetModel(0) + 20);
  v4 = sub_26932BF40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ClockTimeSnippetModel.currentTimeStaticTitle.getter()
{
  v0 = *(type metadata accessor for ClockTimeSnippetModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  sub_26932C120();
  return v2;
}

uint64_t sub_2692EED5C@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for ClockTimeSnippetModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  result = sub_26932C120();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_2692EEDC4(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for ClockTimeSnippetModel(0) + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  return sub_26932C130();
}

uint64_t ClockTimeSnippetModel.currentTimeStaticTitle.setter()
{
  v0 = *(type metadata accessor for ClockTimeSnippetModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  return sub_26932C130();
}

uint64_t (*ClockTimeSnippetModel.currentTimeStaticTitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for ClockTimeSnippetModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  *(v3 + 32) = sub_26932C110();
  return sub_2692EEF28;
}

uint64_t ClockTimeSnippetModel.timeDescriptiveAbsolute.getter()
{
  v0 = *(type metadata accessor for ClockTimeSnippetModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  sub_26932C120();
  return v2;
}

uint64_t sub_2692EEF80@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for ClockTimeSnippetModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  result = sub_26932C120();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_2692EEFE8(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for ClockTimeSnippetModel(0) + 28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  return sub_26932C130();
}

uint64_t ClockTimeSnippetModel.timeDescriptiveAbsolute.setter()
{
  v0 = *(type metadata accessor for ClockTimeSnippetModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  return sub_26932C130();
}

uint64_t (*ClockTimeSnippetModel.timeDescriptiveAbsolute.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for ClockTimeSnippetModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  *(v3 + 32) = sub_26932C110();
  return sub_2692F1710;
}

uint64_t ClockTimeSnippetModel.locale.getter()
{
  v0 = *(type metadata accessor for ClockTimeSnippetModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308330, &unk_26932F3D0);
  return sub_26932C120();
}

uint64_t sub_2692EF1A0()
{
  v0 = *(type metadata accessor for ClockTimeSnippetModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308330, &unk_26932F3D0);
  return sub_26932C120();
}

uint64_t sub_2692EF1F8(uint64_t a1)
{
  v2 = sub_26932BFF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2);
  v10(v7, v9, v2);
  LODWORD(a1) = *(type metadata accessor for ClockTimeSnippetModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308330, &unk_26932F3D0);
  sub_26932C130();
  return (*(v3 + 8))(v9, v2);
}

uint64_t ClockTimeSnippetModel.locale.setter(uint64_t a1)
{
  v2 = sub_26932BFF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = *(type metadata accessor for ClockTimeSnippetModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308330, &unk_26932F3D0);
  sub_26932C130();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ClockTimeSnippetModel.locale.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for ClockTimeSnippetModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308330, &unk_26932F3D0);
  *(v3 + 32) = sub_26932C110();
  return sub_2692F1710;
}

void sub_2692EF500(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t ClockTimeSnippetModel.punchoutURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ClockTimeSnippetModel(0) + 36);

  return sub_2692EF590(v3, a1);
}

uint64_t sub_2692EF590(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ClockTimeSnippetModel.punchoutURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ClockTimeSnippetModel(0) + 36);

  return sub_2692EF644(a1, v3);
}

uint64_t sub_2692EF644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ClockTimeSnippetModel.init(id:date:currentTimeStaticTitle:timeDescriptiveAbsolute:locale:punchoutURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v40 = a6;
  v41 = a7;
  v38 = a5;
  v35 = a3;
  v36 = a4;
  v42 = a10;
  v15 = sub_26932BFF0();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v37 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - v20;
  v22 = type metadata accessor for ClockTimeSnippetModel(0);
  v23 = v22[9];
  v39 = v23;
  v24 = sub_26932BED0();
  (*(*(v24 - 8) + 56))(&a9[v23], 1, 1, v24);
  *a9 = a1;
  *(a9 + 1) = a2;
  v25 = v22[5];
  v34 = sub_26932BF40();
  v26 = *(v34 - 8);
  (*(v26 + 16))(&a9[v25], a3, v34);
  v27 = v22[6];
  v43 = v36;
  v44 = v38;
  sub_26932C100();
  v28 = v22[7];
  v43 = v40;
  v44 = v41;
  sub_26932C100();
  v29 = v16[2];
  v29(v21, a8, v15);
  v30 = v22[8];
  v29(v37, v21, v15);
  sub_26932C100();
  v31 = v16[1];
  v31(a8, v15);
  (*(v26 + 8))(v35, v34);
  v31(v21, v15);
  return sub_2692EF644(v42, &a9[v39]);
}

unint64_t sub_2692EF99C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000017;
  v4 = 0x656C61636F6CLL;
  if (v1 != 4)
  {
    v4 = 0x74756F68636E7570;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1702125924;
  if (v1 != 1)
  {
    v5 = 0xD000000000000016;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2692EFA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2692F1508(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2692EFA88(uint64_t a1)
{
  v2 = sub_2692EFE44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2692EFAC4(uint64_t a1)
{
  v2 = sub_2692EFE44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClockTimeSnippetModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308338, &qword_26932F3E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2692EFE44();
  sub_26932DF90();
  v11 = *v3;
  v12 = v3[1];
  v26 = 0;
  sub_26932DD60();
  if (!v2)
  {
    v13 = type metadata accessor for ClockTimeSnippetModel(0);
    v14 = v13[5];
    v25 = 1;
    sub_26932BF40();
    sub_2692EEA08(&qword_280308348, MEMORY[0x277CC9578]);
    sub_26932DDA0();
    v15 = v13[6];
    v24 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
    sub_2692F0798(&qword_280308350);
    sub_26932DDA0();
    v16 = v13[7];
    v23 = 3;
    sub_26932DDA0();
    v17 = v13[8];
    v22 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308330, &unk_26932F3D0);
    sub_2692F0808(&qword_280308358);
    sub_26932DDA0();
    v18 = v13[9];
    v21 = 5;
    sub_26932BED0();
    sub_2692EEA08(&qword_280308370, MEMORY[0x277CC9260]);
    sub_26932DD50();
  }

  return (*(v6 + 8))(v9, v5);
}