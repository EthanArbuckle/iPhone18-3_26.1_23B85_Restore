uint64_t sub_2629A46F8(uint64_t a1, int a2)
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

uint64_t sub_2629A4718(uint64_t result, int a2, int a3)
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
  if (!qword_27FF3BE10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FF3BE10);
    }
  }
}

uint64_t SIDFitnessClient.__allocating_init(bag:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SIDFitnessClient.init(bag:)(a1);
  return v2;
}

uint64_t SIDFitnessClient.init(bag:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BE80, &qword_262A2B2B0);
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BE88, &unk_262A2B2B8);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = MEMORY[0x277D84F90];
  v5[2] = v6;
  v5[3] = v7;
  v5[4] = 0;
  v2[2] = v5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BE90, &qword_262A2B2C8);
  v32 = &off_287537768;
  *&v30 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BE98, &qword_262A2B2D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_262A2B290;
  sub_2629A4B84(&v30, inited + 32);
  v29 = inited;
  v9 = *(inited + 16);
  v10 = *(v7 + 16);
  v11 = v10 + v9;
  v12 = __OFADD__(v10, v9);
  swift_unknownObjectRetain();
  if (v12)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = MEMORY[0x277D84F90];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v11 <= v13[3] >> 1)
  {
    if (*(inited + 16))
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  if (v10 <= v11)
  {
    v18 = v10 + v9;
  }

  else
  {
    v18 = v10;
  }

  v13 = sub_2629A8C64(isUniquelyReferenced_nonNull_native, v18, 1, MEMORY[0x277D84F90]);
  if (!*(inited + 16))
  {
LABEL_16:

    if (!v9)
    {
      goto LABEL_17;
    }

    goto LABEL_19;
  }

LABEL_8:
  if ((v13[3] >> 1) - v13[2] < v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEA0, &qword_262A2B2D8);
  swift_arrayInitWithCopy();

  if (!v9)
  {
LABEL_17:
    sub_2629ADF2C(&v29, &qword_27FF3BEA8, &qword_262A2B2E0);
    type metadata accessor for Dependencies();
    swift_initStackObject();
    v19 = sub_262A28750(v13);

    v20 = *(v19 + 16);

    v21 = v2[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEB0, &qword_262A2B2E8);
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_262A2B290;
    *(v22 + 32) = v4;
    v23 = v22 + 32;
    *(v22 + 64) = v4;
    *(v22 + 40) = v21;
    v24 = sub_2629ABA88(v22);
    swift_setDeallocating();
    swift_retain_n();

    sub_2629ADF2C(v23, &qword_27FF3BEB8, &qword_262A2B2F0);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *&v30 = v20;
    sub_2629ABBA4(v24, sub_2629AB8F4, 0, v25, &v30, 0, 0);

    v26 = v30;
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    v2[3] = a1;
    v2[4] = v27;
    return v2;
  }

  v15 = v13[2];
  v16 = __OFADD__(v15, v9);
  v17 = v15 + v9;
  if (!v16)
  {
    v13[2] = v17;
    goto LABEL_17;
  }

LABEL_21:
  __break(1u);

  __break(1u);
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

uint64_t sub_2629A4B84(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2629A4B9C(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = sub_262A2A328();
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v6 = *(v5 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v7 = *(*(type metadata accessor for SIDPersonalizedPlanResponse() - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v8 = type metadata accessor for PersistentLogger();
  v3[26] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2629A4CD4, 0, 0);
}

uint64_t sub_2629A4CD4()
{
  v23 = v0;
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[18];
  v4 = v0[19];
  v5 = *(v2 + 20);
  v6 = sub_262A2A018();
  (*(*(v6 - 8) + 16))(v1 + v5, v3, v6);
  sub_262A2A2E8();
  v7 = *(v4 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEB0, &qword_262A2B2E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_262A2B290;
  *(inited + 32) = v2;
  *(inited + 64) = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 40));
  sub_2629ADB70(v1, boxed_opaque_existential_0, type metadata accessor for PersistentLogger);
  v10 = sub_2629ABA88(inited);
  swift_setDeallocating();
  sub_2629ADF2C(inited + 32, &qword_27FF3BEB8, &qword_262A2B2F0);
  v11 = *(v7 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v11;
  sub_2629ABBA4(v10, sub_2629AB8F4, 0, isUniquelyReferenced_nonNull_native, &v22, 0, 0);

  v13 = v0[23];
  v14 = v22;
  type metadata accessor for Dependencies();
  v15 = swift_initStackObject();
  v0[28] = v15;
  *(v15 + 16) = v14;
  sub_262A2A318();
  v16 = swift_task_alloc();
  v0[29] = v16;
  *v16 = v0;
  v16[1] = sub_2629A4F54;
  v17 = v0[27];
  v18 = v0[24];
  v19 = v0[18];
  v20 = v0[19];

  return sub_2629A57E4(v18, v19, v17, v15);
}

uint64_t sub_2629A4F54()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_2629A5420;
  }

  else
  {
    v3 = sub_2629A5068;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2629A5068()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  sub_262A2A318();
  v5 = sub_262A2A308();
  v6 = sub_262A2A308();
  v7 = *(v4 + 8);
  v7(v2, v3);
  v8 = (v7)(v1, v3);
  if (v5 < v6)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  v11 = *(v0 + 240);
  v12 = *(v0 + 152);
  v13 = (v5 - v6) / 1000000.0;
  sub_2629ADD40(*(v0 + 192), *(v0 + 200), type metadata accessor for SIDPersonalizedPlanResponse);
  v14 = *(v12 + 16);
  *(v0 + 265) = 5;
  v15 = *(v14 + 16);
  v16 = swift_task_alloc();
  *(v16 + 16) = v14;
  *(v16 + 24) = v13;
  *(v16 + 32) = 0;
  *(v16 + 40) = v0 + 265;
  v17 = swift_task_alloc();
  *(v17 + 16) = sub_2629ADFF4;
  *(v17 + 24) = v16;

  os_unfair_lock_lock(v15 + 4);
  sub_2629AE00C();
  if (!v11)
  {
    v19 = *(v0 + 216);
    v20 = *(v0 + 152);
    os_unfair_lock_unlock(v15 + 4);

    sub_2629A85EC();
    sub_262A2A1E8();
    *(v0 + 248) = sub_262A2A1C8();
    sub_2629ADC84(&unk_27FF3BEC8, MEMORY[0x277D4D3C0]);
    v21 = sub_262A2A568();
    v23 = v22;
    v8 = sub_2629A52B8;
    v9 = v21;
    v10 = v23;

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  os_unfair_lock_unlock(v15 + 4);
}

uint64_t sub_2629A52B8()
{
  v1 = *(v0 + 248);
  sub_262A2A1D8();

  return MEMORY[0x2822009F8](sub_2629A5328, 0, 0);
}

uint64_t sub_2629A5328()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[17];
  swift_setDeallocating();
  v8 = *(v2 + 16);

  sub_2629ADD40(v3, v7, type metadata accessor for SIDPersonalizedPlanResponse);
  sub_2629ADDA8(v1, type metadata accessor for PersistentLogger);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2629A5420()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 152);
  (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));
  v3 = *(v2 + 16);
  *(v0 + 264) = 5;
  v4 = *(v3 + 16);
  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = 0;
  v5[4] = v1;
  v5[5] = v0 + 264;
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_2629ABEE0;
  *(v6 + 24) = v5;
  MEMORY[0x26672F6B0](v1);

  os_unfair_lock_lock(v4 + 4);
  sub_2629ABEF8();
  v7 = *(v0 + 240);
  v8 = *(v0 + 216);
  v9 = *(v0 + 152);
  os_unfair_lock_unlock(v4 + 4);
  MEMORY[0x26672F6A0](v7);

  sub_262A2A6F8();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0xE000000000000000;
  MEMORY[0x26672ECF0](0xD000000000000018, 0x8000000262A31D10);
  *(v0 + 128) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
  sub_262A2A738();
  sub_2629EA8B0(*(v0 + 112), *(v0 + 120));

  sub_2629A85EC();
  sub_262A2A1E8();
  *(v0 + 256) = sub_262A2A1C8();
  sub_2629ADC84(&unk_27FF3BEC8, MEMORY[0x277D4D3C0]);
  v11 = sub_262A2A568();

  return MEMORY[0x2822009F8](sub_2629A5698, v11, v10);
}

uint64_t sub_2629A5698()
{
  v1 = *(v0 + 256);
  sub_262A2A1D8();

  return MEMORY[0x2822009F8](sub_2629A5708, 0, 0);
}

uint64_t sub_2629A5708()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[22];
  v6 = v0[23];
  swift_willThrow();
  swift_setDeallocating();
  v8 = *(v3 + 16);

  sub_2629ADDA8(v2, type metadata accessor for PersistentLogger);

  v9 = v0[1];
  v10 = v0[30];

  return v9();
}

uint64_t sub_2629A57E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[106] = v4;
  v5[105] = a4;
  v5[104] = a3;
  v5[103] = a2;
  v5[102] = a1;
  v6 = *(*(type metadata accessor for FitnessPlanUser() - 8) + 64) + 15;
  v5[107] = swift_task_alloc();
  v7 = *(type metadata accessor for PreprocessedUserHistoryWithMetadata() - 8);
  v5[108] = v7;
  v8 = *(v7 + 64) + 15;
  v5[109] = swift_task_alloc();
  v9 = type metadata accessor for PersistentLogger();
  v5[110] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[111] = swift_task_alloc();
  v11 = type metadata accessor for RequestPreProcessor();
  v5[112] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v5[113] = swift_task_alloc();
  v13 = type metadata accessor for PlanGenerationContext();
  v5[114] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v5[115] = swift_task_alloc();
  v15 = sub_262A2A248();
  v5[116] = v15;
  v16 = *(v15 - 8);
  v5[117] = v16;
  v17 = *(v16 + 64) + 15;
  v5[118] = swift_task_alloc();
  v18 = sub_262A2A2C8();
  v5[119] = v18;
  v19 = *(v18 - 8);
  v5[120] = v19;
  v20 = *(v19 + 64) + 15;
  v5[121] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C0A8, &unk_262A2B550) - 8) + 64) + 15;
  v5[122] = swift_task_alloc();
  v22 = sub_262A2A288();
  v5[123] = v22;
  v23 = *(v22 - 8);
  v5[124] = v23;
  v24 = *(v23 + 64) + 15;
  v5[125] = swift_task_alloc();
  v25 = sub_262A2A328();
  v5[126] = v25;
  v26 = *(v25 - 8);
  v5[127] = v26;
  v27 = *(v26 + 64) + 15;
  v5[128] = swift_task_alloc();
  v5[129] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0B0, &unk_262A30350) - 8) + 64) + 15;
  v5[130] = swift_task_alloc();
  v29 = type metadata accessor for SIDActiveWorkoutPlan();
  v5[131] = v29;
  v30 = *(v29 - 8);
  v5[132] = v30;
  v31 = *(v30 + 64) + 15;
  v5[133] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2629A5BB4, 0, 0);
}

uint64_t sub_2629A5BB4()
{
  v1 = v0[132];
  v2 = v0[131];
  v3 = v0[130];
  v4 = v0[103];
  v5 = type metadata accessor for SIDPersonalizedPlanRequest();
  sub_2629ADF8C(v4 + *(v5 + 20), v3, &unk_27FF3C0B0, &unk_262A30350);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_2629ADF2C(v0[130], &unk_27FF3C0B0, &unk_262A30350);
  }

  else
  {
    v6 = v0[133];
    v7 = v0[131];
    sub_2629ADD40(v0[130], v6, type metadata accessor for SIDActiveWorkoutPlan);
    sub_262A2A6F8();
    MEMORY[0x26672ECF0](0xD000000000000023, 0x8000000262A31E90);
    v8 = v6 + *(v7 + 20);
    v9 = sub_262A29FE8();
    MEMORY[0x26672ECF0](v9);

    MEMORY[0x26672ECF0](0x746169726176202CLL, 0xED0000203A6E6F69);
    if (*(v6 + *(v7 + 36)))
    {
      if (*(v6 + *(v7 + 36)) == 1)
      {
        v10 = 0xE600000000000000;
        v11 = 0x6D6F74737563;
      }

      else
      {
        v10 = 0xE700000000000000;
        v11 = 0x68637465727473;
      }
    }

    else
    {
      v10 = 0xEA0000000000746ELL;
      v11 = 0x65747369736E6F63;
    }

    v12 = v0[133];
    v13 = v0[104];
    MEMORY[0x26672ECF0](v11, v10);

    sub_2629EA8C8(0, 0xE000000000000000);

    sub_2629ADDA8(v12, type metadata accessor for SIDActiveWorkoutPlan);
  }

  v14 = v0[129];
  v15 = v0[125];
  v16 = v0[124];
  v17 = v0[123];
  v18 = v0[122];
  type metadata accessor for FunctionTimer();
  v19 = swift_allocObject();
  v0[134] = v19;
  strcpy((v19 + 16), "treatmentFetch");
  *(v19 + 31) = -18;
  *(v19 + 32) = 0;
  sub_262A2A318();
  sub_262A2A1E8();
  v0[135] = sub_262A2A1C8();
  (*(v16 + 104))(v15, *MEMORY[0x277D4D3F8], v17);
  v20 = sub_262A2A228();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  v21 = *(MEMORY[0x277D4D3B8] + 4);
  v22 = swift_task_alloc();
  v0[136] = v22;
  *v22 = v0;
  v22[1] = sub_2629A5F04;
  v23 = v0[125];
  v24 = v0[122];

  return MEMORY[0x2821ACCD8](v23, v24);
}

uint64_t sub_2629A5F04(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1088);
  v6 = *v2;
  v4[137] = a1;
  v4[138] = v1;

  v7 = v3[135];
  v8 = v3[125];
  v9 = v3[124];
  v10 = v3[123];
  v11 = v3[122];

  sub_2629ADF2C(v11, &qword_27FF3C0A8, &unk_262A2B550);
  (*(v9 + 8))(v8, v10);
  if (v1)
  {
    v12 = sub_2629A6610;
  }

  else
  {
    v12 = sub_2629A60CC;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_2629A60CC()
{
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 1016);
  v4 = *(v0 + 1008);
  sub_262A2A318();
  v5 = sub_262A2A308();
  v6 = sub_262A2A308();
  v7 = *(v3 + 8);
  v7(v2, v4);
  result = (v7)(v1, v4);
  if (v5 < v6)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v0 + 1104);
    v10 = *(v0 + 848);
    v11 = (v5 - v6) / 1000000.0;
    *(*(v0 + 1072) + 32) = v11;
    v12 = *(v10 + 16);
    *(v0 + 1201) = 9;
    v13 = *(v12 + 16);
    v14 = swift_task_alloc();
    *(v14 + 16) = v12;
    *(v14 + 24) = v11;
    *(v14 + 32) = 0;
    *(v14 + 40) = v0 + 1201;
    v15 = swift_task_alloc();
    *(v15 + 16) = sub_2629ADFF4;
    *(v15 + 24) = v14;

    os_unfair_lock_lock(v13 + 4);
    sub_2629AE00C();
    os_unfair_lock_unlock(v13 + 4);

    if (!v9)
    {
      v16 = *(v0 + 1096);
      v17 = *(v0 + 952);
      v18 = *(v0 + 832);

      sub_262A2A6F8();

      v19 = MEMORY[0x26672EDD0](v16, v17);
      MEMORY[0x26672ECF0](v19);

      sub_2629EA8C8(0xD000000000000014, 0x8000000262A31E70);

      v20 = *(v0 + 1096);
      v21 = *(v20 + 16);
      if (v21)
      {
        v22 = *(v0 + 960);
        v23 = *(v0 + 936);
        v75 = MEMORY[0x277D84F90];
        sub_2629CD980(0, v21, 0);
        v24 = v75;
        v25 = *(v22 + 16);
        v22 += 16;
        v26 = v20 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
        v68 = *(v22 + 56);
        v69 = v25;
        v70 = v0;
        v66 = (v22 - 8);
        v67 = (v23 + 8);
        do
        {
          v27 = *(v0 + 968);
          v28 = *(v0 + 952);
          v29 = *(v0 + 944);
          v30 = *(v0 + 928);
          v69(v27, v26, v28);
          v31 = sub_262A2A2A8();
          v73 = v32;
          v74 = v31;
          v33 = sub_262A2A298();
          v71 = v34;
          v72 = v33;
          sub_262A2A2B8();
          v35 = sub_262A2A238();
          (*v67)(v29, v30);
          (*v66)(v27, v28);
          v37 = *(v75 + 16);
          v36 = *(v75 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_2629CD980((v36 > 1), v37 + 1, 1);
          }

          *(v75 + 16) = v37 + 1;
          v38 = (v75 + 40 * v37);
          v38[4] = v74;
          v38[5] = v73;
          v38[6] = v72;
          v38[7] = v71;
          v38[8] = v35;
          v26 += v68;
          --v21;
          v0 = v70;
        }

        while (v21);
      }

      else
      {
        v39 = *(v0 + 1096);

        v24 = MEMORY[0x277D84F90];
      }

      *(v0 + 1112) = v24;
      v40 = *(v24 + 16);
      v41 = MEMORY[0x277D84F90];
      if (v40)
      {
        v76 = MEMORY[0x277D84F90];
        sub_2629CD800(0, v40, 0);
        v41 = v76;
        v42 = *(v76 + 16);
        v43 = 16 * v42;
        v44 = (v24 + 56);
        do
        {
          v46 = *(v44 - 1);
          v45 = *v44;
          v47 = v42 + 1;
          v48 = *(v76 + 24);

          if (v42 >= v48 >> 1)
          {
            sub_2629CD800((v48 > 1), v47, 1);
          }

          *(v76 + 16) = v47;
          v49 = v76 + v43;
          *(v49 + 32) = v46;
          *(v49 + 40) = v45;
          v43 += 16;
          v44 += 5;
          ++v42;
          --v40;
        }

        while (v40);
      }

      *(v0 + 1120) = v41;
      v50 = *(v0 + 840);
      v51 = type metadata accessor for PlanDynamicConfigurationManager();
      v52 = *(v51 + 48);
      v53 = *(v51 + 52);
      v54 = swift_allocObject();
      *(v0 + 1128) = v54;
      sub_2629ADAB0(v0 + 248);
      v55 = *(v0 + 424);
      v56 = *(v0 + 456);
      *(v54 + 208) = *(v0 + 440);
      *(v54 + 224) = v56;
      v57 = *(v0 + 360);
      v58 = *(v0 + 392);
      v59 = *(v0 + 408);
      *(v54 + 144) = *(v0 + 376);
      *(v54 + 160) = v58;
      *(v54 + 176) = v59;
      *(v54 + 192) = v55;
      v60 = *(v0 + 296);
      v61 = *(v0 + 328);
      v62 = *(v0 + 344);
      *(v54 + 80) = *(v0 + 312);
      *(v54 + 96) = v61;
      *(v54 + 112) = v62;
      *(v54 + 128) = v57;
      v63 = *(v0 + 264);
      v64 = *(v0 + 280);
      *(v54 + 16) = *(v0 + 248);
      *(v54 + 32) = v63;
      *(v54 + 240) = *(v0 + 472);
      *(v54 + 48) = v64;
      *(v54 + 64) = v60;
      *(v54 + 248) = sub_262A17A1C(0);
      sub_262A17B14(0, v54 + OBJC_IVAR____TtC10SIDFitness31PlanDynamicConfigurationManager_logger);
      *(v54 + OBJC_IVAR____TtC10SIDFitness31PlanDynamicConfigurationManager_operationTracker) = sub_262A17CDC(0);
      v65 = swift_task_alloc();
      *(v0 + 1136) = v65;
      *v65 = v0;
      v65[1] = sub_2629A6B24;

      return sub_2629B1CBC(v0 + 16, v41);
    }
  }

  return result;
}

