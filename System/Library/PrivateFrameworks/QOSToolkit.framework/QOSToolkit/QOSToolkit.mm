id QOSConfig.init(appTarget:locale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR___QOSConfigInternal_issuesUrl];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v3[OBJC_IVAR___QOSConfigInternal_locationUrl];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v3[OBJC_IVAR___QOSConfigInternal_issueRefreshFrequencyInSecs];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v3[OBJC_IVAR___QOSConfigInternal_locationRefreshFrequencyInSecs];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v3[OBJC_IVAR___QOSConfigInternal_syncStartDelayOffsetInSecs];
  *v8 = 0;
  v8[8] = 1;
  *&v3[OBJC_IVAR___QOSConfigInternal_appTarget] = a1;
  v9 = &v3[OBJC_IVAR___QOSConfigInternal_locale];
  *v9 = a2;
  *(v9 + 1) = a3;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for QOSConfig();
  return objc_msgSendSuper2(&v11, sel_init);
}

void *sub_26144095C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for QOSConfig();
  v47[3] = v14;
  v47[4] = &off_2873CC728;
  v47[0] = a1;
  type metadata accessor for MusicPlaybackErrorMessage();
  v15 = swift_allocObject();
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v47, v14);
  v17 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v16, v16);
  v19 = (&v44[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v46[3] = v14;
  v46[4] = &off_2873CC728;
  v46[0] = v21;
  v15[18] = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_261440F08(v46, (v15 + 2));
  v15[7] = a2;
  v15[8] = a3;
  v15[9] = a4;
  v15[10] = a5;
  v15[11] = a6;
  v15[12] = a7;
  v22 = objc_opt_self();

  v23 = [v22 defaultSessionConfiguration];
  v24 = [objc_opt_self() sessionWithConfiguration_];

  type metadata accessor for Network();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = a2;
  v25[4] = a3;
  sub_261440F08(v46, v44);
  v26 = v45;
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v27, v27);
  v30 = (&v44[-1] - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = *v30;
  swift_retain_n();

  v33 = sub_261440F90(v32, v25, a2, a3);
  __swift_destroy_boxed_opaque_existential_1(v44);
  sub_261440F08(v46, v44);
  v34 = v45;
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  v36 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v35, v35);
  v38 = (&v44[-1] - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = *v38;

  v41 = sub_261441264(v40, v25, v33, a2, a3);

  __swift_destroy_boxed_opaque_existential_1(v44);
  v15[16] = type metadata accessor for MusicIssuesService();
  v15[17] = &off_281EB2578;

  v15[13] = v41;
  __swift_destroy_boxed_opaque_existential_1(v46);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return v15;
}

uint64_t static QOSErrorMessage.getSwiftInstance(config:logger:metricsRecorder:defaultAlert:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v15 = *&a1[OBJC_IVAR___QOSConfigInternal_appTarget];
  if (v15 == 1)
  {
    v16 = a1;

    v17 = sub_26144095C(v16, a2, a3, a4, a5, a6, a7);
    result = type metadata accessor for MusicPlaybackErrorMessage();
    v19 = &off_2873CCBE8;
LABEL_5:
    a8[3] = result;
    a8[4] = v19;
    *a8 = v17;
    return result;
  }

  if (!v15)
  {
    v20 = a1;

    v17 = sub_2614569A8(v20, a2, a3, a4, a5, a6, a7);
    result = type metadata accessor for TVPlaybackErrorMessage();
    v19 = &off_2873CD2F0;
    goto LABEL_5;
  }

  v21 = *&a1[OBJC_IVAR___QOSConfigInternal_appTarget];
  result = sub_261464DB0();
  __break(1u);
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_261440F08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_261440F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for QOSConfig();
  v35[3] = v8;
  v35[4] = &off_2873CC728;
  v35[0] = a1;
  v9 = type metadata accessor for Network();
  v33 = v9;
  v34 = &off_2873CC4F0;
  v32[0] = a2;
  type metadata accessor for LocationService();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v35, v8);
  v12 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v11, v11);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = v33;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v17, v17);
  v20 = (&v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v14;
  v23 = *v20;
  v30 = v8;
  v31 = &off_2873CC728;
  v28 = &off_2873CC4F0;
  *&v29 = v22;
  v27 = v9;
  *&v26 = v23;
  *(v10 + 112) = 0u;
  *(v10 + 128) = 0u;
  sub_2614411B0(&v29, v10 + 16);
  sub_2614411B0(&v26, v10 + 56);
  *(v10 + 96) = a3;
  *(v10 + 104) = a4;
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return v10;
}

uint64_t sub_2614411B0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
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

void *sub_261441264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF830, &qword_261467BD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v34[-1] - v12;
  v14 = type metadata accessor for QOSConfig();
  v39[3] = v14;
  v39[4] = &off_2873CC728;
  v39[0] = a1;
  v15 = type metadata accessor for Network();
  v37 = v15;
  v38 = &off_2873CC4F0;
  v36[0] = a2;
  type metadata accessor for MusicIssuesService();
  v16 = swift_allocObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v39, v14);
  v18 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v17, v17);
  v20 = (&v34[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = v37;
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v23, v23);
  v26 = (&v34[-1] - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v20;
  v29 = *v26;
  v35[3] = v14;
  v35[4] = &off_2873CC728;
  v34[4] = &off_2873CC4F0;
  v35[0] = v28;
  v34[3] = v15;
  v34[0] = v29;
  v16[14] = 0;
  v16[16] = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_261440F08(v35, (v16 + 2));
  sub_261440F08(v34, (v16 + 7));
  v16[12] = v33;
  v16[13] = a5;
  v16[15] = a3;
  v30 = sub_261464B40();
  (*(*(v30 - 8) + 56))(v13, 1, 1, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v16;

  sub_261456364(0, 0, v13, &unk_2614672A0, v31);

  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return v16;
}

uint64_t sub_2614415D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_261444408;

  return sub_261441690(a1, v5);
}

uint64_t sub_261441690(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261444500;

  return v7(a1);
}

uint64_t sub_261441788(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_261444408;

  return sub_26144183C(a1, v4, v5, v6);
}

uint64_t sub_26144185C()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 16) + 16), *(*(v0 + 16) + 40));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_261442C94;

  return sub_261441AB4();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_261441940()
{
  v1 = v0[3];
  v0[4] = sub_261441AD4();
  v2 = *(v1 + OBJC_IVAR___QOSConfigInternal_appTarget);
  if (v2 == 1)
  {
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_2614420B0;
    v5 = 0x8000000261468BD0;
    v4 = 0xD000000000000016;
    goto LABEL_5;
  }

  if (!v2)
  {
    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = sub_26144CBB8;
    v4 = 0xD000000000000021;
    v5 = 0x8000000261468CA0;
LABEL_5:

    return sub_261441BAC(v4, v5);
  }

  v0[2] = v2;

  return sub_261464DB0();
}

uint64_t sub_261441AD4()
{
  if (*(v0 + OBJC_IVAR___QOSConfigInternal_appTarget) > 1uLL)
  {
    v5 = *(v0 + OBJC_IVAR___QOSConfigInternal_appTarget);
    result = sub_261464DB0();
    __break(1u);
  }

  else
  {
    v1 = sub_261464920();
    v2 = sub_261464920();
    v3 = [objc_opt_self() bagForProfile:v1 profileVersion:v2];

    return v3;
  }

  return result;
}

uint64_t sub_261441BAC(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_261441BD0, 0, 0);
}

uint64_t sub_261441BD0()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = sub_261464920();
  v0[23] = v4;
  v5 = [v2 stringForKey_];
  v0[24] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_261441F18;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FEAF850, &unk_2614672F0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_261441EF4;
  v0[13] = &block_descriptor_3;
  v0[14] = v6;
  [v5 valueWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_261441D1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF830, &qword_261467BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261441D84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_261441E14(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF848, &qword_261467AB0);
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

uint64_t sub_261441F18()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_261457264;
  }

  else
  {
    v3 = sub_261442028;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261442028()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  v3 = sub_261464970();
  v5 = v4;

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t sub_2614420B0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v6 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;

  return MEMORY[0x2822009F8](sub_2614421B0, 0, 0);
}

uint64_t sub_2614421B0()
{
  v1 = *(v0 + 24) + OBJC_IVAR___QOSConfigInternal_issuesUrl;
  v2 = *(v1 + 8);
  *v1 = *(v0 + 72);

  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_261442278;
  v4 = *(v0 + 32);

  return sub_261441BAC(0xD000000000000018, 0x8000000261468BF0);
}

uint64_t sub_261442278(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v6 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;

  return MEMORY[0x2822009F8](sub_261442378, 0, 0);
}

uint64_t sub_261442378()
{
  v1 = *(v0 + 24) + OBJC_IVAR___QOSConfigInternal_locationUrl;
  v2 = *(v1 + 8);
  *v1 = *(v0 + 96);

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_261442750;
  v4 = *(v0 + 32);

  return sub_261442440(0xD00000000000002BLL, 0x8000000261468C10);
}

uint64_t sub_261442440(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_261442464, 0, 0);
}

uint64_t sub_261442464()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = sub_261464920();
  v0[23] = v4;
  v5 = [v2 integerForKey_];
  v0[24] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2614425B0;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF840, &qword_2614672E0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_261441EF4;
  v0[13] = &block_descriptor;
  v0[14] = v6;
  [v5 valueWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2614425B0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_2614572F4;
  }

  else
  {
    v3 = sub_2614426C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2614426C0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  v3 = sub_261464B60();
  v4 = *(v0 + 200) != 0;
  v5 = *(v0 + 8);

  return v5(v3, v4);
}

uint64_t sub_261442750(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v6 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 160) = a2;

  return MEMORY[0x2822009F8](sub_261442854, 0, 0);
}

uint64_t sub_261442854()
{
  v1 = 1800;
  if ((*(v0 + 160) & 1) == 0)
  {
    v1 = *(v0 + 120);
  }

  v2 = *(v0 + 24) + OBJC_IVAR___QOSConfigInternal_issueRefreshFrequencyInSecs;
  *v2 = v1;
  *(v2 + 8) = 0;
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_261442928;
  v4 = *(v0 + 32);

  return sub_261442440(0xD00000000000002ELL, 0x8000000261468C40);
}

uint64_t sub_261442928(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v6 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 161) = a2;

  return MEMORY[0x2822009F8](sub_261442A2C, 0, 0);
}

uint64_t sub_261442A2C()
{
  v1 = 3600;
  if ((*(v0 + 161) & 1) == 0)
  {
    v1 = *(v0 + 136);
  }

  v2 = *(v0 + 24) + OBJC_IVAR___QOSConfigInternal_locationRefreshFrequencyInSecs;
  *v2 = v1;
  *(v2 + 8) = 0;
  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v3[1] = sub_261442B00;
  v4 = *(v0 + 32);

  return sub_261442440(0xD00000000000002BLL, 0x8000000261468C70);
}

uint64_t sub_261442B00(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v6 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 162) = a2;

  return MEMORY[0x2822009F8](sub_261442C04, 0, 0);
}

uint64_t sub_261442C04()
{
  v1 = *(v0 + 162);
  v2 = *(v0 + 152);
  v3 = *(v0 + 24);

  v4 = 180;
  if ((v1 & 1) == 0)
  {
    v4 = v2;
  }

  v5 = v3 + OBJC_IVAR___QOSConfigInternal_syncStartDelayOffsetInSecs;
  *v5 = v4;
  *(v5 + 8) = 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_261442C94()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_261442D90, 0, 0);
}

