uint64_t sub_2270544F8()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v9 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = sub_227055020;
  }

  else
  {
    v6 = *(v2 + 296);
    v7 = *(v2 + 104);

    v5 = sub_227054620;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_227054620()
{
  v1 = v0[32];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  sub_227663F50();
  (*(v3 + 8))(v2, v4);
  v5 = swift_task_alloc();
  v0[40] = v5;
  *v5 = v0;
  v5[1] = sub_2270546E8;
  v6 = v0[32];
  v7 = v0[13];

  return sub_22705531C(v6);
}

uint64_t sub_2270546E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *v2;
  *(v4 + 328) = a1;
  *(v4 + 336) = v1;

  v7 = *(v3 + 104);
  if (v1)
  {
    v8 = sub_227055114;
  }

  else
  {
    v8 = sub_22705481C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22705481C()
{
  v1 = v0[20];
  v2 = v0[41];
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(v0[41] + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v29 = v0[23];
  v28 = (v1 + 48);
  v26 = v0[20];
  v27 = (v1 + 32);
  v30 = v0[41];

  v11 = 0;
  v31 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v11;
    v0[43] = v31;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v13 = v0[24];
    v14 = v0[22];
    v15 = v0[18];
    v32 = v0[19];
    v16 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    (*(v29 + 16))(v13, *(v30 + 48) + *(v29 + 72) * (v16 | (v11 << 6)), v14);
    sub_227666BA0();
    sub_227662760();

    (*(v29 + 8))(v13, v14);
    if ((*v28)(v15, 1, v32) == 1)
    {
      result = sub_226E97D1C(v0[18], &unk_27D7BB9D0, &qword_227671550);
    }

    else
    {
      v17 = *v27;
      (*v27)(v0[21], v0[18], v0[19]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_2273A63FC(0, *(v31 + 2) + 1, 1, v31);
      }

      v19 = *(v31 + 2);
      v18 = *(v31 + 3);
      if (v19 >= v18 >> 1)
      {
        v31 = sub_2273A63FC(v18 > 1, v19 + 1, 1, v31);
      }

      v20 = v0[21];
      v21 = v0[19];
      *(v31 + 2) = v19 + 1;
      result = v17(&v31[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v19], v20, v21);
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

  v22 = v0[41];
  v23 = v0[13];

  __swift_project_boxed_opaque_existential_0((v23 + 216), *(v23 + 240));
  v24 = swift_task_alloc();
  v0[44] = v24;
  *v24 = v0;
  v24[1] = sub_227054B2C;
  v25 = v0[32];

  return sub_2270120EC(v25, v31);
}

uint64_t sub_227054B2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;
  v4[45] = a1;
  v4[46] = v1;

  v7 = v4[43];
  if (v1)
  {
    v8 = v4[13];

    return MEMORY[0x2822009F8](sub_227054E20, v8, 0);
  }

  else
  {

    v9 = swift_task_alloc();
    v4[47] = v9;
    *v9 = v6;
    v9[1] = sub_227054CD8;
    v10 = v4[13];

    return sub_227055C1C(a1);
  }
}

uint64_t sub_227054CD8()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 360);
  v6 = *(v2 + 104);

  if (v0)
  {
    v7 = sub_227055218;
  }

  else
  {
    v7 = sub_227054F24;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_227054E20()
{
  (*(v0[30] + 8))(v0[32], v0[29]);
  v13 = v0[46];
  v1 = v0[35];
  v3 = v0[31];
  v2 = v0[32];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[24];
  v7 = v0[21];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];

  v11 = v0[1];

  return v11();
}

uint64_t sub_227054F24()
{
  (*(v0[30] + 8))(v0[32], v0[29]);
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[32];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[24];
  v7 = v0[21];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];

  v11 = v0[1];

  return v11();
}

uint64_t sub_227055020()
{
  v1 = v0[37];

  v14 = v0[39];
  v2 = v0[35];
  v4 = v0[31];
  v3 = v0[32];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[24];
  v8 = v0[21];
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[16];

  v12 = v0[1];

  return v12();
}

uint64_t sub_227055114()
{
  (*(v0[30] + 8))(v0[32], v0[29]);
  v13 = v0[42];
  v1 = v0[35];
  v3 = v0[31];
  v2 = v0[32];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[24];
  v7 = v0[21];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];

  v11 = v0[1];

  return v11();
}

uint64_t sub_227055218()
{
  (*(v0[30] + 8))(v0[32], v0[29]);
  v13 = v0[48];
  v1 = v0[35];
  v3 = v0[31];
  v2 = v0[32];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[24];
  v7 = v0[21];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22705531C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_227662940();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_227662930();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = sub_227662750();
  v2[12] = v10;
  v11 = *(v10 - 8);
  v2[13] = v11;
  v2[14] = *(v11 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2270554EC, v1, 0);
}

uint64_t sub_2270554EC()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[3];
  sub_227662740();
  (*(v7 + 104))(v5, *MEMORY[0x277CC9968], v6);
  sub_227668950();
  sub_227662610();
  (*(v7 + 8))(v5, v6);
  v9 = *(v3 + 8);
  v0[18] = v9;
  v0[19] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v2);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_226E97D1C(v0[11], &qword_27D7B9690, qword_227670B50);
    v10 = sub_227664710();
    sub_227063888(&qword_27D7B9EB8, MEMORY[0x277D50BA8]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D50B90], v10);
    swift_willThrow();
    v13 = v0[16];
    v12 = v0[17];
    v14 = v0[15];
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[7];

    v18 = v0[1];

    return v18();
  }

  else
  {
    v20 = v0[16];
    v36 = v0[17];
    v37 = v0[15];
    v21 = v0[12];
    v22 = v0[13];
    v23 = v0[11];
    v25 = v0[6];
    v24 = v0[7];
    v26 = v0[4];
    v39 = v0[5];
    v40 = v0[14];
    sub_227662920();
    sub_2276625F0();
    (*(v25 + 8))(v24, v39);
    v9(v23, v21);
    v27 = *(v22 + 32);
    v27(v36, v20, v21);
    v28 = v26[17];
    v29 = v26[18];
    __swift_project_boxed_opaque_existential_0(v26 + 14, v28);
    (*(v22 + 16))(v37, v36, v21);
    v30 = (*(v22 + 80) + 24) & ~*(v22 + 80);
    v31 = swift_allocObject();
    v0[20] = v31;
    *(v31 + 16) = v26;
    v27(v31 + v30, v37, v21);
    v32 = *(v29 + 24);

    v38 = (v32 + *v32);
    v33 = v32[1];
    v34 = swift_task_alloc();
    v0[21] = v34;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE8C0, &qword_227676BC0);
    *v34 = v0;
    v34[1] = sub_227055950;

    return (v38)(v0 + 2, sub_227063764, v31, v35, v28, v29);
  }
}

uint64_t sub_227055950()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 160);
  v6 = *(v2 + 32);

  if (v0)
  {
    v7 = sub_227055B64;
  }

  else
  {
    v7 = sub_227055A98;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_227055A98()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);
  (*(v0 + 144))(*(v0 + 136), *(v0 + 96));
  v7 = *(v0 + 16);

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_227055B64()
{
  v1 = *(v0 + 152);
  (*(v0 + 144))(*(v0 + 136), *(v0 + 96));
  v2 = *(v0 + 176);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 56);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_227055C1C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766A460();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227055CDC, v1, 0);
}

uint64_t sub_227055CDC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_0(v1 + 14, v1[17]);
  v4 = swift_allocObject();
  v0[7] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(v3 + 24);

  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_227055E6C;

  return v9();
}

uint64_t sub_227055E6C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_2270638D0;
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *(v2 + 24);

    v5 = sub_227055F94;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_227055F94()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *__swift_project_boxed_opaque_existential_0(v4 + 19, v4[22]);
  sub_2271D7EE8();
  v6 = v4[24];
  v7 = v4[25];
  swift_getObjectType();
  sub_22766A450();
  sub_2276699D0();
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_227056070()
{
  v1[2] = v0;
  v2 = sub_22766B390();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = sub_22766A8A0();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227056198, v0, 0);
}

uint64_t sub_227056198()
{
  v36 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(*(v0 + 16) + 344);
  v5 = sub_2276693C0();
  (*(v2 + 104))(v1, *MEMORY[0x277D4F968], v3);
  v6 = sub_226EC9A38(v1, v5);

  (*(v2 + 8))(v1, v3);
  if (v6)
  {
    v7 = *(v0 + 16);
    v8 = v7[58];
    __swift_project_boxed_opaque_existential_0(v7 + 54, v7[57]);
    *(v0 + 113) = 0;
    *(v0 + 80) = sub_226F19410();
    *(v0 + 88) = sub_226F19464();
    sub_22766A130();
    v9 = *(MEMORY[0x277D0A890] + 4);
    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    v11 = type metadata accessor for HealthDataSystem();
    v12 = sub_227063888(qword_28139AD20, type metadata accessor for HealthDataSystem);
    *v10 = v0;
    v10[1] = sub_2270565D4;
    v13 = *(v0 + 16);
    v14 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282161508](v12, &unk_227676B60, v13, v11, v14, v12);
  }

  else
  {
    v15 = *(v0 + 40);
    v16 = *(v0 + 16);
    sub_22766A6D0();

    v17 = sub_22766B380();
    v18 = sub_22766C8B0();

    v19 = os_log_type_enabled(v17, v18);
    v21 = *(v0 + 32);
    v20 = *(v0 + 40);
    v22 = *(v0 + 24);
    if (v19)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v35 = v24;
      *v23 = 136446210;
      *(v0 + 112) = v4;
      v25 = MEMORY[0x22AA958B0](MEMORY[0x277D53BF8], MEMORY[0x277D53BF0]);
      v27 = sub_226E97AE8(v25, v26, &v35);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_226E8E000, v17, v18, "Saving standalone mindfulness sessions into HealthKit is not supported on platform: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x22AA9A450](v24, -1, -1);
      MEMORY[0x22AA9A450](v23, -1, -1);
    }

    (*(v21 + 8))(v20, v22);
    v28 = sub_227664710();
    sub_227063888(&qword_27D7B9EB8, MEMORY[0x277D50BA8]);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D50BA0], v28);
    swift_willThrow();
    v30 = *(v0 + 72);
    v32 = *(v0 + 40);
    v31 = *(v0 + 48);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_2270565D4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_2270568A4;
  }

  else
  {
    v6 = sub_227056700;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_227056700()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);
  v5 = v4[58];
  __swift_project_boxed_opaque_existential_0(v4 + 54, v4[57]);
  *(v0 + 114) = 0;
  sub_22766A120();
  sub_22766A710();
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_226E8E000, v6, v7, "Finished processing standalone mindful session job", v8, 2u);
    MEMORY[0x22AA9A450](v8, -1, -1);
  }

  v9 = *(v0 + 72);
  v11 = *(v0 + 40);
  v10 = *(v0 + 48);
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);

  (*(v13 + 8))(v10, v12);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2270568A4()
{
  v1 = v0[13];
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_227056924(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  v4 = sub_227668E30();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v2[10] = *(v5 + 64);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = sub_22766B390();
  v2[18] = v6;
  v7 = *(v6 - 8);
  v2[19] = v7;
  v8 = *(v7 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227056AD0, a2, 0);
}

uint64_t sub_227056AD0()
{
  v1 = *(v0 + 56);
  v2 = v1[17];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_0(v1 + 14, v2);
  v4 = *(v3 + 24);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 208) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F00, &qword_227676B68);
  *v6 = v0;
  v6[1] = sub_227056C38;

  return (v9)(v0 + 40, sub_227058E94, 0, v7, v2, v3);
}

uint64_t sub_227056C38()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_2270586BC;
  }

  else
  {
    v6 = sub_227056D64;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_227056D64()
{
  v86 = v0;
  v1 = *(v0 + 40);
  *(v0 + 224) = v1;
  if (!*(v1 + 16))
  {
    v18 = *(v0 + 168);

    sub_22766A6D0();
    v19 = sub_22766B380();
    v20 = sub_22766C8B0();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 168);
    v23 = *(v0 + 144);
    v24 = *(v0 + 152);
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_226E8E000, v19, v20, "HealthDataSystem: No StandaloneMindfulSessionJobs", v25, 2u);
      MEMORY[0x22AA9A450](v25, -1, -1);
    }

    (*(v24 + 8))(v22, v23);
LABEL_22:
    v66 = *(v0 + 192);
    v65 = *(v0 + 200);
    v68 = *(v0 + 176);
    v67 = *(v0 + 184);
    v70 = *(v0 + 160);
    v69 = *(v0 + 168);
    v72 = *(v0 + 128);
    v71 = *(v0 + 136);
    v74 = *(v0 + 112);
    v73 = *(v0 + 120);
    v79 = *(v0 + 104);
    v81 = *(v0 + 96);
    v84 = *(v0 + 88);

    v75 = *(v0 + 8);

    return v75();
  }

  v2 = *(v0 + 200);
  sub_22766A6D0();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 200);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  if (v5)
  {
    v9 = *(v0 + 64);
    v82 = *(v0 + 200);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v85 = v11;
    *v10 = 136315138;
    sub_227063888(&unk_2813A5530, MEMORY[0x277D538B8]);
    v12 = sub_22766C610();
    v14 = sub_226E97AE8(v12, v13, &v85);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v3, v4, "HealthDataSystem: Saving StandaloneMindfulSessionJobs: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    v17 = *(v7 + 8);
    v16 = v7 + 8;
    v15 = v17;
    v17(v82, v8);
  }

  else
  {

    v26 = *(v7 + 8);
    v16 = v7 + 8;
    v15 = v26;
    v26(v6, v8);
  }

  *(v0 + 232) = v16;
  *(v0 + 240) = v15;
  v27 = *(v0 + 72);
  v28 = *(v0 + 56);
  v29 = *(v1 + 32);
  *(v0 + 344) = v29;
  v30 = -1;
  v31 = -1 << v29;
  if (-v31 < 64)
  {
    v30 = ~(-1 << -v31);
  }

  v32 = v30 & *(v1 + 56);
  if (!v32)
  {
    v35 = 0;
    v36 = ((63 - v31) >> 6) - 1;
    v34 = *(v0 + 224);
    while (v36 != v35)
    {
      v33 = v35 + 1;
      v32 = *(v34 + 8 * v35++ + 64);
      if (v32)
      {
        goto LABEL_15;
      }
    }

    v64 = *__swift_project_boxed_opaque_existential_0((v28 + 152), *(v28 + 176));
    sub_2271D7EE8();
    goto LABEL_22;
  }

  v33 = 0;
  v34 = *(v0 + 224);
LABEL_15:
  *(v0 + 248) = v32;
  *(v0 + 256) = v33;
  v37 = *(v0 + 192);
  v39 = *(v0 + 128);
  v38 = *(v0 + 136);
  v40 = *(v0 + 120);
  v41 = *(v0 + 64);
  v42 = *(v34 + 48) + v27[9] * (__clz(__rbit64(v32)) | (v33 << 6));
  v43 = v27[2];
  *(v0 + 264) = v43;
  *(v0 + 272) = (v27 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v43(v38, v42, v41);
  v44 = v27[4];
  *(v0 + 280) = v44;
  *(v0 + 288) = (v27 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v44(v39, v38, v41);
  sub_22766A6D0();
  v43(v40, v39, v41);
  v45 = sub_22766B380();
  v46 = sub_22766C8B0();
  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 240);
  v49 = *(v0 + 192);
  v50 = *(v0 + 144);
  v51 = *(v0 + 120);
  v53 = *(v0 + 64);
  v52 = *(v0 + 72);
  if (v47)
  {
    v83 = *(v0 + 232);
    v54 = swift_slowAlloc();
    v80 = v49;
    v55 = swift_slowAlloc();
    v85 = v55;
    *v54 = 136315138;
    sub_227063888(&qword_27D7B9F08, MEMORY[0x277D538B8]);
    v77 = v50;
    v78 = v48;
    v56 = sub_22766D140();
    v58 = v57;
    v76 = v46;
    v59 = *(v52 + 8);
    v59(v51, v53);
    v60 = sub_226E97AE8(v56, v58, &v85);

    *(v54 + 4) = v60;
    _os_log_impl(&dword_226E8E000, v45, v76, "HealthDataSystem: Saving StandaloneMindfulnessJob %s.", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x22AA9A450](v55, -1, -1);
    MEMORY[0x22AA9A450](v54, -1, -1);

    v78(v80, v77);
  }

  else
  {

    v59 = *(v52 + 8);
    v59(v51, v53);
    v48(v49, v50);
  }

  *(v0 + 296) = v59;
  __swift_project_boxed_opaque_existential_0((*(v0 + 56) + 216), *(*(v0 + 56) + 240));
  v61 = swift_task_alloc();
  *(v0 + 304) = v61;
  *v61 = v0;
  v61[1] = sub_2270573C4;
  v62 = *(v0 + 128);

  return sub_227011568(v62);
}