uint64_t sub_2629A6610()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 848);
  (*(*(v0 + 1016) + 8))(*(v0 + 1032), *(v0 + 1008));
  v3 = *(v2 + 16);
  *(v0 + 1200) = 9;
  v4 = *(v3 + 16);
  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = 0;
  v5[4] = v1;
  v5[5] = v0 + 1200;
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_2629ADFF4;
  *(v6 + 24) = v5;
  MEMORY[0x26672F6B0](v1);

  os_unfair_lock_lock(v4 + 4);
  sub_2629AE00C();
  os_unfair_lock_unlock(v4 + 4);
  v7 = *(v0 + 1104);
  v8 = *(v0 + 832);
  MEMORY[0x26672F6A0](v7);

  sub_262A2A6F8();
  *(v0 + 752) = 0;
  *(v0 + 760) = 0xE000000000000000;
  MEMORY[0x26672ECF0](0xD000000000000023, 0x8000000262A31DB0);
  *(v0 + 784) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
  sub_262A2A738();
  sub_2629EA8B0(*(v0 + 752), *(v0 + 760));

  MEMORY[0x26672F6A0](v7);
  v9 = MEMORY[0x277D84F90];
  v10 = *(MEMORY[0x277D84F90] + 16);
  if (v10)
  {
    v11 = *(v0 + 960);
    v12 = *(v0 + 936);
    v64 = MEMORY[0x277D84F90];
    sub_2629CD980(0, v10, 0);
    v13 = v64;
    v14 = *(v11 + 16);
    v11 += 16;
    v15 = v9 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v57 = *(v11 + 56);
    v58 = v14;
    v59 = v0;
    v55 = (v11 - 8);
    v56 = (v12 + 8);
    do
    {
      v16 = *(v0 + 968);
      v17 = *(v0 + 952);
      v18 = *(v0 + 944);
      v19 = *(v0 + 928);
      v58(v16, v15, v17);
      v20 = sub_262A2A2A8();
      v62 = v21;
      v63 = v20;
      v22 = sub_262A2A298();
      v60 = v23;
      v61 = v22;
      sub_262A2A2B8();
      v24 = sub_262A2A238();
      (*v56)(v18, v19);
      (*v55)(v16, v17);
      v26 = *(v64 + 16);
      v25 = *(v64 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_2629CD980((v25 > 1), v26 + 1, 1);
      }

      *(v64 + 16) = v26 + 1;
      v27 = (v64 + 40 * v26);
      v27[4] = v63;
      v27[5] = v62;
      v27[6] = v61;
      v27[7] = v60;
      v27[8] = v24;
      v15 += v57;
      --v10;
      v0 = v59;
    }

    while (v10);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  *(v0 + 1112) = v13;
  v28 = *(v13 + 16);
  v29 = MEMORY[0x277D84F90];
  if (v28)
  {
    v65 = MEMORY[0x277D84F90];
    sub_2629CD800(0, v28, 0);
    v29 = v65;
    v30 = *(v65 + 16);
    v31 = 16 * v30;
    v32 = (v13 + 56);
    do
    {
      v34 = *(v32 - 1);
      v33 = *v32;
      v35 = v30 + 1;
      v36 = *(v65 + 24);

      if (v30 >= v36 >> 1)
      {
        sub_2629CD800((v36 > 1), v35, 1);
      }

      *(v65 + 16) = v35;
      v37 = v65 + v31;
      *(v37 + 32) = v34;
      *(v37 + 40) = v33;
      v31 += 16;
      v32 += 5;
      ++v30;
      --v28;
    }

    while (v28);
  }

  *(v0 + 1120) = v29;
  v38 = *(v0 + 840);
  v39 = type metadata accessor for PlanDynamicConfigurationManager();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  v42 = swift_allocObject();
  *(v0 + 1128) = v42;
  sub_2629ADAB0(v0 + 248);
  v43 = *(v0 + 424);
  v44 = *(v0 + 456);
  *(v42 + 208) = *(v0 + 440);
  *(v42 + 224) = v44;
  v45 = *(v0 + 360);
  v46 = *(v0 + 392);
  v47 = *(v0 + 408);
  *(v42 + 144) = *(v0 + 376);
  *(v42 + 160) = v46;
  *(v42 + 176) = v47;
  *(v42 + 192) = v43;
  v48 = *(v0 + 296);
  v49 = *(v0 + 328);
  v50 = *(v0 + 344);
  *(v42 + 80) = *(v0 + 312);
  *(v42 + 96) = v49;
  *(v42 + 112) = v50;
  *(v42 + 128) = v45;
  v51 = *(v0 + 264);
  v52 = *(v0 + 280);
  *(v42 + 16) = *(v0 + 248);
  *(v42 + 32) = v51;
  *(v42 + 240) = *(v0 + 472);
  *(v42 + 48) = v52;
  *(v42 + 64) = v48;
  *(v42 + 248) = sub_262A17A1C(0);
  sub_262A17B14(0, v42 + OBJC_IVAR____TtC10SIDFitness31PlanDynamicConfigurationManager_logger);
  *(v42 + OBJC_IVAR____TtC10SIDFitness31PlanDynamicConfigurationManager_operationTracker) = sub_262A17CDC(0);
  v53 = swift_task_alloc();
  *(v0 + 1136) = v53;
  *v53 = v0;
  v53[1] = sub_2629A6B24;

  return sub_2629B1CBC(v0 + 16, v29);
}

uint64_t sub_2629A6B24()
{
  v2 = *v1;
  v3 = *(*v1 + 1136);
  v4 = *v1;
  v2[143] = v0;

  v5 = v2[140];
  if (v0)
  {
    v6 = v2[139];

    v7 = sub_2629A7B34;
  }

  else
  {

    v7 = sub_2629A6C6C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2629A6C6C()
{
  v21 = v0;
  v1 = v0[143];
  v2 = v0[115];
  v3 = v0[114];
  v4 = v0[105];
  v5 = v0[104];
  sub_2629A7F90(v0 + 2, v0[103], v2);
  sub_2629ADAD8((v0 + 2));
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_262A2A6F8();
  v0[96] = 0;
  v0[97] = 0xE000000000000000;
  MEMORY[0x26672ECF0](0xD00000000000001BLL, 0x8000000262A31DE0);
  sub_262A2A738();
  sub_2629EA8C8(v0[96], v0[97]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEB0, &qword_262A2B2E8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_262A2B290;
  *(v6 + 32) = v3;
  *(v6 + 64) = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v6 + 40));
  sub_2629ADB70(v2, boxed_opaque_existential_0, type metadata accessor for PlanGenerationContext);
  v8 = sub_2629ABA88(v6);
  swift_setDeallocating();
  sub_2629ADF2C(v6 + 32, &qword_27FF3BEB8, &qword_262A2B2F0);
  swift_deallocClassInstance();
  v9 = *(v4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20[0] = v9;
  sub_2629ABBA4(v8, sub_2629AB8F4, 0, isUniquelyReferenced_nonNull_native, v20, 0, 0);

  if (v1)
  {
  }

  else
  {
    v12 = v0[113];
    v13 = v0[112];
    v14 = v20[0];
    type metadata accessor for Dependencies();
    v15 = swift_allocObject();
    v0[144] = v15;
    *(v15 + 16) = v14;

    sub_262A17B14(0, v12);
    v16 = sub_262A17CDC(0);
    *(v12 + *(type metadata accessor for CatalogMetadataService() + 20)) = v16;
    sub_262A17B14(0, v12 + v13[5]);
    *(v12 + v13[6]) = sub_262A17CDC(0);
    sub_262A17DD4(0, v12 + v13[7]);

    v17 = swift_task_alloc();
    v0[145] = v17;
    *v17 = v0;
    v17[1] = sub_2629A6F88;
    v18 = v0[113];
    v19 = v0[103];

    return sub_2629FF23C(v19);
  }
}

uint64_t sub_2629A6F88(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1160);
  v8 = *v2;
  v3[146] = a1;
  v3[147] = v1;

  if (v1)
  {
    v5 = v3[139];

    v6 = sub_2629A7C68;
  }

  else
  {
    v6 = sub_2629A70A8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2629A70A8()
{
  v69 = v0;
  v1 = v0[146];
  v2 = v0[104];
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000031, 0x8000000262A31E00);
  v61 = v1;
  v3 = *(v1 + 16);
  v0[99] = v3;
  v4 = sub_262A2A868();
  MEMORY[0x26672ECF0](v4);

  sub_2629EA8C8(v67, v68);

  if (v3)
  {
    v6 = 0;
    v58 = v0[108];
    v59 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v56 = v0[146];
    v57 = v0[110];
    v60 = v3;
    while (1)
    {
      v8 = __OFADD__(v6, 5);
      if (v6 > 0x7FFFFFFFFFFFFFFALL)
      {
        break;
      }

      if (v3 >= (v6 + 5))
      {
        v9 = v6 + 5;
      }

      else
      {
        v9 = v3;
      }

      if (v9 < v6)
      {
        goto LABEL_36;
      }

      v10 = *(v61 + 16);
      if (v10 < v6 || v10 < v9)
      {
        goto LABEL_37;
      }

      v12 = v0[146];
      if (v10 == v9 - v6)
      {
        v13 = v0[146];
      }

      else
      {
        sub_2629F6E10(v0[146], v56 + v59, v6, (2 * v9) | 1);
        v12 = v43;
        v10 = *(v43 + 16);
      }

      v63 = v8;
      v64 = v6 + 5;
      if (v10)
      {
        v62 = v6;
        v67 = MEMORY[0x277D84F90];
        sub_2629CD800(0, v10, 0);
        v14 = v67;
        v15 = v12 + v59;
        v16 = *(v58 + 72);
        do
        {
          v17 = v0[109];
          sub_2629ADB70(v15, v17, type metadata accessor for PreprocessedUserHistoryWithMetadata);
          v18 = sub_2629DEA78();
          v20 = v19;
          sub_2629ADDA8(v17, type metadata accessor for PreprocessedUserHistoryWithMetadata);
          v67 = v14;
          v22 = *(v14 + 16);
          v21 = *(v14 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_2629CD800((v21 > 1), v22 + 1, 1);
            v14 = v67;
          }

          *(v14 + 16) = v22 + 1;
          v23 = v14 + 16 * v22;
          *(v23 + 32) = v18;
          *(v23 + 40) = v20;
          v15 += v16;
          --v10;
        }

        while (v10);

        v6 = v62;
      }

      else
      {

        v14 = MEMORY[0x277D84F90];
      }

      v24 = v0[111];
      v25 = v0[104];
      v0[100] = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0C0, &unk_262A2BA70);
      sub_2629ADBD8();
      v26 = sub_262A2A398();
      v28 = v27;

      v67 = 0;
      v68 = 0xE000000000000000;
      sub_262A2A6F8();

      v67 = 0xD00000000000002ALL;
      v68 = 0x8000000262A31E40;
      v0[101] = v6 / 5 + 1;
      v29 = sub_262A2A868();
      MEMORY[0x26672ECF0](v29);

      MEMORY[0x26672ECF0](2618, 0xE200000000000000);
      MEMORY[0x26672ECF0](v26, v28);

      v30 = v67;
      v31 = v68;
      sub_2629ADB70(v25, v24, type metadata accessor for PersistentLogger);

      v32 = sub_262A2A2D8();
      v33 = sub_262A2A5F8();

      v34 = os_log_type_enabled(v32, v33);
      v35 = v0[111];
      if (v34)
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 136446210;
        v66 = v37;
        v67 = 91;
        v68 = 0xE100000000000000;
        v38 = *(v57 + 20);
        sub_262A2A018();
        sub_2629ADC84(&qword_27FF3C0D0, MEMORY[0x277CC95F0]);
        v39 = sub_262A2A868();
        MEMORY[0x26672ECF0](v39);

        MEMORY[0x26672ECF0](8285, 0xE200000000000000);
        MEMORY[0x26672ECF0](v30, v31);
        v41 = v67;
        v40 = v68;
        sub_2629ADDA8(v35, type metadata accessor for PersistentLogger);
        v42 = sub_262A1D0CC(v41, v40, &v66);

        *(v36 + 4) = v42;
        _os_log_impl(&dword_2629A3000, v32, v33, "%{public}s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        MEMORY[0x26672F820](v37, -1, -1);
        MEMORY[0x26672F820](v36, -1, -1);
      }

      else
      {

        sub_2629ADDA8(v35, type metadata accessor for PersistentLogger);
      }

      v3 = v60;
      v6 = v64;
      v7 = v63;
      if (v64 >= v60)
      {
        v7 = 1;
      }

      if (v7)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {
LABEL_32:
    v44 = v0[144];
    v45 = v0[113];
    v46 = v0[107];
    sub_2629FFDBC(v0[103], v0[146], v0[139], v46);

    type metadata accessor for WorkoutPlanFactory();
    sub_262A275A0(v46, v0 + 89);
    v47 = v0[92];
    v48 = v0[93];
    __swift_project_boxed_opaque_existential_1(v0 + 89, v47);
    v49 = *(v48 + 8);
    v65 = (v49 + *v49);
    v50 = v49[1];
    v51 = swift_task_alloc();
    v0[148] = v51;
    *v51 = v0;
    v51[1] = sub_2629A7788;
    v52 = v0[146];
    v53 = v0[107];
    v54 = v0[103];
    v55 = v0[102];

    return v65(v55, v54, v53, v52, v47, v48);
  }

  return result;
}

uint64_t sub_2629A7788()
{
  v2 = *v1;
  v3 = *(*v1 + 1184);
  v7 = *v1;
  *(*v1 + 1192) = v0;

  v4 = *(v2 + 1168);

  if (v0)
  {
    v5 = sub_2629A7DE8;
  }

  else
  {
    v5 = sub_2629A78AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2629A78AC()
{
  v1 = *(v0 + 1152);
  v2 = *(v0 + 1128);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1064);
  v5 = *(v0 + 1040);
  v6 = *(v0 + 1032);
  v27 = *(v0 + 1024);
  v28 = *(v0 + 1000);
  v29 = *(v0 + 976);
  v30 = *(v0 + 968);
  v7 = *(v0 + 920);
  v8 = *(v0 + 904);
  v31 = *(v0 + 944);
  v32 = *(v0 + 888);
  v33 = *(v0 + 872);
  v9 = *(v0 + 856);
  swift_setDeallocating();
  v10 = *(v2 + 16);
  v11 = *(v2 + 48);
  *(v0 + 496) = *(v2 + 32);
  *(v0 + 512) = v11;
  *(v0 + 480) = v10;
  v12 = *(v2 + 64);
  v13 = *(v2 + 80);
  v14 = *(v2 + 112);
  *(v0 + 560) = *(v2 + 96);
  *(v0 + 576) = v14;
  *(v0 + 528) = v12;
  *(v0 + 544) = v13;
  v15 = *(v2 + 128);
  v16 = *(v2 + 144);
  v17 = *(v2 + 176);
  *(v0 + 624) = *(v2 + 160);
  *(v0 + 640) = v17;
  *(v0 + 592) = v15;
  *(v0 + 608) = v16;
  v18 = *(v2 + 192);
  v19 = *(v2 + 208);
  v20 = *(v2 + 224);
  *(v0 + 704) = *(v2 + 240);
  *(v0 + 672) = v19;
  *(v0 + 688) = v20;
  *(v0 + 656) = v18;
  sub_2629ADF2C(v0 + 480, &unk_27FF3C1F0, &unk_262A2B560);
  v21 = *(v2 + 248);
  swift_unknownObjectRelease();
  sub_2629ADDA8(v2 + OBJC_IVAR____TtC10SIDFitness31PlanDynamicConfigurationManager_logger, type metadata accessor for PersistentLogger);
  v22 = *(v2 + OBJC_IVAR____TtC10SIDFitness31PlanDynamicConfigurationManager_operationTracker);

  v23 = *(*v2 + 48);
  v24 = *(*v2 + 52);
  swift_deallocClassInstance();
  swift_setDeallocating();
  swift_deallocClassInstance();

  sub_2629ADDA8(v9, type metadata accessor for FitnessPlanUser);
  sub_2629ADDA8(v8, type metadata accessor for RequestPreProcessor);
  sub_2629ADDA8(v7, type metadata accessor for PlanGenerationContext);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 712));

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2629A7B34()
{
  v1 = v0[141];
  v2 = v0[134];

  v3 = v0[133];
  v4 = v0[130];
  v5 = v0[129];
  v6 = v0[128];
  v7 = v0[125];
  v8 = v0[122];
  v9 = v0[121];
  v10 = v0[118];
  v11 = v0[115];
  v12 = v0[113];
  v15 = v0[111];
  v16 = v0[109];
  v17 = v0[107];
  v18 = v0[143];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2629A7C68()
{
  v1 = v0[144];
  v2 = v0[141];
  v3 = v0[134];
  v4 = v0[115];
  v5 = v0[113];

  sub_2629ADDA8(v5, type metadata accessor for RequestPreProcessor);
  sub_2629ADDA8(v4, type metadata accessor for PlanGenerationContext);
  v6 = v0[133];
  v7 = v0[130];
  v8 = v0[129];
  v9 = v0[128];
  v10 = v0[125];
  v11 = v0[122];
  v12 = v0[121];
  v13 = v0[118];
  v14 = v0[115];
  v15 = v0[113];
  v18 = v0[111];
  v19 = v0[109];
  v20 = v0[107];
  v21 = v0[147];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2629A7DE8()
{
  v1 = v0[144];
  v2 = v0[141];
  v3 = v0[134];
  v4 = v0[115];
  v5 = v0[113];
  v6 = v0[107];

  sub_2629ADDA8(v6, type metadata accessor for FitnessPlanUser);
  sub_2629ADDA8(v5, type metadata accessor for RequestPreProcessor);
  sub_2629ADDA8(v4, type metadata accessor for PlanGenerationContext);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 89);
  v7 = v0[133];
  v8 = v0[130];
  v9 = v0[129];
  v10 = v0[128];
  v11 = v0[125];
  v12 = v0[122];
  v13 = v0[121];
  v14 = v0[118];
  v15 = v0[115];
  v16 = v0[113];
  v19 = v0[111];
  v20 = v0[109];
  v21 = v0[107];
  v22 = v0[149];

  v17 = v0[1];

  return v17();
}

uint64_t sub_2629A7F90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2 + *(type metadata accessor for SIDPersonalizedPlanRequest() + 20);
  v4 = *(v3 + *(type metadata accessor for SIDPersonalizedPlanDataProvider() + 36));

  v5 = MEMORY[0x277D84F90];
  v93 = sub_2629AD7C4(MEMORY[0x277D84F90], &qword_27FF3CDD0, &qword_262A2B3B0, sub_2629CB1E4);
  v92 = sub_2629AD7C4(v5, &qword_27FF3CDD0, &qword_262A2B3B0, sub_2629CB1E4);
  v6 = sub_2629ACABC(v5, &qword_27FF3C010, &unk_262A2E720);
  v7 = 0;
  v95 = v4;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v4 + 64;
  v11 = v9 & *(v4 + 64);
  v12 = (v8 + 63) >> 6;
  v94 = v12;
  while (2)
  {
    v13 = v7;
    if (!v11)
    {
      goto LABEL_6;
    }

    while (1)
    {
      v7 = v13;
LABEL_9:
      v14 = __clz(__rbit64(v11)) | (v7 << 6);
      v15 = *(*(v95 + 48) + v14);
      v97 = *(*(v95 + 56) + 8 * v14);
      swift_bridgeObjectRetain_n();
      sub_2629A9EB4(&v97);
      v96 = 0;

      v16 = v97;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = v6;
      v18 = v15;
      v20 = sub_2629CB1E4(v15);
      v21 = *(v6 + 2);
      v22 = (v19 & 1) == 0;
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        goto LABEL_47;
      }

      v24 = v19;
      if (*(v6 + 3) >= v23)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v6 = v97;
          if (v19)
          {
            goto LABEL_16;
          }
        }

        else
        {
          sub_2629CDF28();
          v6 = v97;
          if (v24)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        sub_2629CFB88(v23, isUniquelyReferenced_nonNull_native);
        v25 = sub_2629CB1E4(v18);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_53;
        }

        v20 = v25;
        v6 = v97;
        if (v24)
        {
LABEL_16:
          v27 = *(v6 + 7);
          v28 = *(v27 + 8 * v20);
          *(v27 + 8 * v20) = v16;

          goto LABEL_20;
        }
      }

      *&v6[8 * (v20 >> 6) + 64] |= 1 << v20;
      *(*(v6 + 6) + v20) = v18;
      *(*(v6 + 7) + 8 * v20) = v16;
      v29 = *(v6 + 2);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_48;
      }

      *(v6 + 2) = v31;
LABEL_20:
      v11 &= v11 - 1;
      v32 = *(v16 + 2);
      if (v32)
      {
        break;
      }

      v13 = v7;
      v12 = v94;
      if (!v11)
      {
LABEL_6:
        while (1)
        {
          v7 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v7 >= v12)
          {

            v59 = *a1;
            v60 = a1[1];
            v61 = a1[2];
            v62 = type metadata accessor for PlanGenerationContext();
            v63 = v62[6];

            sub_262A2A008();
            v64 = a1[3];
            v65 = a1[4];
            v66 = a1[5];
            v67 = *(a1 + 48);
            v68 = a1[7];
            v69 = a1[8];
            v70 = a1[9];
            v71 = a1[10];
            v72 = a1[11];
            v73 = a1[12];
            v75 = a1[13];
            result = a1[14];
            v76 = a1[15];
            v77 = a1[16];
            v78 = a1[17];
            v79 = a1[18];
            v80 = a1[19];
            v81 = a1[20];
            v82 = a1[21];
            v83 = a1[22];
            v84 = a1[23];
            v85 = a1[24];
            v86 = a1[25];
            v87 = *(a1 + 208);
            v88 = a1[27];
            *a3 = v59;
            a3[1] = v60;
            a3[2] = v61;
            *(a3 + v62[7]) = v64;
            *(a3 + v62[8]) = v65;
            *(a3 + v62[9]) = v66;
            *(a3 + v62[10]) = v67;
            *(a3 + v62[11]) = v68;
            *(a3 + v62[12]) = v69;
            *(a3 + v62[13]) = v70;
            *(a3 + v62[14]) = v71;
            *(a3 + v62[15]) = v72;
            *(a3 + v62[16]) = v73;
            *(a3 + v62[17]) = v75;
            *(a3 + v62[18]) = result;
            *(a3 + v62[19]) = v76;
            *(a3 + v62[20]) = v77;
            *(a3 + v62[21]) = v78;
            *(a3 + v62[22]) = v79;
            *(a3 + v62[23]) = v6;
            *(a3 + v62[24]) = v92;
            *(a3 + v62[25]) = v93;
            *(a3 + v62[26]) = v80;
            *(a3 + v62[27]) = v81;
            *(a3 + v62[28]) = v82;
            *(a3 + v62[29]) = v83;
            *(a3 + v62[30]) = v84;
            *(a3 + v62[31]) = v85;
            *(a3 + v62[32]) = v86;
            *(a3 + v62[33]) = v87;
            *(a3 + v62[34]) = v88;
            return result;
          }

          v11 = *(v10 + 8 * v7);
          ++v13;
          if (v11)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    v33 = *(v16 + 4);
    v89 = *&v16[8 * v32 + 24];

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v97 = v93;
    v35 = sub_2629CB1E4(v18);
    v37 = *(v93 + 2);
    v38 = (v36 & 1) == 0;
    v30 = __OFADD__(v37, v38);
    v39 = v37 + v38;
    if (v30)
    {
      goto LABEL_49;
    }

    v40 = v36;
    if (*(v93 + 3) >= v39)
    {
      if ((v34 & 1) == 0)
      {
        v57 = v35;
        sub_2629CDF14();
        v35 = v57;
      }

      v41 = v18;
    }

    else
    {
      sub_2629CF7F0(v39, v34);
      v41 = v18;
      v35 = sub_2629CB1E4(v18);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_53;
      }
    }

    v43 = v97;
    v93 = v97;
    if (v40)
    {
      *(*(v97 + 7) + 8 * v35) = v33;
    }

    else
    {
      *&v97[8 * (v35 >> 6) + 64] |= 1 << v35;
      *(*(v43 + 6) + v35) = v41;
      *(*(v43 + 7) + 8 * v35) = v33;
      v44 = *(v43 + 2);
      v30 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v30)
      {
        goto LABEL_51;
      }

      *(v43 + 2) = v45;
    }

    v46 = swift_isUniquelyReferenced_nonNull_native();
    v97 = v92;
    v47 = sub_2629CB1E4(v18);
    v49 = *(v92 + 2);
    v50 = (v48 & 1) == 0;
    v30 = __OFADD__(v49, v50);
    v51 = v49 + v50;
    if (!v30)
    {
      v52 = v48;
      if (*(v92 + 3) >= v51)
      {
        if ((v46 & 1) == 0)
        {
          v58 = v47;
          sub_2629CDF14();
          v47 = v58;
        }
      }

      else
      {
        sub_2629CF7F0(v51, v46);
        v47 = sub_2629CB1E4(v18);
        if ((v52 & 1) != (v53 & 1))
        {
          goto LABEL_53;
        }
      }

      v54 = v97;
      v92 = v97;
      if (v52)
      {
        *(*(v97 + 7) + 8 * v47) = v89;
      }

      else
      {
        *&v97[8 * (v47 >> 6) + 64] |= 1 << v47;
        *(*(v54 + 6) + v47) = v18;
        *(*(v54 + 7) + 8 * v47) = v89;
        v55 = *(v54 + 2);
        v30 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (v30)
        {
          goto LABEL_52;
        }

        *(v54 + 2) = v56;
      }

      v12 = v94;
      continue;
    }

    break;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  MEMORY[0x26672F6A0](v96);

  __break(1u);
LABEL_53:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

uint64_t sub_2629A85EC()
{
  v1 = sub_262A2A278();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2629ACFF8(*(v0 + 16));
  sub_262A2A268();
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000012, 0x8000000262A31D90);
  sub_262A2A738();
  sub_2629EA8C8(v8, v9);

  sub_262A2A1E8();
  sub_262A2A1C8();
  v6 = *(v0 + 24);
  sub_262A2A1B8();

  return (*(v2 + 8))(v5, v1);
}

