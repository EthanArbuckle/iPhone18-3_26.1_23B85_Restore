uint64_t sub_21DDD4660()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A80, &qword_21DDF3030) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_21DDF27CC();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v2 | 7);
}

uint64_t sub_21DDD47B8()
{
  v1 = sub_21DDF1F6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_21DDF222C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v14 = *(v0 + v11 + 8);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_21DDD4968()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21DDD49B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21DDD49F8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21DDD4A38()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21DDD4AA0()
{
  v1 = sub_21DDF1E3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_21DDD4B7C()
{
  v1 = sub_21DDF1F6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_21DDF222C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v11 + 8);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_21DDD4CE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A90, &qword_21DDF2F00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21DDD4D90()
{
  v24 = sub_21DDF1E3C();
  v1 = *(v24 - 8);
  v2 = *(v1 + 80);
  v22 = (v2 + 24) & ~v2;
  v20 = (*(v1 + 64) + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = sub_21DDF184C();
  v3 = *(v23 - 8);
  v4 = *(v3 + 80);
  v18 = (v20 + v4 + 16) & ~v4;
  v5 = *(v3 + 64);
  v21 = sub_21DDF1F6C();
  v6 = *(v21 - 8);
  v7 = *(v6 + 80);
  v8 = (v18 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v19 = sub_21DDF222C();
  v10 = *(v19 - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v17 = *(v10 + 64);
  v13 = v2 | v4 | v7 | v11;
  v14 = *(v0 + 16);

  (*(v1 + 8))(v0 + v22, v24);
  v15 = *(v0 + v20 + 8);

  (*(v3 + 8))(v0 + v18, v23);
  (*(v6 + 8))(v0 + v8, v21);
  (*(v10 + 8))(v0 + v12, v19);

  return MEMORY[0x2821FE8E8](v0, v12 + v17, v13 | 7);
}

uint64_t sub_21DDD5030()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t VisualActionPredictionService.prewarm()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_21DDD50C4, 0, 0);
}

uint64_t sub_21DDD50C4()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_21DDD51B8;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_21DDD51B8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_21DDD52D4;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_21DDDA378;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21DDD52D4()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_21DDD5338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AE8, &qword_21DDF2F68);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  (*(a4 + 8))(0, sub_21DDDA37C, v13, a3, a4);
}

uint64_t VisualActionPredictionService.predictActions(for:with:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v8 = sub_21DDF1F6C();
  v7[13] = v8;
  v9 = *(v8 - 8);
  v7[14] = v9;
  v10 = *(v9 + 64) + 15;
  v7[15] = swift_task_alloc();
  v11 = sub_21DDF1E3C();
  v7[16] = v11;
  v12 = *(v11 - 8);
  v7[17] = v12;
  v13 = *(v12 + 64) + 15;
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v14 = sub_21DDF26DC();
  v7[21] = v14;
  v15 = *(v14 - 8);
  v7[22] = v15;
  v16 = *(v15 + 64) + 15;
  v7[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DDD5654, 0, 0);
}

uint64_t sub_21DDD5654()
{
  v1 = v0[23];
  sub_21DDF26BC();
  v2 = sub_21DDF26CC();
  v3 = sub_21DDF27FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21DDD3000, v2, v3, "VisualActionPredictionClient.predictActions(for:with:options:) is soft deprecated. Use predictActions(for:options:) instead, the 'eligibleCustomActionIdentities' parameter is migrated to the 'builtInActionIdentities' property of the 'visualContext' parameter.", v4, 2u);
    MEMORY[0x223D49D80](v4, -1, -1);
  }

  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  v8 = v0[8];

  (*(v6 + 8))(v5, v7);
  v49 = *(v8 + 16);
  if (v49)
  {
    v9 = v0[17];
    v10 = v0[7];
    v11 = v0[8];
    v12 = sub_21DDF1F2C();
    v13 = sub_21DDD98EC(v12);

    v14 = 0;
    v15 = *(v9 + 16);
    v9 += 16;
    v47 = (*(v9 + 64) + 32) & ~*(v9 + 64);
    v48 = v11 + v47;
    v16 = *(v9 + 56);
    v53 = v13 + 56;
    v54 = v15;
    v17 = (v9 - 8);
    v18 = MEMORY[0x277D84F90];
    v50 = (v9 + 16);
    do
    {
      v51 = v18;
      v52 = v14;
      v54(v0[20], v48 + v14 * v16, v0[16]);
      if (*(v13 + 16) && (v19 = v0[20], v20 = v0[16], v21 = *(v13 + 40), sub_21DDD9A74(&qword_27CE90A70), v22 = sub_21DDF272C(), v23 = -1 << *(v13 + 32), v24 = v22 & ~v23, ((*(v53 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
      {
        v25 = ~v23;
        while (1)
        {
          v26 = v0[19];
          v27 = v0[16];
          v54(v26, *(v13 + 48) + v24 * v16, v27);
          sub_21DDD9A74(&qword_27CE90A78);
          v28 = sub_21DDF273C();
          v29 = *v17;
          (*v17)(v26, v27);
          if (v28)
          {
            break;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v53 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v29(v0[20], v0[16]);
        v18 = v51;
      }

      else
      {
LABEL_12:
        v30 = *v50;
        (*v50)(v0[18], v0[20], v0[16]);
        v18 = v51;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21DDD880C(0, *(v51 + 16) + 1, 1);
          v18 = v51;
        }

        v32 = *(v18 + 16);
        v31 = *(v18 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_21DDD880C(v31 > 1, v32 + 1, 1);
          v18 = v51;
        }

        v33 = v0[18];
        v34 = v0[16];
        *(v18 + 16) = v32 + 1;
        v30(v18 + v47 + v32 * v16, v33, v34);
      }

      v14 = v52 + 1;
    }

    while (v52 + 1 != v49);

    if (*(v18 + 16))
    {
      (*(v0[14] + 16))(v0[15], v0[7], v0[13]);
      v35 = sub_21DDF1F1C();
      sub_21DDD63A0(v18);
      v35(v0 + 2, 0);
      v36 = swift_task_alloc();
      v0[24] = v36;
      *v36 = v0;
      v36[1] = sub_21DDD5B30;
      v37 = v0[15];
      v38 = v0[11];
      v39 = v0[12];
      v40 = v0[9];
      v41 = v0[10];
      goto LABEL_22;
    }

    v42 = swift_task_alloc();
    v0[26] = v42;
    *v42 = v0;
    v43 = sub_21DDD5CF4;
  }

  else
  {
    v42 = swift_task_alloc();
    v0[27] = v42;
    *v42 = v0;
    v43 = sub_21DDD5E84;
  }

  v42[1] = v43;
  v38 = v0[11];
  v44 = v0[12];
  v40 = v0[9];
  v41 = v0[10];
  v37 = v0[7];
LABEL_22:
  v45 = v0[6];

  return VisualActionPredictionService.predictActions(for:options:)(v45, v37, v40, v41, v38);
}

uint64_t sub_21DDD5B30()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_21DDD6014;
  }

  else
  {
    v3 = sub_21DDD5C44;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21DDD5C44()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[18];
  v5 = v0[15];

  v6 = v0[1];

  return v6();
}

uint64_t sub_21DDD5CF4()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v10 = *v0;

  v3 = v1[23];
  v4 = v1[20];
  v5 = v1[19];
  v6 = v1[18];
  v7 = v1[15];

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_21DDD5E84()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v10 = *v0;

  v3 = v1[23];
  v4 = v1[20];
  v5 = v1[19];
  v6 = v1[18];
  v7 = v1[15];

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_21DDD6014()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  v1 = v0[25];
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = v0[15];

  v7 = v0[1];

  return v7();
}

uint64_t VisualActionPredictionService.predictActions(for:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_21DDD60F4, 0, 0);
}

uint64_t sub_21DDD60F4()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = sub_21DDF1F7C();
  *v5 = v0;
  v5[1] = sub_21DDD6200;
  v7 = *(v0 + 16);

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD00000000000001CLL, 0x800000021DDF3B30, sub_21DDD9AB8, v2, v6);
}

uint64_t sub_21DDD6200()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21DDD633C, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_21DDD633C()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_21DDD63A0(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_21DDDB20C(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_21DDF1E3C();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21DDD64CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B00, &unk_21DDF2F80);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v18 - v13;
  (*(v11 + 16))(&v18 - v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  (*(a6 + 16))(a3, a4, 0, sub_21DDDA264, v16, v19, a6);
}

uint64_t sub_21DDD6654(uint64_t a1)
{
  v2 = sub_21DDF1F7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B08, &qword_21DDF31E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = (v11 - v8);
  sub_21DDDA28C(a1, v11 - v8, &qword_27CE90B08, &qword_21DDF31E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11[1] = *v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B00, &unk_21DDF2F80);
    return sub_21DDF279C();
  }

  else
  {
    (*(v3 + 32))(v6, v9, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B00, &unk_21DDF2F80);
    return sub_21DDF27AC();
  }
}

uint64_t VisualActionPredictionService.executeAction(_:for:with:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_21DDD6830, 0, 0);
}

uint64_t sub_21DDD6830()
{
  v1 = *(v0 + 72);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  *(v2 + 16) = *(v0 + 56);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  *(v2 + 56) = v4;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = sub_21DDF240C();
  *v6 = v0;
  v6[1] = sub_21DDD6944;
  v8 = *(v0 + 16);

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000022, 0x800000021DDF3B50, sub_21DDD9AC8, v2, v7);
}

uint64_t sub_21DDD6944()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21DDD6A80, 0, 0);
  }

  else
  {
    v4 = v3[10];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_21DDD6A80()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_21DDD6AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a2;
  v24 = a7;
  v22 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AF0, &unk_21DDF2F70);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  (*(v14 + 16))(&v21 - v16, a1, v13);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = swift_allocObject();
  (*(v14 + 32))(v19 + v18, v17, v13);
  (*(a8 + 24))(a3, a4, a5, v22, 0, sub_21DDDA1B4, v19, v24, a8);
}

uint64_t sub_21DDD6C7C(uint64_t a1)
{
  v2 = sub_21DDF240C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AF8, &qword_21DDF31D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v12 - v9);
  sub_21DDDA28C(a1, v12 - v9, &qword_27CE90AF8, &qword_21DDF31D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12[1] = *v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AF0, &unk_21DDF2F70);
    return sub_21DDF279C();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AF0, &unk_21DDF2F70);
    return sub_21DDF27AC();
  }
}

uint64_t VisualActionPredictionService.sendFeedback(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21DDD6E50, 0, 0);
}

uint64_t sub_21DDD6E50()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_21DDD6F50;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000010, 0x800000021DDF3B80, sub_21DDD9ADC, v3, v6);
}

uint64_t sub_21DDD6F50()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_21DDD7084;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_21DDD706C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21DDD7084()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_21DDD70E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AE8, &qword_21DDF2F68);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  (*(a5 + 32))(a3, 0, sub_21DDDA130, v15, a4, a5);
}

uint64_t sub_21DDD7264(uint64_t a1, char a2)
{
  if (a2)
  {
    MEMORY[0x223D49C80]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AE8, &qword_21DDF2F68);
    return sub_21DDF279C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AE8, &qword_21DDF2F68);
    return sub_21DDF27AC();
  }
}

uint64_t VisualActionPredictionService.registerAsyncCustomActionHandler(for:at:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A80, &qword_21DDF3030);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v15 = &v22 - v14;
  sub_21DDDA28C(a2, &v22 - v14, &qword_27CE90A80, &qword_21DDF3030);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_21DDD9B30(v15, v18 + v16);
  v19 = (v18 + v17);
  *v19 = a3;
  v19[1] = a4;
  v20 = *(a6 + 40);

  v20(a1, 0, sub_21DDD9BA0, v18, v22, a6);
}

uint64_t sub_21DDD745C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a6;
  v33 = a7;
  v29 = a5;
  v30 = a1;
  v34 = a3;
  v35 = a4;
  v31 = a2;
  v7 = sub_21DDF222C();
  v27 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v28 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DDF1F6C();
  v26 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A80, &qword_21DDF3030);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v26 - v16;
  sub_21DDDA28C(v29, &v26 - v16, &qword_27CE90A80, &qword_21DDF3030);
  (*(v11 + 16))(v13, v30, v10);
  v18 = v28;
  (*(v8 + 16))(v28, v31, v7);
  v19 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v20 = (v12 + *(v8 + 80) + v19) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v22 = v33;
  *(v21 + 4) = v32;
  *(v21 + 5) = v22;
  (*(v11 + 32))(&v21[v19], v13, v26);
  (*(v8 + 32))(&v21[v20], v18, v27);
  v23 = &v21[(v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8];
  v24 = v35;
  *v23 = v34;
  *(v23 + 1) = v24;

  sub_21DDDDB64(0, 0, v17, &unk_21DDF2F60, v21);
}

uint64_t sub_21DDD7728(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v16;
  v14 = (a4 + *a4);
  v11 = a4[1];
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_21DDD7838;

  return v14(a6, a7);
}

uint64_t sub_21DDD7838()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_21DDD79B8;
  }

  else
  {
    v3 = sub_21DDD794C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21DDD794C()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(0, 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21DDD79B8()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  MEMORY[0x223D49C80](v1);
  v3(v1, 1);
  MEMORY[0x223D49C70](v1);
  MEMORY[0x223D49C70](v1);
  v4 = v0[1];

  return v4();
}

uint64_t VisualActionPredictionService.isBundleEligibleForAcceleratedAction(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21DDD7A6C, 0, 0);
}

uint64_t sub_21DDD7A6C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_21DDD7B70;
  v6 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 72, 0, 0, 0xD00000000000002ALL, 0x800000021DDF3BA0, sub_21DDD9C74, v3, v6);
}

uint64_t sub_21DDD7B70()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_21DDD7CA8;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_21DDD7C8C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21DDD7CA8()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2(0);
}

uint64_t sub_21DDD7D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AE0, &qword_21DDF2F50);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  (*(a5 + 56))(a3, sub_21DDD9E08, v15, a4, a5);
}

uint64_t sub_21DDD7E88(uint64_t a1, char a2)
{
  if (a2)
  {
    MEMORY[0x223D49C80]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AE0, &qword_21DDF2F50);
    return sub_21DDF279C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AE0, &qword_21DDF2F50);
    return sub_21DDF27AC();
  }
}

uint64_t VisualActionPredictionService.rankBundles(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_21DDD7F30, 0, 0);
}

uint64_t sub_21DDD7F30()
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
  v6 = sub_21DDF254C();
  *v5 = v0;
  v5[1] = sub_21DDD8040;
  v7 = *(v0 + 16);

  return MEMORY[0x2822008A0](v7, 0, 0, 0x646E75426B6E6172, 0xEF293A5F2873656CLL, sub_21DDD9C80, v3, v6);
}

uint64_t sub_21DDD8040()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21DDD817C, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_21DDD817C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_21DDD81E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A90, &qword_21DDF2F00);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  (*(a5 + 64))(a3, sub_21DDD9DE0, v15, a4, a5);
}

uint64_t sub_21DDD8358(uint64_t a1)
{
  v2 = sub_21DDF254C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A88, &qword_21DDF2EF8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v12 - v9);
  sub_21DDDA28C(a1, v12 - v9, &qword_27CE90A88, &qword_21DDF2EF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12[1] = *v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A90, &qword_21DDF2F00);
    return sub_21DDF279C();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A90, &qword_21DDF2F00);
    return sub_21DDF27AC();
  }
}

uint64_t sub_21DDD8508(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_21DDD8554(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_21DDF1E3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_21DDD9A74(&qword_27CE90A70);
  v36 = a2;
  v13 = sub_21DDF272C();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_21DDD9A74(&qword_27CE90A78);
      v23 = sub_21DDF273C();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_21DDD9130(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

size_t sub_21DDD880C(size_t a1, int64_t a2, char a3)
{
  result = sub_21DDD8C0C(a1, a2, a3, *v3, &qword_27CE90B10, &qword_21DDF2F90, MEMORY[0x277D78638]);
  *v3 = result;
  return result;
}

size_t sub_21DDD8850(size_t a1, int64_t a2, char a3)
{
  result = sub_21DDD8C0C(a1, a2, a3, *v3, &qword_27CE90AD8, &qword_21DDF2F48, MEMORY[0x277D78BF8]);
  *v3 = result;
  return result;
}

size_t sub_21DDD8894(size_t a1, int64_t a2, char a3)
{
  result = sub_21DDD8A24(a1, a2, a3, *v3, &qword_27CE90AB8, &qword_21DDF2F28, &qword_27CE90AC0, &qword_21DDF2F30);
  *v3 = result;
  return result;
}

size_t sub_21DDD88D4(size_t a1, int64_t a2, char a3)
{
  result = sub_21DDD8A24(a1, a2, a3, *v3, &qword_27CE90AA8, &qword_21DDF2F18, &qword_27CE90AB0, &qword_21DDF2F20);
  *v3 = result;
  return result;
}

size_t sub_21DDD8914(size_t a1, int64_t a2, char a3)
{
  result = sub_21DDD8C0C(a1, a2, a3, *v3, &qword_27CE90AC8, &qword_21DDF2F38, MEMORY[0x277D788B8]);
  *v3 = result;
  return result;
}

size_t sub_21DDD8958(size_t a1, int64_t a2, char a3)
{
  result = sub_21DDD8C0C(a1, a2, a3, *v3, &qword_27CE90AD0, &qword_21DDF2F40, MEMORY[0x277D78C48]);
  *v3 = result;
  return result;
}

size_t sub_21DDD899C(size_t a1, int64_t a2, char a3)
{
  result = sub_21DDD8C0C(a1, a2, a3, *v3, &qword_27CE90AA0, &qword_21DDF2F10, MEMORY[0x277D78760]);
  *v3 = result;
  return result;
}

size_t sub_21DDD89E0(size_t a1, int64_t a2, char a3)
{
  result = sub_21DDD8C0C(a1, a2, a3, *v3, &qword_27CE90A98, &qword_21DDF2F08, MEMORY[0x277D78768]);
  *v3 = result;
  return result;
}

size_t sub_21DDD8A24(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

size_t sub_21DDD8C0C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_21DDD8DE8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_21DDF1E3C();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20]();
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B18, &qword_21DDF2F98);
  result = sub_21DDF288C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_21DDD9A74(&qword_27CE90A70);
      result = sub_21DDF272C();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_21DDD9130(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_21DDF1E3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21DDD8DE8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_21DDD93AC();
      goto LABEL_12;
    }

    sub_21DDD95E4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_21DDD9A74(&qword_27CE90A70);
  v15 = sub_21DDF272C();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_21DDD9A74(&qword_27CE90A78);
      v23 = sub_21DDF273C();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21DDF292C();
  __break(1u);
  return result;
}

void *sub_21DDD93AC()
{
  v1 = v0;
  v2 = sub_21DDF1E3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B18, &qword_21DDF2F98);
  v7 = *v0;
  v8 = sub_21DDF287C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_21DDD95E4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_21DDF1E3C();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B18, &qword_21DDF2F98);
  v10 = sub_21DDF288C();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_21DDD9A74(&qword_27CE90A70);
      result = sub_21DDF272C();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_21DDD98EC(uint64_t a1)
{
  v2 = sub_21DDF1E3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_21DDD9A74(&qword_27CE90A70);
  result = MEMORY[0x223D49840](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_21DDD8554(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_21DDD9A74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21DDF1E3C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

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

uint64_t sub_21DDD9B30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A80, &qword_21DDF3030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DDD9BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A80, &qword_21DDF3030) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_21DDD745C(a1, a2, a3, a4, v4 + v10, v12, v13);
}

uint64_t sub_21DDD9D44(uint64_t a1, int a2)
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

uint64_t sub_21DDD9D64(uint64_t result, int a2, int a3)
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

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_281222828)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_281222828);
    }
  }
}

uint64_t sub_21DDD9E08(uint64_t a1, char a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AE0, &qword_21DDF2F50) - 8) + 80);

  return sub_21DDD7E88(a1, a2 & 1);
}

uint64_t sub_21DDD9E94(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_21DDF1F6C() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_21DDF222C() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[5];
  v13 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = *v13;
  v14 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_21DDDA03C;

  return sub_21DDD7728(a1, v9, v10, v11, v12, v1 + v5, v1 + v8, v15);
}