uint64_t sub_261442D90()
{
  v1 = *(v0 + 16);
  v2 = sub_261442E04();
  v3 = *(v1 + 112);
  *(v1 + 112) = v2;

  sub_261443D8C();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_261442E04()
{
  v42 = sub_261464620();
  v1 = *(v42 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v42, v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v39 - v8;
  v10 = (*__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]) + OBJC_IVAR___QOSConfigInternal_locationUrl);
  v11 = v10[1];
  if (v11)
  {
    v12 = *v10;
    v13 = (*__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]) + OBJC_IVAR___QOSConfigInternal_issuesUrl);
    v14 = v13[1];
    if (v14)
    {
      v39 = *v13;
      v40 = v6;

      sub_261443120(1uLL, v12, v11, v9);

      v15 = v1;
      v17 = v0[12];
      v16 = v0[13];

      v18 = sub_261443828(v9, v17);
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v25 = *(v15 + 8);
      v26 = v9;
      v27 = v42;
      v41 = v15 + 8;
      v25(v26, v42);
      v28 = v25;

      if (v20)
      {
        v29 = sub_26145F584(v18, v20, v22, v24);

        v30 = v40;
        sub_261463188(1uLL, v39, v14, v29, v40);

        if (sub_26145FFF0(v30))
        {
          v32 = v0[12];
          v31 = v0[13];

          v33 = sub_26145EFE8(v30, v32);
          v28(v30, v27);

          return v33;
        }

        v35 = [objc_opt_self() sharedSession];
        v36 = [v35 configuration];

        v37 = [v36 URLCache];
        if (v37)
        {
          v38 = sub_261464600();
          [v37 removeCachedResponseForRequest_];
        }

        v28(v30, v27);
      }

      else
      {
      }
    }
  }

  return 0;
}

uint64_t sub_261443120@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a2;
  v37 = a3;
  v34 = a4;
  v38 = sub_261464620();
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v38, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAFA30, &qword_261468480);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v34 - v13;
  v15 = sub_261464740();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v35 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v34 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAFA38, &qword_261468488);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v28 = &v34 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF960, &qword_261467AA8);
  v29 = *(sub_2614646B0() - 8);
  v30 = *(v29 + 72);
  v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  *(swift_allocObject() + 16) = xmmword_261467150;
  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_10;
    }

    a1 = 0xE500000000000000;
  }

  else
  {
    a1 = 0xE200000000000000;
  }

  sub_2614646A0();

  sub_2614435C4(v14);

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_261463954(v14);
    (*(v5 + 56))(v28, 1, 1, v38);
  }

  else
  {
    (*(v16 + 32))(v23, v14, v15);
    (*(v16 + 16))(v35, v23, v15);
    sub_261464610();
    sub_2614645F0();
    (*(v16 + 8))(v23, v15);
    v32 = v38;
    (*(v5 + 16))(v28, v9, v38);
    (*(v5 + 56))(v28, 0, 1, v32);
    (*(v5 + 8))(v9, v32);
    if ((*(v5 + 48))(v28, 1, v32) != 1)
    {
      return (*(v5 + 32))(v34, v28, v32);
    }
  }

  __break(1u);
LABEL_10:
  v39 = a1;
  result = sub_261464DB0();
  __break(1u);
  return result;
}

uint64_t sub_2614435C4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2614646F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF8D8, &unk_261467340);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v16 - v11;
  sub_2614646E0();
  v13 = *(v3 + 48);
  if (!v13(v12, 1, v2))
  {

    sub_2614646C0();
  }

  if (v13(v12, 1, v2))
  {
    v14 = sub_261464740();
    (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }

  else
  {
    (*(v3 + 16))(v7, v12, v2);
    sub_2614646D0();
    (*(v3 + 8))(v7, v2);
  }

  return sub_2614437C0(v12);
}

uint64_t sub_2614437C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF8D8, &unk_261467340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261443828(uint64_t a1, void (*a2)(uint64_t, unint64_t, unint64_t))
{
  v3 = sub_26144396C(a1, a2);
  if (v3)
  {
    v4 = v3;
    v5 = sub_261464650();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    sub_261464640();
    v8 = [v4 data];
    v9 = sub_261464760();
    v11 = v10;

    sub_2614606AC();
    sub_261464630();

    sub_261457D50(v9, v11);

    return v13;
  }

  else
  {
    a2(1, 0xD000000000000017, 0x80000002614694C0);
    return 0;
  }
}

id sub_26144396C(uint64_t a1, void (*a2)(void, unint64_t, unint64_t))
{
  v3 = [objc_opt_self() sharedSession];
  v4 = [v3 configuration];

  v5 = [v4 URLCache];
  if (!v5 || (v6 = sub_261464600(), v7 = [v5 cachedResponseForRequest_], v5, v6, (result = v7) == 0))
  {
    sub_261464CF0();

    sub_261464620();
    sub_261443ADC();
    v9 = sub_261464D90();
    MEMORY[0x266702930](v9);

    a2(0, 0xD000000000000017, 0x8000000261468A80);

    return 0;
  }

  return result;
}

unint64_t sub_261443ADC()
{
  result = qword_2811AE990;
  if (!qword_2811AE990)
  {
    sub_261464620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE990);
  }

  return result;
}

uint64_t sub_261443B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_2811AE950 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  if (a1 == 1)
  {
    sub_261464BB0();
  }

  else
  {
    if (a1)
    {
      result = sub_261464DB0();
      __break(1u);
      return result;
    }

    sub_261464BA0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF838, &qword_2614672C8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_261467150;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_261443D38();
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;

  sub_261464860();
}

uint64_t sub_261443C80()
{
  sub_261443CEC();
  result = sub_261464BF0();
  qword_2811AE958 = result;
  return result;
}

unint64_t sub_261443CEC()
{
  result = qword_2811AE740;
  if (!qword_2811AE740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811AE740);
  }

  return result;
}

unint64_t sub_261443D38()
{
  result = qword_2811AE758;
  if (!qword_2811AE758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE758);
  }

  return result;
}

void *sub_261443D8C()
{
  v1 = sub_261464870();
  v39 = *(v1 - 8);
  v2 = *(v39 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261464890();
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2614648B0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v32 - v19;
  v21 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]) + OBJC_IVAR___QOSConfigInternal_syncStartDelayOffsetInSecs;
  if (*(v21 + 8) & 1) != 0 || (v22 = *v21, v23 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]) + OBJC_IVAR___QOSConfigInternal_locationRefreshFrequencyInSecs, (*(v23 + 8)) || (v37 = *v23, result = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]), v25 = *result + OBJC_IVAR___QOSConfigInternal_issueRefreshFrequencyInSecs, (*(v25 + 8)))
  {
    v26 = v0[12];
    v27 = v0[13];

    v26(1, 0xD000000000000026, 0x80000002614693D0);
  }

  else
  {
    v36 = v0;
    if (v22 < 0)
    {
      __break(1u);
    }

    else
    {
      v33 = *v25;
      sub_261444284(v22 + 1);
      sub_261444310();
      v34 = sub_261464BE0();
      sub_2614648A0();
      sub_2614648C0();
      v35 = *(v12 + 8);
      v35(v17, v11);
      v28 = swift_allocObject();
      v29 = v37;
      v28[2] = v36;
      v28[3] = v29;
      v28[4] = v33;
      aBlock[4] = sub_26144467C;
      aBlock[5] = v28;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_261444638;
      aBlock[3] = &block_descriptor_1;
      v30 = _Block_copy(aBlock);

      sub_261464880();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_26144435C(qword_2811AE9A8, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF980, &qword_261467BC8);
      sub_2614443A4();
      sub_261464CB0();
      v31 = v34;
      MEMORY[0x266702AC0](v20, v10, v5, v30);
      _Block_release(v30);

      (*(v39 + 8))(v5, v1);
      (*(v38 + 8))(v10, v6);
      return (v35)(v20, v11);
    }
  }

  return result;
}

uint64_t sub_26144424C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_261444284(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x2667032B0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x2667032B0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_261444310()
{
  result = qword_2811AE998;
  if (!qword_2811AE998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811AE998);
  }

  return result;
}

uint64_t sub_26144435C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2614443A4()
{
  result = qword_2811AE9A0;
  if (!qword_2811AE9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEAF980, &qword_261467BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE9A0);
  }

  return result;
}

uint64_t sub_26144440C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_261444500()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261444638(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_261444688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 120);
  v7 = objc_opt_self();
  v21 = sub_261444968;
  v22 = v6;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_261444900;
  v20 = &block_descriptor_13;
  v8 = _Block_copy(&v17);
  swift_retain_n();

  v9 = [v7 scheduledTimerWithTimeInterval:0 repeats:v8 block:0.0];
  _Block_release(v8);

  v10 = *(a1 + 120);
  v11 = a2;
  v21 = sub_261460580;
  v22 = v10;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_261444900;
  v20 = &block_descriptor_16;
  v12 = _Block_copy(&v17);
  swift_retain_n();

  v13 = [v7 scheduledTimerWithTimeInterval:1 repeats:v12 block:v11];
  _Block_release(v12);

  v14 = a3;
  v21 = sub_261460588;
  v22 = a1;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_261444900;
  v20 = &block_descriptor_19;
  v15 = _Block_copy(&v17);

  v16 = [v7 scheduledTimerWithTimeInterval:1 repeats:v15 block:v14];
  _Block_release(v15);
}

void sub_261444900(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_261444970(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF830, &qword_261467BD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v12 - v7;
  v9 = sub_261464B40();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;

  sub_261456364(0, 0, v8, &unk_261467C68, v10);

  return [a1 invalidate];
}

uint64_t sub_261444A98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_261444408;

  return sub_261444B4C(a1, v4, v5, v6);
}

uint64_t sub_261444B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_26146070C;

  return sub_261444BE0();
}

uint64_t sub_261444BE0()
{
  v1[7] = v0;
  v2 = sub_261464620();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261444CA0, 0, 0);
}

uint64_t sub_261444CA0()
{
  v1 = (*__swift_project_boxed_opaque_existential_1((v0[7] + 16), *(v0[7] + 40)) + OBJC_IVAR___QOSConfigInternal_locationUrl);
  v2 = v1[1];
  if (v2)
  {
    v3 = v0[10];
    v4 = *v1;
    sub_261440F08(v0[7] + 56, (v0 + 2));
    v5 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

    sub_261443120(1uLL, v4, v2, v3);

    v6 = *v5;
    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_261460810;
    v8 = v0[10];

    return (sub_261444E60)(v8);
  }

  else
  {
    v10 = v0[7];
    v11 = *(v10 + 96);
    v12 = *(v10 + 104);

    v11(1, 0xD000000000000025, 0x8000000261469520);

    v13 = v0[10];

    v14 = v0[1];

    return v14(0, 0, 0, 0);
  }
}

uint64_t sub_261444E60(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2822009F8](sub_261444E80, 0, 0);
}

uint64_t sub_261444E80()
{
  v1 = *(v0[10] + 16);
  v2 = *(MEMORY[0x277CC9D18] + 4);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_26145EB50;
  v4 = v0[9];

  return MEMORY[0x28211ECF8](v4, 0);
}

uint64_t *sub_261444F6C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10QOSToolkit16TVDeviceCriteriaVSg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26144503C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261445074()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2614450F0()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_261445144()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261445184()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_261445A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 8);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_26144440C;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