void *SIDFitnessClient.deinit()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];

  return v0;
}

uint64_t SIDFitnessClient.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_2629A8808(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2629A88B4;

  return sub_2629A4B9C(a1, a2);
}

uint64_t sub_2629A88B4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2629A89D0(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C088, &qword_262A2B530);
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  v16 = *(a1 + 32);
  if (__OFADD__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 32) = v16 + 1;
    sub_262A29FC8();
    v15[v8[13]] = a3;
    *&v15[v8[11]] = a4;
    *&v15[v8[12]] = a2;
    *&v15[v8[14]] = v16;
    sub_2629ADF8C(v15, v13, &qword_27FF3C088, &qword_262A2B530);
    swift_beginAccess();
    a3 = *(a1 + 24);
    MEMORY[0x26672F6B0](a2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 24) = a3;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  a3 = sub_2629A9828(0, a3[2] + 1, 1, a3, &qword_27FF3C0A0, &qword_262A2B548, &qword_27FF3C088, &qword_262A2B530);
  *(a1 + 24) = a3;
LABEL_3:
  v19 = a3[2];
  v18 = a3[3];
  if (v19 >= v18 >> 1)
  {
    a3 = sub_2629A9828(v18 > 1, v19 + 1, 1, a3, &qword_27FF3C0A0, &qword_262A2B548, &qword_27FF3C088, &qword_262A2B530);
  }

  a3[2] = v19 + 1;
  sub_2629ADA40(v13, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19);
  *(a1 + 24) = a3;
  swift_endAccess();
  return sub_2629ADF2C(v15, &qword_27FF3C088, &qword_262A2B530);
}

void *sub_2629A8C64(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BE98, &qword_262A2B2D0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEA0, &qword_262A2B2D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2629A8DAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEE8, &qword_262A2B390);
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

char *sub_2629A8EB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BED8, &qword_262A2B380);
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