uint64_t sub_21DDDA03C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21DDDA1DC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_21DDDA28C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_22Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t StructuredExtraction.init(from:)(uint64_t a1)
{
  sub_21DDF258C();
  v2 = sub_21DDF1BFC();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

size_t StructuredExtraction.init(from:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v48 = sub_21DDF1A5C();
  v4 = *(v48 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DDF255C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B20, &qword_21DDF2FA8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v36 - v12;
  v14 = sub_21DDF237C();
  v54 = *(v14 - 8);
  v15 = *(v54 + 64);
  MEMORY[0x28223BE20](v14);
  v58 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_21DDF257C();
  v49 = *(v45 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x28223BE20](v45);
  v19 = (v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_21DDF1A7C();
  v21 = v20;
  if (v20 >> 62)
  {
    goto LABEL_36;
  }

  v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
LABEL_37:

    sub_21DDF1A8C();
    sub_21DDF258C();
  }

LABEL_3:
  v59 = MEMORY[0x277D84F90];
  result = sub_21DDD8850(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v42 = v22;
    v36[0] = a2;
    v36[1] = a1;
    v24 = 0;
    v44 = v21 & 0xC000000000000001;
    v38 = v21 & 0xFFFFFFFFFFFFFF8;
    v39 = v21;
    v37 = v21 + 32;
    v56 = (v54 + 32);
    v57 = (v54 + 48);
    v40 = v49 + 32;
    v41 = (v4 + 8);
    v53 = v14;
    v43 = v19;
    v19 = v59;
    while (1)
    {
      if (__OFADD__(v24, 1))
      {
        goto LABEL_34;
      }

      v52 = v24 + 1;
      if (v44)
      {
        v25 = MEMORY[0x223D49920](v24);
      }

      else
      {
        if (v24 >= *(v38 + 16))
        {
          goto LABEL_35;
        }

        v25 = *(v37 + 8 * v24);
      }

      v26 = sub_21DDF1A4C();
      v55 = v26;
      if (v26 >> 62)
      {
        v27 = sub_21DDF28DC();
        v50 = v25;
        v51 = v19;
        if (v27)
        {
LABEL_12:
          a1 = 0;
          v28 = v55;
          v4 = v55 & 0xC000000000000001;
          v21 = v55 & 0xFFFFFFFFFFFFFF8;
          v19 = MEMORY[0x277D84F90];
          do
          {
            if (v4)
            {
              a2 = MEMORY[0x223D49920](a1, v28);
              v29 = a1 + 1;
              if (__OFADD__(a1, 1))
              {
                goto LABEL_32;
              }
            }

            else
            {
              if (a1 >= *(v21 + 16))
              {
                goto LABEL_33;
              }

              a2 = *(v28 + 8 * a1 + 32);

              v29 = a1 + 1;
              if (__OFADD__(a1, 1))
              {
LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
LABEL_34:
                __break(1u);
LABEL_35:
                __break(1u);
LABEL_36:
                v22 = sub_21DDF28DC();
                if (!v22)
                {
                  goto LABEL_37;
                }

                goto LABEL_3;
              }
            }

            static DetectedEntity.detectedEntity(for:)(v13);

            if ((*v57)(v13, 1, v14) == 1)
            {
              sub_21DDDB6A0(v13);
            }

            else
            {
              v30 = *v56;
              (*v56)(v58, v13, v14);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v19 = sub_21DDDB4C4(0, v19[2] + 1, 1, v19, &qword_27CE90B50, &qword_21DDF2FD8, MEMORY[0x277D78A20]);
              }

              v32 = v19[2];
              v31 = v19[3];
              a2 = v32 + 1;
              if (v32 >= v31 >> 1)
              {
                v19 = sub_21DDDB4C4(v31 > 1, v32 + 1, 1, v19, &qword_27CE90B50, &qword_21DDF2FD8, MEMORY[0x277D78A20]);
              }

              v19[2] = a2;
              v33 = v19 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v32;
              v14 = v53;
              v30(v33, v58, v53);
              v28 = v55;
            }

            ++a1;
          }

          while (v29 != v27);
        }
      }

      else
      {
        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v50 = v25;
        v51 = v19;
        if (v27)
        {
          goto LABEL_12;
        }
      }

      v34 = v47;
      sub_21DDF1A6C();
      sub_21DDDAF00(v34, v46);
      (*v41)(v34, v48);
      v4 = v43;
      sub_21DDF256C();

      v19 = v51;
      v59 = v51;
      a2 = v51[2];
      v35 = v51[3];
      a1 = a2 + 1;
      if (a2 >= v35 >> 1)
      {
        sub_21DDD8850(v35 > 1, a2 + 1, 1);
        v19 = v59;
      }

      v19[2] = a1;
      (*(v49 + 32))(v19 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * a2, v4, v45);
      v24 = v52;
      if (v52 == v42)
      {
        goto LABEL_37;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t StructuredExtraction.Object.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_21DDF1A5C();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DDF255C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v32 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B20, &qword_21DDF2FA8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  v13 = sub_21DDF237C();
  v40 = *(v13 - 8);
  v14 = *(v40 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v17 = sub_21DDF1A4C();
  v18 = v17;
  if (v17 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DDF28DC())
  {
    v20 = 0;
    v42 = v18 & 0xFFFFFFFFFFFFFF8;
    v43 = v18 & 0xC000000000000001;
    v21 = (v40 + 48);
    v41 = (v40 + 32);
    v22 = MEMORY[0x277D84F90];
    v38 = i;
    v39 = v16;
    while (v43)
    {
      MEMORY[0x223D49920](v20, v18);
      v24 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      static DetectedEntity.detectedEntity(for:)(v12);

      if ((*v21)(v12, 1, v13) == 1)
      {
        sub_21DDDB6A0(v12);
      }

      else
      {
        v25 = v18;
        v26 = *v41;
        (*v41)(v16, v12, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_21DDDB4C4(0, v22[2] + 1, 1, v22, &qword_27CE90B50, &qword_21DDF2FD8, MEMORY[0x277D78A20]);
        }

        v28 = v22[2];
        v27 = v22[3];
        if (v28 >= v27 >> 1)
        {
          v22 = sub_21DDDB4C4(v27 > 1, v28 + 1, 1, v22, &qword_27CE90B50, &qword_21DDF2FD8, MEMORY[0x277D78A20]);
        }

        v22[2] = v28 + 1;
        v29 = v22 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v28;
        v16 = v39;
        v26(v29, v39, v13);
        v18 = v25;
        i = v38;
      }

      ++v20;
      if (v24 == i)
      {
        goto LABEL_20;
      }
    }

    if (v20 >= *(v42 + 16))
    {
      goto LABEL_18;
    }

    v23 = *(v18 + 8 * v20 + 32);

    v24 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:

  v30 = v33;
  sub_21DDF1A6C();
  sub_21DDDAF00(v30, v32);
  (*(v34 + 8))(v30, v35);
  sub_21DDF256C();
}

uint64_t sub_21DDDAF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DDF1A5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D4B4A0])
  {
    v10 = MEMORY[0x277D78BB0];
LABEL_23:
    v11 = *v10;
    v12 = sub_21DDF255C();
    return (*(*(v12 - 8) + 104))(a2, v11, v12);
  }

  if (v9 == *MEMORY[0x277D4B488])
  {
    v10 = MEMORY[0x277D78BA0];
    goto LABEL_23;
  }

  if (v9 == *MEMORY[0x277D4B4B0])
  {
    v10 = MEMORY[0x277D78BC0];
    goto LABEL_23;
  }

  if (v9 == *MEMORY[0x277D4B4D0])
  {
    v10 = MEMORY[0x277D78BE8];
    goto LABEL_23;
  }

  if (v9 == *MEMORY[0x277D4B480])
  {
    v10 = MEMORY[0x277D78B98];
    goto LABEL_23;
  }

  if (v9 == *MEMORY[0x277D4B490])
  {
    v10 = MEMORY[0x277D78BA8];
    goto LABEL_23;
  }

  if (v9 == *MEMORY[0x277D4B4D8])
  {
    v10 = MEMORY[0x277D78BF0];
    goto LABEL_23;
  }

  if (v9 == *MEMORY[0x277D4B4B8])
  {
    v10 = MEMORY[0x277D78BD0];
    goto LABEL_23;
  }

  if (v9 == *MEMORY[0x277D4B498])
  {
    v10 = MEMORY[0x277D78BC8];
    goto LABEL_23;
  }

  if (v9 == *MEMORY[0x277D4B4C8])
  {
    v10 = MEMORY[0x277D78BE0];
    goto LABEL_23;
  }

  if (v9 == *MEMORY[0x277D4B4A8])
  {
    v10 = MEMORY[0x277D78BB8];
    goto LABEL_23;
  }

  v14 = *MEMORY[0x277D4B4C0];
  v15 = *MEMORY[0x277D78BD8];
  v16 = v9;
  v17 = sub_21DDF255C();
  result = (*(*(v17 - 8) + 104))(a2, v15, v17);
  if (v16 != v14)
  {
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

size_t sub_21DDDB234(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B38, &qword_21DDF2FC0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B40, &qword_21DDF2FC8) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B40, &qword_21DDF2FC8) - 8);
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

size_t sub_21DDDB4C4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_21DDDB6A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B20, &qword_21DDF2FA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t VisualLookupResult.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B58, &qword_21DDF2FF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v163 = &v133 - v5;
  v160 = sub_21DDF188C();
  v134 = *(v160 - 8);
  v6 = *(v134 + 64);
  MEMORY[0x28223BE20](v160);
  v159 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_21DDF191C();
  v137 = *(v172 - 8);
  v8 = *(v137 + 64);
  MEMORY[0x28223BE20](v172);
  v171 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_21DDF1EFC();
  v162 = *(v161 - 8);
  v10 = *(v162 + 64);
  MEMORY[0x28223BE20](v161);
  v158 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_21DDF1A2C();
  v12 = *(v194 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v194);
  v193 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_21DDF1A0C();
  v15 = *(v187 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v187);
  v186 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_21DDF19CC();
  v18 = *(v170 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v170);
  v169 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B60, &qword_21DDF2FF8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v133 - v23;
  v210 = sub_21DDF1E5C();
  v195 = *(v210 - 8);
  v25 = *(v195 + 64);
  MEMORY[0x28223BE20](v210);
  v206 = &v133 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_21DDF1A3C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v199 = &v133 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v209 = &v133 - v32;
  v150 = sub_21DDF18AC();
  v33 = *(v150 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v150);
  v165 = &v133 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_21DDF194C();
  v36 = *(v147 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v147);
  v138 = &v133 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v146 = &v133 - v40;
  v136 = a1;
  result = sub_21DDF185C();
  v42 = *(result + 16);
  v145 = v36;
  v143 = v42;
  if (v42)
  {
    v43 = 0;
    v142 = result + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v141 = v36 + 16;
    v152 = v33 + 16;
    v204 = (v28 + 88);
    v205 = (v28 + 16);
    LODWORD(v203) = *MEMORY[0x277D79750];
    v192 = *MEMORY[0x277D79748];
    v185 = *MEMORY[0x277D79740];
    v201 = (v195 + 56);
    v202 = (v28 + 8);
    v198 = (v28 + 96);
    v168 = (v18 + 32);
    v167 = (v18 + 8);
    v166 = *MEMORY[0x277D78698];
    v197 = (v195 + 104);
    v184 = (v15 + 32);
    v183 = (v15 + 8);
    v182 = *MEMORY[0x277D786A0];
    v191 = (v12 + 32);
    v190 = (v12 + 8);
    v189 = *MEMORY[0x277D786A8];
    v44 = (v195 + 48);
    v200 = (v195 + 32);
    v151 = (v33 + 8);
    v45 = MEMORY[0x277D84F90];
    v140 = (v36 + 8);
    v196 = v24;
    v46 = v209;
    v47 = v150;
    v188 = (v195 + 48);
    v149 = v28;
    v153 = v33;
    v139 = result;
    while (v43 < *(result + 16))
    {
      v148 = v45;
      v50 = *(v145 + 72);
      v144 = v43;
      (*(v145 + 16))(v146, v142 + v50 * v43, v147);
      result = sub_21DDF193C();
      v156 = *(result + 16);
      if (v156)
      {
        v51 = 0;
        v155 = result + ((*(v33 + 80) + 32) & ~*(v33 + 80));
        v52 = MEMORY[0x277D84F90];
        v53 = v199;
        v154 = result;
        while (v51 < *(result + 16))
        {
          v173 = v52;
          v54 = *(v33 + 72);
          v164 = v51;
          (*(v33 + 16))(v165, v155 + v54 * v51, v47);
          v55 = sub_21DDF189C();
          v56 = *(v55 + 16);
          if (v56)
          {
            v57 = (*(v149 + 80) + 32) & ~*(v149 + 80);
            v157 = v55;
            v58 = v55 + v57;
            v59 = *(v149 + 72);
            v207 = *(v149 + 16);
            v208 = v59;
            v60 = MEMORY[0x277D84F90];
            do
            {
              v61 = v44;
              v62 = v207;
              v207(v46, v58, v27);
              v62(v53, v46, v27);
              v63 = (*v204)(v53, v27);
              if (v63 == v203)
              {
                (*v198)(v53, v27);
                v64 = v193;
                v65 = v194;
                (*v191)(v193, v53, v194);
                sub_21DDF1A1C();
                sub_21DDF22AC();
                v66 = v65;
                v46 = v209;
                (*v190)(v64, v66);
                (*v202)(v46, v27);
                v67 = v210;
                (*v197)(v24, v189, v210);
                (*v201)(v24, 0, 1, v67);
                v44 = v61;
              }

              else if (v63 == v192)
              {
                (*v198)(v53, v27);
                v68 = v186;
                v69 = v187;
                (*v184)(v186, v53, v187);
                sub_21DDF19EC();
                sub_21DDF19DC();
                sub_21DDF19FC();
                v46 = v209;
                v53 = v199;
                v24 = v196;
                v44 = v188;
                sub_21DDF262C();
                v70 = v68;
                v71 = v210;
                (*v183)(v70, v69);
                (*v202)(v46, v27);
                (*v197)(v24, v182, v71);
                (*v201)(v24, 0, 1, v71);
              }

              else
              {
                if (v63 == v185)
                {
                  (*v198)(v53, v27);
                  v72 = v169;
                  v73 = v170;
                  (*v168)(v169, v53, v170);
                  v181 = sub_21DDF199C();
                  v180 = v74;
                  v179 = sub_21DDF195C();
                  v178 = v75;
                  v177 = sub_21DDF19BC();
                  v176 = v76;
                  v175 = sub_21DDF198C();
                  v174 = v77;
                  sub_21DDF197C();
                  sub_21DDF19AC();
                  sub_21DDF196C();
                  v53 = v199;
                  v46 = v209;
                  v24 = v196;
                  sub_21DDF25DC();
                  v78 = v72;
                  v79 = v210;
                  (*v167)(v78, v73);
                  (*v202)(v46, v27);
                  (*v197)(v24, v166, v79);
                  (*v201)(v24, 0, 1, v79);
                }

                else
                {
                  v80 = *v202;
                  (*v202)(v46, v27);
                  (*v201)(v24, 1, 1, v210);
                  v80(v53, v27);
                }

                v44 = v188;
              }

              if ((*v44)(v24, 1, v210) == 1)
              {
                sub_21DDDDB04(v24, &qword_27CE90B60, &qword_21DDF2FF8);
              }

              else
              {
                v81 = *v200;
                (*v200)(v206, v24, v210);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v60 = sub_21DDDB474(0, *(v60 + 2) + 1, 1, v60);
                }

                v83 = *(v60 + 2);
                v82 = *(v60 + 3);
                if (v83 >= v82 >> 1)
                {
                  v60 = sub_21DDDB474(v82 > 1, v83 + 1, 1, v60);
                }

                *(v60 + 2) = v83 + 1;
                v81(&v60[((*(v195 + 80) + 32) & ~*(v195 + 80)) + *(v195 + 72) * v83], v206, v210);
                v53 = v199;
                v46 = v209;
              }

              v58 += v208;
              --v56;
            }

            while (v56);

            v47 = v150;
          }

          else
          {

            v60 = MEMORY[0x277D84F90];
          }

          (*v151)(v165, v47);
          v84 = *(v60 + 2);
          result = v173;
          v85 = v173[2];
          v86 = v85 + v84;
          v33 = v153;
          if (__OFADD__(v85, v84))
          {
            goto LABEL_88;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          v52 = v173;
          if ((result & 1) == 0 || v86 > v173[3] >> 1)
          {
            if (v85 <= v86)
            {
              v87 = v85 + v84;
            }

            else
            {
              v87 = v85;
            }

            result = sub_21DDDB474(result, v87, 1, v173);
            v52 = result;
          }

          v53 = v199;
          v46 = v209;
          if (*(v60 + 2))
          {
            if ((v52[3] >> 1) - v52[2] < v84)
            {
              goto LABEL_90;
            }

            v88 = (*(v195 + 80) + 32) & ~*(v195 + 80);
            v89 = *(v195 + 72);
            swift_arrayInitWithCopy();

            if (v84)
            {
              v90 = v52[2];
              v91 = __OFADD__(v90, v84);
              v92 = v90 + v84;
              if (v91)
              {
                goto LABEL_91;
              }

              v52[2] = v92;
            }
          }

          else
          {

            if (v84)
            {
              goto LABEL_89;
            }
          }

          v51 = v164 + 1;
          result = v154;
          if (v164 + 1 == v156)
          {
            v93 = v52;

            goto LABEL_45;
          }
        }

        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v93 = MEMORY[0x277D84F90];
LABEL_45:
      (*v140)(v146, v147);
      v94 = v93[2];
      result = v148;
      v95 = v148[2];
      v96 = v95 + v94;
      if (__OFADD__(v95, v94))
      {
        goto LABEL_96;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v97 = v148;
      if (!result || v96 > v148[3] >> 1)
      {
        if (v95 <= v96)
        {
          v98 = v95 + v94;
        }

        else
        {
          v98 = v95;
        }

        result = sub_21DDDB474(result, v98, 1, v148);
        v97 = result;
      }

      v46 = v209;
      if (v93[2])
      {
        if ((v97[3] >> 1) - v97[2] < v94)
        {
          goto LABEL_99;
        }

        v99 = (*(v195 + 80) + 32) & ~*(v195 + 80);
        v100 = *(v195 + 72);
        v101 = v97;
        swift_arrayInitWithCopy();

        v45 = v101;
        result = v139;
        v49 = v144;
        if (v94)
        {
          v102 = v101[2];
          v91 = __OFADD__(v102, v94);
          v103 = v102 + v94;
          if (v91)
          {
            goto LABEL_101;
          }

          v101[2] = v103;
        }
      }

      else
      {
        v48 = v97;

        v45 = v48;
        result = v139;
        v49 = v144;
        if (v94)
        {
          goto LABEL_97;
        }
      }

      v43 = v49 + 1;
      if (v43 == v143)
      {
        v148 = v45;

        goto LABEL_59;
      }
    }
  }

  else
  {

    v148 = MEMORY[0x277D84F90];
LABEL_59:
    result = sub_21DDF185C();
    v104 = result;
    v105 = v163;
    v106 = v147;
    v107 = v145;
    v108 = v138;
    v200 = *(result + 16);
    if (!v200)
    {
LABEL_86:

      sub_21DDF1E6C();
      v132 = sub_21DDF186C();
      return (*(*(v132 - 8) + 8))(v136, v132);
    }

    v109 = 0;
    v110 = MEMORY[0x277D84F90];
    v199 = (result + ((*(v145 + 80) + 32) & ~*(v145 + 80)));
    v198 = (v145 + 16);
    v207 = (v137 + 16);
    v205 = (v137 + 8);
    v206 = (v134 + 8);
    v204 = (v162 + 32);
    v196 = result;
    v197 = (v145 + 8);
    while (v109 < *(v104 + 16))
    {
      v203 = v110;
      (*(v107 + 16))(v108, &v199[*(v107 + 72) * v109], v106);
      v111 = sub_21DDF192C();
      v112 = *(v111 + 16);
      if (v112)
      {
        v202 = v109;
        v211 = MEMORY[0x277D84F90];
        sub_21DDD899C(0, v112, 0);
        v113 = v211;
        v114 = (*(v137 + 80) + 32) & ~*(v137 + 80);
        v201 = v111;
        v115 = v111 + v114;
        v116 = *(v137 + 72);
        v208 = *(v137 + 16);
        v209 = v116;
        do
        {
          v208(v171, v115, v172);
          v117 = v159;
          sub_21DDF18EC();
          sub_21DDF187C();
          v210 = v118;
          (*v206)(v117, v160);
          sub_21DDF18FC();
          sub_21DDF18DC();
          sub_21DDF190C();
          v119 = sub_21DDF18CC();
          v120 = *(v119 - 8);
          if ((*(v120 + 48))(v105, 1, v119) == 1)
          {
            sub_21DDDDB04(v105, &qword_27CE90B58, &qword_21DDF2FF0);
          }

          else
          {
            sub_21DDF18BC();
            (*(v120 + 8))(v105, v119);
          }

          v121 = v158;
          sub_21DDF1EEC();
          (*v205)(v171, v172);
          v211 = v113;
          v123 = *(v113 + 16);
          v122 = *(v113 + 24);
          if (v123 >= v122 >> 1)
          {
            sub_21DDD899C(v122 > 1, v123 + 1, 1);
            v113 = v211;
          }

          *(v113 + 16) = v123 + 1;
          (*(v162 + 32))(v113 + ((*(v162 + 80) + 32) & ~*(v162 + 80)) + *(v162 + 72) * v123, v121, v161);
          v115 += v209;
          --v112;
          v105 = v163;
        }

        while (v112);
        v108 = v138;
        v106 = v147;
        (*v197)(v138, v147);

        v107 = v145;
        v104 = v196;
        v109 = v202;
      }

      else
      {

        result = (*v197)(v108, v106);
        v113 = MEMORY[0x277D84F90];
      }

      v124 = *(v113 + 16);
      v110 = v203;
      v125 = v203[2];
      v126 = v125 + v124;
      if (__OFADD__(v125, v124))
      {
        goto LABEL_93;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v126 > v110[3] >> 1)
      {
        if (v125 <= v126)
        {
          v127 = v125 + v124;
        }

        else
        {
          v127 = v125;
        }

        result = sub_21DDDB44C(result, v127, 1, v110);
        v110 = result;
      }

      v105 = v163;
      if (*(v113 + 16))
      {
        if ((v110[3] >> 1) - v110[2] < v124)
        {
          goto LABEL_98;
        }

        v128 = (*(v162 + 80) + 32) & ~*(v162 + 80);
        v129 = *(v162 + 72);
        swift_arrayInitWithCopy();

        if (v124)
        {
          v130 = v110[2];
          v91 = __OFADD__(v130, v124);
          v131 = v130 + v124;
          if (v91)
          {
            goto LABEL_100;
          }

          v110[2] = v131;
        }
      }

      else
      {

        if (v124)
        {
          goto LABEL_94;
        }
      }

      v109 = (v109 + 1);
      if (v109 == v200)
      {
        goto LABEL_86;
      }
    }

LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
  return result;
}

{
  v21[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B58, &qword_21DDF2FF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v21 - v5;
  v7 = sub_21DDF188C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AA0, &qword_21DDF2F10);
  v12 = *(sub_21DDF1EFC() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  *(swift_allocObject() + 16) = xmmword_21DDF2FE0;
  sub_21DDF18EC();
  v15 = sub_21DDF187C();
  v21[1] = v16;
  v21[2] = v15;
  (*(v8 + 8))(v11, v7);
  sub_21DDF18FC();
  sub_21DDF18DC();
  sub_21DDF190C();
  v17 = sub_21DDF18CC();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v6, 1, v17) == 1)
  {
    sub_21DDDDB04(v6, &qword_27CE90B58, &qword_21DDF2FF0);
  }

  else
  {
    sub_21DDF18BC();
    (*(v18 + 8))(v6, v17);
  }

  sub_21DDF1EEC();
  sub_21DDF1E6C();
  v19 = sub_21DDF191C();
  return (*(*(v19 - 8) + 8))(a1, v19);
}

{
  v86 = sub_21DDF1A2C();
  v4 = *(v86 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v86);
  v85 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_21DDF1A0C();
  v7 = *(v78 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v78);
  v77 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_21DDF19CC();
  v10 = *(v65 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v65);
  v64 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B60, &qword_21DDF2FF8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v59 - v15;
  v17 = sub_21DDF1E5C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v99 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_21DDF1A3C();
  v21 = *(v89 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v89);
  v100 = v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v101 = v59 - v25;
  v26 = sub_21DDF189C();
  v27 = *(v26 + 16);
  if (!v27)
  {

    goto LABEL_21;
  }

  v59[1] = a2;
  v60 = a1;
  v29 = *(v21 + 16);
  v28 = v21 + 16;
  v97 = v29;
  v30 = (*(v28 + 64) + 32) & ~*(v28 + 64);
  v31 = v28;
  v59[0] = v26;
  v32 = v26 + v30;
  v33 = *(v31 + 56);
  v95 = (v31 + 72);
  v96 = v33;
  v94 = *MEMORY[0x277D79750];
  v84 = *MEMORY[0x277D79748];
  v76 = *MEMORY[0x277D79740];
  v92 = (v18 + 56);
  v93 = (v31 - 8);
  v98 = v31;
  v88 = (v31 + 80);
  v63 = (v10 + 32);
  v62 = (v10 + 8);
  v61 = *MEMORY[0x277D78698];
  v87 = (v18 + 104);
  v75 = (v7 + 32);
  v74 = (v7 + 8);
  v73 = *MEMORY[0x277D786A0];
  v82 = (v4 + 8);
  v83 = (v4 + 32);
  v81 = *MEMORY[0x277D786A8];
  v90 = (v18 + 32);
  v91 = (v18 + 48);
  v34 = MEMORY[0x277D84F90];
  v80 = v17;
  v79 = v18;
  v35 = v89;
  v36 = v100;
  do
  {
    v102 = v34;
    v37 = v101;
    v38 = v97;
    v97(v101, v32, v35);
    v38(v36, v37, v35);
    v39 = (*v95)(v36, v35);
    if (v39 == v94)
    {
      (*v88)(v36, v35);
      v41 = v85;
      v40 = v86;
      (*v83)(v85, v36, v86);
      sub_21DDF1A1C();
      sub_21DDF22AC();
      (*v82)(v41, v40);
      (*v93)(v37, v35);
      (*v87)(v16, v81, v17);
LABEL_11:
      (*v92)(v16, 0, 1, v17);
      goto LABEL_12;
    }

    if (v39 == v84)
    {
      (*v88)(v36, v35);
      v42 = v36;
      v43 = v77;
      v44 = v78;
      (*v75)(v77, v42, v78);
      sub_21DDF19EC();
      sub_21DDF19DC();
      sub_21DDF19FC();
      v35 = v89;
      v18 = v79;
      sub_21DDF262C();
      v45 = v44;
      v17 = v80;
      (*v74)(v43, v45);
      (*v93)(v101, v35);
      (*v87)(v16, v73, v17);
      goto LABEL_11;
    }

    if (v39 == v76)
    {
      (*v88)(v36, v35);
      v46 = v36;
      v47 = v64;
      v48 = v65;
      (*v63)(v64, v46, v65);
      sub_21DDF199C();
      v72 = sub_21DDF195C();
      v71 = v49;
      v70 = sub_21DDF19BC();
      v69 = v50;
      v68 = sub_21DDF198C();
      v67 = v51;
      v66 = sub_21DDF197C();
      sub_21DDF19AC();
      sub_21DDF196C();
      v35 = v89;
      v18 = v79;
      sub_21DDF25DC();
      v52 = v48;
      v17 = v80;
      (*v62)(v47, v52);
      (*v93)(v101, v35);
      (*v87)(v16, v61, v17);
      goto LABEL_11;
    }

    v56 = *v93;
    (*v93)(v101, v35);
    (*v92)(v16, 1, 1, v17);
    v56(v36, v35);
LABEL_12:
    v34 = v102;
    if ((*v91)(v16, 1, v17) == 1)
    {
      sub_21DDDDB04(v16, &qword_27CE90B60, &qword_21DDF2FF8);
    }

    else
    {
      v53 = *v90;
      (*v90)(v99, v16, v17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_21DDDB474(0, v34[2] + 1, 1, v34);
      }

      v55 = v34[2];
      v54 = v34[3];
      if (v55 >= v54 >> 1)
      {
        v34 = sub_21DDDB474(v54 > 1, v55 + 1, 1, v34);
      }

      v34[2] = v55 + 1;
      v53(v34 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v55, v99, v17);
      v35 = v89;
    }

    v36 = v100;
    v32 += v96;
    --v27;
  }

  while (v27);

  a1 = v60;
LABEL_21:
  sub_21DDF1E6C();
  v57 = sub_21DDF18AC();
  return (*(*(v57 - 8) + 8))(a1, v57);
}

uint64_t sub_21DDDDB04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21DDDDB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A80, &qword_21DDF3030);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_21DDDA28C(a3, v27 - v11, &qword_27CE90A80, &qword_21DDF3030);
  v13 = sub_21DDF27CC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21DDDDB04(v12, &qword_27CE90A80, &qword_21DDF3030);
  }

  else
  {
    sub_21DDF27BC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21DDF278C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21DDF275C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_21DDDDB04(a3, &qword_27CE90A80, &qword_21DDF3030);

      return v25;
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

  sub_21DDDDB04(a3, &qword_27CE90A80, &qword_21DDF3030);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t VisualActionPredictionClient.__allocating_init()()
{
  v1 = sub_21DDF26AC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v4, *MEMORY[0x277D78CE8]);
  v6 = *(v0 + 48);
  v7 = *(v0 + 52);
  v8 = swift_allocObject();
  VisualActionPredictionClient.init(workflow:)(v4);
  return v8;
}

uint64_t VisualActionPredictionClient.__allocating_init(workflow:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  VisualActionPredictionClient.init(workflow:)(a1);
  return v5;
}

uint64_t *VisualActionPredictionClient.init(workflow:)(uint64_t a1)
{
  v69 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A80, &qword_21DDF3030);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v62 = &v57 - v3;
  v64 = sub_21DDF184C();
  v68 = *(v64 - 8);
  v4 = *(v68 + 64);
  v5 = MEMORY[0x28223BE20](v64);
  v60 = v6;
  v61 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v67 = &v57 - v7;
  v8 = sub_21DDF26DC();
  v65 = *(v8 - 8);
  v66 = v8;
  v9 = *(v65 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v63 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = &v57 - v12;
  v13 = sub_21DDF281C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v15 = sub_21DDF282C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21DDF271C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  sub_21DDDE898();
  sub_21DDF270C();
  (*(v16 + 104))(v19, *MEMORY[0x277D85268], v15);
  v70 = MEMORY[0x277D84F90];
  sub_21DDED4F0(&qword_281222820, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B68, &qword_21DDF3038);
  sub_21DDECB8C(&qword_281222830, &qword_27CE90B68, &qword_21DDF3038);
  v22 = v57;
  sub_21DDF285C();
  v22[2] = sub_21DDF284C();
  v23 = MEMORY[0x277D84F98];
  *(v22 + OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_customActionHandlerMap) = MEMORY[0x277D84F98];
  v24 = OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_lockedBundleRankingMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B70, &qword_21DDF3040);
  v25 = swift_allocObject();
  *(v25 + 24) = 0;
  *(v22 + v24) = v25;
  *(v25 + 16) = v23;
  v26 = v59;
  *(v22 + OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_fastBundleRankingThreshold) = 0x3FD0000000000000;
  sub_21DDF26BC();

  v27 = sub_21DDF26CC();
  v28 = sub_21DDF27EC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v70 = v30;
    *v29 = 136315394;
    v31 = *v22;
    v32 = sub_21DDF295C();
    v34 = sub_21DDEA3EC(v32, v33, &v70);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_21DDEA3EC(0x726F772874696E69, 0xEF293A776F6C666BLL, &v70);
    _os_log_impl(&dword_21DDD3000, v27, v28, "%s.%s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D49D80](v30, -1, -1);
    MEMORY[0x223D49D80](v29, -1, -1);
  }

  v59 = *(v65 + 8);
  (v59)(v26, v66);
  v35 = OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_workflow;
  v36 = sub_21DDF26AC();
  v37 = *(v36 - 8);
  v38 = *(v37 + 16);
  v58 = v36;
  v38(v22 + v35, v69);
  sub_21DDF21EC();
  v39 = v22[2];
  sub_21DDED4F0(&qword_281222840, MEMORY[0x277D78888]);
  v40 = v39;
  v41 = sub_21DDF24DC();

  v22[3] = v41;

  v42 = v67;
  sub_21DDF23DC();
  sub_21DDF201C();
  v43 = swift_allocObject();
  swift_weakInit();
  v44 = v68;
  v45 = v61;
  v46 = v64;
  (*(v68 + 16))(v61, v42, v64);
  v47 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v43;
  (*(v44 + 32))(v48 + v47, v45, v46);
  sub_21DDED4F0(&qword_281222860, MEMORY[0x277D78798]);
  sub_21DDF23CC();

  sub_21DDF23FC();
  v49 = sub_21DDF27CC();
  v50 = v62;
  (*(*(v49 - 8) + 56))(v62, 1, 1, v49);
  v51 = swift_allocObject();
  v51[2] = 0;
  v51[3] = 0;
  v51[4] = v22;

  sub_21DDDDB64(0, 0, v50, &unk_21DDF3050, v51);

  v52 = v63;
  sub_21DDF26BC();
  v53 = sub_21DDF26CC();
  v54 = sub_21DDF280C();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_21DDD3000, v53, v54, "Client initialized", v55, 2u);
    MEMORY[0x223D49D80](v55, -1, -1);
  }

  (*(v37 + 8))(v69, v58);
  (v59)(v52, v66);
  (*(v68 + 8))(v67, v46);
  return v22;
}