void *sub_261445BE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_261445E40(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_261445C28()
{
  sub_261464E10();
  sub_2614649E0();
  return sub_261464E30();
}

uint64_t sub_261445C8C()
{
  sub_261464E10();
  sub_2614649E0();
  return sub_261464E30();
}

uint64_t sub_261445CD8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_261464D60();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_261445D58@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_261464D60();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_261445DC8(uint64_t a1)
{
  v2 = sub_261446024();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261445E04(uint64_t a1)
{
  v2 = sub_261446024();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_261445E40(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF588, &qword_261465770);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261446024();
  sub_261464E40();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF590, &qword_261465778);
    sub_261446078();
    sub_261464D80();
    v10 = v12[1];
    (*(v4 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
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

unint64_t sub_261446024()
{
  result = qword_2811AE978;
  if (!qword_2811AE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE978);
  }

  return result;
}

unint64_t sub_261446078()
{
  result = qword_2811AE750;
  if (!qword_2811AE750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEAF590, &qword_261465778);
    sub_261446144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE750);
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

unint64_t sub_261446144()
{
  result = qword_2811AE980;
  if (!qword_2811AE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE980);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicIssues.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MusicIssues.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_26144628C()
{
  result = qword_27FEAF598;
  if (!qword_27FEAF598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF598);
  }

  return result;
}

unint64_t sub_2614462E4()
{
  result = qword_2811AE968;
  if (!qword_2811AE968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE968);
  }

  return result;
}

unint64_t sub_26144633C()
{
  result = qword_2811AE970;
  if (!qword_2811AE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE970);
  }

  return result;
}

uint64_t sub_261446390(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x636973756DLL;
  }

  else
  {
    v2 = 0x6F65646976;
  }

  if (*a2)
  {
    v3 = 0x636973756DLL;
  }

  else
  {
    v3 = 0x6F65646976;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_261464DA0();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_261446410()
{
  v1 = *v0;
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_261446480()
{
  *v0;
  sub_2614649E0();
}

uint64_t sub_2614464D4()
{
  v1 = *v0;
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_261446540@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_261464D60();

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

void sub_2614465A0(uint64_t *a1@<X8>)
{
  v2 = 0x6F65646976;
  if (*v1)
  {
    v2 = 0x636973756DLL;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t sub_2614465DC()
{
  v1 = *v0;
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_2614466B0()
{
  *v0;
  *v0;
  *v0;
  sub_2614649E0();
}

uint64_t sub_261446770()
{
  v1 = *v0;
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_261446840@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_261446E80();
  *a2 = result;
  return result;
}

void sub_261446870(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1735290739;
  v5 = 0xE500000000000000;
  v6 = 0x6D75626C61;
  v7 = 0xE700000000000000;
  v8 = 0x6E6F6974617473;
  if (v2 != 3)
  {
    v8 = 0x7473696C79616C70;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6F65646976;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_261446900(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_27FEAF580 == -1)
      {
        return sub_261464720();
      }
    }

    else if (a1 == 3)
    {
      if (qword_27FEAF580 == -1)
      {
        return sub_261464720();
      }
    }

    else if (qword_27FEAF580 == -1)
    {
      return sub_261464720();
    }

    goto LABEL_15;
  }

  if (!a1)
  {
    if (qword_27FEAF580 == -1)
    {
      return sub_261464720();
    }

    goto LABEL_15;
  }

  if (qword_27FEAF580 != -1)
  {
LABEL_15:
    swift_once();
  }

  return sub_261464720();
}

unint64_t LogLevel.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_261446BF8()
{
  v1 = *v0;
  sub_261464E10();
  MEMORY[0x266702D10](v1);
  return sub_261464E30();
}

uint64_t sub_261446C40()
{
  v1 = *v0;
  sub_261464E10();
  MEMORY[0x266702D10](v1);
  return sub_261464E30();
}

uint64_t AppTarget.id.getter(uint64_t a1)
{
  if (!a1)
  {
    return 30324;
  }

  if (a1 == 1)
  {
    return 0x636973756DLL;
  }

  result = sub_261464DB0();
  __break(1u);
  return result;
}

uint64_t sub_261446CE4@<X0>(uint64_t *a1@<X8>)
{
  if (!*v1)
  {
    v2 = 0xE200000000000000;
    v3 = 30324;
LABEL_5:
    *a1 = v3;
    a1[1] = v2;
    return result;
  }

  if (*v1 == 1)
  {
    v2 = 0xE500000000000000;
    v3 = 0x636973756DLL;
    goto LABEL_5;
  }

  v5 = *v1;
  result = sub_261464DB0();
  __break(1u);
  return result;
}

unint64_t sub_261446D68()
{
  result = qword_27FEAF5A0;
  if (!qword_27FEAF5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF5A0);
  }

  return result;
}

unint64_t sub_261446DC0()
{
  result = qword_27FEAF5A8;
  if (!qword_27FEAF5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF5A8);
  }

  return result;
}

uint64_t sub_261446E80()
{
  v0 = sub_261464D60();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for CriteriaType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CriteriaType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ItemType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ItemType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_261447188()
{
  result = qword_27FEAF5B0;
  if (!qword_27FEAF5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF5B0);
  }

  return result;
}

unint64_t sub_2614471E0()
{
  result = qword_27FEAF5B8;
  if (!qword_27FEAF5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF5B8);
  }

  return result;
}

double sub_261447258@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2614479E4(a1, v11);
  if (!v2)
  {
    v5 = v19;
    a2[8] = v18;
    a2[9] = v5;
    v6 = v21;
    a2[10] = v20;
    a2[11] = v6;
    v7 = v15;
    a2[4] = v14;
    a2[5] = v7;
    v8 = v17;
    a2[6] = v16;
    a2[7] = v8;
    v9 = v11[1];
    *a2 = v11[0];
    a2[1] = v9;
    result = *&v12;
    v10 = v13;
    a2[2] = v12;
    a2[3] = v10;
  }

  return result;
}

uint64_t sub_2614472BC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_261464E10();
  sub_2614649E0();
  sub_2614649E0();
  return sub_261464E30();
}

uint64_t sub_261447324()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2614649E0();

  return sub_2614649E0();
}

uint64_t sub_261447374()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_261464E10();
  sub_2614649E0();
  sub_2614649E0();
  return sub_261464E30();
}

uint64_t sub_2614473D8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_261464DA0();
  }
}

uint64_t get_enum_tag_for_layout_string_10QOSToolkit17TVContentCriteriaVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_10QOSToolkit10TVCriteriaVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_261447484(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_2614474CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_261447550()
{
  result = qword_27FEAF5C0;
  if (!qword_27FEAF5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF5C0);
  }

  return result;
}

uint64_t sub_2614475B0()
{
  v1 = *v0;
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_26144767C()
{
  *v0;
  *v0;
  *v0;
  sub_2614649E0();
}

uint64_t sub_261447734()
{
  v1 = *v0;
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_2614477FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_261448000();
  *a2 = result;
  return result;
}

void sub_26144782C(uint64_t *a1@<X8>)
{
  v2 = 0xEA0000000000656CLL;
  v3 = 0x746954726F727265;
  v4 = 0xE600000000000000;
  v5 = 0x656C61636F6CLL;
  if (*v1 != 2)
  {
    v5 = 0x6169726574697263;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x73654D726F727265;
    v2 = 0xEC00000065676173;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2614478B4()
{
  v1 = 0x746954726F727265;
  v2 = 0x656C61636F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x6169726574697263;
  }

  if (*v0)
  {
    v1 = 0x73654D726F727265;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_261447938@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261448000();
  *a1 = result;
  return result;
}

uint64_t sub_26144796C(uint64_t a1)
{
  v2 = sub_261447CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2614479A8(uint64_t a1)
{
  v2 = sub_261447CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2614479E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF5C8, &qword_261465E08);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261447CDC();
  sub_261464E40();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v31;
  v30 = v5;
  LOBYTE(v41) = 0;
  v13 = v9;
  v14 = sub_261464D70();
  v29 = v15;
  v16 = v12;
  LOBYTE(v41) = 1;
  v17 = sub_261464D70();
  v28 = v18;
  v31 = v17;
  LOBYTE(v41) = 2;
  v19 = sub_261464D70();
  v21 = v20;
  v59 = 3;
  sub_261447D30();
  sub_261464D80();
  v38 = v47;
  v39 = v48;
  v40 = v49;
  v34 = v43;
  v35 = v44;
  v36 = v45;
  v37 = v46;
  v32 = v41;
  v33 = v42;
  nullsub_1(&v32);
  v56 = v38;
  v57 = v39;
  v58 = v40;
  v52 = v34;
  v53 = v35;
  v54 = v36;
  v55 = v37;
  v50 = v32;
  v51 = v33;
  (*(v30 + 8))(v13, v4, v33);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v22 = v29;
  *v16 = v14;
  *(v16 + 8) = v22;
  v23 = v28;
  *(v16 + 16) = v31;
  *(v16 + 24) = v23;
  *(v16 + 32) = v19;
  *(v16 + 40) = v21;
  v24 = v57;
  *(v16 + 144) = v56;
  *(v16 + 160) = v24;
  *(v16 + 176) = v58;
  v25 = v53;
  *(v16 + 80) = v52;
  *(v16 + 96) = v25;
  v26 = v55;
  *(v16 + 112) = v54;
  *(v16 + 128) = v26;
  v27 = v51;
  *(v16 + 48) = v50;
  *(v16 + 64) = v27;
  return result;
}

unint64_t sub_261447CDC()
{
  result = qword_27FEAF5D0;
  if (!qword_27FEAF5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF5D0);
  }

  return result;
}

unint64_t sub_261447D30()
{
  result = qword_27FEAF5D8;
  if (!qword_27FEAF5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF5D8);
  }

  return result;
}

double sub_261447D84(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_261465C00;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  return result;
}

uint64_t getEnumTagSinglePayload for TVIssue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TVIssue.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_261447EFC()
{
  result = qword_27FEAF5E0;
  if (!qword_27FEAF5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF5E0);
  }

  return result;
}

unint64_t sub_261447F54()
{
  result = qword_27FEAF5E8;
  if (!qword_27FEAF5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF5E8);
  }

  return result;
}

unint64_t sub_261447FAC()
{
  result = qword_27FEAF5F0;
  if (!qword_27FEAF5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF5F0);
  }

  return result;
}

uint64_t sub_261448000()
{
  v0 = sub_261464D60();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_261448058()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_261448098(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000656CLL;
  v3 = 0x746954726F727265;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x656C61636F6CLL;
    }

    else
    {
      v5 = 0x6169726574697263;
    }

    if (v4 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x73654D726F727265;
    }

    else
    {
      v5 = 0x746954726F727265;
    }

    if (v4)
    {
      v6 = 0xEC00000065676173;
    }

    else
    {
      v6 = 0xEA0000000000656CLL;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x656C61636F6CLL;
  if (a2 != 2)
  {
    v8 = 0x6169726574697263;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v3 = 0x73654D726F727265;
    v2 = 0xEC00000065676173;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_261464DA0();
  }

  return v11 & 1;
}

uint64_t sub_2614481E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000796C696DLL;
  v3 = 0x6146656369766564;
  v4 = a1;
  v5 = 0x6973726556707061;
  v6 = 0xEA00000000006E6FLL;
  v7 = 0x6F6973726556736FLL;
  v8 = 0xE90000000000006ELL;
  if (a1 != 4)
  {
    v7 = 29551;
    v8 = 0xE200000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x614E656369766564;
  v10 = 0xEA0000000000656DLL;
  if (a1 != 1)
  {
    v9 = 0x6F4D656369766564;
    v10 = 0xEB000000006C6564;
  }

  if (!a1)
  {
    v9 = 0x6146656369766564;
    v10 = 0xEC000000796C696DLL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEA00000000006E6FLL;
      if (v11 != 0x6973726556707061)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE90000000000006ELL;
      if (v11 != 0x6F6973726556736FLL)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE200000000000000;
      if (v11 != 29551)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEA0000000000656DLL;
        if (v11 != 0x614E656369766564)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x6F4D656369766564;
      v2 = 0xEB000000006C6564;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_261464DA0();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_2614483D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657079;
  v3 = 0x54746E65746E6F63;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x736449646E617262;
    }

    else
    {
      v5 = 0x54746E65746E6F63;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEB00000000657079;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x4965636976726573;
    v6 = 0xEA00000000007364;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x7364496D616461;
    }

    else
    {
      v5 = 0x6B63616279616C70;
    }

    if (v4 == 3)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xED00007365646F4DLL;
    }
  }

  v7 = 0x4965636976726573;
  v8 = 0xEA00000000007364;
  v9 = 0xE700000000000000;
  v10 = 0x7364496D616461;
  if (a2 != 3)
  {
    v10 = 0x6B63616279616C70;
    v9 = 0xED00007365646F4DLL;
  }

  if (a2 != 2)
  {
    v7 = v10;
    v8 = v9;
  }

  if (a2)
  {
    v3 = 0x736449646E617262;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_261464DA0();
  }

  return v13 & 1;
}