char *sub_2629A9020(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF28, &qword_262A2B3D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2629A9140(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF18, &unk_262A2B3C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2629A9244(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEE0, &qword_262A2B388);
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

void *sub_2629A9364(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEF0, &qword_262A2B398);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEF8, &qword_262A2B3A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2629A94F8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_2629A96E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFE0, &qword_262A2B488);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

size_t sub_2629A9828(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

char *sub_2629A9A74(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_2629A9B60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF60, &qword_262A2B408);
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

void *sub_2629A9C68(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF18, &unk_262A2B3C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_2629A9D00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_2629A9D7C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF48, &unk_262A2B3F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

uint64_t sub_2629A9E00(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C088, &qword_262A2B530) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_262A1F254(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2629A9FE8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_2629A9EB4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_262A1F29C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_262A2A858();
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
      v7 = sub_262A2A548();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_2629AAC90(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2629A9FE8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_262A2A858();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C088, &qword_262A2B530);
        v6 = sub_262A2A548();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C088, &qword_262A2B530) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2629AA388(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2629AA12C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2629AA12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C088, &qword_262A2B530);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v39 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v42 = &v30 - v13;
  result = MEMORY[0x28223BE20](v12);
  v41 = &v30 - v16;
  v32 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v15 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v37 = -v18;
    v38 = v17;
    v20 = a1 - a3;
    v31 = v18;
    v21 = v17 + v18 * a3;
    v40 = v8;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v41;
      sub_2629ADF8C(v21, v41, &qword_27FF3C088, &qword_262A2B530);
      v23 = v42;
      sub_2629ADF8C(v19, v42, &qword_27FF3C088, &qword_262A2B530);
      v24 = *(v8 + 56);
      v25 = *(v22 + v24);
      v26 = *(v23 + v24);
      sub_2629ADF2C(v23, &qword_27FF3C088, &qword_262A2B530);
      result = sub_2629ADF2C(v22, &qword_27FF3C088, &qword_262A2B530);
      v27 = v25 < v26;
      v8 = v40;
      if (!v27)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v28 = v39;
      sub_2629ADA40(v21, v39);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2629ADA40(v28, v19);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2629AA388(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v111 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C088, &qword_262A2B530);
  v119 = *(v8 - 8);
  v9 = *(v119 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v114 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v124 = &v107 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v126 = &v107 - v15;
  result = MEMORY[0x28223BE20](v14);
  v125 = &v107 - v17;
  v120 = a3;
  v18 = *(a3 + 8);
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_95:
    a3 = *v111;
    if (!*v111)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_97:
      v128 = v20;
      v103 = *(v20 + 2);
      if (v103 >= 2)
      {
        while (*v120)
        {
          v104 = *&v20[16 * v103];
          v105 = *&v20[16 * v103 + 24];
          sub_2629AB1DC(*v120 + *(v119 + 72) * v104, *v120 + *(v119 + 72) * *&v20[16 * v103 + 16], *v120 + *(v119 + 72) * v105, a3);
          if (v5)
          {
          }

          if (v105 < v104)
          {
            goto LABEL_120;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_262A1F22C(v20);
          }

          if (v103 - 2 >= *(v20 + 2))
          {
            goto LABEL_121;
          }

          v106 = &v20[16 * v103];
          *v106 = v104;
          *(v106 + 1) = v105;
          v128 = v20;
          result = sub_262A1F1A0(v103 - 1);
          v20 = v128;
          v103 = *(v128 + 2);
          if (v103 <= 1)
          {
          }
        }

        goto LABEL_131;
      }
    }

LABEL_127:
    result = sub_262A1F22C(v20);
    v20 = result;
    goto LABEL_97;
  }

  v108 = a4;
  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v127 = v8;
  while (1)
  {
    v21 = v19;
    if (v19 + 1 >= v18)
    {
      v32 = v19 + 1;
    }

    else
    {
      v121 = v18;
      v110 = v5;
      v22 = v19;
      v23 = *v120;
      v123 = v23;
      v24 = *(v119 + 72);
      a3 = v23 + v24 * (v19 + 1);
      v25 = v125;
      sub_2629ADF8C(a3, v125, &qword_27FF3C088, &qword_262A2B530);
      v26 = v23 + v24 * v22;
      v27 = v126;
      sub_2629ADF8C(v26, v126, &qword_27FF3C088, &qword_262A2B530);
      v28 = *(v8 + 56);
      v29 = *(v25 + v28);
      v117 = *(v27 + v28);
      v118 = v29;
      sub_2629ADF2C(v27, &qword_27FF3C088, &qword_262A2B530);
      result = sub_2629ADF2C(v25, &qword_27FF3C088, &qword_262A2B530);
      v109 = v22;
      v30 = v22 + 2;
      v122 = v24;
      v31 = v123 + v24 * v30;
      v116 = v20;
      while (1)
      {
        v32 = v121;
        if (v121 == v30)
        {
          break;
        }

        LODWORD(v123) = v118 < v117;
        v33 = v125;
        sub_2629ADF8C(v31, v125, &qword_27FF3C088, &qword_262A2B530);
        v34 = v126;
        sub_2629ADF8C(a3, v126, &qword_27FF3C088, &qword_262A2B530);
        v35 = *(v127 + 56);
        v36 = *(v33 + v35);
        v37 = *(v34 + v35);
        sub_2629ADF2C(v34, &qword_27FF3C088, &qword_262A2B530);
        result = sub_2629ADF2C(v33, &qword_27FF3C088, &qword_262A2B530);
        v20 = v116;
        ++v30;
        v31 += v122;
        a3 += v122;
        if (((v123 ^ (v36 >= v37)) & 1) == 0)
        {
          v32 = v30 - 1;
          break;
        }
      }

      v8 = v127;
      v21 = v109;
      v5 = v110;
      if (v118 < v117)
      {
        if (v32 < v109)
        {
          goto LABEL_124;
        }

        if (v109 < v32)
        {
          v38 = v122 * (v32 - 1);
          v39 = v32 * v122;
          v40 = v32;
          v41 = v109;
          v42 = v109 * v122;
          do
          {
            if (v41 != --v40)
            {
              v43 = *v120;
              if (!*v120)
              {
                goto LABEL_130;
              }

              a3 = v43 + v42;
              sub_2629ADA40(v43 + v42, v114);
              if (v42 < v38 || a3 >= v43 + v39)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v42 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_2629ADA40(v114, v43 + v38);
              v8 = v127;
            }

            ++v41;
            v38 -= v122;
            v39 -= v122;
            v42 += v122;
          }

          while (v41 < v40);
          v21 = v109;
          v5 = v110;
          v20 = v116;
        }
      }
    }

    v44 = v120[1];
    if (v32 >= v44)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v32, v21))
    {
      goto LABEL_123;
    }

    if (v32 - v21 >= v108)
    {
LABEL_32:
      v19 = v32;
      if (v32 < v21)
      {
        goto LABEL_122;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v21, v108))
    {
      goto LABEL_125;
    }

    if (v21 + v108 >= v44)
    {
      v45 = v120[1];
    }

    else
    {
      v45 = v21 + v108;
    }

    if (v45 < v21)
    {
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v32 == v45)
    {
      goto LABEL_32;
    }

    v116 = v20;
    v109 = v21;
    v110 = v5;
    v91 = *v120;
    v92 = *(v119 + 72);
    v93 = *v120 + v92 * (v32 - 1);
    v122 = -v92;
    v123 = v91;
    v94 = v21 - v32;
    v112 = v92;
    v113 = v45;
    a3 = v91 + v32 * v92;
LABEL_86:
    v121 = v32;
    v115 = a3;
    v117 = v94;
    v118 = v93;
    v95 = v93;
LABEL_87:
    v96 = v125;
    sub_2629ADF8C(a3, v125, &qword_27FF3C088, &qword_262A2B530);
    v97 = v126;
    sub_2629ADF8C(v95, v126, &qword_27FF3C088, &qword_262A2B530);
    v98 = *(v8 + 56);
    v99 = *(v96 + v98);
    v100 = *(v97 + v98);
    sub_2629ADF2C(v97, &qword_27FF3C088, &qword_262A2B530);
    result = sub_2629ADF2C(v96, &qword_27FF3C088, &qword_262A2B530);
    if (v99 < v100)
    {
      break;
    }

    v8 = v127;
LABEL_85:
    v32 = v121 + 1;
    v19 = v113;
    v93 = v118 + v112;
    v94 = v117 - 1;
    a3 = v115 + v112;
    if (v121 + 1 != v113)
    {
      goto LABEL_86;
    }

    v21 = v109;
    v5 = v110;
    v20 = v116;
    if (v113 < v109)
    {
      goto LABEL_122;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2629A8DAC(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v47 = *(v20 + 2);
    v46 = *(v20 + 3);
    a3 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      result = sub_2629A8DAC((v46 > 1), v47 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = a3;
    v48 = &v20[16 * v47];
    *(v48 + 4) = v21;
    *(v48 + 5) = v19;
    v49 = *v111;
    if (!*v111)
    {
      goto LABEL_132;
    }

    if (v47)
    {
      while (2)
      {
        v50 = a3 - 1;
        if (a3 >= 4)
        {
          v55 = &v20[16 * a3 + 32];
          v56 = *(v55 - 64);
          v57 = *(v55 - 56);
          v61 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          if (v61)
          {
            goto LABEL_109;
          }

          v60 = *(v55 - 48);
          v59 = *(v55 - 40);
          v61 = __OFSUB__(v59, v60);
          v53 = v59 - v60;
          v54 = v61;
          if (v61)
          {
            goto LABEL_110;
          }

          v62 = &v20[16 * a3];
          v64 = *v62;
          v63 = *(v62 + 1);
          v61 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v61)
          {
            goto LABEL_112;
          }

          v61 = __OFADD__(v53, v65);
          v66 = v53 + v65;
          if (v61)
          {
            goto LABEL_115;
          }

          if (v66 >= v58)
          {
            v84 = &v20[16 * v50 + 32];
            v86 = *v84;
            v85 = *(v84 + 1);
            v61 = __OFSUB__(v85, v86);
            v87 = v85 - v86;
            if (v61)
            {
              goto LABEL_119;
            }

            if (v53 < v87)
            {
              v50 = a3 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v54)
            {
              goto LABEL_111;
            }

            v67 = &v20[16 * a3];
            v69 = *v67;
            v68 = *(v67 + 1);
            v70 = __OFSUB__(v68, v69);
            v71 = v68 - v69;
            v72 = v70;
            if (v70)
            {
              goto LABEL_114;
            }

            v73 = &v20[16 * v50 + 32];
            v75 = *v73;
            v74 = *(v73 + 1);
            v61 = __OFSUB__(v74, v75);
            v76 = v74 - v75;
            if (v61)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v71, v76))
            {
              goto LABEL_118;
            }

            if (v71 + v76 < v53)
            {
              goto LABEL_66;
            }

            if (v53 < v76)
            {
              v50 = a3 - 2;
            }
          }
        }

        else
        {
          if (a3 == 3)
          {
            v51 = *(v20 + 4);
            v52 = *(v20 + 5);
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
            goto LABEL_52;
          }

          v77 = &v20[16 * a3];
          v79 = *v77;
          v78 = *(v77 + 1);
          v61 = __OFSUB__(v78, v79);
          v71 = v78 - v79;
          v72 = v61;
LABEL_66:
          if (v72)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v50];
          v82 = *(v80 + 4);
          v81 = *(v80 + 5);
          v61 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v61)
          {
            goto LABEL_116;
          }

          if (v83 < v71)
          {
            break;
          }
        }

        v88 = v50 - 1;
        if (v50 - 1 >= a3)
        {
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
          goto LABEL_126;
        }

        if (!*v120)
        {
          goto LABEL_129;
        }

        a3 = *&v20[16 * v88 + 32];
        v89 = *&v20[16 * v50 + 40];
        sub_2629AB1DC(*v120 + *(v119 + 72) * a3, *v120 + *(v119 + 72) * *&v20[16 * v50 + 32], *v120 + *(v119 + 72) * v89, v49);
        if (v5)
        {
        }

        if (v89 < a3)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_262A1F22C(v20);
        }

        if (v88 >= *(v20 + 2))
        {
          goto LABEL_108;
        }

        v90 = &v20[16 * v88];
        *(v90 + 4) = a3;
        *(v90 + 5) = v89;
        v128 = v20;
        result = sub_262A1F1A0(v50);
        v20 = v128;
        a3 = *(v128 + 2);
        if (a3 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v18 = v120[1];
    if (v19 >= v18)
    {
      goto LABEL_95;
    }
  }

  if (v123)
  {
    v101 = v124;
    sub_2629ADA40(a3, v124);
    v8 = v127;
    swift_arrayInitWithTakeFrontToBack();
    sub_2629ADA40(v101, v95);
    v95 += v122;
    a3 += v122;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

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
  return result;
}