unint64_t sub_21DDDE898()
{
  result = qword_281222818;
  if (!qword_281222818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281222818);
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

uint64_t sub_21DDDE92C(uint64_t a1, void (*a2)(uint64_t, char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v93 = a5;
  v102 = a3;
  v101 = a2;
  v92 = a1;
  v94 = sub_21DDF26EC();
  v99 = *(v94 - 8);
  v5 = *(v99 + 64);
  MEMORY[0x28223BE20](v94);
  v97 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21DDF271C();
  v96 = *(v98 - 8);
  v7 = *(v96 + 64);
  MEMORY[0x28223BE20](v98);
  v95 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_21DDF184C();
  v113 = *(v118 - 8);
  v9 = *(v113 + 64);
  v10 = MEMORY[0x28223BE20](v118);
  v106 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v112 = &v82 - v12;
  MEMORY[0x28223BE20](v11);
  v90 = &v82 - v13;
  v89 = sub_21DDF201C();
  v88 = *(v89 - 8);
  v14 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v86 = v15;
  v87 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21DDF222C();
  v110 = *(v16 - 8);
  v111 = v16;
  v17 = *(v110 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v105 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v19;
  MEMORY[0x28223BE20](v18);
  v116 = &v82 - v20;
  v117 = sub_21DDF1F6C();
  v109 = *(v117 - 8);
  v21 = *(v109 + 64);
  v22 = MEMORY[0x28223BE20](v117);
  v104 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v115 = &v82 - v23;
  v108 = sub_21DDF1E3C();
  v107 = *(v108 - 8);
  v24 = *(v107 + 64);
  v25 = MEMORY[0x28223BE20](v108);
  v103 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v82 - v27;
  v29 = sub_21DDF240C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_21DDF203C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v82 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v100 = v28;
    v84 = v9;
    v40 = v92;
    v114 = Strong;
    sub_21DDF1FEC();
    sub_21DDF200C();
    sub_21DDF1FFC();
    v41 = v88;
    v42 = v87;
    v43 = v89;
    (*(v88 + 16))(v87, v40, v89);
    v44 = v113;
    v83 = *(v113 + 16);
    v45 = v90;
    v46 = v93;
    v93 = v21;
    v83(v90, v46, v118);
    v47 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v48 = *(v44 + 80);
    v49 = (v86 + v48 + v47) & ~v48;
    v50 = swift_allocObject();
    v51 = v102;
    *(v50 + 16) = v101;
    *(v50 + 24) = v51;
    v52 = *(v41 + 32);
    v53 = v50 + v47;
    v54 = v50;
    v86 = v50;
    v52(v53, v42, v43);
    v55 = *(v44 + 32);
    v92 = v44 + 32;
    v101 = v55;
    v56 = v118;
    v55(v54 + v49, v45, v118);
    v57 = v114;
    v58 = *(v114 + 24);

    v59 = v112;
    sub_21DDF23DC();
    v102 = *(v57 + 16);
    v60 = v107;
    v61 = v108;
    (*(v107 + 16))(v103, v100, v108);
    v83(v106, v59, v56);
    v62 = v109;
    (*(v109 + 16))(v104, v115, v117);
    v63 = v110;
    (*(v110 + 16))(v105, v116, v111);
    v64 = (*(v60 + 80) + 24) & ~*(v60 + 80);
    v65 = (v85 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
    v66 = (v48 + v65 + 16) & ~v48;
    v67 = (v84 + *(v62 + 80) + v66) & ~*(v62 + 80);
    v68 = (v93 + *(v63 + 80) + v67) & ~*(v63 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = v114;
    (*(v60 + 32))(v69 + v64, v103, v61);
    v70 = (v69 + v65);
    v71 = v86;
    *v70 = sub_21DDED000;
    v70[1] = v71;
    v101(v69 + v66, v106, v118);
    (*(v62 + 32))(v69 + v67, v104, v117);
    v72 = v110;
    v73 = v69 + v68;
    v74 = v111;
    (*(v110 + 32))(v73, v105, v111);
    aBlock[4] = sub_21DDED0D8;
    aBlock[5] = v69;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21DDE49E4;
    aBlock[3] = &block_descriptor_103;
    v75 = _Block_copy(aBlock);

    v76 = v95;
    sub_21DDF26FC();
    v119 = MEMORY[0x277D84F90];
    sub_21DDED4F0(&qword_27CE90C40, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C48, &qword_21DDF31B8);
    sub_21DDECB8C(&qword_27CE90C50, &qword_27CE90C48, &qword_21DDF31B8);
    v77 = v97;
    v78 = v94;
    sub_21DDF285C();
    MEMORY[0x223D498A0](0, v76, v77, v75);
    _Block_release(v75);

    (*(v99 + 8))(v77, v78);
    (*(v96 + 8))(v76, v98);
    (*(v113 + 8))(v112, v118);
    (*(v72 + 8))(v116, v74);
    (*(v109 + 8))(v115, v117);
    (*(v107 + 8))(v100, v108);
  }

  else
  {
    v80 = *MEMORY[0x277D78AD0];
    v81 = sub_21DDF24AC();
    (*(*(v81 - 8) + 104))(v33, v80, v81);
    (*(v30 + 104))(v33, *MEMORY[0x277D78A40], v29);
    sub_21DDF202C();
    (v101)(v38);
    return (*(v35 + 8))(v38, v34);
  }
}

uint64_t sub_21DDDF544(uint64_t a1, void (*a2)(uint64_t, char *, uint64_t), uint64_t a3)
{
  v7 = *(sub_21DDF184C() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_21DDDE92C(a1, a2, a3, v8, v9);
}

uint64_t sub_21DDDF5D0(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v36 = a3;
  v37 = a2;
  v6 = sub_21DDF24AC();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v35 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_21DDF240C();
  v9 = *(v33 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v33);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_21DDF203C();
  v13 = *(v34 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v34);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C98, &qword_21DDF3228);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v30 - v19;
  sub_21DDDA28C(a1, &v30 - v19, &qword_27CE90C98, &qword_21DDF3228);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v32;
    (*(v32 + 32))(v35, v20, v6);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CA8, &qword_21DDF3238);
    v23 = v22[12];
    v24 = v22[16];
    v25 = &v12[v22[20]];
    sub_21DDF1FEC();
    v26 = sub_21DDF184C();
    (*(*(v26 - 8) + 16))(&v12[v23], v31, v26);
    v12[v24] = 1;
    sub_21DDED4F0(&qword_27CE90CB0, MEMORY[0x277D78B00]);
    v27 = v35;
    *v25 = sub_21DDF294C();
    v25[1] = v28;
    (*(v21 + 104))(v12, *MEMORY[0x277D78AB0], v6);
    (*(v9 + 104))(v12, *MEMORY[0x277D78A40], v33);
    sub_21DDF202C();
    v37(v16);
    (*(v13 + 8))(v16, v34);
    return (*(v21 + 8))(v27, v6);
  }

  else
  {
    (*(v9 + 104))(v12, *MEMORY[0x277D78A48], v33);
    sub_21DDF202C();
    v37(v16);
    return (*(v13 + 8))(v16, v34);
  }
}

uint64_t sub_21DDDF9E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21DDDA03C;

  return VisualActionPredictionClient.loadBundleRankingMap()();
}

uint64_t sub_21DDDFA78()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21DDDA03C;

  return sub_21DDDF9E8();
}

uint64_t VisualActionPredictionClient.loadBundleRankingMap()()
{
  v1[3] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B78, &qword_21DDF3060) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B80, &qword_21DDF3068);
  v1[5] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B88, &qword_21DDF3070) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = sub_21DDF251C();
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v9 = sub_21DDF184C();
  v1[11] = v9;
  v10 = *(v9 - 8);
  v1[12] = v10;
  v11 = *(v10 + 64) + 15;
  v1[13] = swift_task_alloc();
  v12 = *(*(sub_21DDF242C() - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v13 = sub_21DDF1E8C();
  v1[15] = v13;
  v14 = *(v13 - 8);
  v1[16] = v14;
  v15 = *(v14 + 64) + 15;
  v1[17] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B90, &qword_21DDF3078) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v17 = sub_21DDF1EDC();
  v1[22] = v17;
  v18 = *(v17 - 8);
  v1[23] = v18;
  v19 = *(v18 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v20 = sub_21DDF1F6C();
  v1[26] = v20;
  v21 = *(v20 - 8);
  v1[27] = v21;
  v22 = *(v21 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v23 = sub_21DDF254C();
  v1[31] = v23;
  v24 = *(v23 - 8);
  v1[32] = v24;
  v25 = *(v24 + 64) + 15;
  v1[33] = swift_task_alloc();
  v26 = sub_21DDF26DC();
  v1[34] = v26;
  v27 = *(v26 - 8);
  v1[35] = v27;
  v28 = *(v27 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DDDFF84, 0, 0);
}

uint64_t sub_21DDDFF84()
{
  v1 = v0[38];
  sub_21DDF26BC();
  v2 = sub_21DDF26CC();
  v3 = sub_21DDF280C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21DDD3000, v2, v3, "Starting to load bundle ranking map...", v4, 2u);
    MEMORY[0x223D49D80](v4, -1, -1);
  }

  v5 = v0[38];
  v6 = v0[34];
  v7 = v0[35];

  v8 = *(v7 + 8);
  v0[39] = v8;
  v8(v5, v6);
  v9 = sub_21DDF1EAC();
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v0[27];
    v12 = v0[23];
    v13 = v0[16];
    v14 = v0[12];
    v52 = MEMORY[0x277D84F90];
    sub_21DDD89E0(0, v10, 0);
    v15 = *(v12 + 16);
    v12 += 16;
    v16 = v52;
    v17 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v44 = *(v12 + 56);
    v45 = v15;
    v43 = (v14 + 56);
    v42 = *MEMORY[0x277D786B8];
    v46 = v11;
    v40 = (v12 - 8);
    v41 = (v13 + 104);
    do
    {
      v50 = v16;
      v51 = v10;
      v18 = v0[25];
      v20 = v0[21];
      v19 = v0[22];
      v48 = v19;
      v49 = v0[30];
      v21 = v0[17];
      v22 = v0[14];
      v47 = v0[15];
      v23 = v0[13];
      v24 = v0[11];
      v45(v18, v17);
      sub_21DDF183C();
      (*v43)(v20, 0, 1, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B98, &qword_21DDF3080);
      v25 = *(sub_21DDF1E9C() - 8);
      v26 = *(v25 + 72);
      v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      *(swift_allocObject() + 16) = xmmword_21DDF2FE0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90BA0, &qword_21DDF3088);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_21DDF2FE0;
      *(v28 + 32) = sub_21DDF1ECC();
      *(v28 + 40) = v29;
      sub_21DDF241C();
      sub_21DDF22CC();
      (*v41)(v21, v42, v47);
      sub_21DDF183C();
      sub_21DDF1E7C();
      sub_21DDF183C();
      v16 = v50;
      sub_21DDF1F4C();
      (*v40)(v18, v48);
      v31 = *(v50 + 16);
      v30 = *(v50 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_21DDD89E0(v30 > 1, v31 + 1, 1);
        v16 = v50;
      }

      v32 = v0[30];
      v33 = v0[26];
      *(v16 + 16) = v31 + 1;
      (*(v46 + 32))(v16 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v31, v32, v33);
      v17 += v44;
      v10 = v51 - 1;
    }

    while (v51 != 1);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v0[40] = v16;
  v0[2] = v0[3];
  v34 = swift_task_alloc();
  v0[41] = v34;
  *(v34 + 16) = v0 + 2;
  *(v34 + 24) = v16;
  v35 = *(MEMORY[0x277D85A40] + 4);
  v36 = swift_task_alloc();
  v0[42] = v36;
  *v36 = v0;
  v36[1] = sub_21DDE0478;
  v37 = v0[33];
  v38 = v0[31];

  return MEMORY[0x2822008A0](v37, 0, 0, 0x646E75426B6E6172, 0xEF293A5F2873656CLL, sub_21DDEC2D8, v34, v38);
}