uint64_t sub_261448580(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000796C696DLL;
  v3 = 0x6146656369766564;
  v4 = a1;
  v5 = 0x6F6973726556736FLL;
  v6 = 0xE90000000000006ELL;
  if (a1 != 6)
  {
    v5 = 29551;
    v6 = 0xE200000000000000;
  }

  v7 = 0x726556736A736C68;
  v8 = 0xEC0000006E6F6973;
  if (a1 != 4)
  {
    v7 = 0x657261776D726966;
    v8 = 0xEF6E6F6973726556;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6F4D656369766564;
  v10 = 0xEB000000006C6564;
  if (a1 != 2)
  {
    v9 = 0x6973726556707061;
    v10 = 0xEA00000000006E6FLL;
  }

  v11 = 0x614E656369766564;
  v12 = 0xEA0000000000656DLL;
  if (!a1)
  {
    v11 = 0x6146656369766564;
    v12 = 0xEC000000796C696DLL;
  }

  if (a1 <= 1u)
  {
    v9 = v11;
    v10 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE90000000000006ELL;
        if (v13 != 0x6F6973726556736FLL)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xE200000000000000;
        if (v13 != 29551)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEC0000006E6F6973;
      if (v13 != 0x726556736A736C68)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xEF6E6F6973726556;
      if (v13 != 0x657261776D726966)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEB000000006C6564;
        if (v13 != 0x6F4D656369766564)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x6973726556707061;
      v2 = 0xEA00000000006E6FLL;
    }

    else if (a2)
    {
      v2 = 0xEA0000000000656DLL;
      if (v13 != 0x614E656369766564)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_261464DA0();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t sub_26144882C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6F65646976;
    }

    else
    {
      v4 = 1735290739;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x6D75626C61;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E6F6974617473;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x7473696C79616C70;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6F65646976;
    }

    else
    {
      v9 = 1735290739;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x6E6F6974617473;
    if (a2 != 3)
    {
      v6 = 0x7473696C79616C70;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6D75626C61;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_261464DA0();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2614489A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C746974;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x657079546D657469;
    }

    else
    {
      v4 = 0x656C61636F6CLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 2036625250;
    }

    else
    {
      v4 = 0x656C746974;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x657079546D657469;
  if (a2 != 2)
  {
    v8 = 0x656C61636F6CLL;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 2036625250;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_261464DA0();
  }

  return v11 & 1;
}

uint64_t sub_261448AC8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v4 = 1701869940;
    }

    if (v2)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x746E65746E6F63;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x656369766564;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1668508013;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v9 = 1701869940;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x656369766564;
    if (a2 != 3)
    {
      v6 = 1668508013;
      v5 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x746E65746E6F63;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_261464DA0();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_261448C34(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6D69547472617473;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6169726574697263;
    }

    else
    {
      v5 = 0x736567617373656DLL;
    }

    v6 = 0xE800000000000000;
  }

  else
  {
    if (a1)
    {
      v5 = 0x656D6954646E65;
    }

    else
    {
      v5 = 0x6D69547472617473;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  v7 = 0x6169726574697263;
  if (a2 != 2)
  {
    v7 = 0x736567617373656DLL;
  }

  if (a2)
  {
    v3 = 0x656D6954646E65;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v5 == v8 && v6 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_261464DA0();
  }

  return v10 & 1;
}

uint64_t sub_261448DAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 32;
  v6 = (a1 + 40);
  v7 = v2 + 1;
  v18 = a2 + 32;
  do
  {
    v8 = (v5 + 16 * v4);
    v10 = *v8;
    v9 = v8[1];
    ++v4;

    v11 = v7;
    v12 = v6;
    v13 = v6;
    while (--v7)
    {
      v14 = v13 + 2;
      v16 = *(v13 - 1);
      v15 = *v13;

      LOBYTE(v16) = sub_261449730(v16, v15, v10, v9);

      v13 = v14;
      if (v16)
      {

        return 1;
      }
    }

    result = 0;
    v5 = v18;
    v6 = v12;
    v7 = v11;
  }

  while (v4 != v3);
  return result;
}

uint64_t sub_261448EBC()
{
  v1 = v0[1];
  if ((v1 & 0x2000000000000000) == 0)
  {
    if ((*v0 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v1 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return result;
  }

LABEL_5:
  sub_261464A00();

  return sub_261464A50();
}

uint64_t sub_261448F24(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_261464AF0();
  }

  else
  {
    return 0;
  }
}

unint64_t sub_261448F6C(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  sub_261464C30();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  sub_261464C30();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v17 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v17) = 1;
  }

  v18 = 4 << v17;
  v19 = a1;
  if ((a1 & 0xC) == 4 << v17)
  {
    result = sub_2614492CC(a1, a5, a6);
    v19 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v20 = v19 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v21 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v22 = (v21 << 16) | 7;
    LOBYTE(v23) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v21 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v21 < v19 >> 16)
  {
    goto LABEL_42;
  }

  v20 = sub_261464AA0();
  v27 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v27 = 7;
  }

  v22 = v27 | (v21 << 16);
  v23 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  result = a2;
  if ((a2 & 0xC) == 4 << v23)
  {
    v28 = v22;
    result = sub_2614492CC(a2, a5, a6);
    v22 = v28;
  }

  if ((v22 & 0xC) == v18)
  {
    v29 = result;
    v22 = sub_2614492CC(v22, a5, a6);
    result = v29;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      result = (v22 >> 16) - (result >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v21 < result >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v21 >= v22 >> 16)
  {
    result = sub_261464AA0();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(a4) & 0xF;
        v26 = __OFADD__(v20, v25);
        v24 = v20 + v25;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v24 = v20 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v20, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v30 = result;
    v31 = sub_261464A70();
    result = v30;
    v26 = __OFADD__(v20, v31);
    v24 = v20 + v31;
    if (!v26)
    {
LABEL_21:
      v26 = __OFADD__(v24, result);
      result += v24;
      if (!v26)
      {
        MEMORY[0x2667028B0](result);
LABEL_23:
        sub_261464B10();
        sub_26144A050();
        sub_261464A20();

        sub_261464A20();
        sub_261449280(a2, a5, a6);
        sub_261464A20();

        return 0;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_261449280(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_261464B10();
  }

  __break(1u);
  return result;
}

uint64_t sub_2614492CC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_261464AC0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x266702980](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_261449348(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v2 = *v1;
  if ((v1[1] & 0x2000000000000000) == 0)
  {
    v3 = *v1;
  }

  result = sub_261464A10();
  if (v4)
  {
    goto LABEL_11;
  }

  return sub_2614649B0();
}

uint64_t sub_2614493D0(uint64_t a1, unint64_t a2)
{
  sub_26144A0A4();
  if ((sub_261464CA0() & 1) == 0)
  {
    goto LABEL_26;
  }

  if (sub_2614649F0() == 1)
  {
    v4 = 1;
    return v4 & 1;
  }

  v14 = a1;
  v15 = a2;

  result = sub_261464AD0();
  v13 = result;
  if ((result & 1) == 0)
  {
LABEL_16:
    v9 = sub_261464AE0();
    if (v9)
    {
      sub_261448EBC();

      v11 = v14;
      v10 = v15;
      for (result = sub_261464AE0(); (result & 1) != 0; result = sub_261464AE0())
      {
        if ((v10 & 0x2000000000000000) != 0)
        {
          if ((v10 & 0xF00000000000000) == 0)
          {
            goto LABEL_37;
          }
        }

        else if ((v11 & 0xFFFFFFFFFFFFLL) == 0)
        {
          __break(1u);
          break;
        }

        sub_261464A00();
        sub_261464A50();

        v11 = v14;
        v10 = v15;
      }
    }

    if (sub_261464CA0())
    {
      goto LABEL_25;
    }

    if (v13)
    {
      if (v9)
      {
        v12 = sub_261464CA0();
      }

      else
      {
        v12 = sub_261464AE0();
      }
    }

    else
    {
      if ((v9 & 1) == 0)
      {
LABEL_25:

LABEL_26:
        v4 = 0;
        return v4 & 1;
      }

      v12 = sub_261464AD0();
    }

    v4 = v12;

    return v4 & 1;
  }

  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    goto LABEL_38;
  }

  result = sub_261448F24(a1, a2);
  if (v7)
  {

    sub_261449348(1);
    result = sub_261464AD0();
    if (result)
    {
      while (1)
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          if ((a2 & 0xF00000000000000) == 0)
          {
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }
        }

        else if ((a1 & 0xFFFFFFFFFFFFLL) == 0)
        {
          goto LABEL_36;
        }

        sub_261464AF0();

        result = sub_261464A10();
        if (v8)
        {
          goto LABEL_39;
        }

        sub_2614649B0();
        a1 = v14;
        a2 = v15;
        result = sub_261464AD0();
        if ((result & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_261449730(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v48 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF610, &qword_261466E10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v49 = &v48 - v10;
  v11 = sub_261464690();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  v51 = a2;
  sub_261464680();
  v17 = sub_26144A0A4();
  v18 = sub_261464C60();
  v20 = v19;
  v21 = *(v12 + 8);
  v21(v16, v11);
  v50 = a3;
  v51 = v48;
  sub_261464680();
  v48 = v17;
  v22 = sub_261464C60();
  v24 = v23;
  v21(v16, v11);
  v25 = 0xE000000000000000;
  v54 = 0;
  v55 = 0xE000000000000000;
  v26 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v26 = v18 & 0xFFFFFFFFFFFFLL;
  }

  v50 = v18;
  v51 = v20;
  v52 = 0;
  v53 = v26;
  v27 = sub_261464A60();
  if (v28)
  {
    v29 = v27;
    v30 = v28;
    do
    {
      if ((sub_261464900() & 1) == 0)
      {
        MEMORY[0x266702920](v29, v30);
      }

      v29 = sub_261464A60();
      v30 = v31;
    }

    while (v31);
    v33 = v54;
    v32 = v55;
  }

  else
  {
    v33 = 0;
    v32 = 0xE000000000000000;
  }

  v54 = 0;
  v55 = 0xE000000000000000;
  v34 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v34 = v22 & 0xFFFFFFFFFFFFLL;
  }

  v50 = v22;
  v51 = v24;
  v52 = 0;
  v53 = v34;
  v35 = sub_261464A60();
  v37 = v36;
  if (v36)
  {
    v38 = v35;
    do
    {
      if ((sub_261464900() & 1) == 0)
      {
        MEMORY[0x266702920](v38, v37);
      }

      v38 = sub_261464A60();
      v37 = v39;
    }

    while (v39);
    v37 = v54;
    v25 = v55;
  }

  v50 = v33;
  v51 = v32;
  v54 = v37;
  v55 = v25;
  v40 = sub_261464810();
  v41 = 1;
  v42 = v49;
  (*(*(v40 - 8) + 56))(v49, 1, 1, v40);
  v43 = sub_261464C90();
  sub_26144A15C(v42);
  if (v43)
  {
    v44 = sub_261464990();
    v46 = v45;

    sub_261464990();

    v41 = sub_2614493D0(v44, v46);
  }

  return v41 & 1;
}

uint64_t sub_261449AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, void *a5@<X8>)
{
  v45 = a5;
  v9 = sub_261464690();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a2;
  v61 = a3;
  sub_261464670();
  v15 = sub_26144A0A4();
  v16 = sub_261464C40();
  (*(v10 + 8))(v14, v9);
  v17 = 0;
  v18 = *(v16 + 16);
  v49 = v16;
  v47 = v18;
  v48 = v16 + 32;
  v46 = (a1 + 80);
  v51 = *(a1 + 16);
  v52 = a4;
  v53 = v15;
  while (1)
  {
    v19 = *(v49 + 16);
    v50 = v17;
    v20 = v19 >= v17;
    v21 = v19 - v17;
    if (!v20)
    {
      v21 = 0;
    }

    v60 = v49;
    v61 = v48;
    v62 = 0;
    v63 = (2 * v21) | 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF600, &qword_261465FA8);
    sub_26144A0F8();
    v56 = sub_261464910();
    v57 = v22;
    swift_unknownObjectRelease();
    if (v51)
    {
      break;
    }

LABEL_2:

    v17 = v50 + 1;
    if (v50 == v47)
    {

      v42 = 0;
      v27 = 0;
      v43 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      goto LABEL_45;
    }
  }

  v23 = v46;
  v24 = v51;
  while (1)
  {
    v26 = *(v23 - 6);
    v27 = *(v23 - 5);
    v28 = *(v23 - 3);
    v54 = *(v23 - 4);
    v55 = v26;
    v29 = *(v23 - 16);
    v30 = *(v23 - 1);
    v31 = *v23;
    v60 = v30;
    v61 = v31;
    v58 = v56;
    v59 = v57;

    if (sub_261464C80())
    {
      goto LABEL_8;
    }

    if (v29 <= 2)
    {
      v32 = 0x6F65646976;
      if (v29 == 1)
      {
        v33 = 0x6F65646976;
      }

      else
      {
        v33 = 0x6D75626C61;
      }

      if (v29)
      {
        v34 = v33;
      }

      else
      {
        v34 = 1735290739;
      }

      if (v29)
      {
        v35 = 0xE500000000000000;
      }

      else
      {
        v35 = 0xE400000000000000;
      }

      goto LABEL_24;
    }

    v32 = 0x6F65646976;
    if (v29 == 3)
    {
      v35 = 0xE700000000000000;
      v34 = 0x6E6F6974617473;
      goto LABEL_24;
    }

    if (v29 != 4)
    {
      break;
    }

    v35 = 0xE800000000000000;
    v34 = 0x7473696C79616C70;
LABEL_24:
    v36 = 0x7473696C79616C70;
    if (v52 == 3)
    {
      v36 = 0x6E6F6974617473;
    }

    v37 = 0xE700000000000000;
    if (v52 != 3)
    {
      v37 = 0xE800000000000000;
    }

    if (v52 == 2)
    {
      v36 = 0x6D75626C61;
      v37 = 0xE500000000000000;
    }

    if (v52)
    {
      v38 = 0xE500000000000000;
    }

    else
    {
      v32 = 1735290739;
      v38 = 0xE400000000000000;
    }

    if (v52 <= 1)
    {
      v39 = v32;
    }

    else
    {
      v39 = v36;
    }

    if (v52 <= 1)
    {
      v40 = v38;
    }

    else
    {
      v40 = v37;
    }

    if (v34 == v39 && v35 == v40)
    {

LABEL_43:

      goto LABEL_44;
    }

    v25 = sub_261464DA0();

    if (v25)
    {

      goto LABEL_43;
    }

LABEL_8:
    v23 += 7;

    if (!--v24)
    {
      goto LABEL_2;
    }
  }

  v29 = 5;
LABEL_44:
  v43 = v54;
  v42 = v55;
LABEL_45:
  v44 = v45;
  *v45 = v42;
  v44[1] = v27;
  v44[2] = v43;
  v44[3] = v28;
  v44[4] = v29;
  v44[5] = v30;
  v44[6] = v31;
  return result;
}

unint64_t sub_261449F28(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_261449FFC();
  v8 = sub_261464B80();
  if (v8[2])
  {
    v9 = v8[4];
    v10 = v8[5];

    return sub_261448F6C(v9, v10, a3, a4, a1, a2);
  }

  else
  {
  }

  return a1;
}

unint64_t sub_261449FFC()
{
  result = qword_2811AE768;
  if (!qword_2811AE768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE768);
  }

  return result;
}

unint64_t sub_26144A050()
{
  result = qword_27FEAF5F8;
  if (!qword_27FEAF5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF5F8);
  }

  return result;
}

unint64_t sub_26144A0A4()
{
  result = qword_2811AE760;
  if (!qword_2811AE760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE760);
  }

  return result;
}