uint64_t sub_2629AAC90(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_262A1F22C(v8);
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
        sub_2629AB700((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
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
      result = sub_2629A8DAC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_2629A8DAC((v29 > 1), v5 + 1, 1, v8);
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
        sub_2629AB700((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
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

uint64_t sub_2629AB1DC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C088, &qword_262A2B530);
  v8 = *(*(v48 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v48);
  v47 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v46 = &v38 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v51 = a1;
  v50 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v18 < 1)
    {
      v30 = a4 + v18;
    }

    else
    {
      v28 = -v14;
      v29 = a4 + v18;
      v30 = a4 + v18;
      v41 = a1;
      v42 = a4;
      v40 = v28;
      do
      {
        v38 = v30;
        v31 = a2 + v28;
        v43 = a2;
        v44 = a2 + v28;
        while (1)
        {
          if (a2 <= a1)
          {
            v51 = a2;
            v49 = v38;
            goto LABEL_58;
          }

          v32 = a3;
          v39 = v30;
          a3 += v28;
          v33 = v29 + v28;
          v34 = v46;
          sub_2629ADF8C(v29 + v28, v46, &qword_27FF3C088, &qword_262A2B530);
          v35 = v47;
          sub_2629ADF8C(v31, v47, &qword_27FF3C088, &qword_262A2B530);
          v36 = *(v48 + 56);
          v45 = *(v34 + v36);
          v37 = *(v35 + v36);
          sub_2629ADF2C(v35, &qword_27FF3C088, &qword_262A2B530);
          sub_2629ADF2C(v34, &qword_27FF3C088, &qword_262A2B530);
          if (v45 < v37)
          {
            break;
          }

          v30 = v33;
          if (v32 < v29 || a3 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v44;
            v28 = v40;
            a1 = v41;
          }

          else
          {
            v31 = v44;
            v28 = v40;
            a1 = v41;
            if (v32 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v29 = v33;
          a2 = v43;
          if (v33 <= v42)
          {
            goto LABEL_56;
          }
        }

        if (v32 < v43 || a3 >= v43)
        {
          a2 = v44;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v40;
          a1 = v41;
          v30 = v39;
        }

        else
        {
          a2 = v44;
          v28 = v40;
          a1 = v41;
          v30 = v39;
          if (v32 != v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v29 > v42);
    }

LABEL_56:
    v51 = a2;
    v49 = v30;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v44 = a3;
    v45 = a4 + v17;
    v49 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v43 = v14;
      do
      {
        v20 = v46;
        v21 = a2;
        sub_2629ADF8C(a2, v46, &qword_27FF3C088, &qword_262A2B530);
        v22 = v47;
        sub_2629ADF8C(a4, v47, &qword_27FF3C088, &qword_262A2B530);
        v23 = *(v48 + 56);
        v24 = *(v20 + v23);
        v25 = *(v22 + v23);
        sub_2629ADF2C(v22, &qword_27FF3C088, &qword_262A2B530);
        sub_2629ADF2C(v20, &qword_27FF3C088, &qword_262A2B530);
        if (v24 >= v25)
        {
          v26 = v43;
          v27 = a4 + v43;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v50 = v27;
          a4 += v26;
        }

        else
        {
          v26 = v43;
          a2 += v43;
          if (a1 < v21 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 += v26;
        v51 = a1;
      }

      while (a4 < v45 && a2 < v44);
    }
  }

LABEL_58:
  sub_262A1A510(&v51, &v50, &v49);
  return 1;
}

uint64_t sub_2629AB700(char *__dst, char *__src, char *a3, char *a4)
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

uint64_t sub_2629AB8F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2629ADE10((a1 + 1), (a2 + 1));
  *a2 = v3;
  return result;
}

_OWORD *sub_2629AB924@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_2629ADE10(*(v3 + 56) + 32 * v13, v19);
    *&v21 = v14;
    result = sub_2629AD99C(v19, (&v21 + 8));
    v16 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v18 = v1[5];
      v17 = v1[6];
      v19[0] = v21;
      v19[1] = v22;
      v20 = v16;
      v18(v19);
      return sub_2629ADF2C(v19, &qword_27FF3C0D8, &qword_262A2B570);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        v23 = 0;
        v21 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_2629ABA88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0E0, &qword_262A2B578);
    v3 = sub_262A2A778();
    for (i = a1 + 32; ; i += 40)
    {
      sub_2629ADF8C(i, &v11, &qword_27FF3BEB8, &qword_262A2B2F0);
      v5 = v11;
      result = sub_2629CB210(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2629AD99C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

uint64_t sub_2629ABBA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v11 = -1 << *(a1 + 32);
  v12 = ~v11;
  v13 = *(a1 + 64);
  v14 = -v11;
  v46 = a1;
  v47 = a1 + 64;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v48 = v12;
  v49 = 0;
  v50 = v15 & v13;
  v51 = a2;
  v52 = a3;

  sub_2629AB924(&v43);
  if (!v45)
  {
LABEL_20:
    sub_2629ADE08();
  }

  while (1)
  {
    v21 = v43;
    sub_2629AD99C(&v44, v42);
    v22 = *a5;
    v23 = sub_2629CB210(v21);
    v25 = *(v22 + 16);
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      break;
    }

    v29 = v24;
    if (*(v22 + 24) < v28)
    {
      sub_2629CF564(v28, a4 & 1);
      v30 = *a5;
      v23 = sub_2629CB210(v21);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_23;
      }

LABEL_14:
      if (v29)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (a4)
    {
      goto LABEL_14;
    }

    v35 = v23;
    sub_2629CDD84();
    v23 = v35;
    if (v29)
    {
LABEL_15:
      v32 = *a5;
      v33 = v23;
      sub_2629ADE10(*(*a5 + 56) + 32 * v23, v40);
      if (a6)
      {
        v34 = swift_allocObject();
        *(v34 + 16) = a6;
        *(v34 + 24) = a7;
        v17 = sub_2629ADEF4;
      }

      else
      {
        sub_2629ADE10(v40, v41);
        v16 = swift_allocObject();
        sub_2629AD99C(v41, (v16 + 16));
        v17 = sub_2629ADEA4;
      }

      v18 = v17;
      v19 = sub_2629ADEAC(a6);
      v18(v19);

      sub_2629ADE10(v42, v41);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      v20 = (*(v32 + 56) + 32 * v33);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      sub_2629AD99C(v41, v20);
      goto LABEL_8;
    }

LABEL_18:
    v36 = *a5;
    *(*a5 + 8 * (v23 >> 6) + 64) |= 1 << v23;
    *(v36[6] + 8 * v23) = v21;
    sub_2629AD99C(v42, (v36[7] + 32 * v23));
    v37 = v36[2];
    v27 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v27)
    {
      goto LABEL_22;
    }

    v36[2] = v38;
LABEL_8:
    sub_2629AB924(&v43);
    a4 = 1;
    if (!v45)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  sub_2629ADF1C(a6);
  result = sub_262A2A938();
  __break(1u);
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2629ABEF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t dispatch thunk of SIDFitnessClient.generatePersonalizedWorkoutPlan(request:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 112);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2629A88B4;

  return v10(a1, a2);
}

unint64_t sub_2629AC0A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C058, &qword_262A2B500);
    v3 = sub_262A2A778();
    v4 = a1 + 32;

    while (1)
    {
      sub_2629ADF8C(v4, v11, &qword_27FF3C060, &qword_262A2B508);
      v5 = v11[0];
      result = sub_2629CB338(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_2629AD99C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

void *sub_2629AC204(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF58, &qword_262A2B400);
  v3 = sub_262A2A778();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = sub_2629CB134(v4, v5, v6, v7);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = v9;
  result = v8;
  v13 = a1 + 13;
  while (1)
  {
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    v14 = (v3[6] + 32 * v11);
    *v14 = v4;
    v14[1] = v5;
    v14[2] = v6;
    v14[3] = v7;
    *(v3[7] + 8 * v11) = result;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v18 = v13 + 5;
    v4 = *(v13 - 4);
    v5 = *(v13 - 3);
    v6 = *(v13 - 2);
    v7 = *(v13 - 1);
    v19 = *v13;

    v11 = sub_2629CB134(v4, v5, v6, v7);
    v13 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2629AC344(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C078, &unk_262A2B520);
    v3 = sub_262A2A778();
    v4 = a1 + 32;

    while (1)
    {
      sub_2629ADF8C(v4, &v16, &qword_27FF3C080, &qword_262A2E490);
      v5 = v16;
      v6 = v17;
      result = sub_2629CB0BC(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

unint64_t sub_2629AC47C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C068, &qword_262A2B510);
    v3 = sub_262A2A778();
    v4 = a1 + 32;

    while (1)
    {
      sub_2629ADF8C(v4, v13, &qword_27FF3C070, &qword_262A2B518);
      result = sub_2629CB400(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2629AD99C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

void *sub_2629AC5CC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF20, &qword_262A2E6D0);
  v3 = sub_262A2A778();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_2629CB210(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_2629CB210(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_2629AC6D4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C038, &unk_262A2B4E0);
  v3 = sub_262A2A778();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_2629CB2B8(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = v5;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_2629CB2B8(v4, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2629AC7F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C030, &unk_262A2E730);
    v3 = sub_262A2A778();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2629CB0BC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_2629AC8EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C028, &unk_262A2B4D0);
    v3 = sub_262A2A778();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_2629CB210(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_2629AC9C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C018, &unk_262A2B4C0);
    v3 = sub_262A2A778();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_2629CB210(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_2629ACABC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_262A2A778();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *(i - 8);
      v8 = *i;

      result = sub_2629CB1E4(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + result) = v7;
      *(v5[7] + 8 * result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_2629ACBD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFD8, &qword_262A2B480);
    v3 = sub_262A2A778();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;

      result = sub_2629CB1E4(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_2629ACCD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFA8, &qword_262A2B450);
    v3 = sub_262A2A778();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2629CB0BC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_2629ACDDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFA0, &unk_262A2E6F0);
    v3 = sub_262A2A778();

    for (i = (a1 + 40); ; i = (i + 40))
    {
      v5 = *(i - 8);
      v12 = *i;
      v13 = i[1];

      result = sub_2629CB1E4(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = (v3[7] + 32 * result);
      *v8 = v12;
      v8[1] = v13;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_2629ACF00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF50, &unk_262A2E6E0);
    v3 = sub_262A2A778();
    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *i;
      v12 = *(i - 1);
      v13 = *(i - 2);
      result = sub_2629CB134(*(i - 4), *(i - 3), *(i - 2), *(i - 1));
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = (v3[6] + 32 * result);
      *v8 = v13;
      v8[1] = v12;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_2629ACFF8(uint64_t a1)
{
  v2 = sub_262A2A218();
  v42 = *(v2 - 8);
  v3 = *(v42 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = &v27 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C088, &qword_262A2B530);
  v9 = *(v8 - 8);
  v40 = v8;
  v41 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = *(a1 + 16);
  v44 = sub_2629AD9AC;
  v45 = a1;

  os_unfair_lock_lock(v13 + 4);
  sub_2629AD9FC(v46);
  os_unfair_lock_unlock(v13 + 4);
  v14 = v46[0];

  v46[0] = v14;

  sub_2629A9E00(v46);

  v15 = v46[0];
  v39 = v46[0][2];
  if (v39)
  {
    v16 = 0;
    v37 = v46[0] + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v35 = 0x8000000262A31BD0;
    v36 = 0x8000000262A31BF0;
    v33 = 0x8000000262A31B70;
    v34 = 0x8000000262A31BB0;
    v31 = 0x8000000262A31B10;
    v32 = 0x8000000262A31B40;
    v30 = (v42 + 16);
    v29 = v42 + 8;
    v28 = v42 + 32;
    v17 = MEMORY[0x277D84F90];
    v27 = xmmword_262A2B290;
    v38 = v46[0];
    while (v16 < v15[2])
    {
      v18 = v16 + 1;
      sub_2629ADF8C(&v37[*(v41 + 72) * v16], v12, &qword_27FF3C088, &qword_262A2B530);
      v12[v40[13]];
      v12[v40[13]];
      v19 = *&v12[v40[11]];
      v20 = *&v12[v40[12]];
      if (v20)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C090, &qword_262A2B538);
        v21 = swift_allocObject();
        *(v21 + 16) = v27;
        *(v21 + 32) = v20;
      }

      MEMORY[0x26672F6B0](v20);
      v22 = v43;
      sub_262A2A208();
      (*v30)(v6, v22, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_2629A94F8(0, v17[2] + 1, 1, v17, &qword_27FF3C098, &qword_262A2B540, MEMORY[0x277D4D3D8]);
      }

      v15 = v38;
      v24 = v17[2];
      v23 = v17[3];
      if (v24 >= v23 >> 1)
      {
        v17 = sub_2629A94F8(v23 > 1, v24 + 1, 1, v17, &qword_27FF3C098, &qword_262A2B540, MEMORY[0x277D4D3D8]);
      }

      v25 = v42;
      (*(v42 + 8))(v43, v2);
      sub_2629ADF2C(v12, &qword_27FF3C088, &qword_262A2B530);
      v17[2] = v24 + 1;
      (*(v25 + 32))(v17 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v24, v6, v2);
      v16 = v18;
      if (v39 == v18)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    MEMORY[0x26672F6A0](v17);

    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
LABEL_13:

    return v17;
  }

  return result;
}

unint64_t sub_2629AD61C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_262A2A778();
    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {
        return v7;
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

unint64_t sub_2629AD7C4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_262A2A778();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_2629AD8B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF68, &qword_262A2B410);
    v3 = sub_262A2A778();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_2629CB708(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

_OWORD *sub_2629AD99C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2629AD9AC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 24);
}

void *sub_2629AD9FC@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_2629ADA40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C088, &qword_262A2B530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_2629ADAB0(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2629ADB70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2629ADBD8()
{
  result = qword_27FF3C200;
  if (!qword_27FF3C200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FF3C0C0, &unk_262A2BA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C200);
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

uint64_t sub_2629ADC84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2629ADD40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2629ADDA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2629ADE10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2629ADE6C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2629ADEAC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2629ADEBC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2629ADEF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2629ADF1C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2629ADF2C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2629ADF8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2629AE03C()
{
  v1 = *v0;
  sub_262A2A998();
  MEMORY[0x26672F240](v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629AE0B0()
{
  v1 = *v0;
  sub_262A2A998();
  MEMORY[0x26672F240](v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629AE0F4()
{
  if (*v0)
  {
    result = 0x6E656D7461657274;
  }

  else
  {
    result = 0x746C7561666564;
  }

  *v0;
  return result;
}

uint64_t sub_2629AE134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v6 || (sub_262A2A878() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656D7461657274 && a2 == 0xEA00000000007374)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262A2A878();

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

uint64_t sub_2629AE230(uint64_t a1)
{
  v2 = sub_2629AE9F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629AE26C(uint64_t a1)
{
  v2 = sub_2629AE9F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2629AE2A8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C130, &qword_262A2B698);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629AE9F8();
  sub_262A2AA28();
  v16 = a2;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C108, &qword_262A2B688);
  sub_2629AEB5C(&qword_27FF3C138, sub_2629AEBE0);
  sub_262A2A848();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C120, &qword_262A2B690);
    sub_2629AEC34();
    sub_262A2A818();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2629AE4A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2629AE7B0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2629AE4E8()
{
  v2 = *v0;
  v1 = v0[1];
  sub_262A2A998();
  sub_2629C0DC4(v4, v2);
  sub_262A2A9B8();
  if (v1)
  {
    sub_2629C0AA4(v4, v1);
  }

  return sub_262A2A9D8();
}

uint64_t sub_2629AE560(__int128 *a1)
{
  v3 = v1[1];
  sub_2629C0DC4(a1, *v1);
  if (!v3)
  {
    return sub_262A2A9B8();
  }

  sub_262A2A9B8();

  return sub_2629C0AA4(a1, v3);
}

uint64_t sub_2629AE5D4()
{
  v2 = *v0;
  v1 = v0[1];
  sub_262A2A998();
  sub_2629C0DC4(v4, v2);
  sub_262A2A9B8();
  if (v1)
  {
    sub_2629C0AA4(v4, v1);
  }

  return sub_262A2A9D8();
}

uint64_t sub_2629AE648(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (sub_2629CA084(*a1, *a2))
  {
    if (v2)
    {
      if (v3)
      {

        v4 = sub_2629CA2B0(v2, v3);

        if (v4)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_2629AE6BC()
{
  result = qword_27FF3C0F0;
  if (!qword_27FF3C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C0F0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2629AE71C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2629AE764(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2629AE7B0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C0F8, &qword_262A2B680);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629AE9F8();
  sub_262A2AA08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C108, &qword_262A2B688);
  HIBYTE(v10) = 0;
  sub_2629AEB5C(&qword_27FF3C110, sub_2629AEA4C);
  sub_262A2A7E8();
  v9 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C120, &qword_262A2B690);
  HIBYTE(v10) = 1;
  sub_2629AEAA0();
  sub_262A2A7B8();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

unint64_t sub_2629AE9F8()
{
  result = qword_27FF3C100;
  if (!qword_27FF3C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C100);
  }

  return result;
}

unint64_t sub_2629AEA4C()
{
  result = qword_27FF3C118;
  if (!qword_27FF3C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C118);
  }

  return result;
}

unint64_t sub_2629AEAA0()
{
  result = qword_27FF3C128;
  if (!qword_27FF3C128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C120, &qword_262A2B690);
    sub_2629AEB5C(&qword_27FF3C110, sub_2629AEA4C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C128);
  }

  return result;
}

uint64_t sub_2629AEB5C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C108, &qword_262A2B688);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2629AEBE0()
{
  result = qword_27FF3C140;
  if (!qword_27FF3C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C140);
  }

  return result;
}

unint64_t sub_2629AEC34()
{
  result = qword_27FF3C148;
  if (!qword_27FF3C148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C120, &qword_262A2B690);
    sub_2629AEB5C(&qword_27FF3C138, sub_2629AEBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C148);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AMSBagResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AMSBagResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2629AEE68()
{
  result = qword_27FF3C150;
  if (!qword_27FF3C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C150);
  }

  return result;
}

unint64_t sub_2629AEEC0()
{
  result = qword_27FF3C158;
  if (!qword_27FF3C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C158);
  }

  return result;
}

unint64_t sub_2629AEF18()
{
  result = qword_27FF3C160;
  if (!qword_27FF3C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C160);
  }

  return result;
}

uint64_t sub_2629AEF6C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_262A2A998();
  sub_2629C00C4(v4, v1);
  sub_2629C074C(v4, v2);
  return sub_262A2A9D8();
}

uint64_t sub_2629AEFC0(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_2629C00C4(a1, v3);

  return sub_2629C074C(a1, v4);
}

uint64_t sub_2629AF000()
{
  v1 = *v0;
  v2 = v0[1];
  sub_262A2A998();
  sub_2629C00C4(v4, v1);
  sub_2629C074C(v4, v2);
  return sub_262A2A9D8();
}

uint64_t sub_2629AF050(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_2629C99E4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_2629C9CC0(v2, v3);
}

unint64_t sub_2629AF0B0()
{
  result = qword_27FF3C168;
  if (!qword_27FF3C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C168);
  }

  return result;
}

unint64_t sub_2629AF118()
{
  result = qword_27FF3C170;
  if (!qword_27FF3C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C170);
  }

  return result;
}

unint64_t sub_2629AF16C(char a1)
{
  result = 0x456C65646F4D7369;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      return result;
    case 7:
      result = 0x6B6361426B6F6F6CLL;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0xD000000000000039;
      break;
    case 11:
    case 12:
    case 20:
      result = 0xD000000000000026;
      break;
    case 13:
    case 17:
      result = 0xD000000000000028;
      break;
    case 14:
      result = 0xD000000000000027;
      break;
    case 15:
    case 19:
    case 22:
      result = 0xD000000000000022;
      break;
    case 16:
      result = 0xD000000000000024;
      break;
    case 18:
      result = 0xD000000000000014;
      break;
    case 21:
      result = 0xD000000000000012;
      break;
    case 23:
    case 25:
      v3 = 9;
      goto LABEL_20;
    case 24:
      v3 = 11;
LABEL_20:
      result = v3 | 0xD000000000000014;
      break;
    case 26:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD000000000000021;
      break;
  }

  return result;
}

uint64_t sub_2629AF494(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2629AF16C(*a1);
  v5 = v4;
  if (v3 == sub_2629AF16C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_262A2A878();
  }

  return v8 & 1;
}

uint64_t sub_2629AF51C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2629AF690();
  *a2 = result;
  return result;
}

unint64_t sub_2629AF54C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2629AF16C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2629AF578()
{
  v1 = *v0;
  sub_262A2A998();
  sub_2629AF16C(v1);
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t sub_2629AF5DC()
{
  sub_2629AF16C(*v0);
  sub_262A2A448();
}

uint64_t sub_2629AF630()
{
  v1 = *v0;
  sub_262A2A998();
  sub_2629AF16C(v1);
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t sub_2629AF690()
{
  v0 = sub_262A2A918();

  if (v0 >= 0x1B)
  {
    return 27;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for PlanDynamicConfigConstant(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlanDynamicConfigConstant(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_2629AF888(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2629AF8D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2629AF958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);

  if (!v4)
  {
    v6 = 0x3FECCCCCCCCCCCCDLL;
    goto LABEL_11;
  }

  v5 = sub_2629CB338(0);
  v6 = 0x3FECCCCCCCCCCCCDLL;
  if (v7)
  {
    sub_2629ADE10(*(a1 + 56) + 32 * v5, v101);
    if (swift_dynamicCast())
    {
      v6 = *&v99;
    }
  }

  if (!*(a1 + 16) || (v8 = sub_2629CB338(1), (v9 & 1) == 0) || (sub_2629ADE10(*(a1 + 56) + 32 * v8, v101), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:
    v97 = 3157553;
    v98 = 0xE300000000000000;
    if (!*(a1 + 16))
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v97 = *&v99;
  v98 = v100;
  if (!*(a1 + 16))
  {
LABEL_9:
    v10 = 0x3FECCCCCCCCCCCCDLL;
    goto LABEL_19;
  }

LABEL_12:
  v11 = sub_2629CB338(2);
  v10 = 0x3FECCCCCCCCCCCCDLL;
  if (v12)
  {
    sub_2629ADE10(*(a1 + 56) + 32 * v11, v101);
    if (swift_dynamicCast())
    {
      v10 = *&v99;
    }
  }

  if (*(a1 + 16))
  {
    v13 = sub_2629CB338(3);
    if ((v14 & 1) != 0 && (sub_2629ADE10(*(a1 + 56) + 32 * v13, v101), swift_dynamicCast()))
    {
      v15 = *&v99;
    }

    else
    {
      v15 = 180;
    }

    v96 = v15;
    if (!*(a1 + 16))
    {
      v94 = 0;
      v95 = 365;
      goto LABEL_38;
    }

    v18 = sub_2629CB338(4);
    if ((v19 & 1) != 0 && (sub_2629ADE10(*(a1 + 56) + 32 * v18, v101), swift_dynamicCast()))
    {
      v20 = *&v99;
    }

    else
    {
      v20 = 365;
    }

    v95 = v20;
    if (*(a1 + 16))
    {
      goto LABEL_20;
    }

LABEL_33:
    v94 = 0;
    goto LABEL_38;
  }

LABEL_19:
  v95 = 365;
  v96 = 180;
  if (!*(a1 + 16))
  {
    goto LABEL_33;
  }

LABEL_20:
  v16 = sub_2629CB338(5);
  if ((v17 & 1) != 0 && (sub_2629ADE10(*(a1 + 56) + 32 * v16, v101), swift_dynamicCast()))
  {
    v94 = LOBYTE(v99);
    if (!*(a1 + 16))
    {
      goto LABEL_38;
    }
  }

  else
  {
    v94 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_38;
    }
  }

  v21 = sub_2629CB338(6);
  if (v22)
  {
    sub_2629ADE10(*(a1 + 56) + 32 * v21, v101);
    if (swift_dynamicCast())
    {
      v23 = *&v99;
      goto LABEL_39;
    }
  }

LABEL_38:
  v23 = 4;
LABEL_39:
  v93 = v23;
  if (!*(a1 + 16))
  {
    v92 = 90;
    goto LABEL_49;
  }

  v24 = sub_2629CB338(7);
  if ((v25 & 1) != 0 && (sub_2629ADE10(*(a1 + 56) + 32 * v24, v101), swift_dynamicCast()))
  {
    v26 = *&v99;
  }

  else
  {
    v26 = 90;
  }

  v92 = v26;
  if (!*(a1 + 16))
  {
LABEL_49:
    v90 = 100;
    v91 = 90;
    if (!*(a1 + 16))
    {
      goto LABEL_63;
    }

    goto LABEL_50;
  }

  v27 = sub_2629CB338(8);
  if ((v28 & 1) != 0 && (sub_2629ADE10(*(a1 + 56) + 32 * v27, v101), swift_dynamicCast()))
  {
    v29 = *&v99;
  }

  else
  {
    v29 = 90;
  }

  v91 = v29;
  if (!*(a1 + 16))
  {
    v89 = 2;
    v90 = 100;
    goto LABEL_69;
  }

  v33 = sub_2629CB338(9);
  if ((v34 & 1) != 0 && (sub_2629ADE10(*(a1 + 56) + 32 * v33, v101), swift_dynamicCast()))
  {
    v35 = *&v99;
  }

  else
  {
    v35 = 100;
  }

  v90 = v35;
  if (*(a1 + 16))
  {
LABEL_50:
    v30 = sub_2629CB338(10);
    if ((v31 & 1) != 0 && (sub_2629ADE10(*(a1 + 56) + 32 * v30, v101), swift_dynamicCast()))
    {
      v32 = *&v99;
    }

    else
    {
      v32 = 2;
    }

    v89 = v32;
    if (*(a1 + 16))
    {
      v37 = sub_2629CB338(11);
      if (v38)
      {
        sub_2629ADE10(*(a1 + 56) + 32 * v37, v101);
        if (swift_dynamicCast())
        {
          v39 = *&v99;
          goto LABEL_70;
        }
      }
    }

LABEL_69:
    v39 = 3;
LABEL_70:
    v88 = v39;
    if (!*(a1 + 16))
    {
      goto LABEL_64;
    }

    goto LABEL_71;
  }

LABEL_63:
  v88 = 3;
  v89 = 2;
  if (!*(a1 + 16))
  {
LABEL_64:
    v36 = 3;
LABEL_74:
    v42 = 3;
    v43 = 1;
    goto LABEL_85;
  }

LABEL_71:
  v40 = sub_2629CB338(12);
  if ((v41 & 1) != 0 && (sub_2629ADE10(*(a1 + 56) + 32 * v40, v101), swift_dynamicCast()))
  {
    v36 = *&v99;
    if (!*(a1 + 16))
    {
      goto LABEL_74;
    }
  }

  else
  {
    v36 = 3;
    if (!*(a1 + 16))
    {
      goto LABEL_74;
    }
  }

  v44 = sub_2629CB338(13);
  if ((v45 & 1) != 0 && (sub_2629ADE10(*(a1 + 56) + 32 * v44, v101), swift_dynamicCast()))
  {
    v43 = *&v99;
    if (!*(a1 + 16))
    {
LABEL_79:
      v42 = 3;
      goto LABEL_90;
    }
  }

  else
  {
    v43 = 1;
    if (!*(a1 + 16))
    {
      goto LABEL_79;
    }
  }

  v46 = sub_2629CB338(14);
  if ((v47 & 1) != 0 && (sub_2629ADE10(*(a1 + 56) + 32 * v46, v101), swift_dynamicCast()))
  {
    v42 = *&v99;
  }

  else
  {
    v42 = 3;
  }

LABEL_85:
  if (!*(a1 + 16))
  {
    v53 = 1;
    v50 = 3;
    goto LABEL_108;
  }

  v48 = sub_2629CB338(15);
  if ((v49 & 1) == 0 || (sub_2629ADE10(*(a1 + 56) + 32 * v48, v101), !swift_dynamicCast()))
  {
LABEL_90:
    v50 = 3;
    if (!*(a1 + 16))
    {
      goto LABEL_95;
    }

    goto LABEL_91;
  }

  v50 = *&v99;
  if (!*(a1 + 16))
  {
    goto LABEL_95;
  }

LABEL_91:
  v51 = sub_2629CB338(16);
  if ((v52 & 1) == 0 || (sub_2629ADE10(*(a1 + 56) + 32 * v51, v101), !swift_dynamicCast()))
  {
LABEL_95:
    v53 = 1;
    if (*(a1 + 16))
    {
      goto LABEL_96;
    }

LABEL_108:
    v55 = 0x3FECCCCCCCCCCCCDLL;
LABEL_109:
    v58 = 1.0;
    v61 = 0x3FECCCCCCCCCCCCDLL;
    goto LABEL_110;
  }

  v53 = *&v99;
  if (!*(a1 + 16))
  {
    goto LABEL_108;
  }

LABEL_96:
  v54 = sub_2629CB338(17);
  v55 = 0x3FECCCCCCCCCCCCDLL;
  if (v56)
  {
    sub_2629ADE10(*(a1 + 56) + 32 * v54, v101);
    if (swift_dynamicCast())
    {
      v55 = *&v99;
    }
  }

  if (!*(a1 + 16))
  {
    goto LABEL_109;
  }

  v57 = sub_2629CB338(18);
  v58 = 1.0;
  if (v59)
  {
    sub_2629ADE10(*(a1 + 56) + 32 * v57, v101);
    if (swift_dynamicCast())
    {
      v58 = v99;
    }
  }

  if (!*(a1 + 16))
  {
    v87 = 0x3FE3333333333333;
    v61 = 0x3FECCCCCCCCCCCCDLL;
    goto LABEL_122;
  }

  v60 = sub_2629CB338(19);
  v61 = 0x3FECCCCCCCCCCCCDLL;
  if (v62)
  {
    sub_2629ADE10(*(a1 + 56) + 32 * v60, v101);
    if (swift_dynamicCast())
    {
      v61 = *&v99;
    }
  }

LABEL_110:
  if (!*(a1 + 16))
  {
    v65 = 4;
    v87 = 0x3FE3333333333333;
    goto LABEL_123;
  }

  v63 = sub_2629CB338(20);
  if ((v64 & 1) != 0 && (sub_2629ADE10(*(a1 + 56) + 32 * v63, v101), swift_dynamicCast()))
  {
    v87 = *&v99;
    if (!*(a1 + 16))
    {
      goto LABEL_122;
    }
  }

  else
  {
    v87 = 0x3FE3333333333333;
    if (!*(a1 + 16))
    {
      goto LABEL_122;
    }
  }

  v66 = sub_2629CB338(21);
  if (v67)
  {
    sub_2629ADE10(*(a1 + 56) + 32 * v66, v101);
    if (swift_dynamicCast())
    {
      v65 = *&v99;
      goto LABEL_123;
    }
  }

LABEL_122:
  v65 = 4;
LABEL_123:
  if (!*(a1 + 16))
  {
    v73 = v55;
    v75 = v10;
    v76 = v6;
    v69 = 0x3FECCCCCCCCCCCCDLL;
LABEL_133:
    v72 = 0x3FECCCCCCCCCCCCDLL;
    v77 = 0x3FECCCCCCCCCCCCDLL;
    goto LABEL_134;
  }

  v68 = sub_2629CB338(22);
  v69 = 0x3FECCCCCCCCCCCCDLL;
  if (v70)
  {
    sub_2629ADE10(*(a1 + 56) + 32 * v68, v101);
    if (swift_dynamicCast())
    {
      v69 = *&v99;
    }
  }

  if (!*(a1 + 16))
  {
    v73 = v55;
    v75 = v10;
    v76 = v6;
    goto LABEL_133;
  }

  v71 = sub_2629CB338(23);
  v72 = 0x3FECCCCCCCCCCCCDLL;
  v73 = v55;
  if (v74)
  {
    sub_2629ADE10(*(a1 + 56) + 32 * v71, v101);
    v75 = v10;
    if (swift_dynamicCast())
    {
      v72 = *&v99;
    }
  }

  else
  {
    v75 = v10;
  }

  v76 = v6;
  if (!*(a1 + 16))
  {
    v80 = 0;
    v77 = 0x3FECCCCCCCCCCCCDLL;
    goto LABEL_151;
  }

  v81 = sub_2629CB338(24);
  v77 = 0x3FECCCCCCCCCCCCDLL;
  if (v82)
  {
    sub_2629ADE10(*(a1 + 56) + 32 * v81, v101);
    if (swift_dynamicCast())
    {
      v77 = *&v99;
    }
  }

LABEL_134:
  if (!*(a1 + 16))
  {
    v80 = 0;
    goto LABEL_151;
  }

  v78 = sub_2629CB338(25);
  if ((v79 & 1) != 0 && (sub_2629ADE10(*(a1 + 56) + 32 * v78, v101), swift_dynamicCast()))
  {
    v80 = LOBYTE(v99);
    if (!*(a1 + 16))
    {
      goto LABEL_151;
    }
  }

  else
  {
    v80 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_151;
    }
  }

  v83 = sub_2629CB338(26);
  if ((v84 & 1) == 0)
  {
LABEL_151:

    goto LABEL_152;
  }

  sub_2629ADE10(*(a1 + 56) + 32 * v83, v101);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_152:
    v86 = 0x3FECCCCCCCCCCCCDLL;
    goto LABEL_153;
  }

  v86 = *&v99;
LABEL_153:
  *a2 = v76;
  *(a2 + 8) = v97;
  *(a2 + 16) = v98;
  *(a2 + 24) = v75;
  *(a2 + 32) = v96;
  *(a2 + 40) = v95;
  *(a2 + 48) = v94;
  *(a2 + 56) = v93;
  *(a2 + 64) = v92;
  *(a2 + 72) = v91;
  *(a2 + 80) = v90;
  *(a2 + 88) = v89;
  *(a2 + 96) = v88;
  *(a2 + 104) = v36;
  *(a2 + 112) = v43;
  *(a2 + 120) = v42;
  *(a2 + 128) = v50;
  *(a2 + 136) = v53;
  *(a2 + 144) = v73;
  *(a2 + 152) = v58;
  *(a2 + 160) = v61;
  *(a2 + 168) = v87;
  *(a2 + 176) = v65;
  *(a2 + 184) = v69;
  *(a2 + 192) = v72;
  *(a2 + 200) = v77;
  *(a2 + 208) = v80;
  *(a2 + 216) = v86;
  *(a2 + 224) = a1;
  return result;
}

_OWORD *sub_2629B0540(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_2629AD99C(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_262A11E30(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_2629B18D8(a1);
    v8 = *v2;
    v9 = sub_2629CB338(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_2629CEC70();
        v14 = v16;
      }

      sub_2629AD99C((*(v14 + 56) + 32 * v11), v17);
      sub_262A11250(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_2629B18D8(v17);
  }

  return result;
}

double sub_2629B0624@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a1 + 16) || (v7 = sub_2629CB0BC(0x746C7561666564, 0xE700000000000000), (v8 & 1) == 0) || (sub_2629ADE10(*(a1 + 56) + 32 * v7, v28), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C178, "Щ"), (swift_dynamicCast() & 1) == 0))
  {
    sub_2629EA8B0(0xD00000000000002ALL, 0x8000000262A31EC0);
    v14 = sub_2629AC0A0(MEMORY[0x277D84F90]);
    goto LABEL_10;
  }

  v9 = sub_2629B091C(v27);

  if (!*(a2 + 16))
  {
    sub_2629EA8C8(0xD000000000000037, 0x8000000262A31F40);
    goto LABEL_13;
  }

  if (!*(a1 + 16) || (v10 = sub_2629CB0BC(0x6E656D7461657274, 0xEA00000000007374), (v11 & 1) == 0) || (sub_2629ADE10(*(a1 + 56) + 32 * v10, v28), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C180, "ҩ"), v12 = swift_dynamicCast(), (v12 & 1) == 0))
  {
    sub_2629EAAEC(0xD00000000000004ALL, 0x8000000262A31EF0);
LABEL_13:
    v14 = v9;
    goto LABEL_10;
  }

  MEMORY[0x28223BE20](v12);
  v26[2] = v27;
  v26[3] = v3;
  v13 = sub_2629EB0A0(v9, sub_2629B17A4, v26, a2);

  v14 = v13;
LABEL_10:
  sub_2629AF958(v14, v28);
  v15 = v44;
  result = v43;
  v17 = v42;
  v18 = v41;
  v19 = v39;
  v20 = v36;
  v21 = v30;
  v22 = v28[3];
  v23 = v28[1];
  v24 = v28[2];
  *a3 = v28[0];
  *(a3 + 8) = v23;
  *(a3 + 16) = v24;
  *(a3 + 24) = v22;
  *(a3 + 32) = v29;
  *(a3 + 48) = v21;
  *(a3 + 56) = v31;
  *(a3 + 72) = v32;
  *(a3 + 88) = v33;
  *(a3 + 104) = v34;
  *(a3 + 120) = v35;
  *(a3 + 136) = v20;
  v25 = v38;
  *(a3 + 144) = v37;
  *(a3 + 160) = v25;
  *(a3 + 176) = v19;
  *(a3 + 184) = v40;
  *(a3 + 200) = v18;
  *(a3 + 208) = v17;
  *(a3 + 216) = result;
  *(a3 + 224) = v15;
  return result;
}

uint64_t sub_2629B091C(uint64_t a1)
{
  v51 = type metadata accessor for PersistentLogger();
  v2 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_2629AC0A0(MEMORY[0x277D84F90]);
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v55 = 0x8000000262A32070;

  v9 = 0;
  *&v10 = 136446210;
  v50 = v10;
  v57 = v4;
  while (v7)
  {
    v11 = v9;
LABEL_16:
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    sub_2629ADE10(*(a1 + 56) + 32 * v15, v60);
    *&v61 = v18;
    *(&v61 + 1) = v17;
    sub_2629AD99C(v60, &v62);

LABEL_17:
    v64 = v61;
    v65[0] = v62;
    v65[1] = v63;
    v19 = *(&v61 + 1);
    if (!*(&v61 + 1))
    {

      return v58;
    }

    v20 = v64;
    sub_2629AD99C(v65, &v61);

    v21 = sub_2629AF690();
    if (v21 == 27)
    {
      *&v60[0] = 0;
      *(&v60[0] + 1) = 0xE000000000000000;
      sub_262A2A6F8();

      *&v60[0] = 0xD000000000000020;
      *(&v60[0] + 1) = v55;
      MEMORY[0x26672ECF0](v20, v19);

      MEMORY[0x26672ECF0](0x697070696B73202CLL, 0xEA0000000000676ELL);
      v22 = v60[0];
      v23 = v57;
      sub_2629B17C0(v56, v57);

      v24 = sub_262A2A2D8();
      v25 = sub_262A2A5E8();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v52 = v22;
        v27 = v26;
        v28 = swift_slowAlloc();
        v54 = v28;
        *v27 = v50;
        v59 = v28;
        *&v60[0] = 91;
        *(&v60[0] + 1) = 0xE100000000000000;
        v53 = v25;
        v29 = *(v51 + 20);
        sub_262A2A018();
        sub_2629B1880();
        v30 = sub_262A2A868();
        MEMORY[0x26672ECF0](v30);

        MEMORY[0x26672ECF0](8285, 0xE200000000000000);
        MEMORY[0x26672ECF0](v52, *(&v22 + 1));
        v31 = v60[0];
        sub_2629B1824(v57);
        v32 = sub_262A1D0CC(v31, *(&v31 + 1), &v59);

        *(v27 + 4) = v32;
        _os_log_impl(&dword_2629A3000, v24, v53, "%{public}s", v27, 0xCu);
        v33 = v54;
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        MEMORY[0x26672F820](v33, -1, -1);
        MEMORY[0x26672F820](v27, -1, -1);
      }

      else
      {

        sub_2629B1824(v23);
      }
    }

    else
    {
      v34 = v21;

      sub_2629ADE10(&v61, v60);
      v35 = v58;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v35;
      v37 = sub_2629CB338(v34);
      v39 = *(v35 + 16);
      v40 = (v38 & 1) == 0;
      v41 = __OFADD__(v39, v40);
      v42 = v39 + v40;
      if (v41)
      {
        goto LABEL_34;
      }

      v43 = v38;
      if (*(v35 + 24) >= v42)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v48 = v37;
          sub_2629CEC70();
          v37 = v48;
        }
      }

      else
      {
        sub_2629D1630(v42, isUniquelyReferenced_nonNull_native);
        v37 = sub_2629CB338(v34);
        if ((v43 & 1) != (v44 & 1))
        {
          goto LABEL_36;
        }
      }

      v58 = v59;
      if (v43)
      {
        v45 = (v59[7] + 32 * v37);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        sub_2629AD99C(v60, v45);
      }

      else
      {
        v59[(v37 >> 6) + 8] |= 1 << v37;
        *(v58[6] + v37) = v34;
        sub_2629AD99C(v60, (v58[7] + 32 * v37));
        v46 = v58[2];
        v41 = __OFADD__(v46, 1);
        v47 = v46 + 1;
        if (v41)
        {
          goto LABEL_35;
        }

        v58[2] = v47;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v61);
  }

  if (v8 <= v9 + 1)
  {
    v12 = v9 + 1;
  }

  else
  {
    v12 = v8;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      v7 = 0;
      v62 = 0u;
      v63 = 0u;
      v9 = v13;
      v61 = 0u;
      goto LABEL_17;
    }

    v7 = *(a1 + 64 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

uint64_t sub_2629B0E7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = a2[1];
  if (*(a3 + 16) && (v9 = sub_2629CB0BC(*a2, a2[1]), (v10 & 1) != 0))
  {
    v11 = *(*(a3 + 56) + 8 * v9);

    sub_262A2A6F8();

    MEMORY[0x26672ECF0](v6, v7);
    sub_2629EA8C8(0xD000000000000014, 0x8000000262A31FB0);

    v12 = sub_2629B1014(v11, v5);

    *a4 = v12;
  }

  else
  {
    sub_262A2A6F8();

    strcpy(v14, "Treatment ID ");
    HIWORD(v14[1]) = -4864;
    MEMORY[0x26672ECF0](v6, v7);
    MEMORY[0x26672ECF0](0xD000000000000023, 0x8000000262A31F80);
    sub_2629EA8C8(v14[0], v14[1]);

    *a4 = v5;
  }

  return result;
}

uint64_t sub_2629B1014(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v69 = type metadata accessor for PersistentLogger();
  v6 = *(*(v69 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v69);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v65 = &v61 - v11;
  MEMORY[0x28223BE20](v10);
  v62 = &v61 - v12;
  v14 = a1 + 64;
  v13 = *(a1 + 64);
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  v82 = a2;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v61 = 0x8000000262A32040;
  v64 = "atment configuration key: ";
  v68 = "Applying treatment: ";

  v72 = a1;

  v20 = 0;
  *&v21 = 136446210;
  v67 = v21;
  v70 = v2;
  v71 = a2;
  v73 = v14;
  v74 = v9;
  if (!v17)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v22 = v20;
LABEL_16:
      v25 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v26 = v25 | (v22 << 6);
      v27 = (*(v72 + 48) + 16 * v26);
      v29 = *v27;
      v28 = v27[1];
      sub_2629ADE10(*(v72 + 56) + 32 * v26, v76);
      *&v77 = v29;
      *(&v77 + 1) = v28;
      sub_2629AD99C(v76, &v78);

LABEL_17:
      v80 = v77;
      v81[0] = v78;
      v81[1] = v79;
      v30 = *(&v77 + 1);
      if (!*(&v77 + 1))
      {

        return v82;
      }

      v31 = v80;
      sub_2629AD99C(v81, &v77);

      v32 = sub_2629AF690();
      if (v32 != 27)
      {
        break;
      }

      *&v76[0] = 0;
      *(&v76[0] + 1) = 0xE000000000000000;
      sub_262A2A6F8();
      MEMORY[0x26672ECF0](0xD00000000000002ALL, v68 | 0x8000000000000000);
      MEMORY[0x26672ECF0](v31, v30);

      MEMORY[0x26672ECF0](0x697070696B73202CLL, 0xEA0000000000676ELL);
      v33 = v76[0];
      sub_2629B17C0(v3, v9);

      v34 = sub_262A2A2D8();
      v35 = sub_262A2A5E8();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v66 = v33;
        v37 = v36;
        v38 = swift_slowAlloc();
        *v37 = v67;
        v75 = v38;
        *&v76[0] = 91;
        *(&v76[0] + 1) = 0xE100000000000000;
        v39 = *(v69 + 20);
        sub_262A2A018();
        sub_2629B1880();
        v40 = sub_262A2A868();
        MEMORY[0x26672ECF0](v40);

        MEMORY[0x26672ECF0](8285, 0xE200000000000000);
        MEMORY[0x26672ECF0](v66, *(&v33 + 1));
        v42 = *(&v76[0] + 1);
        v41 = *&v76[0];
        sub_2629B1824(v74);
        v43 = sub_262A1D0CC(v41, v42, &v75);
        v3 = v70;

        *(v37 + 4) = v43;
        _os_log_impl(&dword_2629A3000, v34, v35, "%{public}s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        v44 = v38;
        v9 = v74;
        MEMORY[0x26672F820](v44, -1, -1);
        MEMORY[0x26672F820](v37, -1, -1);
      }

      else
      {

        sub_2629B1824(v9);
      }

      result = __swift_destroy_boxed_opaque_existential_1Tm(&v77);
      a2 = v71;
      v14 = v73;
      if (!v17)
      {
        goto LABEL_8;
      }
    }

    if (*(a2 + 16) && (v45 = v32, sub_2629CB338(v32), (v46 & 1) != 0))
    {
      sub_2629ADE10(&v77, v76);
      sub_2629B0540(v76, v45);
      *&v76[0] = 0;
      *(&v76[0] + 1) = 0xE000000000000000;
      sub_262A2A6F8();

      *&v76[0] = 0xD000000000000024;
      *(&v76[0] + 1) = v61;
      MEMORY[0x26672ECF0](v31, v30);

      v48 = *(&v76[0] + 1);
      v47 = *&v76[0];
      v49 = v62;
      sub_2629B17C0(v3, v62);

      v50 = sub_262A2A2D8();
      v51 = sub_262A2A5D8();
    }

    else
    {
      *&v76[0] = 0;
      *(&v76[0] + 1) = 0xE000000000000000;
      sub_262A2A6F8();
      MEMORY[0x26672ECF0](0x6E656D7461657254, 0xEE002079656B2074);
      MEMORY[0x26672ECF0](v31, v30);

      MEMORY[0x26672ECF0](0xD000000000000036, v64 | 0x8000000000000000);
      v48 = *(&v76[0] + 1);
      v47 = *&v76[0];
      v49 = v65;
      sub_2629B17C0(v3, v65);

      v50 = sub_262A2A2D8();
      v51 = sub_262A2A5F8();
    }

    v52 = v51;

    if (os_log_type_enabled(v50, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v66 = v54;
      *v53 = v67;
      v75 = v54;
      *&v76[0] = 91;
      *(&v76[0] + 1) = 0xE100000000000000;
      v63 = v52;
      v55 = *(v69 + 20);
      sub_262A2A018();
      sub_2629B1880();
      v56 = sub_262A2A868();
      MEMORY[0x26672ECF0](v56);
      v3 = v70;

      MEMORY[0x26672ECF0](8285, 0xE200000000000000);
      MEMORY[0x26672ECF0](v47, v48);
      v57 = v76[0];
      sub_2629B1824(v49);
      v58 = sub_262A1D0CC(v57, *(&v57 + 1), &v75);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_2629A3000, v50, v63, "%{public}s", v53, 0xCu);
      v59 = v66;
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      MEMORY[0x26672F820](v59, -1, -1);
      v60 = v53;
      a2 = v71;
      MEMORY[0x26672F820](v60, -1, -1);
    }

    else
    {

      sub_2629B1824(v49);
    }

    v9 = v74;
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v77);
    v14 = v73;
  }

  while (v17);
LABEL_8:
  if (v18 <= v20 + 1)
  {
    v23 = v20 + 1;
  }

  else
  {
    v23 = v18;
  }

  v24 = v23 - 1;
  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v18)
    {
      v17 = 0;
      v78 = 0u;
      v79 = 0u;
      v20 = v24;
      v77 = 0u;
      goto LABEL_17;
    }

    v17 = *(v14 + 8 * v22);
    ++v20;
    if (v17)
    {
      v20 = v22;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629B17C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistentLogger();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629B1824(uint64_t a1)
{
  v2 = type metadata accessor for PersistentLogger();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2629B1880()
{
  result = qword_27FF3C0D0;
  if (!qword_27FF3C0D0)
  {
    sub_262A2A018();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C0D0);
  }

  return result;
}

uint64_t sub_2629B18D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CCF0, &unk_262A2B9A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2629B1954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PersistentLogger();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2629B1A24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PersistentLogger();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for PlanDynamicConfigurationLoader()
{
  result = qword_27FF3C188;
  if (!qword_27FF3C188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2629B1B28()
{
  type metadata accessor for PersistentLogger();
  if (v0 <= 0x3F)
  {
    sub_2629B1BAC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2629B1BAC()
{
  if (!qword_27FF3C198)
  {
    sub_2629B1C14();
    sub_2629B1C68();
    v0 = type metadata accessor for OperationTracker();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF3C198);
    }
  }
}

unint64_t sub_2629B1C14()
{
  result = qword_27FF3C1A0;
  if (!qword_27FF3C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C1A0);
  }

  return result;
}

unint64_t sub_2629B1C68()
{
  result = qword_27FF3C1A8;
  if (!qword_27FF3C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C1A8);
  }

  return result;
}

uint64_t sub_2629B1CBC(uint64_t a1, uint64_t a2)
{
  v3[150] = v2;
  v3[149] = a2;
  v3[148] = a1;
  v4 = sub_262A2A328();
  v3[151] = v4;
  v5 = *(v4 - 8);
  v3[152] = v5;
  v6 = *(v5 + 64) + 15;
  v3[153] = swift_task_alloc();
  v3[154] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2629B1D90, 0, 0);
}

uint64_t sub_2629B1D90()
{
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1192);
  *(v0 + 1240) = OBJC_IVAR____TtC10SIDFitness31PlanDynamicConfigurationManager_logger;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000048, 0x8000000262A32210);
  *(v0 + 1176) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0C0, &unk_262A2BA70);
  sub_2629ADBD8();
  v4 = sub_262A2A398();
  MEMORY[0x26672ECF0](v4);

  sub_2629EA8C8(0, 0xE000000000000000);

  sub_262A2A318();
  v5 = *(v2 + 16);
  v6 = *(v2 + 48);
  *(v0 + 264) = *(v2 + 32);
  *(v0 + 280) = v6;
  *(v0 + 248) = v5;
  v7 = *(v2 + 64);
  v8 = *(v2 + 80);
  v9 = *(v2 + 112);
  *(v0 + 328) = *(v2 + 96);
  *(v0 + 344) = v9;
  *(v0 + 296) = v7;
  *(v0 + 312) = v8;
  v10 = *(v2 + 128);
  v11 = *(v2 + 144);
  v12 = *(v2 + 176);
  *(v0 + 392) = *(v2 + 160);
  *(v0 + 408) = v12;
  *(v0 + 360) = v10;
  *(v0 + 376) = v11;
  v13 = *(v2 + 192);
  v14 = *(v2 + 208);
  v15 = *(v2 + 224);
  *(v0 + 472) = *(v2 + 240);
  *(v0 + 440) = v14;
  *(v0 + 456) = v15;
  *(v0 + 424) = v13;
  v16 = *(v2 + 16);
  v17 = *(v2 + 48);
  *(v0 + 32) = *(v2 + 32);
  *(v0 + 48) = v17;
  *(v0 + 16) = v16;
  v18 = *(v2 + 64);
  v19 = *(v2 + 80);
  v20 = *(v2 + 112);
  *(v0 + 96) = *(v2 + 96);
  *(v0 + 112) = v20;
  *(v0 + 64) = v18;
  *(v0 + 80) = v19;
  v21 = *(v2 + 128);
  v22 = *(v2 + 144);
  v23 = *(v2 + 176);
  *(v0 + 160) = *(v2 + 160);
  *(v0 + 176) = v23;
  *(v0 + 128) = v21;
  *(v0 + 144) = v22;
  v24 = *(v2 + 192);
  v25 = *(v2 + 208);
  v26 = *(v2 + 224);
  *(v0 + 240) = *(v2 + 240);
  *(v0 + 208) = v25;
  *(v0 + 224) = v26;
  *(v0 + 192) = v24;
  if (sub_2629B3B20(v0 + 16) == 1)
  {
    sub_2629EA8C8(0xD00000000000004ALL, 0x8000000262A32260);
    v27 = swift_task_alloc();
    *(v0 + 1248) = v27;
    *v27 = v0;
    v27[1] = sub_2629B2108;
    v28 = *(v0 + 1200);
    v29 = *(v0 + 1192);

    return sub_2629B2658(v0 + 480, v29);
  }

  else
  {
    v31 = *(v0 + 456);
    *(v0 + 904) = *(v0 + 440);
    *(v0 + 920) = v31;
    *(v0 + 936) = *(v0 + 472);
    v32 = *(v0 + 392);
    *(v0 + 840) = *(v0 + 376);
    *(v0 + 856) = v32;
    v33 = *(v0 + 424);
    *(v0 + 872) = *(v0 + 408);
    *(v0 + 888) = v33;
    v34 = *(v0 + 328);
    *(v0 + 776) = *(v0 + 312);
    *(v0 + 792) = v34;
    v35 = *(v0 + 360);
    *(v0 + 808) = *(v0 + 344);
    *(v0 + 824) = v35;
    v36 = *(v0 + 264);
    *(v0 + 712) = *(v0 + 248);
    *(v0 + 728) = v36;
    v37 = *(v0 + 296);
    *(v0 + 744) = *(v0 + 280);
    *(v0 + 760) = v37;
    sub_2629B3B38(v0 + 712, v0 + 944);
    sub_2629EA8C8(0xD00000000000003BLL, 0x8000000262A32300);
    v38 = *(v0 + 232);
    v39 = *(v0 + 224);
    v40 = *(v0 + 216);
    v41 = *(v0 + 192);
    v42 = *(v0 + 152);
    v43 = *(v0 + 64);
    v44 = *(v0 + 40);
    v45 = *(v0 + 24);
    v46 = *(v0 + 32);
    v47 = *(v0 + 16);
    *(v0 + 1464) = *(v0 + 240);
    *(v0 + 1456) = v38;
    *(v0 + 1488) = v39;
    *(v0 + 1448) = v40;
    *(v0 + 1432) = *(v0 + 200);
    *(v0 + 1424) = v41;
    v48 = *(v0 + 160);
    *(v0 + 1408) = *(v0 + 176);
    *(v0 + 1392) = v48;
    *(v0 + 1384) = v42;
    v49 = *(v0 + 136);
    *(v0 + 1352) = *(v0 + 120);
    *(v0 + 1368) = v49;
    v50 = *(v0 + 104);
    *(v0 + 1320) = *(v0 + 88);
    *(v0 + 1336) = v50;
    v51 = *(v0 + 72);
    *(v0 + 1487) = v43;
    *(v0 + 1288) = *(v0 + 48);
    *(v0 + 1304) = v51;
    *(v0 + 1280) = v44;
    *(v0 + 1272) = v46;
    *(v0 + 1264) = v45;
    *(v0 + 1256) = v47;

    return MEMORY[0x2822009F8](sub_2629B22F4, 0, 0);
  }
}

uint64_t sub_2629B2108()
{
  v1 = *v0;
  v2 = *(*v0 + 1248);
  v18 = *v0;

  v3 = *(v1 + 696);
  v4 = *(v1 + 688);
  v5 = *(v1 + 664);
  v6 = *(v1 + 656);
  v7 = *(v1 + 536);
  v8 = *(v1 + 528);
  v9 = *(v1 + 504);
  v10 = *(v1 + 488);
  v11 = *(v1 + 496);
  v12 = *(v1 + 480);
  *(v1 + 1464) = *(v1 + 704);
  *(v1 + 1456) = v3;
  *(v1 + 1488) = v4;
  *(v1 + 1440) = *(v1 + 672);
  *(v1 + 1432) = v5;
  *(v1 + 1424) = v6;
  v13 = *(v1 + 624);
  *(v1 + 1408) = *(v1 + 640);
  v14 = *(v1 + 608);
  *(v1 + 1392) = v13;
  *(v1 + 1376) = v14;
  v15 = *(v1 + 576);
  *(v1 + 1360) = *(v1 + 592);
  *(v1 + 1344) = v15;
  v16 = *(v1 + 544);
  *(v1 + 1328) = *(v1 + 560);
  *(v1 + 1312) = v16;
  *(v1 + 1304) = v7;
  *(v1 + 1487) = v8;
  *(v1 + 1288) = *(v1 + 512);
  *(v1 + 1280) = v9;
  *(v1 + 1272) = v11;
  *(v1 + 1264) = v10;
  *(v1 + 1256) = v12;

  return MEMORY[0x2822009F8](sub_2629B22F4, 0, 0);
}

uint64_t sub_2629B22F4()
{
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1224);
  v3 = *(v0 + 1216);
  v4 = *(v0 + 1208);
  sub_262A2A318();
  v5 = sub_262A2A308();
  v6 = sub_262A2A308();
  v7 = *(v3 + 8);
  v7(v2, v4);
  result = (v7)(v1, v4);
  if (v5 < v6)
  {
    __break(1u);
  }

  else
  {
    v9 = *(*(v0 + 1200) + OBJC_IVAR____TtC10SIDFitness31PlanDynamicConfigurationManager_operationTracker);
    *(v0 + 1486) = 0;
    v10 = *(v9 + 16);
    v11 = swift_task_alloc();
    *(v11 + 16) = v9;
    *(v11 + 24) = (v5 - v6) / 1000000.0;
    *(v11 + 32) = 0;
    *(v11 + 40) = v0 + 1486;
    v12 = swift_task_alloc();
    *(v12 + 16) = sub_2629B3BF4;
    *(v12 + 24) = v11;

    os_unfair_lock_lock(v10 + 4);
    sub_2629B3C0C(v13);
    v42 = *(v0 + 1464);
    v14 = *(v0 + 1456);
    v41 = *(v0 + 1488);
    v15 = *(v0 + 1448);
    v40 = *(v0 + 1432);
    v36 = *(v0 + 1384);
    v35 = *(v0 + 1368);
    v34 = *(v0 + 1487);
    v33 = *(v0 + 1296);
    v31 = *(v0 + 1288);
    v16 = *(v0 + 1280);
    v17 = *(v0 + 1272);
    v18 = *(v0 + 1264);
    v19 = *(v0 + 1256);
    v20 = *(v0 + 1240);
    v37 = *(v0 + 1232);
    v38 = *(v0 + 1424);
    v39 = *(v0 + 1224);
    v21 = *(v0 + 1200);
    v22 = *(v0 + 1184);
    v32 = *(v0 + 1392);
    v29 = *(v0 + 1304);
    v30 = *(v0 + 1408);
    v27 = *(v0 + 1320);
    v28 = *(v0 + 1336);
    v26 = *(v0 + 1352);
    os_unfair_lock_unlock(v10 + 4);

    sub_2629EA8C8(0xD000000000000042, 0x8000000262A322B0);
    *v22 = v19;
    *(v22 + 8) = v18;
    *(v22 + 16) = v17;
    *(v22 + 24) = v16;
    *(v22 + 32) = v31;
    *(v22 + 40) = v33;
    *(v22 + 48) = v34;
    v23 = *(v0 + 1472);
    *(v22 + 52) = *(v0 + 1475);
    *(v22 + 49) = v23;
    *(v22 + 72) = v27;
    *(v22 + 56) = v29;
    *(v22 + 104) = v26;
    *(v22 + 88) = v28;
    *(v22 + 120) = v35;
    *(v22 + 136) = v36;
    *(v22 + 144) = v32;
    *(v22 + 160) = v30;
    *(v22 + 176) = v38;
    *(v22 + 184) = v40;
    *(v22 + 200) = v15;
    *(v22 + 208) = v41;
    v24 = *(v0 + 1479);
    *(v22 + 212) = *(v0 + 1482);
    *(v22 + 209) = v24;
    *(v22 + 216) = v14;
    *(v22 + 224) = v42;

    v25 = *(v0 + 8);

    return v25();
  }

  return result;
}