uint64_t sub_21DDE0478()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v7 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = sub_21DDE0EBC;
  }

  else
  {
    v5 = *(v2 + 328);

    v4 = sub_21DDE0594;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_21DDE0594()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = sub_21DDF253C();
  (*(v2 + 8))(v1, v3);
  v83 = *(v4 + 16);
  v77 = v0;
  if (!v83)
  {

    v12 = MEMORY[0x277D84F98];
    v13 = v0;
    goto LABEL_27;
  }

  v5 = 0;
  v6 = v0[9];
  v7 = *(v6 + 16);
  v6 += 16;
  v81 = v4 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
  v82 = v7;
  v8 = v0[27];
  v9 = v0[12];
  v100 = (v9 + 56);
  v10 = (v9 + 48);
  v86 = (v9 + 32);
  v92 = (v9 + 8);
  v96 = (v8 + 8);
  v75 = (v8 + 32);
  v76 = v8;
  v11 = v0[23];
  v73 = (v11 + 32);
  v74 = (v11 + 48);
  v72 = (v11 + 8);
  v12 = MEMORY[0x277D84F98];
  v94 = v0[5];
  v79 = (v6 - 8);
  v80 = v0[40];
  v78 = *(v6 + 56);
  v13 = v0;
  v98 = v10;
  v7(v13[10], v81, v13[8]);
  while (2)
  {
    v14 = *(v80 + 16);
    if (!v14)
    {
      goto LABEL_4;
    }

    v84 = v5;
    v85 = v12;
    v15 = v13[40] + ((*(v76 + 80) + 32) & ~*(v76 + 80));
    v103 = *(v76 + 72);
    v105 = *(v76 + 16);
    while (1)
    {
      v107 = v14;
      v19 = v13[19];
      v18 = v13[20];
      v21 = v13[10];
      v20 = v13[11];
      v22 = v13[6];
      v105(v13[28], v15, v13[26]);
      sub_21DDF1F0C();
      sub_21DDF24EC();
      (*v100)(v19, 0, 1, v20);
      v23 = *(v94 + 48);
      sub_21DDDA28C(v18, v22, &qword_27CE90B90, &qword_21DDF3078);
      sub_21DDDA28C(v19, v22 + v23, &qword_27CE90B90, &qword_21DDF3078);
      v24 = *v98;
      if ((*v98)(v22, 1, v20) == 1)
      {
        break;
      }

      v25 = v13[11];
      sub_21DDDA28C(v13[6], v13[18], &qword_27CE90B90, &qword_21DDF3078);
      v26 = v24(v22 + v23, 1, v25);
      v27 = v13[19];
      v28 = v13[20];
      v29 = v13[18];
      if (v26 == 1)
      {
        v30 = v13[11];
        sub_21DDDDB04(v13[19], &qword_27CE90B90, &qword_21DDF3078);
        sub_21DDDDB04(v28, &qword_27CE90B90, &qword_21DDF3078);
        (*v92)(v29, v30);
        goto LABEL_9;
      }

      v88 = v13[20];
      v31 = v13[13];
      v32 = v13[11];
      v90 = v13[6];
      (*v86)(v31, v22 + v23, v32);
      sub_21DDED4F0(&qword_281222970, MEMORY[0x277CC95F0]);
      v87 = sub_21DDF273C();
      v33 = *v92;
      (*v92)(v31, v32);
      sub_21DDDDB04(v27, &qword_27CE90B90, &qword_21DDF3078);
      sub_21DDDDB04(v88, &qword_27CE90B90, &qword_21DDF3078);
      v33(v29, v32);
      sub_21DDDDB04(v90, &qword_27CE90B90, &qword_21DDF3078);
      if (v87)
      {
        goto LABEL_17;
      }

LABEL_10:
      (*v96)(v13[28], v13[26]);
      v15 += v103;
      v14 = v107 - 1;
      if (v107 == 1)
      {
        v5 = v84;
        v12 = v85;
        goto LABEL_4;
      }
    }

    v16 = v13[20];
    v17 = v13[11];
    sub_21DDDDB04(v13[19], &qword_27CE90B90, &qword_21DDF3078);
    sub_21DDDDB04(v16, &qword_27CE90B90, &qword_21DDF3078);
    if (v24(v22 + v23, 1, v17) != 1)
    {
LABEL_9:
      sub_21DDDDB04(v13[6], &qword_27CE90B80, &qword_21DDF3068);
      goto LABEL_10;
    }

    sub_21DDDDB04(v13[6], &qword_27CE90B90, &qword_21DDF3078);
LABEL_17:
    v34 = v13[28];
    v35 = v13[29];
    v36 = v13[26];
    v37 = v77[7];
    (*v75)(v35, v34, v36);
    sub_21DDF1F3C();
    (*v96)(v35, v36);
    v38 = sub_21DDF22DC();
    v39 = *(v38 - 8);
    v40 = v37;
    v13 = v77;
    v12 = v85;
    if ((*(v39 + 48))(v40, 1, v38) == 1)
    {
      sub_21DDDDB04(v77[7], &qword_27CE90B88, &qword_21DDF3070);
      v5 = v84;
    }

    else
    {
      v41 = v77[7];
      v42 = sub_21DDF22BC();
      (*(v39 + 8))(v41, v38);
      if (v42[2])
      {
        v43 = v77[22];
        v44 = v77[4];
        v45 = v42[4];
        v46 = v42[5];

        sub_21DDF1EBC();
        if ((*v74)(v44, 1, v43) == 1)
        {
          sub_21DDDDB04(v77[4], &qword_27CE90B78, &qword_21DDF3060);
        }

        else
        {
          v47 = v77[24];
          v48 = v77[22];
          v49 = v77[10];
          (*v73)(v47, v77[4], v48);
          sub_21DDF250C();
          v51 = v50;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_21DDEB5F8(v47, isUniquelyReferenced_nonNull_native, v51);
          (*v72)(v47, v48);
        }

        v5 = v84;
        v13 = v77;
      }

      else
      {

        v5 = v84;
        v13 = v77;
      }
    }

LABEL_4:
    ++v5;
    (*v79)(v13[10], v13[8]);
    if (v5 != v83)
    {
      v82(v13[10], v81 + v5 * v78, v13[8]);
      continue;
    }

    break;
  }

LABEL_27:
  v53 = v13;
  v54 = v13[43];
  v55 = v53[40];
  v56 = v53[3];

  v57 = *(v56 + OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_lockedBundleRankingMap);
  *(swift_task_alloc() + 16) = v12;

  os_unfair_lock_lock((v57 + 24));
  sub_21DDEC2E0((v57 + 16));
  os_unfair_lock_unlock((v57 + 24));
  if (!v54)
  {
    v58 = v53[36];

    sub_21DDF26BC();
    v59 = sub_21DDF26CC();
    v60 = sub_21DDF280C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_21DDD3000, v59, v60, "Bundle ranking map loaded successfully", v61, 2u);
      MEMORY[0x223D49D80](v61, -1, -1);
    }

    v62 = v77[38];
    v63 = v77[37];
    v64 = v77[33];
    v66 = v77[29];
    v65 = v77[30];
    v67 = v77[28];
    v69 = v77[24];
    v68 = v77[25];
    v89 = v77[21];
    v91 = v77[20];
    v93 = v77[19];
    v95 = v77[18];
    v97 = v77[17];
    v99 = v77[14];
    v101 = v77[13];
    v102 = v77[10];
    v104 = v77[7];
    v106 = v77[6];
    v108 = v77[4];
    v70 = (v77[35] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v77[39])(v77[36], v77[34]);

    v71 = v77[1];

    v71();
  }
}

uint64_t sub_21DDE0EBC()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v4 = *(v0 + 296);

  sub_21DDF26BC();
  MEMORY[0x223D49C80](v1);
  v5 = sub_21DDF26CC();
  v6 = sub_21DDF27FC();
  MEMORY[0x223D49C70](v1);
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 344);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    MEMORY[0x223D49C80](v8);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_21DDD3000, v5, v6, "Error loading bundle ranking map: %@", v9, 0xCu);
    sub_21DDDDB04(v10, &qword_27CE90BA8, &unk_21DDF3090);
    MEMORY[0x223D49D80](v10, -1, -1);
    MEMORY[0x223D49D80](v9, -1, -1);

    MEMORY[0x223D49C70](v8);
  }

  else
  {
    MEMORY[0x223D49C70](*(v0 + 344));
  }

  v12 = *(v0 + 304);
  v13 = *(v0 + 288);
  v14 = *(v0 + 264);
  v16 = *(v0 + 232);
  v15 = *(v0 + 240);
  v17 = *(v0 + 224);
  v19 = *(v0 + 192);
  v18 = *(v0 + 200);
  v23 = *(v0 + 168);
  v24 = *(v0 + 160);
  v25 = *(v0 + 152);
  v26 = *(v0 + 144);
  v27 = *(v0 + 136);
  v28 = *(v0 + 112);
  v29 = *(v0 + 104);
  v30 = *(v0 + 80);
  v31 = *(v0 + 56);
  v32 = *(v0 + 48);
  v33 = *(v0 + 32);
  v20 = (*(v0 + 280) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v0 + 312))(*(v0 + 296), *(v0 + 272));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t *VisualActionPredictionClient.deinit()
{
  v1 = v0;
  v2 = sub_21DDF26DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  sub_21DDF26BC();

  v10 = sub_21DDF26CC();
  v11 = sub_21DDF27EC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v36 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v37[0] = v14;
    *v13 = 136315394;
    v15 = *v1;
    v16 = sub_21DDF295C();
    v18 = sub_21DDEA3EC(v16, v17, v37);
    v35 = v7;
    v19 = v3;
    v20 = v18;

    *(v13 + 4) = v20;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_21DDEA3EC(0x74696E696564, 0xE600000000000000, v37);
    _os_log_impl(&dword_21DDD3000, v10, v11, "%s.%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D49D80](v14, -1, -1);
    v21 = v13;
    v2 = v36;
    MEMORY[0x223D49D80](v21, -1, -1);

    v22 = *(v19 + 8);
    v22(v9, v2);
    v7 = v35;
  }

  else
  {

    v22 = *(v3 + 8);
    v22(v9, v2);
  }

  v23 = v1[3];
  v24 = *v1;

  v37[0] = sub_21DDF295C();
  v37[1] = v25;
  MEMORY[0x223D497D0](46, 0xE100000000000000);
  MEMORY[0x223D497D0](0x74696E696564, 0xE600000000000000);
  sub_21DDF23EC();

  sub_21DDF26BC();
  v26 = sub_21DDF26CC();
  v27 = sub_21DDF280C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_21DDD3000, v26, v27, "Client deinitialized", v28, 2u);
    MEMORY[0x223D49D80](v28, -1, -1);
  }

  v22(v7, v2);
  v29 = v1[3];

  v30 = OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_workflow;
  v31 = sub_21DDF26AC();
  (*(*(v31 - 8) + 8))(v1 + v30, v31);
  v32 = *(v1 + OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_customActionHandlerMap);

  v33 = *(v1 + OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_lockedBundleRankingMap);

  return v1;
}

uint64_t VisualActionPredictionClient.__deallocating_deinit()
{
  VisualActionPredictionClient.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21DDE15BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    sub_21DDEB79C(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v10 = sub_21DDF1E3C();
    result = (*(*(v10 - 8) + 8))(a3, v10);
    *v3 = v26;
  }

  else
  {
    v12 = *v3;
    v13 = sub_21DDEAA68(a3);
    if (v14)
    {
      v15 = v13;
      v16 = *v4;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v4;
      v27 = *v4;
      if (!v17)
      {
        sub_21DDEBF04();
        v18 = v27;
      }

      v19 = *(v18 + 48);
      v20 = sub_21DDF1E3C();
      v21 = *(v20 - 8);
      v22 = *(v21 + 8);
      v22(v19 + *(v21 + 72) * v15, v20);
      v23 = *(*(v18 + 56) + 16 * v15 + 8);

      sub_21DDEB2D8(v15, v18);
      result = (v22)(a3, v20);
      *v4 = v18;
    }

    else
    {
      v24 = sub_21DDF1E3C();
      v25 = *(*(v24 - 8) + 8);

      return v25(a3, v24);
    }
  }

  return result;
}

uint64_t VisualActionPredictionClient.prewarm(callbackQueue:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a2;
  v31 = a1;
  v6 = sub_21DDF26DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DDF20BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DDF20AC();
  Current = CFAbsoluteTimeGetCurrent();
  sub_21DDF26BC();
  v17 = sub_21DDF26CC();
  v18 = sub_21DDF280C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = v11;
    v20 = v6;
    v21 = a3;
    v22 = v4;
    v23 = v19;
    *v19 = 0;
    _os_log_impl(&dword_21DDD3000, v17, v18, "Sending prewarm request...", v19, 2u);
    v24 = v23;
    v4 = v22;
    a3 = v21;
    v6 = v20;
    v11 = v29;
    MEMORY[0x223D49D80](v24, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v25 = *(v4 + 24);
  v26 = swift_allocObject();
  v26[2] = Current;
  *(v26 + 3) = v30;
  *(v26 + 4) = a3;
  sub_21DDED4F0(&qword_281222850, MEMORY[0x277D787C8]);

  sub_21DDF23BC();

  return (*(v12 + 8))(v15, v11);
}

uint64_t VisualActionPredictionClient.predictActions(for:options:callbackQueue:_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v77 = a5;
  v78 = a3;
  v81 = a4;
  v82 = a1;
  v70 = a2;
  v76 = sub_21DDF26DC();
  v74 = *(v76 - 8);
  v5 = *(v74 + 64);
  MEMORY[0x28223BE20](v76);
  v67 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_21DDF233C();
  v69 = *(v71 - 8);
  v7 = *(v69 + 8);
  MEMORY[0x28223BE20](v71);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_21DDF221C();
  v84 = *(v80 - 8);
  v10 = *(v84 + 64);
  v11 = MEMORY[0x28223BE20](v80);
  v65 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v72 = v15;
  v73 = &v65 - v14;
  MEMORY[0x28223BE20](v13);
  v79 = &v65 - v16;
  v66 = sub_21DDF1F9C();
  v17 = *(v66 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v66);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21DDF26AC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21DDF1F6C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_21DDF207C();
  v75 = *(v83 - 8);
  v31 = *(v75 + 64);
  MEMORY[0x28223BE20](v83);
  v33 = &v65 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v26;
  v35 = v67;
  (*(v27 + 16))(v30, v82, v34);
  v36 = v68;
  (*(v22 + 16))(v25, v68 + OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_workflow, v21);
  (*(v17 + 16))(v20, v70, v66);
  v37 = v79;
  v82 = v33;
  sub_21DDF206C();
  Current = CFAbsoluteTimeGetCurrent();
  sub_21DDF220C();
  sub_21DDF1F8C();
  v70 = sub_21DDF232C();
  (*(v69 + 1))(v9, v71);
  sub_21DDF26BC();
  v39 = sub_21DDF26CC();
  v40 = sub_21DDF280C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_21DDD3000, v39, v40, "Sending prediction request...", v41, 2u);
    MEMORY[0x223D49D80](v41, -1, -1);
  }

  (*(v74 + 8))(v35, v76);
  v42 = *(v36 + 24);
  v43 = v84;
  v44 = *(v84 + 16);
  v45 = v73;
  v46 = v80;
  v71 = v84 + 16;
  v69 = v44;
  v44(v73, v37, v80);
  v47 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v48 = (v72 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = v37;
  v50 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8;
  v68 = *(v43 + 80);
  v52 = swift_allocObject();
  v53 = *(v43 + 32);
  v72 = v47;
  v54 = v52 + v47;
  v55 = v53;
  v53(v54, v45, v46);
  v76 = v48;
  *(v52 + v48) = Current;
  v74 = v50;
  v56 = (v52 + v50);
  v57 = v49;
  v58 = v77;
  *v56 = v81;
  v56[1] = v58;
  v59 = v70;
  *(v52 + v51) = v70;
  sub_21DDED4F0(&qword_281222858, MEMORY[0x277D787B8]);

  sub_21DDF23BC();

  if (v59)
  {
    v60 = v65;
    v69(v65, v49, v46);
    v61 = v74;
    v62 = swift_allocObject();
    v55(v62 + v72, v60, v46);
    *(v62 + v76) = Current;
    v63 = (v62 + v61);
    *v63 = v81;
    v63[1] = v58;

    sub_21DDF236C();

    v57 = v79;
    v46 = v80;
  }

  (*(v84 + 8))(v57, v46);
  return (*(v75 + 8))(v82, v83);
}

uint64_t sub_21DDE220C(uint64_t a1, double a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v51 = a5;
  v52 = a4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B08, &qword_21DDF31E0);
  v9 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v50 = (&v46 - v10);
  v11 = sub_21DDF26DC();
  v47 = *(v11 - 8);
  v48 = v11;
  v12 = *(v47 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  v18 = sub_21DDF209C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C78, &qword_21DDF31E8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (&v46 - v25);
  result = sub_21DDF21FC();
  if (result)
  {
    return result;
  }

  v28 = CFAbsoluteTimeGetCurrent() - a2;
  sub_21DDDA28C(a1, v26, &qword_27CE90C78, &qword_21DDF31E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v26;
    sub_21DDF26BC();
    MEMORY[0x223D49C80](v29);
    v30 = sub_21DDF26CC();
    v31 = sub_21DDF27FC();
    MEMORY[0x223D49C70](v29);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v54 = v33;
      *v32 = 136315394;
      ErrorValue = swift_getErrorValue();
      v35 = *(*(v53 - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue);
      (*(v37 + 16))(&v46 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
      v38 = sub_21DDF274C();
      v40 = sub_21DDEA3EC(v38, v39, &v54);

      *(v32 + 4) = v40;
      *(v32 + 12) = 2050;
      *(v32 + 14) = v28;
      _os_log_impl(&dword_21DDD3000, v30, v31, "Received prediction failure %s. (latency = %{public}f)", v32, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x223D49D80](v33, -1, -1);
      MEMORY[0x223D49D80](v32, -1, -1);
    }

    (*(v47 + 8))(v15, v48);
    v41 = v50;
    *v50 = v29;
    swift_storeEnumTagMultiPayload();
    MEMORY[0x223D49C80](v29);
    v52(v41);
    MEMORY[0x223D49C70](v29);
    result = sub_21DDDDB04(v41, &qword_27CE90B08, &qword_21DDF31E0);
    if (!a6)
    {
      return result;
    }

LABEL_10:

    sub_21DDF235C();
  }

  (*(v19 + 32))(v22, v26, v18);
  sub_21DDF26BC();
  v42 = sub_21DDF26CC();
  v43 = sub_21DDF280C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 134349056;
    *(v44 + 4) = v28;
    _os_log_impl(&dword_21DDD3000, v42, v43, "Received prediction response. (latency = %{public}f)", v44, 0xCu);
    MEMORY[0x223D49D80](v44, -1, -1);
  }

  (*(v47 + 8))(v17, v48);
  v45 = v50;
  sub_21DDF208C();
  swift_storeEnumTagMultiPayload();
  v52(v45);
  sub_21DDDDB04(v45, &qword_27CE90B08, &qword_21DDF31E0);
  result = (*(v19 + 8))(v22, v18);
  if (a6)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t VisualActionPredictionClient.executeAction(_:for:with:options:callbackQueue:_:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v91 = a7;
  v92 = a5;
  v95 = a6;
  v96 = a3;
  v83 = a4;
  v80 = a2;
  v78 = a1;
  v7 = sub_21DDF26DC();
  v89 = *(v7 - 8);
  v90 = v7;
  v8 = *(v89 + 64);
  MEMORY[0x28223BE20](v7);
  v82 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DDF233C();
  v84 = *(v10 - 8);
  v85 = v10;
  v11 = *(v84 + 64);
  MEMORY[0x28223BE20](v10);
  v79 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_21DDF221C();
  v98 = *(v94 - 8);
  v13 = *(v98 + 64);
  v14 = MEMORY[0x28223BE20](v94);
  v71 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v87 = v18;
  v88 = &v71 - v17;
  MEMORY[0x28223BE20](v16);
  v93 = &v71 - v19;
  v77 = sub_21DDF24CC();
  v76 = *(v77 - 8);
  v20 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v75 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_21DDF26AC();
  v22 = *(v74 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v74);
  v73 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_21DDF222C();
  v25 = *(v72 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v72);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_21DDF1F6C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_21DDF1E4C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v71 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_21DDF20FC();
  v86 = *(v97 - 8);
  v39 = *(v86 + 64);
  MEMORY[0x28223BE20](v97);
  v41 = &v71 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v38, v78, v34);
  v42 = v81;
  (*(v30 + 16))(v33, v80, v29);
  (*(v25 + 16))(v28, v96, v72);
  (*(v22 + 16))(v73, v42 + OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_workflow, v74);
  (*(v76 + 16))(v75, v83, v77);
  v96 = v41;
  v43 = v82;
  v44 = v93;
  sub_21DDF20EC();
  Current = CFAbsoluteTimeGetCurrent();
  sub_21DDF220C();
  v46 = v79;
  sub_21DDF24BC();
  v83 = sub_21DDF232C();
  (*(v84 + 8))(v46, v85);
  sub_21DDF26BC();
  v47 = sub_21DDF26CC();
  v48 = sub_21DDF280C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_21DDD3000, v47, v48, "Sending execution request...", v49, 2u);
    MEMORY[0x223D49D80](v49, -1, -1);
  }

  (*(v89 + 8))(v43, v90);
  v50 = *(v42 + 24);
  v51 = v98;
  v52 = v88;
  v53 = v94;
  v84 = *(v98 + 16);
  v85 = v98 + 16;
  (v84)(v88, v44, v94);
  v54 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v55 = (v87 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 23) & 0xFFFFFFFFFFFFFFF8;
  v82 = *(v51 + 80);
  v58 = swift_allocObject();
  v59 = *(v51 + 32);
  v87 = v54;
  v60 = v58 + v54;
  v61 = v59;
  v59(v60, v52, v53);
  v89 = v56;
  v90 = v55;
  *(v58 + v55) = Current;
  v62 = (v58 + v56);
  v63 = v44;
  v64 = v91;
  *v62 = v95;
  v62[1] = v64;
  v65 = v83;
  *(v58 + v57) = v83;
  sub_21DDED4F0(&qword_27CE90BB0, MEMORY[0x277D787E8]);

  sub_21DDF23BC();

  if (v65)
  {
    v66 = v71;
    (v84)(v71, v44, v53);
    v67 = v89;
    v68 = swift_allocObject();
    v61(v68 + v87, v66, v53);
    *(v68 + v90) = Current;
    v69 = (v68 + v67);
    *v69 = v95;
    v69[1] = v64;

    sub_21DDF236C();

    v63 = v93;
    v53 = v94;
  }

  (*(v98 + 8))(v63, v53);
  return (*(v86 + 8))(v96, v97);
}