unint64_t sub_26144A0F8()
{
  result = qword_27FEAF608;
  if (!qword_27FEAF608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEAF600, &qword_261465FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF608);
  }

  return result;
}

uint64_t sub_26144A15C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF610, &qword_261466E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_26144A1C8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_26144A7CC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_26144A218(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_261464DA0() & 1) == 0 || (v2 != v7 || v3 != v8) && (sub_261464DA0() & 1) == 0)
  {
    return 0;
  }

  if (v4 == 5)
  {
    if (v9 != 5)
    {
      return 0;
    }
  }

  else if (v9 == 5 || (sub_26144882C(v4, v9) & 1) == 0)
  {
    return 0;
  }

  if (v5 == v10 && v6 == v11)
  {
    return 1;
  }

  return sub_261464DA0();
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

uint64_t sub_26144A36C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_26144A3B4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_26144A41C()
{
  v1 = *v0;
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_26144A4D0()
{
  *v0;
  *v0;
  *v0;
  sub_2614649E0();
}

uint64_t sub_26144A570()
{
  v1 = *v0;
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_26144A620@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26144ABF8();
  *a2 = result;
  return result;
}

void sub_26144A650(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656C746974;
  v4 = 0xE800000000000000;
  v5 = 0x657079546D657469;
  if (*v1 != 2)
  {
    v5 = 0x656C61636F6CLL;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 2036625250;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_26144A6C0()
{
  v1 = 0x656C746974;
  v2 = 0x657079546D657469;
  if (*v0 != 2)
  {
    v2 = 0x656C61636F6CLL;
  }

  if (*v0)
  {
    v1 = 2036625250;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26144A72C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26144ABF8();
  *a1 = result;
  return result;
}

uint64_t sub_26144A754(uint64_t a1)
{
  v2 = sub_26144AA8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26144A790(uint64_t a1)
{
  v2 = sub_26144AA8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26144A7CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF618, &qword_261466048);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v25 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26144AA8C();
  sub_261464E40();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = 0;
  v13 = sub_261464D70();
  v28 = v6;
  v14 = v13;
  v27 = v15;
  v32 = 1;
  v16 = sub_261464D70();
  v18 = v17;
  v26 = v16;
  v31 = 2;
  sub_261464D70();
  v25 = v14;
  sub_261464990();

  v19 = sub_261446E80();
  v20 = v25;
  v29 = v19;
  v30 = 3;
  v21 = sub_261464D70();
  v23 = v22;
  (*(v28 + 8))(v10, v5);
  v24 = v27;

  __swift_destroy_boxed_opaque_existential_1(a1);

  *a2 = v20;
  *(a2 + 8) = v24;
  *(a2 + 16) = v26;
  *(a2 + 24) = v18;
  *(a2 + 32) = v29;
  *(a2 + 40) = v21;
  *(a2 + 48) = v23;
  return result;
}

unint64_t sub_26144AA8C()
{
  result = qword_27FEAF620;
  if (!qword_27FEAF620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF620);
  }

  return result;
}

unint64_t sub_26144AAF4()
{
  result = qword_27FEAF628;
  if (!qword_27FEAF628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF628);
  }

  return result;
}

unint64_t sub_26144AB4C()
{
  result = qword_27FEAF630;
  if (!qword_27FEAF630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF630);
  }

  return result;
}

unint64_t sub_26144ABA4()
{
  result = qword_27FEAF638;
  if (!qword_27FEAF638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF638);
  }

  return result;
}

uint64_t sub_26144ABF8()
{
  v0 = sub_261464D60();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

Swift::String __swiftcall String.noBreakingSpaced()()
{
  sub_26144A0A4();
  v0 = sub_261464C70();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_26144ACBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_261464690();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v37 = a2;
  v34 = 44;
  v35 = 0xE100000000000000;
  sub_26144A0A4();
  v8 = sub_261464C50();
  v9 = v8;
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v8 + 40);
    while (v11 < *(v9 + 16))
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v36 = v13;
      v37 = v14;
      v34 = 0x6567612D78616DLL;
      v35 = 0xE700000000000000;

      if (sub_261464CA0())
      {

        v36 = v13;
        v37 = v14;
        v22 = v31;
        sub_261464680();
        v23 = sub_261464C60();
        v25 = v24;
        (*(v32 + 8))(v22, v33);

        v36 = v23;
        v37 = v25;
        v34 = 0x3D6567612D78616DLL;
        v35 = 0xE800000000000000;
        sub_261449FFC();
        sub_261464B70();

        v15 = v38;
        v17 = v39;
        v19 = v40;
        v21 = v41;
        goto LABEL_8;
      }

      ++v11;
      v12 += 2;
      if (v10 == v11)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_6:

  v15 = sub_261464C20();
  v17 = v16;
  v19 = v18;
  v21 = v20;
LABEL_8:
  if (!((v17 ^ v15) >> 14))
  {
LABEL_16:

    return 0;
  }

  v26 = sub_26144B998(v15, v17, v19, v21, 10);
  if ((v27 & 0x100) != 0)
  {
    v26 = sub_26144AF94(v15, v17, v19, v21, 10);
  }

  v28 = v26;
  v29 = v27;

  if (v29)
  {
    return 0;
  }

  else
  {
    return v28;
  }
}