uint64_t sub_2270573C4()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_2270578A0;
  }

  else
  {
    v6 = sub_2270574F0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2270574F0()
{
  v45 = v0;
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[23];
  v4 = v0[16];
  v5 = v0[14];
  v6 = v0[8];
  sub_22766A6D0();
  v2(v5, v4, v6);
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[37];
  v12 = v0[29];
  v11 = v0[30];
  v13 = v0[23];
  v43 = v0[18];
  v14 = v0[14];
  v15 = v0[8];
  if (v9)
  {
    v37 = v0[9] + 8;
    v41 = v0[30];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v44 = v17;
    *v16 = 136315138;
    sub_227063888(&qword_27D7B9F08, MEMORY[0x277D538B8]);
    v38 = v13;
    v18 = sub_22766D140();
    v20 = v19;
    v10(v14, v15);
    v21 = sub_226E97AE8(v18, v20, &v44);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_226E8E000, v7, v8, "HealthDataSystem: Saved StandaloneMindfulnessJob %s. Deleting from database.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA9A450](v17, -1, -1);
    MEMORY[0x22AA9A450](v16, -1, -1);

    v41(v38, v43);
  }

  else
  {

    v10(v14, v15);
    v11(v13, v43);
  }

  v39 = v0[35];
  v22 = v0[33];
  v23 = v0[34];
  v24 = v0[16];
  v25 = v0[13];
  v27 = v0[9];
  v26 = v0[10];
  v29 = v0[7];
  v28 = v0[8];
  v30 = v29[18];
  v42 = v29[17];
  __swift_project_boxed_opaque_existential_0(v29 + 14, v42);
  v22(v25, v24, v28);
  v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v32 = swift_allocObject();
  v0[40] = v32;
  v39(v32 + v31, v25, v28);
  *(v32 + ((v26 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
  v33 = *(v30 + 24);

  v40 = (v33 + *v33);
  v34 = v33[1];
  v35 = swift_task_alloc();
  v0[41] = v35;
  *v35 = v0;
  v35[1] = sub_227057F6C;

  return v40();
}

uint64_t sub_2270578A0()
{
  v94 = v0;
  v1 = *(v0 + 312);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v4 = *(v0 + 160);
  v5 = *(v0 + 128);
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);
  sub_22766A6D0();
  v3(v6, v5, v7);
  v8 = v1;
  v9 = sub_22766B380();
  v10 = sub_22766C890();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 296);
    v87 = *(v0 + 232);
    v90 = *(v0 + 240);
    v80 = *(v0 + 144);
    v82 = *(v0 + 160);
    v84 = *(v0 + 128);
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);
    v78 = *(v0 + 72) + 8;
    v14 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v93 = v79;
    *v14 = 136315394;
    sub_227063888(&qword_27D7B9F08, MEMORY[0x277D538B8]);
    v15 = sub_22766D140();
    v17 = v16;
    v11(v12, v13);
    v18 = sub_226E97AE8(v15, v17, &v93);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v19 = *(v0 + 16);
    v20 = MEMORY[0x22AA995D0](*(v0 + 24), *(v0 + 32));
    v22 = sub_226E97AE8(v20, v21, &v93);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_226E8E000, v9, v10, "HealthDataSystem: Error processing StandaloneMindfulnessJob %s, error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v79, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    v90(v82, v80);
    result = (v11)(v84, v13);
  }

  else
  {
    v24 = *(v0 + 296);
    v91 = *(v0 + 240);
    v25 = v9;
    v26 = *(v0 + 232);
    v27 = *(v0 + 160);
    v28 = *(v0 + 144);
    v29 = *(v0 + 128);
    v30 = *(v0 + 88);
    v31 = v1;
    v33 = *(v0 + 64);
    v32 = *(v0 + 72);

    v24(v30, v33);
    v91(v27, v28);
    result = (v24)(v29, v33);
  }

  v34 = *(v0 + 256);
  v35 = (*(v0 + 248) - 1) & *(v0 + 248);
  if (v35)
  {
    result = *(v0 + 224);
LABEL_10:
    *(v0 + 248) = v35;
    *(v0 + 256) = v34;
    v37 = *(v0 + 192);
    v39 = *(v0 + 128);
    v38 = *(v0 + 136);
    v40 = *(v0 + 120);
    v41 = *(v0 + 64);
    v42 = *(v0 + 72);
    v43 = *(result + 48) + v42[9] * (__clz(__rbit64(v35)) | (v34 << 6));
    v44 = v42[2];
    *(v0 + 264) = v44;
    *(v0 + 272) = (v42 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v44(v38, v43, v41);
    v45 = v42[4];
    *(v0 + 280) = v45;
    *(v0 + 288) = (v42 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v45(v39, v38, v41);
    sub_22766A6D0();
    v44(v40, v39, v41);
    v46 = sub_22766B380();
    v47 = sub_22766C8B0();
    v48 = os_log_type_enabled(v46, v47);
    v50 = *(v0 + 232);
    v49 = *(v0 + 240);
    v51 = *(v0 + 192);
    v52 = *(v0 + 144);
    v53 = *(v0 + 120);
    v55 = *(v0 + 64);
    v54 = *(v0 + 72);
    if (v48)
    {
      v56 = swift_slowAlloc();
      v88 = v51;
      v57 = swift_slowAlloc();
      v93 = v57;
      *v56 = 136315138;
      sub_227063888(&qword_27D7B9F08, MEMORY[0x277D538B8]);
      v83 = v52;
      v85 = v49;
      v58 = sub_22766D140();
      v60 = v59;
      v81 = v47;
      v61 = *(v54 + 8);
      v61(v53, v55);
      v62 = sub_226E97AE8(v58, v60, &v93);

      *(v56 + 4) = v62;
      _os_log_impl(&dword_226E8E000, v46, v81, "HealthDataSystem: Saving StandaloneMindfulnessJob %s.", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x22AA9A450](v57, -1, -1);
      MEMORY[0x22AA9A450](v56, -1, -1);

      v85(v88, v83);
    }

    else
    {

      v61 = *(v54 + 8);
      v61(v53, v55);
      v49(v51, v52);
    }

    *(v0 + 296) = v61;
    __swift_project_boxed_opaque_existential_0((*(v0 + 56) + 216), *(*(v0 + 56) + 240));
    v63 = swift_task_alloc();
    *(v0 + 304) = v63;
    *v63 = v0;
    v63[1] = sub_2270573C4;
    v64 = *(v0 + 128);

    return sub_227011568(v64);
  }

  else
  {
    while (1)
    {
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 224);
      if (v36 >= (((1 << *(v0 + 344)) + 63) >> 6))
      {
        break;
      }

      v35 = *(result + 8 * v36 + 56);
      ++v34;
      if (v35)
      {
        v34 = v36;
        goto LABEL_10;
      }
    }

    v65 = *(v0 + 56);

    v66 = *__swift_project_boxed_opaque_existential_0((v65 + 152), *(v65 + 176));
    sub_2271D7EE8();
    v68 = *(v0 + 192);
    v67 = *(v0 + 200);
    v70 = *(v0 + 176);
    v69 = *(v0 + 184);
    v72 = *(v0 + 160);
    v71 = *(v0 + 168);
    v74 = *(v0 + 128);
    v73 = *(v0 + 136);
    v76 = *(v0 + 112);
    v75 = *(v0 + 120);
    v86 = *(v0 + 104);
    v89 = *(v0 + 96);
    v92 = *(v0 + 88);

    v77 = *(v0 + 8);

    return v77();
  }
}

uint64_t sub_227057F6C()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v9 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_2270587C0;
  }

  else
  {
    v6 = *(v2 + 320);
    v7 = *(v2 + 56);

    v5 = sub_227058094;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_227058094()
{
  v81 = v0;
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 176);
  v4 = *(v0 + 128);
  v5 = *(v0 + 96);
  v6 = *(v0 + 64);
  sub_22766A6D0();
  v2(v5, v4, v6);
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 296);
  v12 = *(v0 + 232);
  v11 = *(v0 + 240);
  v13 = *(v0 + 144);
  v75 = v13;
  v78 = *(v0 + 176);
  v14 = *(v0 + 128);
  v15 = *(v0 + 96);
  v17 = *(v0 + 64);
  v16 = *(v0 + 72);
  if (v9)
  {
    v18 = swift_slowAlloc();
    v70 = v14;
    v19 = swift_slowAlloc();
    v80 = v19;
    *v18 = 136315138;
    sub_227063888(&qword_27D7B9F08, MEMORY[0x277D538B8]);
    v20 = sub_22766D140();
    v69 = v11;
    v22 = v21;
    v10(v15, v17);
    v23 = sub_226E97AE8(v20, v22, &v80);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_226E8E000, v7, v8, "HealthDataSystem: Deleted StandaloneMindfulnessJob %s.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x22AA9A450](v19, -1, -1);
    MEMORY[0x22AA9A450](v18, -1, -1);

    v69(v78, v75);
    result = (v10)(v70, v17);
  }

  else
  {

    v10(v15, v17);
    v11(v78, v75);
    result = (v10)(v14, v17);
  }

  v25 = *(v0 + 256);
  v26 = (*(v0 + 248) - 1) & *(v0 + 248);
  if (v26)
  {
    result = *(v0 + 224);
LABEL_10:
    *(v0 + 248) = v26;
    *(v0 + 256) = v25;
    v28 = *(v0 + 192);
    v30 = *(v0 + 128);
    v29 = *(v0 + 136);
    v31 = *(v0 + 120);
    v32 = *(v0 + 64);
    v33 = *(v0 + 72);
    v34 = *(result + 48) + v33[9] * (__clz(__rbit64(v26)) | (v25 << 6));
    v35 = v33[2];
    *(v0 + 264) = v35;
    *(v0 + 272) = (v33 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v35(v29, v34, v32);
    v36 = v33[4];
    *(v0 + 280) = v36;
    *(v0 + 288) = (v33 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v36(v30, v29, v32);
    sub_22766A6D0();
    v35(v31, v30, v32);
    v37 = sub_22766B380();
    v38 = sub_22766C8B0();
    v39 = os_log_type_enabled(v37, v38);
    v41 = *(v0 + 232);
    v40 = *(v0 + 240);
    v42 = *(v0 + 192);
    v43 = *(v0 + 144);
    v44 = *(v0 + 120);
    v46 = *(v0 + 64);
    v45 = *(v0 + 72);
    if (v39)
    {
      v47 = swift_slowAlloc();
      v76 = v42;
      v48 = swift_slowAlloc();
      v80 = v48;
      *v47 = 136315138;
      sub_227063888(&qword_27D7B9F08, MEMORY[0x277D538B8]);
      v72 = v43;
      v73 = v40;
      v49 = sub_22766D140();
      v51 = v50;
      v71 = v38;
      v52 = *(v45 + 8);
      v52(v44, v46);
      v53 = sub_226E97AE8(v49, v51, &v80);

      *(v47 + 4) = v53;
      _os_log_impl(&dword_226E8E000, v37, v71, "HealthDataSystem: Saving StandaloneMindfulnessJob %s.", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x22AA9A450](v48, -1, -1);
      MEMORY[0x22AA9A450](v47, -1, -1);

      v73(v76, v72);
    }

    else
    {

      v52 = *(v45 + 8);
      v52(v44, v46);
      v40(v42, v43);
    }

    *(v0 + 296) = v52;
    __swift_project_boxed_opaque_existential_0((*(v0 + 56) + 216), *(*(v0 + 56) + 240));
    v54 = swift_task_alloc();
    *(v0 + 304) = v54;
    *v54 = v0;
    v54[1] = sub_2270573C4;
    v55 = *(v0 + 128);

    return sub_227011568(v55);
  }

  else
  {
    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 224);
      if (v27 >= (((1 << *(v0 + 344)) + 63) >> 6))
      {
        break;
      }

      v26 = *(result + 8 * v27 + 56);
      ++v25;
      if (v26)
      {
        v25 = v27;
        goto LABEL_10;
      }
    }

    v56 = *(v0 + 56);

    v57 = *__swift_project_boxed_opaque_existential_0((v56 + 152), *(v56 + 176));
    sub_2271D7EE8();
    v59 = *(v0 + 192);
    v58 = *(v0 + 200);
    v61 = *(v0 + 176);
    v60 = *(v0 + 184);
    v63 = *(v0 + 160);
    v62 = *(v0 + 168);
    v65 = *(v0 + 128);
    v64 = *(v0 + 136);
    v67 = *(v0 + 112);
    v66 = *(v0 + 120);
    v74 = *(v0 + 104);
    v77 = *(v0 + 96);
    v79 = *(v0 + 88);

    v68 = *(v0 + 8);

    return v68();
  }
}

uint64_t sub_2270586BC()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[16];
  v7 = v0[17];
  v10 = v0[14];
  v9 = v0[15];
  v14 = v0[13];
  v15 = v0[12];
  v16 = v0[11];

  v11 = v0[1];
  v12 = v0[27];

  return v11();
}

uint64_t sub_2270587C0()
{
  v95 = v0;
  v1 = *(v0 + 320);

  v2 = *(v0 + 336);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 160);
  v6 = *(v0 + 128);
  v7 = *(v0 + 88);
  v8 = *(v0 + 64);
  sub_22766A6D0();
  v4(v7, v6, v8);
  v9 = v2;
  v10 = sub_22766B380();
  v11 = sub_22766C890();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 296);
    v88 = *(v0 + 232);
    v91 = *(v0 + 240);
    v81 = *(v0 + 144);
    v83 = *(v0 + 160);
    v85 = *(v0 + 128);
    v13 = *(v0 + 88);
    v14 = *(v0 + 64);
    v79 = *(v0 + 72) + 8;
    v15 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v94 = v80;
    *v15 = 136315394;
    sub_227063888(&qword_27D7B9F08, MEMORY[0x277D538B8]);
    v16 = sub_22766D140();
    v18 = v17;
    v12(v13, v14);
    v19 = sub_226E97AE8(v16, v18, &v94);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    swift_getErrorValue();
    v20 = *(v0 + 16);
    v21 = MEMORY[0x22AA995D0](*(v0 + 24), *(v0 + 32));
    v23 = sub_226E97AE8(v21, v22, &v94);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_226E8E000, v10, v11, "HealthDataSystem: Error processing StandaloneMindfulnessJob %s, error: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v80, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);

    v91(v83, v81);
    result = (v12)(v85, v14);
  }

  else
  {
    v25 = *(v0 + 296);
    v92 = *(v0 + 240);
    v26 = v10;
    v27 = *(v0 + 232);
    v28 = *(v0 + 160);
    v29 = *(v0 + 144);
    v30 = *(v0 + 128);
    v31 = *(v0 + 88);
    v32 = v2;
    v34 = *(v0 + 64);
    v33 = *(v0 + 72);

    v25(v31, v34);
    v92(v28, v29);
    result = (v25)(v30, v34);
  }

  v35 = *(v0 + 256);
  v36 = (*(v0 + 248) - 1) & *(v0 + 248);
  if (v36)
  {
    result = *(v0 + 224);
LABEL_10:
    *(v0 + 248) = v36;
    *(v0 + 256) = v35;
    v38 = *(v0 + 192);
    v40 = *(v0 + 128);
    v39 = *(v0 + 136);
    v41 = *(v0 + 120);
    v42 = *(v0 + 64);
    v43 = *(v0 + 72);
    v44 = *(result + 48) + v43[9] * (__clz(__rbit64(v36)) | (v35 << 6));
    v45 = v43[2];
    *(v0 + 264) = v45;
    *(v0 + 272) = (v43 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v45(v39, v44, v42);
    v46 = v43[4];
    *(v0 + 280) = v46;
    *(v0 + 288) = (v43 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v46(v40, v39, v42);
    sub_22766A6D0();
    v45(v41, v40, v42);
    v47 = sub_22766B380();
    v48 = sub_22766C8B0();
    v49 = os_log_type_enabled(v47, v48);
    v51 = *(v0 + 232);
    v50 = *(v0 + 240);
    v52 = *(v0 + 192);
    v53 = *(v0 + 144);
    v54 = *(v0 + 120);
    v56 = *(v0 + 64);
    v55 = *(v0 + 72);
    if (v49)
    {
      v57 = swift_slowAlloc();
      v89 = v52;
      v58 = swift_slowAlloc();
      v94 = v58;
      *v57 = 136315138;
      sub_227063888(&qword_27D7B9F08, MEMORY[0x277D538B8]);
      v84 = v53;
      v86 = v50;
      v59 = sub_22766D140();
      v61 = v60;
      v82 = v48;
      v62 = *(v55 + 8);
      v62(v54, v56);
      v63 = sub_226E97AE8(v59, v61, &v94);

      *(v57 + 4) = v63;
      _os_log_impl(&dword_226E8E000, v47, v82, "HealthDataSystem: Saving StandaloneMindfulnessJob %s.", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x22AA9A450](v58, -1, -1);
      MEMORY[0x22AA9A450](v57, -1, -1);

      v86(v89, v84);
    }

    else
    {

      v62 = *(v55 + 8);
      v62(v54, v56);
      v50(v52, v53);
    }

    *(v0 + 296) = v62;
    __swift_project_boxed_opaque_existential_0((*(v0 + 56) + 216), *(*(v0 + 56) + 240));
    v64 = swift_task_alloc();
    *(v0 + 304) = v64;
    *v64 = v0;
    v64[1] = sub_2270573C4;
    v65 = *(v0 + 128);

    return sub_227011568(v65);
  }

  else
  {
    while (1)
    {
      v37 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 224);
      if (v37 >= (((1 << *(v0 + 344)) + 63) >> 6))
      {
        break;
      }

      v36 = *(result + 8 * v37 + 56);
      ++v35;
      if (v36)
      {
        v35 = v37;
        goto LABEL_10;
      }
    }

    v66 = *(v0 + 56);

    v67 = *__swift_project_boxed_opaque_existential_0((v66 + 152), *(v66 + 176));
    sub_2271D7EE8();
    v69 = *(v0 + 192);
    v68 = *(v0 + 200);
    v71 = *(v0 + 176);
    v70 = *(v0 + 184);
    v73 = *(v0 + 160);
    v72 = *(v0 + 168);
    v75 = *(v0 + 128);
    v74 = *(v0 + 136);
    v77 = *(v0 + 112);
    v76 = *(v0 + 120);
    v87 = *(v0 + 104);
    v90 = *(v0 + 96);
    v93 = *(v0 + 88);

    v78 = *(v0 + 8);

    return v78();
  }
}

void sub_227058ED0(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v4 = a1[3];
  v49 = a1;
  v5 = __swift_project_boxed_opaque_existential_0(a1, v4);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F10, &qword_227676B70);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = v6;
  v15 = v7;

  sub_22766A070();
  v45[0] = v15;
  v45[1] = v14;
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  *(v13 + 32) = v8;
  *(v13 + 40) = v9;
  swift_getKeyPath();
  v48 = a2;
  v16 = sub_227668E00();
  v18 = v17;
  v52[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v52[0] = v16;
  v52[1] = v18;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v19 = sub_22766C820();
  sub_226E93170(v52, v50, &unk_27D7BC990, &qword_227670A30);
  v20 = v51;
  if (v51)
  {
    v21 = __swift_project_boxed_opaque_existential_0(v50, v51);
    v46 = v45;
    v22 = v9;
    v23 = v8;
    v24 = *(v20 - 8);
    v25 = *(v24 + 64);
    MEMORY[0x28223BE20](v21);
    v27 = v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27);
    v28 = sub_22766D170();
    (*(v24 + 8))(v27, v20);
    v8 = v23;
    v9 = v22;
    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  else
  {
    v28 = 0;
  }

  v29 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v30 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F18 &unk_227676BA0))];

  sub_226E97D1C(v52, &unk_27D7BC990, &qword_227670A30);
  v31 = qword_2813B2078;
  swift_beginAccess();
  v32 = v30;
  v33 = sub_22766A080();
  v35 = v34;
  MEMORY[0x22AA985C0]();
  if (*((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v46 = *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v33(v52, 0);
  swift_endAccess();

  v36 = sub_227543008(v13 + v31, v8, v9);
  if (v36)
  {
    if (v36 == 1)
    {

LABEL_9:
      v37 = *__swift_project_boxed_opaque_existential_0((v47 + 152), *(v47 + 176));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_227670CD0;
      *(v38 + 32) = sub_227668E00();
      *(v38 + 40) = v39;
      sub_2272D7C7C(1, v38, v49);

      return;
    }

    swift_willThrow();
  }

  else
  {
    v40 = v52[5];
    v41 = sub_227248AE8(0);
    if (!v40)
    {
      v42 = v41;
      [v41 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v43 = sub_22766C9E0();
      v44 = sub_226EDAB24(v43);

      sub_226EDAB78(v44, v45[0]);

      goto LABEL_9;
    }
  }
}

uint64_t sub_2270593C8(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_22766B390();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v7 = sub_2276627D0();
  v2[20] = v7;
  v8 = *(v7 - 8);
  v2[21] = v8;
  v9 = *(v8 + 64) + 15;
  v2[22] = swift_task_alloc();
  v10 = sub_227664CA0();
  v2[23] = v10;
  v11 = *(v10 - 8);
  v2[24] = v11;
  v12 = *(v11 + 64) + 15;
  v2[25] = swift_task_alloc();
  v13 = sub_227663FA0();
  v2[26] = v13;
  v14 = *(v13 - 8);
  v2[27] = v14;
  v15 = *(v14 + 64) + 15;
  v2[28] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EE8, &qword_227676AA8) - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v17 = sub_227667500();
  v2[30] = v17;
  v18 = *(v17 - 8);
  v2[31] = v18;
  v19 = *(v18 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v20 = sub_22766A8A0();
  v2[35] = v20;
  v21 = *(v20 - 8);
  v2[36] = v21;
  v22 = *(v21 + 64) + 15;
  v2[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2270596F4, v1, 0);
}

uint64_t sub_2270596F4()
{
  v37 = v0;
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = *(*(v0 + 104) + 344);
  v5 = sub_2276693C0();
  (*(v2 + 104))(v1, *MEMORY[0x277D4F938], v3);
  v6 = sub_226EC9A38(v1, v5);

  (*(v2 + 8))(v1, v3);
  if (v6)
  {
    v7 = swift_task_alloc();
    *(v0 + 304) = v7;
    *v7 = v0;
    v7[1] = sub_2270599F8;
    v8 = *(v0 + 104);

    return sub_227052610();
  }

  else
  {
    v10 = *(v0 + 128);
    v11 = *(v0 + 104);
    sub_22766A6D0();

    v12 = sub_22766B380();
    v13 = sub_22766C8B0();

    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v17 = *(v0 + 112);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v36 = v19;
      *v18 = 136446210;
      *(v0 + 424) = v4;
      v20 = MEMORY[0x22AA958B0](MEMORY[0x277D53BF8], MEMORY[0x277D53BF0]);
      v22 = sub_226E97AE8(v20, v21, &v36);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_226E8E000, v12, v13, "Querying, insertion and syncing of HealthKit workouts is not supported on platform %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x22AA9A450](v19, -1, -1);
      MEMORY[0x22AA9A450](v18, -1, -1);
    }

    (*(v16 + 8))(v15, v17);
    v23 = *(v0 + 296);
    v24 = *(v0 + 264);
    v25 = *(v0 + 272);
    v26 = *(v0 + 256);
    v28 = *(v0 + 224);
    v27 = *(v0 + 232);
    v29 = *(v0 + 200);
    v30 = *(v0 + 176);
    v32 = *(v0 + 144);
    v31 = *(v0 + 152);
    v34 = *(v0 + 136);
    v35 = *(v0 + 128);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_2270599F8(char a1)
{
  v2 = *(*v1 + 304);
  v3 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 427) = a1;

  return MEMORY[0x2822009F8](sub_227059B10, v3, 0);
}

uint64_t sub_227059B10()
{
  if (*(v0 + 427) == 1)
  {
    v1 = *(v0 + 240);
    v2 = *(v0 + 248);
    v3 = *(v0 + 232);
    sub_226E93170(*(v0 + 96), v3, &qword_27D7B9EE8, &qword_227676AA8);
    if ((*(v2 + 48))(v3, 1, v1) == 1)
    {
      v4 = *(v0 + 104);
      sub_226E97D1C(*(v0 + 232), &qword_27D7B9EE8, &qword_227676AA8);
      v5 = v4[17];
      v6 = v4[18];
      __swift_project_boxed_opaque_existential_0(v4 + 14, v5);
      v7 = *__swift_project_boxed_opaque_existential_0(v4 + 37, v4[40]);
      *(v0 + 40) = type metadata accessor for ConfigurationDataStore();
      *(v0 + 48) = &off_283AA1218;
      *(v0 + 16) = v7;
      sub_226E91B50(v0 + 16, v0 + 56);
      v8 = swift_allocObject();
      *(v0 + 312) = v8;
      sub_226E92AB8((v0 + 56), v8 + 16);

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      v9 = *(v6 + 24);
      v44 = (v9 + *v9);
      v10 = v9[1];
      v11 = swift_task_alloc();
      *(v0 + 320) = v11;
      *v11 = v0;
      v11[1] = sub_227059FF4;
      v12 = *(v0 + 224);
      v13 = *(v0 + 208);

      return (v44)(v12, sub_227063370, v8, v13, v5, v6);
    }

    else
    {
      v34 = *(v0 + 264);
      v35 = *(v0 + 272);
      v36 = *(v0 + 240);
      v37 = *(*(v0 + 248) + 32);
      v37(v34, *(v0 + 232), v36);
      v37(v35, v34, v36);
      v38 = *(v0 + 104);
      v39 = v38[58];
      __swift_project_boxed_opaque_existential_0(v38 + 54, v38[57]);
      *(v0 + 425) = 1;
      *(v0 + 336) = sub_226F19410();
      *(v0 + 344) = sub_226F19464();
      sub_22766A130();
      v40 = swift_task_alloc();
      *(v0 + 352) = v40;
      *v40 = v0;
      v40[1] = sub_22705A2A8;
      v41 = *(v0 + 272);
      v42 = *(v0 + 104);

      return sub_22705B078(v41);
    }
  }

  else
  {
    v15 = *(v0 + 136);
    sub_22766A6D0();
    v16 = sub_22766B380();
    v17 = sub_22766C8B0();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 136);
    v20 = *(v0 + 112);
    v21 = *(v0 + 120);
    if (v18)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_226E8E000, v16, v17, "Skipping HealthKitMindfulSession query/insert, no subscription found", v22, 2u);
      MEMORY[0x22AA9A450](v22, -1, -1);
    }

    (*(v21 + 8))(v19, v20);
    v23 = *(v0 + 296);
    v24 = *(v0 + 264);
    v25 = *(v0 + 272);
    v26 = *(v0 + 256);
    v28 = *(v0 + 224);
    v27 = *(v0 + 232);
    v29 = *(v0 + 200);
    v30 = *(v0 + 176);
    v32 = *(v0 + 144);
    v31 = *(v0 + 152);
    v43 = *(v0 + 136);
    v45 = *(v0 + 128);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_227059FF4()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v9 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = sub_22705AD34;
  }

  else
  {
    v6 = *(v2 + 312);
    v7 = *(v2 + 104);

    v5 = sub_22705A11C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22705A11C()
{
  v1 = *(v0 + 272);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 240);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v7 = *(v0 + 208);
  sub_227663F20();
  (*(v6 + 8))(v5, v7);
  (*(v3 + 32))(v1, v2, v4);
  v8 = *(v0 + 104);
  v9 = v8[58];
  __swift_project_boxed_opaque_existential_0(v8 + 54, v8[57]);
  *(v0 + 425) = 1;
  *(v0 + 336) = sub_226F19410();
  *(v0 + 344) = sub_226F19464();
  sub_22766A130();
  v10 = swift_task_alloc();
  *(v0 + 352) = v10;
  *v10 = v0;
  v10[1] = sub_22705A2A8;
  v11 = *(v0 + 272);
  v12 = *(v0 + 104);

  return sub_22705B078(v11);
}

uint64_t sub_22705A2A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;
  *(v4 + 360) = a1;
  *(v4 + 368) = v1;

  v7 = *(v3 + 104);
  if (v1)
  {
    v8 = sub_22705AE40;
  }

  else
  {
    v8 = sub_22705A3DC;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22705A3DC()
{
  v1 = v0[21];
  v2 = v0[45];
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(v0[45] + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v29 = v0[24];
  v28 = (v1 + 48);
  v26 = v0[21];
  v27 = (v1 + 32);
  v30 = v0[45];

  v11 = 0;
  v31 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v11;
    v0[47] = v31;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v13 = v0[25];
    v14 = v0[23];
    v15 = v0[19];
    v32 = v0[20];
    v16 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    (*(v29 + 16))(v13, *(v30 + 48) + *(v29 + 72) * (v16 | (v11 << 6)), v14);
    sub_227664C40();
    sub_227662760();

    (*(v29 + 8))(v13, v14);
    if ((*v28)(v15, 1, v32) == 1)
    {
      result = sub_226E97D1C(v0[19], &unk_27D7BB9D0, &qword_227671550);
    }

    else
    {
      v17 = *v27;
      (*v27)(v0[22], v0[19], v0[20]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_2273A63FC(0, *(v31 + 2) + 1, 1, v31);
      }

      v19 = *(v31 + 2);
      v18 = *(v31 + 3);
      if (v19 >= v18 >> 1)
      {
        v31 = sub_2273A63FC(v18 > 1, v19 + 1, 1, v31);
      }

      v20 = v0[22];
      v21 = v0[20];
      *(v31 + 2) = v19 + 1;
      result = v17(&v31[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v19], v20, v21);
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

  v22 = v0[45];
  v23 = v0[13];

  __swift_project_boxed_opaque_existential_0((v23 + 256), *(v23 + 280));
  v24 = swift_task_alloc();
  v0[48] = v24;
  *v24 = v0;
  v24[1] = sub_22705A6EC;
  v25 = v0[34];

  return sub_2274FBDB4(v25, v31);
}

uint64_t sub_22705A6EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *(*v2 + 376);
  v7 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {
    v8 = v4[13];

    return MEMORY[0x2822009F8](sub_22705A9E4, v8, 0);
  }

  else
  {
    v4[50] = a1;
    v9 = swift_task_alloc();
    v4[51] = v9;
    *v9 = v7;
    v9[1] = sub_22705A89C;
    v10 = v4[13];

    return sub_22705BA90(a1);
  }
}

uint64_t sub_22705A89C()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *(*v1 + 400);
  v5 = *v1;
  *(*v1 + 416) = v0;

  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_22705AF5C;
  }

  else
  {
    v7 = sub_22705AB00;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22705A9E4()
{
  (*(v0[31] + 8))(v0[34], v0[30]);
  v1 = v0[37];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[25];
  v8 = v0[22];
  v9 = v0[18];
  v10 = v0[19];
  v13 = v0[17];
  v14 = v0[16];
  v15 = v0[49];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22705AB00()
{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 144);
  v4 = *(v0 + 104);
  v5 = v4[58];
  __swift_project_boxed_opaque_existential_0(v4 + 54, v4[57]);
  *(v0 + 426) = 1;
  sub_22766A120();
  sub_22766A710();
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 272);
  v10 = *(v0 + 240);
  v11 = *(v0 + 248);
  v12 = *(v0 + 144);
  v13 = *(v0 + 112);
  v14 = *(v0 + 120);
  if (v8)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_226E8E000, v6, v7, "Finished syncing healhtkit workouts", v15, 2u);
    MEMORY[0x22AA9A450](v15, -1, -1);
  }

  (*(v14 + 8))(v12, v13);
  (*(v11 + 8))(v9, v10);
  v16 = *(v0 + 296);
  v17 = *(v0 + 264);
  v18 = *(v0 + 272);
  v19 = *(v0 + 256);
  v21 = *(v0 + 224);
  v20 = *(v0 + 232);
  v22 = *(v0 + 200);
  v23 = *(v0 + 176);
  v25 = *(v0 + 144);
  v24 = *(v0 + 152);
  v28 = *(v0 + 136);
  v29 = *(v0 + 128);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_22705AD34()
{
  v1 = v0[39];

  v2 = v0[37];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[25];
  v9 = v0[22];
  v10 = v0[18];
  v11 = v0[19];
  v14 = v0[17];
  v15 = v0[16];
  v16 = v0[41];

  v12 = v0[1];

  return v12();
}

uint64_t sub_22705AE40()
{
  (*(v0[31] + 8))(v0[34], v0[30]);
  v1 = v0[37];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[25];
  v8 = v0[22];
  v9 = v0[18];
  v10 = v0[19];
  v13 = v0[17];
  v14 = v0[16];
  v15 = v0[46];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22705AF5C()
{
  (*(v0[31] + 8))(v0[34], v0[30]);
  v1 = v0[37];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[25];
  v8 = v0[22];
  v9 = v0[18];
  v10 = v0[19];
  v13 = v0[17];
  v14 = v0[16];
  v15 = v0[52];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22705B078(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_227667500();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v5 = sub_227662940();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = sub_227662930();
  v2[12] = v8;
  v9 = *(v8 - 8);
  v2[13] = v9;
  v10 = *(v9 + 64) + 15;
  v2[14] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v12 = sub_227662750();
  v2[16] = v12;
  v13 = *(v12 - 8);
  v2[17] = v13;
  v2[18] = *(v13 + 64);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22705B2AC, v1, 0);
}

uint64_t sub_22705B2AC()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[3];
  sub_227662740();
  (*(v7 + 104))(v5, *MEMORY[0x277CC9968], v6);
  sub_2276674F0();
  sub_227662610();
  (*(v7 + 8))(v5, v6);
  v9 = *(v3 + 8);
  v0[22] = v9;
  v0[23] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v2);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_226E97D1C(v0[15], &qword_27D7B9690, qword_227670B50);
    v10 = sub_227664710();
    sub_227063888(&qword_27D7B9EB8, MEMORY[0x277D50BA8]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D50B90], v10);
    swift_willThrow();
    v13 = v0[20];
    v12 = v0[21];
    v14 = v0[19];
    v16 = v0[14];
    v15 = v0[15];
    v17 = v0[11];
    v18 = v0[8];

    v19 = v0[1];

    return v19();
  }

  else
  {
    v21 = v0[20];
    v35 = v0[21];
    v43 = v0[18];
    v22 = v0[17];
    v23 = v0[15];
    v25 = v0[10];
    v24 = v0[11];
    v46 = v0[9];
    v47 = v0[16];
    v38 = v0[8];
    v26 = v0[6];
    v41 = v0[19];
    v42 = v0[7];
    v27 = v0[4];
    v36 = v0[3];
    v37 = v0[5];
    sub_227662920();
    sub_2276625F0();
    (*(v25 + 8))(v24, v46);
    v9(v23, v47);
    v40 = *(v22 + 32);
    v40(v35, v21, v47);
    v45 = v27[17];
    v39 = v27[18];
    __swift_project_boxed_opaque_existential_0(v27 + 14, v45);
    (*(v26 + 16))(v38, v36, v37);
    (*(v22 + 16))(v41, v35, v47);
    v28 = (*(v26 + 80) + 24) & ~*(v26 + 80);
    v29 = (v42 + *(v22 + 80) + v28) & ~*(v22 + 80);
    v30 = swift_allocObject();
    v0[24] = v30;
    *(v30 + 16) = v27;
    (*(v26 + 32))(v30 + v28, v38, v37);
    v40(v30 + v29, v41, v47);
    v31 = *(v39 + 24);

    v44 = (v31 + *v31);
    v32 = v31[1];
    v33 = swift_task_alloc();
    v0[25] = v33;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE8B0, &unk_227676AC8);
    *v33 = v0;
    v33[1] = sub_22705B7A4;

    return (v44)(v0 + 2, sub_2270633F4, v30, v34, v45, v39);
  }
}