uint64_t sub_2629B2658(uint64_t a1, uint64_t a2)
{
  v3[286] = v2;
  v3[285] = a2;
  v3[284] = a1;
  v4 = type metadata accessor for PlanDynamicConfigurationLoader();
  v3[287] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[288] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2629B26F4, 0, 0);
}

uint64_t sub_2629B26F4()
{
  v1 = v0[288];
  v2 = v0[287];
  v3 = v0[286];
  v4 = OBJC_IVAR____TtC10SIDFitness31PlanDynamicConfigurationManager_logger;
  v0[289] = OBJC_IVAR____TtC10SIDFitness31PlanDynamicConfigurationManager_logger;
  sub_2629B17C0(v3 + v4, v1);
  v5 = *(v3 + OBJC_IVAR____TtC10SIDFitness31PlanDynamicConfigurationManager_operationTracker);
  v0[290] = v5;
  *(v1 + *(v2 + 20)) = v5;
  v6 = *(v3 + 248);

  v7 = sub_262A2A3E8();
  v8 = [v6 dictionaryForKey_];
  v0[291] = v8;

  v0[2] = v0;
  v0[7] = v0 + 281;
  v0[3] = sub_2629B28A4;
  v9 = swift_continuation_init();
  v0[278] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C1D8, &qword_262A2BA58);
  v0[275] = v9;
  v0[271] = MEMORY[0x277D85DD0];
  v0[272] = 1107296256;
  v0[273] = sub_2629B374C;
  v0[274] = &block_descriptor;
  [v8 valueWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2629B28A4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 2336) = v2;
  if (v2)
  {
    v3 = sub_2629B3218;
  }

  else
  {
    v3 = sub_2629B29B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2629B29B4()
{
  v1 = *(v0 + 2312);
  v2 = *(v0 + 2288);
  v3 = *(v0 + 2248);

  sub_262A2A6F8();

  v4 = [v3 description];
  v5 = sub_262A2A3F8();
  v7 = v6;

  MEMORY[0x26672ECF0](v5, v7);

  sub_2629EA8C8(0xD00000000000002BLL, 0x8000000262A321C0);

  sub_262A2A338();
  v11 = *(v0 + 2288) + *(v0 + 2312);
  sub_2629EA8B0(0xD000000000000016, 0x8000000262A321F0);
  sub_2629B3A24();
  v12 = swift_allocError();
  *v13 = 1;
  swift_willThrow();

  v14 = *(v0 + 2320);
  v15 = swift_allocError();
  *v16 = 1;
  *(v0 + 2257) = 0;
  v17 = *(v14 + 16);
  v18 = swift_task_alloc();
  v18[2] = v14;
  v18[3] = 0;
  v18[4] = v15;
  v18[5] = v0 + 2257;
  v19 = swift_task_alloc();
  *(v19 + 16) = sub_2629B3A78;
  *(v19 + 24) = v18;

  os_unfair_lock_lock(v17 + 4);
  sub_2629B3A9C(v20);
  v21 = *(v0 + 2312);
  v22 = *(v0 + 2288);
  os_unfair_lock_unlock(v17 + 4);

  MEMORY[0x26672F6A0](v15);
  sub_262A2A6F8();
  *(v0 + 2232) = 0;
  *(v0 + 2240) = 0xE000000000000000;
  MEMORY[0x26672ECF0](0xD00000000000003DLL, 0x8000000262A32150);
  *(v0 + 2264) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
  sub_262A2A738();
  sub_2629EA8B0(*(v0 + 2232), *(v0 + 2240));

  MEMORY[0x26672F6A0](v12);
  sub_2629EA8C8(0xD000000000000021, 0x8000000262A32190);
  v23 = sub_2629AC0A0(MEMORY[0x277D84F90]);
  sub_2629AF958(v23, v0 + 776);
  nullsub_1(v0 + 776);
  v24 = *(v22 + 16);
  v25 = *(v22 + 48);
  *(v0 + 560) = *(v22 + 32);
  *(v0 + 576) = v25;
  *(v0 + 544) = v24;
  v26 = *(v22 + 64);
  v27 = *(v22 + 80);
  v28 = *(v22 + 112);
  *(v0 + 624) = *(v22 + 96);
  *(v0 + 640) = v28;
  *(v0 + 592) = v26;
  *(v0 + 608) = v27;
  v29 = *(v22 + 128);
  v30 = *(v22 + 144);
  v31 = *(v22 + 176);
  *(v0 + 688) = *(v22 + 160);
  *(v0 + 704) = v31;
  *(v0 + 656) = v29;
  *(v0 + 672) = v30;
  v32 = *(v22 + 192);
  v33 = *(v22 + 208);
  v34 = *(v22 + 224);
  *(v0 + 768) = *(v22 + 240);
  *(v0 + 736) = v33;
  *(v0 + 752) = v34;
  *(v0 + 720) = v32;
  v35 = *(v0 + 776);
  v36 = *(v0 + 808);
  *(v22 + 32) = *(v0 + 792);
  *(v22 + 48) = v36;
  *(v22 + 16) = v35;
  v37 = *(v0 + 824);
  v38 = *(v0 + 840);
  v39 = *(v0 + 872);
  *(v22 + 96) = *(v0 + 856);
  *(v22 + 112) = v39;
  *(v22 + 64) = v37;
  *(v22 + 80) = v38;
  v40 = *(v0 + 888);
  v41 = *(v0 + 904);
  v42 = *(v0 + 936);
  *(v22 + 160) = *(v0 + 920);
  *(v22 + 176) = v42;
  *(v22 + 128) = v40;
  *(v22 + 144) = v41;
  v43 = *(v0 + 952);
  v44 = *(v0 + 968);
  v45 = *(v0 + 984);
  *(v22 + 240) = *(v0 + 1000);
  *(v22 + 208) = v44;
  *(v22 + 224) = v45;
  *(v22 + 192) = v43;
  sub_2629B3AB8(v0 + 544);
  v90 = *(v22 + 208);
  v91 = *(v22 + 224);
  v92 = *(v22 + 240);
  v86 = *(v22 + 144);
  v87 = *(v22 + 160);
  v88 = *(v22 + 176);
  v89 = *(v22 + 192);
  v82 = *(v22 + 80);
  v83 = *(v22 + 96);
  v84 = *(v22 + 112);
  v85 = *(v22 + 128);
  v78 = *(v22 + 16);
  v79 = *(v22 + 32);
  v80 = *(v22 + 48);
  v81 = *(v22 + 64);
  *(v0 + 328) = v79;
  *(v0 + 344) = v80;
  *(v0 + 312) = v78;
  v46 = *(v22 + 64);
  v47 = *(v22 + 80);
  v48 = *(v22 + 112);
  *(v0 + 392) = *(v22 + 96);
  *(v0 + 408) = v48;
  *(v0 + 360) = v46;
  *(v0 + 376) = v47;
  v49 = *(v22 + 128);
  v50 = *(v22 + 144);
  v51 = *(v22 + 176);
  *(v0 + 456) = *(v22 + 160);
  *(v0 + 472) = v51;
  *(v0 + 424) = v49;
  *(v0 + 440) = v50;
  v52 = *(v22 + 192);
  v53 = *(v22 + 208);
  v54 = *(v22 + 224);
  *(v0 + 536) = *(v22 + 240);
  *(v0 + 504) = v53;
  *(v0 + 520) = v54;
  *(v0 + 488) = v52;
  result = sub_2629B3B20(v0 + 312);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v77 = *(v0 + 536);
    v55 = *(v0 + 528);
    v76 = *(v0 + 520);
    v57 = *(v0 + 504);
    v56 = *(v0 + 512);
    v58 = *(v0 + 496);
    v75 = *(v0 + 488);
    v73 = *(v0 + 456);
    v74 = *(v0 + 472);
    v59 = *(v0 + 440);
    v72 = *(v0 + 448);
    v60 = *(v0 + 432);
    v70 = *(v0 + 400);
    v71 = *(v0 + 416);
    v68 = *(v0 + 368);
    v69 = *(v0 + 384);
    v61 = *(v0 + 360);
    v63 = *(v0 + 344);
    v62 = *(v0 + 352);
    v64 = *(v0 + 336);
    v65 = *(v0 + 320);
    v66 = *(v0 + 328);
    v67 = *(v0 + 312);
    *(v0 + 1200) = v90;
    *(v0 + 1216) = v91;
    *(v0 + 1232) = v92;
    *(v0 + 1136) = v86;
    *(v0 + 1152) = v87;
    *(v0 + 1168) = v88;
    *(v0 + 1184) = v89;
    *(v0 + 1072) = v82;
    *(v0 + 1088) = v83;
    *(v0 + 1104) = v84;
    *(v0 + 1120) = v85;
    *(v0 + 1008) = v78;
    *(v0 + 1024) = v79;
    *(v0 + 1040) = v80;
    *(v0 + 1056) = v81;
    sub_2629B3B38(v0 + 1008, v0 + 1240);

    v8 = *(v0 + 2272);
    sub_2629B3B94(*(v0 + 2304), type metadata accessor for PlanDynamicConfigurationLoader);
    *v8 = v67;
    *(v8 + 8) = v65;
    *(v8 + 16) = v66;
    *(v8 + 24) = v64;
    *(v8 + 32) = v63;
    *(v8 + 40) = v62;
    *(v8 + 48) = v61;
    *(v8 + 72) = v69;
    *(v8 + 56) = v68;
    *(v8 + 104) = v71;
    *(v8 + 88) = v70;
    *(v8 + 120) = v60;
    *(v8 + 128) = v59;
    *(v8 + 136) = v72;
    *(v8 + 144) = v73;
    *(v8 + 160) = v74;
    *(v8 + 176) = v75;
    *(v8 + 184) = v58;
    *(v8 + 192) = v57;
    *(v8 + 200) = v56;
    *(v8 + 208) = v76;
    *(v8 + 216) = v55;
    *(v8 + 224) = v77;

    v9 = *(v0 + 8);

    return v9();
  }

  return result;
}