unsigned __int8 *sub_26144AF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_26144A050();

  result = sub_261464B00();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_26144B52C();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_261464D00();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_26144B52C()
{
  v0 = sub_261464B10();
  v4 = sub_26144B5AC(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_26144B5AC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2614649D0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_261464C10();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_26144B704(v9, 0);
  v12 = sub_26144B778(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_2614649D0();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_261464D00();
LABEL_4:

  return sub_2614649D0();
}

void *sub_26144B704(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF640, &unk_2614661A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_26144B778(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2614492CC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_261464AB0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_261464D00();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2614492CC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_261464A80();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_26144B998(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_261464D00();
  }

  result = sub_26144BA68(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_26144BA68(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_2614492CC(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_261464AA0();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_2614492CC(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_2614492CC(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_261464AA0();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26144BEE0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26144BF3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26144BF9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26144C404(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_26144BFC8(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (v4)
  {
    if (!v6 || (sub_26145288C(v4, v6) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v7 && (sub_26145288C(v5, v7) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v7)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_26144C03C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6574617473;
  }

  else
  {
    v4 = 0x7972746E756F63;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x6574617473;
  }

  else
  {
    v6 = 0x7972746E756F63;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_261464DA0();
  }

  return v9 & 1;
}

uint64_t sub_26144C0E0()
{
  v1 = *v0;
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_26144C160()
{
  *v0;
  sub_2614649E0();
}

uint64_t sub_26144C1CC()
{
  v1 = *v0;
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_26144C248@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_261464D60();

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

void sub_26144C2A8(uint64_t *a1@<X8>)
{
  v2 = 0x7972746E756F63;
  if (*v1)
  {
    v2 = 0x6574617473;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26144C2E4()
{
  if (*v0)
  {
    result = 0x6574617473;
  }

  else
  {
    result = 0x7972746E756F63;
  }

  *v0;
  return result;
}

uint64_t sub_26144C31C@<X0>(char *a1@<X8>)
{
  v2 = sub_261464D60();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_26144C38C(uint64_t a1)
{
  v2 = sub_26144C600();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26144C3C8(uint64_t a1)
{
  v2 = sub_26144C600();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26144C404(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF648, &qword_261466258);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_26144C600();
  sub_261464E40();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF658, &qword_261466260);
    v12 = 0;
    sub_26144C654();
    sub_261464D80();
    v9 = v13;
    v12 = 1;
    sub_261464D80();
    (*(v4 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_26144C600()
{
  result = qword_27FEAF650;
  if (!qword_27FEAF650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF650);
  }

  return result;
}

unint64_t sub_26144C654()
{
  result = qword_27FEAF660;
  if (!qword_27FEAF660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEAF658, &qword_261466260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF660);
  }

  return result;
}

unint64_t sub_26144C6E4()
{
  result = qword_27FEAF668;
  if (!qword_27FEAF668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF668);
  }

  return result;
}

unint64_t sub_26144C73C()
{
  result = qword_27FEAF670;
  if (!qword_27FEAF670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF670);
  }

  return result;
}

unint64_t sub_26144C794()
{
  result = qword_27FEAF678;
  if (!qword_27FEAF678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF678);
  }

  return result;
}

uint64_t QOSConfig.locale.getter()
{
  v1 = *(v0 + OBJC_IVAR___QOSConfigInternal_locale);
  v2 = *(v0 + OBJC_IVAR___QOSConfigInternal_locale + 8);

  return v1;
}

id QOSConfig.__allocating_init(appTarget:locale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___QOSConfigInternal_issuesUrl];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v7[OBJC_IVAR___QOSConfigInternal_locationUrl];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v7[OBJC_IVAR___QOSConfigInternal_issueRefreshFrequencyInSecs];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v7[OBJC_IVAR___QOSConfigInternal_locationRefreshFrequencyInSecs];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v7[OBJC_IVAR___QOSConfigInternal_syncStartDelayOffsetInSecs];
  *v12 = 0;
  v12[8] = 1;
  *&v7[OBJC_IVAR___QOSConfigInternal_appTarget] = a1;
  v13 = &v7[OBJC_IVAR___QOSConfigInternal_locale];
  *v13 = a2;
  *(v13 + 1) = a3;
  v15.receiver = v7;
  v15.super_class = v3;
  return objc_msgSendSuper2(&v15, sel_init);
}

id QOSConfig.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id QOSConfig.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QOSConfig();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26144CBB8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v6 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;

  return MEMORY[0x2822009F8](sub_26144CCB8, 0, 0);
}

uint64_t sub_26144CCB8()
{
  v1 = *(v0 + 24);
  v5 = *(v0 + 48);

  v2 = *(v1 + OBJC_IVAR___QOSConfigInternal_issuesUrl + 8);
  *(v1 + OBJC_IVAR___QOSConfigInternal_issuesUrl) = v5;

  v3 = *(v0 + 8);

  return v3();
}

__n128 sub_26144CD3C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_26144DBB4(a1, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v5;
    *(a2 + 160) = v9[10];
    v6 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v6;
    v7 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v7;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
    result = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_26144CDA0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v13[10] = a1[10];
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v14[8] = a2[8];
  v14[9] = v7;
  v14[10] = a2[10];
  v8 = a2[5];
  v14[4] = a2[4];
  v14[5] = v8;
  v9 = a2[7];
  v14[6] = a2[6];
  v14[7] = v9;
  v10 = a2[1];
  v14[0] = *a2;
  v14[1] = v10;
  v11 = a2[3];
  v14[2] = a2[2];
  v14[3] = v11;
  return sub_26144D288(v13, v14) & 1;
}

uint64_t sub_26144CE40()
{
  v1 = *v0;
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_26144CF10()
{
  *v0;
  *v0;
  *v0;
  sub_2614649E0();
}

uint64_t sub_26144CFCC()
{
  v1 = *v0;
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_26144D098@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26144E284();
  *a2 = result;
  return result;
}

void sub_26144D0C8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0xE700000000000000;
  v6 = 0x746E65746E6F63;
  v7 = 0xE600000000000000;
  v8 = 0x656369766564;
  if (v2 != 3)
  {
    v8 = 1668508013;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6E6F697461636F6CLL;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_26144D154()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x746E65746E6F63;
  v4 = 0x656369766564;
  if (v1 != 3)
  {
    v4 = 1668508013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F697461636F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26144D1DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26144E284();
  *a1 = result;
  return result;
}

uint64_t sub_26144D210(uint64_t a1)
{
  v2 = sub_26144DFC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26144D24C(uint64_t a1)
{
  v2 = sub_26144DFC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26144D288(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (v3 == 2)
    {
      goto LABEL_47;
    }

    v4 = a2;
    v5 = a1;
    if (v2)
    {
      v6 = 0x636973756DLL;
    }

    else
    {
      v6 = 0x6F65646976;
    }

    if (v3)
    {
      v7 = 0x636973756DLL;
    }

    else
    {
      v7 = 0x6F65646976;
    }

    if (v6 == v7)
    {
      swift_bridgeObjectRelease_n();
      a1 = v5;
      a2 = v4;
    }

    else
    {
      v8 = sub_261464DA0();
      swift_bridgeObjectRelease_n();
      a1 = v5;
      a2 = v4;
      if ((v8 & 1) == 0)
      {
        goto LABEL_47;
      }
    }
  }

  v9 = *(a1 + 1);
  v10 = *(a2 + 1);
  if (v9 == 1)
  {
    if (v10 != 1)
    {
      goto LABEL_47;
    }

LABEL_16:
    v11 = *(a1 + 3);
    v12 = *(a1 + 4);
    v14 = *(a1 + 5);
    v13 = *(a1 + 6);
    v16 = *(a1 + 7);
    v15 = *(a1 + 8);
    v18 = *(a2 + 3);
    v17 = *(a2 + 4);
    v20 = *(a2 + 5);
    v19 = *(a2 + 6);
    v22 = *(a2 + 7);
    v21 = *(a2 + 8);
    if (v11 == 1)
    {
      if (v18 == 1)
      {
LABEL_32:
        v38 = *(a1 + 9);
        v39 = *(a2 + 9);
        if (v38 == 1)
        {
          if (v39 != 1)
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v39 == 1)
          {
            goto LABEL_47;
          }

          if (v38)
          {
            if (!v39)
            {
              goto LABEL_47;
            }

            v49 = a1;
            v50 = a2;
            v51 = sub_26145288C(*(a1 + 9), *(a2 + 9));
            a2 = v50;
            v52 = v51;
            a1 = v49;
            if ((v52 & 1) == 0)
            {
              goto LABEL_47;
            }
          }

          else if (v39)
          {
            goto LABEL_47;
          }
        }

        v40 = *(a1 + 8);
        v83[2] = *(a1 + 7);
        v83[3] = v40;
        v41 = *(a1 + 10);
        v83[4] = *(a1 + 9);
        v83[5] = v41;
        v42 = *(a1 + 6);
        v83[0] = *(a1 + 5);
        v83[1] = v42;
        v43 = *(a2 + 8);
        v82[2] = *(a2 + 7);
        v82[3] = v43;
        v44 = *(a2 + 10);
        v82[4] = *(a2 + 9);
        v82[5] = v44;
        v45 = *(a2 + 6);
        v82[0] = *(a2 + 5);
        v82[1] = v45;
        v46 = *&v83[0];
        if (*&v83[0] == 1)
        {
          if (*&v82[0] == 1)
          {
            LOBYTE(v24) = 1;
            *&v74[40] = *(a1 + 120);
            *&v74[56] = *(a1 + 136);
            *&v74[72] = *(a1 + 152);
            v47 = *(a1 + 21);
            *v74 = 1;
            *&v74[88] = v47;
            *&v74[8] = *(a1 + 88);
            *&v74[24] = *(a1 + 104);
            sub_26144D974(v83, &v84);
            sub_26144D974(v82, &v84);
            v48 = v74;
LABEL_50:
            sub_26144D9E4(v48, &qword_27FEAF6B8, &qword_2614663F8);
            return v24 & 1;
          }
        }

        else if (*&v82[0] != 1)
        {
          *v66 = *&v82[0];
          *&v66[8] = *(a2 + 88);
          *&v66[24] = *(a2 + 104);
          *&v66[88] = *(a2 + 21);
          *&v66[72] = *(a2 + 152);
          *&v66[56] = *(a2 + 136);
          *&v66[40] = *(a2 + 120);
          *v74 = *v66;
          *&v74[16] = *&v66[16];
          *&v74[64] = *&v66[64];
          *&v74[80] = *&v66[80];
          *&v74[32] = *&v66[32];
          *&v74[48] = *&v66[48];
          v58 = *(a1 + 88);
          v86 = *(a1 + 104);
          v85 = v58;
          v59 = *(a1 + 120);
          v60 = *(a1 + 136);
          v61 = *(a1 + 21);
          v89 = *(a1 + 152);
          v88 = v60;
          v87 = v59;
          v90 = v61;
          v84 = *&v83[0];
          v62 = a1;
          LOBYTE(v24) = sub_26145924C(&v84, v74);
          sub_26144D974(v83, &v67);
          sub_26144D974(v82, &v67);
          sub_26144D9E4(v66, &qword_27FEAF6B8, &qword_2614663F8);
          v67 = v46;
          v70 = *(v62 + 120);
          v71 = *(v62 + 136);
          v72 = *(v62 + 152);
          v73 = *(v62 + 21);
          v68 = *(v62 + 88);
          v69 = *(v62 + 104);
          v48 = &v67;
          goto LABEL_50;
        }

        *&v74[40] = *(a1 + 120);
        *&v74[56] = *(a1 + 136);
        *&v74[72] = *(a1 + 152);
        v53 = *(a1 + 21);
        *v74 = *&v83[0];
        *&v74[88] = v53;
        v75 = *&v82[0];
        *&v74[8] = *(a1 + 88);
        *&v74[24] = *(a1 + 104);
        v77 = *(a2 + 104);
        v76 = *(a2 + 88);
        v54 = *(a2 + 120);
        v55 = *(a2 + 136);
        v56 = *(a2 + 152);
        v81 = *(a2 + 21);
        v80 = v56;
        v79 = v55;
        v78 = v54;
        sub_26144D974(v83, &v84);
        sub_26144D974(v82, &v84);
        sub_26144D9E4(v74, &qword_27FEAF6C0, &qword_261466400);
LABEL_47:
        LOBYTE(v24) = 0;
        return v24 & 1;
      }
    }

    else if (v18 != 1)
    {
      v92[0] = *(a2 + 3);
      v92[1] = v17;
      v92[2] = v20;
      v92[3] = v19;
      v92[4] = v22;
      v92[5] = v21;
      v91[0] = v11;
      v91[1] = v12;
      v91[2] = v14;
      v91[3] = v13;
      v91[4] = v16;
      v91[5] = v15;
      v64 = a2;
      v65 = a1;
      v37 = v11;
      v63 = sub_261461F0C(v91, v92);
      sub_26144D868(v18);
      sub_26144D868(v37);

      sub_26144D8F0(v37);
      a2 = v64;
      a1 = v65;
      if ((v63 & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_32;
    }

    v34 = *(a2 + 3);
    v35 = *(a2 + 4);
    v36 = v11;
    sub_26144D868(v34);
    sub_26144D868(v36);
    sub_26144D8F0(v36);
    sub_26144D8F0(v18);
    goto LABEL_47;
  }

  if (v10 == 1)
  {
    goto LABEL_47;
  }

  v23 = *(a1 + 2);
  v24 = *(a2 + 2);
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_23;
    }

LABEL_30:
    sub_26144DA44(v10);

    goto LABEL_47;
  }

  if (!v10)
  {
    goto LABEL_47;
  }

  v25 = a1;
  v26 = a2;
  v27 = sub_26145288C(*(a1 + 1), *(a2 + 1));
  a2 = v26;
  v28 = v27;
  a1 = v25;
  if ((v28 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_23:
  if (!v23)
  {
    if (v24)
    {
      goto LABEL_47;
    }

    goto LABEL_16;
  }

  if (v24)
  {
    v29 = a1;
    v30 = v23;
    v31 = a2;
    v32 = sub_26145288C(v30, v24);
    a2 = v31;
    v33 = v32;
    a1 = v29;
    if ((v33 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_16;
  }

  return v24 & 1;
}

uint64_t sub_26144D868(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_26144D8F0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_26144D974(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF6B8, &qword_2614663F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26144D9E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26144DA44(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
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
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_26144DAC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 176))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_26144DB28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 168) = 0;
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
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26144DBB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF6C8, &qword_2614665B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26144DFC8();
  sub_261464E40();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36) = 0;
  sub_261464D70();
  v13 = sub_261464D60();

  if (v13 == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  if (!v13)
  {
    v14 = 0;
  }

  v42 = v14;
  LOBYTE(v32) = 1;
  sub_26144E01C();
  sub_261464D80();
  v30 = *(&v36 + 1);
  v31 = v36;
  LOBYTE(v32) = 2;
  sub_26144E070();
  sub_261464D80();
  v28 = v37;
  v29 = v36;
  v26 = v39;
  v27 = v38;
  v24 = v41;
  v25 = v40;
  v43 = 3;
  sub_26144E0C4();
  sub_261464D80();
  v22 = v33;
  v23 = v32;
  v16 = v34;
  v15 = v35;
  v43 = 4;
  sub_26144E118();
  sub_261464D80();
  v17 = v32;
  (*(v6 + 8))(v10, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v42;
  v18 = v30;
  *(a2 + 8) = v31;
  *(a2 + 16) = v18;
  *(a2 + 40) = v22;
  *(a2 + 24) = v23;
  *(a2 + 56) = v16;
  *(a2 + 64) = v15;
  *(a2 + 72) = v17;
  v19 = v28;
  *(a2 + 80) = v29;
  *(a2 + 96) = v19;
  v20 = v26;
  *(a2 + 112) = v27;
  *(a2 + 128) = v20;
  v21 = v24;
  *(a2 + 144) = v25;
  *(a2 + 160) = v21;
  return result;
}

unint64_t sub_26144DFC8()
{
  result = qword_27FEAF6D0;
  if (!qword_27FEAF6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF6D0);
  }

  return result;
}

unint64_t sub_26144E01C()
{
  result = qword_27FEAF6D8;
  if (!qword_27FEAF6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF6D8);
  }

  return result;
}

unint64_t sub_26144E070()
{
  result = qword_27FEAF6E0;
  if (!qword_27FEAF6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF6E0);
  }

  return result;
}

unint64_t sub_26144E0C4()
{
  result = qword_27FEAF6E8;
  if (!qword_27FEAF6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF6E8);
  }

  return result;
}

unint64_t sub_26144E118()
{
  result = qword_27FEAF6F0;
  if (!qword_27FEAF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF6F0);
  }

  return result;
}

unint64_t sub_26144E180()
{
  result = qword_27FEAF6F8;
  if (!qword_27FEAF6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF6F8);
  }

  return result;
}

unint64_t sub_26144E1D8()
{
  result = qword_27FEAF700;
  if (!qword_27FEAF700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF700);
  }

  return result;
}

unint64_t sub_26144E230()
{
  result = qword_27FEAF708;
  if (!qword_27FEAF708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF708);
  }

  return result;
}

uint64_t sub_26144E284()
{
  v0 = sub_261464D60();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26144E31C()
{
  v1 = *v0;
  sub_261464E10();
  MEMORY[0x266702D10](v1);
  return sub_261464E30();
}

uint64_t sub_26144E364()
{
  v1 = *v0;
  sub_261464E10();
  MEMORY[0x266702D10](v1);
  return sub_261464E30();
}

uint64_t QOSItem.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x266702D10](v1 >> 7);
  return MEMORY[0x266702D10](v1 & 0x7F);
}

uint64_t QOSItem.hashValue.getter()
{
  v1 = *v0;
  sub_261464E10();
  MEMORY[0x266702D10](v1 >> 7);
  MEMORY[0x266702D10](v1 & 0x7F);
  return sub_261464E30();
}

uint64_t sub_26144E43C()
{
  v1 = *v0;
  sub_261464E10();
  MEMORY[0x266702D10](v1 >> 7);
  MEMORY[0x266702D10](v1 & 0x7F);
  return sub_261464E30();
}

uint64_t sub_26144E490()
{
  v1 = *v0;
  MEMORY[0x266702D10](v1 >> 7);
  return MEMORY[0x266702D10](v1 & 0x7F);
}

uint64_t sub_26144E4D0()
{
  v1 = *v0;
  sub_261464E10();
  MEMORY[0x266702D10](v1 >> 7);
  MEMORY[0x266702D10](v1 & 0x7F);
  return sub_261464E30();
}

unint64_t QOSItem.id.getter()
{
  v1 = *v0;
  if (*v0 < 0)
  {
    result = 0x657079546D657469;
    switch(v1 & 0x7F)
    {
      case 1:
        result = 0x7364497465737361;
        break;
      case 2:
        result = 0x5465636976726573;
        break;
      case 3:
        result = 0x707954616964656DLL;
        break;
      case 4:
        result = 0x6570795479616C70;
        break;
      case 5:
        result = 0x6574614379616C70;
        break;
      case 6:
        result = 0x726F466F69647561;
        break;
      case 7:
        result = 0x6E65526F69647561;
        break;
      case 8:
        result = 0x614C64726F636572;
        break;
      case 9:
        result = 0x546E6F6974617473;
        break;
      case 0xA:
        result = 0xD000000000000014;
        break;
      case 0xB:
        result = 0xD000000000000016;
        break;
      case 0xC:
        result = 0x656C61636F6CLL;
        break;
      default:
        return result;
    }
  }

  else
  {
    v2 = 0x54746E65746E6F63;
    v3 = 0x656449616964656DLL;
    v4 = 0x656C61636F6CLL;
    if (v1 != 3)
    {
      v4 = 0x6B63616279616C70;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x6449646E617262;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t QOSItem.QOSTVItem.id.getter()
{
  v1 = *v0;
  v2 = 0x54746E65746E6F63;
  v3 = 0x656449616964656DLL;
  v4 = 0x656C61636F6CLL;
  if (v1 != 3)
  {
    v4 = 0x6B63616279616C70;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6449646E617262;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t QOSItem.QOSMusicItem.id.getter()
{
  result = 0x657079546D657469;
  switch(*v0)
  {
    case 1:
      result = 0x7364497465737361;
      break;
    case 2:
      result = 0x5465636976726573;
      break;
    case 3:
      result = 0x707954616964656DLL;
      break;
    case 4:
      result = 0x6570795479616C70;
      break;
    case 5:
      result = 0x6574614379616C70;
      break;
    case 6:
      result = 0x726F466F69647561;
      break;
    case 7:
      result = 0x6E65526F69647561;
      break;
    case 8:
      result = 0x614C64726F636572;
      break;
    case 9:
      result = 0x546E6F6974617473;
      break;
    case 0xA:
      result = 0xD000000000000014;
      break;
    case 0xB:
      result = 0xD000000000000016;
      break;
    case 0xC:
      result = 0x656C61636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26144E9B4()
{
  result = qword_27FEAF710;
  if (!qword_27FEAF710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF710);
  }

  return result;
}

unint64_t sub_26144EA0C()
{
  result = qword_27FEAF718;
  if (!qword_27FEAF718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF718);
  }

  return result;
}

unint64_t sub_26144EA64()
{
  result = qword_27FEAF720;
  if (!qword_27FEAF720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF720);
  }

  return result;
}

unint64_t sub_26144EAB8@<X0>(unint64_t *a1@<X8>)
{
  result = QOSItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_26144EAE0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000657079;
  v4 = 0x54746E65746E6F63;
  v5 = 0xEF7265696669746ELL;
  v6 = 0x656449616964656DLL;
  v7 = 0xE600000000000000;
  v8 = 0x656C61636F6CLL;
  if (v2 != 3)
  {
    v8 = 0x6B63616279616C70;
    v7 = 0xEC00000065646F4DLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6449646E617262;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_26144EB98@<X0>(unint64_t *a1@<X8>)
{
  result = QOSItem.QOSMusicItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for QOSItem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF)
  {
    goto LABEL_17;
  }

  if (a2 + 241 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 241) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 241;
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

      return (*a1 | (v4 << 8)) - 241;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 241;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 3) & 0xE | (*a1 >> 7)) ^ 0xF;
  if (v6 >= 0xE)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for QOSItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 241 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 241) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF)
  {
    v4 = 0;
  }

  if (a2 > 0xE)
  {
    v5 = ((a2 - 15) >> 8) + 1;
    *result = a2 - 15;
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
    *result = 16 * (((-a2 >> 1) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QOSItem.QOSMusicItem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for QOSItem.QOSMusicItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_26144EEE4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006C6F72746ELL;
  v4 = 0x6F432D6568636143;
  v5 = 0xE400000000000000;
  v6 = 1702125892;
  v7 = 0xED00006465696669;
  v8 = 0x646F4D2D7473614CLL;
  if (v2 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x8000000261468CD0;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE006874676E654CLL;
  if (v2 != 1)
  {
    v9 = 0xEC00000065707954;
  }

  if (*v1)
  {
    v4 = 0x2D746E65746E6F43;
    v3 = v9;
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

uint64_t getEnumTagSinglePayload for HTTPHeaderField(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HTTPHeaderField(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26144F120()
{
  result = qword_27FEAF728;
  if (!qword_27FEAF728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF728);
  }

  return result;
}

void *sub_26144F174(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF610, &qword_261466E10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF730, &qword_261467C00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v27 - v16;
  sub_26144F420(a2, &v27 - v16, &qword_27FEAF730, &qword_261467C00);
  v18 = sub_261464850();
  v19 = *(v18 - 8);
  v20 = 0;
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    v20 = sub_261464830();
    (*(v19 + 8))(v17, v18);
  }

  [v4 setTimeZone_];

  sub_26144F420(a3, v12, &qword_27FEAF610, &qword_261466E10);
  v21 = sub_261464810();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v12, 1, v21) != 1)
  {
    v23 = sub_2614647F0();
    (*(v22 + 8))(v12, v21);
  }

  [v4 setLocale_];

  v24 = sub_261464920();
  if (a1)
  {
    v25 = &selRef_setLocalizedDateFormatFromTemplate_;
  }

  else
  {
    v25 = &selRef_setDateFormat_;
  }

  [v4 *v25];

  return v4;
}

uint64_t sub_26144F420(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double sub_26144F488@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2614500E4(a1, v11);
  if (!v2)
  {
    v5 = v11[11];
    *(a2 + 160) = v11[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v11[12];
    *(a2 + 208) = v12;
    v6 = v11[7];
    *(a2 + 96) = v11[6];
    *(a2 + 112) = v6;
    v7 = v11[9];
    *(a2 + 128) = v11[8];
    *(a2 + 144) = v7;
    v8 = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = v8;
    v9 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v9;
    result = *v11;
    v10 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v10;
  }

  return result;
}

uint64_t sub_26144F514(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  v15[10] = *(a1 + 160);
  v15[11] = v2;
  v15[12] = *(a1 + 192);
  v16 = *(a1 + 208);
  v3 = *(a1 + 112);
  v15[6] = *(a1 + 96);
  v15[7] = v3;
  v4 = *(a1 + 144);
  v15[8] = *(a1 + 128);
  v15[9] = v4;
  v5 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v5;
  v6 = *(a1 + 80);
  v15[4] = *(a1 + 64);
  v15[5] = v6;
  v7 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v7;
  v8 = *(a2 + 176);
  v17[10] = *(a2 + 160);
  v17[11] = v8;
  v17[12] = *(a2 + 192);
  v18 = *(a2 + 208);
  v9 = *(a2 + 112);
  v17[6] = *(a2 + 96);
  v17[7] = v9;
  v10 = *(a2 + 144);
  v17[8] = *(a2 + 128);
  v17[9] = v10;
  v11 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v11;
  v12 = *(a2 + 80);
  v17[4] = *(a2 + 64);
  v17[5] = v12;
  v13 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v13;
  return sub_26144FAE0(v15, v17) & 1;
}

uint64_t sub_26144F5D4()
{
  v1 = *v0;
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_26144F69C()
{
  *v0;
  *v0;
  *v0;
  sub_2614649E0();
}

uint64_t sub_26144F750()
{
  v1 = *v0;
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_26144F814@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_261450838();
  *a2 = result;
  return result;
}

void sub_26144F844(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000065;
  v3 = 0x6D69547472617473;
  v4 = 0x6169726574697263;
  if (*v1 != 2)
  {
    v4 = 0x736567617373656DLL;
  }

  if (*v1)
  {
    v3 = 0x656D6954646E65;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_26144F8C8()
{
  v1 = 0x6D69547472617473;
  v2 = 0x6169726574697263;
  if (*v0 != 2)
  {
    v2 = 0x736567617373656DLL;
  }

  if (*v0)
  {
    v1 = 0x656D6954646E65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26144F948@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261450838();
  *a1 = result;
  return result;
}

uint64_t sub_26144F970(uint64_t a1)
{
  v2 = sub_2614504F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26144F9AC(uint64_t a1)
{
  v2 = sub_2614504F8();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL sub_26144F9E8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_261464CE0();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_26144FAE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      goto LABEL_18;
    }
  }

  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v4 = 1;
    }

    if (v4)
    {
      goto LABEL_18;
    }
  }

  v5 = *(a1 + 144);
  v6 = *(a1 + 176);
  v105 = *(a1 + 160);
  v106 = v6;
  v7 = *(a1 + 176);
  v107 = *(a1 + 192);
  v8 = *(a1 + 80);
  v9 = *(a1 + 112);
  v101 = *(a1 + 96);
  v102 = v9;
  v10 = *(a1 + 112);
  v11 = *(a1 + 128);
  v12 = v11;
  v104 = *(a1 + 144);
  v103 = v11;
  v13 = *(a1 + 48);
  v100[0] = *(a1 + 32);
  v100[1] = v13;
  v14 = *(a1 + 64);
  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  v17 = v14;
  v100[3] = *(a1 + 80);
  v100[2] = v14;
  v18 = *(a2 + 144);
  v19 = *(a2 + 176);
  v97 = *(a2 + 160);
  v98 = v19;
  v20 = *(a2 + 176);
  v99 = *(a2 + 192);
  v21 = *(a2 + 80);
  v22 = *(a2 + 112);
  v93 = *(a2 + 96);
  v94 = v22;
  v24 = *(a2 + 112);
  v23 = *(a2 + 128);
  v25 = v23;
  v96 = *(a2 + 144);
  v95 = v23;
  v26 = *(a2 + 48);
  v92[0] = *(a2 + 32);
  v92[1] = v26;
  v27 = *(a2 + 64);
  v29 = *(a2 + 32);
  v28 = *(a2 + 48);
  v30 = v27;
  v92[3] = *(a2 + 80);
  v92[2] = v27;
  v31 = *(a1 + 144);
  v32 = *(a1 + 176);
  __src[8] = *(a1 + 160);
  __src[9] = v32;
  v33 = *(a1 + 80);
  v34 = *(a1 + 112);
  __src[4] = *(a1 + 96);
  __src[5] = v34;
  __src[6] = *(a1 + 128);
  __src[7] = v31;
  v35 = *(a1 + 48);
  __src[0] = *(a1 + 32);
  __src[1] = v35;
  __src[2] = *(a1 + 64);
  __src[3] = v33;
  __src[18] = v18;
  __src[19] = v97;
  v36 = *(a2 + 192);
  __src[20] = v20;
  __src[21] = v36;
  __src[14] = v21;
  __src[15] = v93;
  __src[16] = v24;
  __src[17] = v25;
  __src[10] = *(a1 + 192);
  __src[11] = v29;
  __src[12] = v28;
  __src[13] = v30;
  v91[8] = v105;
  v91[9] = v7;
  v91[10] = *(a1 + 192);
  v91[4] = v101;
  v91[5] = v10;
  v91[7] = v5;
  v91[6] = v12;
  v91[0] = v15;
  v91[1] = v16;
  v91[3] = v8;
  v91[2] = v17;
  if (sub_26144FF1C(v91) == 1)
  {
    v38 = *(a2 + 176);
    __dst[8] = *(a2 + 160);
    __dst[9] = v38;
    __dst[10] = *(a2 + 192);
    v39 = *(a2 + 112);
    __dst[4] = *(a2 + 96);
    __dst[5] = v39;
    v40 = *(a2 + 144);
    __dst[6] = *(a2 + 128);
    __dst[7] = v40;
    v41 = *(a2 + 48);
    __dst[0] = *(a2 + 32);
    __dst[1] = v41;
    v42 = *(a2 + 80);
    __dst[2] = *(a2 + 64);
    __dst[3] = v42;
    if (sub_26144FF1C(__dst) == 1)
    {
      v43 = *(a1 + 176);
      v116 = *(a1 + 160);
      v117 = v43;
      v118 = *(a1 + 192);
      v44 = *(a1 + 112);
      v112 = *(a1 + 96);
      v113 = v44;
      v45 = *(a1 + 144);
      v114 = *(a1 + 128);
      v115 = v45;
      v46 = *(a1 + 48);
      v108 = *(a1 + 32);
      v109 = v46;
      v47 = *(a1 + 80);
      v110 = *(a1 + 64);
      v111 = v47;
      sub_26144FF40(v100, v88);
      sub_26144FF40(v92, v88);
      sub_26144D9E4(&v108, &qword_27FEAF738, &unk_261466E30);
LABEL_21:
      v53 = sub_26145291C(*(a1 + 208), *(a2 + 208));
      return v53 & 1;
    }

    goto LABEL_17;
  }

  v48 = *(a2 + 176);
  v88[8] = *(a2 + 160);
  v88[9] = v48;
  v88[10] = *(a2 + 192);
  v49 = *(a2 + 112);
  v88[4] = *(a2 + 96);
  v88[5] = v49;
  v50 = *(a2 + 144);
  v88[6] = *(a2 + 128);
  v88[7] = v50;
  v51 = *(a2 + 48);
  v88[0] = *(a2 + 32);
  v88[1] = v51;
  v52 = *(a2 + 80);
  v88[2] = *(a2 + 64);
  v88[3] = v52;
  if (sub_26144FF1C(v88) == 1)
  {
LABEL_17:
    memcpy(__dst, __src, sizeof(__dst));
    sub_26144FF40(v100, &v108);
    sub_26144FF40(v92, &v108);
    sub_26144D9E4(__dst, &qword_27FEAF740, &qword_261466A30);
    goto LABEL_18;
  }

  v55 = *(a2 + 144);
  v56 = *(a2 + 176);
  v84 = *(a2 + 160);
  v85 = v56;
  v57 = *(a2 + 176);
  v86 = *(a2 + 192);
  v58 = *(a2 + 80);
  v59 = *(a2 + 112);
  v80 = *(a2 + 96);
  v81 = v59;
  v60 = *(a2 + 112);
  v61 = *(a2 + 144);
  v82 = *(a2 + 128);
  v83 = v61;
  v62 = *(a2 + 48);
  v77[0] = *(a2 + 32);
  v77[1] = v62;
  v63 = *(a2 + 80);
  v65 = *(a2 + 32);
  v64 = *(a2 + 48);
  v78 = *(a2 + 64);
  v79 = v63;
  __dst[8] = v84;
  __dst[9] = v57;
  __dst[10] = *(a2 + 192);
  __dst[4] = v80;
  __dst[5] = v60;
  __dst[6] = v82;
  __dst[7] = v55;
  __dst[0] = v65;
  __dst[1] = v64;
  __dst[2] = v78;
  __dst[3] = v58;
  v66 = *(a1 + 176);
  v116 = *(a1 + 160);
  v117 = v66;
  v118 = *(a1 + 192);
  v67 = *(a1 + 112);
  v112 = *(a1 + 96);
  v113 = v67;
  v68 = *(a1 + 144);
  v114 = *(a1 + 128);
  v115 = v68;
  v69 = *(a1 + 48);
  v108 = *(a1 + 32);
  v109 = v69;
  v70 = *(a1 + 80);
  v110 = *(a1 + 64);
  v111 = v70;
  sub_26144FF40(v100, v87);
  sub_26144FF40(v92, v87);
  v71 = sub_26144D288(&v108, __dst);
  sub_26144D9E4(v77, &qword_27FEAF738, &unk_261466E30);
  v72 = *(a1 + 176);
  v87[8] = *(a1 + 160);
  v87[9] = v72;
  v87[10] = *(a1 + 192);
  v73 = *(a1 + 112);
  v87[4] = *(a1 + 96);
  v87[5] = v73;
  v74 = *(a1 + 144);
  v87[6] = *(a1 + 128);
  v87[7] = v74;
  v75 = *(a1 + 48);
  v87[0] = *(a1 + 32);
  v87[1] = v75;
  v76 = *(a1 + 80);
  v87[2] = *(a1 + 64);
  v87[3] = v76;
  sub_26144D9E4(v87, &qword_27FEAF738, &unk_261466E30);
  if (v71)
  {
    goto LABEL_21;
  }

LABEL_18:
  v53 = 0;
  return v53 & 1;
}

uint64_t sub_26144FF1C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26144FF40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF738, &unk_261466E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_10QOSToolkit13MusicCriteriaVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_261450018(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 208);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_261450060(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
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
      *(result + 216) = 1;
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
      *(result + 208) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2614500E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF748, &qword_261466C08);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v32 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2614504F8();
  sub_261464E40();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v73;
  v35 = v5;
  LOBYTE(v59) = 0;
  v13 = v9;
  v14 = sub_261464D70();
  v33 = a1;
  *&v59 = 0;
  v16 = sub_26144F9E8(v14, v15);

  v17 = v59;
  if (!v16)
  {
    v17 = 0;
  }

  v34 = v17;
  v18 = v12;
  v72 = !v16;
  LOBYTE(v59) = 1;
  v19 = sub_261464D70();
  *&v59 = 0;
  v21 = sub_26144F9E8(v19, v20);

  if (v21)
  {
    v22 = v59;
  }

  else
  {
    v22 = 0;
  }

  v71 = !v21;
  v47 = 2;
  sub_26145054C();
  sub_261464D80();
  v44 = v56;
  v45 = v57;
  v46 = v58;
  v40 = v52;
  v41 = v53;
  v42 = v54;
  v43 = v55;
  v36 = v48;
  v37 = v49;
  v38 = v50;
  v39 = v51;
  nullsub_1(&v36);
  v67 = v44;
  v68 = v45;
  v69 = v46;
  v63 = v40;
  v64 = v41;
  v65 = v42;
  v66 = v43;
  v59 = v36;
  v60 = v37;
  v61 = v38;
  v62 = v39;
  *&v70[119] = v43;
  *&v70[135] = v44;
  *&v70[151] = v45;
  *&v70[167] = v46;
  *&v70[55] = v39;
  *&v70[71] = v40;
  *&v70[87] = v41;
  *&v70[103] = v42;
  *&v70[7] = v36;
  *&v70[23] = v37;
  *&v70[39] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF760, &qword_261466C10);
  LOBYTE(v36) = 3;
  sub_2614505C8();
  sub_261464D80();
  v23 = v48;
  (*(v35 + 8))(v13, v4);
  v24 = v72;
  v25 = v71;
  result = __swift_destroy_boxed_opaque_existential_1(v33);
  v26 = *&v70[144];
  *(v18 + 153) = *&v70[128];
  *(v18 + 169) = v26;
  *(v18 + 185) = *&v70[160];
  v27 = *&v70[80];
  *(v18 + 89) = *&v70[64];
  *(v18 + 105) = v27;
  v28 = *&v70[112];
  *(v18 + 121) = *&v70[96];
  *(v18 + 137) = v28;
  v29 = *&v70[16];
  *(v18 + 25) = *v70;
  *(v18 + 41) = v29;
  v30 = *&v70[48];
  *(v18 + 57) = *&v70[32];
  *v18 = v34;
  *(v18 + 8) = v24;
  *(v18 + 16) = v22;
  *(v18 + 24) = v25;
  v31 = *&v70[175];
  *(v18 + 73) = v30;
  *(v18 + 200) = v31;
  *(v18 + 208) = v23;
  return result;
}

unint64_t sub_2614504F8()
{
  result = qword_27FEAF750;
  if (!qword_27FEAF750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF750);
  }

  return result;
}

unint64_t sub_26145054C()
{
  result = qword_27FEAF758;
  if (!qword_27FEAF758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF758);
  }

  return result;
}

double sub_2614505A0(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_261465C00;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  return result;
}

unint64_t sub_2614505C8()
{
  result = qword_27FEAF768;
  if (!qword_27FEAF768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEAF760, &qword_261466C10);
    sub_26145064C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF768);
  }

  return result;
}

unint64_t sub_26145064C()
{
  result = qword_27FEAF770;
  if (!qword_27FEAF770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF770);
  }

  return result;
}

_BYTE *sub_2614506A0@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_261450734()
{
  result = qword_27FEAF778;
  if (!qword_27FEAF778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF778);
  }

  return result;
}