uint64_t sub_21DDE30D8(uint64_t a1, double a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v51 = a5;
  v52 = a4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AF8, &qword_21DDF31D0);
  v9 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v50 = (&v46 - v10);
  v11 = sub_21DDF26DC();
  v47 = *(v11 - 8);
  v48 = v11;
  v12 = *(v47 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  v18 = sub_21DDF211C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C70, &qword_21DDF31D8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (&v46 - v25);
  result = sub_21DDF21FC();
  if (result)
  {
    return result;
  }

  v28 = CFAbsoluteTimeGetCurrent() - a2;
  sub_21DDDA28C(a1, v26, &qword_27CE90C70, &qword_21DDF31D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v26;
    sub_21DDF26BC();
    MEMORY[0x223D49C80](v29);
    v30 = sub_21DDF26CC();
    v31 = sub_21DDF27FC();
    MEMORY[0x223D49C70](v29);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v54 = v33;
      *v32 = 136315394;
      ErrorValue = swift_getErrorValue();
      v35 = *(*(v53 - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue);
      (*(v37 + 16))(&v46 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
      v38 = sub_21DDF274C();
      v40 = sub_21DDEA3EC(v38, v39, &v54);

      *(v32 + 4) = v40;
      *(v32 + 12) = 2050;
      *(v32 + 14) = v28;
      _os_log_impl(&dword_21DDD3000, v30, v31, "Received execution failure: %s. (latency = %{public}f)", v32, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x223D49D80](v33, -1, -1);
      MEMORY[0x223D49D80](v32, -1, -1);
    }

    (*(v47 + 8))(v15, v48);
    v41 = v50;
    *v50 = v29;
    swift_storeEnumTagMultiPayload();
    MEMORY[0x223D49C80](v29);
    v52(v41);
    MEMORY[0x223D49C70](v29);
    result = sub_21DDDDB04(v41, &qword_27CE90AF8, &qword_21DDF31D0);
    if (!a6)
    {
      return result;
    }

LABEL_10:

    sub_21DDF235C();
  }

  (*(v19 + 32))(v22, v26, v18);
  sub_21DDF26BC();
  v42 = sub_21DDF26CC();
  v43 = sub_21DDF280C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 134349056;
    *(v44 + 4) = v28;
    _os_log_impl(&dword_21DDD3000, v42, v43, "Received execution response. (latency = %{public}f)", v44, 0xCu);
    MEMORY[0x223D49D80](v44, -1, -1);
  }

  (*(v47 + 8))(v17, v48);
  v45 = v50;
  sub_21DDF210C();
  swift_storeEnumTagMultiPayload();
  v52(v45);
  sub_21DDDDB04(v45, &qword_27CE90AF8, &qword_21DDF31D0);
  result = (*(v19 + 8))(v22, v18);
  if (a6)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_21DDE3668(uint64_t a1, double a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t *a6, uint64_t *a7, const char *a8)
{
  v29 = a8;
  v31 = a5;
  v32 = a4;
  v33 = a6;
  v34 = a7;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v10 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v12 = (&v29 - v11);
  v13 = sub_21DDF26DC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21DDF234C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, a1, v18);
  LODWORD(a1) = (*(v19 + 88))(v22, v18);
  v23 = *MEMORY[0x277D789A0];
  result = (*(v19 + 8))(v22, v18);
  if (a1 == v23)
  {
    result = sub_21DDF21FC();
    if ((result & 1) == 0)
    {
      sub_21DDF26BC();
      v25 = sub_21DDF26CC();
      v26 = sub_21DDF27FC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 134349056;
        *(v27 + 4) = CFAbsoluteTimeGetCurrent() - a2;
        _os_log_impl(&dword_21DDD3000, v25, v26, v29, v27, 0xCu);
        MEMORY[0x223D49D80](v27, -1, -1);
      }

      (*(v14 + 8))(v17, v13);
      sub_21DDF228C();
      sub_21DDED4F0(&qword_281222838, MEMORY[0x277D78990]);
      v28 = swift_allocError();
      sub_21DDF227C();
      *v12 = v28;
      swift_storeEnumTagMultiPayload();
      v32(v12);
      return sub_21DDDDB04(v12, v33, v34);
    }
  }

  return result;
}

uint64_t VisualActionPredictionClient.sendFeedback(_:callbackQueue:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a1;
  v38 = a3;
  v39 = a4;
  v40 = a2;
  v4 = sub_21DDF26DC();
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DDF26AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DDF269C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21DDF20DC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v13;
  v24 = v35;
  (*(v14 + 16))(v17, v34, v23);
  (*(v9 + 16))(v12, v24 + OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_workflow, v8);
  sub_21DDF20CC();
  Current = CFAbsoluteTimeGetCurrent();
  sub_21DDF26BC();
  v26 = sub_21DDF26CC();
  v27 = sub_21DDF280C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_21DDD3000, v26, v27, "Sending feedback request...", v28, 2u);
    MEMORY[0x223D49D80](v28, -1, -1);
  }

  (*(v36 + 8))(v7, v37);
  v29 = *(v24 + 24);
  v30 = swift_allocObject();
  v30[2] = Current;
  v31 = v39;
  *(v30 + 3) = v38;
  *(v30 + 4) = v31;
  sub_21DDED4F0(&qword_27CE90BB8, MEMORY[0x277D787D8]);

  sub_21DDF23BC();

  return (*(v19 + 8))(v22, v18);
}

uint64_t sub_21DDE3D90(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t *a4, uint64_t *a5, const char *a6, const char *a7, double a8)
{
  v43 = a7;
  v44 = a3;
  v45 = a2;
  v13 = sub_21DDF26DC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v42 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (v42 - v23);
  v25 = CFAbsoluteTimeGetCurrent() - a8;
  sub_21DDDA28C(a1, v24, a4, a5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v24;
    sub_21DDF26BC();
    MEMORY[0x223D49C80](v26);
    v27 = sub_21DDF26CC();
    v28 = sub_21DDF27FC();
    MEMORY[0x223D49C70](v26);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v47 = v30;
      *v29 = 136315394;
      ErrorValue = swift_getErrorValue();
      v42[1] = v42;
      v32 = *(*(v46 - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue);
      (*(v34 + 16))(v42 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
      v35 = sub_21DDF274C();
      v37 = sub_21DDEA3EC(v35, v36, &v47);

      *(v29 + 4) = v37;
      *(v29 + 12) = 2050;
      *(v29 + 14) = v25;
      _os_log_impl(&dword_21DDD3000, v27, v28, v43, v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x223D49D80](v30, -1, -1);
      MEMORY[0x223D49D80](v29, -1, -1);
    }

    (*(v14 + 8))(v18, v13);
    MEMORY[0x223D49C80](v26);
    v45(v26, 1);
    MEMORY[0x223D49C70](v26);
    return MEMORY[0x223D49C70](v26);
  }

  else
  {
    sub_21DDF26BC();
    v39 = sub_21DDF26CC();
    v40 = sub_21DDF280C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134349056;
      *(v41 + 4) = v25;
      _os_log_impl(&dword_21DDD3000, v39, v40, a6, v41, 0xCu);
      MEMORY[0x223D49D80](v41, -1, -1);
    }

    (*(v14 + 8))(v20, v13);
    v45(0, 0);
    return sub_21DDDDB04(v24, a4, a5);
  }
}

uint64_t VisualActionPredictionClient.registerCustomActionHandler(for:on:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a3;
  v36 = a4;
  v37 = a1;
  v7 = sub_21DDF26DC();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DDF1E3C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21DDF205C();
  v40 = *(v16 - 8);
  v41 = v16;
  v17 = *(v40 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v20 = a2;
  }

  else
  {
    v20 = *(v4 + 16);
  }

  v21 = swift_allocObject();
  v22 = v35;
  v23 = v36;
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v23;
  v24 = a2;
  v25 = v20;

  v26 = v37;
  sub_21DDE4A28(v37, sub_21DDEC704, v21);
  (*(v12 + 16))(v15, v26, v11);
  sub_21DDF204C();
  Current = CFAbsoluteTimeGetCurrent();
  sub_21DDF26BC();
  v28 = sub_21DDF26CC();
  v29 = sub_21DDF280C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_21DDD3000, v28, v29, "Sending custom action registration request (register)...", v30, 2u);
    MEMORY[0x223D49D80](v30, -1, -1);
  }

  (*(v38 + 8))(v10, v39);
  v31 = *(v5 + 24);
  *(swift_allocObject() + 16) = Current;
  sub_21DDED4F0(&qword_27CE90BC0, MEMORY[0x277D787A8]);
  v32 = v41;
  sub_21DDF23BC();

  return (*(v40 + 8))(v19, v32);
}

uint64_t sub_21DDE4550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a7;
  v35 = a6;
  v44 = a5;
  v37 = a3;
  v38 = a4;
  v41 = sub_21DDF26EC();
  v43 = *(v41 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  v39 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_21DDF271C();
  v40 = *(v42 - 8);
  v11 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v36 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DDF222C();
  v33 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21DDF1F6C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, a1, v17);
  (*(v14 + 16))(v16, a2, v13);
  v21 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v22 = (v19 + *(v14 + 80) + v21) & ~*(v14 + 80);
  v23 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = v34;
  *(v24 + 16) = v35;
  *(v24 + 24) = v25;
  (*(v18 + 32))(v24 + v21, v20, v17);
  (*(v14 + 32))(v24 + v22, v16, v33);
  v26 = (v24 + v23);
  v27 = v38;
  *v26 = v37;
  v26[1] = v27;
  aBlock[4] = sub_21DDECCBC;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21DDE49E4;
  aBlock[3] = &block_descriptor_80;
  v28 = _Block_copy(aBlock);

  v29 = v36;
  sub_21DDF26FC();
  v45 = MEMORY[0x277D84F90];
  sub_21DDED4F0(&qword_27CE90C40, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C48, &qword_21DDF31B8);
  sub_21DDECB8C(&qword_27CE90C50, &qword_27CE90C48, &qword_21DDF31B8);
  v30 = v39;
  v31 = v41;
  sub_21DDF285C();
  MEMORY[0x223D498A0](0, v29, v30, v28);
  _Block_release(v28);
  (*(v43 + 8))(v30, v31);
  (*(v40 + 8))(v29, v42);
}

uint64_t sub_21DDE49E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_21DDE4A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v51 = a2;
  v4 = sub_21DDF26EC();
  v58 = *(v4 - 8);
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v4);
  v57 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DDF271C();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  MEMORY[0x28223BE20](v7);
  v54 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DDF1E3C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v49 = v14;
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  v17 = sub_21DDF26DC();
  v47 = *(v17 - 8);
  v48 = v17;
  v18 = *(v47 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DDF26BC();
  v46 = *(v11 + 16);
  v46(v16, a1, v10);
  v21 = sub_21DDF26CC();
  v22 = sub_21DDF27EC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v44 = a1;
    v24 = v23;
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v24 = 136315138;
    sub_21DDED4F0(&qword_27CE90C58, MEMORY[0x277D78638]);
    v25 = sub_21DDF290C();
    v45 = v4;
    v27 = v26;
    (*(v11 + 8))(v16, v10);
    v28 = sub_21DDEA3EC(v25, v27, aBlock);
    v4 = v45;

    *(v24 + 4) = v28;
    _os_log_impl(&dword_21DDD3000, v21, v22, "Adding custom action handler for %s...", v24, 0xCu);
    v29 = v43;
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x223D49D80](v29, -1, -1);
    v30 = v24;
    a1 = v44;
    MEMORY[0x223D49D80](v30, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v16, v10);
  }

  (*(v47 + 8))(v20, v48);
  v31 = v52;
  v32 = *(v52 + 16);
  v33 = v50;
  v46(v50, a1, v10);
  v34 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v35 = (v49 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v31;
  (*(v11 + 32))(v36 + v34, v33, v10);
  v37 = (v36 + v35);
  v38 = v53;
  *v37 = v51;
  v37[1] = v38;
  aBlock[4] = sub_21DDECBE0;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21DDE49E4;
  aBlock[3] = &block_descriptor_68;
  v39 = _Block_copy(aBlock);

  v40 = v54;
  sub_21DDF26FC();
  v59 = MEMORY[0x277D84F90];
  sub_21DDED4F0(&qword_27CE90C40, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C48, &qword_21DDF31B8);
  sub_21DDECB8C(&qword_27CE90C50, &qword_27CE90C48, &qword_21DDF31B8);
  v41 = v57;
  sub_21DDF285C();
  MEMORY[0x223D498A0](0, v40, v41, v39);
  _Block_release(v39);
  (*(v58 + 8))(v41, v4);
  (*(v55 + 8))(v40, v56);
}

uint64_t VisualActionPredictionClient.unregisterCustomActionHandler(for:)(uint64_t a1)
{
  v23 = sub_21DDF26DC();
  v3 = *(v23 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v23);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DDF1E3C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21DDF205C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v1;
  sub_21DDE5364(a1);
  (*(v8 + 16))(v11, a1, v7);
  sub_21DDF204C();
  Current = CFAbsoluteTimeGetCurrent();
  sub_21DDF26BC();
  v18 = sub_21DDF26CC();
  v19 = sub_21DDF280C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_21DDD3000, v18, v19, "Sending custom action registration request (unregister)...", v20, 2u);
    MEMORY[0x223D49D80](v20, -1, -1);
  }

  (*(v3 + 8))(v6, v23);
  v21 = *(v24 + 24);
  *(swift_allocObject() + 16) = Current;
  sub_21DDED4F0(&qword_27CE90BC0, MEMORY[0x277D787A8]);
  sub_21DDF23BC();

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_21DDE5364(uint64_t a1)
{
  v2 = sub_21DDF26EC();
  v51 = *(v2 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v2);
  v50 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DDF271C();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v5);
  v47 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DDF1E3C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v44 = v12;
  v45 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - v13;
  v15 = sub_21DDF26DC();
  v42 = *(v15 - 8);
  v43 = v15;
  v16 = *(v42 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DDF26BC();
  v41 = *(v9 + 16);
  v41(v14, a1, v8);
  v19 = sub_21DDF26CC();
  v20 = sub_21DDF27EC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v39 = a1;
    v22 = v21;
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v22 = 136315138;
    sub_21DDED4F0(&qword_27CE90C58, MEMORY[0x277D78638]);
    v23 = sub_21DDF290C();
    v40 = v2;
    v25 = v24;
    (*(v9 + 8))(v14, v8);
    v26 = sub_21DDEA3EC(v23, v25, aBlock);
    v2 = v40;

    *(v22 + 4) = v26;
    _os_log_impl(&dword_21DDD3000, v19, v20, "Removing custom action handler for %s...", v22, 0xCu);
    v27 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x223D49D80](v27, -1, -1);
    v28 = v22;
    a1 = v39;
    MEMORY[0x223D49D80](v28, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v14, v8);
  }

  (*(v42 + 8))(v18, v43);
  v30 = v45;
  v29 = v46;
  v31 = *(v46 + 16);
  v41(v45, a1, v8);
  v32 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v29;
  (*(v9 + 32))(v33 + v32, v30, v8);
  aBlock[4] = sub_21DDECB10;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21DDE49E4;
  aBlock[3] = &block_descriptor;
  v34 = _Block_copy(aBlock);

  v35 = v47;
  sub_21DDF26FC();
  v52 = MEMORY[0x277D84F90];
  sub_21DDED4F0(&qword_27CE90C40, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C48, &qword_21DDF31B8);
  sub_21DDECB8C(&qword_27CE90C50, &qword_27CE90C48, &qword_21DDF31B8);
  v36 = v50;
  sub_21DDF285C();
  MEMORY[0x223D498A0](0, v35, v36, v34);
  _Block_release(v34);
  (*(v51 + 8))(v36, v2);
  (*(v48 + 8))(v35, v49);
}

uint64_t sub_21DDE5938(uint64_t a1, double a2)
{
  v4 = sub_21DDF26DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C38, &qword_21DDF31B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v33 - v14);
  v16 = CFAbsoluteTimeGetCurrent() - a2;
  sub_21DDDA28C(a1, v15, &qword_27CE90C38, &qword_21DDF31B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v15;
    sub_21DDF26BC();
    MEMORY[0x223D49C80](v17);
    v18 = sub_21DDF26CC();
    v19 = sub_21DDF27FC();
    MEMORY[0x223D49C70](v17);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v34 = v21;
      *v20 = 136315394;
      ErrorValue = swift_getErrorValue();
      v33[0] = v33;
      v23 = *(*(v33[2] - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue);
      (*(v25 + 16))(v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      v26 = sub_21DDF274C();
      v28 = sub_21DDEA3EC(v26, v27, &v34);

      *(v20 + 4) = v28;
      *(v20 + 12) = 2050;
      *(v20 + 14) = v16;
      _os_log_impl(&dword_21DDD3000, v18, v19, "Received custom action registration failure: %s. (latency = %{public}f)", v20, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x223D49D80](v21, -1, -1);
      MEMORY[0x223D49D80](v20, -1, -1);

      MEMORY[0x223D49C70](v17);
    }

    else
    {
      MEMORY[0x223D49C70](v17);
    }

    return (*(v5 + 8))(v9, v4);
  }

  else
  {
    sub_21DDF26BC();
    v29 = sub_21DDF26CC();
    v30 = sub_21DDF280C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134349056;
      *(v31 + 4) = v16;
      _os_log_impl(&dword_21DDD3000, v29, v30, "Received custom action registration response. (latency = %{public}f)", v31, 0xCu);
      MEMORY[0x223D49D80](v31, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    return sub_21DDDDB04(v15, &qword_27CE90C38, &qword_21DDF31B0);
  }
}

uint64_t VisualActionPredictionClient.isBundleEligibleForAcceleratedAction(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[0] = a1;
  v35 = a2;
  v36 = a3;
  v3 = sub_21DDF26DC();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DDF26AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21DDF1F6C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21DDF1FBC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v12;
  v23 = v32[1];
  (*(v13 + 16))(v16, v32[0], v22);
  (*(v8 + 16))(v11, v23 + OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_workflow, v7);
  sub_21DDF1FAC();
  Current = CFAbsoluteTimeGetCurrent();
  sub_21DDF26BC();
  v25 = sub_21DDF26CC();
  v26 = sub_21DDF280C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_21DDD3000, v25, v26, "Sending accelerated action eligibility request...", v27, 2u);
    MEMORY[0x223D49D80](v27, -1, -1);
  }

  (*(v33 + 8))(v6, v34);
  v28 = *(v23 + 24);
  v29 = swift_allocObject();
  v29[2] = Current;
  v30 = v36;
  *(v29 + 3) = v35;
  *(v29 + 4) = v30;
  sub_21DDED4F0(&qword_27CE90BC8, MEMORY[0x277D78788]);

  sub_21DDF23BC();

  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_21DDE60F8(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, double a4)
{
  v43 = a3;
  v44 = a2;
  v6 = sub_21DDF26DC();
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v13 = sub_21DDF1FDC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C30, &qword_21DDF31A8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v40 - v20);
  v22 = CFAbsoluteTimeGetCurrent() - a4;
  sub_21DDDA28C(a1, v21, &qword_27CE90C30, &qword_21DDF31A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v21;
    sub_21DDF26BC();
    MEMORY[0x223D49C80](v23);
    v24 = sub_21DDF26CC();
    v25 = sub_21DDF27FC();
    MEMORY[0x223D49C70](v23);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v46 = v27;
      *v26 = 136315394;
      ErrorValue = swift_getErrorValue();
      v29 = *(*(v45 - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue);
      (*(v31 + 16))(&v40 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
      v32 = sub_21DDF274C();
      v34 = sub_21DDEA3EC(v32, v33, &v46);

      *(v26 + 4) = v34;
      *(v26 + 12) = 2050;
      *(v26 + 14) = v22;
      _os_log_impl(&dword_21DDD3000, v24, v25, "Received accelerated action eligibility failure: %s. (latency = %{public}f)", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x223D49D80](v27, -1, -1);
      MEMORY[0x223D49D80](v26, -1, -1);
    }

    (*(v41 + 8))(v10, v42);
    MEMORY[0x223D49C80](v23);
    v44(v23, 1);
    MEMORY[0x223D49C70](v23);
    return MEMORY[0x223D49C70](v23);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    sub_21DDF26BC();
    v36 = sub_21DDF26CC();
    v37 = sub_21DDF280C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134349056;
      *(v38 + 4) = v22;
      _os_log_impl(&dword_21DDD3000, v36, v37, "Received accelerated action eligibility response. (latency = %{public}f)", v38, 0xCu);
      MEMORY[0x223D49D80](v38, -1, -1);
    }

    (*(v41 + 8))(v12, v42);
    v39 = sub_21DDF1FCC();
    v44(v39 & 1, 0);
    return (*(v14 + 8))(v17, v13);
  }
}