uint64_t sub_22705B7A4()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 192);
  v6 = *(v2 + 32);

  if (v0)
  {
    v7 = sub_22705B9C4;
  }

  else
  {
    v7 = sub_22705B8EC;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22705B8EC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 152);
  v4 = *(v0 + 120);
  v5 = *(v0 + 112);
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);
  (*(v0 + 176))(*(v0 + 168), *(v0 + 128));
  v8 = *(v0 + 16);

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_22705B9C4()
{
  v1 = *(v0 + 184);
  (*(v0 + 176))(*(v0 + 168), *(v0 + 128));
  v2 = *(v0 + 208);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 152);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = *(v0 + 88);
  v9 = *(v0 + 64);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22705BA90(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766A190();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22705BB50, v1, 0);
}

uint64_t sub_22705BB50()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_0(v1 + 14, v1[17]);
  v4 = swift_allocObject();
  v0[7] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(v3 + 24);

  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_22705BCE0;

  return v9();
}

uint64_t sub_22705BCE0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_22705BEE4;
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *(v2 + 24);

    v5 = sub_22705BE08;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22705BE08()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *__swift_project_boxed_opaque_existential_0(v4 + 19, v4[22]);
  sub_2271D7EE8();
  v6 = v4[24];
  v7 = v4[25];
  swift_getObjectType();
  sub_22766A180();
  sub_2276699D0();
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_22705BEE4()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_22705BF50()
{
  v1[2] = v0;
  v2 = sub_22766B390();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_22766A8A0();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22705C06C, v0, 0);
}

uint64_t sub_22705C06C()
{
  v33 = v0;
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(*(v0 + 16) + 344);
  v5 = sub_2276693C0();
  (*(v2 + 104))(v1, *MEMORY[0x277D4F970], v3);
  v6 = sub_226EC9A38(v1, v5);

  (*(v2 + 8))(v1, v3);
  if (v6)
  {
    v7 = *(MEMORY[0x277D0A890] + 4);
    v8 = swift_task_alloc();
    *(v0 + 72) = v8;
    v9 = type metadata accessor for HealthDataSystem();
    v10 = sub_227063888(qword_28139AD20, type metadata accessor for HealthDataSystem);
    *v8 = v0;
    v8[1] = sub_22705C414;
    v11 = *(v0 + 16);
    v12 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282161508](v10, &unk_227676A20, v11, v9, v12, v10);
  }

  else
  {
    v13 = *(v0 + 40);
    v14 = *(v0 + 16);
    sub_22766A6D0();

    v15 = sub_22766B380();
    v16 = sub_22766C8B0();

    v17 = os_log_type_enabled(v15, v16);
    v19 = *(v0 + 32);
    v18 = *(v0 + 40);
    v20 = *(v0 + 24);
    if (v17)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 136446210;
      *(v0 + 88) = v4;
      v23 = MEMORY[0x22AA958B0](MEMORY[0x277D53BF8], MEMORY[0x277D53BF0]);
      v25 = sub_226E97AE8(v23, v24, &v32);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_226E8E000, v15, v16, "Saving standalone workouts into HealthKit is not supported on platform: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x22AA9A450](v22, -1, -1);
      MEMORY[0x22AA9A450](v21, -1, -1);
    }

    (*(v19 + 8))(v18, v20);
    v26 = sub_227664710();
    sub_227063888(&qword_27D7B9EB8, MEMORY[0x277D50BA8]);
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D50BA0], v26);
    swift_willThrow();
    v28 = *(v0 + 64);
    v29 = *(v0 + 40);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_22705C414()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_22705C5B0;
  }

  else
  {
    v6 = sub_22705C540;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22705C540()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22705C5B0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22705C620(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  v4 = sub_22766A5A0();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EC0, &qword_22767C990) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = sub_227668390();
  v2[12] = v8;
  v9 = *(v8 - 8);
  v2[13] = v9;
  v2[14] = *(v9 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v10 = sub_22766B390();
  v2[22] = v10;
  v11 = *(v10 - 8);
  v2[23] = v11;
  v12 = *(v11 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22705C86C, a2, 0);
}

uint64_t sub_22705C86C()
{
  v1 = *(v0 + 56);
  v2 = v1[17];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_0(v1 + 14, v2);
  v4 = *(v3 + 24);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 248) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EC8, &unk_227676A30);
  *v6 = v0;
  v6[1] = sub_22705C9D4;

  return (v9)(v0 + 40, sub_22705F9FC, 0, v7, v2, v3);
}

uint64_t sub_22705C9D4()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_22705F008;
  }

  else
  {
    v6 = sub_22705CB00;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22705CB00()
{
  v48 = v0;
  v1 = v0[5];
  v0[33] = v1;
  if (*(v1 + 16))
  {
    v2 = v0[30];
    sub_22766A6D0();

    v3 = sub_22766B380();
    v4 = sub_22766C8B0();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[30];
    v8 = v0[22];
    v7 = v0[23];
    if (v5)
    {
      v9 = v0[12];
      v45 = v0[30];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v47 = v11;
      *v10 = 136315138;
      sub_227063888(&unk_2813A5570, MEMORY[0x277D53480]);
      v12 = sub_22766C610();
      v14 = sub_226E97AE8(v12, v13, &v47);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_226E8E000, v3, v4, "HealthDataSystem: Saving HealthKitStandaloneWorkoutJobs: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x22AA9A450](v11, -1, -1);
      MEMORY[0x22AA9A450](v10, -1, -1);

      v15 = *(v7 + 8);
      v15(v45, v8);
    }

    else
    {

      v15 = *(v7 + 8);
      v15(v6, v8);
    }

    v0[34] = v15;
    v36 = v0[32];
    v37 = *(v0[7] + 336);
    v38 = sub_227050414(v1);
    v0[35] = v38;
    v39 = swift_task_alloc();
    v0[36] = v39;
    *v39 = v0;
    v39[1] = sub_22705CEC4;

    return sub_2271DD124(v38);
  }

  else
  {
    v16 = v0[25];

    sub_22766A6D0();
    v17 = sub_22766B380();
    v18 = sub_22766C8B0();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[25];
    v21 = v0[22];
    v22 = v0[23];
    if (v19)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_226E8E000, v17, v18, "HealthDataSystem: No HealthKitStandaloneWorkoutJob to process", v23, 2u);
      MEMORY[0x22AA9A450](v23, -1, -1);
    }

    (*(v22 + 8))(v20, v21);
    v25 = v0[29];
    v24 = v0[30];
    v27 = v0[27];
    v26 = v0[28];
    v29 = v0[25];
    v28 = v0[26];
    v30 = v0[24];
    v31 = v0[20];
    v32 = v0[21];
    v33 = v0[19];
    v40 = v0[18];
    v41 = v0[17];
    v42 = v0[16];
    v43 = v0[15];
    v44 = v0[11];
    v46 = v0[10];

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_22705CEC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *v2;
  v4[37] = a1;
  v4[38] = v1;

  v7 = v3[35];
  if (v1)
  {
    v8 = v4[33];

    v10 = v4[29];
    v9 = v4[30];
    v12 = v4[27];
    v11 = v4[28];
    v14 = v4[25];
    v13 = v4[26];
    v15 = v4[24];
    v16 = v4[21];
    v22 = v4[20];
    v23 = v4[19];
    v24 = v4[18];
    v25 = v4[17];
    v26 = v4[16];
    v27 = v4[15];
    v18 = v4 + 10;
    v17 = v4[10];
    v28 = v18[1];

    v19 = *(v6 + 8);

    return v19();
  }

  else
  {
    v21 = v4[7];

    return MEMORY[0x2822009F8](sub_22705D110, v21, 0);
  }
}

uint64_t sub_22705D110()
{
  v97 = v0;
  v1 = *(v0 + 304);
  if (*(sub_227050714(*(v0 + 296)) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98C8, &qword_227674D18);
    v2 = sub_22766D010();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v96[0] = v2;

  sub_227062D7C(v3, 1, v96);
  if (v1)
  {

    return swift_unexpectedError();
  }

  else
  {
    v5 = *(v0 + 296);
    v6 = *(v0 + 264);
    v7 = *(v0 + 56);

    *(v0 + 312) = v96[0];
    v8 = v7[58];
    __swift_project_boxed_opaque_existential_0(v7 + 54, v7[57]);
    *(v0 + 432) = 2;
    *(v0 + 320) = sub_226F19410();
    *(v0 + 328) = sub_226F19464();
    sub_22766A130();
    v9 = *(v6 + 32);
    *(v0 + 434) = v9;
    v10 = -1;
    v11 = -1 << v9;
    if (-v11 < 64)
    {
      v10 = ~(-1 << -v11);
    }

    v12 = v10 & *(v6 + 56);
    if (v12)
    {
      v13 = 0;
      v14 = *(v0 + 264);
LABEL_15:
      *(v0 + 336) = v12;
      *(v0 + 344) = v13;
      v17 = *(v0 + 224);
      v19 = *(v0 + 160);
      v18 = *(v0 + 168);
      v20 = *(v0 + 152);
      v21 = *(v0 + 96);
      v22 = *(v0 + 104);
      v23 = *(v14 + 48) + v22[9] * (__clz(__rbit64(v12)) | (v13 << 6));
      v24 = v22[2];
      *(v0 + 352) = v24;
      *(v0 + 360) = (v22 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v24(v18, v23, v21);
      v25 = v22[4];
      *(v0 + 368) = v25;
      *(v0 + 376) = (v22 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v25(v19, v18, v21);
      sub_22766A6D0();
      v24(v20, v19, v21);
      v26 = sub_22766B380();
      v27 = sub_22766C8B0();
      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v0 + 272);
      v30 = *(v0 + 224);
      v32 = *(v0 + 176);
      v31 = *(v0 + 184);
      v33 = *(v0 + 152);
      v35 = *(v0 + 96);
      v34 = *(v0 + 104);
      if (v28)
      {
        v93 = *(v0 + 272);
        v36 = swift_slowAlloc();
        v91 = v30;
        v37 = swift_slowAlloc();
        v96[0] = v37;
        *v36 = 136315138;
        v89 = v32;
        v38 = sub_227668350();
        v40 = v39;
        v87 = v27;
        v41 = *(v34 + 8);
        v41(v33, v35);
        v42 = sub_226E97AE8(v38, v40, v96);

        *(v36 + 4) = v42;
        _os_log_impl(&dword_226E8E000, v26, v87, "HealthDataSystem: Saving HealthKitStandaloneWorkout %s.", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x22AA9A450](v37, -1, -1);
        MEMORY[0x22AA9A450](v36, -1, -1);

        v93(v91, v89);
      }

      else
      {

        v41 = *(v34 + 8);
        v41(v33, v35);
        v29(v30, v32);
      }

      *(v0 + 384) = v41;
      v43 = *(v0 + 312);
      v44 = *(v0 + 160);
      __swift_project_boxed_opaque_existential_0((*(v0 + 56) + 256), *(*(v0 + 56) + 280));
      v45 = sub_227668360();
      if (*(v43 + 16) && (v46 = *(v0 + 312), v47 = sub_226F491D4(v45), (v48 & 1) != 0))
      {
        v49 = v47;
        v50 = *(v0 + 88);
        v51 = *(*(v0 + 312) + 56);
        v52 = sub_227665100();
        v53 = *(v52 - 8);
        (*(v53 + 16))(v50, v51 + *(v53 + 72) * v49, v52);
        (*(v53 + 56))(v50, 0, 1, v52);
      }

      else
      {
        v54 = *(v0 + 88);
        v55 = sub_227665100();
        (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
      }

      v56 = swift_task_alloc();
      *(v0 + 392) = v56;
      *v56 = v0;
      v56[1] = sub_22705D8B8;
      v57 = *(v0 + 160);
      v58 = *(v0 + 88);

      return sub_2274F9DB4(v57, v58);
    }

    else
    {
      v15 = 0;
      v16 = ((63 - v11) >> 6) - 1;
      while (v16 != v15)
      {
        v13 = v15 + 1;
        v14 = *(v0 + 264);
        v12 = *(v14 + 8 * v15++ + 64);
        if (v12)
        {
          goto LABEL_15;
        }
      }

      v60 = *(v0 + 320);
      v59 = *(v0 + 328);
      v61 = *(v0 + 312);
      v62 = *(v0 + 264);
      v63 = *(v0 + 232);
      v64 = *(v0 + 56);

      v65 = *__swift_project_boxed_opaque_existential_0(v64 + 19, v64[22]);
      sub_2271D7EE8();
      v66 = v64[58];
      __swift_project_boxed_opaque_existential_0(v64 + 54, v64[57]);
      *(v0 + 433) = 2;
      sub_22766A130();
      sub_22766A710();
      v67 = sub_22766B380();
      v68 = sub_22766C8B0();
      v69 = os_log_type_enabled(v67, v68);
      v70 = *(v0 + 272);
      v71 = *(v0 + 232);
      v72 = *(v0 + 176);
      v73 = *(v0 + 184);
      if (v69)
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_226E8E000, v67, v68, "Finished processing standalone workout jobs", v74, 2u);
        MEMORY[0x22AA9A450](v74, -1, -1);
      }

      v70(v71, v72);
      v76 = *(v0 + 232);
      v75 = *(v0 + 240);
      v78 = *(v0 + 216);
      v77 = *(v0 + 224);
      v80 = *(v0 + 200);
      v79 = *(v0 + 208);
      v81 = *(v0 + 192);
      v82 = *(v0 + 160);
      v83 = *(v0 + 168);
      v84 = *(v0 + 152);
      v86 = *(v0 + 144);
      v88 = *(v0 + 136);
      v90 = *(v0 + 128);
      v92 = *(v0 + 120);
      v94 = *(v0 + 88);
      v95 = *(v0 + 80);

      v85 = *(v0 + 8);

      return v85();
    }
  }
}

uint64_t sub_22705D8B8()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 88);
  v6 = *(v2 + 56);
  sub_226E97D1C(v5, &qword_27D7B9EC0, &qword_22767C990);
  if (v0)
  {
    v7 = sub_22705DD90;
  }

  else
  {
    v7 = sub_22705DA10;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22705DA10()
{
  v45 = v0;
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[27];
  v4 = v0[20];
  v5 = v0[18];
  v6 = v0[12];
  sub_22766A6D0();
  v2(v5, v4, v6);
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[48];
  v11 = v0[34];
  v12 = v0[27];
  v13 = v0[23];
  v43 = v0[22];
  v14 = v0[18];
  v15 = v0[12];
  if (v9)
  {
    v37 = v0[13] + 8;
    v16 = swift_slowAlloc();
    v41 = v11;
    v17 = swift_slowAlloc();
    v44 = v17;
    *v16 = 136315138;
    v38 = v12;
    v18 = sub_227668350();
    v20 = v19;
    v10(v14, v15);
    v21 = sub_226E97AE8(v18, v20, &v44);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_226E8E000, v7, v8, "HealthDataSystem: Saved HealthKitStandaloneWorkout %s. Deleting from database.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA9A450](v17, -1, -1);
    MEMORY[0x22AA9A450](v16, -1, -1);

    v41(v38, v43);
  }

  else
  {

    v10(v14, v15);
    v11(v12, v43);
  }

  v39 = v0[46];
  v22 = v0[44];
  v23 = v0[45];
  v24 = v0[20];
  v25 = v0[17];
  v27 = v0[13];
  v26 = v0[14];
  v28 = v0[12];
  v29 = v0[7];
  v30 = v29[18];
  v42 = v29[17];
  __swift_project_boxed_opaque_existential_0(v29 + 14, v42);
  v22(v25, v24, v28);
  v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v32 = swift_allocObject();
  v0[51] = v32;
  v39(v32 + v31, v25, v28);
  *(v32 + ((v26 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
  v33 = *(v30 + 24);

  v40 = (v33 + *v33);
  v34 = v33[1];
  v35 = swift_task_alloc();
  v0[52] = v35;
  *v35 = v0;
  v35[1] = sub_22705E64C;

  return v40();
}

uint64_t sub_22705DD90()
{
  v124 = v0;
  v1 = *(v0 + 400);
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 192);
  v5 = *(v0 + 160);
  v6 = *(v0 + 120);
  v7 = *(v0 + 96);
  sub_22766A6D0();
  v3(v6, v5, v7);
  v8 = v1;
  v9 = sub_22766B380();
  v10 = sub_22766C890();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 384);
    v114 = *(v0 + 192);
    v117 = *(v0 + 160);
    v120 = *(v0 + 272);
    v12 = *(v0 + 120);
    v13 = *(v0 + 96);
    v108 = *(v0 + 184) + 8;
    v111 = *(v0 + 176);
    v14 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v123 = v106;
    *v14 = 136315394;
    v15 = sub_227668350();
    v17 = v16;
    v11(v12, v13);
    v18 = sub_226E97AE8(v15, v17, &v123);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v19 = *(v0 + 16);
    v20 = MEMORY[0x22AA995D0](*(v0 + 24), *(v0 + 32));
    v22 = sub_226E97AE8(v20, v21, &v123);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_226E8E000, v9, v10, "HealthDataSystem: Error processing HealthKitStandaloneWorkout %s, error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v106, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    v120(v114, v111);
    result = (v11)(v117, v13);
  }

  else
  {
    v24 = *(v0 + 384);
    v121 = *(v0 + 272);
    v25 = v9;
    v27 = *(v0 + 184);
    v26 = *(v0 + 192);
    v28 = *(v0 + 176);
    v29 = *(v0 + 160);
    v30 = *(v0 + 120);
    v31 = *(v0 + 96);
    v32 = *(v0 + 104);

    v24(v30, v31);
    v121(v26, v28);
    result = (v24)(v29, v31);
  }

  v33 = *(v0 + 344);
  v34 = (*(v0 + 336) - 1) & *(v0 + 336);
  if (v34)
  {
    v35 = *(v0 + 264);
LABEL_10:
    *(v0 + 336) = v34;
    *(v0 + 344) = v33;
    v37 = *(v0 + 224);
    v39 = *(v0 + 160);
    v38 = *(v0 + 168);
    v40 = *(v0 + 152);
    v41 = *(v0 + 96);
    v42 = *(v0 + 104);
    v43 = *(v35 + 48) + v42[9] * (__clz(__rbit64(v34)) | (v33 << 6));
    v44 = v42[2];
    *(v0 + 352) = v44;
    *(v0 + 360) = (v42 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v44(v38, v43, v41);
    v45 = v42[4];
    *(v0 + 368) = v45;
    *(v0 + 376) = (v42 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v45(v39, v38, v41);
    sub_22766A6D0();
    v44(v40, v39, v41);
    v46 = sub_22766B380();
    v47 = sub_22766C8B0();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 272);
    v50 = *(v0 + 224);
    v52 = *(v0 + 176);
    v51 = *(v0 + 184);
    v53 = *(v0 + 152);
    v55 = *(v0 + 96);
    v54 = *(v0 + 104);
    if (v48)
    {
      v118 = *(v0 + 272);
      v56 = swift_slowAlloc();
      v115 = v50;
      v57 = swift_slowAlloc();
      v123 = v57;
      *v56 = 136315138;
      v112 = v52;
      v58 = sub_227668350();
      v60 = v59;
      v109 = v47;
      v61 = *(v54 + 8);
      v61(v53, v55);
      v62 = sub_226E97AE8(v58, v60, &v123);

      *(v56 + 4) = v62;
      _os_log_impl(&dword_226E8E000, v46, v109, "HealthDataSystem: Saving HealthKitStandaloneWorkout %s.", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x22AA9A450](v57, -1, -1);
      MEMORY[0x22AA9A450](v56, -1, -1);

      v118(v115, v112);
    }

    else
    {

      v61 = *(v54 + 8);
      v61(v53, v55);
      v49(v50, v52);
    }

    *(v0 + 384) = v61;
    v63 = *(v0 + 312);
    v64 = *(v0 + 160);
    __swift_project_boxed_opaque_existential_0((*(v0 + 56) + 256), *(*(v0 + 56) + 280));
    v65 = sub_227668360();
    if (*(v63 + 16) && (v66 = *(v0 + 312), v67 = sub_226F491D4(v65), (v68 & 1) != 0))
    {
      v69 = v67;
      v70 = *(v0 + 88);
      v71 = *(*(v0 + 312) + 56);
      v72 = sub_227665100();
      v73 = *(v72 - 8);
      (*(v73 + 16))(v70, v71 + *(v73 + 72) * v69, v72);
      (*(v73 + 56))(v70, 0, 1, v72);
    }

    else
    {
      v74 = *(v0 + 88);
      v75 = sub_227665100();
      (*(*(v75 - 8) + 56))(v74, 1, 1, v75);
    }

    v76 = swift_task_alloc();
    *(v0 + 392) = v76;
    *v76 = v0;
    v76[1] = sub_22705D8B8;
    v77 = *(v0 + 160);
    v78 = *(v0 + 88);

    return sub_2274F9DB4(v77, v78);
  }

  else
  {
    while (1)
    {
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        return result;
      }

      if (v36 >= (((1 << *(v0 + 434)) + 63) >> 6))
      {
        break;
      }

      v35 = *(v0 + 264);
      v34 = *(v35 + 8 * v36 + 56);
      ++v33;
      if (v34)
      {
        v33 = v36;
        goto LABEL_10;
      }
    }

    v80 = *(v0 + 320);
    v79 = *(v0 + 328);
    v81 = *(v0 + 312);
    v82 = *(v0 + 264);
    v83 = *(v0 + 232);
    v84 = *(v0 + 56);

    v85 = *__swift_project_boxed_opaque_existential_0(v84 + 19, v84[22]);
    sub_2271D7EE8();
    v86 = v84[58];
    __swift_project_boxed_opaque_existential_0(v84 + 54, v84[57]);
    *(v0 + 433) = 2;
    sub_22766A130();
    sub_22766A710();
    v87 = sub_22766B380();
    v88 = sub_22766C8B0();
    v89 = os_log_type_enabled(v87, v88);
    v90 = *(v0 + 272);
    v91 = *(v0 + 232);
    v92 = *(v0 + 176);
    v93 = *(v0 + 184);
    if (v89)
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_226E8E000, v87, v88, "Finished processing standalone workout jobs", v94, 2u);
      MEMORY[0x22AA9A450](v94, -1, -1);
    }

    v90(v91, v92);
    v96 = *(v0 + 232);
    v95 = *(v0 + 240);
    v98 = *(v0 + 216);
    v97 = *(v0 + 224);
    v100 = *(v0 + 200);
    v99 = *(v0 + 208);
    v101 = *(v0 + 192);
    v102 = *(v0 + 160);
    v103 = *(v0 + 168);
    v104 = *(v0 + 152);
    v107 = *(v0 + 144);
    v110 = *(v0 + 136);
    v113 = *(v0 + 128);
    v116 = *(v0 + 120);
    v119 = *(v0 + 88);
    v122 = *(v0 + 80);

    v105 = *(v0 + 8);

    return v105();
  }
}