uint64_t sub_2629B3218()
{
  v1 = *(v0 + 2336);
  v2 = *(v0 + 2328);
  swift_willThrow();

  v3 = *(v0 + 2336);
  v4 = *(v0 + 2320);
  sub_2629B3A24();
  v5 = swift_allocError();
  *v6 = 1;
  *(v0 + 2257) = 0;
  v7 = *(v4 + 16);
  v8 = swift_task_alloc();
  v8[2] = v4;
  v8[3] = 0;
  v8[4] = v5;
  v8[5] = v0 + 2257;
  v9 = swift_task_alloc();
  *(v9 + 16) = sub_2629B3A78;
  *(v9 + 24) = v8;

  os_unfair_lock_lock(v7 + 4);
  sub_2629B3A9C(v10);
  v67 = *(v0 + 2312);
  v11 = *(v0 + 2288);
  os_unfair_lock_unlock(v7 + 4);

  MEMORY[0x26672F6A0](v5);
  sub_262A2A6F8();
  *(v0 + 2232) = 0;
  *(v0 + 2240) = 0xE000000000000000;
  MEMORY[0x26672ECF0](0xD00000000000003DLL, 0x8000000262A32150);
  *(v0 + 2264) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
  sub_262A2A738();
  sub_2629EA8B0(*(v0 + 2232), *(v0 + 2240));

  MEMORY[0x26672F6A0](v3);
  sub_2629EA8C8(0xD000000000000021, 0x8000000262A32190);
  v12 = sub_2629AC0A0(MEMORY[0x277D84F90]);
  sub_2629AF958(v12, v0 + 776);
  nullsub_1(v0 + 776);
  v13 = *(v11 + 16);
  v14 = *(v11 + 48);
  *(v0 + 560) = *(v11 + 32);
  *(v0 + 576) = v14;
  *(v0 + 544) = v13;
  v15 = *(v11 + 64);
  v16 = *(v11 + 80);
  v17 = *(v11 + 112);
  *(v0 + 624) = *(v11 + 96);
  *(v0 + 640) = v17;
  *(v0 + 592) = v15;
  *(v0 + 608) = v16;
  v18 = *(v11 + 128);
  v19 = *(v11 + 144);
  v20 = *(v11 + 176);
  *(v0 + 688) = *(v11 + 160);
  *(v0 + 704) = v20;
  *(v0 + 656) = v18;
  *(v0 + 672) = v19;
  v21 = *(v11 + 192);
  v22 = *(v11 + 208);
  v23 = *(v11 + 224);
  *(v0 + 768) = *(v11 + 240);
  *(v0 + 736) = v22;
  *(v0 + 752) = v23;
  *(v0 + 720) = v21;
  v24 = *(v0 + 776);
  v25 = *(v0 + 808);
  *(v11 + 32) = *(v0 + 792);
  *(v11 + 48) = v25;
  *(v11 + 16) = v24;
  v26 = *(v0 + 824);
  v27 = *(v0 + 840);
  v28 = *(v0 + 872);
  *(v11 + 96) = *(v0 + 856);
  *(v11 + 112) = v28;
  *(v11 + 64) = v26;
  *(v11 + 80) = v27;
  v29 = *(v0 + 888);
  v30 = *(v0 + 904);
  v31 = *(v0 + 936);
  *(v11 + 160) = *(v0 + 920);
  *(v11 + 176) = v31;
  *(v11 + 128) = v29;
  *(v11 + 144) = v30;
  v32 = *(v0 + 952);
  v33 = *(v0 + 968);
  v34 = *(v0 + 984);
  *(v11 + 240) = *(v0 + 1000);
  *(v11 + 208) = v33;
  *(v11 + 224) = v34;
  *(v11 + 192) = v32;
  sub_2629B3AB8(v0 + 544);
  v81 = *(v11 + 208);
  v82 = *(v11 + 224);
  v83 = *(v11 + 240);
  v77 = *(v11 + 144);
  v78 = *(v11 + 160);
  v79 = *(v11 + 176);
  v80 = *(v11 + 192);
  v73 = *(v11 + 80);
  v74 = *(v11 + 96);
  v75 = *(v11 + 112);
  v76 = *(v11 + 128);
  v69 = *(v11 + 16);
  v70 = *(v11 + 32);
  v71 = *(v11 + 48);
  v72 = *(v11 + 64);
  *(v0 + 328) = v70;
  *(v0 + 344) = v71;
  *(v0 + 312) = v69;
  v35 = *(v11 + 64);
  v36 = *(v11 + 80);
  v37 = *(v11 + 112);
  *(v0 + 392) = *(v11 + 96);
  *(v0 + 408) = v37;
  *(v0 + 360) = v35;
  *(v0 + 376) = v36;
  v38 = *(v11 + 128);
  v39 = *(v11 + 144);
  v40 = *(v11 + 176);
  *(v0 + 456) = *(v11 + 160);
  *(v0 + 472) = v40;
  *(v0 + 424) = v38;
  *(v0 + 440) = v39;
  v41 = *(v11 + 192);
  v42 = *(v11 + 208);
  v43 = *(v11 + 224);
  *(v0 + 536) = *(v11 + 240);
  *(v0 + 504) = v42;
  *(v0 + 520) = v43;
  *(v0 + 488) = v41;
  result = sub_2629B3B20(v0 + 312);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v68 = *(v0 + 536);
    v45 = *(v0 + 528);
    v66 = *(v0 + 520);
    v46 = *(v0 + 512);
    v65 = *(v0 + 496);
    v64 = *(v0 + 488);
    v47 = *(v0 + 448);
    v63 = *(v0 + 432);
    v48 = *(v0 + 360);
    v49 = *(v0 + 344);
    v50 = *(v0 + 352);
    v51 = *(v0 + 336);
    v52 = *(v0 + 320);
    v53 = *(v0 + 328);
    v54 = *(v0 + 312);
    *(v0 + 1040) = v71;
    *(v0 + 1008) = v69;
    *(v0 + 1024) = v70;
    *(v0 + 1104) = v75;
    *(v0 + 1088) = v74;
    *(v0 + 1072) = v73;
    *(v0 + 1056) = v72;
    *(v0 + 1168) = v79;
    *(v0 + 1152) = v78;
    *(v0 + 1136) = v77;
    *(v0 + 1120) = v76;
    *(v0 + 1232) = v83;
    *(v0 + 1216) = v82;
    *(v0 + 1200) = v81;
    *(v0 + 1184) = v80;
    v61 = *(v0 + 472);
    v62 = *(v0 + 456);
    v59 = *(v0 + 400);
    v60 = *(v0 + 368);
    v57 = *(v0 + 416);
    v58 = *(v0 + 384);
    sub_2629B3B38(v0 + 1008, v0 + 1240);

    v55 = *(v0 + 2272);
    sub_2629B3B94(*(v0 + 2304), type metadata accessor for PlanDynamicConfigurationLoader);
    *v55 = v54;
    *(v55 + 8) = v52;
    *(v55 + 16) = v53;
    *(v55 + 24) = v51;
    *(v55 + 32) = v49;
    *(v55 + 40) = v50;
    *(v55 + 48) = v48;
    *(v55 + 72) = v58;
    *(v55 + 56) = v60;
    *(v55 + 104) = v57;
    *(v55 + 88) = v59;
    *(v55 + 120) = v63;
    *(v55 + 136) = v47;
    *(v55 + 144) = v62;
    *(v55 + 160) = v61;
    *(v55 + 176) = v64;
    *(v55 + 184) = v65;
    *(v55 + 200) = v46;
    *(v55 + 208) = v66;
    *(v55 + 216) = v45;
    *(v55 + 224) = v68;

    v56 = *(v0 + 8);

    return v56();
  }

  return result;
}