BOOL VisualActionPredictionClient.fastIsBundleEligibleForAcceleratedAction(for:)(uint64_t a1)
{
  v21 = sub_21DDF254C();
  v2 = *(v21 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DDF251C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A98, &qword_21DDF2F08);
  v11 = sub_21DDF1F6C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21DDF2FE0;
  (*(v12 + 16))(v15 + v14, a1, v11);
  VisualActionPredictionClient.fastRankBundles(_:)(v15, v5);
  swift_setDeallocating();
  (*(v12 + 8))(v15 + v14, v11);
  swift_deallocClassInstance();
  v16 = sub_21DDF253C();
  (*(v2 + 8))(v5, v21);
  if (*(v16 + 16))
  {
    (*(v7 + 16))(v10, v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

    sub_21DDF250C();
    v18 = v17;
    (*(v7 + 8))(v10, v6);
    return v18 > 0.25;
  }

  else
  {

    return 0;
  }
}

uint64_t VisualActionPredictionClient.fastRankBundles(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a1;
  v68 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B78, &qword_21DDF3060);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v63 - v4;
  v6 = sub_21DDF1EDC();
  v90 = *(v6 - 8);
  v7 = v90[8];
  MEMORY[0x28223BE20](v6);
  v76 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B90, &qword_21DDF3078);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v63 - v11;
  v13 = sub_21DDF184C();
  v85 = *(v13 - 8);
  v14 = *(v85 + 8);
  v15 = MEMORY[0x28223BE20](v13);
  v75 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v89 = &v63 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90BD0, &qword_21DDF30A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v96 = &v63 - v20;
  v98 = sub_21DDF251C();
  v78 = *(v98 - 8);
  v21 = *(v78 + 64);
  MEMORY[0x28223BE20](v98);
  v86 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_21DDF1F6C();
  v97 = *(v88 - 8);
  v23 = *(v97 + 64);
  MEMORY[0x28223BE20](v88);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21DDF26DC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v65 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v63 - v31;
  Current = CFAbsoluteTimeGetCurrent();
  sub_21DDF26BC();
  v34 = sub_21DDF26CC();
  v35 = sub_21DDF280C();
  v36 = os_log_type_enabled(v34, v35);
  v87 = v6;
  if (v36)
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_21DDD3000, v34, v35, "Starting bundle ranking request...", v37, 2u);
    v38 = v37;
    v6 = v87;
    MEMORY[0x223D49D80](v38, -1, -1);
  }

  v39 = *(v27 + 8);
  v67 = v26;
  v66 = v27 + 8;
  v64 = v39;
  v39(v32, v26);
  v40 = *(v94 + 2);
  if (v40)
  {
    v84 = 0;
    v95 = *(v97 + 16);
    v41 = &v94[(*(v97 + 80) + 32) & ~*(v97 + 80)];
    v72 = OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_lockedBundleRankingMap;
    v83 = (v85 + 32);
    v93 = *(v97 + 72);
    v94 = v85 + 48;
    v82 = (v90 + 6);
    v71 = (v90 + 4);
    v97 += 16;
    v92 = (v97 - 8);
    v91 = (v78 + 56);
    v70 = (v90 + 1);
    v69 = (v85 + 16);
    v81 = (v85 + 8);
    v80 = (v78 + 48);
    v79 = (v78 + 32);
    v90 = MEMORY[0x277D84F90];
    v85 = v5;
    v43 = v88;
    v42 = v89;
    v74 = v12;
    v73 = v13;
    v95(v25, v41, v88);
    while (1)
    {
      sub_21DDF1F0C();
      if ((*v94)(v12, 1, v13) == 1)
      {
        break;
      }

      (*v83)(v42, v12, v13);
      sub_21DDF1F5C();
      if ((*v82)(v5, 1, v6) == 1)
      {
        sub_21DDDDB04(v5, &qword_27CE90B78, &qword_21DDF3060);
        (*v69)(v75, v42, v13);
        v44 = v96;
        sub_21DDF24FC();
        (*v92)(v25, v43);
        v45 = v98;
        (*v91)(v44, 0, 1, v98);
      }

      else
      {
        v46 = v76;
        v47 = (*v71)(v76, v5, v6);
        v48 = *(v77 + v72);
        MEMORY[0x28223BE20](v47);
        *(&v63 - 2) = v89;
        *(&v63 - 1) = v46;

        os_unfair_lock_lock((v48 + 24));
        v49 = v96;
        v50 = v84;
        sub_21DDEC738((v48 + 16));
        v44 = v49;
        v84 = v50;
        os_unfair_lock_unlock((v48 + 24));
        (*v92)(v25, v43);
        v5 = v85;
        v6 = v87;

        v45 = v98;
        (*v91)(v49, 0, 1, v98);
        v51 = v46;
        v12 = v74;
        v13 = v73;
        v42 = v89;
        (*v70)(v51, v6);
      }

      (*v81)(v42, v13);
      if ((*v80)(v44, 1, v45) == 1)
      {
        v43 = v88;
        goto LABEL_6;
      }

      v52 = *v79;
      (*v79)(v86, v44, v45);
      v53 = v90;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_21DDDB49C(0, v53[2] + 1, 1, v53);
      }

      v55 = v53[2];
      v54 = v53[3];
      if (v55 >= v54 >> 1)
      {
        v53 = sub_21DDDB49C(v54 > 1, v55 + 1, 1, v53);
      }

      v53[2] = v55 + 1;
      v56 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v90 = v53;
      v52(v53 + v56 + *(v78 + 72) * v55, v86, v98);
      v5 = v85;
      v6 = v87;
      v43 = v88;
LABEL_7:
      v41 += v93;
      if (!--v40)
      {
        goto LABEL_21;
      }

      v95(v25, v41, v43);
    }

    (*v92)(v25, v43);
    sub_21DDDDB04(v12, &qword_27CE90B90, &qword_21DDF3078);
    v44 = v96;
    (*v91)(v96, 1, 1, v98);
LABEL_6:
    sub_21DDDDB04(v44, &qword_27CE90BD0, &qword_21DDF30A0);
    goto LABEL_7;
  }

  v90 = MEMORY[0x277D84F90];
LABEL_21:
  v57 = CFAbsoluteTimeGetCurrent();
  v58 = v65;
  sub_21DDF26BC();
  v59 = sub_21DDF26CC();
  v60 = sub_21DDF280C();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 134349056;
    *(v61 + 4) = v57 - Current;
    _os_log_impl(&dword_21DDD3000, v59, v60, "Finished bundle ranking request. (latency = %{public}f)", v61, 0xCu);
    MEMORY[0x223D49D80](v61, -1, -1);
  }

  v64(v58, v67);
  return sub_21DDF252C();
}

uint64_t VisualActionPredictionClient.rankBundles(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a2;
  v31 = a3;
  v28 = sub_21DDF26DC();
  v5 = *(v28 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v28);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DDF26AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DDF213C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v10 + 16);
  v29 = v4;
  v19(v13, v4 + OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_workflow, v9);

  sub_21DDF212C();
  Current = CFAbsoluteTimeGetCurrent();
  sub_21DDF26BC();
  v21 = sub_21DDF26CC();
  v22 = sub_21DDF280C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_21DDD3000, v21, v22, "Sending bundle ranking request...", v23, 2u);
    MEMORY[0x223D49D80](v23, -1, -1);
  }

  (*(v5 + 8))(v8, v28);
  v24 = *(v29 + 24);
  v25 = swift_allocObject();
  v25[2] = Current;
  v26 = v31;
  *(v25 + 3) = v30;
  *(v25 + 4) = v26;
  sub_21DDED4F0(&qword_281222848, MEMORY[0x277D787F8]);

  sub_21DDF23BC();

  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_21DDE7668(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, double a4)
{
  v48 = a3;
  v49 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A88, &qword_21DDF2EF8);
  v6 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v47 = (&v43 - v7);
  v8 = sub_21DDF26DC();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  v15 = sub_21DDF217C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C28, &qword_21DDF31A0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v43 - v22);
  v24 = CFAbsoluteTimeGetCurrent() - a4;
  sub_21DDDA28C(a1, v23, &qword_27CE90C28, &qword_21DDF31A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v23;
    sub_21DDF26BC();
    MEMORY[0x223D49C80](v25);
    v26 = sub_21DDF26CC();
    v27 = sub_21DDF27FC();
    MEMORY[0x223D49C70](v25);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v51 = v29;
      *v28 = 136315394;
      ErrorValue = swift_getErrorValue();
      v31 = *(*(v50 - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue);
      (*(v33 + 16))(&v43 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
      v34 = sub_21DDF274C();
      v36 = sub_21DDEA3EC(v34, v35, &v51);

      *(v28 + 4) = v36;
      *(v28 + 12) = 2050;
      *(v28 + 14) = v24;
      _os_log_impl(&dword_21DDD3000, v26, v27, "Received bundle ranking failure: %s. (latency = %{public}f)", v28, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x223D49D80](v29, -1, -1);
      MEMORY[0x223D49D80](v28, -1, -1);
    }

    (*(v44 + 8))(v12, v45);
    v37 = v47;
    *v47 = v25;
    swift_storeEnumTagMultiPayload();
    MEMORY[0x223D49C80](v25);
    v49(v37);
    MEMORY[0x223D49C70](v25);
    return sub_21DDDDB04(v37, &qword_27CE90A88, &qword_21DDF2EF8);
  }

  else
  {
    (*(v16 + 32))(v19, v23, v15);
    sub_21DDF26BC();
    v39 = sub_21DDF26CC();
    v40 = sub_21DDF280C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134349056;
      *(v41 + 4) = v24;
      _os_log_impl(&dword_21DDD3000, v39, v40, "Received bundle ranking response. (latency = %{public}f)", v41, 0xCu);
      MEMORY[0x223D49D80](v41, -1, -1);
    }

    (*(v44 + 8))(v14, v45);
    v42 = v47;
    sub_21DDF216C();
    swift_storeEnumTagMultiPayload();
    v49(v42);
    sub_21DDDDB04(v42, &qword_27CE90A88, &qword_21DDF2EF8);
    return (*(v16 + 8))(v19, v15);
  }
}

uint64_t sub_21DDE7BC4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DDF184C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  (*(v9 + 16))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v10 = *a1;
  if (*(*a1 + 16))
  {
    v11 = sub_21DDEA994(a3);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);
    }
  }

  return sub_21DDF24FC();
}

uint64_t sub_21DDE7CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21DDF1E3C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DDF26DC();
  v31 = *(v13 - 8);
  v14 = *(v31 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v18 = OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_customActionHandlerMap;
  swift_beginAccess();

  v19 = *(a1 + v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(a1 + v18);
  *(a1 + v18) = 0x8000000000000000;
  sub_21DDEB79C(sub_21DDECC74, v17, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + v18) = v32;
  swift_endAccess();
  sub_21DDF26BC();
  (*(v9 + 16))(v12, a2, v8);
  v21 = sub_21DDF26CC();
  v22 = sub_21DDF27EC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v33 = v24;
    *v23 = 136315138;
    sub_21DDED4F0(&qword_27CE90C58, MEMORY[0x277D78638]);
    v25 = sub_21DDF290C();
    v30 = v13;
    v27 = v26;
    (*(v9 + 8))(v12, v8);
    v28 = sub_21DDEA3EC(v25, v27, &v33);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_21DDD3000, v21, v22, "Added custom action handler for %s.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x223D49D80](v24, -1, -1);
    MEMORY[0x223D49D80](v23, -1, -1);

    return (*(v31 + 8))(v16, v30);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
    return (*(v31 + 8))(v16, v13);
  }
}

uint64_t sub_21DDE8048(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t (*)(uint64_t a1, char a2), uint64_t))
{
  v8 = *a3;
  v7 = a3[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;

  a4(a1, a2, sub_21DDECC7C, v9);
}

uint64_t sub_21DDE80F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DDF26DC();
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DDF1E3C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = *(v8 + 16);
  v15(&v25 - v13, a2, v7);
  swift_beginAccess();
  sub_21DDE15BC(0, 0, v14);
  swift_endAccess();
  sub_21DDF26BC();
  v15(v12, a2, v7);
  v16 = sub_21DDF26CC();
  v17 = sub_21DDF27EC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136315138;
    sub_21DDED4F0(&qword_27CE90C58, MEMORY[0x277D78638]);
    v20 = sub_21DDF290C();
    v22 = v21;
    (*(v8 + 8))(v12, v7);
    v23 = sub_21DDEA3EC(v20, v22, &v28);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_21DDD3000, v16, v17, "Removed custom action handler for %s.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x223D49D80](v19, -1, -1);
    MEMORY[0x223D49D80](v18, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  return (*(v26 + 8))(v6, v27);
}

uint64_t sub_21DDE8420(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v42 = a7;
  v43 = a2;
  v44 = a5;
  v46 = a3;
  v47 = a4;
  v45 = sub_21DDF184C();
  v8 = *(v45 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v45);
  v40 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DDF1E3C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C98, &qword_21DDF3228);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v38 - v16;
  v18 = OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_customActionHandlerMap;
  swift_beginAccess();
  v19 = *(a1 + v18);
  v20 = v43;
  if (*(v19 + 16) && (v21 = sub_21DDEAA68(v43), (v22 & 1) != 0))
  {
    v23 = (*(v19 + 56) + 16 * v21);
    v24 = *v23;
    v38[1] = v23[1];
    v39 = v24;
    swift_endAccess();
    (*(v11 + 16))(v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v10);
    v25 = v40;
    v26 = v45;
    (*(v8 + 16))(v40, v44, v45);
    v27 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v28 = (v12 + *(v8 + 80) + v27) & ~*(v8 + 80);
    v29 = swift_allocObject();
    v30 = v47;
    *(v29 + 16) = v46;
    *(v29 + 24) = v30;
    (*(v11 + 32))(v29 + v27, v13, v10);
    (*(v8 + 32))(v29 + v28, v25, v26);
    v31 = swift_allocObject();
    *(v31 + 16) = sub_21DDED3D4;
    *(v31 + 24) = v29;
    v48[0] = sub_21DDED4BC;
    v48[1] = v31;

    v39(v41, v42, v48);
  }

  else
  {
    swift_endAccess();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CA0, &qword_21DDF3230);
    v34 = *(v33 + 48);
    v35 = *(v33 + 64);
    (*(v11 + 16))(v17, v20, v10);
    (*(v8 + 16))(&v17[v34], v44, v45);
    v17[v35] = 1;
    v36 = *MEMORY[0x277D78AA8];
    v37 = sub_21DDF24AC();
    (*(*(v37 - 8) + 104))(v17, v36, v37);
    swift_storeEnumTagMultiPayload();
    v46(v17);
    return sub_21DDDDB04(v17, &qword_27CE90C98, &qword_21DDF3228);
  }
}

uint64_t sub_21DDE8834(uint64_t a1, char a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C98, &qword_21DDF3228);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  if (a2)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CA8, &qword_21DDF3238);
    v15 = v14[12];
    v16 = v14[16];
    v17 = &v13[v14[20]];
    v18 = sub_21DDF1E3C();
    (*(*(v18 - 8) + 16))(v13, a5, v18);
    v19 = sub_21DDF184C();
    (*(*(v19 - 8) + 16))(&v13[v15], a6, v19);
    v13[v16] = 1;
    swift_getErrorValue();
    *v17 = sub_21DDF294C();
    v17[1] = v20;
    v21 = *MEMORY[0x277D78AB0];
    v22 = sub_21DDF24AC();
    (*(*(v22 - 8) + 104))(v13, v21, v22);
  }

  swift_storeEnumTagMultiPayload();
  a3(v13);
  return sub_21DDDDB04(v13, &qword_27CE90C98, &qword_21DDF3228);
}

uint64_t VisualActionPredictionClient.clearDatabase(bundleId:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_21DDF215C();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DDE8C18, 0, 0);
}

uint64_t sub_21DDE8C18()
{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];

  sub_21DDF214C();

  return MEMORY[0x2822009F8](sub_21DDE8CA0, 0, 0);
}

uint64_t sub_21DDE8CA0()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_21DDE8DDC;
  v4 = swift_continuation_init();
  v5 = *(v2 + 24);
  *(swift_allocObject() + 16) = v4;
  sub_21DDED4F0(&qword_27CE90BD8, MEMORY[0x277D78808]);
  sub_21DDF23BC();

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21DDE8DDC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 144) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_21DDE8F84;
  }

  else
  {
    v5 = v1[11];
    v1[19] = v1[10];
    v1[20] = v5;
    v4 = sub_21DDE8F00;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21DDE8F00()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];
  v2 = v0[19];
  v3 = v0[20];

  return v1(v2, v3);
}

uint64_t sub_21DDE8F84()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];
  v2 = v0[18];

  return v1();
}

uint64_t VisualActionPredictionClient.clearEngagementStream()()
{
  v1[12] = v0;
  v2 = sub_21DDF21DC();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DDE90C4, 0, 0);
}

uint64_t sub_21DDE90C4()
{
  v1 = *(v0 + 120);
  sub_21DDF21CC();

  return MEMORY[0x2822009F8](sub_21DDE912C, 0, 0);
}

uint64_t sub_21DDE912C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_21DDE9268;
  v4 = swift_continuation_init();
  v5 = *(v2 + 24);
  *(swift_allocObject() + 16) = v4;
  sub_21DDED4F0(&qword_27CE90BE0, MEMORY[0x277D78868]);
  sub_21DDF23BC();

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21DDE9268()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 128) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_21DDE9410;
  }

  else
  {
    v5 = v1[11];
    v1[17] = v1[10];
    v1[18] = v5;
    v4 = sub_21DDE938C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21DDE938C()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];
  v2 = v0[17];
  v3 = v0[18];

  return v1(v2, v3);
}

uint64_t sub_21DDE9410()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];
  v2 = v0[16];

  return v1();
}

uint64_t sub_21DDE9490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v11 = a3(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v27 - v18);
  sub_21DDDA28C(a1, &v27 - v18, a4, a5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C08, &qword_21DDF3178);
    swift_allocError();
    *v21 = v20;
    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    v23 = (*(v12 + 32))(v15, v19, v11);
    v24 = a6(v23);
    v25 = *(*(a2 + 64) + 40);
    *v25 = v24;
    v25[1] = v26;
    swift_continuation_throwingResume();
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t VisualActionPredictionClient.setDeviceState(appPopularityMap:timestamp:appCategoryMap:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = v4;
  *(v5 + 176) = a3;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  v6 = sub_21DDF219C();
  *(v5 + 128) = v6;
  v7 = *(v6 - 8);
  *(v5 + 136) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DDE9740, 0, 0);
}

uint64_t sub_21DDE9740()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 176);
  v5 = *(v0 + 96);

  sub_21DDF218C();

  return MEMORY[0x2822009F8](sub_21DDE97E8, 0, 0);
}

uint64_t sub_21DDE97E8()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_21DDE9924;
  v4 = swift_continuation_init();
  v5 = *(v2 + 24);
  *(swift_allocObject() + 16) = v4;
  sub_21DDED4F0(&qword_27CE90BE8, MEMORY[0x277D78828]);
  sub_21DDF23BC();

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21DDE9924()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 152) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_21DDE9ACC;
  }

  else
  {
    v5 = v1[11];
    v1[20] = v1[10];
    v1[21] = v5;
    v4 = sub_21DDE9A48;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21DDE9A48()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];
  v2 = v0[20];
  v3 = v0[21];

  return v1(v2, v3);
}

uint64_t sub_21DDE9ACC()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];
  v2 = v0[19];

  return v1();
}

uint64_t VisualActionPredictionClient.populateDatabase(vectors:bundleIds:majorLabels:minorLabels:dates:actionIds:appsInFocus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[18] = a7;
  v8[19] = v7;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  v9 = sub_21DDF21BC();
  v8[20] = v9;
  v10 = *(v9 - 8);
  v8[21] = v10;
  v11 = *(v10 + 64) + 15;
  v8[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DDE9C18, 0, 0);
}

uint64_t sub_21DDE9C18()
{
  v1 = v0[22];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];

  sub_21DDF21AC();

  return MEMORY[0x2822009F8](sub_21DDE9D00, 0, 0);
}

uint64_t sub_21DDE9D00()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_21DDE9E3C;
  v4 = swift_continuation_init();
  v5 = *(v2 + 24);
  *(swift_allocObject() + 16) = v4;
  sub_21DDED4F0(&qword_27CE90BF0, MEMORY[0x277D78848]);
  sub_21DDF23BC();

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21DDE9E3C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 184) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_21DDE9FE4;
  }

  else
  {
    v5 = v1[11];
    v1[24] = v1[10];
    v1[25] = v5;
    v4 = sub_21DDE9F60;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21DDE9F60()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];
  v2 = v0[24];
  v3 = v0[25];

  return v1(v2, v3);
}

uint64_t sub_21DDE9FE4()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];
  v2 = v0[23];

  return v1();
}