uint64_t sub_22705E64C()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v9 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_22705F138;
  }

  else
  {
    v6 = *(v2 + 408);
    v7 = *(v2 + 56);

    v5 = sub_22705E774;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22705E774()
{
  v124 = v0;
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 208);
  v4 = *(v0 + 160);
  v5 = *(v0 + 128);
  v6 = *(v0 + 96);
  sub_22766A6D0();
  v2(v5, v4, v6);
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 384);
  v11 = *(v0 + 272);
  v12 = *(v0 + 208);
  v13 = *(v0 + 184);
  v120 = *(v0 + 176);
  v14 = *(v0 + 128);
  v16 = *(v0 + 96);
  v15 = *(v0 + 104);
  if (v9)
  {
    v17 = swift_slowAlloc();
    v113 = v11;
    v18 = swift_slowAlloc();
    v123 = v18;
    *v17 = 136315138;
    v109 = v12;
    v19 = sub_227668350();
    v21 = v20;
    v10(v14, v16);
    v22 = sub_226E97AE8(v19, v21, &v123);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_226E8E000, v7, v8, "HealthDataSystem: Deleted HealthKitStandaloneWorkout %s.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AA9A450](v18, -1, -1);
    MEMORY[0x22AA9A450](v17, -1, -1);

    v113(v109, v120);
  }

  else
  {

    v10(v14, v16);
    v11(v12, v120);
  }

  v23 = *(v0 + 352);
  v24 = *(v0 + 160);
  v25 = *(v0 + 136);
  v26 = *(v0 + 96);
  v28 = *(v0 + 72);
  v27 = *(v0 + 80);
  v29 = *(v0 + 56);
  v30 = *(v0 + 64);
  v117 = *(v0 + 104) + 8;
  v121 = *(v0 + 384);
  v31 = *(v29 + 192);
  v110 = *(v0 + 360);
  v114 = *(v29 + 200);
  swift_getObjectType();
  v23(v25, v24, v26);
  sub_22766A590();
  sub_2276699D0();
  (*(v28 + 8))(v27, v30);
  result = v121(v24, v26);
  v33 = *(v0 + 344);
  v34 = (*(v0 + 336) - 1) & *(v0 + 336);
  if (v34)
  {
    v35 = *(v0 + 264);
LABEL_10:
    *(v0 + 336) = v34;
    *(v0 + 344) = v33;
    v37 = *(v0 + 224);
    v39 = *(v0 + 160);
    v38 = *(v0 + 168);
    v40 = *(v0 + 152);
    v41 = *(v0 + 96);
    v42 = *(v0 + 104);
    v43 = *(v35 + 48) + v42[9] * (__clz(__rbit64(v34)) | (v33 << 6));
    v44 = v42[2];
    *(v0 + 352) = v44;
    *(v0 + 360) = (v42 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v44(v38, v43, v41);
    v45 = v42[4];
    *(v0 + 368) = v45;
    *(v0 + 376) = (v42 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v45(v39, v38, v41);
    sub_22766A6D0();
    v44(v40, v39, v41);
    v46 = sub_22766B380();
    v47 = sub_22766C8B0();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 272);
    v50 = *(v0 + 224);
    v52 = *(v0 + 176);
    v51 = *(v0 + 184);
    v53 = *(v0 + 152);
    v55 = *(v0 + 96);
    v54 = *(v0 + 104);
    if (v48)
    {
      v118 = *(v0 + 272);
      v56 = swift_slowAlloc();
      v115 = v50;
      v57 = swift_slowAlloc();
      v123 = v57;
      *v56 = 136315138;
      v111 = v52;
      v58 = sub_227668350();
      v60 = v59;
      v107 = v47;
      v61 = *(v54 + 8);
      v61(v53, v55);
      v62 = sub_226E97AE8(v58, v60, &v123);

      *(v56 + 4) = v62;
      _os_log_impl(&dword_226E8E000, v46, v107, "HealthDataSystem: Saving HealthKitStandaloneWorkout %s.", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x22AA9A450](v57, -1, -1);
      MEMORY[0x22AA9A450](v56, -1, -1);

      v118(v115, v111);
    }

    else
    {

      v61 = *(v54 + 8);
      v61(v53, v55);
      v49(v50, v52);
    }

    *(v0 + 384) = v61;
    v63 = *(v0 + 312);
    v64 = *(v0 + 160);
    __swift_project_boxed_opaque_existential_0((*(v0 + 56) + 256), *(*(v0 + 56) + 280));
    v65 = sub_227668360();
    if (*(v63 + 16) && (v66 = *(v0 + 312), v67 = sub_226F491D4(v65), (v68 & 1) != 0))
    {
      v69 = v67;
      v70 = *(v0 + 88);
      v71 = *(*(v0 + 312) + 56);
      v72 = sub_227665100();
      v73 = *(v72 - 8);
      (*(v73 + 16))(v70, v71 + *(v73 + 72) * v69, v72);
      (*(v73 + 56))(v70, 0, 1, v72);
    }

    else
    {
      v74 = *(v0 + 88);
      v75 = sub_227665100();
      (*(*(v75 - 8) + 56))(v74, 1, 1, v75);
    }

    v76 = swift_task_alloc();
    *(v0 + 392) = v76;
    *v76 = v0;
    v76[1] = sub_22705D8B8;
    v77 = *(v0 + 160);
    v78 = *(v0 + 88);

    return sub_2274F9DB4(v77, v78);
  }

  else
  {
    while (1)
    {
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        return result;
      }

      if (v36 >= (((1 << *(v0 + 434)) + 63) >> 6))
      {
        break;
      }

      v35 = *(v0 + 264);
      v34 = *(v35 + 8 * v36 + 56);
      ++v33;
      if (v34)
      {
        v33 = v36;
        goto LABEL_10;
      }
    }

    v80 = *(v0 + 320);
    v79 = *(v0 + 328);
    v81 = *(v0 + 312);
    v82 = *(v0 + 264);
    v83 = *(v0 + 232);
    v84 = *(v0 + 56);

    v85 = *__swift_project_boxed_opaque_existential_0(v84 + 19, v84[22]);
    sub_2271D7EE8();
    v86 = v84[58];
    __swift_project_boxed_opaque_existential_0(v84 + 54, v84[57]);
    *(v0 + 433) = 2;
    sub_22766A130();
    sub_22766A710();
    v87 = sub_22766B380();
    v88 = sub_22766C8B0();
    v89 = os_log_type_enabled(v87, v88);
    v90 = *(v0 + 272);
    v91 = *(v0 + 232);
    v92 = *(v0 + 176);
    v93 = *(v0 + 184);
    if (v89)
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_226E8E000, v87, v88, "Finished processing standalone workout jobs", v94, 2u);
      MEMORY[0x22AA9A450](v94, -1, -1);
    }

    v90(v91, v92);
    v96 = *(v0 + 232);
    v95 = *(v0 + 240);
    v98 = *(v0 + 216);
    v97 = *(v0 + 224);
    v100 = *(v0 + 200);
    v99 = *(v0 + 208);
    v101 = *(v0 + 192);
    v102 = *(v0 + 160);
    v103 = *(v0 + 168);
    v104 = *(v0 + 152);
    v106 = *(v0 + 144);
    v108 = *(v0 + 136);
    v112 = *(v0 + 128);
    v116 = *(v0 + 120);
    v119 = *(v0 + 88);
    v122 = *(v0 + 80);

    v105 = *(v0 + 8);

    return v105();
  }
}

uint64_t sub_22705F008()
{
  v19 = v0[32];
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[19];
  v13 = v0[18];
  v14 = v0[17];
  v15 = v0[16];
  v16 = v0[15];
  v17 = v0[11];
  v18 = v0[10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22705F138()
{
  v125 = v0;
  v1 = *(v0 + 408);

  v2 = *(v0 + 424);
  v4 = *(v0 + 352);
  v3 = *(v0 + 360);
  v5 = *(v0 + 192);
  v6 = *(v0 + 160);
  v7 = *(v0 + 120);
  v8 = *(v0 + 96);
  sub_22766A6D0();
  v4(v7, v6, v8);
  v9 = v2;
  v10 = sub_22766B380();
  v11 = sub_22766C890();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 384);
    v115 = *(v0 + 192);
    v118 = *(v0 + 160);
    v121 = *(v0 + 272);
    v13 = *(v0 + 120);
    v14 = *(v0 + 96);
    v109 = *(v0 + 184) + 8;
    v112 = *(v0 + 176);
    v15 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v124 = v107;
    *v15 = 136315394;
    v16 = sub_227668350();
    v18 = v17;
    v12(v13, v14);
    v19 = sub_226E97AE8(v16, v18, &v124);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    swift_getErrorValue();
    v20 = *(v0 + 16);
    v21 = MEMORY[0x22AA995D0](*(v0 + 24), *(v0 + 32));
    v23 = sub_226E97AE8(v21, v22, &v124);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_226E8E000, v10, v11, "HealthDataSystem: Error processing HealthKitStandaloneWorkout %s, error: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v107, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);

    v121(v115, v112);
    result = (v12)(v118, v14);
  }

  else
  {
    v25 = *(v0 + 384);
    v122 = *(v0 + 272);
    v26 = v10;
    v28 = *(v0 + 184);
    v27 = *(v0 + 192);
    v29 = *(v0 + 176);
    v30 = *(v0 + 160);
    v31 = *(v0 + 120);
    v32 = *(v0 + 96);
    v33 = *(v0 + 104);

    v25(v31, v32);
    v122(v27, v29);
    result = (v25)(v30, v32);
  }

  v34 = *(v0 + 344);
  v35 = (*(v0 + 336) - 1) & *(v0 + 336);
  if (v35)
  {
    v36 = *(v0 + 264);
LABEL_10:
    *(v0 + 336) = v35;
    *(v0 + 344) = v34;
    v38 = *(v0 + 224);
    v40 = *(v0 + 160);
    v39 = *(v0 + 168);
    v41 = *(v0 + 152);
    v42 = *(v0 + 96);
    v43 = *(v0 + 104);
    v44 = *(v36 + 48) + v43[9] * (__clz(__rbit64(v35)) | (v34 << 6));
    v45 = v43[2];
    *(v0 + 352) = v45;
    *(v0 + 360) = (v43 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v45(v39, v44, v42);
    v46 = v43[4];
    *(v0 + 368) = v46;
    *(v0 + 376) = (v43 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v46(v40, v39, v42);
    sub_22766A6D0();
    v45(v41, v40, v42);
    v47 = sub_22766B380();
    v48 = sub_22766C8B0();
    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 272);
    v51 = *(v0 + 224);
    v53 = *(v0 + 176);
    v52 = *(v0 + 184);
    v54 = *(v0 + 152);
    v56 = *(v0 + 96);
    v55 = *(v0 + 104);
    if (v49)
    {
      v119 = *(v0 + 272);
      v57 = swift_slowAlloc();
      v116 = v51;
      v58 = swift_slowAlloc();
      v124 = v58;
      *v57 = 136315138;
      v113 = v53;
      v59 = sub_227668350();
      v61 = v60;
      v110 = v48;
      v62 = *(v55 + 8);
      v62(v54, v56);
      v63 = sub_226E97AE8(v59, v61, &v124);

      *(v57 + 4) = v63;
      _os_log_impl(&dword_226E8E000, v47, v110, "HealthDataSystem: Saving HealthKitStandaloneWorkout %s.", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x22AA9A450](v58, -1, -1);
      MEMORY[0x22AA9A450](v57, -1, -1);

      v119(v116, v113);
    }

    else
    {

      v62 = *(v55 + 8);
      v62(v54, v56);
      v50(v51, v53);
    }

    *(v0 + 384) = v62;
    v64 = *(v0 + 312);
    v65 = *(v0 + 160);
    __swift_project_boxed_opaque_existential_0((*(v0 + 56) + 256), *(*(v0 + 56) + 280));
    v66 = sub_227668360();
    if (*(v64 + 16) && (v67 = *(v0 + 312), v68 = sub_226F491D4(v66), (v69 & 1) != 0))
    {
      v70 = v68;
      v71 = *(v0 + 88);
      v72 = *(*(v0 + 312) + 56);
      v73 = sub_227665100();
      v74 = *(v73 - 8);
      (*(v74 + 16))(v71, v72 + *(v74 + 72) * v70, v73);
      (*(v74 + 56))(v71, 0, 1, v73);
    }

    else
    {
      v75 = *(v0 + 88);
      v76 = sub_227665100();
      (*(*(v76 - 8) + 56))(v75, 1, 1, v76);
    }

    v77 = swift_task_alloc();
    *(v0 + 392) = v77;
    *v77 = v0;
    v77[1] = sub_22705D8B8;
    v78 = *(v0 + 160);
    v79 = *(v0 + 88);

    return sub_2274F9DB4(v78, v79);
  }

  else
  {
    while (1)
    {
      v37 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        return result;
      }

      if (v37 >= (((1 << *(v0 + 434)) + 63) >> 6))
      {
        break;
      }

      v36 = *(v0 + 264);
      v35 = *(v36 + 8 * v37 + 56);
      ++v34;
      if (v35)
      {
        v34 = v37;
        goto LABEL_10;
      }
    }

    v81 = *(v0 + 320);
    v80 = *(v0 + 328);
    v82 = *(v0 + 312);
    v83 = *(v0 + 264);
    v84 = *(v0 + 232);
    v85 = *(v0 + 56);

    v86 = *__swift_project_boxed_opaque_existential_0(v85 + 19, v85[22]);
    sub_2271D7EE8();
    v87 = v85[58];
    __swift_project_boxed_opaque_existential_0(v85 + 54, v85[57]);
    *(v0 + 433) = 2;
    sub_22766A130();
    sub_22766A710();
    v88 = sub_22766B380();
    v89 = sub_22766C8B0();
    v90 = os_log_type_enabled(v88, v89);
    v91 = *(v0 + 272);
    v92 = *(v0 + 232);
    v93 = *(v0 + 176);
    v94 = *(v0 + 184);
    if (v90)
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_226E8E000, v88, v89, "Finished processing standalone workout jobs", v95, 2u);
      MEMORY[0x22AA9A450](v95, -1, -1);
    }

    v91(v92, v93);
    v97 = *(v0 + 232);
    v96 = *(v0 + 240);
    v99 = *(v0 + 216);
    v98 = *(v0 + 224);
    v101 = *(v0 + 200);
    v100 = *(v0 + 208);
    v102 = *(v0 + 192);
    v103 = *(v0 + 160);
    v104 = *(v0 + 168);
    v105 = *(v0 + 152);
    v108 = *(v0 + 144);
    v111 = *(v0 + 136);
    v114 = *(v0 + 128);
    v117 = *(v0 + 120);
    v120 = *(v0 + 88);
    v123 = *(v0 + 80);

    v106 = *(v0 + 8);

    return v106();
  }
}

uint64_t sub_22705FA38@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  v13 = v9[3];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = v10;
  v19 = v11;

  sub_22766A070();
  *(v17 + 16) = v18;
  *(v17 + 24) = v19;
  *(v17 + 32) = v12;
  *(v17 + 40) = v13;
  v20 = a4(100);
  if (v5)
  {
    swift_setDeallocating();

    v21 = *(v17 + 40);

    v22 = qword_2813B2078;
    v23 = sub_22766A100();
    (*(*(v23 - 8) + 8))(v17 + v22, v23);
    v24 = *(*v17 + 48);
    v25 = *(*v17 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v27 = v20;
    swift_setDeallocating();

    v28 = *(v17 + 40);

    v29 = qword_2813B2078;
    v30 = sub_22766A100();
    (*(*(v30 - 8) + 8))(v17 + v29, v30);
    v31 = *(*v17 + 48);
    v32 = *(*v17 + 52);
    result = swift_deallocClassInstance();
    *a5 = v27;
  }

  return result;
}