uint64_t sub_2629B374C(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return MEMORY[0x282200958](v8, v9);
  }

  else
  {
    if (a2)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      *(v12 + 8) = a3;
      v13 = a2;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v7);
  }
}

uint64_t sub_2629B382C()
{
  v1 = *(v0 + 224);
  v13[12] = *(v0 + 208);
  v13[13] = v1;
  v14 = *(v0 + 240);
  v2 = *(v0 + 160);
  v13[8] = *(v0 + 144);
  v13[9] = v2;
  v3 = *(v0 + 192);
  v13[10] = *(v0 + 176);
  v13[11] = v3;
  v4 = *(v0 + 96);
  v13[4] = *(v0 + 80);
  v13[5] = v4;
  v5 = *(v0 + 128);
  v13[6] = *(v0 + 112);
  v13[7] = v5;
  v6 = *(v0 + 32);
  v13[0] = *(v0 + 16);
  v13[1] = v6;
  v7 = *(v0 + 64);
  v13[2] = *(v0 + 48);
  v13[3] = v7;
  sub_2629B3AB8(v13);
  v8 = *(v0 + 248);
  swift_unknownObjectRelease();
  sub_2629B3B94(v0 + OBJC_IVAR____TtC10SIDFitness31PlanDynamicConfigurationManager_logger, type metadata accessor for PersistentLogger);
  v9 = *(v0 + OBJC_IVAR____TtC10SIDFitness31PlanDynamicConfigurationManager_operationTracker);

  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlanDynamicConfigurationManager()
{
  result = qword_27FF3C1C8;
  if (!qword_27FF3C1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2629B395C()
{
  result = type metadata accessor for PersistentLogger();
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

unint64_t sub_2629B3A24()
{
  result = qword_27FF3C1E0;
  if (!qword_27FF3C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C1E0);
  }

  return result;
}

uint64_t sub_2629B3AB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C1F0, &unk_262A2B560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2629B3B20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2629B3B94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2629B3C24(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262A2AA18();
  if (a4 > 1u)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    if (a4 == 2)
    {
      sub_262A2A8F8();
    }

    else
    {
      sub_262A2A8C8();
    }
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    if (a4)
    {
      sub_262A2A8D8();
    }

    else
    {
      sub_262A2A8E8();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_2629B3D74(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      MEMORY[0x26672F240](2);
      return MEMORY[0x26672F240](a2);
    }

    else
    {
      MEMORY[0x26672F240](3);

      return sub_262A2A448();
    }
  }

  else if (a4)
  {
    MEMORY[0x26672F240](1);
    return sub_262A2A9B8();
  }

  else
  {
    MEMORY[0x26672F240](0);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = 0;
    }

    return MEMORY[0x26672F260](v5);
  }
}

uint64_t sub_2629B3E2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2629B4120(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_2629B3E7C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_262A2A998();
  sub_2629B3D74(v5, v1, v2, v3);
  return sub_262A2A9D8();
}

uint64_t sub_2629B3EE4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_262A2A998();
  sub_2629B3D74(v5, v1, v2, v3);
  return sub_262A2A9D8();
}

unint64_t sub_2629B3F5C()
{
  result = qword_27FF3C210;
  if (!qword_27FF3C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C210);
  }

  return result;
}

uint64_t sub_2629B3FB0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      return a6 == 2 && a1 == a4;
    }

    else if (a6 == 3)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      else
      {
        return sub_262A2A878();
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = *&a1 == *&a4;
    if (a6)
    {
      v6 = 0;
    }

    v7 = a4 ^ a1 ^ 1;
    if (a6 != 1)
    {
      v7 = 0;
    }

    if (a3)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }
}