unint64_t VisualActionPredictionClient.description.getter()
{
  v1 = sub_21DDF184C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_21DDF28AC();

  v9 = 0xD000000000000024;
  v10 = 0x800000021DDF3C80;
  v6 = *(v0 + 24);
  sub_21DDF23DC();
  sub_21DDED4F0(&qword_27CE90BF8, MEMORY[0x277CC95F0]);
  v7 = sub_21DDF290C();
  MEMORY[0x223D497D0](v7);

  (*(v2 + 8))(v5, v1);
  MEMORY[0x223D497D0](32032, 0xE200000000000000);
  return v9;
}

uint64_t sub_21DDEA1FC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21DDEA2F4;

  return v7(a1);
}

uint64_t sub_21DDEA2F4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21DDEA3EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21DDEA4B8(v11, 0, 0, 1, a1, a2);
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
    sub_21DDECE34(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_21DDEA4B8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21DDEA5C4(a5, a6);
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
    result = sub_21DDF28CC();
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

uint64_t sub_21DDEA5C4(uint64_t a1, unint64_t a2)
{
  v4 = sub_21DDEA610(a1, a2);
  sub_21DDEA740(&unk_282F22068);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21DDEA610(uint64_t a1, unint64_t a2)
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

  v6 = sub_21DDEA82C(v5, 0);
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

  result = sub_21DDF28CC();
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
        v10 = sub_21DDF277C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21DDEA82C(v10, 0);
        result = sub_21DDF289C();
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

uint64_t sub_21DDEA740(uint64_t result)
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

  result = sub_21DDEA8A0(result, v12, 1, v3);
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

void *sub_21DDEA82C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C90, &qword_21DDF3208);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21DDEA8A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C90, &qword_21DDF3208);
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

unint64_t sub_21DDEA994(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_21DDF1EDC();
  v5 = MEMORY[0x277D78738];
  sub_21DDED4F0(qword_281222870, MEMORY[0x277D78738]);
  v6 = sub_21DDF272C();
  return sub_21DDEBAF0(a1, v6, MEMORY[0x277D78738], &qword_281222868, v5, MEMORY[0x277D78750]);
}

unint64_t sub_21DDEAA68(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_21DDF1E3C();
  v5 = MEMORY[0x277D78638];
  sub_21DDED4F0(&qword_27CE90A70, MEMORY[0x277D78638]);
  v6 = sub_21DDF272C();
  return sub_21DDEBAF0(a1, v6, MEMORY[0x277D78638], &qword_27CE90A78, v5, MEMORY[0x277D78648]);
}

uint64_t sub_21DDEAB3C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_21DDF1EDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C88, &unk_21DDF31F8);
  v43 = a2;
  result = sub_21DDF28FC();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v22 = v7;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v27 = v24 | (v15 << 6);
      v28 = *(v11 + 48);
      v45 = *(v22 + 72);
      v29 = v28 + v45 * v27;
      if (v43)
      {
        (*v44)(v46, v29, v47);
      }

      else
      {
        (*v41)(v46, v29, v47);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_21DDED4F0(qword_281222870, MEMORY[0x277D78738]);
      result = sub_21DDF272C();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v23 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v14 + 48) + v45 * v23, v46, v47);
      *(*(v14 + 56) + 8 * v23) = v30;
      ++*(v14 + 16);
      v22 = v42;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_21DDEAF00(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_21DDF1E3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C60, &qword_21DDF31C0);
  v42 = a2;
  result = sub_21DDF28FC();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v38 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v7;
    v43 = (v7 + 32);
    v21 = result + 64;
    v41 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v42)
      {
        (*v43)(v46, v28, v47);
        v44 = *(*(v11 + 56) + 16 * v26);
      }

      else
      {
        (*v39)(v46, v28, v47);
        v44 = *(*(v11 + 56) + 16 * v26);
      }

      v29 = *(v14 + 40);
      sub_21DDED4F0(&qword_27CE90A70, MEMORY[0x277D78638]);
      result = sub_21DDF272C();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        v11 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v40;
      v11 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v43)(*(v14 + 48) + v45 * v22, v46, v47);
      *(*(v14 + 56) + 16 * v22) = v44;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_21DDEB2D8(int64_t a1, uint64_t a2)
{
  v43 = sub_21DDF1E3C();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_21DDF286C();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_21DDED4F0(&qword_27CE90A70, MEMORY[0x277D78638]);
      v26 = sub_21DDF272C();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_21DDEB5F8(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_21DDF1EDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_21DDEA994(a1);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
  }

  else
  {
    v19 = v14;
    v20 = v13[3];
    if (v20 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v21 = *v4;
      if (v19)
      {
LABEL_8:
        *(v21[7] + 8 * v15) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v20 >= result && (a2 & 1) == 0)
    {
      result = sub_21DDEBC90();
      goto LABEL_7;
    }

    sub_21DDEAB3C(result, a2 & 1);
    v22 = *v4;
    result = sub_21DDEA994(a1);
    if ((v19 & 1) == (v23 & 1))
    {
      v15 = result;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v9 + 16))(v12, a1, v8);
      return sub_21DDEB978(v15, v12, v21, a3);
    }
  }

  result = sub_21DDF293C();
  __break(1u);
  return result;
}

uint64_t sub_21DDEB79C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a1;
  v9 = sub_21DDF1E3C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_21DDEAA68(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_21DDEBF04();
      goto LABEL_9;
    }

    sub_21DDEAF00(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_21DDEAA68(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_21DDF293C();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v31;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = v27[1];
    *v27 = v31;
    v27[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_21DDEBA30(v16, v13, v25, a2, v26);
  }
}

uint64_t sub_21DDEB978(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_21DDF1EDC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_21DDEBA30(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_21DDF1E3C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_21DDEBAF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_21DDED4F0(v24, v25);
      v20 = sub_21DDF273C();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

void *sub_21DDEBC90()
{
  v1 = v0;
  v30 = sub_21DDF1EDC();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C88, &unk_21DDF31F8);
  v4 = *v0;
  v5 = sub_21DDF28EC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; *(*(v24 + 56) + 8 * v18) = v23)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v32;
      v20 = *(v32 + 72) * v18;
      v21 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 48) + v20, v30);
      v23 = *(*(v4 + 56) + 8 * v18);
      v24 = v31;
      result = (*(v19 + 32))(*(v31 + 48) + v20, v21, v22);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_21DDEBF04()
{
  v1 = v0;
  v31 = sub_21DDF1E3C();
  v33 = *(v31 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C60, &qword_21DDF31C0);
  v4 = *v0;
  v5 = sub_21DDF28EC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v29 = v33 + 16;
    v27 = v4 + 64;
    for (i = v33 + 32; v13; result = )
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v33;
      v20 = *(v33 + 72) * v18;
      v21 = v30;
      v22 = v31;
      (*(v33 + 16))(v30, *(v4 + 48) + v20, v31);
      v18 *= 16;
      v23 = v32;
      v24 = *(v32 + 48);
      v25 = *(v19 + 32);
      v34 = *(*(v4 + 56) + v18);
      v25(v24 + v20, v21, v22);
      *(*(v23 + 56) + v18) = v34;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v6 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_21DDEC184(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A90, &qword_21DDF2F00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = *a2;
  (*(v7 + 16))(&v15 - v9, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  VisualActionPredictionClient.rankBundles(_:_:)(a3, sub_21DDECDB8, v13);
}

uint64_t sub_21DDEC2E0(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;

  *a1 = v3;
}

uint64_t objectdestroy_13Tm()
{
  v1 = sub_21DDF221C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_21DDEC46C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, __n128))
{
  v4 = *(sub_21DDF221C() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8.n128_u64[0] = *(v2 + v6);
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v2 + v7);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v2 + v9);

  return a2(a1, v2 + v5, v11, v12, v13, v8);
}

uint64_t objectdestroy_16Tm()
{
  v1 = sub_21DDF221C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_21DDEC5FC(uint64_t a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  v9 = *(sub_21DDF221C() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_21DDE3668(a1, *(v4 + v11), v4 + v10, *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), a2, a3, a4);
}

uint64_t type metadata accessor for VisualActionPredictionClient()
{
  result = qword_281222940;
  if (!qword_281222940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21DDEC904()
{
  result = sub_21DDF26AC();
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t objectdestroy_2Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_21DDECB10()
{
  v1 = *(sub_21DDF1E3C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_21DDE80F0(v2, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21DDECB8C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_21DDECBE0()
{
  v1 = *(sub_21DDF1E3C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_21DDE7CD8(v3, v0 + v2, v5, v6);
}

uint64_t sub_21DDECC7C(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_21DDECCBC()
{
  v1 = *(sub_21DDF1F6C() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_21DDF222C() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 24);
  v7 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  return (*(v0 + 16))(v0 + v2, v0 + v5, *v7, v7[1]);
}

uint64_t sub_21DDECDB8(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A90, &qword_21DDF2F00) - 8) + 80);

  return sub_21DDD8358(a1);
}

uint64_t sub_21DDECE34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21DDECE90(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21DDED544;

  return sub_21DDEA1FC(a1, v5);
}

uint64_t sub_21DDECF48(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21DDDA03C;

  return sub_21DDEA1FC(a1, v5);
}

uint64_t sub_21DDED000(uint64_t a1)
{
  v3 = *(sub_21DDF201C() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_21DDF184C() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_21DDDF5D0(a1, v7, v8, v1 + v4, v9);
}

uint64_t sub_21DDED0D8()
{
  v1 = *(sub_21DDF1E3C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_21DDF184C() - 8);
  v5 = (v3 + *(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_21DDF1F6C() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_21DDF222C() - 8);
  v11 = *(v0 + 16);
  v12 = *(v0 + v3);
  v13 = *(v0 + v3 + 8);
  v14 = v0 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_21DDE8420(v11, v0 + v2, v12, v13, v0 + v5, v0 + v8, v14);
}

uint64_t objectdestroy_96Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  v7 = sub_21DDF184C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v5 + v6 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v4 | v9;
  v13 = *(v1 + 24);

  (*(v3 + 8))(v1 + v5, v2);
  (*(v8 + 8))(v1 + v10, v7);

  return MEMORY[0x2821FE8E8](v1, v10 + v11, v12 | 7);
}

uint64_t sub_21DDED3D4(uint64_t a1, char a2)
{
  v5 = *(sub_21DDF1E3C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_21DDF184C() - 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_21DDE8834(a1, a2 & 1, v9, v10, v2 + v6, v11);
}

uint64_t sub_21DDED4BC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t sub_21DDED4F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t VerticalIntegrationContentClassification.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CB8, &qword_21DDF3240);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B78, &qword_21DDF3060);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  if (sub_21DDF1B7C())
  {
    sub_21DDF1BAC();
    sub_21DDED7F4(v7, v14);
    sub_21DDDDB04(v7, &qword_27CE90CB8, &qword_21DDF3240);
    sub_21DDF1B8C();
    sub_21DDDA28C(v14, v12, &qword_27CE90B78, &qword_21DDF3060);
    sub_21DDF25BC();
    v15 = sub_21DDF1BBC();
    (*(*(v15 - 8) + 8))(a1, v15);
    sub_21DDDDB04(v14, &qword_27CE90B78, &qword_21DDF3060);
    v16 = sub_21DDF25CC();
    return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
  }

  else
  {
    v18 = sub_21DDF1BBC();
    (*(*(v18 - 8) + 8))(a1, v18);
    v19 = sub_21DDF25CC();
    v20 = *(*(v19 - 8) + 56);

    return v20(a2, 1, 1, v19);
  }
}

uint64_t sub_21DDED7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CB8, &qword_21DDF3240);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  sub_21DDDA28C(a1, &v20 - v9, &qword_27CE90CB8, &qword_21DDF3240);
  v11 = sub_21DDF1B9C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_2;
  }

  sub_21DDDA28C(v10, v8, &qword_27CE90CB8, &qword_21DDF3240);
  v14 = (*(v12 + 88))(v8, v11);
  if (v14 == *MEMORY[0x277D4B610])
  {
    v15 = MEMORY[0x277D786F0];
LABEL_31:
    v16 = *v15;
    v17 = sub_21DDF1EDC();
    v18 = *(v17 - 8);
    (*(v18 + 104))(a2, v16, v17);
    (*(v18 + 56))(a2, 0, 1, v17);
    return sub_21DDDDB04(v10, &qword_27CE90CB8, &qword_21DDF3240);
  }

  if (v14 == *MEMORY[0x277D4B630])
  {
    v15 = MEMORY[0x277D78710];
    goto LABEL_31;
  }

  if (v14 == *MEMORY[0x277D4B628])
  {
    v15 = MEMORY[0x277D78708];
    goto LABEL_31;
  }

  if (v14 == *MEMORY[0x277D4B5E8])
  {
    v15 = MEMORY[0x277D786C8];
    goto LABEL_31;
  }

  if (v14 == *MEMORY[0x277D4B620])
  {
    v15 = MEMORY[0x277D78700];
    goto LABEL_31;
  }

  if (v14 == *MEMORY[0x277D4B5F8])
  {
    v15 = MEMORY[0x277D786D8];
    goto LABEL_31;
  }

  if (v14 == *MEMORY[0x277D4B650])
  {
    v15 = MEMORY[0x277D78730];
    goto LABEL_31;
  }

  if (v14 == *MEMORY[0x277D4B618])
  {
    v15 = MEMORY[0x277D786F8];
    goto LABEL_31;
  }

  if (v14 == *MEMORY[0x277D4B648])
  {
    v15 = MEMORY[0x277D78728];
    goto LABEL_31;
  }

  if (v14 == *MEMORY[0x277D4B608])
  {
    v15 = MEMORY[0x277D786E0];
    goto LABEL_31;
  }

  if (v14 == *MEMORY[0x277D4B640])
  {
    v15 = MEMORY[0x277D78720];
    goto LABEL_31;
  }

  if (v14 == *MEMORY[0x277D4B638])
  {
    v15 = MEMORY[0x277D78718];
    goto LABEL_31;
  }

  if (v14 == *MEMORY[0x277D4B5F0])
  {
    v15 = MEMORY[0x277D786D0];
    goto LABEL_31;
  }

  if (v14 == *MEMORY[0x277D4B600])
  {
    v15 = MEMORY[0x277D786E8];
    goto LABEL_31;
  }

  (*(v12 + 8))(v8, v11);
LABEL_2:
  v13 = sub_21DDF1EDC();
  (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  return sub_21DDDDB04(v10, &qword_27CE90CB8, &qword_21DDF3240);
}

uint64_t static DetectedEntity.detectedEntity(for:)@<X0>(uint64_t a1@<X8>)
{
  v164 = a1;
  v143 = sub_21DDF1D4C();
  v141 = *(v143 - 8);
  v1 = *(v141 + 64);
  v2 = MEMORY[0x28223BE20](v143);
  v140 = v134 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v139 = v134 - v4;
  v145 = sub_21DDF260C();
  v144 = *(v145 - 8);
  v5 = *(v144 + 64);
  v6 = MEMORY[0x28223BE20](v145);
  v142 = v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v146 = v134 - v8;
  v148 = sub_21DDF238C();
  v147 = *(v148 - 8);
  v9 = *(v147 + 64);
  MEMORY[0x28223BE20](v148);
  v149 = v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_21DDF1B1C();
  v137 = *(v138 - 8);
  v11 = *(v137 + 64);
  MEMORY[0x28223BE20](v138);
  v135 = v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CC0, &qword_21DDF3248);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v136 = v134 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CC8, &qword_21DDF3250);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v158 = v134 - v18;
  v163 = sub_21DDF182C();
  v166 = *(v163 - 8);
  v19 = *(v166 + 64);
  v20 = MEMORY[0x28223BE20](v163);
  v157 = v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v156 = v134 - v22;
  v161 = sub_21DDF1B6C();
  v165 = *(v161 - 8);
  v23 = *(v165 + 64);
  v24 = MEMORY[0x28223BE20](v161);
  v159 = v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v155 = v134 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CD0, &qword_21DDF3258);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v162 = v134 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v160 = v134 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CD8, &qword_21DDF3260);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = v134 - v34;
  v153 = sub_21DDF22FC();
  v36 = *(*(v153 - 8) + 64);
  MEMORY[0x28223BE20](v153);
  v152 = v134 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CE0, &qword_21DDF3268);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v41 = v134 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CE8, &qword_21DDF3270);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v45 = (v134 - v44);
  v46 = sub_21DDF267C();
  v150 = *(v46 - 8);
  v151 = v46;
  v47 = *(v150 + 64);
  MEMORY[0x28223BE20](v46);
  v154 = v134 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_21DDF1C0C();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  v53 = v134 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_21DDF1ABC();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  v58 = (v134 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21DDF1ACC();
  v59 = (*(v55 + 88))(v58, v54);
  if (v59 == *MEMORY[0x277D4B4F8])
  {
    (*(v55 + 96))(v58, v54);
    v60 = *v58;
    sub_21DDF1BEC();
    v61 = sub_21DDF1E1C();
    v152 = v62;
    v153 = v61;

    sub_21DDF1BEC();
    v63 = sub_21DDF1E2C();
    v150 = v64;
    v151 = v63;

    sub_21DDF1BEC();
    v149 = sub_21DDF1E0C();
    v148 = v65;

    sub_21DDF1BEC();
    sub_21DDF1DFC();

    sub_21DDF17FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CF0, &qword_21DDF3278);
    v66 = *(sub_21DDF249C() - 8);
    v67 = *(v66 + 72);
    v146 = ((*(v66 + 80) + 32) & ~*(v66 + 80));
    v147 = swift_allocObject();
    *(v147 + 16) = xmmword_21DDF2FE0;
    v154 = v60;
    sub_21DDF1BEC();
    sub_21DDF1DEC();

    v68 = v155;
    sub_21DDF1D8C();

    v69 = v156;
    sub_21DDF181C();
    v70 = v160;
    sub_21DDF1B5C();
    v134[1] = v35;
    v88 = v166;
    v89 = *(v166 + 8);
    v90 = v163;
    v89(v69, v163);
    v91 = *(v165 + 8);
    v165 += 8;
    v91(v68, v161);
    v92 = *(v88 + 56);
    v166 = v88 + 56;
    v92(v70, 0, 1, v90);
    sub_21DDF1BEC();
    sub_21DDF1DEC();

    sub_21DDF1D7C();

    v93 = v157;
    sub_21DDF181C();
    sub_21DDF1B5C();
    v94 = v163;
    v89(v93, v163);
    v91(v159, v161);
    v92(v162, 0, 1, v94);
    sub_21DDF1BEC();
    sub_21DDF1DEC();

    sub_21DDF1DDC();

    sub_21DDEF360(v158);

    sub_21DDF244C();
    v95 = v164;
    sub_21DDF229C();

    v96 = MEMORY[0x277D789C8];
LABEL_8:
    v97 = *v96;
    v98 = sub_21DDF237C();
    v99 = *(v98 - 8);
    (*(v99 + 104))(v95, v97, v98);
    return (*(v99 + 56))(v95, 0, 1, v98);
  }

  if (v59 != *MEMORY[0x277D4B500])
  {
    if (v59 == *MEMORY[0x277D4B4F0])
    {
      (*(v55 + 96))(v58, v54);
      v87 = *v58;
      (*(v147 + 104))(v149, *MEMORY[0x277D78A28], v148);
      sub_21DDF1BCC();
      sub_21DDF1BDC();
      v95 = v164;
      sub_21DDF239C();

      v96 = MEMORY[0x277D789E8];
      goto LABEL_8;
    }

    if (v59 == *MEMORY[0x277D4B4E8])
    {
      (*(v55 + 96))(v58, v54);
      v111 = *v58;
      sub_21DDF1A9C();
      sub_21DDF1AAC();
      v95 = v164;
      sub_21DDF243C();

      v96 = MEMORY[0x277D789F0];
      goto LABEL_8;
    }

    if (v59 != *MEMORY[0x277D4B510])
    {
      if (v59 == *MEMORY[0x277D4B4E0])
      {
        (*(v55 + 96))(v58, v54);
        v122 = *v58;
        sub_21DDF1B4C();
        v123 = sub_21DDF1B2C();
        sub_21DDF0D80(v123);

        sub_21DDF1B3C();
        v124 = v135;
        sub_21DDF1B0C();
        v125 = v136;
        sub_21DDEF63C(v124, v136);
        (*(v137 + 8))(v124, v138);
        v126 = sub_21DDF225C();
        (*(*(v126 - 8) + 56))(v125, 0, 1, v126);
        v95 = v164;
        sub_21DDF226C();

        v96 = MEMORY[0x277D789B0];
        goto LABEL_8;
      }

      v128 = *MEMORY[0x277D4B508];
      v129 = v59;
      v130 = sub_21DDF237C();
      result = (*(*(v130 - 8) + 56))(v164, 1, 1, v130);
      if (v129 != v128)
      {
        return (*(v55 + 8))(v58, v54);
      }

      return result;
    }

    (*(v55 + 96))(v58, v54);
    v113 = *v58;
    v114 = v139;
    sub_21DDF1D5C();
    v115 = v141;
    v116 = v140;
    v117 = v143;
    (*(v141 + 32))(v140, v114, v143);
    v118 = (*(v115 + 88))(v116, v117);
    if (v118 == *MEMORY[0x277D4B680])
    {
      v119 = v144;
      v120 = v142;
      v121 = v145;
      (*(v144 + 104))(v142, *MEMORY[0x277D78C50], v145);
    }

    else
    {
      v121 = v145;
      v119 = v144;
      v120 = v142;
      if (v118 == *MEMORY[0x277D4B688])
      {
        v127 = MEMORY[0x277D78C58];
      }

      else
      {
        if (v118 != *MEMORY[0x277D4B690])
        {
          v132 = *MEMORY[0x277D4B698];
          v133 = v118;
          (*(v144 + 104))(v142, *MEMORY[0x277D78C68], v145);
          if (v133 != v132)
          {
            (*(v115 + 8))(v116, v117);
          }

          goto LABEL_28;
        }

        v127 = MEMORY[0x277D78C60];
      }

      (*(v144 + 104))(v142, *v127, v145);
    }

LABEL_28:
    (*(v119 + 32))(v146, v120, v121);
    sub_21DDF1D3C();
    v131 = sub_21DDF1D6C();
    sub_21DDF0F98(v131);

    v95 = v164;
    sub_21DDF261C();

    v96 = MEMORY[0x277D78A10];
    goto LABEL_8;
  }

  (*(v55 + 96))(v58, v54);
  v71 = *v58;
  sub_21DDF1C5C();
  v72 = (*(v50 + 88))(v53, v49);
  if (v72 == *MEMORY[0x277D4B678])
  {
    *v45 = sub_21DDF1C8C();
    v45[1] = v73;
    v74 = *MEMORY[0x277D78C88];
    v75 = sub_21DDF265C();
    v76 = v71;
    v77 = *(v75 - 8);
    (*(v77 + 104))(v45, v74, v75);
    (*(v77 + 56))(v45, 0, 1, v75);
    sub_21DDF1D1C();
    sub_21DDF1D2C();
    sub_21DDF263C();
    v78 = sub_21DDF264C();
    (*(*(v78 - 8) + 56))(v41, 0, 1, v78);
    v79 = v154;
    sub_21DDF266C();
    (*(v150 + 104))(v79, *MEMORY[0x277D78C90], v151);
    v80 = sub_21DDF1CAC();
    v166 = sub_21DDEFD54(v80);

    v163 = v76;
    v81 = sub_21DDF1C7C();
    v165 = sub_21DDEFEF8(v81);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CF8, &qword_21DDF3280);
    v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90D00, &qword_21DDF3288) - 8);
    v83 = *(v82 + 72);
    v162 = ((*(v82 + 80) + 32) & ~*(v82 + 80));
    v161 = swift_allocObject();
    *(v161 + 16) = xmmword_21DDF2FE0;
    sub_21DDF1D0C();
    sub_21DDF1CEC();
    sub_21DDF1CCC();
    sub_21DDF1CDC();
    sub_21DDF1CBC();
    sub_21DDF1CFC();
    sub_21DDF22EC();
    sub_21DDF23AC();

    v84 = sub_21DDF1C6C();
    sub_21DDF0110(v84);

    v85 = sub_21DDF1C9C();
    sub_21DDF0388(v85);

    v86 = v164;
    sub_21DDF268C();
  }

  else
  {
    if (v72 != *MEMORY[0x277D4B670])
    {

      v112 = sub_21DDF237C();
      (*(*(v112 - 8) + 56))(v164, 1, 1, v112);
      return (*(v50 + 8))(v53, v49);
    }

    sub_21DDF1C8C();
    v101 = v154;
    sub_21DDF263C();
    (*(v150 + 104))(v101, *MEMORY[0x277D78C80], v151);
    v102 = sub_21DDF1CAC();
    v166 = sub_21DDEFD54(v102);

    v103 = sub_21DDF1C7C();
    v165 = sub_21DDEFEF8(v103);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CF8, &qword_21DDF3280);
    v104 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90D00, &qword_21DDF3288) - 8);
    v105 = *(v104 + 72);
    v162 = ((*(v104 + 80) + 32) & ~*(v104 + 80));
    v161 = swift_allocObject();
    *(v161 + 16) = xmmword_21DDF2FE0;
    sub_21DDF1D0C();
    v160 = sub_21DDF1CEC();
    sub_21DDF1CCC();
    sub_21DDF1CDC();
    sub_21DDF1CBC();
    sub_21DDF1CFC();
    sub_21DDF22EC();
    sub_21DDF23AC();

    v106 = sub_21DDF1C6C();
    sub_21DDF0110(v106);

    v107 = sub_21DDF1C9C();
    sub_21DDF0388(v107);

    v86 = v164;
    sub_21DDF268C();
  }

  v108 = *MEMORY[0x277D78A18];
  v109 = sub_21DDF237C();
  v110 = *(v109 - 8);
  (*(v110 + 104))(v86, v108, v109);
  return (*(v110 + 56))(v86, 0, 1, v109);
}