void sub_22705FC68(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v4 = a1[3];
  v49 = a1;
  v5 = __swift_project_boxed_opaque_existential_0(a1, v4);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9ED0, qword_227676A40);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = v6;
  v15 = v7;

  sub_22766A070();
  v45[0] = v15;
  v45[1] = v14;
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  *(v13 + 32) = v8;
  *(v13 + 40) = v9;
  swift_getKeyPath();
  v48 = a2;
  v16 = sub_227668350();
  v18 = v17;
  v52[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v52[0] = v16;
  v52[1] = v18;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v19 = sub_22766C820();
  sub_226E93170(v52, v50, &unk_27D7BC990, &qword_227670A30);
  v20 = v51;
  if (v51)
  {
    v21 = __swift_project_boxed_opaque_existential_0(v50, v51);
    v46 = v45;
    v22 = v9;
    v23 = v8;
    v24 = *(v20 - 8);
    v25 = *(v24 + 64);
    MEMORY[0x28223BE20](v21);
    v27 = v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27);
    v28 = sub_22766D170();
    (*(v24 + 8))(v27, v20);
    v8 = v23;
    v9 = v22;
    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  else
  {
    v28 = 0;
  }

  v29 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v30 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9ED8 &unk_227676A90))];

  sub_226E97D1C(v52, &unk_27D7BC990, &qword_227670A30);
  v31 = qword_2813B2078;
  swift_beginAccess();
  v32 = v30;
  v33 = sub_22766A080();
  v35 = v34;
  MEMORY[0x22AA985C0]();
  if (*((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v46 = *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v33(v52, 0);
  swift_endAccess();

  v36 = sub_227543050(v13 + v31, v8, v9);
  if (v36)
  {
    if (v36 == 1)
    {

LABEL_9:
      v37 = *__swift_project_boxed_opaque_existential_0((v47 + 152), *(v47 + 176));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_227670CD0;
      *(v38 + 32) = sub_227668350();
      *(v38 + 40) = v39;
      sub_2272D7CA8(1, v38, v49);

      return;
    }

    swift_willThrow();
  }

  else
  {
    v40 = v52[5];
    v41 = sub_227284814(0);
    if (!v40)
    {
      v42 = v41;
      [v41 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v43 = sub_22766C9E0();
      v44 = sub_226EDAB24(v43);

      sub_226EDAB78(v44, v45[0]);

      goto LABEL_9;
    }
  }
}

uint64_t *sub_227060160()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  v1 = v0[24];
  swift_unknownObjectRelease();
  v2 = v0[26];

  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  v3 = v0[42];

  __swift_destroy_boxed_opaque_existential_0(v0 + 44);
  __swift_destroy_boxed_opaque_existential_0(v0 + 49);
  __swift_destroy_boxed_opaque_existential_0(v0 + 54);
  v4 = OBJC_IVAR____TtC15SeymourServices16HealthDataSystem_lock;
  v5 = sub_22766A9D0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_227060220()
{
  sub_227060160();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for HealthDataSystem()
{
  result = qword_2813A3340;
  if (!qword_2813A3340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2270602A0()
{
  result = sub_22766A9D0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2270603C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SeymourServices16HealthDataSystem_lock;
  swift_beginAccess();
  v4 = sub_22766A9D0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_227060448(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15SeymourServices16HealthDataSystem_lock;
  swift_beginAccess();
  v4 = sub_22766A9D0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_22706053C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F40, qword_227676C10);
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2270605EC, v3, 0);
}

uint64_t sub_2270605EC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = v1[17];
  v5 = v1[18];
  __swift_project_boxed_opaque_existential_0(v1 + 14, v4);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;
  v7 = *(v5 + 24);

  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_227060778;
  v10 = v0[8];
  v11 = v0[6];

  return (v13)(v10, sub_22706386C, v6, v11, v4, v5);
}

uint64_t sub_227060778()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_227060ABC;
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 40);

    v5 = sub_2270608A0;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2270608A0()
{
  v1 = v0[7];
  sub_226E93170(v0[8], v1, &qword_27D7B9F40, qword_227676C10);
  v2 = sub_227664CA0();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[8];
    sub_226E97D1C(v0[7], &qword_27D7B9F40, qword_227676C10);
    v5 = sub_227664710();
    sub_227063888(&qword_27D7B9EB8, MEMORY[0x277D50BA8]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D50B98], v5);
    swift_willThrow();
    sub_226E97D1C(v4, &qword_27D7B9F40, qword_227676C10);
    v8 = v0[7];
    v7 = v0[8];
  }

  else
  {
    v10 = v0[7];
    v11 = v0[2];
    sub_226E97D1C(v0[8], &qword_27D7B9F40, qword_227676C10);
    (*(v3 + 32))(v11, v10, v2);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_227060ABC()
{
  v1 = v0[9];

  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_227060B30@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EF0, qword_227676AD8);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v9;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  swift_getKeyPath();
  v43[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v43[0] = a2;
  v43[1] = a3;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v18 = sub_22766C820();
  sub_226E93170(v43, v41, &unk_27D7BC990, &qword_227670A30);
  v19 = v42;
  if (v42)
  {
    v20 = __swift_project_boxed_opaque_existential_0(v41, v42);
    v21 = *(v19 - 8);
    v22 = *(v21 + 64);
    v23 = MEMORY[0x28223BE20](v20);
    v25 = v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v25, v23);
    v26 = sub_22766D170();
    (*(v21 + 8))(v25, v19);
    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v28 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EF8 qword_2276830E0))];

  sub_226E97D1C(v43, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v29 = v28;
  v30 = sub_22766A080();
  v32 = v31;
  MEMORY[0x22AA985C0]();
  if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v40 = *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v30(v43, 0);
  swift_endAccess();

  v33 = MEMORY[0x22AA99A00]();
  sub_2275448DC(v15, a4);
  objc_autoreleasePoolPop(v33);
  swift_setDeallocating();

  v34 = *(v15 + 40);

  v35 = qword_2813B2078;
  v36 = sub_22766A100();
  (*(*(v36 - 8) + 8))(v15 + v35, v36);
  v37 = *(*v15 + 48);
  v38 = *(*v15 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_227060F9C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  v107 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v95 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93D8, &qword_227673E10);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v95 - v22;
  v24 = *__swift_project_boxed_opaque_existential_0((a2 + 352), *(a2 + 376));
  result = sub_227362748(a1, v23);
  if (!v5)
  {
    v99 = a3;
    v100 = v14;
    v26 = v107;
    v101 = a5;
    v102 = 0;
    sub_226E93170(v23, v21, &qword_27D7B93D8, &qword_227673E10);
    v27 = sub_227668A00();
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v21, 1, v27) == 1)
    {
      sub_226E97D1C(v21, &qword_27D7B93D8, &qword_227673E10);
LABEL_4:
      result = sub_226E97D1C(v23, &qword_27D7B93D8, &qword_227673E10);
      *v101 = MEMORY[0x277D84FA0];
      return result;
    }

    v98 = v16;
    v29 = sub_2276689C0();
    v31 = v30;
    (*(v28 + 8))(v21, v27);
    if ((v31 & 1) == 0 || v29 != 1)
    {
      goto LABEL_4;
    }

    v32 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v33 = *v32;
    v34 = v32[1];
    v35 = *(v32 + 16);
    v36 = v32[3];
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EF0, qword_227676AD8);
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    v40 = swift_allocObject();
    v41 = v33;
    v42 = v34;

    sub_22766A070();
    *(v40 + 16) = v41;
    *(v40 + 24) = v42;
    *(v40 + 32) = v35;
    *(v40 + 40) = v36;
    swift_getKeyPath();
    sub_2276674D0();
    *(&v106 + 1) = MEMORY[0x277D839F8];
    *&v105 = v43;
    v44 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v97 = v44;
    v45 = sub_22766C820();
    sub_226E93170(&v105, v103, &unk_27D7BC990, &qword_227670A30);
    v46 = v104;
    if (v104)
    {
      v47 = __swift_project_boxed_opaque_existential_0(v103, v104);
      v99 = &v95;
      v48 = *(v46 - 8);
      v49 = *(v48 + 64);
      MEMORY[0x28223BE20](v47);
      v51 = &v95 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v48 + 16))(v51);
      v52 = sub_22766D170();
      (*(v48 + 8))(v51, v46);
      __swift_destroy_boxed_opaque_existential_0(v103);
    }

    else
    {
      v52 = 0;
    }

    v53 = v26;
    v96 = objc_opt_self();
    v54 = [v96 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EF8, qword_2276830E0);
    v55 = [objc_allocWithZone(v95) initWithLeftExpression:v45 rightExpression:v54 modifier:0 type:3 options:0];

    sub_226E97D1C(&v105, &unk_27D7BC990, &qword_227670A30);
    v56 = qword_2813B2078;
    swift_beginAccess();
    v57 = v55;
    v99 = v56;
    v58 = sub_22766A080();
    v60 = v59;
    MEMORY[0x22AA985C0]();
    if (*((*v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v93 = *((*v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
      v53 = v26;
    }

    sub_22766C3A0();
    v58(&v105, 0);
    swift_endAccess();

    swift_getKeyPath();
    v61 = sub_227662750();
    v62 = *(v61 - 8);
    v63 = v98;
    (*(v62 + 16))(v98, v53, v61);
    (*(v62 + 56))(v63, 0, 1, v61);
    v64 = v100;
    sub_226E93170(v63, v100, &qword_27D7B9690, qword_227670B50);
    if ((*(v62 + 48))(v64, 1, v61) == 1)
    {
      sub_226E97D1C(v64, &qword_27D7B9690, qword_227670B50);
      v105 = 0u;
      v106 = 0u;
    }

    else
    {
      *(&v106 + 1) = v61;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v105);
      (*(v62 + 32))(boxed_opaque_existential_0, v64, v61);
    }

    v66 = sub_22766C820();
    sub_226E93170(&v105, v103, &unk_27D7BC990, &qword_227670A30);
    v67 = v104;
    if (v104)
    {
      v68 = __swift_project_boxed_opaque_existential_0(v103, v104);
      v69 = *(v67 - 8);
      v70 = *(v69 + 64);
      MEMORY[0x28223BE20](v68);
      v72 = &v95 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v69 + 16))(v72);
      v73 = sub_22766D170();
      (*(v69 + 8))(v72, v67);
      v63 = v98;
      __swift_destroy_boxed_opaque_existential_0(v103);
    }

    else
    {
      v73 = 0;
    }

    v74 = [v96 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v75 = [objc_allocWithZone(v95) initWithLeftExpression:v66 rightExpression:v74 modifier:0 type:3 options:0];

    sub_226E97D1C(v63, &qword_27D7B9690, qword_227670B50);
    sub_226E97D1C(&v105, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v76 = v75;
    v77 = sub_22766A080();
    v79 = v78;
    MEMORY[0x22AA985C0]();
    if (*((*v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v94 = *((*v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v77(&v105, 0);
    swift_endAccess();

    v80 = v102;
    v81 = sub_227236AB8(100);
    if (v80)
    {
      sub_226E97D1C(v23, &qword_27D7B93D8, &qword_227673E10);
      swift_setDeallocating();

      v82 = *(v40 + 40);

      v83 = qword_2813B2078;
      v84 = sub_22766A100();
      (*(*(v84 - 8) + 8))(v40 + v83, v84);
      v85 = *(*v40 + 48);
      v86 = *(*v40 + 52);
      return swift_deallocClassInstance();
    }

    else
    {
      v87 = v81;
      sub_226E97D1C(v23, &qword_27D7B93D8, &qword_227673E10);
      swift_setDeallocating();

      v88 = *(v40 + 40);

      v89 = qword_2813B2078;
      v90 = sub_22766A100();
      (*(*(v90 - 8) + 8))(v40 + v89, v90);
      v91 = *(*v40 + 48);
      v92 = *(*v40 + 52);
      result = swift_deallocClassInstance();
      *v101 = v87;
    }
  }

  return result;
}

uint64_t sub_227061A24(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766A7B0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_227668E30();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v2[9] = *(v7 + 64);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v8 = sub_22766B390();
  v2[12] = v8;
  v9 = *(v8 - 8);
  v2[13] = v9;
  v10 = *(v9 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227061BB0, v1, 0);
}

uint64_t sub_227061BB0()
{
  v41 = v0;
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[2];
  sub_22766A6D0();
  v6 = *(v4 + 16);
  v0[15] = v6;
  v0[16] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v39 = v6;
  v6(v2, v5, v3);
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[11];
  v13 = v0[12];
  v15 = v0[7];
  v14 = v0[8];
  if (v9)
  {
    v38 = v8;
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v40 = v36;
    *v16 = 141558274;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2080;
    sub_227063888(&qword_27D7B9F08, MEMORY[0x277D538B8]);
    v34 = v10;
    v35 = v13;
    v17 = sub_22766D140();
    v19 = v18;
    (*(v14 + 8))(v12, v15);
    v20 = sub_226E97AE8(v17, v19, &v40);

    *(v16 + 14) = v20;
    _os_log_impl(&dword_226E8E000, v7, v38, "Inserting %{mask.hash}s", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x22AA9A450](v36, -1, -1);
    MEMORY[0x22AA9A450](v16, -1, -1);

    (*(v11 + 8))(v34, v35);
  }

  else
  {

    (*(v14 + 8))(v12, v15);
    (*(v11 + 8))(v10, v13);
  }

  v22 = v0[9];
  v21 = v0[10];
  v24 = v0[7];
  v23 = v0[8];
  v25 = v0[2];
  v26 = v0[3];
  v27 = v26[18];
  __swift_project_boxed_opaque_existential_0(v26 + 14, v26[17]);
  v39(v21, v25, v24);
  v28 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v29 = swift_allocObject();
  v0[17] = v29;
  (*(v23 + 32))(v29 + v28, v21, v24);
  *(v29 + ((v22 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v30 = *(v27 + 24);

  v37 = (v30 + *v30);
  v31 = v30[1];
  v32 = swift_task_alloc();
  v0[18] = v32;
  *v32 = v0;
  v32[1] = sub_227061F70;

  return v37();
}

uint64_t sub_227061F70()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v9 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_2270621CC;
  }

  else
  {
    v6 = *(v2 + 136);
    v7 = *(v2 + 24);

    v5 = sub_227062098;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_227062098()
{
  v13 = v0[15];
  v14 = v0[16];
  v1 = v0[10];
  v15 = v0[14];
  v16 = v0[11];
  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v7 = v0[2];
  v6 = v0[3];
  v8 = *__swift_project_boxed_opaque_existential_0(v6 + 19, v6[22]);
  sub_2271D7EE8();
  v9 = v6[24];
  v10 = v6[25];
  swift_getObjectType();
  v13(v1, v7, v3);
  sub_22766A7A0();
  sub_2276699D0();
  (*(v4 + 8))(v2, v5);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2270621CC()
{
  v1 = v0[17];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[6];

  v6 = v0[1];
  v7 = v0[19];

  return v6();
}

uint64_t sub_227062264(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F38, &qword_227676C00);
  v8 = sub_227668E30();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_227670CD0;
  (*(v9 + 16))(v12 + v11, a2, v8);
  sub_22756211C(v12, v7[1], *(v7 + 16), v7[3]);

  if (!v3)
  {
    v14 = *__swift_project_boxed_opaque_existential_0((a3 + 152), *(a3 + 176));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_227670CD0;
    *(v15 + 32) = sub_227668E00();
    *(v15 + 40) = v16;
    sub_2272D7C7C(0, v15, a1);
  }

  return result;
}

uint64_t sub_22706240C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void, void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), void (*a7)(void, uint64_t, void *))
{
  v15 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  result = a4(a2, v15[1], *(v15 + 16), v15[3]);
  if (!v7)
  {
    v17 = *__swift_project_boxed_opaque_existential_0((a3 + 152), *(a3 + 176));
    v18 = sub_227050A1C(a2, a5, a6);
    a7(0, v18, a1);
  }

  return result;
}

uint64_t sub_2270624E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v73 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93D8, &qword_227673E10);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v73 - v21;
  v23 = *__swift_project_boxed_opaque_existential_0((a2 + 352), *(a2 + 376));
  result = sub_227362748(a1, v22);
  if (!v4)
  {
    v73 = a3;
    v74 = a4;
    v79 = 0;
    sub_226E93170(v22, v20, &qword_27D7B93D8, &qword_227673E10);
    v25 = sub_227668A00();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v20, 1, v25) == 1)
    {
      sub_226E97D1C(v20, &qword_27D7B93D8, &qword_227673E10);
LABEL_4:
      result = sub_226E97D1C(v22, &qword_27D7B93D8, &qword_227673E10);
      *v74 = MEMORY[0x277D84FA0];
      return result;
    }

    v27 = sub_2276689C0();
    v29 = v28;
    (*(v26 + 8))(v20, v25);
    if ((v29 & 1) == 0 || v27 != 1)
    {
      goto LABEL_4;
    }

    v30 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v31 = *v30;
    v32 = v30[1];
    v33 = *(v30 + 16);
    v34 = v30[3];
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F28, &qword_227676BC8);
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    v38 = swift_allocObject();
    v39 = v31;
    v40 = v32;

    sub_22766A070();
    *(v38 + 16) = v39;
    *(v38 + 24) = v40;
    *(v38 + 32) = v33;
    *(v38 + 40) = v34;
    swift_getKeyPath();
    v41 = sub_227662750();
    v42 = *(v41 - 8);
    (*(v42 + 16))(v15, v73, v41);
    (*(v42 + 56))(v15, 0, 1, v41);
    sub_226E93170(v15, v13, &qword_27D7B9690, qword_227670B50);
    if ((*(v42 + 48))(v13, 1, v41) == 1)
    {
      sub_226E97D1C(v13, &qword_27D7B9690, qword_227670B50);
      v77 = 0u;
      v78 = 0u;
    }

    else
    {
      *(&v78 + 1) = v41;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v77);
      (*(v42 + 32))(boxed_opaque_existential_0, v13, v41);
    }

    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v73 = sub_22766C820();
    sub_226E93170(&v77, v75, &unk_27D7BC990, &qword_227670A30);
    v44 = v76;
    if (v76)
    {
      v45 = __swift_project_boxed_opaque_existential_0(v75, v76);
      v46 = *(v44 - 8);
      v47 = *(v46 + 64);
      MEMORY[0x28223BE20](v45);
      v49 = &v73 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v46 + 16))(v49);
      v50 = sub_22766D170();
      (*(v46 + 8))(v49, v44);
      __swift_destroy_boxed_opaque_existential_0(v75);
    }

    else
    {
      v50 = 0;
    }

    v51 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    v52 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F30, qword_227683060));
    v53 = v73;
    v54 = [v52 initWithLeftExpression:v73 rightExpression:v51 modifier:0 type:3 options:0];

    sub_226E97D1C(v15, &qword_27D7B9690, qword_227670B50);
    sub_226E97D1C(&v77, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v55 = v54;
    v56 = sub_22766A080();
    v58 = v57;
    MEMORY[0x22AA985C0]();
    if (*((*v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v72 = *((*v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v56(&v77, 0);
    swift_endAccess();

    v59 = v79;
    v60 = sub_227236DB8(100);
    if (v59)
    {
      sub_226E97D1C(v22, &qword_27D7B93D8, &qword_227673E10);
      swift_setDeallocating();

      v61 = *(v38 + 40);

      v62 = qword_2813B2078;
      v63 = sub_22766A100();
      (*(*(v63 - 8) + 8))(v38 + v62, v63);
      v64 = *(*v38 + 48);
      v65 = *(*v38 + 52);
      return swift_deallocClassInstance();
    }

    else
    {
      v66 = v60;
      sub_226E97D1C(v22, &qword_27D7B93D8, &qword_227673E10);
      swift_setDeallocating();

      v67 = *(v38 + 40);

      v68 = qword_2813B2078;
      v69 = sub_22766A100();
      (*(*(v69 - 8) + 8))(v38 + v68, v69);
      v70 = *(*v38 + 48);
      v71 = *(*v38 + 52);
      result = swift_deallocClassInstance();
      *v74 = v66;
    }
  }

  return result;
}

uint64_t sub_227062CE0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_22705C620(a1, v1);
}

void sub_227062D7C(uint64_t a1, char a2, void *a3)
{
  v7 = sub_227665100();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EE0, &qword_227676AA0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v17 = (&v57 - v16);
  v64 = *(a1 + 16);
  if (!v64)
  {
    goto LABEL_22;
  }

  v59 = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v63 = *(v15 + 72);
  v65 = a1;
  v58 = v19;
  sub_226E93170(a1 + v19, &v57 - v16, &qword_27D7B9EE0, &qword_227676AA0);
  v60 = v8;
  v20 = *(v8 + 32);
  v71 = *v17;
  v21 = v71;
  v62 = v18;
  v66 = v7;
  v67 = v11;
  v20(v11, v17 + v18, v7);
  v22 = *a3;
  v23 = sub_226F491D4(v21);
  v25 = v22[2];
  v26 = (v24 & 1) == 0;
  v27 = __OFADD__(v25, v26);
  v28 = v25 + v26;
  if (v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v29 = v24;
  if (v22[3] < v28)
  {
    sub_226FE8B88(v28, a2 & 1);
    v30 = *a3;
    v23 = sub_226F491D4(v21);
    if ((v29 & 1) != (v31 & 1))
    {
LABEL_5:
      sub_22766D220();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v29)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v34 = v23;
  sub_226FF334C();
  v23 = v34;
  if (v29)
  {
LABEL_9:
    v32 = swift_allocError();
    swift_willThrow();
    v70 = v32;
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v60 + 8))(v67, v66);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v35 = *a3;
  *(*a3 + 8 * (v23 >> 6) + 64) |= 1 << v23;
  *(v35[6] + 8 * v23) = v21;
  v36 = v35[7];
  v61 = *(v60 + 72);
  v37 = v66;
  v20((v36 + v61 * v23), v67, v66);
  v38 = v35[2];
  v27 = __OFADD__(v38, 1);
  v39 = v38 + 1;
  if (!v27)
  {
    v35[2] = v39;
    v40 = v65;
    if (v64 == 1)
    {
LABEL_22:

      return;
    }

    v41 = v65 + v63 + v58;
    v42 = 1;
    while (v42 < *(v40 + 16))
    {
      sub_226E93170(v41, v17, &qword_27D7B9EE0, &qword_227676AA0);
      v43 = v37;
      v71 = *v17;
      v44 = v71;
      v20(v67, v17 + v62, v43);
      v45 = *a3;
      v46 = sub_226F491D4(v44);
      v48 = v45[2];
      v49 = (v47 & 1) == 0;
      v27 = __OFADD__(v48, v49);
      v50 = v48 + v49;
      if (v27)
      {
        goto LABEL_23;
      }

      v51 = v47;
      if (v45[3] < v50)
      {
        sub_226FE8B88(v50, 1);
        v52 = *a3;
        v46 = sub_226F491D4(v44);
        if ((v51 & 1) != (v53 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v51)
      {
        goto LABEL_9;
      }

      v54 = *a3;
      *(*a3 + 8 * (v46 >> 6) + 64) |= 1 << v46;
      *(v54[6] + 8 * v46) = v44;
      v37 = v66;
      v20((v54[7] + v61 * v46), v67, v66);
      v55 = v54[2];
      v27 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v27)
      {
        goto LABEL_24;
      }

      ++v42;
      v54[2] = v56;
      v41 += v63;
      v40 = v65;
      if (v64 == v42)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v68 = 0;
  v69 = 0xE000000000000000;
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

uint64_t sub_227063300(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EE0, &qword_227676AA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2270633F4@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = *(sub_227667500() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_227662750() - 8);
  return sub_227060F9C(a1, *(v2 + 16), (v2 + v6), v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), a2);
}

uint64_t sub_2270634D8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227056924(a1, v1);
}

uint64_t sub_2270635B4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, void))
{
  v6 = *(a2(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  return a3(a1, v3 + v7, *(v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_37Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227063888(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2270638F0()
{
  v90 = v0;
  v1 = v0[27];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[18];

  sub_22766A730();
  v5 = v1;
  v6 = sub_22766B380();
  v7 = sub_22766C890();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[27];
    v9 = v0[20];
    v86 = v0[21];
    v10 = v0[18];
    v11 = v0[14];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v89[0] = v13;
    *v12 = 136446210;
    swift_getErrorValue();
    v14 = v0[2];
    v15 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v17 = sub_226E97AE8(v15, v16, v89);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_226E8E000, v6, v7, "JetPack host not found in bag: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA9A450](v13, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    v9(v10, v11);
  }

  else
  {
    v19 = v0[20];
    v18 = v0[21];
    v20 = v0[18];
    v21 = v0[14];

    v19(v20, v21);
  }

  v22 = v0[10];
  v23 = v0[11];
  v24 = v0[9];
  v25 = *(v0[8] + 56);
  v26 = sub_2276693B0();
  v27 = "https://apps.mzstatic.com/content/2253eb7bf7674787835ae45311b2349e/";
  if (v26)
  {
    v27 = "https://apps.mzstatic.com/content/c42f3d5dc9ee4cfd830d6a654ac8656a/";
  }

  v28 = v27 - 32;
  sub_227662470();
  if ((*(v23 + 48))(v24, 1, v22) == 1)
  {
    v29 = v0[16];
    sub_226FB1188(v0[9]);
    sub_22766A730();

    v30 = sub_22766B380();
    v31 = sub_22766C890();

    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[20];
    v34 = v0[16];
    v35 = v0[14];
    if (v32)
    {
      v87 = v0[21];
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v89[0] = v37;
      *v36 = 141558274;
      *(v36 + 4) = 1752392040;
      *(v36 + 12) = 2080;
      v38 = sub_226E97AE8(0xD000000000000043, v28 | 0x8000000000000000, v89);

      *(v36 + 14) = v38;
      _os_log_impl(&dword_226E8E000, v30, v31, "Fallback URL invalid: %{mask.hash}s", v36, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x22AA9A450](v37, -1, -1);
      MEMORY[0x22AA9A450](v36, -1, -1);
    }

    else
    {
    }

    v33(v34, v35);
    v61 = v0[27];
    v62 = v0[23];
    sub_226F6649C();
    swift_allocError();
    *v63 = 9;
    swift_willThrow();

    swift_unknownObjectRelease();
    v65 = v0[18];
    v64 = v0[19];
    v67 = v0[16];
    v66 = v0[17];
    v69 = v0[12];
    v68 = v0[13];
    v70 = v0[9];

    v71 = v0[1];
  }

  else
  {
    v39 = v0[17];
    v41 = v0[12];
    v40 = v0[13];
    v42 = v0[10];
    v43 = v0[11];
    v44 = v0[9];

    v45 = *(v43 + 32);
    v45(v40, v44, v42);
    sub_22766A730();
    (*(v43 + 16))(v41, v40, v42);
    v46 = sub_22766B380();
    v83 = sub_22766C8B0();
    v47 = os_log_type_enabled(v46, v83);
    v84 = v0[23];
    v85 = v0[27];
    v49 = v0[20];
    v48 = v0[21];
    v50 = v0[17];
    v88 = v0[14];
    v52 = v0[11];
    v51 = v0[12];
    v53 = v0[10];
    if (v47)
    {
      v82 = v45;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v89[0] = v55;
      *v54 = 141558274;
      *(v54 + 4) = 1752392040;
      *(v54 + 12) = 2080;
      sub_226EA2B70(&qword_28139BDD0, MEMORY[0x277CC9260]);
      v80 = v50;
      v81 = v49;
      v56 = sub_22766D140();
      v58 = v57;
      (*(v52 + 8))(v51, v53);
      v59 = sub_226E97AE8(v56, v58, v89);

      *(v54 + 14) = v59;
      _os_log_impl(&dword_226E8E000, v46, v83, "Using fallback URL: %{mask.hash}s", v54, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x22AA9A450](v55, -1, -1);
      v60 = v54;
      v45 = v82;
      MEMORY[0x22AA9A450](v60, -1, -1);

      swift_unknownObjectRelease();
      v81(v80, v88);
    }

    else
    {

      swift_unknownObjectRelease();
      (*(v52 + 8))(v51, v53);
      v49(v50, v88);
    }

    v45(v0[7], v0[13], v0[10]);
    v73 = v0[18];
    v72 = v0[19];
    v75 = v0[16];
    v74 = v0[17];
    v77 = v0[12];
    v76 = v0[13];
    v78 = v0[9];

    v71 = v0[1];
  }

  return v71();
}

uint64_t sub_227063F6C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];
  v6 = v0[13];

  return v5();
}

uint64_t sub_227063FF8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_227064054()
{
  v1 = v0[18];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];

  (*(v3 + 8))(v2, v4);
  v5 = v0[23];
  v6 = v0[17];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[10];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22706411C()
{
  v1 = v0[18];

  v2 = v0[20];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[10];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2270641C4()
{
  v1 = v0[22];
  v2 = v0[18];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];

  swift_unknownObjectRelease();
  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);
  v9 = v0[25];
  v10 = v0[17];
  v12 = v0[13];
  v11 = v0[14];
  v13 = v0[10];
  v14 = v0[7];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2270642BC()
{
  v1 = sub_22766B620();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227064384, 0, 0);
}

uint64_t sub_227064384()
{
  sub_22766B680();
  sub_22766B670();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  sub_22766B610();
  (*(v4 + 16))(v2, v1, v3);
  v5 = sub_22766B650();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v0[6] = sub_22766B630();

  (*(v4 + 8))(v1, v3);
  v8 = *(MEMORY[0x277D21A10] + 4);
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_227064528;

  return MEMORY[0x28217E7D0]();
}

uint64_t sub_227064528()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_2270646B4;
  }

  else
  {
    v3 = sub_22706463C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22706463C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2270646B4()
{
  v1 = v0[6];

  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t getEnumTagSinglePayload for IncomingScriptRequest(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCD)
  {
    goto LABEL_17;
  }

  if (a2 + 51 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 51) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 51;
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

      return (*a1 | (v4 << 8)) - 51;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 51;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x34;
  v8 = v6 - 52;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IncomingScriptRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 51 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 51) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCD)
  {
    v4 = 0;
  }

  if (a2 > 0xCC)
  {
    v5 = ((a2 - 205) >> 8) + 1;
    *result = a2 + 51;
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
    *result = a2 + 51;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_227064878(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_226EA8DA8(*a1);
  v5 = v4;
  if (v3 == sub_226EA8DA8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22766D190();
  }

  return v8 & 1;
}

uint64_t sub_227064900()
{
  v1 = *v0;
  sub_22766D370();
  sub_226EA8DA8(v1);
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_227064964()
{
  sub_226EA8DA8(*v0);
  sub_22766C100();
}

uint64_t sub_2270649B8()
{
  v1 = *v0;
  sub_22766D370();
  sub_226EA8DA8(v1);
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_227064A18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_226EA68D8();
  *a2 = result;
  return result;
}

unint64_t sub_227064A48@<X0>(unint64_t *a1@<X8>)
{
  result = sub_226EA8DA8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_227064A78()
{
  result = qword_28139A428;
  if (!qword_28139A428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139A428);
  }

  return result;
}

uint64_t sub_227064B60@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53CB8];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_227064BD8(uint64_t a1)
{
  v2 = MEMORY[0x277D50180];
  *(a1 + 24) = sub_227064C5C(&qword_2813A57F0, MEMORY[0x277D50180]);
  result = sub_227064C5C(&qword_2813A57E8, v2);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_227064C5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227064CA4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D78];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_227064D18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227669350();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_227064D40(uint64_t a1)
{
  *(a1 + 24) = sub_227064DA8(&qword_2813A5508);
  result = sub_227064DA8(&qword_2813A5500);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_227064DA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227669360();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_227064DEC(void *a1)
{
  v2 = [a1 topic];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2;
  sub_22766C000();

  v4 = [a1 topicIdentifier];
  if (!v4)
  {

LABEL_5:
    v6 = sub_227664DD0();
    sub_227065498(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51028], v6);
    swift_willThrow();
    goto LABEL_6;
  }

  v5 = v4;
  sub_22766C000();

  [a1 duration];
  [a1 startTime];
  sub_22706539C();
  sub_227663AE0();
  sub_227664610();
LABEL_6:
}

size_t static CommentaryEvent.representativeSamples()()
{
  v27 = sub_227664650();
  v0 = *(v27 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v27);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F5D274();
  v4 = sub_22766BE70();
  v5 = sub_22766BE70();
  sub_227065348();
  sub_22706539C();
  v6 = sub_227663B50();
  v7 = sub_22766C090();
  v39 = v5;
  v40[0] = v4;
  v40[1] = v40;
  v40[2] = &v39;
  v37 = v7;
  v38 = v6;
  v40[3] = &v38;
  v40[4] = &v37;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v34 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F60, &qword_227676E18);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v29 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v30 = v29;
  v31 = sub_226F5BF60(&qword_27D7B9F68, &qword_27D7B9F60, &qword_227676E18);
  v32 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v8 = sub_2276638E0();

  v9 = *(v8 + 16);
  if (v9)
  {
    v28 = MEMORY[0x277D84F90];
    result = sub_226F1F3A8(0, v9, 0);
    v11 = 0;
    v12 = 0;
    v13 = v28;
    v24 = v0 + 32;
    v26 = v8;
    v25 = v9;
    while (v12 < *(v8 + 16))
    {
      v14 = v0;
      v15 = *(v8 + v11 + 32);
      v16 = *(v8 + v11 + 40);
      v17 = *(v8 + v11 + 48);
      v18 = *(v8 + v11 + 56);
      v19 = *(v8 + v11 + 64);
      v21 = *(v8 + v11 + 72);
      v20 = *(v8 + v11 + 80);
      sub_226EB396C(v17, v18, v19);

      sub_227664610();
      v28 = v13;
      v23 = *(v13 + 16);
      v22 = *(v13 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_226F1F3A8(v22 > 1, v23 + 1, 1);
        v13 = v28;
      }

      ++v12;
      *(v13 + 16) = v23 + 1;
      v0 = v14;
      result = (*(v14 + 32))(v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v23, v3, v27);
      v11 += 56;
      v8 = v26;
      if (v25 == v12)
      {

        return v13;
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

unint64_t sub_227065348()
{
  result = qword_27D7B9F50;
  if (!qword_27D7B9F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9F50);
  }

  return result;
}

unint64_t sub_22706539C()
{
  result = qword_27D7B9F58;
  if (!qword_27D7B9F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9F58);
  }

  return result;
}

uint64_t sub_227065440(uint64_t a1)
{
  result = sub_227065498(&qword_27D7B9F70, MEMORY[0x277D50A68]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227065498(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2270654E0(void *a1)
{
  v2 = sub_227664600();
  v4 = v3;
  v6 = v5 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F78, &qword_22768BA10);
  sub_227663AD0();
  v7 = sub_22766BFD0();
  sub_226EB2DFC(v2, v4, v6);

  [a1 setTopic_];

  sub_227664640();
  [a1 setStartTime_];
  sub_227664620();
  [a1 setDuration_];
  sub_2276645F0();
  v8 = sub_22766BFD0();

  [a1 setTopicIdentifier_];
}

uint64_t sub_2270655F8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D70];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_227065678@<X0>(_DWORD *a1@<X8>)
{
  sub_227669020();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F80, &qword_227676E88);
  result = sub_227663AD0();
  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v3 <= 0x7FFFFFFF)
  {
    *a1 = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2270656F8(uint64_t a1)
{
  *(a1 + 24) = sub_227065760(&qword_2813A5520);
  result = sub_227065760(&qword_2813A5518);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_227065760(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227669040();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2270657A4()
{
  v1 = [*v0 allAuthKitAccounts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_227065808();
  v3 = sub_22766C2C0();

  return v3;
}

unint64_t sub_227065808()
{
  result = qword_2813989F0;
  if (!qword_2813989F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813989F0);
  }

  return result;
}

uint64_t sub_227065864()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22766D370();
  sub_22766C100();
  return sub_22766D3F0();
}

uint64_t sub_2270658B0()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22766C100();
}

uint64_t sub_2270658B8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22766D370();
  sub_22766C100();
  return sub_22766D3F0();
}

uint64_t sub_227065900(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22766D190();
  }
}

unint64_t sub_227065934()
{
  result = qword_27D7B9F88;
  if (!qword_27D7B9F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9F88);
  }

  return result;
}

unint64_t sub_227065988(uint64_t a1)
{
  result = sub_2270659B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2270659B0()
{
  result = qword_27D7B9F90;
  if (!qword_27D7B9F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9F90);
  }

  return result;
}

uint64_t sub_227065A04()
{
  v0 = sub_22766C090();
  v1 = *(v0 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_226F1EE30(0, v1, 0);
    v2 = v10;
    v3 = (v0 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v10 + 16);
      v7 = *(v10 + 24);

      if (v6 >= v7 >> 1)
      {
        sub_226F1EE30((v7 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      v8 = v10 + 16 * v6;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_227065AFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_227065B44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_227065B90(uint64_t a1)
{
  v3 = type metadata accessor for SyncZoneChangeWindow();
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v41 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2276694E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v33 = v1;
  v45 = MEMORY[0x277D84F90];
  sub_226F1EF50(0, v11, 0);
  v12 = v45;
  v13 = a1 + 56;
  v14 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v16 = v7;
  v17 = result;
  v18 = 0;
  v39 = (v16 + 16);
  v40 = v16;
  v37 = a1;
  v38 = v16 + 32;
  v34 = a1 + 64;
  v35 = v11;
  v36 = a1 + 56;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
  {
    v20 = v17 >> 6;
    if ((*(v13 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_21;
    }

    v21 = *(a1 + 36);
    v43 = v18;
    v44 = v21;
    v22 = v41;
    sub_22706D188(*(a1 + 48) + *(v42 + 72) * v17, v41, type metadata accessor for SyncZoneChangeWindow);
    (*v39)(v10, v22, v6);
    sub_22706D20C(v22, type metadata accessor for SyncZoneChangeWindow);
    v45 = v12;
    v23 = v6;
    v25 = *(v12 + 16);
    v24 = *(v12 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_226F1EF50(v24 > 1, v25 + 1, 1);
      v12 = v45;
    }

    *(v12 + 16) = v25 + 1;
    result = (*(v40 + 32))(v12 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v25, v10, v23);
    v19 = 1 << *(v37 + 32);
    if (v17 >= v19)
    {
      goto LABEL_22;
    }

    v13 = v36;
    v26 = *(v36 + 8 * v20);
    if ((v26 & (1 << v17)) == 0)
    {
      goto LABEL_23;
    }

    v6 = v23;
    a1 = v37;
    if (v44 != *(v37 + 36))
    {
      goto LABEL_24;
    }

    v27 = v26 & (-2 << (v17 & 0x3F));
    if (v27)
    {
      v19 = __clz(__rbit64(v27)) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v20 << 6;
      v29 = v20 + 1;
      v30 = (v34 + 8 * v20);
      while (v29 < (v19 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_226EB526C(v17, v44, 0);
          v19 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v17, v44, 0);
    }

LABEL_4:
    v18 = v43 + 1;
    v17 = v19;
    if (v43 + 1 == v35)
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

uint64_t sub_227065F58(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F98, &unk_227677050);
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  v45 = &v39 - v9;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v44 = v6;
  v39 = v1;
  v51 = MEMORY[0x277D84F90];
  sub_226F1F050(0, v10, 0);
  v11 = v51;
  v12 = a1 + 64;
  v13 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v15 = result;
  v16 = 0;
  v50 = *(a1 + 36);
  v40 = a1 + 72;
  v41 = v10;
  v42 = a1 + 64;
  v43 = a1;
  while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
  {
    v18 = v15 >> 6;
    if ((*(v12 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
    {
      goto LABEL_24;
    }

    if (v50 != *(a1 + 36))
    {
      goto LABEL_25;
    }

    v48 = v16;
    v49 = v11;
    v19 = *(a1 + 56);
    v20 = (*(a1 + 48) + 16 * v15);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v19 + 4 * v15);
    swift_bridgeObjectRetain_n();
    v24 = v44;
    sub_2276694B0();
    v11 = sub_2276694E0();
    v25 = *(v11 - 8);
    if ((*(v25 + 48))(v24, 1, v11) == 1)
    {
      sub_22706CF74(v24);
      v37 = sub_22766AF20();
      sub_22706D140(&unk_281399230, MEMORY[0x277D544D0]);
      swift_allocError();
      *v38 = v21;
      v38[1] = v22;
      (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D544A0], v37);
      swift_willThrow();

      return v11;
    }

    v26 = *(v47 + 48);
    v27 = v45;
    (*(v25 + 32))();

    *(v27 + v26) = v23;
    v11 = v49;
    v51 = v49;
    v29 = *(v49 + 16);
    v28 = *(v49 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_226F1F050(v28 > 1, v29 + 1, 1);
      v11 = v51;
    }

    *(v11 + 16) = v29 + 1;
    result = sub_226E95D18(v27, v11 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v29, &qword_27D7B9F98, &unk_227677050);
    a1 = v43;
    v17 = 1 << *(v43 + 32);
    if (v15 >= v17)
    {
      goto LABEL_26;
    }

    v12 = v42;
    v30 = *(v42 + 8 * v18);
    if ((v30 & (1 << v15)) == 0)
    {
      goto LABEL_27;
    }

    if (v50 != *(v43 + 36))
    {
      goto LABEL_28;
    }

    v31 = v30 & (-2 << (v15 & 0x3F));
    if (v31)
    {
      v17 = __clz(__rbit64(v31)) | v15 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v32 = v18 << 6;
      v33 = v18 + 1;
      v34 = (v40 + 8 * v18);
      while (v33 < (v17 + 63) >> 6)
      {
        v36 = *v34++;
        v35 = v36;
        v32 += 64;
        ++v33;
        if (v36)
        {
          result = sub_226EB526C(v15, v50, 0);
          v17 = __clz(__rbit64(v35)) + v32;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v15, v50, 0);
    }

LABEL_4:
    v16 = v48 + 1;
    v15 = v17;
    if (v48 + 1 == v41)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_227066408(uint64_t a1)
{
  v3 = type metadata accessor for SyncZoneChangeWindow();
  v41 = *(v3 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B130();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v45 = v1;
    v38 = v10;
    v46 = MEMORY[0x277D84F90];
    sub_226F1FEC8(0, v11, 0);
    v13 = -1 << *(a1 + 32);
    v43 = a1 + 56;
    v44 = v46;
    result = sub_22766CC90();
    v14 = result;
    v15 = 0;
    v36 = a1;
    v37 = v7 + 32;
    v34 = a1 + 64;
    v35 = v11;
    v39 = v7;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      v18 = v14 >> 6;
      if ((*(v43 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_22;
      }

      v42 = *(a1 + 36);
      v19 = v40;
      v20 = sub_22706D188(*(a1 + 48) + *(v41 + 72) * v14, v40, type metadata accessor for SyncZoneChangeWindow);
      MEMORY[0x28223BE20](v20);
      *(&v34 - 2) = v19;
      sub_22706D140(&qword_281399218, MEMORY[0x277D54550]);
      v21 = v38;
      v22 = v45;
      sub_22766AD80();
      v45 = v22;
      sub_22706D20C(v19, type metadata accessor for SyncZoneChangeWindow);
      v23 = v44;
      v46 = v44;
      v25 = *(v44 + 16);
      v24 = *(v44 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_226F1FEC8(v24 > 1, v25 + 1, 1);
        v23 = v46;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v44 = v23;
      result = (*(v39 + 32))(v23 + v26 + *(v39 + 72) * v25, v21, v6);
      a1 = v36;
      v16 = 1 << *(v36 + 32);
      if (v14 >= v16)
      {
        goto LABEL_23;
      }

      v27 = *(v43 + 8 * v18);
      if ((v27 & (1 << v14)) == 0)
      {
        goto LABEL_24;
      }

      if (v42 != *(v36 + 36))
      {
        goto LABEL_25;
      }

      v28 = v27 & (-2 << (v14 & 0x3F));
      if (v28)
      {
        v16 = __clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0;
        v17 = v35;
      }

      else
      {
        v29 = v18 << 6;
        v30 = v18 + 1;
        v17 = v35;
        v31 = (v34 + 8 * v18);
        while (v30 < (v16 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_226EB526C(v14, v42, 0);
            v16 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v14, v42, 0);
      }

LABEL_4:
      ++v15;
      v14 = v16;
      if (v15 == v17)
      {
        return v44;
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

uint64_t sub_227066830(uint64_t a1)
{
  v2 = v1;
  v52 = sub_2276694E0();
  v4 = *(v52 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B130();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
    return v14;
  }

  v49 = v10;
  v59 = MEMORY[0x277D84F90];
  sub_226F1FEC8(0, v13, 0);
  v58 = v59;
  v15 = a1 + 56;
  v16 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v18 = result;
  v19 = 0;
  v50 = v4;
  v46 = v4 + 8;
  v47 = v4 + 16;
  v44 = a1;
  v45 = v8 + 32;
  v41 = a1 + 64;
  v42 = v13;
  v48 = v8;
  v43 = a1 + 56;
  while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(a1 + 32))
  {
    if ((*(v15 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
    {
      goto LABEL_22;
    }

    v56 = 1 << v18;
    v57 = v18 >> 6;
    v53 = v19;
    v55 = *(a1 + 36);
    v22 = v50;
    v21 = v51;
    v23 = *(a1 + 48) + *(v50 + 72) * v18;
    v24 = v52;
    v25 = (*(v50 + 16))(v51, v23, v52);
    MEMORY[0x28223BE20](v25);
    *(&v41 - 2) = v21;
    sub_22706D140(&qword_281399218, MEMORY[0x277D54550]);
    v26 = v12;
    v27 = v49;
    sub_22766AD80();
    v54 = v2;
    (*(v22 + 8))(v21, v24);
    v28 = v58;
    v59 = v58;
    v30 = *(v58 + 16);
    v29 = *(v58 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_226F1FEC8(v29 > 1, v30 + 1, 1);
      v28 = v59;
    }

    *(v28 + 16) = v30 + 1;
    v31 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v58 = v28;
    v32 = v28 + v31 + *(v48 + 72) * v30;
    v33 = v26;
    result = (*(v48 + 32))(v32, v26, v27);
    a1 = v44;
    v20 = 1 << *(v44 + 32);
    if (v18 >= v20)
    {
      goto LABEL_23;
    }

    v15 = v43;
    v34 = *(v43 + 8 * v57);
    if ((v34 & v56) == 0)
    {
      goto LABEL_24;
    }

    if (v55 != *(v44 + 36))
    {
      goto LABEL_25;
    }

    v35 = v34 & (-2 << (v18 & 0x3F));
    if (v35)
    {
      v20 = __clz(__rbit64(v35)) | v18 & 0x7FFFFFFFFFFFFFC0;
      v12 = v33;
    }

    else
    {
      v36 = v57 << 6;
      v37 = v57 + 1;
      v38 = (v41 + 8 * v57);
      v12 = v33;
      while (v37 < (v20 + 63) >> 6)
      {
        v40 = *v38++;
        v39 = v40;
        v36 += 64;
        ++v37;
        if (v40)
        {
          result = sub_226EB526C(v18, v55, 0);
          v20 = __clz(__rbit64(v39)) + v36;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v18, v55, 0);
    }

LABEL_4:
    v2 = v54;
    v19 = v53 + 1;
    v18 = v20;
    if (v53 + 1 == v42)
    {
      return v58;
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

uint64_t sub_227066C94(uint64_t a1)
{
  v37 = sub_2276694E0();
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
      v39 = sub_2276694C0();
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

uint64_t sub_227066F9C(uint64_t a1)
{
  v2 = sub_22766B4E0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v57 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for SyncEncryptionKey();
  v5 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2276694E0();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2276695E0();
  v13 = *(v55 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v55);
  v62 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v16)
  {
    v54 = v7;
    v64 = MEMORY[0x277D84F90];
    sub_226F1FF08(0, v16, 0);
    v18 = -1 << *(a1 + 32);
    v60 = a1 + 56;
    v61 = v64;
    result = sub_22766CC90();
    v19 = result;
    v20 = 0;
    v52 = v9 + 2;
    v53 = (v9 + 1);
    v50 = v13 + 32;
    v51 = v13;
    v46 = a1 + 64;
    v47 = v16;
    v48 = v9;
    v49 = v8;
    while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(a1 + 32))
    {
      v24 = v19 >> 6;
      if ((*(v60 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
      {
        goto LABEL_25;
      }

      v25 = *(a1 + 36);
      v58 = v20;
      v59 = v25;
      v26 = v9[2];
      v26(v12, *(a1 + 48) + v9[9] * v19, v8);
      v27 = v54;
      v26(v54, v12, v8);
      sub_22766B4D0();
      v28 = v8;
      v29 = v56;
      v30 = v27 + *(v56 + 20);
      sub_22766B4A0();
      v31 = v27 + *(v29 + 28);
      sub_2276627C0();
      v32 = (v27 + *(v29 + 24));
      *v32 = 1886217588;
      v32[1] = 0xE400000000000000;
      [sub_2273C0F60() setEtag_];
      v33 = v63;
      sub_2276695F0();
      if (v33)
      {
        sub_22706D20C(v27, type metadata accessor for SyncEncryptionKey);
        (*v53)(v12, v28);
      }

      v34 = a1;
      v63 = 0;
      sub_22706D20C(v27, type metadata accessor for SyncEncryptionKey);
      (*v53)(v12, v28);
      v35 = v61;
      v64 = v61;
      v37 = *(v61 + 16);
      v36 = *(v61 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_226F1FF08(v36 > 1, v37 + 1, 1);
        v35 = v64;
      }

      *(v35 + 16) = v37 + 1;
      v38 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v61 = v35;
      result = (*(v51 + 32))(v35 + v38 + *(v51 + 72) * v37, v62, v55);
      v21 = 1 << *(v34 + 32);
      if (v19 >= v21)
      {
        goto LABEL_26;
      }

      v39 = *(v60 + 8 * v24);
      if ((v39 & (1 << v19)) == 0)
      {
        goto LABEL_27;
      }

      a1 = v34;
      if (v59 != *(v34 + 36))
      {
        goto LABEL_28;
      }

      v40 = v39 & (-2 << (v19 & 0x3F));
      if (v40)
      {
        v21 = __clz(__rbit64(v40)) | v19 & 0x7FFFFFFFFFFFFFC0;
        v9 = v48;
        v8 = v49;
        v22 = v47;
        v23 = v58;
      }

      else
      {
        v41 = v24 << 6;
        v42 = v24 + 1;
        v43 = (v46 + 8 * v24);
        v9 = v48;
        v8 = v49;
        v22 = v47;
        while (v42 < (v21 + 63) >> 6)
        {
          v45 = *v43++;
          v44 = v45;
          v41 += 64;
          ++v42;
          if (v45)
          {
            result = sub_226EB526C(v19, v59, 0);
            v21 = __clz(__rbit64(v44)) + v41;
            goto LABEL_20;
          }
        }

        result = sub_226EB526C(v19, v59, 0);
LABEL_20:
        v23 = v58;
      }

      v20 = v23 + 1;
      v19 = v21;
      if (v20 == v22)
      {
        return v61;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t sub_2270674E8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22766B1F0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_22766B160();
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
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227067670, 0, 0);
}

uint64_t sub_227067670()
{
  v1 = v0[3];
  v2 = sub_227065B90(v0[2]);

  v0[15] = sub_227006648(v2, v1);

  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_227067738;
  v4 = v0[4];

  return sub_22706BF3C();
}

uint64_t sub_227067738()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_227067FF4;
  }

  else
  {
    v3 = sub_22706784C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22706784C()
{
  v33 = v0;
  v1 = v0[14];
  v2 = v0[3];
  sub_22766A6B0();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[12];
  if (v5)
  {
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v10 = 136315138;
    sub_2276694E0();
    sub_22706D140(&qword_2813A54D0, MEMORY[0x277D53DA0]);
    v12 = sub_22766C610();
    v14 = sub_226E97AE8(v12, v13, &v32);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v3, v4, "Fetching changesets from server for zones: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  v15 = *(v8 + 8);
  v15(v6, v7);
  v0[18] = v15;
  v16 = v0[17];
  v17 = v0[15];
  v18 = v0[10];
  v19 = v0[8];
  v20 = v0[4];
  v21 = v0[2];
  v22 = swift_task_alloc();
  *(v22 + 16) = v21;
  *(v22 + 24) = v17;
  sub_22706D140(&qword_281399210, MEMORY[0x277D54560]);
  sub_22766AD80();

  v23 = v20[5];
  v24 = v20[6];
  __swift_project_boxed_opaque_existential_0(v20 + 2, v23);
  v25 = *(v24 + 24);
  v31 = (v25 + *v25);
  v26 = v25[1];
  v27 = swift_task_alloc();
  v0[19] = v27;
  *v27 = v0;
  v27[1] = sub_227067B80;
  v28 = v0[10];
  v29 = v0[7];

  return v31(v29, v28, v23, v24);
}

uint64_t sub_227067B80()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_227068088;
  }

  else
  {
    v3 = sub_227067C94;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227067C94()
{
  v44 = v0;
  v1 = v0[20];
  v2 = v0[7];
  sub_22766B1E0();
  v3 = type metadata accessor for SyncZoneChangeset();
  sub_22706D140(qword_28139A9B0, type metadata accessor for SyncZoneChangeset);
  v4 = sub_22766C300();
  if (v1)
  {
    v6 = v0[9];
    v5 = v0[10];
    v7 = v0[8];
    (*(v0[6] + 8))(v0[7], v0[5]);
    (*(v6 + 8))(v5, v7);
    v9 = v0[13];
    v8 = v0[14];
    v10 = v0[10];
    v11 = v0[7];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v4;
    v15 = v0[13];
    sub_22766A6B0();

    v16 = sub_22766B380();
    v17 = sub_22766C8B0();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[18];
    v38 = v0[12];
    v20 = v0[10];
    v39 = v0[11];
    v40 = v0[13];
    v21 = v0[8];
    v22 = v0[9];
    v23 = v0[6];
    v24 = v0[5];
    v41 = v24;
    v42 = v0[7];
    if (v18)
    {
      v37 = v0[10];
      v25 = swift_slowAlloc();
      v36 = v21;
      v26 = swift_slowAlloc();
      v43 = v26;
      *v25 = 134218242;
      *(v25 + 4) = *(v14 + 16);

      *(v25 + 12) = 2080;
      v27 = MEMORY[0x22AA98660](v14, v3);
      v35 = v19;
      v29 = sub_226E97AE8(v27, v28, &v43);

      *(v25 + 14) = v29;
      _os_log_impl(&dword_226E8E000, v16, v17, "Received %ld Changesets from server: %s", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AA9A450](v26, -1, -1);
      MEMORY[0x22AA9A450](v25, -1, -1);

      v35(v40, v39);
      (*(v23 + 8))(v42, v41);
      (*(v22 + 8))(v37, v36);
    }

    else
    {

      v19(v40, v39);
      (*(v23 + 8))(v42, v41);
      (*(v22 + 8))(v20, v21);
    }

    v31 = v0[13];
    v30 = v0[14];
    v32 = v0[10];
    v33 = v0[7];

    v34 = v0[1];

    return v34(v14);
  }
}

uint64_t sub_227067FF4()
{
  v1 = v0[15];

  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[10];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_227068088()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[20];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[10];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_22706812C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_227066408(a2);
  sub_22766B150();
  v4 = sub_227066830(a3);
  v5 = sub_22766B140();
  sub_227461614(v4);
  return v5(&v7, 0);
}

uint64_t sub_2270681C0(uint64_t a1, uint64_t a2)
{
  sub_2276694C0();
  sub_22766B120();
  v3 = type metadata accessor for SyncZoneChangeWindow();
  sub_226F5E0B4(*(a2 + *(v3 + 20)), *(a2 + *(v3 + 20) + 8));
  return sub_22766B110();
}

uint64_t sub_227068234(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22766B290();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_22766B210();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227068354, 0, 0);
}

uint64_t sub_227068354()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[3];
  v4 = v0[4];
  *(swift_task_alloc() + 16) = v3;
  sub_22706D140(&qword_281399208, MEMORY[0x277D54590]);
  sub_22766AD80();

  v5 = v4[5];
  v6 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v5);
  v7 = *(v6 + 32);
  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_227068514;
  v10 = v0[10];
  v11 = v0[7];

  return v13(v11, v10, v5, v6);
}

uint64_t sub_227068514()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_227068800;
  }

  else
  {
    v3 = sub_227068628;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227068628()
{
  v17 = v0;
  v1 = v0[12];
  v2 = v0[7];
  v3 = sub_22766B280();
  v4 = sub_227065F58(v3);

  if (v1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    v5 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v6 = v0[1];
  }

  else
  {
    if (*(v4 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98C0, &qword_227674D10);
      v8 = sub_22766D010();
    }

    else
    {
      v8 = MEMORY[0x277D84F98];
    }

    v16 = v8;
    sub_22706CA30(v4, 1, &v16);
    v10 = v0[9];
    v9 = v0[10];
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[5];
    v14 = v0[6];
    v15 = v0[2];
    sub_227664450();
    (*(v14 + 8))(v12, v13);
    (*(v10 + 8))(v9, v11);

    v6 = v0[1];
  }

  return v6();
}

uint64_t sub_227068800()
{
  v1 = v0[12];
  v2 = v0[7];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_227068890(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2276695E0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = sub_22766B0A0();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = sub_2276694E0();
  v2[13] = v10;
  v11 = *(v10 - 8);
  v2[14] = v11;
  v12 = *(v11 + 64) + 15;
  v2[15] = swift_task_alloc();
  v13 = sub_22766B2C0();
  v2[16] = v13;
  v14 = *(v13 - 8);
  v2[17] = v14;
  v15 = *(v14 + 64) + 15;
  v2[18] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8488, &qword_227670A60);
  v2[19] = v16;
  v17 = *(v16 - 8);
  v2[20] = v17;
  v18 = *(v17 + 64) + 15;
  v2[21] = swift_task_alloc();
  v19 = sub_22766B2E0();
  v2[22] = v19;
  v20 = *(v19 - 8);
  v2[23] = v20;
  v21 = *(v20 + 64) + 15;
  v2[24] = swift_task_alloc();
  v22 = sub_22766B270();
  v2[25] = v22;
  v23 = *(v22 - 8);
  v2[26] = v23;
  v24 = *(v23 + 64) + 15;
  v2[27] = swift_task_alloc();
  v25 = sub_22766B390();
  v2[28] = v25;
  v26 = *(v25 - 8);
  v2[29] = v26;
  v27 = *(v26 + 64) + 15;
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227068C30, 0, 0);
}

uint64_t sub_227068C30()
{
  if (*(v0[2] + 16))
  {
    v1 = swift_task_alloc();
    v0[31] = v1;
    *v1 = v0;
    v1[1] = sub_227068DB4;
    v2 = v0[3];

    return sub_22706BF3C();
  }

  else
  {
    v4 = v0[30];
    v5 = v0[27];
    v6 = v0[24];
    v7 = v0[21];
    v8 = v0[18];
    v9 = v0[15];
    v11 = v0[11];
    v10 = v0[12];
    v13 = v0[7];
    v12 = v0[8];
    v16 = v0[6];

    v14 = v0[1];
    v15 = MEMORY[0x277D84F90];

    return v14(v15);
  }
}

uint64_t sub_227068DB4()
{
  v2 = *(*v1 + 248);
  v3 = *v1;
  v3[32] = v0;

  if (v0)
  {
    v4 = v3[30];
    v5 = v3[27];
    v6 = v3[24];
    v7 = v3[21];
    v8 = v3[18];
    v9 = v3[15];
    v11 = v3[11];
    v10 = v3[12];
    v15 = v3[8];
    v16 = v3[7];
    v12 = v3[6];

    v13 = v3[1];

    return v13();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227068F94, 0, 0);
  }
}

uint64_t sub_227068F94()
{
  v43 = v0;
  v1 = v0[30];
  v2 = v0[2];
  sub_22766A6B0();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[28];
  if (v5)
  {
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v42 = v11;
    *v10 = 136315138;
    v12 = type metadata accessor for SyncSubmissionChangeset();
    v13 = MEMORY[0x22AA98660](v9, v12);
    v15 = sub_226E97AE8(v13, v14, &v42);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v3, v4, "Sending changesets to server: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  (*(v7 + 8))(v6, v8);
  v16 = v0[32];
  v17 = v0[27];
  v18 = v0[25];
  v19 = v0[2];
  *(swift_task_alloc() + 16) = v19;
  sub_22706D140(&qword_2813991F8, MEMORY[0x277D545B8]);
  sub_22766AD80();

  if (v16)
  {
    v20 = v0[30];
    v21 = v0[27];
    v22 = v0[24];
    v23 = v0[21];
    v24 = v0[18];
    v25 = v0[15];
    v27 = v0[11];
    v26 = v0[12];
    v28 = v0[8];
    v39 = v0[7];
    v40 = v0[6];

    v29 = v0[1];

    return v29();
  }

  else
  {
    v31 = v0[3];
    v32 = v31[5];
    v33 = v31[6];
    __swift_project_boxed_opaque_existential_0(v31 + 2, v32);
    v34 = *(v33 + 56);
    v41 = (v34 + *v34);
    v35 = v34[1];
    v36 = swift_task_alloc();
    v0[33] = v36;
    *v36 = v0;
    v36[1] = sub_227069340;
    v37 = v0[27];
    v38 = v0[24];

    return v41(v38, v37, v32, v33);
  }
}

uint64_t sub_227069340()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_227069C8C;
  }

  else
  {
    v3 = sub_227069454;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227069454()
{
  v1 = v0[24];
  v2 = sub_22766B2D0();
  v3 = *(v2 + 16);
  if (v3)
  {
    v103 = v0[19];
    v104 = v0[20];
    v4 = v0[17];
    v5 = v0[14];
    v6 = v0[10];
    v7 = v0[5];
    v122 = MEMORY[0x277D84F90];
    result = sub_226F1F070(0, v3, 0);
    v9 = 0;
    v108 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = v122;
    v107 = (v5 + 48);
    v101 = (v5 + 16);
    v102 = (v5 + 32);
    v112 = v7;
    v118 = (v7 + 8);
    v99 = (v5 + 8);
    v100 = (v6 + 8);
    v109 = v4;
    v110 = (v4 + 8);
    v105 = v3;
    v106 = v2;
    while (1)
    {
      if (v9 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      v12 = v0[12];
      v11 = v0[13];
      (*(v109 + 16))(v0[18], v108 + *(v109 + 72) * v9, v0[16]);
      sub_22766B2B0();
      sub_2276694B0();
      if ((*v107)(v12, 1, v11) == 1)
      {
        break;
      }

      v113 = v9;
      v114 = v10;
      v13 = v0[21];
      v14 = v0[18];
      v15 = v0[15];
      v16 = v0[13];
      v17 = v0[11];
      (*v102)(v15, v0[12], v16);
      (*v101)(v13, v15, v16);
      sub_22766B2A0();
      v18 = sub_22766B060();
      v19 = MEMORY[0x277D84F90];
      v123 = MEMORY[0x277D84F90];
      v20 = *(v18 + 16);
      if (v20)
      {
        sub_22706C980();
        v21 = v18 + ((*(v112 + 80) + 32) & ~*(v112 + 80));
        v22 = *(v112 + 72);
        v23 = *(v112 + 16);
        v24 = v19;
        do
        {
          v25 = v0[8];
          v26 = v0[6];
          v27 = v0[4];
          v23(v25, v21, v27);
          v23(v26, v25, v27);
          v28 = sub_22766CAE0();
          v29 = (*v118)(v25, v27);
          if (v28)
          {
            MEMORY[0x22AA985C0](v29);
            if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v30 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_22766C360();
            }

            sub_22766C3A0();
            v24 = v123;
          }

          v21 += v22;
          --v20;
        }

        while (v20);

        v19 = MEMORY[0x277D84F90];
      }

      else
      {

        v24 = v19;
      }

      v31 = v0[11];
      v32 = sub_226F3E740(v24);

      v33 = sub_22766B040();
      v124 = v19;
      v34 = *(v33 + 16);
      if (v34)
      {
        v111 = v32;
        sub_22706C980();
        v35 = v33 + ((*(v112 + 80) + 32) & ~*(v112 + 80));
        v36 = *(v112 + 72);
        v37 = *(v112 + 16);
        v38 = v19;
        do
        {
          v40 = v0[6];
          v39 = v0[7];
          v41 = v0[4];
          v37(v39, v35, v41);
          v37(v40, v39, v41);
          v42 = sub_22766CAE0();
          v43 = (*v118)(v39, v41);
          if (v42)
          {
            MEMORY[0x22AA985C0](v43);
            if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v44 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_22766C360();
            }

            sub_22766C3A0();
            v38 = v124;
          }

          v35 += v36;
          --v34;
        }

        while (v34);

        v32 = v111;
        v19 = v38;
      }

      else
      {
      }

      v116 = v0[18];
      v46 = v0[15];
      v45 = v0[16];
      v47 = v0[13];
      v48 = v0[11];
      v49 = v0[9];
      v50 = (v0[21] + *(v103 + 48));
      v51 = sub_226F3E740(v19);

      sub_22766B080();
      v53 = v52;
      (*v100)(v48, v49);
      (*v99)(v46, v47);
      (*v110)(v116, v45);
      *v50 = v32;
      v50[1] = v51;
      v50[2] = v53;
      v10 = v114;
      v55 = *(v114 + 16);
      v54 = *(v114 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_226F1F070(v54 > 1, v55 + 1, 1);
        v10 = v114;
      }

      v9 = v113 + 1;
      v56 = v0[21];
      *(v10 + 16) = v55 + 1;
      result = sub_226E95D18(v56, v10 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v55, &qword_27D7B8488, &qword_227670A60);
      v2 = v106;
      if (v113 + 1 == v105)
      {
        v83 = v0[26];
        v82 = v0[27];
        v85 = v0[24];
        v84 = v0[25];
        v86 = v0[22];
        v87 = v0[23];

        (*(v87 + 8))(v85, v86);
        (*(v83 + 8))(v82, v84);
        v115 = v10;
        goto LABEL_31;
      }
    }

    v63 = v0[26];
    v64 = v0[24];
    v117 = v0[25];
    v119 = v0[27];
    v66 = v0[22];
    v65 = v0[23];
    v67 = v0[18];
    v68 = v0[16];
    v69 = v0[12];

    sub_22706CF74(v69);
    sub_226F1893C();
    swift_allocError();
    *v70 = 9;
    swift_willThrow();
    (*v110)(v67, v68);
    (*(v65 + 8))(v64, v66);
    (*(v63 + 8))(v119, v117);

    v71 = v0[30];
    v72 = v0[27];
    v73 = v0[24];
    v74 = v0[21];
    v75 = v0[18];
    v76 = v0[15];
    v78 = v0[11];
    v77 = v0[12];
    v79 = v0[7];
    v80 = v0[8];
    v120 = v0[6];

    v81 = v0[1];

    return v81();
  }

  else
  {
    v58 = v0[26];
    v57 = v0[27];
    v60 = v0[24];
    v59 = v0[25];
    v61 = v0[22];
    v62 = v0[23];

    (*(v62 + 8))(v60, v61);
    (*(v58 + 8))(v57, v59);
    v115 = MEMORY[0x277D84F90];
LABEL_31:
    v88 = v0[30];
    v89 = v0[27];
    v90 = v0[24];
    v91 = v0[21];
    v92 = v0[18];
    v93 = v0[15];
    v95 = v0[11];
    v94 = v0[12];
    v97 = v0[7];
    v96 = v0[8];
    v121 = v0[6];

    v98 = v0[1];

    return v98(v115);
  }
}

uint64_t sub_227069C8C()
{
  (*(v0[26] + 8))(v0[27], v0[25]);
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[18];
  v6 = v0[15];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[7];
  v10 = v0[8];
  v13 = v0[6];
  v14 = v0[34];

  v11 = v0[1];

  return v11();
}

uint64_t sub_227069DA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for SyncSubmissionChangeset();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B250();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  if (!v16)
  {
    return sub_22766B260();
  }

  v25 = a1;
  v31 = MEMORY[0x277D84F90];
  sub_226F1FEE8(0, v16, 0);
  v30 = v31;
  v17 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v26 = *(v7 + 72);
  v27 = v12 + 32;
  while (1)
  {
    v29 = v16;
    v18 = sub_22706D188(v17, v10, type metadata accessor for SyncSubmissionChangeset);
    MEMORY[0x28223BE20](v18);
    *(&v25 - 2) = v10;
    sub_22706D140(&qword_281399200, MEMORY[0x277D545A8]);
    sub_22766AD80();
    if (v3)
    {
      break;
    }

    v28 = 0;
    v19 = v10;
    sub_22706D20C(v10, type metadata accessor for SyncSubmissionChangeset);
    v20 = v30;
    v31 = v30;
    v22 = *(v30 + 16);
    v21 = *(v30 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_226F1FEE8(v21 > 1, v22 + 1, 1);
      v20 = v31;
    }

    *(v20 + 16) = v22 + 1;
    v23 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v30 = v20;
    (*(v12 + 32))(v20 + v23 + *(v12 + 72) * v22, v15, v11);
    v17 += v26;
    v16 = v29 - 1;
    v10 = v19;
    v3 = v28;
    if (v29 == 1)
    {
      return sub_22766B260();
    }
  }

  sub_22706D20C(v10, type metadata accessor for SyncSubmissionChangeset);
}

uint64_t sub_22706A0E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22766B0A0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_22766AFD0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_2276694C0();
  sub_22766AFB0();
  sub_22706D140(&qword_281399228, MEMORY[0x277D54508]);
  sub_22766AD80();
  sub_22766B230();
  v8 = (a2 + *(type metadata accessor for SyncSubmissionChangeset() + 24));
  v10 = *v8;
  v11 = *(v8 + 2);
  sub_22706D140(&qword_281399220, MEMORY[0x277D54530]);
  result = sub_22766AD80();
  if (!v2)
  {
    return sub_22766B220();
  }

  return result;
}

uint64_t sub_22706A2EC(uint64_t a1, uint64_t a2)
{
  v2 = a2 + *(type metadata accessor for SyncSubmissionChangeset() + 20);
  v3 = type metadata accessor for SyncEncryptionKey();
  v4 = v2 + *(v3 + 28);
  sub_227662770();
  sub_22766AFB0();
  v5 = (v2 + *(v3 + 24));
  v7 = *v5;
  v6 = v5[1];

  return sub_22766AFC0();
}

uint64_t sub_22706A37C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(type metadata accessor for SyncEncryptionKey() - 8);
  v2[4] = v3;
  v4 = *(v3 + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = sub_2276695E0();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v8 = sub_22766B320();
  v2[10] = v8;
  v9 = *(v8 - 8);
  v2[11] = v9;
  v10 = *(v9 + 64) + 15;
  v2[12] = swift_task_alloc();
  v11 = sub_22766B300();
  v2[13] = v11;
  v12 = *(v11 - 8);
  v2[14] = v12;
  v13 = *(v12 + 64) + 15;
  v2[15] = swift_task_alloc();
  v14 = sub_22766B390();
  v2[16] = v14;
  v15 = *(v14 - 8);
  v2[17] = v15;
  v16 = *(v15 + 64) + 15;
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22706A5B4, 0, 0);
}

uint64_t sub_22706A5B4()
{
  if (*(v0[2] + 16))
  {
    v1 = swift_task_alloc();
    v0[19] = v1;
    *v1 = v0;
    v1[1] = sub_22706A6E4;
    v2 = v0[3];

    return sub_22706BF3C();
  }

  else
  {
    v4 = v0[18];
    v5 = v0[15];
    v6 = v0[12];
    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[5];

    v10 = v0[1];
    v11 = MEMORY[0x277D84FA0];

    return v10(v11);
  }
}

uint64_t sub_22706A6E4()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {
    v4 = v3[18];
    v5 = v3[15];
    v6 = v3[12];
    v8 = v3[8];
    v7 = v3[9];
    v9 = v3[5];

    v10 = v3[1];

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22706A870, 0, 0);
  }
}

uint64_t sub_22706A870()
{
  v37 = v0;
  v1 = v0[18];
  v2 = v0[2];
  sub_22766A6B0();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];
  if (v5)
  {
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v36 = v11;
    *v10 = 136315138;
    sub_2276694E0();
    sub_22706D140(&qword_2813A54D0, MEMORY[0x277D53DA0]);
    v12 = sub_22766C610();
    v14 = sub_226E97AE8(v12, v13, &v36);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v3, v4, "Updating Encryption Keys for %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  (*(v7 + 8))(v6, v8);
  v15 = v0[20];
  v16 = v0[15];
  v17 = v0[13];
  v18 = v0[2];
  *(swift_task_alloc() + 16) = v18;
  sub_22706D140(&qword_2813991F0, MEMORY[0x277D545D0]);
  sub_22766AD80();

  if (v15)
  {
    v19 = v0[18];
    v20 = v0[15];
    v21 = v0[12];
    v23 = v0[8];
    v22 = v0[9];
    v24 = v0[5];

    v25 = v0[1];

    return v25();
  }

  else
  {
    v27 = v0[3];
    v28 = v27[5];
    v29 = v27[6];
    __swift_project_boxed_opaque_existential_0(v27 + 2, v28);
    v30 = *(v29 + 64);
    v35 = (v30 + *v30);
    v31 = v30[1];
    v32 = swift_task_alloc();
    v0[21] = v32;
    *v32 = v0;
    v32[1] = sub_22706AC1C;
    v33 = v0[15];
    v34 = v0[12];

    return v35(v34, v33, v28, v29);
  }
}

uint64_t sub_22706AC1C()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_22706B240;
  }

  else
  {
    v3 = sub_22706AD30;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22706AD30()
{
  v4 = *(v2 + 96);
  v5 = sub_22766B310();
  v6 = MEMORY[0x277D84F90];
  v62 = MEMORY[0x277D84F90];
  v57 = v5;
  v7 = *(v5 + 16);
  if (!v7)
  {

    v17 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_9;
    }

LABEL_14:
    v18 = sub_22766CD20();
    if (v18)
    {
      goto LABEL_10;
    }

LABEL_15:

    goto LABEL_25;
  }

  v8 = *(v2 + 56);
  v9 = sub_22706C980();
  v10 = *(v8 + 16);
  v1 = v8 + 16;
  v60 = v10;
  v61 = v9;
  v11 = v57 + ((*(v1 + 64) + 32) & ~*(v1 + 64));
  v59 = *(v1 + 56);
  v58 = MEMORY[0x277D84F90];
  do
  {
    v12 = *(v2 + 64);
    v13 = *(v2 + 72);
    v0 = v2;
    v3 = *(v2 + 48);
    (v60)(v13, v11, v3);
    (v60)(v12, v13, v3);
    v14 = sub_22766CAE0();
    v15 = (*(v1 - 8))(v13, v3);
    if (v14)
    {
      MEMORY[0x22AA985C0](v15);
      if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
      v58 = v62;
    }

    v11 += v59;
    --v7;
  }

  while (v7);

  v17 = v58;
  v6 = MEMORY[0x277D84F90];
  if (v58 >> 62)
  {
    goto LABEL_14;
  }

LABEL_9:
  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_15;
  }

LABEL_10:
  v63 = v6;
  sub_226F1EF70(0, v18 & ~(v18 >> 63), 0);
  if (v18 < 0)
  {
    goto LABEL_40;
  }

  v3 = *(v2 + 32);
  v1 = *(v2 + 176);
  v60 = v17 & 0xFFFFFFFFFFFFFF8;
  v61 = v17 & 0xC000000000000001;
  if ((v17 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x22AA991A0](0, v17);
  }

  else
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_39;
    }

    v20 = *(v17 + 32);
  }

  sub_2273C12F4(v20, *(v2 + 40));
  if (v1)
  {
    v22 = *(v2 + 112);
    v21 = *(v2 + 120);
    v24 = *(v2 + 96);
    v23 = *(v2 + 104);
    v26 = *(v2 + 80);
    v25 = *(v2 + 88);

    (*(v25 + 8))(v24, v26);
    (*(v22 + 8))(v21, v23);

    v27 = *(v2 + 144);
    v28 = *(v2 + 120);
    v29 = *(v2 + 96);
    v31 = *(v2 + 64);
    v30 = *(v2 + 72);
    v32 = *(v2 + 40);

    v33 = *(v2 + 8);

    return v33();
  }

  v0 = *(v6 + 16);
  v19 = *(v6 + 24);
  v1 = v0 + 1;
  if (v0 >= v19 >> 1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v35 = v2;
    v36 = *(v2 + 40);
    *(v6 + 16) = v1;
    v37 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v3 = *(v3 + 72);
    sub_22706C9CC(v36, v6 + v37 + v3 * v0);
    if (v18 == 1)
    {
      break;
    }

    v0 = 5;
    while (1)
    {
      v2 = v0 - 3;
      if (__OFADD__(v0 - 4, 1))
      {
        break;
      }

      if (v61)
      {
        v52 = MEMORY[0x22AA991A0]();
      }

      else
      {
        v19 = *(v60 + 16);
        if (v0 - 4 >= v19)
        {
          goto LABEL_39;
        }

        v52 = *(v17 + 8 * v0);
      }

      sub_2273C12F4(v52, *(v35 + 40));
      v53 = v17;
      v63 = v6;
      v55 = *(v6 + 16);
      v54 = *(v6 + 24);
      v1 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        sub_226F1EF70(v54 > 1, v55 + 1, 1);
      }

      v56 = *(v35 + 40);
      *(v6 + 16) = v1;
      sub_22706C9CC(v56, v6 + v37 + v3 * v55);
      ++v0;
      v17 = v53;
      if (v2 == v18)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    sub_226F1EF70(v19 > 1, v1, 1);
    v6 = v63;
  }

LABEL_24:

  v2 = v35;
LABEL_25:
  v39 = *(v2 + 112);
  v38 = *(v2 + 120);
  v41 = *(v2 + 96);
  v40 = *(v2 + 104);
  v42 = *(v2 + 80);
  v43 = *(v2 + 88);
  v44 = sub_226F3DDAC(v6);

  (*(v43 + 8))(v41, v42);
  (*(v39 + 8))(v38, v40);
  v45 = *(v2 + 144);
  v46 = *(v2 + 120);
  v47 = *(v2 + 96);
  v49 = *(v2 + 64);
  v48 = *(v2 + 72);
  v50 = *(v2 + 40);

  v51 = *(v2 + 8);

  return v51(v44);
}

uint64_t sub_22706B240()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t sub_22706B304(uint64_t a1, uint64_t a2)
{
  result = sub_227066F9C(a2);
  if (!v2)
  {
    return sub_22766B2F0();
  }

  return result;
}

uint64_t sub_22706B33C()
{
  v1[25] = v0;
  v2 = sub_227662750();
  v1[26] = v2;
  v3 = *(v2 - 8);
  v1[27] = v3;
  v4 = *(v3 + 64) + 15;
  v1[28] = swift_task_alloc();
  v5 = sub_227667900();
  v1[29] = v5;
  v6 = *(v5 - 8);
  v1[30] = v6;
  v7 = *(v6 + 64) + 15;
  v1[31] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v1[32] = v8;
  v9 = *(v8 - 8);
  v1[33] = v9;
  v10 = *(v9 + 64) + 15;
  v1[34] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v1[35] = v11;
  v12 = *(v11 - 8);
  v1[36] = v12;
  v13 = *(v12 + 64) + 15;
  v1[37] = swift_task_alloc();
  v14 = sub_227665AD0();
  v1[38] = v14;
  v15 = *(v14 - 8);
  v1[39] = v15;
  v16 = *(v15 + 64) + 15;
  v1[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22706B584, 0, 0);
}

uint64_t sub_22706B584()
{
  v1 = *__swift_project_boxed_opaque_existential_0((*(v0 + 200) + 56), *(*(v0 + 200) + 80));
  v2 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v1 + v2, v0 + 56);
  v3 = *(v0 + 296);
  if (*(v0 + 80))
  {
    sub_226E92AB8((v0 + 56), v0 + 96);
    sub_226E91B50(v0 + 96, v0 + 136);
    v4 = swift_allocObject();
    sub_226E92AB8((v0 + 136), v4 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
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

  v7 = *(v0 + 296);
  v8 = swift_task_alloc();
  *(v0 + 328) = v8;
  *(v8 + 16) = "SeymourServices/SyncServer.swift";
  *(v8 + 24) = 32;
  *(v8 + 32) = 2;
  *(v8 + 40) = 151;
  *(v8 + 48) = v7;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  *(v0 + 336) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
  *v10 = v0;
  v10[1] = sub_22706B7F0;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2270637E4, v8, v11);
}

uint64_t sub_22706B7F0()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  v2[43] = v0;

  v5 = v2[41];
  if (v0)
  {

    v6 = sub_22706BC24;
  }

  else
  {
    v8 = v2[36];
    v7 = v2[37];
    v9 = v2[35];

    (*(v8 + 8))(v7, v9);
    v6 = sub_22706B948;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22706B948()
{
  v1 = v0[34];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v5);
  sub_2276678E0();
  (*(v6 + 8))(v2, v5, v6);
  (*(v3 + 8))(v2, v4);
  v7 = swift_task_alloc();
  v0[44] = v7;
  *(v7 + 16) = "SeymourServices/SyncServer.swift";
  *(v7 + 24) = 32;
  *(v7 + 32) = 2;
  *(v7 + 40) = 153;
  *(v7 + 48) = v1;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  v0[45] = v9;
  *v9 = v0;
  v9[1] = sub_22706BAD0;
  v10 = v0[40];
  v11 = v0[38];

  return MEMORY[0x2822008A0](v10, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2270637FC, v7, v11);
}

uint64_t sub_22706BAD0()
{
  v2 = *v1;
  v3 = (*v1)[45];
  v10 = *v1;
  (*v1)[46] = v0;

  v4 = v2[44];
  if (v0)
  {

    v5 = sub_22706BE78;
  }

  else
  {
    v7 = v2[33];
    v6 = v2[34];
    v8 = v2[32];

    (*(v7 + 8))(v6, v8);
    __swift_destroy_boxed_opaque_existential_0(v2 + 2);
    v5 = sub_22706BCE0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22706BC24()
{
  (*(v0[36] + 8))(v0[37], v0[35]);
  v1 = v0[43];
  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[34];
  v5 = v0[31];
  v6 = v0[28];

  v7 = v0[1];

  return v7();
}

uint64_t sub_22706BCE0()
{
  v1 = v0[40];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  sub_227662740();
  v5 = sub_227665AA0();
  (*(v3 + 8))(v2, v4);
  v7 = v0[39];
  v6 = v0[40];
  v8 = v0[38];
  if (v5)
  {
    v9 = v0[37];
    v10 = v0[34];
    v11 = v0[31];
    v12 = v0[28];
    (*(v7 + 8))(v0[40], v0[38]);
  }

  else
  {
    sub_226F1893C();
    swift_allocError();
    *v14 = 15;
    swift_willThrow();
    (*(v7 + 8))(v6, v8);
    v15 = v0[40];
    v16 = v0[37];
    v17 = v0[34];
    v18 = v0[31];
    v19 = v0[28];
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_22706BE78()
{
  (*(v0[33] + 8))(v0[34], v0[32]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[46];
  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[34];
  v5 = v0[31];
  v6 = v0[28];

  v7 = v0[1];

  return v7();
}

uint64_t sub_22706BF3C()
{
  v1[3] = v0;
  v2 = sub_22766B390();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = sub_22766A8A0();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22706C064, 0, 0);
}

uint64_t sub_22706C064()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = *(v0[3] + 136);
  v5 = sub_2276693C0();
  (*(v2 + 104))(v1, *MEMORY[0x277D4F988], v3);
  v6 = sub_226EC9A38(v1, v5);

  (*(v2 + 8))(v1, v3);
  if (v6)
  {
    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_22706C208;
    v8 = v0[3];

    return sub_22706B33C();
  }

  else
  {
    v10 = v0[3];
    v11 = v10[15];
    v12 = v10[16];
    __swift_project_boxed_opaque_existential_0(v10 + 12, v11);
    v13 = *(MEMORY[0x277D4FAC0] + 4);
    v14 = swift_task_alloc();
    v0[13] = v14;
    *v14 = v0;
    v14[1] = sub_22706C3D4;

    return MEMORY[0x2821AFC28](v11, v12);
  }
}

uint64_t sub_22706C208()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_22706C700;
  }

  else
  {
    v3 = sub_22706C31C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22706C31C()
{
  v1 = *(v0 + 24);
  v2 = v1[15];
  v3 = v1[16];
  __swift_project_boxed_opaque_existential_0(v1 + 12, v2);
  v4 = *(MEMORY[0x277D4FAC0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_22706C3D4;

  return MEMORY[0x2821AFC28](v2, v3);
}

uint64_t sub_22706C3D4(uint64_t a1)
{
  v3 = *(*v2 + 104);
  v4 = *v2;
  v4[14] = a1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[6];
    v7 = v4[7];

    v8 = v4[1];

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22706C530, 0, 0);
  }
}

uint64_t sub_22706C530()
{
  v1 = *(v0 + 112);
  v2 = *MEMORY[0x277CB8990];
  v3 = [v1 isProvisionedForDataclass_];
  v4 = [v1 isEnabledForDataclass_];
  if (!v3 || (v4 & 1) != 0)
  {
    v18 = *(v0 + 80);
    v20 = *(v0 + 48);
    v19 = *(v0 + 56);

    v17 = *(v0 + 8);
  }

  else
  {
    v5 = *(v0 + 56);
    sub_22766A6B0();
    v6 = sub_22766B380();
    v7 = sub_22766C8B0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_226E8E000, v6, v7, "Not Syncing: Not Enabled.", v8, 2u);
      MEMORY[0x22AA9A450](v8, -1, -1);
    }

    v9 = *(v0 + 112);
    v10 = *(v0 + 56);
    v11 = *(v0 + 32);
    v12 = *(v0 + 40);

    (*(v12 + 8))(v10, v11);
    sub_226F1893C();
    swift_allocError();
    *v13 = 15;
    swift_willThrow();

    v14 = *(v0 + 80);
    v16 = *(v0 + 48);
    v15 = *(v0 + 56);

    v17 = *(v0 + 8);
  }

  return v17();
}

uint64_t sub_22706C700()
{
  v27 = v0;
  v1 = v0[12];
  v2 = v0[6];
  sub_22766A6B0();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[12];
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136446210;
    v0[2] = v6;
    v12 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v13 = sub_22766C060();
    v15 = sub_226E97AE8(v13, v14, &v26);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v4, v5, "Not Syncing: No Subscription: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v17 = v0[5];
    v16 = v0[6];
    v18 = v0[4];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[12];
  swift_willThrow();
  v20 = v0[12];
  v21 = v0[10];
  v23 = v0[6];
  v22 = v0[7];

  v24 = v0[1];

  return v24();
}

uint64_t sub_22706C8F8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return swift_deallocClassInstance();
}

unint64_t sub_22706C980()
{
  result = qword_281398A20;
  if (!qword_281398A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281398A20);
  }

  return result;
}

uint64_t sub_22706C9CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncEncryptionKey();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22706CA30(uint64_t a1, char a2, void *a3)
{
  v7 = sub_2276694E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F98, &unk_227677050);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v17 = v56 - v16;
  v61 = *(a1 + 16);
  if (!v61)
  {
    goto LABEL_22;
  }

  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v60 = *(v15 + 72);
  v62 = a1;
  v56[0] = v19;
  v56[1] = v3;
  sub_22706D074(a1 + v19, v56 - v16);
  v57 = v8;
  v63 = *(v8 + 32);
  v64 = v7;
  v63(v11, v17, v7);
  v59 = v18;
  v20 = *&v17[v18];
  v21 = *a3;
  v22 = sub_226F39E30(v11);
  v24 = v21[2];
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v23;
  if (v21[3] < v27)
  {
    sub_226FE16B0(v27, a2 & 1);
    v29 = *a3;
    v22 = sub_226F39E30(v11);
    if ((v28 & 1) != (v30 & 1))
    {
LABEL_5:
      sub_22766D220();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v33 = v22;
  sub_226FEFEFC();
  v22 = v33;
  if (v28)
  {
LABEL_9:
    v31 = swift_allocError();
    swift_willThrow();

    v67 = v31;
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v57 + 8))(v11, v64);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v34 = *a3;
  *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
  v35 = v34[6];
  v58 = *(v57 + 72);
  v36 = v22;
  v63((v35 + v58 * v22), v11, v64);
  *(v34[7] + 8 * v36) = v20;
  v37 = v34[2];
  v26 = __OFADD__(v37, 1);
  v38 = v37 + 1;
  if (!v26)
  {
    v34[2] = v38;
    v39 = v62;
    if (v61 == 1)
    {
LABEL_22:

      return;
    }

    v40 = v62 + v60 + v56[0];
    v41 = 1;
    while (v41 < *(v39 + 16))
    {
      sub_22706D074(v40, v17);
      v63(v11, v17, v64);
      v42 = *&v17[v59];
      v43 = *a3;
      v44 = sub_226F39E30(v11);
      v46 = v43[2];
      v47 = (v45 & 1) == 0;
      v26 = __OFADD__(v46, v47);
      v48 = v46 + v47;
      if (v26)
      {
        goto LABEL_23;
      }

      v49 = v45;
      if (v43[3] < v48)
      {
        sub_226FE16B0(v48, 1);
        v50 = *a3;
        v44 = sub_226F39E30(v11);
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v49)
      {
        goto LABEL_9;
      }

      v52 = *a3;
      *(*a3 + 8 * (v44 >> 6) + 64) |= 1 << v44;
      v53 = v44;
      v63((v52[6] + v58 * v44), v11, v64);
      *(v52[7] + 8 * v53) = v42;
      v54 = v52[2];
      v26 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v26)
      {
        goto LABEL_24;
      }

      ++v41;
      v52[2] = v55;
      v40 += v60;
      v39 = v62;
      if (v61 == v41)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

uint64_t sub_22706CF74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22706D074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F98, &unk_227677050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22706D100()
{
  v1 = *(v0 + 16);
  sub_2276694C0();
  return sub_22766B120();
}

uint64_t sub_22706D140(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22706D188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22706D20C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ServerConnectionType()
{
  result = qword_2813A0AC8;
  if (!qword_2813A0AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22706D2E0()
{
  v0 = sub_2276624A0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_22706D33C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = sub_22766C0C0();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    if (v9 == 0x6C61636F6CLL && v10 == 0xE500000000000000 || (sub_22766D190() & 1) != 0)
    {

      v13 = sub_2276624A0();
      (*(*(v13 - 8) + 56))(a1, 1, 2, v13);
    }

    else
    {
      if ((v11 != 0x65746F6D6572 || v12 != 0xE600000000000000) && (sub_22766D190() & 1) == 0)
      {
        sub_227662470();

        sub_22706D914(v8, v6);
        v22 = sub_2276624A0();
        v23 = *(v22 - 8);
        if ((*(v23 + 48))(v6, 1, v22) == 1)
        {
          v24 = type metadata accessor for ServerConnectionType();
          return (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
        }

        else
        {
          (*(v23 + 32))(a1, v6, v22);
          (*(v23 + 56))(a1, 0, 2, v22);
          v25 = type metadata accessor for ServerConnectionType();
          return (*(*(v25 - 8) + 56))(a1, 0, 1, v25);
        }
      }

      v21 = sub_2276624A0();
      (*(*(v21 - 8) + 56))(a1, 2, 2, v21);
    }

    v14 = type metadata accessor for ServerConnectionType();
    v15 = *(*(v14 - 8) + 56);
    v16 = v14;
    v17 = a1;
    v18 = 0;
  }

  else
  {
    v19 = type metadata accessor for ServerConnectionType();
    v15 = *(*(v19 - 8) + 56);
    v16 = v19;
    v17 = a1;
    v18 = 1;
  }

  return v15(v17, v18, 1, v16);
}

uint64_t sub_22706D6C8()
{
  v1 = v0;
  v2 = sub_2276624A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ServerConnectionType();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22706D8B0(v1, v10);
  if ((*(v3 + 48))(v10, 2, v2))
  {
    return sub_22766C0D0();
  }

  (*(v3 + 32))(v6, v10, v2);
  sub_227662390();
  sub_22766C0D0();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22706D8B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerConnectionType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22706D914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22706D984(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276624A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ServerConnectionType();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9FA0, &qword_2276770D8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_22706D8B0(a1, &v24 - v16);
  sub_22706D8B0(a2, &v17[v18]);
  v19 = *(v5 + 48);
  v20 = v19(v17, 2, v4);
  if (!v20)
  {
    sub_22706D8B0(v17, v12);
    if (!v19(&v17[v18], 2, v4))
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v21 = sub_227662420();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_22706DC8C(v17);
      return v21 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_9;
  }

  if (v20 == 1)
  {
    if (v19(&v17[v18], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v19(&v17[v18], 2, v4) != 2)
  {
LABEL_9:
    sub_22706DC24(v17);
    v21 = 0;
    return v21 & 1;
  }

  sub_22706DC8C(v17);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_22706DC24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9FA0, &qword_2276770D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}