uint64_t sub_21DDEF360@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21DDF1DBC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90D08, &qword_21DDF3290);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  v11 = sub_21DDF246C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  sub_21DDF1DCC();
  sub_21DDEFB08(v6, v10);
  (*(v3 + 8))(v6, v2);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21DDDDB04(v10, &qword_27CE90D08, &qword_21DDF3290);
    v19 = 1;
  }

  else
  {
    (*(v12 + 32))(v18, v10, v11);
    (*(v12 + 16))(v16, v18, v11);
    v20 = sub_21DDF1D9C();
    sub_21DDF0754(v20);

    sub_21DDF247C();
    (*(v12 + 8))(v18, v11);
    v19 = 0;
  }

  v21 = sub_21DDF248C();
  return (*(*(v21 - 8) + 56))(a1, v19, 1, v21);
}

uint64_t sub_21DDEF63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DDF1B1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D4B590])
  {
    v10 = MEMORY[0x277D78938];
LABEL_51:
    v12 = *v10;
    v13 = sub_21DDF225C();
    return (*(*(v13 - 8) + 104))(a2, v12, v13);
  }

  if (v9 == *MEMORY[0x277D4B530])
  {
    v10 = MEMORY[0x277D788D8];
    goto LABEL_51;
  }

  if (v9 == *MEMORY[0x277D4B5C8])
  {
    v10 = MEMORY[0x277D78970];
    goto LABEL_51;
  }

  if (v9 == *MEMORY[0x277D4B5B0])
  {
    v10 = MEMORY[0x277D78958];
    goto LABEL_51;
  }

  if (v9 == *MEMORY[0x277D4B540])
  {
    v10 = MEMORY[0x277D788E8];
    goto LABEL_51;
  }

  if (v9 == *MEMORY[0x277D4B5E0])
  {
    v10 = MEMORY[0x277D78988];
    goto LABEL_51;
  }

  if (v9 == *MEMORY[0x277D4B5D0])
  {
    v10 = MEMORY[0x277D78978];
    goto LABEL_51;
  }

  if (v9 == *MEMORY[0x277D4B588])
  {
    v10 = MEMORY[0x277D78930];
    goto LABEL_51;
  }

  if (v9 == *MEMORY[0x277D4B5A8])
  {
    v10 = MEMORY[0x277D78950];
    goto LABEL_51;
  }

  if (v9 == *MEMORY[0x277D4B570])
  {
    v10 = MEMORY[0x277D78918];
    goto LABEL_51;
  }

  if (v9 == *MEMORY[0x277D4B518])
  {
    v10 = MEMORY[0x277D788C0];
    goto LABEL_51;
  }

  if (v9 == *MEMORY[0x277D4B520])
  {
    v10 = MEMORY[0x277D788C8];
    goto LABEL_51;
  }

  if (v9 == *MEMORY[0x277D4B538])
  {
    v10 = MEMORY[0x277D788E0];
    goto LABEL_51;
  }

  if (v9 == *MEMORY[0x277D4B598])
  {
    v10 = MEMORY[0x277D78940];
    goto LABEL_51;
  }

  if (v9 == *MEMORY[0x277D4B550])
  {
    v10 = MEMORY[0x277D788F8];
    goto LABEL_51;
  }

  v11 = v9;
  if (v9 == *MEMORY[0x277D4B560])
  {
    v10 = MEMORY[0x277D78908];
    goto LABEL_51;
  }

  if (v9 == *MEMORY[0x277D4B568])
  {
    v10 = MEMORY[0x277D78910];
    goto LABEL_51;
  }

  if (v9 == *MEMORY[0x277D4B5C0])
  {
    v10 = MEMORY[0x277D78968];
    goto LABEL_51;
  }

  if (v9 == *MEMORY[0x277D4B5A0])
  {
    v10 = MEMORY[0x277D78948];
    goto LABEL_51;
  }

  if (v9 == *MEMORY[0x277D4B5D8])
  {
    v10 = MEMORY[0x277D78980];
    goto LABEL_51;
  }

  if (v9 == *MEMORY[0x277D4B558])
  {
    v10 = MEMORY[0x277D78900];
    goto LABEL_51;
  }

  if (v9 == *MEMORY[0x277D4B528])
  {
    v10 = MEMORY[0x277D788D0];
    goto LABEL_51;
  }

  if (v9 == *MEMORY[0x277D4B578])
  {
    v10 = MEMORY[0x277D78920];
    goto LABEL_51;
  }

  if (v9 == *MEMORY[0x277D4B5B8])
  {
    v10 = MEMORY[0x277D78960];
    goto LABEL_51;
  }

  if (v9 == *MEMORY[0x277D4B548])
  {
    v10 = MEMORY[0x277D788F0];
    goto LABEL_51;
  }

  v15 = *MEMORY[0x277D4B580];
  v16 = *MEMORY[0x277D78928];
  v17 = sub_21DDF225C();
  result = (*(*(v17 - 8) + 104))(a2, v16, v17);
  if (v11 != v15)
  {
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_21DDEFB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DDF1DBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D4B6E0])
  {
    v10 = MEMORY[0x277D78A90];
LABEL_7:
    v11 = *v10;
    v12 = sub_21DDF246C();
    v13 = *(v12 - 8);
    (*(v13 + 104))(a2, v11, v12);
    return (*(v13 + 56))(a2, 0, 1, v12);
  }

  if (v9 == *MEMORY[0x277D4B6E8])
  {
    v10 = MEMORY[0x277D78A98];
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x277D4B6F0])
  {
    v10 = MEMORY[0x277D78AA0];
    goto LABEL_7;
  }

  v15 = *MEMORY[0x277D4B6D8];
  v16 = v9;
  v17 = sub_21DDF246C();
  result = (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  if (v16 != v15)
  {
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_21DDEFD54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AC0, &qword_21DDF2F30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - v5;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v15 = MEMORY[0x277D84F90];
    sub_21DDD8894(0, v7, 0);
    v8 = v15;
    v9 = (a1 + 40);
    do
    {
      v10 = *v9;
      v14[1] = *(v9 - 1);
      v14[2] = v10;

      sub_21DDF23AC();
      v15 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_21DDD8894(v11 > 1, v12 + 1, 1);
        v8 = v15;
      }

      *(v8 + 16) = v12 + 1;
      (*(v3 + 32))(v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v6, v2);
      v9 += 2;
      --v7;
    }

    while (v7);
  }

  return v8;
}

size_t sub_21DDEFEF8(unint64_t a1)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AC0, &qword_21DDF2F30);
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v18);
  v5 = &v16 - v4;
  if (a1 >> 62)
  {
    v6 = sub_21DDF28DC();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v21 = MEMORY[0x277D84F90];
  result = sub_21DDD8894(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v7 = v21;
    v10 = a1;
    v17 = a1 & 0xC000000000000001;
    v11 = a1;
    do
    {
      if (v17)
      {
        MEMORY[0x223D49920](v9, v10);
      }

      else
      {
        v12 = *(v10 + 8 * v9 + 32);
      }

      v19 = sub_21DDF1C2C();
      v20 = v13;
      sub_21DDF1C1C();
      sub_21DDF23AC();

      v21 = v7;
      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_21DDD8894(v14 > 1, v15 + 1, 1);
        v7 = v21;
      }

      ++v9;
      *(v7 + 16) = v15 + 1;
      (*(v2 + 32))(v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v15, v5, v18);
      v10 = v11;
    }

    while (v6 != v9);
    return v7;
  }

  __break(1u);
  return result;
}

size_t sub_21DDF0110(unint64_t a1)
{
  v19 = sub_21DDF231C();
  v2 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AB0, &qword_21DDF2F20);
  v3 = *(v18 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v18);
  v6 = v16 - v5;
  if (a1 >> 62)
  {
    v7 = sub_21DDF28DC();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v20 = MEMORY[0x277D84F90];
  result = sub_21DDD88D4(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v8 = v20;
    v11 = a1;
    v16[1] = v3 + 32;
    v17 = a1 & 0xC000000000000001;
    v12 = a1;
    do
    {
      if (v17)
      {
        MEMORY[0x223D49920](v10, v11);
      }

      else
      {
        v13 = *(v11 + 8 * v10 + 32);
      }

      sub_21DDF1C3C();
      sub_21DDF1C4C();
      sub_21DDF230C();
      sub_21DDF23AC();

      v20 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_21DDD88D4(v14 > 1, v15 + 1, 1);
        v8 = v20;
      }

      ++v10;
      *(v8 + 16) = v15 + 1;
      (*(v3 + 32))(v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, v6, v18);
      v11 = v12;
    }

    while (v7 != v10);
    return v8;
  }

  __break(1u);
  return result;
}

char *sub_21DDF0388(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CD8, &qword_21DDF3260);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - v4;
  v6 = sub_21DDF180C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v34 = &v29 - v11;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B40, &qword_21DDF2FC8);
  v12 = *(*(v38 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v38);
  v33 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v37 = &v29 - v16;
  v17 = *(a1 + 16);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = (v7 + 48);
  v30 = (v7 + 16);
  v31 = (v7 + 32);
  v29 = (v7 + 8);
  v32 = v15;
  v36 = (v15 + 32);
  v19 = (a1 + 40);
  v20 = MEMORY[0x277D84F90];
  v21 = v33;
  do
  {
    v22 = *(v19 - 1);
    v23 = *v19;

    sub_21DDF17FC();
    if ((*v18)(v5, 1, v6) == 1)
    {

      sub_21DDDDB04(v5, &qword_27CE90CD8, &qword_21DDF3260);
    }

    else
    {
      v24 = v34;
      (*v31)(v34, v5, v6);
      (*v30)(v35, v24, v6);
      sub_21DDF23AC();

      (*v29)(v24, v6);
      v25 = *v36;
      (*v36)(v37, v21, v38);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_21DDDB234(0, *(v20 + 2) + 1, 1, v20);
      }

      v27 = *(v20 + 2);
      v26 = *(v20 + 3);
      if (v27 >= v26 >> 1)
      {
        v20 = sub_21DDDB234(v26 > 1, v27 + 1, 1, v20);
      }

      *(v20 + 2) = v27 + 1;
      v25(&v20[((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v27], v37, v38);
    }

    v19 += 2;
    --v17;
  }

  while (v17);
  return v20;
}

void *sub_21DDF0754(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90D10, &qword_21DDF3298);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v55 = &v37[-v7];
  v8 = sub_21DDF245C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_21DDF1DAC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v37[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v20 = &v37[-v19];
  v21 = *(a1 + 16);
  if (v21)
  {
    v23 = *(v14 + 16);
    v22 = v14 + 16;
    v24 = a1 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v63 = *(v22 + 56);
    v64 = v23;
    v61 = (v22 + 72);
    v62 = (v22 + 16);
    v60 = *MEMORY[0x277D4B6A8];
    v51 = *MEMORY[0x277D4B6B8];
    v49 = *MEMORY[0x277D4B6D0];
    v47 = *MEMORY[0x277D4B6C8];
    v45 = *MEMORY[0x277D4B6A0];
    v43 = *MEMORY[0x277D4B6C0];
    v41 = *MEMORY[0x277D4B6B0];
    v59 = (v9 + 56);
    v39 = (v22 - 8);
    v38 = *MEMORY[0x277D78A60];
    v56 = (v9 + 104);
    v40 = *MEMORY[0x277D78A70];
    v42 = *MEMORY[0x277D78A50];
    v44 = *MEMORY[0x277D78A78];
    v46 = *MEMORY[0x277D78A80];
    v58 = (v9 + 48);
    v48 = *MEMORY[0x277D78A68];
    v57 = (v9 + 32);
    v50 = *MEMORY[0x277D78A58];
    v65 = MEMORY[0x277D84F90];
    v53 = v12;
    v54 = v9;
    v25 = v55;
    v52 = &v37[-v19];
    v23(v20, v24, v13);
    while (1)
    {
      (*v62)(v18, v20, v13);
      v26 = (*v61)(v18, v13);
      if (v26 == v60)
      {
        break;
      }

      if (v26 == v51)
      {
        (*v56)(v6, v48, v8);
        goto LABEL_20;
      }

      if (v26 == v49)
      {
        (*v56)(v6, v46, v8);
        goto LABEL_20;
      }

      if (v26 == v47)
      {
        (*v56)(v6, v44, v8);
        goto LABEL_20;
      }

      if (v26 == v45)
      {
        (*v56)(v6, v42, v8);
        goto LABEL_20;
      }

      if (v26 == v43)
      {
        (*v56)(v6, v40, v8);
        goto LABEL_20;
      }

      if (v26 == v41)
      {
        (*v56)(v6, v38, v8);
        goto LABEL_20;
      }

      (*v59)(v6, 1, 1, v8);
      (*v39)(v18, v13);
LABEL_21:
      sub_21DDF1124(v6, v25);
      if ((*v58)(v25, 1, v8) == 1)
      {
        sub_21DDDDB04(v25, &qword_27CE90D10, &qword_21DDF3298);
      }

      else
      {
        v27 = v13;
        v28 = v18;
        v29 = v6;
        v30 = v22;
        v31 = *v57;
        (*v57)(v12, v25, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_21DDDB424(0, v65[2] + 1, 1, v65);
        }

        v33 = v65[2];
        v32 = v65[3];
        if (v33 >= v32 >> 1)
        {
          v65 = sub_21DDDB424(v32 > 1, v33 + 1, 1, v65);
        }

        v34 = v65;
        v65[2] = v33 + 1;
        v35 = v34 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v33;
        v12 = v53;
        v31(v35, v53, v8);
        v22 = v30;
        v6 = v29;
        v25 = v55;
        v18 = v28;
        v13 = v27;
        v20 = v52;
      }

      v24 += v63;
      if (!--v21)
      {
        return v65;
      }

      v64(v20, v24, v13);
    }

    (*v56)(v6, v50, v8);
LABEL_20:
    (*v59)(v6, 0, 1, v8);
    goto LABEL_21;
  }

  return MEMORY[0x277D84F90];
}

size_t sub_21DDF0D80(unint64_t a1)
{
  v16 = sub_21DDF224C();
  v2 = *(v16 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v16);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v6 = sub_21DDF28DC();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_21DDD8914(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v7 = v17;
    v10 = a1;
    v15 = a1 & 0xC000000000000001;
    do
    {
      if (v15)
      {
        MEMORY[0x223D49920](v9);
      }

      else
      {
        v11 = *(v10 + 8 * v9 + 32);
      }

      sub_21DDF1AEC();
      sub_21DDF1ADC();
      sub_21DDF1AFC();
      sub_21DDF223C();

      v17 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_21DDD8914(v12 > 1, v13 + 1, 1);
        v7 = v17;
      }

      ++v9;
      *(v7 + 16) = v13 + 1;
      (*(v2 + 32))(v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v13, v5, v16);
      v10 = a1;
    }

    while (v6 != v9);
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_21DDF0F98(uint64_t a1)
{
  v2 = sub_21DDF25FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v16 = MEMORY[0x277D84F90];
    sub_21DDD8958(0, v7, 0);
    v8 = v16;
    v9 = (a1 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;

      sub_21DDF25EC();
      v16 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_21DDD8958(v12 > 1, v13 + 1, 1);
        v8 = v16;
      }

      *(v8 + 16) = v13 + 1;
      (*(v3 + 32))(v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v6, v2);
      v9 += 2;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_21DDF1124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90D10, &qword_21DDF3298);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AppleFoundationModelResult.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90D18, &unk_21DDF32A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v39 - v5;
  v7 = sub_21DDF25CC();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DDF1BBC();
  v44 = *(v10 - 8);
  v45 = v10;
  v11 = *(v44 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v17 = sub_21DDF259C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_21DDF1BFC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = (&v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v26, a1, v22);
  v27 = (*(v23 + 88))(v26, v22);
  if (v27 == *MEMORY[0x277D4B658])
  {
    (*(v23 + 96))(v26, v22);
    v28 = *v26;

    StructuredExtraction.init(from:)(v29, v21);
    (*(v18 + 104))(v21, *MEMORY[0x277D78C10], v17);
    sub_21DDF25AC();

    return (*(v23 + 8))(a1, v22);
  }

  else
  {
    v40 = a1;
    if (v27 == *MEMORY[0x277D4B660])
    {
      (*(v23 + 96))(v26, v22);
      v31 = v44;
      v32 = v26;
      v33 = v45;
      (*(v44 + 32))(v16, v32, v45);
      (*(v31 + 16))(v14, v16, v33);
      VerticalIntegrationContentClassification.init(from:)(v14, v6);
      v34 = v42;
      v35 = v43;
      if ((*(v42 + 48))(v6, 1, v43) == 1)
      {
        sub_21DDF1794(v6);
        (*(v18 + 104))(v21, *MEMORY[0x277D78C18], v17);
        sub_21DDF25AC();
        (*(v23 + 8))(v40, v22);
      }

      else
      {
        (*(v34 + 32))(v41, v6, v35);
        v37 = v41;
        (*(v34 + 16))(v21, v41, v35);
        (*(v18 + 104))(v21, *MEMORY[0x277D78C08], v17);
        sub_21DDF25AC();
        (*(v23 + 8))(v40, v22);
        (*(v34 + 8))(v37, v35);
      }

      return (*(v31 + 8))(v16, v45);
    }

    else if (v27 == *MEMORY[0x277D4B668])
    {
      (*(v23 + 96))(v26, v22);
      v36 = v26[1];
      *v21 = *v26;
      v21[1] = v36;
      (*(v18 + 104))(v21, *MEMORY[0x277D78C20], v17);
      sub_21DDF25AC();
      return (*(v23 + 8))(v40, v22);
    }

    else
    {
      (*(v18 + 104))(v21, *MEMORY[0x277D78C18], v17);
      sub_21DDF25AC();
      v38 = *(v23 + 8);
      v38(v40, v22);
      return (v38)(v26, v22);
    }
  }
}

uint64_t sub_21DDF1794(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90D18, &unk_21DDF32A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}