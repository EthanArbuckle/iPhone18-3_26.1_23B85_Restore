uint64_t sub_22FB8CAC4(int a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v5 = sub_22FCC8A84();
  v7 = v6;
  v4[4] = v6;
  v8 = sub_22FCC8A84();
  v10 = v9;
  v4[5] = v9;

  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_22FB8CBC0;

  return sub_22FB8BB88(v5, v7, v8, v10);
}

uint64_t sub_22FB8CBC0()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;

  if (v2)
  {
    v5 = sub_22FCC6504();

    v6 = v5;
    v7 = 0;
  }

  else
  {
    v8 = sub_22FCC8C24();

    v7 = v8;
    v6 = 0;
    v5 = v8;
  }

  v9 = *(v3 + 24);
  (v9)[2](v9, v7, v6);

  _Block_release(v9);
  v10 = *(v4 + 8);

  return v10();
}

uint64_t sub_22FB8CD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v5[17] = *v4;
  v6 = sub_22FCC85D4();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v7 = sub_22FCC8604();
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();
  v8 = sub_22FCC8684();
  v5[25] = v8;
  v5[26] = *(v8 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB8CF4C, 0, 0);
}

uint64_t sub_22FB8CF4C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 136);
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "PublicEvents - requestPublicEventDataForAsset", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v8 = *(v2 + 224);
  v9 = *(v2 + 200);
  v10 = *(v2 + 208);
  v11 = *(v2 + 136);

  (*(v10 + 8))(v8, v9);
  sub_22FA2CEC4(v11, v4);
  sub_22FCC85E4();
  sub_22FCC85C4();
  v12 = sub_22FCC85F4();
  v13 = sub_22FCC90A4();
  if (sub_22FCC91A4())
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v12, v13, v15, "MomentGraphService.requestPublicEventDataForAsset", "", v14, 2u);
    MEMORY[0x23190A000](v14, -1, -1);
  }

  v16 = *(v2 + 160);
  v17 = *(v2 + 168);
  v18 = *(v2 + 144);
  v19 = *(v2 + 152);
  v21 = *(v2 + 128);
  v20 = *(v2 + 136);
  v23 = *(v2 + 112);
  v22 = *(v2 + 120);
  v34 = *(v2 + 96);
  v35 = *(v2 + 104);

  (*(v19 + 16))(v16, v17, v18);
  sub_22FCC8644();
  swift_allocObject();
  *(v2 + 232) = sub_22FCC8634();
  (*(v19 + 8))(v17, v18);
  v24 = v21[16];
  v25 = *(v24 + 112);
  *(v2 + 240) = v25;
  v36 = v21[14];
  v37 = v21[15];

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v23, v22);
  *(v2 + 40) = type metadata accessor for MomentGraphWorker();
  *(v2 + 48) = sub_22FA2CE7C(&qword_281480230, 255, type metadata accessor for MomentGraphWorker);
  *(v2 + 16) = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = v20;
  v27 = swift_allocObject();
  v27[2] = v25;
  v27[3] = v34;
  v27[4] = v35;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8B90);
  v29 = swift_allocObject();
  *(v2 + 248) = v29;
  *(v29 + 48) = 0;
  *(v29 + 56) = 0;
  *(v29 + 16) = 0xD00000000000001BLL;
  *(v29 + 24) = 0x800000022FCE6740;
  *(v29 + 32) = v36;
  *(v29 + 40) = v37;
  *(v29 + 64) = 0;
  *(v29 + 72) = 0;
  *(v29 + 80) = 0;
  *(v29 + 88) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 120) = 0;
  sub_22FA2CF78((v2 + 16), v29 + 144);
  *(v29 + 128) = &unk_22FCDA3C8;
  *(v29 + 136) = v27;
  *(v29 + 184) = sub_22FBA68F8;
  *(v29 + 192) = v26;
  *(v2 + 80) = v28;
  *(v2 + 88) = sub_22FA2CF90(&qword_281481698, &qword_27DAD8B90);
  *(v2 + 56) = v29;

  v30 = swift_task_alloc();
  *(v2 + 256) = v30;
  *v30 = v2;
  v30[1] = sub_22FB8D430;
  v31 = *(v2 + 112);
  v32 = *(v2 + 120);

  return sub_22FB7EA0C(v2 + 56, 0xD00000000000001ELL, 0x800000022FCE6760, v31, v32);
}

uint64_t sub_22FB8D430(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = sub_22FB8D668;
  }

  else
  {
    *(v4 + 272) = a1;
    __swift_destroy_boxed_opaque_existential_0(v4 + 56);
    v5 = sub_22FB8D560;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FB8D560()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];

  sub_22FB8D774(v1, "MomentGraphService.requestPublicEventDataForAsset", 49, 2);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];
  v5 = v0[34];

  return v4(v5);
}

uint64_t sub_22FB8D668()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];

  __swift_destroy_boxed_opaque_existential_0((v0 + 7));
  sub_22FB8D774(v1, "MomentGraphService.requestPublicEventDataForAsset", 49, 2);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FB8D774(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v21 = a2;
  v5 = sub_22FCC8614();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22FCC85D4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_22FCC85F4();
  sub_22FCC8624();
  v20 = sub_22FCC9094();
  result = sub_22FCC91A4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 8))(v12, v9);
  }

  if ((a4 & 1) == 0)
  {
    v15 = v21;
    if (v21)
    {
LABEL_9:

      sub_22FCC8654();

      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_22FCC85B4();
      _os_signpost_emit_with_name_impl(&dword_22FA28000, v13, v20, v18, v15, v16, v17, 2u);
      MEMORY[0x23190A000](v17, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v21 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v21 & 0xFFFFF800) != 0xD800)
  {
    if (v21 >> 16 <= 0x10)
    {
      v15 = &v22;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_22FB8DA10(char a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    v9 = sub_22FA2CE7C(&qword_28147FF30, v6, type metadata accessor for MomentGraphService);
    sub_22FA2CEC4(a2, v9);
    v10 = sub_22FCC8664();
    v11 = sub_22FCC8F24();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22FA28000, v10, v11, "MomentsGraphService.requestPublicEventDataForAsset is stuck", v12, 2u);
      MEMORY[0x23190A000](v12, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_22FB8DBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a1;
  v8[3] = a6;
  v9 = sub_22FCC6AD4();
  v8[6] = v9;
  v8[7] = *(v9 - 8);
  v8[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB8DCA8, 0, 0);
}

uint64_t sub_22FB8DCA8()
{
  v1 = *(*(v0 + 24) + 112);
  if ([v1 isReady])
  {
    v3 = *(v0 + 56);
    v2 = *(v0 + 64);
    v4 = *(v0 + 48);
    v5 = v1;
    sub_22FCC6AC4();
    v6 = sub_22FCC6AA4();
    (*(v3 + 8))(v2, v4);
    **(v0 + 16) = v6;
  }

  else
  {
    sub_22FBA4C28();
    swift_allocError();
    *v7 = xmmword_22FCD3450;
    swift_willThrow();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22FB8DF64(int a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v5 = sub_22FCC8A84();
  v7 = v6;
  v4[4] = v6;
  v8 = sub_22FCC8A84();
  v10 = v9;
  v4[5] = v9;

  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_22FBAC098;

  return sub_22FB8CD8C(v5, v7, v8, v10);
}

uint64_t sub_22FB8E060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v4[26] = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  v4[27] = swift_task_alloc();
  v5 = sub_22FCC8684();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB8E184, 0, 0);
}

uint64_t sub_22FB8E184(uint64_t a1, uint64_t a2)
{
  v36 = v2;
  v3 = v2[26];
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "PublicEvents - performPublicEventCachingTask", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = v2[29];
  v8 = v2[30];
  v10 = v2[28];
  v11 = v2[22];

  (*(v9 + 8))(v8, v10);
  v12 = sub_22FCC8A84();
  if (*(v11 + 16))
  {
    v14 = sub_22FA2DB54(v12, v13);
    v16 = v15;

    if (v16)
    {
      sub_22FA2F7D8(*(v2[22] + 56) + 32 * v14, (v2 + 12));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478);
      if (swift_dynamicCast())
      {
        v17 = v2[21];
        goto LABEL_9;
      }
    }
  }

  else
  {
  }

  v17 = [objc_opt_self() noFetchLimit];
LABEL_9:
  v18 = [objc_allocWithZone(MEMORY[0x277D27778]) init];
  v2[31] = v18;
  [v18 setFetchLimit_];
  v19 = sub_22FCC8A84();
  if (*(v11 + 16))
  {
    v21 = sub_22FA2DB54(v19, v20);
    v23 = v22;

    if (v23)
    {
      sub_22FA2F7D8(*(v2[22] + 56) + 32 * v21, (v2 + 16));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478);
      if (swift_dynamicCast())
      {
        v24 = v2[20];
        goto LABEL_15;
      }
    }
  }

  else
  {
  }

  v24 = 4;
LABEL_15:
  v25 = v2[25];
  [v18 setJobContext_];
  v26 = *(v25 + 128);
  v27 = type metadata accessor for PublicEventCachingTask();
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  v28 = objc_allocWithZone(v27);
  v29 = v18;

  v30 = sub_22FA80F7C(v18, v26, v34);
  v2[32] = v30;

  v31 = *(v25 + 168);
  v2[33] = v31;
  v2[5] = v27;
  v2[6] = sub_22FA2CE7C(&unk_28147F5B0, 255, type metadata accessor for PublicEventCachingTask);
  v2[2] = v30;
  v32 = v30;

  return MEMORY[0x2822009F8](sub_22FB8E508, v31, 0);
}

uint64_t sub_22FB8E508()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 216);
  v4 = sub_22FCC8D14();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_22FA2D328(v0 + 16, v0 + 56);
  v5 = sub_22FA2CE7C(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  sub_22FA2CF78((v0 + 56), (v6 + 5));
  swift_retain_n();
  v7 = sub_22FB22A48(0, 0, v3, &unk_22FCDA3B0, v6);
  *(v0 + 272) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8);
  v8 = swift_allocObject();
  *(v0 + 280) = v8;
  *(v8 + 16) = xmmword_22FCD1800;
  v9 = *(v2 + OBJC_IVAR___PHAPublicEventCachingTask_identifier + 8);
  *(v8 + 32) = *(v2 + OBJC_IVAR___PHAPublicEventCachingTask_identifier);
  *(v8 + 40) = v9;

  v10 = swift_task_alloc();
  *(v0 + 288) = v10;
  *v10 = v0;
  v10[1] = sub_22FB8E724;
  v11 = *(v0 + 184);
  v12 = *(v0 + 192);

  return sub_22FBE5228(v10, 0xD000000000000015, 0x800000022FCE66E0, v7, v8, v11, v12);
}

uint64_t sub_22FB8E724()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 264);
  if (v0)
  {
    v4 = sub_22FB8E954;
  }

  else
  {
    v4 = sub_22FB8E850;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FB8E850()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x2822009F8](sub_22FB8E8CC, 0, 0);
}

uint64_t sub_22FB8E8CC()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22FB8E954()
{

  return MEMORY[0x2822009F8](sub_22FB8E9C8, 0, 0);
}

uint64_t sub_22FB8E9C8()
{
  v1 = *(v0 + 256);

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22FB8EBEC(int a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478);
  v5 = sub_22FCC89D4();
  v4[4] = v5;
  v6 = sub_22FCC8A84();
  v8 = v7;
  v4[5] = v7;

  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_22FBAC0A8;

  return sub_22FB8E060(v5, v6, v8);
}

uint64_t sub_22FB8ED08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[25] = a7;
  v8[26] = v7;
  v8[23] = a5;
  v8[24] = a6;
  v8[21] = a3;
  v8[22] = a4;
  v8[19] = a1;
  v8[20] = a2;
  v8[27] = *v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  v8[28] = swift_task_alloc();
  v9 = sub_22FCC8684();
  v8[29] = v9;
  v8[30] = *(v9 - 8);
  v8[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB8EE34, 0, 0);
}

uint64_t sub_22FB8EE34(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 216);
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "Stories - requestExtendedTokenCollection", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v8 = *(v2 + 240);
  v9 = *(v2 + 248);
  v10 = *(v2 + 232);
  v11 = *(v2 + 208);
  v12 = *(v2 + 216);
  v14 = *(v2 + 192);
  v13 = *(v2 + 200);
  v27 = *(v2 + 184);
  v28 = *(v2 + 176);
  v15 = *(v2 + 160);
  v24 = v15;
  v25 = *(v2 + 168);
  v26 = *(v2 + 152);

  (*(v8 + 8))(v9, v10);
  v16 = *(v11[16] + 112);
  v17 = v11[16];
  *(v2 + 256) = v16;
  v29 = v11;
  v30 = v11[14];
  v31 = v11[15];

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v14, v13);
  *(v2 + 40) = type metadata accessor for MomentGraphWorker();
  *(v2 + 48) = sub_22FA2CE7C(&qword_281480230, 255, type metadata accessor for MomentGraphWorker);
  *(v2 + 16) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  v19 = swift_allocObject();
  v19[2] = v16;
  v19[3] = v25;
  v19[4] = v27;
  v19[5] = v26;
  v19[6] = v15;
  v19[7] = v28;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8B28);
  v21 = swift_allocObject();
  *(v2 + 264) = v21;
  *(v21 + 48) = 0;
  *(v21 + 56) = 0;
  *(v21 + 16) = 0xD000000000000019;
  *(v21 + 24) = 0x800000022FCE6670;
  *(v21 + 32) = v30;
  *(v21 + 40) = v31;
  *(v21 + 64) = 0;
  *(v21 + 72) = 0;
  *(v21 + 80) = 0;
  *(v21 + 88) = 0u;
  *(v21 + 104) = 0u;
  *(v21 + 120) = 0;
  sub_22FA2CF78((v2 + 16), v21 + 144);
  *(v21 + 128) = &unk_22FCDA3A0;
  *(v21 + 136) = v19;
  *(v21 + 184) = sub_22FBA67C4;
  *(v21 + 192) = v18;
  v22 = v29[21];
  *(v2 + 272) = v22;
  *(v2 + 80) = v20;
  *(v2 + 88) = sub_22FA2CF90(qword_2814816B8, &qword_27DAD8B28);
  *(v2 + 56) = v21;

  sub_22FA7E820(v26, v24);

  return MEMORY[0x2822009F8](sub_22FB8F1CC, v22, 0);
}

uint64_t sub_22FB8F1CC()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 224);
  v4 = sub_22FCC8D14();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_22FA2D328(v0 + 56, v0 + 96);
  v5 = sub_22FA2CE7C(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  sub_22FA2CF78((v0 + 96), (v6 + 5));
  swift_retain_n();
  v7 = sub_22FB235E4(0, 0, v3, &unk_22FCDA3A8, v6);
  *(v0 + 280) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8);
  v8 = swift_allocObject();
  *(v0 + 288) = v8;
  *(v8 + 16) = xmmword_22FCD1800;
  v9 = *(v2 + 40);
  *(v8 + 32) = *(v2 + 32);
  *(v8 + 40) = v9;

  v10 = swift_task_alloc();
  *(v0 + 296) = v10;
  *v10 = v0;
  v10[1] = sub_22FB8F3E0;
  v11 = *(v0 + 192);
  v12 = *(v0 + 200);

  return sub_22FBE73B0(v0 + 136, 0xD00000000000001ELL, 0x800000022FCE6690, v7, v8, v11, v12);
}

uint64_t sub_22FB8F3E0()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 272);
  if (v0)
  {
    v4 = sub_22FB8F620;
  }

  else
  {
    v4 = sub_22FB8F50C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FB8F50C()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  return MEMORY[0x2822009F8](sub_22FB8F588, 0, 0);
}

uint64_t sub_22FB8F588()
{

  v1 = v0[17];
  v2 = v0[18];

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_22FB8F620()
{

  return MEMORY[0x2822009F8](sub_22FB8F694, 0, 0);
}

uint64_t sub_22FB8F694()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB8F728(char a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    v9 = sub_22FA2CE7C(&qword_28147FF30, v6, type metadata accessor for MomentGraphService);
    sub_22FA2CEC4(a2, v9);
    v10 = sub_22FCC8664();
    v11 = sub_22FCC8F24();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22FA28000, v10, v11, "GenerateExtendedTokenCollection is stuck", v12, 2u);
      MEMORY[0x23190A000](v12, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_22FB8F8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v13;
  *(v8 + 112) = v12;
  *(v8 + 96) = a7;
  *(v8 + 104) = a8;
  *(v8 + 80) = a5;
  *(v8 + 88) = a6;
  *(v8 + 64) = a1;
  *(v8 + 72) = a4;
  v9 = sub_22FCC7E14();
  *(v8 + 136) = v9;
  *(v8 + 144) = *(v9 - 8);
  *(v8 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB8F9D8, 0, 0);
}

uint64_t sub_22FB8F9D8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v0[6] = sub_22FBAC124;
  v0[7] = v4;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FA51A14;
  v0[5] = &block_descriptor_285;
  v5 = _Block_copy(v0 + 2);
  v6 = objc_opt_self();

  v7 = [v6 progressReporterWithProgressBlock_];
  v0[20] = v7;
  _Block_release(v5);

  v8 = *(v2 + 112);
  v0[21] = v8;
  if ([v8 isReady])
  {
    v9 = v0[13];
    v10 = [v8 photoLibrary];
    v0[22] = v10;
    sub_22FCC7884();
    swift_allocObject();
    v0[23] = sub_22FCC7874();
    sub_22FCC7864();
    v11 = sub_22FCC7D24();
    v0[24] = v11;
    if (v9 < 0)
    {
      __break(1u);
    }

    else if (!(v0[13] >> 16))
    {
      v14 = v11;
      v15 = v0[19];
      v17 = v0[15];
      v16 = v0[16];
      v18 = v0[14];
      v24 = v0[11];
      v19 = v10;

      sub_22FCC7DE4();
      v20 = swift_task_alloc();
      v0[25] = v20;
      v20[2] = v18;
      v20[3] = v17;
      v20[4] = v15;
      v20[5] = v16;
      v20[6] = v14;
      v20[7] = v7;
      v11 = sub_22FB8FCA4;
      v12 = v24;
      v13 = 0;

      return MEMORY[0x2822009F8](v11, v12, v13);
    }

    __break(1u);
    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  sub_22FCC9004();
  sub_22FBA4C28();
  swift_allocError();
  *v21 = xmmword_22FCD3450;
  swift_willThrow();

  v22 = v0[1];

  return v22();
}

uint64_t sub_22FB8FCA4()
{
  v1 = [*(v0 + 168) workingContext];
  sub_22FCC9114();
  *(v0 + 208) = 0;

  return MEMORY[0x2822009F8](sub_22FB8FDA8, 0, 0);
}

uint64_t sub_22FB8FDA8()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[18];

  (*(v5 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_22FB8FE4C()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[18];

  (*(v5 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_22FB8FEF0@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v25 = a4;
  v26 = a5;
  v22 = a2;
  v23 = a3;
  v24 = a1;
  v20 = a6;
  v7 = sub_22FCC7B24();
  v21 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v27 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22FCC7E14();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FCC64B4();
  swift_allocObject();
  sub_22FCC64A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8B38);
  sub_22FBA6180();
  sub_22FCC6494();
  if (v6)
  {
  }

  (*(v10 + 16))(v12, v22, v9);
  sub_22FCC7594();
  swift_allocObject();

  sub_22FCC7584();
  sub_22FCC6C24();
  swift_allocObject();
  v14 = v24;
  sub_22FCC6C14();
  v15 = v27;
  sub_22FCC6C04();

  sub_22FCC64F4();
  swift_allocObject();
  sub_22FCC64E4();
  sub_22FA2CE7C(&qword_28147B028, 255, MEMORY[0x277D3C530]);
  v16 = sub_22FCC64D4();
  v18 = v17;
  (*(v21 + 8))(v15, v7);

  v19 = v20;
  *v20 = v16;
  v19[1] = v18;
  return result;
}

uint64_t sub_22FB90434(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *aBlock, uint64_t a7)
{
  v7[2] = a7;
  v7[3] = _Block_copy(aBlock);
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;

  v16 = sub_22FCC6664();
  v18 = v17;

  v7[4] = v16;
  v7[5] = v18;
  v19 = sub_22FCC89D4();
  v7[6] = v19;

  v20 = sub_22FCC8E84();
  v7[7] = v20;

  v21 = sub_22FCC8A84();
  v23 = v22;

  v7[8] = v23;
  v24 = swift_task_alloc();
  v7[9] = v24;
  *v24 = v7;
  v24[1] = sub_22FB905C8;

  return sub_22FB8ED08(v16, v18, v19, v20, a4, v21, v23);
}

uint64_t sub_22FB905C8(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v6 = *v3;
  v8 = *v3;

  sub_22FA7E6C4(*(v6 + 32), *(v6 + 40));
  if (v4)
  {
    v9 = sub_22FCC6504();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    v9 = sub_22FCC6654();
    sub_22FA7E6C4(a1, a2);
    v11 = v9;
    v10 = 0;
  }

  v12 = *(v7 + 24);
  (v12)[2](v12, v11, v10);

  _Block_release(v12);
  v13 = *(v8 + 8);

  return v13();
}

uint64_t sub_22FB907F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[16] = *v3;
  v5 = sub_22FCC8684();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB908DC, 0, 0);
}

uint64_t sub_22FB908DC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 128);
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "Stories - requestMeanings", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = *(v2 + 144);
  v8 = *(v2 + 152);
  v10 = *(v2 + 128);
  v11 = *(v2 + 136);
  v12 = *(v2 + 112);
  v13 = *(v2 + 120);
  v15 = *(v2 + 96);
  v14 = *(v2 + 104);

  (*(v9 + 8))(v8, v11);
  v16 = v13[16];
  v17 = *(v16 + 112);
  *(v2 + 160) = v17;
  v27 = v13[14];
  v28 = v13[15];

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v14, v12);
  *(v2 + 40) = type metadata accessor for MomentGraphWorker();
  *(v2 + 48) = sub_22FA2CE7C(&qword_281480230, 255, type metadata accessor for MomentGraphWorker);
  *(v2 + 16) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v10;
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v15;
  v19[4] = v10;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8B58);
  v21 = swift_allocObject();
  *(v2 + 168) = v21;
  *(v21 + 48) = 0;
  *(v21 + 56) = 0;
  *(v21 + 16) = 0xD000000000000022;
  *(v21 + 24) = 0x800000022FCE65C0;
  *(v21 + 32) = v27;
  *(v21 + 40) = v28;
  *(v21 + 64) = 0;
  *(v21 + 72) = 0;
  *(v21 + 80) = 0;
  *(v21 + 88) = 0u;
  *(v21 + 104) = 0u;
  *(v21 + 120) = 0;
  sub_22FA2CF78((v2 + 16), v21 + 144);
  *(v21 + 128) = &unk_22FCDA358;
  *(v21 + 136) = v19;
  *(v21 + 184) = sub_22FBA6534;
  *(v21 + 192) = v18;
  *(v2 + 80) = v20;
  v22 = sub_22FA2CF90(&qword_27DAD8B60, &qword_27DAD8B58);
  *(v2 + 56) = v21;
  *(v2 + 88) = v22;

  v23 = swift_task_alloc();
  *(v2 + 176) = v23;
  *v23 = v2;
  v23[1] = sub_22FB90C94;
  v24 = *(v2 + 104);
  v25 = *(v2 + 112);

  return sub_22FB7ED54(v2 + 56, 0x4D74736575716572, 0xEF73676E696E6165, v24, v25);
}

uint64_t sub_22FB90C94(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_22FB90E40;
  }

  else
  {
    *(v4 + 192) = a1;
    __swift_destroy_boxed_opaque_existential_0(v4 + 56);
    v5 = sub_22FB90DC4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FB90DC4()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 192);

  return v1(v2);
}

uint64_t sub_22FB90E40()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB90EC0(char a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    v9 = sub_22FA2CE7C(&qword_28147FF30, v6, type metadata accessor for MomentGraphService);
    sub_22FA2CEC4(a2, v9);
    v10 = sub_22FCC8664();
    v11 = sub_22FCC8F24();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22FA28000, v10, v11, "RequestMeaningsFromGraph is stuck", v12, 2u);
      MEMORY[0x23190A000](v12, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_22FB91094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a1;
  v8[9] = a4;
  return MEMORY[0x2822009F8](sub_22FB910BC, 0, 0);
}

uint64_t sub_22FB910BC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v0[6] = sub_22FBAC124;
  v0[7] = v4;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FA51A14;
  v0[5] = &block_descriptor_236;
  v5 = _Block_copy(v0 + 2);
  v6 = objc_opt_self();

  v7 = [v6 progressReporterWithProgressBlock_];
  v0[14] = v7;
  _Block_release(v5);

  v8 = *(v2 + 112);
  v0[15] = v8;
  if ([v8 isReady])
  {
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];
    v12 = swift_task_alloc();
    v0[16] = v12;
    v12[2] = v10;
    v12[3] = v7;
    v12[4] = v9;

    return MEMORY[0x2822009F8](sub_22FB912B4, v11, 0);
  }

  else
  {
    sub_22FCC9004();
    sub_22FBA4C28();
    swift_allocError();
    *v13 = xmmword_22FCD3450;
    swift_willThrow();

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_22FB912B4()
{
  v1 = [*(v0 + 120) workingContext];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8698);
  sub_22FCC9114();
  *(v0 + 136) = 0;

  *(v0 + 144) = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_22FB913B0, 0, 0);
}

uint64_t sub_22FB913B0()
{
  v1 = v0[17];
  sub_22FCC9004();
  v2 = v0[18];
  v3 = v0[14];
  if (v1)
  {
  }

  else
  {
    v5 = v0[8];

    *v5 = v2;
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FB915E8(int a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v5 = sub_22FCC8E84();
  v4[4] = v5;
  v6 = sub_22FCC8A84();
  v8 = v7;
  v4[5] = v7;

  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_22FB916EC;

  return sub_22FB907F0(v5, v6, v8);
}

uint64_t sub_22FB916EC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;

  if (v2)
  {
    v5 = sub_22FCC6504();

    v6 = v5;
    v7 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448);
    v8 = sub_22FCC89C4();

    v7 = v8;
    v6 = 0;
    v5 = v8;
  }

  v9 = *(v3 + 24);
  (v9)[2](v9, v7, v6);

  _Block_release(v9);
  v10 = *(v4 + 8);

  return v10();
}

unint64_t sub_22FB918D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a5;
  *a5 = 0x8000000000000000;
  result = sub_22FB266BC(a2, a3, a1, isUniquelyReferenced_nonNull_native);
  *a5 = v11;
  return result;
}

uint64_t sub_22FB9195C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = sub_22FCC8A84();
  v6(a2, v7, v8, a4);
}

id sub_22FB919D0(void *a1, uint64_t a2, uint64_t *a3)
{
  result = [a1 label];
  if (result)
  {
    v6 = result;
    v7 = sub_22FCC8A84();
    v9 = v8;

    v10 = [a1 identifier];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a3;
    *a3 = 0x8000000000000000;
    result = sub_22FB266BC(v7, v9, v10, isUniquelyReferenced_nonNull_native);
    *a3 = v12;
  }

  return result;
}

unint64_t sub_22FB91A84(void *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = [a1 elementIdentifiers];
  v7 = [v6 firstElement];

  v8 = [a2 holidayNames];
  v9 = sub_22FCC8E84();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a4;
  *a4 = 0x8000000000000000;
  result = sub_22FB267F4(v9, v7, isUniquelyReferenced_nonNull_native);
  *a4 = v12;
  return result;
}

void sub_22FB91B50(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, char **a7, uint64_t a8, void *a9)
{
  v14 = [a1 elementIdentifiers];
  v15 = [v14 firstElement];

  v16 = *a4;
  if (*(v16 + 16))
  {
    v17 = sub_22FA6A350(v15);
    if (v18)
    {
      v19 = (*(v16 + 56) + 16 * v17);
      v20 = v19[1];
      v33 = *v19;
      v35 = MEMORY[0x277D84FA0];
      v21 = *(*a5 + 16);

      if (v21)
      {
        sub_22FA6A350(v15);
        if (v22)
        {

          sub_22FC2E318(v23);
        }
      }

      v24 = [a2 elementIdentifiers];
      v25 = swift_allocObject();
      *(v25 + 16) = a6;
      *(v25 + 24) = &v35;
      v26 = swift_allocObject();
      *(v26 + 16) = sub_22FBA6794;
      *(v26 + 24) = v25;
      aBlock[4] = sub_22FBA679C;
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22FB91FDC;
      aBlock[3] = &block_descriptor_264;
      v27 = _Block_copy(aBlock);

      [v24 enumerateIdentifiersWithBlock_];

      _Block_release(v27);
      LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

      if (v24)
      {
        __break(1u);
      }

      else
      {
        v28 = v35;
        v26 = *(v35 + 16);
        if (!v26)
        {

          goto LABEL_13;
        }

        v29 = sub_22FA86B08(v26, 0);
        v30 = sub_22FA88270(aBlock, v29 + 4, v26, v28);
        swift_bridgeObjectRetain_n();
        sub_22FA37D64();
        if (v30 == v26)
        {
          aBlock[0] = v29;
          v26 = 0;
          sub_22FA31B18(aBlock);

          v31 = aBlock[0];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = *a7;
          *a7 = 0x8000000000000000;
          sub_22FB25798(v31, v33, v20, isUniquelyReferenced_nonNull_native);

          *a7 = aBlock[0];
          if (!__OFADD__(*a9, 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8B70);
            sub_22FCC6B94();
            sub_22FCC8FE4();
            if (!__OFADD__(*a9, 1))
            {
              ++*a9;
LABEL_13:

              return;
            }

LABEL_18:
            __break(1u);

            __break(1u);
            return;
          }

LABEL_17:
          __break(1u);
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_17;
    }
  }
}

unint64_t sub_22FB91EE4(unint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*(*a3 + 16))
  {
    result = sub_22FA6A350(result);
    if (v4)
    {
      v5 = (*(v3 + 56) + 16 * result);
      v7 = *v5;
      v6 = v5[1];
      v9 = v7 == sub_22FCC8A84() && v6 == v8;
      if (v9 || (v10 = sub_22FCC9704(), , , (v10 & 1) != 0))
      {
      }

      else
      {
        sub_22FB04E04(&v11, v7, v6);
      }
    }
  }

  return result;
}

uint64_t sub_22FB9200C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[27] = v13;
  v9[28] = v8;
  v9[25] = a7;
  v9[26] = a8;
  v9[23] = a5;
  v9[24] = a6;
  v9[21] = a3;
  v9[22] = a4;
  v9[19] = a1;
  v9[20] = a2;
  v9[29] = *v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  v9[30] = swift_task_alloc();
  v10 = sub_22FCC8684();
  v9[31] = v10;
  v9[32] = *(v10 - 8);
  v9[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB92144, 0, 0);
}

uint64_t sub_22FB92144(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 232);
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "Stories - requestPersonalTraits", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = *(v2 + 256);
  v8 = *(v2 + 264);
  v10 = *(v2 + 248);
  v11 = *(v2 + 224);
  v13 = *(v2 + 208);
  v12 = *(v2 + 216);
  v30 = *(v2 + 192);
  v31 = *(v2 + 200);
  v14 = *(v2 + 184);
  v33 = *(v2 + 176);
  v34 = *(v2 + 168);
  v27 = *(v2 + 232);
  v28 = *(v2 + 160);
  v29 = *(v2 + 152);

  (*(v9 + 8))(v8, v10);
  v15 = *(v11[16] + 112);
  v16 = v11[16];
  *(v2 + 272) = v15;
  v17 = *(v15 + 112);

  v18 = [v17 photoLibrary];
  *(v2 + 280) = v18;
  v26 = v18;
  v32 = v11;
  v35 = v11[14];
  v36 = v11[15];

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v13, v12);
  *(v2 + 40) = type metadata accessor for MomentGraphWorker();
  *(v2 + 48) = sub_22FA2CE7C(&qword_281480230, 255, type metadata accessor for MomentGraphWorker);
  *(v2 + 16) = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = v27;
  v20 = swift_allocObject();
  v20[2] = v15;
  v20[3] = v14;
  v20[4] = v30;
  v20[5] = v28;
  v20[6] = v31;
  v20[7] = v18;
  v20[8] = v29;
  v20[9] = v34;
  v20[10] = v33;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8B28);
  v22 = swift_allocObject();
  *(v2 + 288) = v22;
  *(v22 + 48) = 0;
  *(v22 + 56) = 0;
  *(v22 + 16) = 0x6C616E6F73726550;
  *(v22 + 24) = 0xEF73746961725420;
  *(v22 + 32) = v35;
  *(v22 + 40) = v36;
  *(v22 + 64) = 0;
  *(v22 + 72) = 0;
  *(v22 + 80) = 0;
  *(v22 + 88) = 0u;
  *(v22 + 104) = 0u;
  *(v22 + 120) = 0;
  sub_22FA2CF78((v2 + 16), v22 + 144);
  *(v22 + 128) = &unk_22FCDA338;
  *(v22 + 136) = v20;
  *(v22 + 184) = sub_22FBA632C;
  *(v22 + 192) = v19;
  v23 = v32[21];
  *(v2 + 296) = v23;
  *(v2 + 80) = v21;
  *(v2 + 88) = sub_22FA2CF90(qword_2814816B8, &qword_27DAD8B28);
  *(v2 + 56) = v22;

  sub_22FA7E820(v14, v30);

  v24 = v26;

  sub_22FA7E820(v34, v33);

  return MEMORY[0x2822009F8](sub_22FB92524, v23, 0);
}

uint64_t sub_22FB92524()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 240);
  v4 = sub_22FCC8D14();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_22FA2D328(v0 + 56, v0 + 96);
  v5 = sub_22FA2CE7C(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  sub_22FA2CF78((v0 + 96), (v6 + 5));
  swift_retain_n();
  v7 = sub_22FB235E4(0, 0, v3, &unk_22FCDA340, v6);
  *(v0 + 304) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8);
  v8 = swift_allocObject();
  *(v0 + 312) = v8;
  *(v8 + 16) = xmmword_22FCD1800;
  v9 = *(v2 + 40);
  *(v8 + 32) = *(v2 + 32);
  *(v8 + 40) = v9;

  v10 = swift_task_alloc();
  *(v0 + 320) = v10;
  *v10 = v0;
  v10[1] = sub_22FB92738;
  v11 = *(v0 + 208);
  v12 = *(v0 + 216);

  return sub_22FBE73B0(v0 + 136, 0xD000000000000015, 0x800000022FCE6580, v7, v8, v11, v12);
}

uint64_t sub_22FB92738()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 296);
  if (v0)
  {
    v4 = sub_22FB92980;
  }

  else
  {
    v4 = sub_22FB92864;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FB92864()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  return MEMORY[0x2822009F8](sub_22FB928E0, 0, 0);
}

uint64_t sub_22FB928E0()
{

  v2 = *(v0 + 136);
  v1 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_22FB92980()
{

  return MEMORY[0x2822009F8](sub_22FB929F4, 0, 0);
}

uint64_t sub_22FB929F4()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB92A90(char a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    v9 = sub_22FA2CE7C(&qword_28147FF30, v6, type metadata accessor for MomentGraphService);
    sub_22FA2CEC4(a2, v9);
    v10 = sub_22FCC8664();
    v11 = sub_22FCC8F24();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22FA28000, v10, v11, "requestPersonalTraits is stuck", v12, 2u);
      MEMORY[0x23190A000](v12, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_22FB92C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v16;
  *(v8 + 120) = v17;
  *(v8 + 80) = v14;
  *(v8 + 96) = v15;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a1;
  *(v8 + 40) = a4;
  v9 = sub_22FCC7D84();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  v10 = sub_22FCC7E14();
  *(v8 + 152) = v10;
  *(v8 + 160) = *(v10 - 8);
  *(v8 + 168) = swift_task_alloc();
  v11 = sub_22FCC82A4();
  *(v8 + 176) = v11;
  *(v8 + 184) = *(v11 - 8);
  *(v8 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB92DF8, 0, 0);
}

uint64_t sub_22FB92DF8()
{
  v1 = *(*(v0 + 56) + 112);
  *(v0 + 200) = v1;
  if ([v1 isReady])
  {
    sub_22FCC64B4();
    swift_allocObject();
    v2 = sub_22FCC64A4();
    *(v0 + 208) = v2;
    sub_22FA2CE7C(&qword_28147B008, 255, MEMORY[0x277D3C6C0]);
    sub_22FCC6494();
    v6 = *(v0 + 88);
    sub_22FCC7884();
    swift_allocObject();
    *(v0 + 216) = sub_22FCC7874();
    v7 = sub_22FCC7864();
    if (v6 < 0)
    {
      __break(1u);
    }

    else if (!(*(v0 + 88) >> 16))
    {
      v10 = *(v0 + 96);

      sub_22FCC7DE4();
      sub_22FCC8254();
      v11 = sub_22FCC7CD4();
      *(v0 + 224) = v11;
      *(v0 + 232) = 0;
      v12 = v11;
      v13 = *(v0 + 192);
      v14 = *(v0 + 168);
      v15 = *(v0 + 56);
      v17 = *(v0 + 40);
      v18 = *(v0 + 112);
      (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
      v16 = swift_task_alloc();
      *(v0 + 240) = v16;
      *(v16 + 16) = v2;
      *(v16 + 24) = v18;
      *(v16 + 40) = v13;
      *(v16 + 48) = v14;
      *(v16 + 56) = v17;
      *(v16 + 72) = v12;
      v7 = sub_22FB9313C;
      v8 = v15;
      v9 = 0;

      return MEMORY[0x2822009F8](v7, v8, v9);
    }

    __break(1u);
    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  sub_22FBA4C28();
  swift_allocError();
  *v3 = xmmword_22FCD3450;
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22FB9313C()
{
  v1 = *(v0 + 232);
  v2 = [*(v0 + 200) workingContext];
  sub_22FCC9114();
  *(v0 + 248) = v1;
  if (v1)
  {

    v3 = sub_22FB9332C;
  }

  else
  {

    v3 = sub_22FB9323C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FB9323C()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 32);

  *v7 = *(v0 + 16);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22FB9332C()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v6 = v0[20];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22FB9340C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v37 = a8;
  v38 = a7;
  v41 = a6;
  v44 = a4;
  v45 = a5;
  v47 = a3;
  v48 = a2;
  v46 = a1;
  v8 = sub_22FCC7E14();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22FCC82A4();
  v40 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22FCC6974();
  v39 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22FCC7B24();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FA2CE7C(&qword_28147B020, 255, MEMORY[0x277D3C530]);
  v21 = v50;
  result = sub_22FCC6494();
  if (!v21)
  {
    v23 = v41;
    v50 = v20;
    v48 = v14;
    (*(v40 + 16))(v13, v44, v11);
    (*(v42 + 16))(v10, v45, v43);
    v24 = v46;
    sub_22FCC6944();
    v25 = swift_allocObject();
    v26 = v38;
    *(v25 + 16) = v23;
    *(v25 + 24) = v26;
    aBlock[4] = sub_22FBAC124;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22FA51A14;
    aBlock[3] = &block_descriptor_212;
    v27 = _Block_copy(aBlock);
    v28 = objc_opt_self();

    v29 = [v28 progressReporterWithProgressBlock_];
    _Block_release(v27);

    v30 = sub_22FCC6964();
    v47 = v16;
    sub_22FCC64F4();
    swift_allocObject();
    sub_22FCC64E4();
    aBlock[0] = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7F90);
    sub_22FBA647C();
    v31 = sub_22FCC64D4();
    v32 = v48;
    v33 = v31;
    v35 = v34;

    (*(v39 + 8))(v47, v32);
    (*(v18 + 8))(v50, v17);

    v36 = v37;
    *v37 = v33;
    v36[1] = v35;
  }

  return result;
}

uint64_t sub_22FB93B3C(int a1, int a2, void *a3, void *a4, uint64_t a5, void *a6, void *aBlock, uint64_t a8, char a9)
{
  v9[2] = a8;
  v9[3] = _Block_copy(aBlock);
  v28 = sub_22FCC8C44();
  v9[4] = v28;
  v13 = sub_22FCC89D4();
  v9[5] = v13;
  v14 = a3;
  v15 = a4;
  v16 = a6;

  v17 = sub_22FCC6664();
  v19 = v18;

  v9[6] = v17;
  v9[7] = v19;
  v20 = sub_22FCC6664();
  v22 = v21;

  v9[8] = v20;
  v9[9] = v22;
  v23 = sub_22FCC8A84();
  v25 = v24;

  v9[10] = v25;
  v26 = swift_task_alloc();
  v9[11] = v26;
  *v26 = v9;
  v26[1] = sub_22FB93CE0;

  return sub_22FB9200C(v28, v13, v17, v19, v20, v22, a5, v23);
}

uint64_t sub_22FB93CE0(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v7 = *v3;
  v9 = *v3;

  v10 = v7[7];
  v11 = v7[6];
  sub_22FA7E6C4(v7[8], v7[9]);
  sub_22FA7E6C4(v11, v10);

  if (v4)
  {
    v12 = sub_22FCC6504();

    v13 = v12;
    v14 = 0;
  }

  else
  {
    v12 = sub_22FCC6654();
    sub_22FA7E6C4(a1, a2);
    v14 = v12;
    v13 = 0;
  }

  v15 = v8[3];
  (v15)[2](v15, v14, v13);

  _Block_release(v15);
  v16 = v9[1];

  return v16();
}

uint64_t sub_22FB93F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[26] = a8;
  v9[27] = v8;
  v9[24] = a6;
  v9[25] = a7;
  v9[22] = a4;
  v9[23] = a5;
  v9[20] = a2;
  v9[21] = a3;
  v9[19] = a1;
  v9[28] = *v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  v9[29] = swift_task_alloc();
  v10 = sub_22FCC8684();
  v9[30] = v10;
  v9[31] = *(v10 - 8);
  v9[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB94068, 0, 0);
}

uint64_t sub_22FB94068(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 224);
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "Stories - requestPersonalEventMoments", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = *(v2 + 248);
  v8 = *(v2 + 256);
  v10 = *(v2 + 240);
  v11 = *(v2 + 216);
  v12 = *(v2 + 200);
  v13 = *(v2 + 208);
  v31 = *(v2 + 184);
  v14 = *(v2 + 176);
  v26 = *(v2 + 224);
  v28 = *(v2 + 168);
  v29 = *(v2 + 192);
  v15 = *(v2 + 152);
  v27 = *(v2 + 160);

  (*(v9 + 8))(v8, v10);
  v16 = v11;
  v30 = v11;
  v17 = *(v11 + 128);
  v18 = *(v17 + 112);
  v19 = v17;
  *(v2 + 264) = v18;
  v32 = *(v16 + 112);
  v33 = *(v16 + 120);

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v12, v13);
  *(v2 + 40) = type metadata accessor for MomentGraphWorker();
  *(v2 + 48) = sub_22FA2CE7C(&qword_281480230, 255, type metadata accessor for MomentGraphWorker);
  *(v2 + 16) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = v26;
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v15;
  v21[4] = v27;
  v21[5] = v29;
  v21[6] = v28;
  v21[7] = v14;
  v21[8] = v31;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8B28);
  v23 = swift_allocObject();
  *(v2 + 272) = v23;
  *(v23 + 48) = 0;
  *(v23 + 56) = 0;
  *(v23 + 16) = 0xD000000000000015;
  *(v23 + 24) = 0x800000022FCE6510;
  *(v23 + 32) = v32;
  *(v23 + 40) = v33;
  *(v23 + 64) = 0;
  *(v23 + 72) = 0;
  *(v23 + 80) = 0;
  *(v23 + 88) = 0u;
  *(v23 + 104) = 0u;
  *(v23 + 120) = 0;
  sub_22FA2CF78((v2 + 16), v23 + 144);
  *(v23 + 128) = &unk_22FCDA310;
  *(v23 + 136) = v21;
  *(v23 + 184) = sub_22FBA6038;
  *(v23 + 192) = v20;
  v24 = *(v30 + 168);
  *(v2 + 280) = v24;
  *(v2 + 80) = v22;
  *(v2 + 88) = sub_22FA2CF90(qword_2814816B8, &qword_27DAD8B28);
  *(v2 + 56) = v23;

  sub_22FA7E820(v15, v27);

  return MEMORY[0x2822009F8](sub_22FB9441C, v24, 0);
}

uint64_t sub_22FB9441C()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 232);
  v4 = sub_22FCC8D14();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_22FA2D328(v0 + 56, v0 + 96);
  v5 = sub_22FA2CE7C(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  sub_22FA2CF78((v0 + 96), (v6 + 5));
  swift_retain_n();
  v7 = sub_22FB235E4(0, 0, v3, &unk_22FCDA318, v6);
  *(v0 + 288) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8);
  v8 = swift_allocObject();
  *(v0 + 296) = v8;
  *(v8 + 16) = xmmword_22FCD1800;
  v9 = *(v2 + 40);
  *(v8 + 32) = *(v2 + 32);
  *(v8 + 40) = v9;

  v10 = swift_task_alloc();
  *(v0 + 304) = v10;
  *v10 = v0;
  v10[1] = sub_22FB94630;
  v11 = *(v0 + 200);
  v12 = *(v0 + 208);

  return sub_22FBE73B0(v0 + 136, 0xD00000000000001BLL, 0x800000022FCE6530, v7, v8, v11, v12);
}

uint64_t sub_22FB94630()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 280);
  if (v0)
  {
    v4 = sub_22FB94870;
  }

  else
  {
    v4 = sub_22FB9475C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FB9475C()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  return MEMORY[0x2822009F8](sub_22FB947D8, 0, 0);
}

uint64_t sub_22FB947D8()
{

  v1 = v0[17];
  v2 = v0[18];

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_22FB94870()
{

  return MEMORY[0x2822009F8](sub_22FB948E4, 0, 0);
}

uint64_t sub_22FB948E4()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB94978(char a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    v9 = sub_22FA2CE7C(&qword_28147FF30, v6, type metadata accessor for MomentGraphService);
    sub_22FA2CEC4(a2, v9);
    v10 = sub_22FCC8664();
    v11 = sub_22FCC8F24();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22FA28000, v10, v11, "requestPersonalEventMoments is stuck", v12, 2u);
      MEMORY[0x23190A000](v12, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_22FB94B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v11;
  *(v8 + 136) = v12;
  *(v8 + 112) = v10;
  *(v8 + 96) = a7;
  *(v8 + 104) = a8;
  *(v8 + 80) = a5;
  *(v8 + 88) = a6;
  *(v8 + 64) = a1;
  *(v8 + 72) = a4;
  return MEMORY[0x2822009F8](sub_22FB94B88, 0, 0);
}

uint64_t sub_22FB94B88()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v0[6] = sub_22FBAC124;
  v0[7] = v4;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FA51A14;
  v0[5] = &block_descriptor_183;
  v5 = _Block_copy(v0 + 2);
  v6 = objc_opt_self();

  v7 = [v6 progressReporterWithProgressBlock_];
  v0[18] = v7;
  _Block_release(v5);

  v8 = *(v2 + 112);
  v0[19] = v8;
  if ([v8 isReady])
  {
    v10 = v0[16];
    v9 = v0[17];
    v18 = *(v0 + 7);
    v12 = v0[12];
    v11 = v0[13];
    v13 = v0[11];
    v14 = swift_task_alloc();
    v0[20] = v14;
    *(v14 + 16) = *(v0 + 9);
    *(v14 + 32) = v12;
    *(v14 + 40) = v11;
    *(v14 + 48) = v13;
    *(v14 + 56) = v18;
    *(v14 + 72) = v10;
    *(v14 + 80) = v9;

    return MEMORY[0x2822009F8](sub_22FB94DA0, v13, 0);
  }

  else
  {
    sub_22FCC9004();
    sub_22FBA4C28();
    swift_allocError();
    *v15 = xmmword_22FCD3450;
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_22FB94DA0()
{
  v1 = [*(v0 + 152) workingContext];
  sub_22FCC9114();
  *(v0 + 168) = 0;

  return MEMORY[0x2822009F8](sub_22FB94E88, 0, 0);
}

uint64_t sub_22FB94E88()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB94EEC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB94F50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>)
{
  v8 = v7;
  aBlock[7] = a6;
  v31 = a1;
  v32 = a5;
  v29 = a7;
  v30 = a4;
  v11 = sub_22FCC6B84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  aBlock[4] = sub_22FBAC124;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22FA51A14;
  aBlock[3] = &block_descriptor_190;
  v16 = _Block_copy(aBlock);
  v17 = objc_opt_self();

  v18 = [v17 progressReporterWithProgressBlock_];
  _Block_release(v16);

  sub_22FCC64B4();
  swift_allocObject();
  sub_22FCC64A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8B38);
  sub_22FBA6180();
  sub_22FCC6494();
  if (v8)
  {
  }

  else
  {
    v27 = v12;
    v28 = v11;
    v19 = [*(v30 + 112) photoLibrary];
    v20 = v31;

    sub_22FCC6B74();
    v21 = sub_22FCC6B64();

    sub_22FCC64F4();
    swift_allocObject();
    sub_22FCC64E4();
    aBlock[0] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7370);
    sub_22FBA6238();
    v22 = sub_22FCC64D4();
    v24 = v23;
    (*(v27 + 8))(v14, v28);

    v26 = v29;
    *v29 = v22;
    v26[1] = v24;
  }

  return result;
}

uint64_t sub_22FB954B8(void *a1, void *a2, void *a3, void *a4, void *a5, void *aBlock, uint64_t a7)
{
  v7[2] = a7;
  v7[3] = _Block_copy(aBlock);
  v28 = a3;
  v13 = a1;
  v14 = a2;
  v15 = a4;
  v16 = a5;

  v17 = sub_22FCC6664();
  v19 = v18;

  v7[4] = v17;
  v7[5] = v19;
  v29 = sub_22FCC8A84();
  v21 = v20;

  v7[6] = v21;
  if (a3)
  {
    a3 = sub_22FCC8E84();
  }

  v7[7] = a3;
  v22 = sub_22FCC89D4();
  v7[8] = v22;

  v23 = sub_22FCC8A84();
  v25 = v24;

  v7[9] = v25;
  v26 = swift_task_alloc();
  v7[10] = v26;
  *v26 = v7;
  v26[1] = sub_22FB95678;

  return sub_22FB93F38(v17, v19, v29, v21, a3, v22, v23, v25);
}

uint64_t sub_22FB95678(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v6 = *v3;
  v8 = *v3;

  v9 = *(v6 + 40);
  v10 = *(v6 + 32);

  sub_22FA7E6C4(v10, v9);
  if (v4)
  {
    v11 = sub_22FCC6504();

    v12 = v11;
    v13 = 0;
  }

  else
  {
    v11 = sub_22FCC6654();
    sub_22FA7E6C4(a1, a2);
    v13 = v11;
    v12 = 0;
  }

  v14 = *(v7 + 24);
  (v14)[2](v14, v13, v12);

  _Block_release(v14);
  v15 = *(v8 + 8);

  return v15();
}

uint64_t sub_22FB958C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v5[24] = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  v5[25] = swift_task_alloc();
  v6 = sub_22FCC8684();
  v5[26] = v6;
  v5[27] = *(v6 - 8);
  v5[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB959E8, 0, 0);
}

uint64_t sub_22FB959E8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 192);
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "Stories - filterLocationsByMomentLocationHierarchy", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = *(v2 + 216);
  v8 = *(v2 + 224);
  v10 = *(v2 + 208);
  v11 = *(v2 + 184);
  v12 = *(v2 + 192);
  v14 = *(v2 + 168);
  v13 = *(v2 + 176);
  v15 = *(v2 + 152);
  v25 = *(v2 + 160);
  v24 = v15;

  (*(v9 + 8))(v8, v10);
  v16 = v11[16];
  v17 = *(v16 + 112);
  *(v2 + 232) = v17;
  v26 = v11[14];
  v27 = v11[15];

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v14, v13);
  *(v2 + 40) = type metadata accessor for MomentGraphWorker();
  *(v2 + 48) = sub_22FA2CE7C(&qword_281480230, 255, type metadata accessor for MomentGraphWorker);
  *(v2 + 16) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v15;
  v19[4] = v25;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8B28);
  v21 = swift_allocObject();
  *(v2 + 240) = v21;
  *(v21 + 48) = 0;
  *(v21 + 56) = 0;
  *(v21 + 16) = 0x6E6F697461636F4CLL;
  *(v21 + 24) = 0xEF73746573734120;
  *(v21 + 32) = v26;
  *(v21 + 40) = v27;
  *(v21 + 64) = 0;
  *(v21 + 72) = 0;
  *(v21 + 80) = 0;
  *(v21 + 88) = 0u;
  *(v21 + 104) = 0u;
  *(v21 + 120) = 0;
  sub_22FA2CF78((v2 + 16), v21 + 144);
  *(v21 + 128) = &unk_22FCDA2F8;
  *(v21 + 136) = v19;
  *(v21 + 184) = sub_22FBA5F28;
  *(v21 + 192) = v18;
  v22 = v11[21];
  *(v2 + 248) = v22;
  *(v2 + 80) = v20;
  *(v2 + 88) = sub_22FA2CF90(qword_2814816B8, &qword_27DAD8B28);
  *(v2 + 56) = v21;

  sub_22FA7E820(v24, v25);

  return MEMORY[0x2822009F8](sub_22FB95D48, v22, 0);
}

uint64_t sub_22FB95D48()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 200);
  v4 = sub_22FCC8D14();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_22FA2D328(v0 + 56, v0 + 96);
  v5 = sub_22FA2CE7C(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  sub_22FA2CF78((v0 + 96), (v6 + 5));
  swift_retain_n();
  v7 = sub_22FB235E4(0, 0, v3, &unk_22FCDA300, v6);
  *(v0 + 256) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8);
  v8 = swift_allocObject();
  *(v0 + 264) = v8;
  *(v8 + 16) = xmmword_22FCD1800;
  v9 = *(v2 + 40);
  *(v8 + 32) = *(v2 + 32);
  *(v8 + 40) = v9;

  v10 = swift_task_alloc();
  *(v0 + 272) = v10;
  *v10 = v0;
  v10[1] = sub_22FB95F5C;
  v11 = *(v0 + 168);
  v12 = *(v0 + 176);

  return sub_22FBE73B0(v0 + 136, 0xD000000000000028, 0x800000022FCE64C0, v7, v8, v11, v12);
}

uint64_t sub_22FB95F5C()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 248);
  if (v0)
  {
    v4 = sub_22FB9619C;
  }

  else
  {
    v4 = sub_22FB96088;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FB96088()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  return MEMORY[0x2822009F8](sub_22FB96104, 0, 0);
}

uint64_t sub_22FB96104()
{

  v1 = v0[17];
  v2 = v0[18];

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_22FB9619C()
{

  return MEMORY[0x2822009F8](sub_22FB96210, 0, 0);
}

uint64_t sub_22FB96210()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB962A4(char a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    v9 = sub_22FA2CE7C(&qword_28147FF30, v6, type metadata accessor for MomentGraphService);
    sub_22FA2CEC4(a2, v9);
    v10 = sub_22FCC8664();
    v11 = sub_22FCC8F24();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22FA28000, v10, v11, "locationAssetUUIDs is stuck", v12, 2u);
      MEMORY[0x23190A000](v12, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_22FB96478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a1;
  v8[9] = a4;
  return MEMORY[0x2822009F8](sub_22FB964A0, 0, 0);
}

uint64_t sub_22FB964A0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v0[6] = sub_22FBAC124;
  v0[7] = v4;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FA51A14;
  v0[5] = &block_descriptor_155;
  v5 = _Block_copy(v0 + 2);
  v6 = objc_opt_self();

  v7 = [v6 progressReporterWithProgressBlock_];
  v0[14] = v7;
  _Block_release(v5);

  v8 = *(v2 + 112);
  v0[15] = v8;
  if ([v8 isReady])
  {
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];
    v12 = swift_task_alloc();
    v0[16] = v12;
    *(v12 + 16) = *(v0 + 9);
    *(v12 + 32) = v10;
    *(v12 + 40) = v9;
    *(v12 + 48) = v11;

    return MEMORY[0x2822009F8](sub_22FB966A0, v11, 0);
  }

  else
  {
    sub_22FCC9004();
    sub_22FBA4C28();
    swift_allocError();
    *v13 = xmmword_22FCD3450;
    swift_willThrow();

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_22FB966A0()
{
  v1 = [*(v0 + 120) workingContext];
  sub_22FCC9114();
  *(v0 + 136) = 0;

  return MEMORY[0x2822009F8](sub_22FB96788, 0, 0);
}

uint64_t sub_22FB96788()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB967EC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB96850@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v29 = a5;
  v30 = a1;
  v34 = a4;
  v27 = a6;
  v8 = sub_22FCC8224();
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v33 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22FCC6C54();
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22FCC8214();
  v32 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  aBlock[4] = sub_22FA4ED4C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22FA51A14;
  aBlock[3] = &block_descriptor_162;
  v17 = _Block_copy(aBlock);
  v18 = objc_opt_self();

  v19 = [v18 progressReporterWithProgressBlock_];
  _Block_release(v17);

  sub_22FCC64B4();
  swift_allocObject();
  sub_22FCC64A4();
  sub_22FA2CE7C(&qword_28147B018, 255, MEMORY[0x277D3C6A0]);
  v20 = v36;
  sub_22FCC6494();
  if (v20)
  {
  }

  else
  {
    v22 = [*(v29 + 112) photoLibrary];
    v23 = v30;
    sub_22FCC6C44();
    sub_22FCC6C34();
    v36 = v12;
    sub_22FCC64F4();
    swift_allocObject();
    sub_22FCC64E4();
    sub_22FA2CE7C(&qword_28147B010, 255, MEMORY[0x277D3C6B0]);
    v30 = sub_22FCC64D4();
    v34 = v24;

    (*(v28 + 8))(v33, v8);
    (*(v31 + 8))(v36, v10);
    result = (*(v32 + 8))(v15, v13);
    v25 = v27;
    v26 = v34;
    *v27 = v30;
    v25[1] = v26;
  }

  return result;
}

uint64_t sub_22FB96EE4(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = sub_22FCC6664();
  v11 = v10;

  v4[4] = v9;
  v4[5] = v11;
  v12 = sub_22FCC8A84();
  v14 = v13;

  v4[6] = v14;
  v15 = swift_task_alloc();
  v4[7] = v15;
  *v15 = v4;
  v15[1] = sub_22FB96FF4;

  return sub_22FB958C0(v9, v11, v12, v14);
}

uint64_t sub_22FB96FF4(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v7 = *v3;
  v9 = *v3;

  sub_22FA7E6C4(*(v7 + 32), *(v7 + 40));
  if (v4)
  {
    v10 = sub_22FCC6504();

    v11 = v10;
    v12 = 0;
  }

  else
  {
    v10 = sub_22FCC6654();
    sub_22FA7E6C4(a1, a2);
    v12 = v10;
    v11 = 0;
  }

  v13 = *(v8 + 24);
  (v13)[2](v13, v12, v11);

  _Block_release(v13);
  v14 = *(v9 + 8);

  return v14();
}

uint64_t sub_22FB971D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v4[23] = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  v4[24] = swift_task_alloc();
  v5 = sub_22FCC8684();
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB972FC, 0, 0);
}

uint64_t sub_22FB972FC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 184);
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F34();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "Stories - requestCharacterCurationInfo", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = *(v2 + 208);
  v8 = *(v2 + 216);
  v10 = *(v2 + 200);
  v12 = *(v2 + 176);
  v11 = *(v2 + 184);
  v14 = *(v2 + 160);
  v13 = *(v2 + 168);
  v15 = *(v2 + 152);

  (*(v9 + 8))(v8, v10);
  v16 = v12[16];
  v17 = *(v16 + 112);
  *(v2 + 224) = v17;
  v24 = v12[14];
  v25 = v12[15];

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v14, v13);
  *(v2 + 40) = type metadata accessor for MomentGraphWorker();
  *(v2 + 48) = sub_22FA2CE7C(&qword_281480230, 255, type metadata accessor for MomentGraphWorker);
  *(v2 + 16) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v15;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8B28);
  v21 = swift_allocObject();
  *(v2 + 232) = v21;
  *(v21 + 48) = 0;
  *(v21 + 56) = 0;
  *(v21 + 16) = 0xD000000000000017;
  *(v21 + 24) = 0x800000022FCE6450;
  *(v21 + 32) = v24;
  *(v21 + 40) = v25;
  *(v21 + 64) = 0;
  *(v21 + 72) = 0;
  *(v21 + 80) = 0;
  *(v21 + 88) = 0u;
  *(v21 + 104) = 0u;
  *(v21 + 120) = 0;
  sub_22FA2CF78((v2 + 16), v21 + 144);
  *(v21 + 128) = &unk_22FCDA2E0;
  *(v21 + 136) = v19;
  *(v21 + 184) = sub_22FBA5E28;
  *(v21 + 192) = v18;
  v22 = v12[21];
  *(v2 + 240) = v22;
  *(v2 + 80) = v20;
  *(v2 + 88) = sub_22FA2CF90(qword_2814816B8, &qword_27DAD8B28);
  *(v2 + 56) = v21;

  return MEMORY[0x2822009F8](sub_22FB9764C, v22, 0);
}

uint64_t sub_22FB9764C()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 192);
  v4 = sub_22FCC8D14();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_22FA2D328(v0 + 56, v0 + 96);
  v5 = sub_22FA2CE7C(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  sub_22FA2CF78((v0 + 96), (v6 + 5));
  swift_retain_n();
  v7 = sub_22FB235E4(0, 0, v3, &unk_22FCDA2E8, v6);
  *(v0 + 248) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8);
  v8 = swift_allocObject();
  *(v0 + 256) = v8;
  *(v8 + 16) = xmmword_22FCD1800;
  v9 = *(v2 + 40);
  *(v8 + 32) = *(v2 + 32);
  *(v8 + 40) = v9;

  v10 = swift_task_alloc();
  *(v0 + 264) = v10;
  *v10 = v0;
  v10[1] = sub_22FB97860;
  v11 = *(v0 + 160);
  v12 = *(v0 + 168);

  return sub_22FBE73B0(v0 + 136, 0xD00000000000001CLL, 0x800000022FCE6470, v7, v8, v11, v12);
}

uint64_t sub_22FB97860()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_22FB97AA0;
  }

  else
  {
    v4 = sub_22FB9798C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FB9798C()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  return MEMORY[0x2822009F8](sub_22FB97A08, 0, 0);
}

uint64_t sub_22FB97A08()
{

  v1 = v0[17];
  v2 = v0[18];

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_22FB97AA0()
{

  return MEMORY[0x2822009F8](sub_22FB97B14, 0, 0);
}

uint64_t sub_22FB97B14()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB97BA8(char a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    v9 = sub_22FA2CE7C(&qword_28147FF30, v6, type metadata accessor for MomentGraphService);
    sub_22FA2CEC4(a2, v9);
    v10 = sub_22FCC8664();
    v11 = sub_22FCC8F24();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22FA28000, v10, v11, "requestCharacterCurationInfo is stuck", v12, 2u);
      MEMORY[0x23190A000](v12, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_22FB97D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[8] = a1;
  return MEMORY[0x2822009F8](sub_22FB97DA4, 0, 0);
}

uint64_t sub_22FB97DA4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v0[6] = sub_22FBAC124;
  v0[7] = v4;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FA51A14;
  v0[5] = &block_descriptor_133;
  v5 = _Block_copy(v0 + 2);
  v6 = objc_opt_self();

  v7 = [v6 progressReporterWithProgressBlock_];
  v0[13] = v7;
  _Block_release(v5);

  v8 = *(v2 + 112);
  v0[14] = v8;
  if ([v8 isReady])
  {
    v10 = v0[11];
    v9 = v0[12];
    v11 = swift_task_alloc();
    v0[15] = v11;
    *(v11 + 16) = v9;

    return MEMORY[0x2822009F8](sub_22FB97F94, v10, 0);
  }

  else
  {
    sub_22FCC9004();
    sub_22FBA4C28();
    swift_allocError();
    *v12 = xmmword_22FCD3450;
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_22FB97F94()
{
  v1 = [*(v0 + 112) workingContext];
  sub_22FCC9114();
  *(v0 + 128) = 0;

  return MEMORY[0x2822009F8](sub_22FB9807C, 0, 0);
}

uint64_t sub_22FB9807C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB980E0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB98144@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a2;
  v4 = sub_22FCC7894();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22FCC6BF4();
  v8 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1;
  sub_22FCC6BE4();
  sub_22FCC6BD4();
  sub_22FCC64F4();
  swift_allocObject();
  sub_22FCC64E4();
  sub_22FA2CE7C(&qword_28147B038, 255, MEMORY[0x277D3C320]);
  v12 = sub_22FCC64D4();
  if (v2)
  {

    (*(v5 + 8))(v7, v4);
    return (*(v8 + 8))(v10, v20);
  }

  else
  {
    v15 = v12;
    v16 = v13;

    (*(v5 + 8))(v7, v4);
    result = (*(v8 + 8))(v10, v20);
    v17 = v19;
    *v19 = v15;
    v17[1] = v16;
  }

  return result;
}

uint64_t sub_22FB98538(int a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v5 = sub_22FCC8E84();
  v4[4] = v5;
  v6 = sub_22FCC8A84();
  v8 = v7;
  v4[5] = v7;

  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_22FBAC04C;

  return sub_22FB971D8(v5, v6, v8);
}

uint64_t sub_22FB9863C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[21] = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  v4[22] = swift_task_alloc();
  v5 = sub_22FCC8684();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB98760, 0, 0);
}

uint64_t sub_22FB98760(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 168);
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "Stories - requestPrewarmQueryAnnotator", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = *(v2 + 192);
  v8 = *(v2 + 200);
  v10 = *(v2 + 184);
  v12 = *(v2 + 160);
  v11 = *(v2 + 168);
  v14 = *(v2 + 144);
  v13 = *(v2 + 152);
  v15 = *(v2 + 136);

  (*(v9 + 8))(v8, v10);
  v24 = v12[14];
  v25 = v12[15];

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v14, v13);
  v16 = v12[22];
  v17 = v12[16];
  *(v2 + 40) = type metadata accessor for MomentGraphWorker();
  *(v2 + 48) = sub_22FA2CE7C(&qword_281480230, 255, type metadata accessor for MomentGraphWorker);
  *(v2 + 16) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v15;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD76C0);
  v21 = swift_allocObject();
  *(v2 + 208) = v21;
  *(v21 + 48) = 0;
  *(v21 + 56) = 0;
  *(v21 + 16) = 0xD000000000000010;
  *(v21 + 24) = 0x800000022FCE63A0;
  *(v21 + 32) = v24;
  *(v21 + 40) = v25;
  *(v21 + 64) = 0;
  *(v21 + 72) = 0;
  *(v21 + 80) = 0;
  *(v21 + 88) = 0u;
  *(v21 + 104) = 0u;
  *(v21 + 120) = 0;
  sub_22FA2CF78((v2 + 16), v21 + 144);
  *(v21 + 128) = &unk_22FCDA2C0;
  *(v21 + 136) = v19;
  *(v21 + 184) = sub_22FBA5D44;
  *(v21 + 192) = v18;
  v22 = v12[21];
  *(v2 + 216) = v22;
  *(v2 + 80) = v20;
  *(v2 + 88) = sub_22FA2CF90(&qword_281481680, &qword_27DAD76C0);
  *(v2 + 56) = v21;

  return MEMORY[0x2822009F8](sub_22FB98A8C, v22, 0);
}

uint64_t sub_22FB98A8C()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = sub_22FCC8D14();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_22FA2D328(v0 + 56, v0 + 96);
  v5 = sub_22FA2CE7C(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  sub_22FA2CF78((v0 + 96), (v6 + 5));
  swift_retain_n();
  v7 = sub_22FB22A48(0, 0, v3, &unk_22FCDA2D0, v6);
  *(v0 + 224) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8);
  v8 = swift_allocObject();
  *(v0 + 232) = v8;
  *(v8 + 16) = xmmword_22FCD1800;
  v9 = *(v2 + 40);
  *(v8 + 32) = *(v2 + 32);
  *(v8 + 40) = v9;

  v10 = swift_task_alloc();
  *(v0 + 240) = v10;
  *v10 = v0;
  v10[1] = sub_22FB98C98;
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);

  return sub_22FBE5228(v10, 0xD00000000000001CLL, 0x800000022FCE6400, v7, v8, v11, v12);
}

uint64_t sub_22FB98C98()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 216);
  if (v0)
  {
    v4 = sub_22FB98EB8;
  }

  else
  {
    v4 = sub_22FB98DC4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FB98DC4()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  return MEMORY[0x2822009F8](sub_22FB98E40, 0, 0);
}

uint64_t sub_22FB98E40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB98EB8()
{

  return MEMORY[0x2822009F8](sub_22FB98F2C, 0, 0);
}

uint64_t sub_22FB98F2C()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB98FAC(char a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    v9 = sub_22FA2CE7C(&qword_28147FF30, v6, type metadata accessor for MomentGraphService);
    sub_22FA2CEC4(a2, v9);
    v10 = sub_22FCC8664();
    v11 = sub_22FCC8F24();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22FA28000, v10, v11, "requestPrewarmQueryAnnotator is stuck", v12, 2u);
      MEMORY[0x23190A000](v12, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_22FB99180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = 0;
  v10 = swift_task_alloc();
  *(v7 + 16) = v10;
  *v10 = v7;
  v10[1] = sub_22FB99244;

  return sub_22FBC2390((v7 + 32), a6, a7);
}

uint64_t sub_22FB99244()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FB99378, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22FB99520(uint64_t a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_22FCC8A84();
  v8 = v7;
  v4[4] = v7;

  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_22FBAC09C;

  return sub_22FB9863C(a1, v6, v8);
}

uint64_t sub_22FB99604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[23] = a5;
  v6[24] = v5;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v6[25] = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  v6[26] = swift_task_alloc();
  v7 = sub_22FCC8684();
  v6[27] = v7;
  v6[28] = *(v7 - 8);
  v6[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB9972C, 0, 0);
}

uint64_t sub_22FB9972C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 200);
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "Stories - requestQueryAnnotation", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = *(v2 + 224);
  v8 = *(v2 + 232);
  v10 = *(v2 + 216);
  v11 = *(v2 + 192);
  v12 = *(v2 + 200);
  v14 = *(v2 + 176);
  v13 = *(v2 + 184);
  v28 = *(v2 + 160);
  v29 = *(v2 + 168);
  v27 = *(v2 + 152);

  (*(v9 + 8))(v8, v10);
  v15 = *(v11[16] + 112);
  v16 = v11[16];
  *(v2 + 240) = v15;
  v17 = *(v15 + 112);

  v18 = [v17 photoLibrary];
  *(v2 + 248) = v18;
  v19 = v11[22];
  v30 = v11[14];
  v31 = v11[15];

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v14, v13);
  *(v2 + 40) = type metadata accessor for MomentGraphWorker();
  *(v2 + 48) = sub_22FA2CE7C(&qword_281480230, 255, type metadata accessor for MomentGraphWorker);
  *(v2 + 16) = v16;
  v20 = swift_allocObject();
  *(v20 + 16) = v12;
  v21 = swift_allocObject();
  v21[2] = v15;
  v21[3] = v27;
  v21[4] = v28;
  v21[5] = v18;
  v21[6] = v29;
  v21[7] = v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8B28);
  v23 = swift_allocObject();
  *(v2 + 256) = v23;
  *(v23 + 48) = 0;
  *(v23 + 56) = 0;
  *(v23 + 16) = 0xD000000000000010;
  *(v23 + 24) = 0x800000022FCE63A0;
  *(v23 + 32) = v30;
  *(v23 + 40) = v31;
  *(v23 + 64) = 0;
  *(v23 + 72) = 0;
  *(v23 + 80) = 0;
  *(v23 + 88) = 0u;
  *(v23 + 104) = 0u;
  *(v23 + 120) = 0;
  sub_22FA2CF78((v2 + 16), v23 + 144);
  *(v23 + 128) = &unk_22FCDA298;
  *(v23 + 136) = v21;
  *(v23 + 184) = sub_22FBA503C;
  *(v23 + 192) = v20;
  v24 = v11[21];
  *(v2 + 264) = v24;
  *(v2 + 80) = v22;
  *(v2 + 88) = sub_22FA2CF90(qword_2814816B8, &qword_27DAD8B28);
  *(v2 + 56) = v23;

  v25 = v18;

  return MEMORY[0x2822009F8](sub_22FB99AD4, v24, 0);
}

uint64_t sub_22FB99AD4()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 208);
  v4 = sub_22FCC8D14();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_22FA2D328(v0 + 56, v0 + 96);
  v5 = sub_22FA2CE7C(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  sub_22FA2CF78((v0 + 96), (v6 + 5));
  swift_retain_n();
  v7 = sub_22FB235E4(0, 0, v3, &unk_22FCDA2A8, v6);
  *(v0 + 272) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8);
  v8 = swift_allocObject();
  *(v0 + 280) = v8;
  *(v8 + 16) = xmmword_22FCD1800;
  v9 = *(v2 + 40);
  *(v8 + 32) = *(v2 + 32);
  *(v8 + 40) = v9;

  v10 = swift_task_alloc();
  *(v0 + 288) = v10;
  *v10 = v0;
  v10[1] = sub_22FB99CE8;
  v11 = *(v0 + 176);
  v12 = *(v0 + 184);

  return sub_22FBE73B0(v0 + 136, 0xD000000000000016, 0x800000022FCE63C0, v7, v8, v11, v12);
}

uint64_t sub_22FB99CE8()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 264);
  if (v0)
  {
    v4 = sub_22FB99F30;
  }

  else
  {
    v4 = sub_22FB99E14;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FB99E14()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  return MEMORY[0x2822009F8](sub_22FB99E90, 0, 0);
}

uint64_t sub_22FB99E90()
{

  v2 = *(v0 + 136);
  v1 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_22FB99F30()
{

  return MEMORY[0x2822009F8](sub_22FB99FA4, 0, 0);
}

uint64_t sub_22FB99FA4()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB9A040(char a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    v9 = sub_22FA2CE7C(&qword_28147FF30, v6, type metadata accessor for MomentGraphService);
    sub_22FA2CEC4(a2, v9);
    v10 = sub_22FCC8664();
    v11 = sub_22FCC8F24();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22FA28000, v10, v11, "requestQueryAnnotation is stuck", v12, 2u);
      MEMORY[0x23190A000](v12, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_22FB9A214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v12;
  *(v8 + 112) = v11;
  *(v8 + 96) = a7;
  *(v8 + 104) = a8;
  *(v8 + 80) = a5;
  *(v8 + 88) = a6;
  *(v8 + 64) = a1;
  *(v8 + 72) = a4;
  *(v8 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8308);
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB9A2D0, 0, 0);
}

uint64_t sub_22FB9A2D0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v0[6] = sub_22FBAC124;
  v0[7] = v4;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FA51A14;
  v0[5] = &block_descriptor_93;
  v5 = _Block_copy(v0 + 2);
  v6 = objc_opt_self();

  v7 = [v6 progressReporterWithProgressBlock_];
  v0[19] = v7;
  _Block_release(v5);

  v8 = *(v2 + 112);
  v0[20] = v8;
  if ([v8 isReady])
  {
    v10 = v0[11];
    v9 = v0[12];
    v11 = swift_task_alloc();
    v0[21] = v11;
    v12 = *(v0 + 13);
    *(v11 + 16) = v9;
    *(v11 + 24) = v12;

    return MEMORY[0x2822009F8](sub_22FB9A4D0, v10, 0);
  }

  else
  {
    sub_22FCC9004();
    sub_22FBA4C28();
    swift_allocError();
    *v13 = xmmword_22FCD3450;
    swift_willThrow();

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_22FB9A4D0()
{
  v1 = [*(v0 + 160) workingContext];
  sub_22FCC9114();
  *(v0 + 176) = 0;

  *(v0 + 216) = 0;
  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = sub_22FB9A64C;
  v3 = *(v0 + 144);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);

  return sub_22FBC8104(v7, v6, v4, v3, (v0 + 216), v5);
}

uint64_t sub_22FB9A64C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 192) = v2;

  if (v2)
  {
    v7 = sub_22FB9A818;
  }

  else
  {
    *(v6 + 200) = a2;
    *(v6 + 208) = a1;
    v7 = sub_22FB9A780;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22FB9A780()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 144);
  v4 = *(v0 + 64);

  sub_22FA2B420(v3, &unk_27DAD8308);
  *v4 = v1;
  v4[1] = v2;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22FB9A818()
{
  v1 = *(v0 + 144);

  sub_22FA2B420(v1, &unk_27DAD8308);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22FB9A89C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB9A908@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v48 = a2;
  v49 = a3;
  v47 = a1;
  v6 = sub_22FCC70C4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v51 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v54 = v44 - v10;
  v50 = sub_22FCC6794();
  v11 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_opt_self();
  v15 = [v14 queryAnnotationPromptBindingNumberOfPersonAndPetNames];
  v16 = [v14 queryAnnotationPromptBindingNumberOfLocationNames];
  if (![v14 useQueryAnnotationPromptBindingPersonAndPetNames])
  {
    return (*(v7 + 56))(a4, 1, 1, v6);
  }

  v46 = v4;
  if (qword_281480E20 != -1)
  {
    swift_once();
  }

  v17 = qword_281487FB0;
  sub_22FCC76D4();
  swift_allocObject();
  v18 = v17;
  v44[4] = sub_22FCC76C4();
  if (qword_281480E18 != -1)
  {
    swift_once();
  }

  v45 = a4;
  v19 = sub_22FCC8684();
  v44[3] = __swift_project_value_buffer(v19, qword_281487F98);
  v20 = sub_22FCC8664();
  v21 = sub_22FCC8F34();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_22FA28000, v20, v21, "Construct prompt binding recipe using query matching", v22, 2u);
    MEMORY[0x23190A000](v22, -1, -1);
  }

  v52 = v15;
  v53 = v16;
  v24 = v47;
  v23 = v48;
  v25 = v49;
  v26 = sub_22FBCCE1C(v47, v48, &v52, v49);
  v44[1] = v27;
  v44[2] = v26;
  v52 = v15;
  v53 = v16;
  sub_22FBCD774(v24, v23, &v52, v25);
  v28 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v29 = sub_22FCC8A54();
  [v28 setDateFormat_];

  sub_22FCC6784();
  v30 = sub_22FCC66F4();
  (*(v11 + 8))(v13, v50);
  v31 = [v28 stringFromDate_];

  sub_22FCC8A84();
  v32 = v54;
  sub_22FCC7084();
  v33 = v51;
  (*(v7 + 16))(v51, v32, v6);
  v34 = sub_22FCC8664();
  v35 = sub_22FCC8F34();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v52 = v37;
    *v36 = 136642819;
    sub_22FA2CE7C(&qword_27DAD8B30, 255, MEMORY[0x277D3C070]);
    v38 = sub_22FCC96C4();
    v40 = v39;
    (*(v7 + 8))(v33, v6);
    v41 = sub_22FA2F600(v38, v40, &v52);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_22FA28000, v34, v35, "Prompt binding recipe = %{sensitive}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x23190A000](v37, -1, -1);
    MEMORY[0x23190A000](v36, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v33, v6);
  }

  v43 = v45;
  (*(v7 + 32))(v45, v54, v6);
  (*(v7 + 56))(v43, 0, 1, v6);
  sub_22FCC76B4();
}

uint64_t sub_22FB9B0A0(int a1, uint64_t a2, int a3, void *aBlock, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v7 = sub_22FCC8A84();
  v9 = v8;
  v5[4] = v8;
  v10 = sub_22FCC8A84();
  v12 = v11;
  v5[5] = v11;

  v13 = swift_task_alloc();
  v5[6] = v13;
  *v13 = v5;
  v13[1] = sub_22FB9B1AC;

  return sub_22FB99604(v7, v9, a2, v10, v12);
}

uint64_t sub_22FB9B1AC(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *v3;

  if (v4)
  {
    v9 = sub_22FCC6504();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    v12 = sub_22FCC6654();
    sub_22FA7E6C4(a1, a2);
    v11 = v12;
    v10 = 0;
    v9 = v12;
  }

  v13 = *(v7 + 24);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

uint64_t sub_22FB9B518(int a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v5 = sub_22FCC8A84();
  v7 = v6;
  v4[4] = v6;

  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_22FB9B604;

  return sub_22FBA7890(v5, v7);
}

uint64_t sub_22FB9B604(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *v3;

  if (v4)
  {
    v9 = sub_22FCC6504();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    v12 = sub_22FCC6654();
    sub_22FA7E6C4(a1, a2);
    v11 = v12;
    v10 = 0;
    v9 = v12;
  }

  v13 = *(v7 + 24);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

uint64_t sub_22FB9B7B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_22FBAC0A4;
  }

  else
  {
    *(v4 + 192) = a1;
    __swift_destroy_boxed_opaque_existential_0(v4 + 56);
    v5 = sub_22FBAC128;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FB9B8E8(char a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    v9 = sub_22FA2CE7C(&qword_28147FF30, v6, type metadata accessor for MomentGraphService);
    sub_22FA2CEC4(a2, v9);
    v10 = sub_22FCC8664();
    v11 = sub_22FCC8F24();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22FA28000, v10, v11, "requestPersonalTraitsForAssets is stuck", v12, 2u);
      MEMORY[0x23190A000](v12, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_22FB9BABC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_22FB9BC90;
  }

  else
  {
    *(v4 + 160) = a1;
    v5 = sub_22FB9BBE4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FB9BBE4()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 104);
  v6 = *(v0 + 64);

  (*(v4 + 8))(v3, v5);
  *v6 = v1;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22FB9BC90()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22FB9BD28()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;

  if (v2)
  {
    v5 = sub_22FCC6504();

    v6 = v5;
    v7 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BC0);
    v8 = sub_22FCC8C24();

    v7 = v8;
    v6 = 0;
    v5 = v8;
  }

  v9 = *(v3 + 24);
  (v9)[2](v9, v7, v6);

  _Block_release(v9);
  v10 = *(v4 + 8);

  return v10();
}

uint64_t sub_22FB9BF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[16] = *v3;
  v5 = sub_22FCC8684();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB9BFF0, 0, 0);
}

uint64_t sub_22FB9BFF0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 128);
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "Journal - requestPersonalTraitsForHighlights", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = *(v2 + 144);
  v8 = *(v2 + 152);
  v10 = *(v2 + 136);
  v12 = *(v2 + 112);
  v11 = *(v2 + 120);
  v13 = *(v2 + 96);
  v14 = *(v2 + 104);
  v25 = *(v2 + 128);

  (*(v9 + 8))(v8, v10);
  v15 = v11[16];
  v16 = *(v15 + 112);
  *(v2 + 160) = v16;
  v26 = v11[14];
  v27 = v11[15];

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v14, v12);
  *(v2 + 40) = type metadata accessor for MomentGraphWorker();
  *(v2 + 48) = sub_22FA2CE7C(&qword_281480230, 255, type metadata accessor for MomentGraphWorker);
  *(v2 + 16) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v25;
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v11;
  v18[4] = v13;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8B20);
  v20 = swift_allocObject();
  *(v2 + 168) = v20;
  *(v20 + 48) = 0;
  *(v20 + 56) = 0;
  *(v20 + 16) = 0x6C616E6F73726550;
  *(v20 + 24) = 0xEF73746961725420;
  *(v20 + 32) = v26;
  *(v20 + 40) = v27;
  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
  *(v20 + 80) = 0;
  *(v20 + 88) = 0u;
  *(v20 + 104) = 0u;
  *(v20 + 120) = 0;
  sub_22FA2CF78((v2 + 16), v20 + 144);
  *(v20 + 128) = &unk_22FCDA258;
  *(v20 + 136) = v18;
  *(v20 + 184) = sub_22FBA4B3C;
  *(v20 + 192) = v17;
  *(v2 + 80) = v19;
  *(v2 + 88) = sub_22FA2CF90(&qword_281481690, &qword_27DAD8B20);
  *(v2 + 56) = v20;

  v21 = swift_task_alloc();
  *(v2 + 176) = v21;
  *v21 = v2;
  v21[1] = sub_22FB9B7B8;
  v22 = *(v2 + 104);
  v23 = *(v2 + 112);

  return sub_22FA2CFD8(v2 + 56, 0xD000000000000022, 0x800000022FCE62C0, v22, v23);
}

uint64_t sub_22FB9C3AC(char a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    v9 = sub_22FA2CE7C(&qword_28147FF30, v6, type metadata accessor for MomentGraphService);
    sub_22FA2CEC4(a2, v9);
    v10 = sub_22FCC8664();
    v11 = sub_22FCC8F24();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22FA28000, v10, v11, "requestPersonalTraitsForHighlights is stuck", v12, 2u);
      MEMORY[0x23190A000](v12, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_22FB9C580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a1;
  v8[9] = a4;
  v9 = sub_22FCC7E14();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB9C648, 0, 0);
}

uint64_t sub_22FB9C648()
{
  v1 = *(v0[11] + 112);
  if ([v1 isReady])
  {
    v2 = v0[12];
    v0[17] = [v1 photoLibrary];

    return MEMORY[0x2822009F8](sub_22FB9C75C, v2, 0);
  }

  else
  {
    sub_22FBA4C28();
    swift_allocError();
    *v3 = xmmword_22FCD3450;
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_22FB9C75C()
{
  sub_22FBA14C8(*(v0 + 104), *(v0 + 136));
  *(v0 + 144) = v1;

  return MEMORY[0x2822009F8](sub_22FB9C7CC, 0, 0);
}

uint64_t sub_22FB9C7CC()
{
  v1 = v0[17];
  v3 = v0[9];
  v2 = v0[10];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v0[6] = sub_22FBAC124;
  v0[7] = v4;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FA51A14;
  v0[5] = &block_descriptor_27;
  v5 = _Block_copy(v0 + 2);
  v6 = objc_opt_self();

  v7 = [v6 progressReporterWithProgressBlock_];
  v0[19] = v7;
  _Block_release(v5);

  sub_22FCC7884();
  swift_allocObject();
  v8 = v1;
  sub_22FCC7874();
  sub_22FCC7DE4();
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_22FB9C998;
  v10 = v0[18];
  v11 = v0[16];
  v12 = v0[11];

  return sub_22FAAD508(v10, v12, v11, v7);
}

uint64_t sub_22FB9C998(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_22FB9CB88;
  }

  else
  {
    *(v4 + 176) = a1;
    v5 = sub_22FB9CADC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FB9CADC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v6 = *(v0 + 64);

  (*(v5 + 8))(v2, v4);
  *v6 = v1;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22FB9CB88()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);

  (*(v4 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22FB9CDB4(int a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v5 = sub_22FCC8C44();
  v4[4] = v5;
  v6 = sub_22FCC8A84();
  v8 = v7;
  v4[5] = v7;

  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_22FBAC120;

  return sub_22FB9BF04(v5, v6, v8);
}

uint64_t sub_22FB9CEB0(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v3[15] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  v3[16] = swift_task_alloc();
  v4 = sub_22FCC8684();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB9CFD4, 0, 0);
}

uint64_t sub_22FB9CFD4(uint64_t a1, uint64_t a2)
{
  v22 = v2;
  v3 = v2[15];
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "Search - performRequestPromptSuggestions", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = v2[18];
  v8 = v2[19];
  v10 = v2[17];
  v11 = v2[14];

  (*(v9 + 8))(v8, v10);
  v12 = *(*(v11 + 128) + 112);
  v13 = type metadata accessor for PromptSuggestionCachingTask();
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v14 = objc_allocWithZone(v13);

  v16 = sub_22FBA446C(v15, v12, v20, v14);
  v2[20] = v16;

  v17 = *(v11 + 168);
  v2[21] = v17;
  v2[5] = v13;
  v2[6] = sub_22FA2CE7C(&qword_28147DAB8, 255, type metadata accessor for PromptSuggestionCachingTask);
  v2[2] = v16;
  v18 = v16;

  return MEMORY[0x2822009F8](sub_22FB9D1D0, v17, 0);
}

uint64_t sub_22FB9D1D0()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 128);
  v4 = sub_22FCC8D14();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_22FA2D328(v0 + 16, v0 + 56);
  v5 = sub_22FA2CE7C(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  sub_22FA2CF78((v0 + 56), (v6 + 5));
  swift_retain_n();
  v7 = sub_22FB22A48(0, 0, v3, &unk_22FCD2BF0, v6);
  *(v0 + 176) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8);
  v8 = swift_allocObject();
  *(v0 + 184) = v8;
  *(v8 + 16) = xmmword_22FCD1800;
  v9 = *(v2 + OBJC_IVAR___PHAPromptSuggestionCachingTask_identifier + 8);
  *(v8 + 32) = *(v2 + OBJC_IVAR___PHAPromptSuggestionCachingTask_identifier);
  *(v8 + 40) = v9;

  v10 = swift_task_alloc();
  *(v0 + 192) = v10;
  *v10 = v0;
  v10[1] = sub_22FB9D3EC;
  v11 = *(v0 + 96);
  v12 = *(v0 + 104);

  return sub_22FBE5228(v10, 0xD000000000000023, 0x800000022FCE6270, v7, v8, v11, v12);
}

uint64_t sub_22FB9D3EC()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 168);
  if (v0)
  {
    v4 = sub_22FB9D60C;
  }

  else
  {
    v4 = sub_22FB9D518;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FB9D518()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x2822009F8](sub_22FB9D594, 0, 0);
}

uint64_t sub_22FB9D594()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB9D60C()
{

  return MEMORY[0x2822009F8](sub_22FB9D680, 0, 0);
}

uint64_t sub_22FB9D680()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB9D88C(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = sub_22FCC8A84();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_22FBAC09C;

  return sub_22FB9CEB0(v4, v6);
}

uint64_t sub_22FB9D960()
{
  v1[14] = v0;
  v1[15] = *v0;
  sub_22FCC8574();
  v1[16] = swift_task_alloc();
  v2 = sub_22FCC8524();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  v3 = sub_22FCC8684();
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB9DADC, 0, 0);
}

uint64_t sub_22FB9DADC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 120);
  v34 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService);
  sub_22FA2CEC4(v3, v34);
  v4 = sub_22FCC8664();
  v5 = sub_22FCC8EF4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_22FA28000, v4, v5, "Prompt Suggestion - generateWhimsicalPromptSuggestions", v6, 2u);
    MEMORY[0x23190A000](v6, -1, -1);
  }

  v7 = *(v2 + 184);
  v9 = *(v2 + 160);
  v8 = *(v2 + 168);
  v10 = *(v2 + 120);

  (*(v8 + 8))(v7, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7260);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22FCD17F0;
  sub_22FCC8514();
  sub_22FCC8504();
  *(v2 + 96) = v11;
  sub_22FA2CE7C(&qword_28147B000, 255, MEMORY[0x277D3CA90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7268);
  sub_22FA2CF90(&qword_28147AF40, &qword_27DAD7268);
  sub_22FCC9264();
  sub_22FA2CEC4(v10, v34);
  sub_22FCC8564();
  v12 = sub_22FCC8554();
  swift_allocObject();
  v13 = sub_22FCC8534();
  *(v2 + 192) = v13;
  v14 = type metadata accessor for LocalizedStringProvider();
  v15 = swift_allocObject();
  v16 = type metadata accessor for CreativePromptTemplateCache(0);
  v17 = swift_allocObject();
  *(v2 + 40) = v14;
  *(v2 + 48) = &protocol witness table for LocalizedStringProvider;
  *(v2 + 16) = v15;
  v18 = OBJC_IVAR____TtC13PhotoAnalysis27CreativePromptTemplateCache_logger;
  v19 = qword_28147DC70;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = *(v2 + 160);
  v21 = *(v2 + 168);
  v22 = __swift_project_value_buffer(v20, qword_281487DA0);
  (*(v21 + 16))(v17 + v18, v22, v20);
  *(v17 + 16) = 0;
  sub_22FA2CF78((v2 + 16), v17 + OBJC_IVAR____TtC13PhotoAnalysis27CreativePromptTemplateCache_localizedStringProvider);
  v23 = type metadata accessor for CreativePromptValidator(0);
  swift_allocObject();

  v25 = sub_22FB711B4(v24);
  type metadata accessor for WhimsicalPromptProvider();
  v26 = swift_allocObject();
  *(v2 + 200) = v26;
  v27 = (v26 + OBJC_IVAR____TtC13PhotoAnalysis23WhimsicalPromptProvider_templateCache);
  v27[3] = v16;
  v27[4] = &protocol witness table for CreativePromptTemplateCache;
  *v27 = v17;
  v28 = (v26 + OBJC_IVAR____TtC13PhotoAnalysis23WhimsicalPromptProvider_validator);
  v28[3] = v23;
  v28[4] = &off_2844ABB58;
  *v28 = v25;
  sub_22FCC8674();

  v29 = MEMORY[0x277D3CAA0];
  *(v2 + 80) = v12;
  *(v2 + 88) = v29;
  *(v2 + 56) = v13;
  v30 = objc_opt_self();

  v31 = [v30 ignoreProgress];
  *(v2 + 208) = v31;
  v32 = swift_task_alloc();
  *(v2 + 216) = v32;
  *v32 = v2;
  v32[1] = sub_22FB9DFE4;

  return sub_22FB7A198(v2 + 56, v31);
}

uint64_t sub_22FB9DFE4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v4 = sub_22FB9E3DC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 56);
    v4 = sub_22FB9E110;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FB9E110()
{
  v1 = v0[28];
  v2 = v0[29];
  sub_22FCC64F4();
  swift_allocObject();
  sub_22FCC64E4();
  v0[13] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8B08);
  sub_22FBA4A84();
  v3 = sub_22FCC64D4();
  v5 = v0[25];
  if (v2)
  {
    v6 = v0[20];
    v7 = v0[21];

    swift_setDeallocating();
    (*(v7 + 8))(v5 + OBJC_IVAR____TtC13PhotoAnalysis23WhimsicalPromptProvider_logger, v6);
    __swift_destroy_boxed_opaque_existential_0(v5 + OBJC_IVAR____TtC13PhotoAnalysis23WhimsicalPromptProvider_templateCache);
    __swift_destroy_boxed_opaque_existential_0(v5 + OBJC_IVAR____TtC13PhotoAnalysis23WhimsicalPromptProvider_validator);
    swift_deallocClassInstance();

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[20];
    v11 = v0[21];
    v13 = v4;
    v14 = v3;

    swift_setDeallocating();
    (*(v11 + 8))(v5 + OBJC_IVAR____TtC13PhotoAnalysis23WhimsicalPromptProvider_logger, v10);
    __swift_destroy_boxed_opaque_existential_0(v5 + OBJC_IVAR____TtC13PhotoAnalysis23WhimsicalPromptProvider_templateCache);
    __swift_destroy_boxed_opaque_existential_0(v5 + OBJC_IVAR____TtC13PhotoAnalysis23WhimsicalPromptProvider_validator);
    swift_deallocClassInstance();

    v12 = v0[1];

    return v12(v14, v13);
  }
}

uint64_t sub_22FB9E3DC()
{
  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[21];

  swift_setDeallocating();
  (*(v3 + 8))(v1 + OBJC_IVAR____TtC13PhotoAnalysis23WhimsicalPromptProvider_logger, v2);
  __swift_destroy_boxed_opaque_existential_0(v1 + OBJC_IVAR____TtC13PhotoAnalysis23WhimsicalPromptProvider_templateCache);
  __swift_destroy_boxed_opaque_existential_0(v1 + OBJC_IVAR____TtC13PhotoAnalysis23WhimsicalPromptProvider_validator);
  swift_deallocClassInstance();
  __swift_destroy_boxed_opaque_existential_0((v0 + 7));

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FB9E67C(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22FBAC0B4;

  return sub_22FB9D960();
}

uint64_t sub_22FB9E724()
{
  v1[9] = v0;
  v1[10] = *v0;
  sub_22FCC8574();
  v1[11] = swift_task_alloc();
  v2 = sub_22FCC8524();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = sub_22FCC8684();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB9E8A0, 0, 0);
}

uint64_t sub_22FB9E8A0(uint64_t a1, uint64_t a2)
{
  v3 = v2[10];
  v20 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService);
  sub_22FA2CEC4(v3, v20);
  v4 = sub_22FCC8664();
  v5 = sub_22FCC8EF4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_22FA28000, v4, v5, "Prompt Suggestion - generateContextualPromptSuggestions", v6, 2u);
    MEMORY[0x23190A000](v6, -1, -1);
  }

  v7 = v2[18];
  v9 = v2[15];
  v8 = v2[16];
  v10 = v2[10];

  (*(v8 + 8))(v7, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7260);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22FCD17F0;
  sub_22FCC8514();
  sub_22FCC8504();
  v2[7] = v11;
  sub_22FA2CE7C(&qword_28147B000, 255, MEMORY[0x277D3CA90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7268);
  sub_22FA2CF90(&qword_28147AF40, &qword_27DAD7268);
  sub_22FCC9264();
  sub_22FA2CEC4(v10, v20);
  sub_22FCC8564();
  v12 = sub_22FCC8554();
  swift_allocObject();
  v13 = sub_22FCC8534();
  v2[19] = v13;

  v2[20] = sub_22FC5178C(v14);
  v15 = MEMORY[0x277D3CAA0];
  v2[5] = v12;
  v2[6] = v15;
  v2[2] = v13;
  v16 = objc_opt_self();

  v17 = [v16 ignoreProgress];
  v2[21] = v17;
  v18 = swift_task_alloc();
  v2[22] = v18;
  *v18 = v2;
  v18[1] = sub_22FB9EC10;

  return sub_22FC4CB14((v2 + 2), v17);
}

uint64_t sub_22FB9EC10(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_22FB9EF04;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 16);
    v4 = sub_22FB9ED3C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FB9ED3C()
{
  v1 = v0[23];
  v2 = v0[24];
  sub_22FCC64F4();
  swift_allocObject();
  sub_22FCC64E4();
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8B08);
  sub_22FBA4A84();
  v3 = sub_22FCC64D4();
  if (v2)
  {

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v3;
    v8 = v4;

    v9 = v0[1];

    return v9(v7, v8);
  }
}

uint64_t sub_22FB9EF04()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB9F120(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22FBAC0B4;

  return sub_22FB9E724();
}

uint64_t sub_22FB9F1C8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  type metadata accessor for PromptSuggestionFetcher.Configuration(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB9F258, 0, 0);
}

uint64_t sub_22FB9F258()
{
  v1 = v0[5];

  sub_22FAB166C(v2, v1);
  type metadata accessor for PromptSuggestionFetcher(0);
  v3 = swift_allocObject();
  v0[6] = v3;
  sub_22FA3A77C(0, &qword_28147ADA0);
  v4 = sub_22FCC91C4();
  *(v3 + 16) = v4;
  v5 = v4;
  sub_22FCC8694();
  sub_22FBA4A1C(v1, v3 + OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_configuration, type metadata accessor for PromptSuggestionFetcher.Configuration);
  sub_22FCC82D4();
  swift_allocObject();
  v6 = sub_22FCC82C4();
  sub_22FBAA540(v1, type metadata accessor for PromptSuggestionFetcher.Configuration);
  *(v3 + OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_embeddingCalculator) = v6;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_22FB9F40C;
  v8 = v0[3];

  return PromptSuggestionFetcher.fetchUnvalidatedPromptSuggestions(fetchLimit:)(v8);
}

uint64_t sub_22FB9F40C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_22FB9F740;
  }

  else
  {
    v4 = sub_22FB9F520;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FB9F520()
{
  v2 = v0[8];
  v1 = v0[9];
  sub_22FCC64F4();
  swift_allocObject();
  sub_22FCC64E4();
  v0[2] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8B08);
  sub_22FBA4A84();
  v3 = sub_22FCC64D4();
  v5 = v0[6];
  if (v1)
  {

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v3;
    v9 = v4;

    swift_setDeallocating();

    v10 = OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_logger;
    v11 = sub_22FCC8684();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
    sub_22FBAA540(v5 + OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_configuration, type metadata accessor for PromptSuggestionFetcher.Configuration);

    swift_deallocClassInstance();

    v12 = v0[1];

    return v12(v8, v9);
  }
}

uint64_t sub_22FB9F740()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB9F934(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_22FB9F9F0;

  return sub_22FB9F1C8(a1);
}

uint64_t sub_22FB9F9F0(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *v3;

  if (v4)
  {
    v9 = sub_22FCC6504();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    v12 = sub_22FCC6654();
    sub_22FA7E6C4(a1, a2);
    v11 = v12;
    v10 = 0;
    v9 = v12;
  }

  v13 = *(v7 + 24);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

uint64_t sub_22FB9FD1C(int a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v5 = sub_22FCC8C44();
  v4[4] = v5;

  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = sub_22FBAC0C8;

  return sub_22FBA7ED0(v5);
}

uint64_t sub_22FB9FE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[34] = v18;
  v9[35] = v8;
  v9[32] = a8;
  v9[33] = v17;
  v9[30] = a6;
  v9[31] = a7;
  v9[28] = a4;
  v9[29] = a5;
  v9[26] = a2;
  v9[27] = a3;
  v9[25] = a1;
  v9[36] = *v8;
  v10 = sub_22FCC67F4();
  v9[37] = v10;
  v9[38] = *(v10 - 8);
  v9[39] = swift_task_alloc();
  v11 = type metadata accessor for TemplatedPrompt();
  v9[40] = v11;
  v9[41] = *(v11 - 8);
  v9[42] = swift_task_alloc();
  v12 = sub_22FCC7BC4();
  v9[43] = v12;
  v9[44] = *(v12 - 8);
  v9[45] = swift_task_alloc();
  v9[46] = swift_task_alloc();
  v13 = sub_22FCC7E14();
  v9[47] = v13;
  v9[48] = *(v13 - 8);
  v9[49] = swift_task_alloc();
  v9[50] = swift_task_alloc();
  v14 = sub_22FCC8684();
  v9[51] = v14;
  v9[52] = *(v14 - 8);
  v9[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBA0090, 0, 0);
}

uint64_t sub_22FBA0090(uint64_t a1, uint64_t a2)
{
  v103 = v2;
  v3 = v2[36];
  v4 = v2[34];
  v5 = v2[32];
  v6 = v2[30];
  v7 = v2[28];
  v8 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService);
  sub_22FA2CEC4(v3, v8);

  v9 = sub_22FCC8664();
  v10 = sub_22FCC8F34();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v2[52];
  v12 = v2[53];
  v14 = v2[51];
  if (v11)
  {
    v82 = v2[33];
    v85 = v2[34];
    v76 = v2[31];
    v79 = v2[32];
    v73 = v2[29];
    v74 = v2[30];
    v93 = v10;
    v15 = v2[28];
    v71 = v2[27];
    v99 = v2[51];
    v16 = v5;
    v91 = v9;
    v17 = v6;
    v19 = v2[25];
    v18 = v2[26];
    v96 = v2[53];
    v20 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v102[0] = v88;
    *v20 = 136316162;
    *(v20 + 4) = sub_22FA2F600(v19, v18, v102);
    *(v20 + 12) = 2080;
    if (v15)
    {
      v21 = v71;
    }

    else
    {
      v21 = 7104878;
    }

    if (v15)
    {
      v22 = v7;
    }

    else
    {
      v22 = 0xE300000000000000;
    }

    v23 = sub_22FA2F600(v21, v22, v102);

    *(v20 + 14) = v23;
    *(v20 + 22) = 2080;
    if (v74)
    {
      v24 = v73;
    }

    else
    {
      v24 = 7104878;
    }

    if (v74)
    {
      v25 = v17;
    }

    else
    {
      v25 = 0xE300000000000000;
    }

    v26 = sub_22FA2F600(v24, v25, v102);

    *(v20 + 24) = v26;
    *(v20 + 32) = 2080;
    if (v79)
    {
      v27 = v76;
    }

    else
    {
      v27 = 7104878;
    }

    if (v79)
    {
      v28 = v16;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    v29 = sub_22FA2F600(v27, v28, v102);

    *(v20 + 34) = v29;
    *(v20 + 42) = 2080;
    if (v85)
    {
      v30 = v82;
    }

    else
    {
      v30 = 7104878;
    }

    if (v85)
    {
      v31 = v4;
    }

    else
    {
      v31 = 0xE300000000000000;
    }

    v32 = sub_22FA2F600(v30, v31, v102);

    *(v20 + 44) = v32;
    _os_log_impl(&dword_22FA28000, v91, v93, "Prompt Suggestions Database - debugging %s, person: %s, city: %s, place: %s, time: %s", v20, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v88, -1, -1);
    MEMORY[0x23190A000](v20, -1, -1);

    (*(v13 + 8))(v96, v99);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v34 = v2[49];
  v33 = v2[50];
  v35 = v2[47];
  v36 = v2[48];
  v89 = v2[34];
  v86 = v2[33];
  v97 = v2[30];
  v100 = v2[32];
  v92 = v2[29];
  v94 = v2[31];
  v83 = v2[28];
  v77 = v2[26];
  v80 = v2[27];
  v75 = v2[25];
  v37 = *(*(v2[35] + 128) + 112);
  v2[54] = v37;
  v38 = *(v37 + 112);

  v39 = [v38 photoLibrary];
  v2[55] = v39;
  sub_22FCC7884();
  swift_allocObject();
  v40 = v39;
  sub_22FCC7874();
  sub_22FCC7DE4();
  v72 = *(v36 + 16);
  v72(v34, v33, v35);
  v41 = type metadata accessor for PromptSuggestionMeaningfulEventGroundingProvider();
  v42 = swift_allocObject();
  v2[56] = v42;

  sub_22FCC8674();
  (*(v36 + 32))(v42 + OBJC_IVAR____TtC13PhotoAnalysis48PromptSuggestionMeaningfulEventGroundingProvider_storyPhotoLibraryContext, v34, v35);
  *(v42 + OBJC_IVAR____TtC13PhotoAnalysis48PromptSuggestionMeaningfulEventGroundingProvider_graphManager) = v37;
  v43 = type metadata accessor for LocalizedStringProvider();
  v44 = swift_allocObject();
  type metadata accessor for PromptLocalizer();
  inited = swift_initStackObject();
  v2[57] = inited;
  inited[5] = v43;
  inited[6] = &protocol witness table for LocalizedStringProvider;
  inited[2] = v44;
  v46 = sub_22FC3D71C(v75, v77, v80, v83, v94, v100, v92, v97, v86, v89);
  v90 = v47;
  v48 = v2[49];
  v49 = v2[46];
  v50 = v2[44];
  v51 = v2[42];
  v78 = v2[43];
  v81 = v2[45];
  v52 = v2[40];
  v53 = v2[39];
  v101 = v2[38];
  v95 = v2[41];
  v98 = v2[37];
  v54 = v2[25];
  v84 = v2[26];
  v87 = v46;
  v72(v48, v2[50], v2[47]);
  v102[3] = v41;
  v102[4] = sub_22FA2CE7C(&qword_28147B8F8, 255, type metadata accessor for PromptSuggestionMeaningfulEventGroundingProvider);
  v102[0] = v42;

  v2[58] = _s13PhotoAnalysis25PromptSuggestionValidatorC05storyA14LibraryContext37momentBasedGroundingAndAssetsProvider18maxAssetFetchCountAC18PhotosIntelligence05StoryagH0V_AG06MomentjklmN0_pSgSitcfC_0(v48, v102, 50);

  v55 = v49;
  sub_22FCC7B94();
  v56 = *(v50 + 16);
  v56(v81, v55, v78);
  sub_22FCC67E4();
  (*(v101 + 16))(v51, v53, v98);
  v57 = (v51 + v52[5]);
  *v57 = v54;
  v57[1] = v84;
  v58 = (v51 + v52[6]);
  *v58 = v87;
  v58[1] = v90;
  v59 = (v51 + v52[7]);
  *v59 = v87;
  v59[1] = v90;
  *(v51 + v52[8]) = MEMORY[0x277D84F90];
  *(v51 + v52[9]) = 0;
  *(v51 + v52[10]) = 0;
  v60 = (v51 + v52[11]);
  *(v60 + 41) = 0u;
  v60[1] = 0u;
  v60[2] = 0u;
  *v60 = 0u;
  v56(v51 + v52[13], v81, v78);

  v61 = _s13PhotoAnalysis15TemplatedPromptV10promptHash4fromS2S_tFZ_0(v54, v84);
  v63 = v62;
  (*(v101 + 8))(v53, v98);
  v64 = *(v50 + 8);
  v2[59] = v64;
  v2[60] = (v50 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v64(v81, v78);
  v65 = (v51 + v52[12]);
  *v65 = v61;
  v65[1] = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7860);
  v66 = (*(v95 + 80) + 32) & ~*(v95 + 80);
  v67 = swift_allocObject();
  v2[61] = v67;
  *(v67 + 16) = xmmword_22FCD1800;
  sub_22FBA4A1C(v51, v67 + v66, type metadata accessor for TemplatedPrompt);
  sub_22FCC8554();
  v2[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7F80);
  v2[13] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v2 + 9);
  MEMORY[0x231907860]();
  v68 = [objc_opt_self() ignoreProgress];
  v2[62] = v68;
  v69 = swift_task_alloc();
  v2[63] = v69;
  *v69 = v2;
  v69[1] = sub_22FBA0A60;

  return PromptSuggestionValidator.validateOfflineLLMQU(_:eventRecorder:progressReporter:)((v2 + 19), v67, (v2 + 9), v68);
}

uint64_t sub_22FBA0A60(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 512) = v1;

  if (v1)
  {

    v5 = sub_22FBA0DB8;
  }

  else
  {
    v6 = *(v4 + 496);

    *(v4 + 520) = a1;
    __swift_destroy_boxed_opaque_existential_0(v4 + 72);
    v5 = sub_22FBA0BA8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FBA0BA8()
{
  v1 = *(v0 + 520);
  v17 = *(v0 + 472);
  v2 = *(v0 + 456);
  v3 = *(v0 + 400);
  v4 = *(v0 + 384);
  v16 = *(v0 + 376);
  v5 = *(v0 + 368);
  v14 = *(v0 + 440);
  v15 = *(v0 + 344);
  v13 = *(v0 + 336);
  v6 = *(v0 + 152);
  v7 = *(v0 + 176);
  v8 = *(v0 + 160);
  *(v0 + 184) = 0;
  *(v0 + 192) = 0xE000000000000000;
  *(v0 + 112) = v1;
  *(v0 + 120) = v6;
  *(v0 + 128) = v8;
  *(v0 + 144) = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8B00);
  sub_22FCC94A4();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0(v2 + 16);

  v9 = *(v0 + 184);
  v10 = *(v0 + 192);
  sub_22FBAA540(v13, type metadata accessor for TemplatedPrompt);
  v17(v5, v15);
  (*(v4 + 8))(v3, v16);

  v11 = *(v0 + 8);

  return v11(v9, v10);
}

uint64_t sub_22FBA0DB8()
{
  v10 = v0[59];
  v1 = v0[55];
  v9 = v0[50];
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[46];
  v6 = v0[42];
  v5 = v0[43];

  sub_22FBAA540(v6, type metadata accessor for TemplatedPrompt);
  v10(v4, v5);
  (*(v2 + 8))(v9, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 9));

  v7 = v0[1];

  return v7();
}

uint64_t sub_22FBA10F8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *aBlock, uint64_t a7, int a8, char a9)
{
  v9[2] = a7;
  v9[3] = _Block_copy(aBlock);
  v29 = sub_22FCC8A84();
  v15 = v14;
  v9[4] = v14;
  if (a2)
  {
    v28 = sub_22FCC8A84();
    v17 = v16;
    v9[5] = v16;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v27 = 0;
    v19 = 0;
    v9[6] = 0;
    if (a4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v28 = 0;
  v17 = 0;
  v9[5] = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v27 = sub_22FCC8A84();
  v19 = v18;
  v9[6] = v18;
  if (a4)
  {
LABEL_4:
    v20 = sub_22FCC8A84();
    a4 = v21;
    goto LABEL_8;
  }

LABEL_7:
  v20 = 0;
LABEL_8:
  v9[7] = a4;
  v22 = a5;

  if (a5)
  {
    sub_22FCC8A84();
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v9[8] = v24;
  v25 = swift_task_alloc();
  v9[9] = v25;
  *v25 = v9;
  v25[1] = sub_22FBA12A8;

  return sub_22FB9FE04(v29, v15, v28, v17, v27, v19, v20, a4);
}

uint64_t sub_22FBA12A8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;

  if (v2)
  {
    v5 = sub_22FCC6504();

    v6 = v5;
    v7 = 0;
  }

  else
  {
    v5 = sub_22FCC8A54();

    v7 = v5;
    v6 = 0;
  }

  v8 = *(v3 + 24);
  (v8)[2](v8, v7, v6);

  _Block_release(v8);
  v9 = *(v4 + 8);

  return v9();
}

void sub_22FBA14C8(uint64_t a1, void *a2)
{
  v79 = a2;
  v83 = *v2;
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v6);
  v8 = &v76 - v7;
  v9 = *(a1 + 16);
  v77 = v10;
  v78 = v5;
  if (v9)
  {
    sub_22FA3A77C(0, &qword_27DAD8AF8);
    *&v84 = swift_getObjCClassFromMetadata();
    v82 = (v5 + 8);
    v11 = (a1 + 40);
    v12 = MEMORY[0x277D84F90];
    *&v13 = 136315138;
    v80 = v13;
    do
    {
      v15 = *(v11 - 1);
      v14 = *v11;

      v16 = sub_22FCC8A54();
      v17 = [v84 localIdentifierWithUUID_];

      if (v17)
      {

        v19 = sub_22FCC8A84();
        v21 = v20;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_22FAC1D0C(0, *(v12 + 2) + 1, 1, v12);
        }

        v23 = *(v12 + 2);
        v22 = *(v12 + 3);
        if (v23 >= v22 >> 1)
        {
          v12 = sub_22FAC1D0C((v22 > 1), v23 + 1, 1, v12);
        }

        *(v12 + 2) = v23 + 1;
        v24 = &v12[16 * v23];
        *(v24 + 4) = v19;
        *(v24 + 5) = v21;
      }

      else
      {
        v25 = sub_22FA2CE7C(&qword_28147FF30, v18, type metadata accessor for MomentGraphService);
        sub_22FA2CEC4(v83, v25);

        v26 = sub_22FCC8664();
        v27 = sub_22FCC8F14();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v81 = v12;
          v29 = v8;
          v30 = v4;
          v31 = v28;
          v32 = swift_slowAlloc();
          v85 = v32;
          *v31 = v80;
          v33 = sub_22FA2F600(v15, v14, &v85);

          *(v31 + 4) = v33;
          _os_log_impl(&dword_22FA28000, v26, v27, "Error getting local identifier for highlight uuid %s", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v32);
          MEMORY[0x23190A000](v32, -1, -1);
          v34 = v31;
          v4 = v30;
          v8 = v29;
          v12 = v81;
          MEMORY[0x23190A000](v34, -1, -1);
        }

        else
        {
        }

        (*v82)(v8, v4);
      }

      v11 += 2;
      --v9;
    }

    while (v9);
  }

  v35 = v79;
  v36 = [v79 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8);
  v37 = swift_allocObject();
  v84 = xmmword_22FCD1800;
  *(v37 + 16) = xmmword_22FCD1800;
  *(v37 + 32) = sub_22FCC8A84();
  *(v37 + 40) = v38;
  v39 = sub_22FCC8C24();

  [v36 setFetchPropertySets_];

  v40 = objc_opt_self();

  v41 = sub_22FCC8C24();

  v42 = [v40 fetchAssetCollectionsWithLocalIdentifiers:v41 options:v36];

  v43 = [v35 librarySpecificFetchOptions];
  v44 = swift_allocObject();
  *(v44 + 16) = v84;
  *(v44 + 32) = sub_22FCC8A84();
  *(v44 + 40) = v45;
  v46 = sub_22FCC8C24();

  [v43 setFetchPropertySets_];

  v47 = objc_opt_self();
  *&v84 = v42;
  v48 = [v47 fetchAssetsInAssetCollections:v42 options:v43];
  if (v48)
  {
    v50 = v48;
    v51 = [v48 count];
    if ((v51 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v52 = v51;
      v82 = v36;
      v83 = v43;
      if (!v51)
      {
LABEL_27:

        return;
      }

      v53 = 0;
      v54 = MEMORY[0x277D84F90];
      while (1)
      {
        v55 = objc_autoreleasePoolPush();
        v56 = [v50 objectAtIndexedSubscript_];
        v57 = [v56 uuid];

        if (!v57)
        {
          break;
        }

        v58 = sub_22FCC8A84();
        v60 = v59;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_22FAC1D0C(0, *(v54 + 2) + 1, 1, v54);
        }

        v62 = *(v54 + 2);
        v61 = *(v54 + 3);
        if (v62 >= v61 >> 1)
        {
          v54 = sub_22FAC1D0C((v61 > 1), v62 + 1, 1, v54);
        }

        ++v53;
        *(v54 + 2) = v62 + 1;
        v63 = &v54[16 * v62];
        *(v63 + 4) = v58;
        *(v63 + 5) = v60;
        objc_autoreleasePoolPop(v55);
        if (v52 == v53)
        {
          goto LABEL_27;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v64 = sub_22FA2CE7C(&qword_28147FF30, v49, type metadata accessor for MomentGraphService);
    v65 = v77;
    sub_22FA2CEC4(v83, v64);
    v66 = sub_22FCC8664();
    v67 = sub_22FCC8F14();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v85 = v69;
      *v68 = 136315138;

      v71 = MEMORY[0x2319080B0](v70, MEMORY[0x277D837D0]);
      v83 = v43;
      v72 = v71;
      v74 = v73;

      v75 = sub_22FA2F600(v72, v74, &v85);

      *(v68 + 4) = v75;
      _os_log_impl(&dword_22FA28000, v66, v67, "No assets for highlights %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x23190A000](v69, -1, -1);
      MEMORY[0x23190A000](v68, -1, -1);
    }

    else
    {
    }

    (*(v78 + 8))(v65, v4);
  }
}

uint64_t sub_22FBA1CF4()
{
  v1 = *(*(v0 + 16) + 160);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_22FB3CD0C;
  v3 = *(v0 + 16);

  return sub_22FAE4688(v1, v3);
}

uint64_t sub_22FBA1E04(uint64_t a1, uint64_t a2)
{
  result = sub_22FA2CE7C(&qword_28147FF38, a2, type metadata accessor for MomentGraphService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FBA1E5C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_22FA2CE7C(&qword_28147FF28, a2, type metadata accessor for MomentGraphService);
  result = sub_22FA2CE7C(&qword_28147FF40, v3, type metadata accessor for MomentGraphService);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FBA1EE0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v30 = a4;
  v31 = a3;
  v29 = a2;
  v32 = sub_22FCC8014();
  v7 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22FCC67F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[3] = type metadata accessor for MomentGraphWorker();
  v33[4] = sub_22FA2CE7C(&qword_281480230, 255, type metadata accessor for MomentGraphWorker);
  v33[0] = a1;
  *(a5 + 16) = 0;
  *(a5 + 24) = 1;
  *(a5 + 32) = 0xD000000000000018;
  *(a5 + 40) = 0x800000022FCE68B0;
  sub_22FCC67E4();
  v14 = sub_22FCC67B4();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  *(a5 + 48) = v14;
  *(a5 + 56) = v16;
  *(a5 + 64) = 0x40F5180000000000;
  *(a5 + 72) = 0xD000000000000026;
  *(a5 + 80) = 0x800000022FCE68D0;
  *(a5 + 184) = xmmword_22FCDA000;
  sub_22FCC8E34();
  *(a5 + 200) = v17 * 9.5;
  *(a5 + 208) = 50;
  v18 = objc_opt_self();
  v19 = [v18 currentSceneVersion];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 shortValue];
  }

  else
  {
    v21 = 100;
  }

  *(a5 + 216) = v21;
  v22 = [v18 currentUnifiedEmbeddingVersion];
  if (!v22)
  {
    v22 = sub_22FCC8ED4();
  }

  v23 = v22;
  v24 = sub_22FCC8EC4();

  *(a5 + 224) = v24;
  *(a5 + 232) = 0x3FE999999999999ALL;
  *(a5 + OBJC_IVAR____TtC13PhotoAnalysis24LibraryUnderstandingTask_momentsProcessedCount) = 0;
  v25 = OBJC_IVAR____TtC13PhotoAnalysis24LibraryUnderstandingTask_osLog;
  sub_22FA3A77C(0, &qword_28147ADA0);
  sub_22FCC6E94();
  *(a5 + v25) = sub_22FCC91C4();
  sub_22FCC8674();
  sub_22FA2D328(v33, a5 + 88);
  *(a5 + 168) = v29;
  v26 = v31;
  sub_22FA4FAA4(v31, a5 + 128, &unk_27DAD83A0);
  *(a5 + 176) = v30 & 1;
  sub_22FCC7FC4();
  sub_22FA2B420(v26, &unk_27DAD83A0);
  __swift_destroy_boxed_opaque_existential_0(v33);
  (*(v7 + 32))(a5 + OBJC_IVAR____TtC13PhotoAnalysis24LibraryUnderstandingTask_libraryUnderstandingGenerator, v9, v32);
  return a5;
}

uint64_t sub_22FBA22C4(uint64_t a1)
{
  v2 = type metadata accessor for TaskRecords(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22[-1] - v6;
  v22[3] = type metadata accessor for LegacyTask();
  v22[4] = sub_22FA2CE7C(&qword_281481AE0, 255, type metadata accessor for LegacyTask);
  v22[0] = a1;
  v8 = *(a1 + 16);

  v9 = [v8 incrementalKey];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = v9;
  v11 = sub_22FCC8A84();
  v13 = v12;

  if (([v8 respondsToSelector_] & 1) == 0 || objc_msgSend(v8, sel_version) < 1)
  {
LABEL_8:
    sub_22FC34900(v4);
    v16 = *(v4 + 2);
    if (*(v16 + 16))
    {
      v17 = sub_22FA2DB54(v11, v13);
      v19 = v18;

      if (v19)
      {
        v15 = *(*(v16 + 56) + 8 * v17);

LABEL_13:
        sub_22FBAA540(v4, type metadata accessor for TaskRecords);
        goto LABEL_14;
      }
    }

    else
    {
    }

    v15 = 0;
    goto LABEL_13;
  }

  sub_22FC35168(v22, v7);
  v14 = type metadata accessor for TaskRecord(0);
  if ((*(*(v14 - 8) + 48))(v7, 1, v14) != 1)
  {
    sub_22FA2B420(v7, &qword_27DAD84B8);
    goto LABEL_8;
  }

  sub_22FA2B420(v7, &qword_27DAD84B8);
LABEL_6:
  v15 = 0;
LABEL_14:
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v15;
}

uint64_t sub_22FBA255C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22FBA2580, a4, 0);
}

uint64_t sub_22FBA2580()
{
  v1 = *(v0[3] + 136);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_22FBA263C;
  v3 = v0[4];

  return (sub_22FBE8A7C)(v3, v1);
}

uint64_t sub_22FBA263C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = v7[1];

    return v8();
  }

  else
  {
    v10 = v6[3];
    v6[6] = a2;
    v6[7] = a1;

    return MEMORY[0x2822009F8](sub_22FBA2798, v10, 0);
  }
}

uint64_t sub_22FBA2798()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 56);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_22FBA27BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22FBA27E0, a4, 0);
}

uint64_t sub_22FBA27E0()
{
  v1 = *(v0[3] + 136);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_22FBA289C;
  v3 = v0[4];

  return (sub_22FBE99F4)(v3, v1);
}

uint64_t sub_22FBA289C(uint64_t a1)
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
    v8 = *(v4 + 24);
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_22FBAC0B8, v8, 0);
  }
}

uint64_t sub_22FBA29E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v4[5] = type metadata accessor for LegacyTask();
  v4[6] = sub_22FA2CE7C(&qword_281481AE0, 255, type metadata accessor for LegacyTask);
  v4[2] = a1;

  return MEMORY[0x2822009F8](sub_22FBA2AE4, a4, 0);
}

uint64_t sub_22FBA2AE4()
{
  v16 = v0;
  v15[1] = *MEMORY[0x277D85DE8];
  v1 = [*(v0[12] + 16) incrementalKey];
  if (v1)
  {
    v2 = v0[13];

    v3 = *(v2 + 128);
    v0[16] = v3;
    if (v3)
    {
      v4 = *(v3 + 112);
      v0[17] = v4;

      return MEMORY[0x2822009F8](sub_22FBA2D44, v4, 0);
    }

    sub_22FA2D328((v0 + 2), (v0 + 7));
    v5 = sub_22FCC8664();
    v6 = sub_22FCC8F14();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15[0] = v8;
      *v7 = 136446210;
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v9 = sub_22FBAF404();
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
      v12 = sub_22FA2F600(v9, v11, v15);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_22FA28000, v5, v6, "Failed to retrieve incremental change for task '%{public}s': No changeReader available", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x23190A000](v8, -1, -1);
      MEMORY[0x23190A000](v7, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
    }
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  v13 = v0[1];

  return v13(0, 0);
}

uint64_t sub_22FBA2D44()
{
  v1 = v0[15];
  v2 = [*(v0[17] + 112) currentChangeToken];
  type metadata accessor for PhotoKitChangeToken();
  v3 = swift_allocObject();
  v0[18] = v3;
  *(v3 + 16) = v2;

  return MEMORY[0x2822009F8](sub_22FBA2E18, v1, 0);
}

uint64_t sub_22FBA2E18()
{
  v1 = *(*(v0 + 104) + 120);
  *(v0 + 152) = v1;

  return MEMORY[0x2822009F8](sub_22FBA2EAC, v1, 0);
}

uint64_t sub_22FBA2EAC()
{
  v1 = v0[15];
  v0[20] = sub_22FBA22C4(v0[12]);

  return MEMORY[0x2822009F8](sub_22FBA2F4C, v1, 0);
}

uint64_t sub_22FBA2F4C()
{
  v35 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
  v1 = v0[20];
  if (v1)
  {
    v0[21] = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger;
    sub_22FA2D328((v0 + 2), (v0 + 7));

    v2 = sub_22FCC8664();
    v3 = sub_22FCC8F34();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v34[0] = v6;
      *v4 = 136446466;
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v7 = sub_22FBAF404();
      v9 = v8;
      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
      v10 = sub_22FA2F600(v7, v9, v34);

      *(v4 + 4) = v10;
      *(v4 + 12) = 2114;
      v11 = *(v1 + 16);
      *(v4 + 14) = v11;
      *v5 = v11;
      v12 = v11;
      _os_log_impl(&dword_22FA28000, v2, v3, "Last incremental token for %{public}s: %{public}@", v4, 0x16u);
      sub_22FA2B420(v5, &unk_27DAD7B10);
      MEMORY[0x23190A000](v5, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x23190A000](v6, -1, -1);
      MEMORY[0x23190A000](v4, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
    }

    if (qword_281481CC0 != -1)
    {
      swift_once();
    }

    v21 = qword_281488098;
    if (qword_281481CB8 != -1)
    {
      swift_once();
    }

    v22 = qword_281488090;
    if (qword_281488090 <= 0 && v21 < 1)
    {
      v23 = *(v0[15] + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_changeCache);
      v0[22] = v23;

      return MEMORY[0x2822009F8](sub_22FBA3458, v23, 0);
    }

    v24 = *(*(v0[16] + 112) + 112);
    v25 = *(v1 + 16);
    v26 = objc_allocWithZone(MEMORY[0x277D3B9C0]);
    v27 = v24;
    v28 = v25;
    v29 = [v26 initWithPhotoLibrary:v27 updateType:1 changeStreamToken:v28];
    v34[0] = v29;
    if (v21 >= 1)
    {
      sub_22FB28A2C(v27, v34);
    }

    if (v22 >= 1)
    {
      sub_22FB28F20(v27, v34);
    }

    v30 = [v29 hasAnythingToDo];

    if (!v30)
    {

      v29 = 0;
    }

    v31 = v0[20];
  }

  else
  {
    sub_22FA2D328((v0 + 2), (v0 + 7));
    v13 = sub_22FCC8664();
    v14 = sub_22FCC8F34();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34[0] = v16;
      *v15 = 136446210;
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v17 = sub_22FBAF404();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
      v20 = sub_22FA2F600(v17, v19, v34);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_22FA28000, v13, v14, "No last incremental token recorded for task: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x23190A000](v16, -1, -1);
      MEMORY[0x23190A000](v15, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
    }

    v29 = 0;
    v31 = v0[18];
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  v32 = v0[1];

  return v32(v31, v29);
}

uint64_t sub_22FBA3458()
{
  v1 = *(v0 + 120);
  *(v0 + 184) = sub_22FA37DB0();

  return MEMORY[0x2822009F8](sub_22FBA3504, v1, 0);
}

uint64_t sub_22FBA3504()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 144);

    v2 = *(v0 + 184);
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
    v3 = *(v0 + 8);

    return v3(v1, v2);
  }

  else
  {
    v5 = *(v0 + 160);
    *(v0 + 192) = CFAbsoluteTimeGetCurrent();
    v6 = *(v5 + 16);
    *(v0 + 200) = v6;
    v7 = *(v0 + 128);
    v8 = v6;

    return MEMORY[0x2822009F8](sub_22FBA3638, v7, 0);
  }
}

uint64_t sub_22FBA3638()
{
  v1 = v0[25];
  v2 = sub_22FCC9014();
  v4 = v3;
  v5 = [objc_allocWithZone(MEMORY[0x277CD9928]) init];
  [v5 setToken_];
  [v5 setMaximumChangeThreshold_];
  sub_22FCC8FF4();
  v6 = *(v0[16] + 120);
  v0[7] = 0;
  v7 = [v6 fetchPersistentChangesWithRequest:v5 error:v0 + 7];
  v8 = v0[7];
  if (v7)
  {
    v9 = v7;
    v10 = v8;
    sub_22FCC9004();
    v0[26] = sub_22FA38ABC(v9, v0[25], 1, v4, 1, 500000, 100000, 10000);
    v13 = v0[25];
    v14 = v0[15];

    v15 = sub_22FBA3854;
  }

  else
  {
    v11 = v8;
    v12 = sub_22FCC6514();

    swift_willThrow();
    v0[27] = v12;
    v14 = v0[15];

    v15 = sub_22FBA3B04;
  }

  return MEMORY[0x2822009F8](v15, v14, 0);
}

uint64_t sub_22FBA3854()
{
  Current = CFAbsoluteTimeGetCurrent();
  sub_22FA4FD84();
  sub_22FA4FD84();
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = Current - *(v0 + 192);
    v5 = swift_slowAlloc();
    *v5 = 68157952;
    *(v5 + 4) = 3;
    *(v5 + 8) = 2048;
    *(v5 + 10) = v4;
    _os_log_impl(&dword_22FA28000, v2, v3, "Retrieve incremental change in %.*f seconds.", v5, 0x12u);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  v6 = *(v0 + 176);

  return MEMORY[0x2822009F8](sub_22FBA39A0, v6, 0);
}

uint64_t sub_22FBA39A0()
{
  v1 = *(v0 + 120);
  sub_22FA38284(*(v0 + 208));

  return MEMORY[0x2822009F8](sub_22FBA3A4C, v1, 0);
}

uint64_t sub_22FBA3A4C()
{
  v1 = v0[26];
  v2 = v0[18];

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_22FBA3B04()
{
  v1 = v0[27];
  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F14();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[27];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22FA28000, v3, v4, "Failed to read incremental change: %{public}@", v7, 0xCu);
    sub_22FA2B420(v8, &unk_27DAD7B10);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[18];
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  v12 = v0[1];

  return v12(v11, 0);
}

uint64_t sub_22FBA3CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22FBA3D00, a4, 0);
}

uint64_t sub_22FBA3D00()
{
  v1 = *(v0[3] + 136);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_22FBA289C;
  v3 = v0[4];

  return (sub_22FBEA778)(v3, v1);
}

uint64_t sub_22FBA3DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22FBA3DE0, a4, 0);
}

uint64_t sub_22FBA3DE0()
{
  v1 = *(v0[3] + 136);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_22FBA289C;
  v3 = v0[4];

  return (sub_22FBEB3EC)(v3, v1);
}

uint64_t sub_22FBA3E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22FBA3EC0, a4, 0);
}

uint64_t sub_22FBA3EC0()
{
  v1 = *(v0[3] + 136);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_22FBA289C;
  v3 = v0[4];

  return (sub_22FBEC060)(v3, v1);
}

uint64_t sub_22FBA3F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22FBA3FA0, a4, 0);
}

uint64_t sub_22FBA3FA0()
{
  v1 = *(v0[3] + 136);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_22FBA405C;
  v3 = v0[4];

  return (sub_22FBECCD4)(v3, v1);
}

uint64_t sub_22FBA405C(uint64_t a1)
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
    v8 = *(v4 + 24);
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_22FBA41A8, v8, 0);
  }
}

uint64_t sub_22FBA41CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22FBA41F0, a4, 0);
}

uint64_t sub_22FBA41F0()
{
  v1 = *(v0[3] + 136);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_22FBA289C;
  v3 = v0[4];

  return (sub_22FBEDC68)(v3, v1);
}

uint64_t sub_22FBA42AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22FBA42D0, a4, 0);
}

uint64_t sub_22FBA42D0()
{
  v1 = *(v0[3] + 136);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_22FBA289C;
  v3 = v0[4];

  return (sub_22FBEE8DC)(v3, v1);
}

uint64_t sub_22FBA438C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22FBA43B0, a4, 0);
}

uint64_t sub_22FBA43B0()
{
  v1 = *(v0[3] + 136);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_22FBA289C;
  v3 = v0[4];

  return (sub_22FBF04B8)(v3, v1);
}

id sub_22FBA446C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v28 = a3;
  ObjectType = swift_getObjectType();
  v29 = sub_22FCC8684();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22FCC67F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[3] = type metadata accessor for MomentGraphWorker();
  v32[4] = sub_22FA2CE7C(&qword_281480230, 255, type metadata accessor for MomentGraphWorker);
  v32[0] = a1;
  *&a4[OBJC_IVAR___PHAPromptSuggestionCachingTask_version] = 0;
  a4[OBJC_IVAR___PHAPromptSuggestionCachingTask_shouldRecordCompletion] = 1;
  v13 = &a4[OBJC_IVAR___PHAPromptSuggestionCachingTask_name];
  *v13 = 0xD00000000000001BLL;
  v13[1] = 0x800000022FCE62A0;
  v14 = &a4[OBJC_IVAR___PHAPromptSuggestionCachingTask_identifier];
  sub_22FCC67E4();
  v15 = sub_22FCC67B4();
  v17 = v16;
  (*(v10 + 8))(v12, v9);
  *v14 = v15;
  v14[1] = v17;
  *&a4[OBJC_IVAR___PHAPromptSuggestionCachingTask_priority] = 4;
  *&a4[OBJC_IVAR___PHAPromptSuggestionCachingTask_periodicity] = 0x40F5180000000000;
  v18 = &a4[OBJC_IVAR___PHAPromptSuggestionCachingTask_incrementalKey];
  *v18 = 0;
  v18[1] = 0;
  *&a4[OBJC_IVAR___PHAPromptSuggestionCachingTask_maxTimeoutRetryCount] = 3;
  *&a4[OBJC_IVAR___PHAPromptSuggestionCachingTask_validationTimeoutSec] = 0x405E000000000000;
  *&a4[OBJC_IVAR___PHAPromptSuggestionCachingTask_searchTimeoutSec] = 0x4066800000000000;
  v19 = OBJC_IVAR___PHAPromptSuggestionCachingTask_log;
  sub_22FA3A77C(0, &qword_28147ADA0);
  *&a4[v19] = sub_22FCC91C4();
  *&a4[OBJC_IVAR___PHAPromptSuggestionCachingTask____lazy_storage___promptSuggestionFetcher] = 0;
  sub_22FA2D328(v32, &a4[OBJC_IVAR___PHAPromptSuggestionCachingTask_worker]);
  *&a4[OBJC_IVAR___PHAPromptSuggestionCachingTask_graphManager] = a2;
  v20 = *(a2 + 112);

  v21 = [v20 photoLibrary];
  *&a4[OBJC_IVAR___PHAPromptSuggestionCachingTask_photoLibrary] = v21;
  v22 = v28;
  sub_22FA4FAA4(v28, &a4[OBJC_IVAR___PHAPromptSuggestionCachingTask_taskProductivityReporter], &unk_27DAD83A0);
  v23 = *&a4[v19];
  sub_22FCC8694();
  (*(v27 + 32))(&a4[OBJC_IVAR___PHAPromptSuggestionCachingTask_logger], v8, v29);
  v31.receiver = a4;
  v31.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v31, sel_init);
  sub_22FA2B420(v22, &unk_27DAD83A0);
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v24;
}

void *sub_22FBA4878()
{
  v0 = &unk_2844CF980;
  v1 = sub_22FA90FB0();

  v2 = [v1 classesForSelector:sel_requestAssetSearchKeywordsForAssetCollectionUUIDs_ofType_operationID_reply_ argumentIndex:0 ofReply:0];
  sub_22FCC8E84();

  v3 = objc_allocWithZone(MEMORY[0x277CBEB58]);
  v4 = sub_22FCC8E64();

  v5 = [v3 initWithSet_];

  sub_22FA3A77C(0, &qword_28147AEC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8AF0);
  [v5 addObject_];
  swift_unknownObjectRelease();
  v6 = v5;
  v7 = sub_22FCC8E64();

  [v1 setClasses:v7 forSelector:sel_requestAssetSearchKeywordsForAssetCollectionUUIDs_ofType_operationID_reply_ argumentIndex:0 ofReply:0];
  return v1;
}

uint64_t sub_22FBA4A1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_22FBA4A84()
{
  result = qword_27DAD8B10;
  if (!qword_27DAD8B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD8B08);
    sub_22FA2CE7C(&qword_27DAD8B18, 255, MEMORY[0x277D3C160]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8B10);
  }

  return result;
}

uint64_t sub_22FBA4B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22FA2C21C;

  return sub_22FB9C580(a1, a2, a3, a4, a5, v12, v13, v14);
}

unint64_t sub_22FBA4C28()
{
  result = qword_28147FF48;
  if (!qword_28147FF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147FF48);
  }

  return result;
}

uint64_t sub_22FBA4C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v7 = a5;
  v33 = a5;
  v12 = *v6;
  v31 = a1;
  v32 = v12;
  v13 = sub_22FCC8684();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  swift_defaultActor_initialize();
  *(v6 + 112) = a1;
  *(v6 + 120) = a2;
  *(v6 + 152) = v7;
  *(v6 + 128) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7680);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22FCD1800;
  *(v20 + 56) = type metadata accessor for MomentGraphWorker();
  *(v20 + 64) = sub_22FA2CE7C(&qword_281480230, 255, type metadata accessor for MomentGraphWorker);
  *(v20 + 32) = a3;
  *(v6 + 136) = v20;
  *(v6 + 144) = a4;
  v30 = a4;
  type metadata accessor for QueryAnnotatorSessionManager();
  v21 = swift_allocObject();
  swift_retain_n();

  swift_defaultActor_initialize();
  *(v21 + 112) = MEMORY[0x277D84F98];
  *(v21 + 120) = 0;
  *(v21 + 128) = 0;
  *(v6 + 176) = v21;
  v23 = sub_22FA2CE7C(&qword_28147FF30, v22, type metadata accessor for MomentGraphService);

  sub_22FA2CEC4(v32, v23);
  type metadata accessor for StateHolder();
  v24 = swift_allocObject();
  *(v24 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) = 0;
  v24[2] = 0xD000000000000012;
  v24[3] = 0x800000022FCDA040;
  v25 = v31;
  v24[4] = v31;
  v24[5] = a2;
  v26 = *(v14 + 16);
  v26(v24 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger, v19, v13);
  v26(v17, v19, v13);
  sub_22FCC85E4();
  (*(v14 + 8))(v19, v13);
  *(v6 + 160) = v24;
  type metadata accessor for ServiceOperationManager();
  v27 = swift_allocObject();
  v28 = v30;

  swift_defaultActor_initialize();
  *(v27 + 144) = MEMORY[0x277D84F98];
  *(v27 + 152) = 0;
  *(v27 + 112) = v25;
  *(v27 + 120) = a2;
  *(v27 + 128) = v28;
  *(v27 + 136) = v33;
  *(v6 + 168) = v27;
  if (qword_28147FF70 != -1)
  {
    swift_once();
  }

  sub_22FB5A674();
  return v6;
}

uint64_t sub_22FBA5044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22FA2C21C;

  return sub_22FB9A214(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_22FBA514C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FBE5144(a1, v4, v5, v6, (v1 + 5));
}

void sub_22FBA522C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_allocWithZone(MEMORY[0x277D3B950]) initWithNumberOfMemoriesToEnrich_];
  v6 = *(*(*(a2 + 128) + 112) + 112);
  v7 = sub_22FCC8C24();
  v8 = [objc_opt_self() ignoreProgress];
  v18[0] = 0;
  v9 = [v5 runWithGraphManager:v6 forMemoryUUIDs:v7 progressReporter:v8 error:v18];

  v10 = v18[0];
  if (v9)
  {
    sub_22FCC8C44();
    v11 = v10;

    v12 = sub_22FCC8C24();
    (*(a3 + 16))(a3, v12, 0);
  }

  else
  {
    v13 = v18[0];
    v14 = sub_22FCC6514();

    swift_willThrow();
    v15 = v14;
    v16 = sub_22FCC8C24();
    v17 = sub_22FCC6504();
    (*(a3 + 16))(a3, v16, v17);
  }
}

void sub_22FBA5424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = [objc_allocWithZone(MEMORY[0x277D3B950]) initWithNumberOfMemoriesToEnrich_];
  if (a1 < 0)
  {
    __break(1u);
  }

  v7 = v6;
  v8 = *(*(*(a2 + 128) + 112) + 112);
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 ignoreProgress];
  v21[0] = 0;
  v12 = [v7 runWithGraphManager:v10 forMemoryCategory:a1 progressReporter:v11 error:v21];

  v13 = v21[0];
  if (v12)
  {
    sub_22FCC8C44();
    v14 = v13;

    v15 = sub_22FCC8C24();
    (*(a3 + 16))(a3, v15, 0);
  }

  else
  {
    v16 = v21[0];
    v17 = sub_22FCC6514();

    swift_willThrow();
    v18 = v17;
    v19 = sub_22FCC8C24();
    v20 = sub_22FCC6504();
    (*(a3 + 16))(a3, v19, v20);
  }
}

uint64_t sub_22FBA5614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8B68);
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x28223BE20](v6);
  v41 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8B70);
  v45 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v11 = objc_opt_self();
  v12 = sub_22FCC8E64();
  v13 = v11;
  v14 = v10;
  v15 = [v13 momentNodesForUUIDs:v12 inGraph:a2];

  v16 = objc_opt_self();
  v17 = v15;
  v40 = v16;
  v18 = [v16 meaningOfMoment];
  sub_22FA3A77C(0, &qword_27DAD8B78);
  sub_22FA3A77C(0, &qword_27DAD8B80);
  sub_22FCC6BB4();
  v55 = MEMORY[0x277D84F98];
  v19 = swift_allocObject();
  *(v19 + 16) = &v55;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22FBA6720;
  *(v20 + 24) = v19;
  v53 = sub_22FBA6728;
  v54 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_22FB9195C;
  v52 = &block_descriptor_246;
  v21 = _Block_copy(&aBlock);

  [v17 enumerateUUIDsUsingBlock_];
  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    sub_22FCC8FF4();
    v44 = v8;
    if (v3)
    {

      v23 = 0;

      (*(v45 + 8))(v14, v44);

      sub_22FA3A55C(0);
      return v23;
    }

    v48 = MEMORY[0x277D84F98];
    v39 = v14;
    v24 = sub_22FCC6BC4();
    v25 = swift_allocObject();
    *(v25 + 16) = &v48;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_22FBA6750;
    *(v26 + 24) = v25;
    v53 = sub_22FA3A534;
    v54 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v50 = 1107296256;
    v51 = sub_22FA396A0;
    v52 = &block_descriptor_255;
    v27 = _Block_copy(&aBlock);

    [v24 enumerateNodesUsingBlock_];

    _Block_release(v27);
    LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

    if ((v24 & 1) == 0)
    {
      sub_22FCC8FF4();
      v28 = v17;
      v29 = [v40 celebratedHolidayOfMoment];
      sub_22FA3A77C(0, &qword_27DAD8B88);
      v30 = v41;
      v40 = v28;
      v31 = sub_22FCC6BB4();
      v32 = MEMORY[0x277D84F98];
      aBlock = MEMORY[0x277D84F98];
      MEMORY[0x28223BE20](v31);
      *(&v38 - 2) = &aBlock;
      v33 = v43;
      sub_22FCC6BA4();
      v34 = sub_22FCC8FF4();
      v46 = 0;
      v47 = v32;
      MEMORY[0x28223BE20](v34);
      *(&v38 - 8) = &v55;
      *(&v38 - 7) = &aBlock;
      *(&v38 - 6) = &v48;
      *(&v38 - 5) = &v47;
      *(&v38 - 4) = a3;
      *(&v38 - 3) = &v46;
      v35 = v39;
      *(&v38 - 2) = v39;
      v36 = v33;
      v37 = v44;
      sub_22FCC6BA4();

      (*(v42 + 8))(v30, v36);
      v23 = v47;

      (*(v45 + 8))(v35, v37);

      return v23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FBA5D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *(v5 + 16);
  v12 = *(v5 + 24);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_22FA2C21C;

  return sub_22FB99180(a1, a2, a3, a4, a5, v13, v12);
}

uint64_t sub_22FBA5E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *(v5 + 16);
  v12 = *(v5 + 24);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_22FA2C21C;

  return sub_22FB97D7C(a1, a2, a3, a4, a5, v13, v12);
}

uint64_t sub_22FBA5F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22FA2C030;

  return sub_22FB96478(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_22FBA6040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5[2];
  v12 = v5[3];
  v13 = v5[4];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_22FA2C21C;

  return sub_22FB94B4C(a1, a2, a3, a4, a5, v11, v12, v13);
}

unint64_t sub_22FBA6180()
{
  result = qword_28147AF50;
  if (!qword_28147AF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD8B38);
    sub_22FA2CE7C(&qword_28147B078, 255, MEMORY[0x277D3BF48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147AF50);
  }

  return result;
}

unint64_t sub_22FBA6238()
{
  result = qword_27DAD8B40;
  if (!qword_27DAD8B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD7370);
    sub_22FA2CE7C(&qword_27DAD8B48, 255, MEMORY[0x277D3BF48]);
    sub_22FA2CE7C(&qword_27DAD8B50, 255, MEMORY[0x277D3C690]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8B40);
  }

  return result;
}

uint64_t sub_22FBA6334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5[2];
  v12 = v5[3];
  v13 = v5[4];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_22FA2C21C;

  return sub_22FB92C64(a1, a2, a3, a4, a5, v11, v12, v13);
}

unint64_t sub_22FBA647C()
{
  result = qword_28147AF48;
  if (!qword_28147AF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD7F90);
    sub_22FA2CE7C(&qword_28147B060, 255, MEMORY[0x277D3C060]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147AF48);
  }

  return result;
}

uint64_t sub_22FBA653C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22FA2C21C;

  return sub_22FB91094(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_22FBA6620(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FBA438C(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_22FBA66EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22FBA5614(*(v2 + 16), a1, *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22FBA67CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22FA2C21C;

  return sub_22FB8F8FC(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_22FBA6900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22FA2C21C;

  return sub_22FB8DBE4(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_22FBA69E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FBA42AC(a1, v4, v5, v6, (v1 + 5));
}

uint64_t objectdestroy_299Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22FBA6AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22FA2C21C;

  return sub_22FB8C744(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_22FBA6BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22FA2C21C;

  return sub_22FB89FE4(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_22FBA6CDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FBA41CC(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_22FBA6DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22FA2C21C;

  return sub_22FB89058(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_22FBA6E94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FBA3F7C(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_22FBA6F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22FA2C21C;

  return sub_22FB880EC(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_22FBA704C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FBA3E9C(a1, v4, v5, v6, (v1 + 5));
}

uint64_t objectdestroy_343Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_22FBA716C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *(v5 + 16);
  v12 = *(v5 + 24);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_22FA2C21C;

  return sub_22FB871AC(a1, a2, a3, a4, a5, v13, v12);
}

uint64_t sub_22FBA7248(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FBA3DBC(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_22FBA731C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(v5 + 16);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FA2C21C;

  return sub_22FB861D8(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_22FBA73EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FBA3CDC(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_22FBA74C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *(v5 + 16);
  v12 = *(v5 + 24);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_22FA2C21C;

  return sub_22FB82EA0(a1, a2, a3, a4, a5, v13, v12);
}

uint64_t sub_22FBA75DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22FA2C21C;

  return sub_22FB7CBD8(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_492Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_22FBA76F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = v9[2];
  v12 = v9[3];
  v13 = v9[4];
  v14 = v9[5];
  v15 = v9[6];
  v16 = v9[7];
  v17 = v9[8];
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_22FA2C21C;

  return sub_22FBA10F8(v11, v12, v13, v14, v15, v16, v17, sub_22FBA10F8, a9);
}

uint64_t sub_22FBA77D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22FA2C21C;

  return sub_22FB9FD1C(v2, v3, v5, v4);
}

uint64_t sub_22FBA7890(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3[4] = a2;
  v3[5] = v4;
  v3[3] = a1;
  type metadata accessor for ECRPersonGroundingProcessorHelper(0);
  v3[6] = swift_task_alloc();
  v5 = sub_22FCC8684();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBA79A4, 0, 0);
}

uint64_t sub_22FBA79A4(uint64_t a1, uint64_t a2)
{
  v3 = v2[5];
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "Stories - requestPersonGrounding", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = v2[8];
  v8 = v2[9];
  v10 = v2[7];

  (*(v9 + 8))(v8, v10);
  if (qword_28147CEC0 != -1)
  {
    swift_once();
  }

  v11 = v2[7];
  v12 = v2[8];
  v13 = v2[6];
  v14 = __swift_project_value_buffer(v11, qword_28147CEC8);
  (*(v12 + 16))(v13, v14, v11);
  v15 = swift_task_alloc();
  v2[10] = v15;
  *v15 = v2;
  v15[1] = sub_22FBA7B88;
  v17 = v2[3];
  v16 = v2[4];

  return ECRPersonGroundingProcessorHelper.groundPerson(_:)(v17, v16);
}

uint64_t sub_22FBA7B88(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_22FBA7E44;
  }

  else
  {
    v4 = sub_22FBA7C9C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FBA7C9C()
{
  v2 = v0[11];
  v1 = v0[12];
  sub_22FCC64F4();
  swift_allocObject();
  sub_22FCC64E4();
  v0[2] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8BF0);
  sub_22FBAA5A0();
  v3 = sub_22FCC64D4();
  if (v1)
  {
    sub_22FBAA540(v0[6], type metadata accessor for ECRPersonGroundingProcessorHelper);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v3;
    v8 = v4;
    sub_22FBAA540(v0[6], type metadata accessor for ECRPersonGroundingProcessorHelper);

    v9 = v0[1];

    return v9(v7, v8);
  }
}

uint64_t sub_22FBA7E44()
{
  sub_22FBAA540(*(v0 + 48), type metadata accessor for ECRPersonGroundingProcessorHelper);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FBA7ED0(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v2[15] = *v1;
  v3 = type metadata accessor for TemplatedPrompt();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v4 = sub_22FCC7514();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  sub_22FCC8574();
  v2[24] = swift_task_alloc();
  v5 = sub_22FCC8684();
  v2[25] = v5;
  v2[26] = *(v5 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = sub_22FCC8524();
  v2[32] = swift_task_alloc();
  type metadata accessor for PromptSuggestionFetcher.Configuration(0);
  v2[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBA8134, 0, 0);
}

uint64_t sub_22FBA8134()
{
  v124 = v0;
  v1 = *(v0 + 104);
  v2 = *(*(*(*(*(v0 + 112) + 128) + 112) + 120) + 112);
  *(v0 + 272) = v2;
  v3 = [v2 librarySpecificFetchOptions];
  *(v0 + 280) = v3;
  sub_22FA3A77C(0, &qword_28147AEF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7278);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FCD17F0;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_22FA4EF4C();
  *(v4 + 32) = 1684632949;
  *(v4 + 40) = 0xE400000000000000;
  *(v4 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448);
  *(v4 + 104) = sub_22FA2CF90(&qword_27DAD8890, &qword_27DAD7448);
  *(v4 + 72) = v1;

  v5 = sub_22FCC8EE4();
  [v3 setPredicate_];

  v6 = [objc_opt_self() fetchSuggestionsWithOptions_];
  *(v0 + 288) = v6;
  v7 = [v6 fetchedObjects];
  if (v7)
  {
    v8 = v7;
    sub_22FA3A77C(0, &unk_28147AED0);
    v9 = sub_22FCC8C44();

    sub_22FAC8DF0(MEMORY[0x277D84F98]);
    v11 = v10;
    if (v9 >> 62)
    {
      goto LABEL_33;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22FCC92C4())
    {
      v13 = 0;
      v118 = v9 & 0xFFFFFFFFFFFFFF8;
      v120 = v9 & 0xC000000000000001;
      v116 = i;
      v117 = v9;
      while (1)
      {
        if (v120)
        {
          v18 = MEMORY[0x231908810](v13, v9);
        }

        else
        {
          if (v13 >= *(v118 + 16))
          {
            goto LABEL_30;
          }

          v18 = *(v9 + 8 * v13 + 32);
        }

        v19 = v18;
        v9 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v20 = [v18 uuid];
        if (v20)
        {
          v21 = v20;
          v22 = sub_22FCC8A84();
          v24 = v23;
        }

        else
        {
          v22 = 0;
          v24 = 0;
        }

        v25 = v19;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v123[0] = v11;
        v27 = sub_22FA6A3BC(v22, v24);
        v29 = v11[2];
        v30 = (v28 & 1) == 0;
        v31 = __OFADD__(v29, v30);
        v32 = v29 + v30;
        if (v31)
        {
          goto LABEL_31;
        }

        v33 = v28;
        if (v11[3] < v32)
        {
          sub_22FA6EF40(v32, isUniquelyReferenced_nonNull_native);
          v27 = sub_22FA6A3BC(v22, v24);
          if ((v33 & 1) != (v34 & 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7890);

            return sub_22FCC9774();
          }

LABEL_19:
          if (v33)
          {
            goto LABEL_5;
          }

          goto LABEL_20;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_19;
        }

        v38 = v27;
        sub_22FA71F80();
        v27 = v38;
        if (v33)
        {
LABEL_5:
          v14 = v27;

          v11 = v123[0];
          v15 = *(v123[0] + 56);
          v16 = *(v15 + 8 * v14);
          *(v15 + 8 * v14) = v25;

          goto LABEL_6;
        }

LABEL_20:
        v11 = v123[0];
        *(v123[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
        v35 = (v11[6] + 16 * v27);
        *v35 = v22;
        v35[1] = v24;
        *(v11[7] + 8 * v27) = v25;

        v36 = v11[2];
        v31 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v31)
        {
          goto LABEL_32;
        }

        v11[2] = v37;
LABEL_6:
        ++v13;
        v17 = v9 == v116;
        v9 = v117;
        if (v17)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

LABEL_34:
  }

  else
  {
    v11 = 0;
  }

  *(v0 + 296) = v11;
  v40 = *(v0 + 264);
  v121 = *(v0 + 104);

  sub_22FAB166C(v41, v40);
  type metadata accessor for PromptSuggestionFetcher(0);
  v42 = swift_allocObject();
  *(v0 + 304) = v42;
  sub_22FA3A77C(0, &qword_28147ADA0);
  v43 = sub_22FCC91C4();
  *(v42 + 16) = v43;
  v44 = v43;
  sub_22FCC8694();
  sub_22FBA4A1C(v40, v42 + OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_configuration, type metadata accessor for PromptSuggestionFetcher.Configuration);
  sub_22FCC82D4();
  swift_allocObject();
  v45 = sub_22FCC82C4();
  sub_22FBAA540(v40, type metadata accessor for PromptSuggestionFetcher.Configuration);
  *(v42 + OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_embeddingCalculator) = v45;
  v46 = MEMORY[0x277D84F90];
  *(v0 + 56) = MEMORY[0x277D84F90];
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = v46;
  sub_22FA2CE7C(&qword_28147B000, 255, MEMORY[0x277D3CA90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7268);
  sub_22FA2CF90(&qword_28147AF40, &qword_27DAD7268);
  sub_22FCC9264();
  sub_22FCC8674();
  sub_22FCC8564();
  *(v0 + 312) = sub_22FCC8554();
  swift_allocObject();
  *(v0 + 320) = sub_22FCC8534();
  v47 = *(v121 + 16);
  *(v0 + 328) = v47;
  if (!v47)
  {
LABEL_46:
    v72 = *(v0 + 120);

    v74 = sub_22FA2CE7C(&qword_28147FF30, v73, type metadata accessor for MomentGraphService);
    sub_22FA2CEC4(v72, v74);

    v75 = sub_22FCC8664();
    v76 = sub_22FCC8F34();

    v77 = os_log_type_enabled(v75, v76);
    v79 = *(v0 + 208);
    v78 = *(v0 + 216);
    v80 = *(v0 + 200);
    if (v77)
    {
      v81 = *(v0 + 104);
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v123[0] = v83;
      *v82 = 136315138;
      v84 = MEMORY[0x2319080B0](v81, MEMORY[0x277D837D0]);
      v86 = sub_22FA2F600(v84, v85, v123);

      *(v82 + 4) = v86;
      _os_log_impl(&dword_22FA28000, v75, v76, "Finished validating prompt suggestions with uuids %s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v83);
      MEMORY[0x23190A000](v83, -1, -1);
      MEMORY[0x23190A000](v82, -1, -1);
    }

    v87 = *(v79 + 8);
    v87(v78, v80);
    sub_22FCC64F4();
    swift_allocObject();
    sub_22FCC64E4();
    *(v0 + 96) = MEMORY[0x277D84F98];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8BE0);
    sub_22FBAA040();
    v88 = sub_22FCC64D4();
    v89 = *(v0 + 304);
    v90 = *(v0 + 280);
    v91 = *(v0 + 288);
    v92 = *(v0 + 272);
    v93 = *(v0 + 200);
    v119 = v94;
    v122 = v88;

    swift_setDeallocating();

    v87(v89 + OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_logger, v93);
    sub_22FBAA540(v89 + OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_configuration, type metadata accessor for PromptSuggestionFetcher.Configuration);

    swift_deallocClassInstance();

    v95 = *(v0 + 8);

    return v95(v122, v119);
  }

  v48 = 0;
  v49 = &qword_28147FF30;
  v115 = v0;
  while (1)
  {
    v50 = MEMORY[0x277D84F98];
    *(v0 + 344) = v48;
    *(v0 + 352) = v50;
    *(v0 + 336) = v50;
    v51 = *(v0 + 296);
    v52 = *(v0 + 104) + 16 * v48;
    v53 = *(v52 + 32);
    *(v0 + 360) = v53;
    v54 = *(v52 + 40);
    *(v0 + 368) = v54;
    if (!v51 || !*(v51 + 16))
    {

      goto LABEL_42;
    }

    swift_bridgeObjectRetain_n();

    v55 = sub_22FA6A3BC(v53, v54);
    v57 = v56;

    if (v57)
    {
      break;
    }

LABEL_42:
    v59 = *(v0 + 120);
    v60 = sub_22FA2CE7C(v49, v58, type metadata accessor for MomentGraphService);
    sub_22FA2CEC4(v59, v60);

    v61 = sub_22FCC8664();
    v62 = sub_22FCC8F14();

    v63 = os_log_type_enabled(v61, v62);
    v64 = *(v0 + 224);
    v66 = *(v0 + 200);
    v65 = *(v0 + 208);
    if (v63)
    {
      v67 = v49;
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v123[0] = v69;
      *v68 = 136315138;
      v70 = sub_22FA2F600(v53, v54, v123);

      *(v68 + 4) = v70;
      _os_log_impl(&dword_22FA28000, v61, v62, "Cannot find suggestion with uuid %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x23190A000](v69, -1, -1);
      v71 = v68;
      v49 = v67;
      v0 = v115;
      MEMORY[0x23190A000](v71, -1, -1);
    }

    else
    {
    }

    (*(v65 + 8))(v64, v66);
    v48 = *(v0 + 344) + 1;
    if (v48 == *(v0 + 328))
    {
      goto LABEL_46;
    }
  }

  v96 = *(*(*(v0 + 296) + 56) + 8 * v55);
  *(v0 + 376) = v96;
  v97 = v96;

  v98 = [v97 featuresProperties];
  sub_22FCC89D4();

  sub_22FCC7314();
  v100 = *(v0 + 312);
  v99 = *(v0 + 320);
  v102 = *(v0 + 176);
  v101 = *(v0 + 184);
  v103 = *(v0 + 152);
  v104 = *(v0 + 160);
  v106 = *(v0 + 136);
  v105 = *(v0 + 144);

  v107 = *(v104 + 16);
  *(v0 + 384) = v107;
  *(v0 + 392) = (v104 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v107(v102, v101, v103);
  TemplatedPrompt.init(with:)(v102, v105);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7860);
  v108 = *(v106 + 80);
  *(v0 + 440) = v108;
  v109 = (v108 + 32) & ~v108;
  v110 = swift_allocObject();
  *(v0 + 400) = v110;
  *(v110 + 16) = xmmword_22FCD1800;
  sub_22FBA4A1C(v105, v110 + v109, type metadata accessor for TemplatedPrompt);
  v111 = MEMORY[0x277D3CAA0];
  *(v0 + 40) = v100;
  *(v0 + 48) = v111;
  *(v0 + 16) = v99;
  v112 = objc_opt_self();

  v113 = [v112 ignoreProgress];
  *(v0 + 408) = v113;
  v114 = swift_task_alloc();
  *(v0 + 416) = v114;
  *v114 = v0;
  v114[1] = sub_22FBA90B4;

  return PromptSuggestionFetcher.validatePrompts(_:eventRecorder:progressReporter:diagnosticContext:forceValidation:)(v110, v0 + 16, v113, v0 + 56, 1);
}

uint64_t sub_22FBA90B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 424) = a1;
  *(v4 + 432) = v1;

  v5 = *(v3 + 408);
  if (v1)
  {

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    v6 = sub_22FBA9ED4;
  }

  else
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    __swift_destroy_boxed_opaque_existential_0(v4 + 16);
    v6 = sub_22FBA92BC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22FBA92BC()
{
  v119 = v0;
  v1 = *(v0 + 424);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 384);
    v3 = *(v0 + 368);
    v106 = *(v0 + 360);
    v109 = *(v0 + 376);
    v4 = *(v0 + 336);
    v5 = *(v0 + 176);
    v6 = *(v0 + 160);
    v7 = *(v0 + 168);
    v8 = *(v0 + 152);
    v111 = *(v0 + 144);
    v115 = *(v0 + 184);
    v2(v7, v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v8);

    v2(v5, v7, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v118[0] = v4;
    sub_22FB26918(v5, v106, v3, isUniquelyReferenced_nonNull_native);

    v10 = *(v6 + 8);
    v10(v7, v8);
    sub_22FBAA540(v111, type metadata accessor for TemplatedPrompt);
    v10(v115, v8);
    v11 = v118[0];
    v12 = v118[0];
  }

  else
  {
    v13 = *(v0 + 120);

    v15 = sub_22FA2CE7C(&qword_28147FF30, v14, type metadata accessor for MomentGraphService);
    sub_22FA2CEC4(v13, v15);

    v16 = sub_22FCC8664();
    v17 = sub_22FCC8F14();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 368);
    if (v18)
    {
      v20 = *(v0 + 360);
      v21 = *(v0 + 208);
      v105 = *(v0 + 200);
      v107 = *(v0 + 232);
      v22 = *(v0 + 376);
      v23 = *(v0 + 160);
      v112 = *(v0 + 152);
      v116 = *(v0 + 184);
      v110 = *(v0 + 144);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v118[0] = v25;
      *v24 = 136315138;
      v26 = sub_22FA2F600(v20, v19, v118);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_22FA28000, v16, v17, "Error validating suggestion %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x23190A000](v25, -1, -1);
      MEMORY[0x23190A000](v24, -1, -1);

      (*(v21 + 8))(v107, v105);
      sub_22FBAA540(v110, type metadata accessor for TemplatedPrompt);
      (*(v23 + 8))(v116, v112);
    }

    else
    {
      v27 = *(v0 + 232);
      v28 = *(v0 + 200);
      v29 = *(v0 + 208);
      v30 = *(v0 + 184);
      v31 = *(v0 + 152);
      v32 = *(v0 + 160);
      v33 = *(v0 + 144);

      (*(v29 + 8))(v27, v28);
      sub_22FBAA540(v33, type metadata accessor for TemplatedPrompt);
      (*(v32 + 8))(v30, v31);
    }

    v12 = *(v0 + 352);
    v11 = *(v0 + 336);
  }

  v108 = *(v0 + 432);
  v34 = *(v0 + 344) + 1;
  v117 = v12;
  if (v34 != *(v0 + 328))
  {
    v113 = v11;
    do
    {
      *(v0 + 344) = v34;
      *(v0 + 352) = v12;
      *(v0 + 336) = v11;
      v64 = *(v0 + 296);
      v65 = *(v0 + 104) + 16 * v34;
      v66 = *(v65 + 32);
      *(v0 + 360) = v66;
      v67 = *(v65 + 40);
      *(v0 + 368) = v67;
      if (v64 && *(v64 + 16))
      {
        swift_bridgeObjectRetain_n();

        v68 = sub_22FA6A3BC(v66, v67);
        v70 = v69;

        if (v70)
        {
          v82 = *(*(*(v0 + 296) + 56) + 8 * v68);
          *(v0 + 376) = v82;
          v83 = v82;

          v84 = [v83 featuresProperties];
          sub_22FCC89D4();

          sub_22FCC7314();
          if (v108)
          {
            v86 = *(v0 + 280);
            v85 = *(v0 + 288);
            v87 = *(v0 + 272);

LABEL_12:

            v57 = *(v0 + 8);

            return v57();
          }

          else
          {
            v89 = *(v0 + 312);
            v88 = *(v0 + 320);
            v91 = *(v0 + 176);
            v90 = *(v0 + 184);
            v92 = *(v0 + 152);
            v93 = *(v0 + 160);
            v95 = *(v0 + 136);
            v94 = *(v0 + 144);

            v96 = *(v93 + 16);
            *(v0 + 384) = v96;
            *(v0 + 392) = (v93 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
            v96(v91, v90, v92);
            TemplatedPrompt.init(with:)(v91, v94);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7860);
            v97 = *(v95 + 80);
            *(v0 + 440) = v97;
            v98 = (v97 + 32) & ~v97;
            v99 = swift_allocObject();
            *(v0 + 400) = v99;
            *(v99 + 16) = xmmword_22FCD1800;
            sub_22FBA4A1C(v94, v99 + v98, type metadata accessor for TemplatedPrompt);
            v100 = MEMORY[0x277D3CAA0];
            *(v0 + 40) = v89;
            *(v0 + 48) = v100;
            *(v0 + 16) = v88;
            v101 = objc_opt_self();

            v102 = [v101 ignoreProgress];
            *(v0 + 408) = v102;
            v103 = swift_task_alloc();
            *(v0 + 416) = v103;
            *v103 = v0;
            v103[1] = sub_22FBA90B4;

            return PromptSuggestionFetcher.validatePrompts(_:eventRecorder:progressReporter:diagnosticContext:forceValidation:)(v99, v0 + 16, v102, v0 + 56, 1);
          }
        }
      }

      else
      {
      }

      v72 = *(v0 + 120);
      v73 = sub_22FA2CE7C(&qword_28147FF30, v71, type metadata accessor for MomentGraphService);
      sub_22FA2CEC4(v72, v73);

      v74 = sub_22FCC8664();
      v75 = sub_22FCC8F14();

      v76 = os_log_type_enabled(v74, v75);
      v77 = *(v0 + 224);
      v79 = *(v0 + 200);
      v78 = *(v0 + 208);
      if (v76)
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v118[0] = v60;
        *v59 = 136315138;
        v61 = sub_22FA2F600(v66, v67, v118);

        *(v59 + 4) = v61;
        _os_log_impl(&dword_22FA28000, v74, v75, "Cannot find suggestion with uuid %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v60);
        v62 = v60;
        v12 = v117;
        MEMORY[0x23190A000](v62, -1, -1);
        v63 = v59;
        v11 = v113;
        MEMORY[0x23190A000](v63, -1, -1);
      }

      else
      {
      }

      (*(v78 + 8))(v77, v79);
      v34 = *(v0 + 344) + 1;
    }

    while (v34 != *(v0 + 328));
  }

  v35 = *(v0 + 120);

  v37 = sub_22FA2CE7C(&qword_28147FF30, v36, type metadata accessor for MomentGraphService);
  sub_22FA2CEC4(v35, v37);

  v38 = sub_22FCC8664();
  v39 = sub_22FCC8F34();

  v40 = os_log_type_enabled(v38, v39);
  v42 = *(v0 + 208);
  v41 = *(v0 + 216);
  v43 = *(v0 + 200);
  if (v40)
  {
    v44 = *(v0 + 104);
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v118[0] = v46;
    *v45 = 136315138;
    v47 = MEMORY[0x2319080B0](v44, MEMORY[0x277D837D0]);
    v49 = sub_22FA2F600(v47, v48, v118);
    v12 = v117;

    *(v45 + 4) = v49;
    _os_log_impl(&dword_22FA28000, v38, v39, "Finished validating prompt suggestions with uuids %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x23190A000](v46, -1, -1);
    MEMORY[0x23190A000](v45, -1, -1);
  }

  v50 = *(v42 + 8);
  v50(v41, v43);
  sub_22FCC64F4();
  swift_allocObject();
  sub_22FCC64E4();
  *(v0 + 96) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8BE0);
  sub_22FBAA040();
  v51 = sub_22FCC64D4();
  v53 = *(v0 + 304);
  v55 = *(v0 + 280);
  v54 = *(v0 + 288);
  v56 = *(v0 + 272);
  if (v108)
  {

    goto LABEL_12;
  }

  v104 = *(v0 + 200);
  v114 = v51;
  v80 = v52;

  swift_setDeallocating();

  v50(v53 + OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_logger, v104);
  sub_22FBAA540(v53 + OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_configuration, type metadata accessor for PromptSuggestionFetcher.Configuration);

  swift_deallocClassInstance();

  v81 = *(v0 + 8);

  return v81(v114, v80);
}

uint64_t sub_22FBA9ED4()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);
  v4 = *(v0 + 184);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);

  sub_22FBAA540(v7, type metadata accessor for TemplatedPrompt);
  (*(v6 + 8))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v8 = *(v0 + 8);

  return v8();
}

unint64_t sub_22FBAA040()
{
  result = qword_27DAD8BE8;
  if (!qword_27DAD8BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD8BE0);
    sub_22FA2CE7C(&qword_27DAD8B18, 255, MEMORY[0x277D3C160]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8BE8);
  }

  return result;
}

uint64_t sub_22FBAA100()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22FA2C21C;

  return sub_22FB9F934(v2, v3, v4);
}

uint64_t sub_22FBAA1B4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22FA2C21C;

  return sub_22FB9F120(v2, v3);
}

uint64_t sub_22FBAA260()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22FA2C21C;

  return sub_22FB9E67C(v2, v3);
}

uint64_t sub_22FBAA30C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22FA2C21C;

  return sub_22FB9D88C(v2, v3, v4);
}

uint64_t sub_22FBAA3C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22FA2C21C;

  return sub_22FB9CDB4(v2, v3, v5, v4);
}

uint64_t sub_22FBAA480()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22FA2C21C;

  return sub_22FB9B518(v2, v3, v5, v4);
}

uint64_t sub_22FBAA540(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22FBAA5A0()
{
  result = qword_27DAD8BF8;
  if (!qword_27DAD8BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD8BF0);
    sub_22FA2CE7C(&qword_27DAD8C00, 255, MEMORY[0x277D3C578]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8BF8);
  }

  return result;
}

uint64_t sub_22FBAA658()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22FA2C21C;

  return sub_22FB9B0A0(v2, v3, v4, v5, v6);
}

uint64_t sub_22FBAA720()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22FA2C21C;

  return sub_22FB99520(v2, v3, v5, v4);
}

uint64_t sub_22FBAA7E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22FA2C21C;

  return sub_22FB98538(v2, v3, v5, v4);
}

uint64_t sub_22FBAA8A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22FA2C030;

  return sub_22FB96EE4(v2, v3, v5, v4);
}

uint64_t objectdestroy_515Tm()
{
  _Block_release(*(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22FBAA9C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_22FA2C21C;

  return sub_22FB954B8(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22FBAAAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = v9[2];
  v12 = v9[3];
  v13 = v9[4];
  v14 = v9[5];
  v15 = v9[6];
  v16 = v9[7];
  v18 = v9[8];
  v17 = v9[9];
  v19 = swift_task_alloc();
  *(v10 + 16) = v19;
  *v19 = v10;
  v19[1] = sub_22FA2C21C;

  return sub_22FB93B3C(v11, v12, v13, v14, v15, v16, v18, v17, a9);
}

uint64_t sub_22FBAAB8C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22FA2C21C;

  return sub_22FB915E8(v2, v3, v5, v4);
}

uint64_t sub_22FBAAC4C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_22FA2C21C;

  return sub_22FB90434(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22FBAAD28()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22FA2C21C;

  return sub_22FB8EBEC(v2, v3, v5, v4);
}

uint64_t sub_22FBAADE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22FA2C21C;

  return sub_22FB8DF64(v2, v3, v5, v4);
}

uint64_t sub_22FBAAEA8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22FA2C21C;

  return sub_22FB8CAC4(v2, v3, v5, v4);
}

uint64_t sub_22FBAAF68()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22FA2C21C;

  return sub_22FB8BAB4(v2, v3, v4);
}

uint64_t sub_22FBAB01C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22FA2C21C;

  return sub_22FB8B104(v2, v3, v4);
}

uint64_t sub_22FBAB0D0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_22FA2C21C;

  return sub_22FB8A434(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_22FBAB1A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22FA2C21C;

  return sub_22FB8947C(v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_652Tm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22FBAB2C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22FA2C21C;

  return sub_22FB88510(v2, v3, v4, v5, v6);
}

uint64_t sub_22FBAB388()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22FA2C21C;

  return sub_22FB8759C(v2, v3, v5, v4);
}

uint64_t sub_22FBAB448()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22FA2C21C;

  return sub_22FB86590(v2, v3, v4);
}

uint64_t sub_22FBAB4FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22FA2C21C;

  return sub_22FB8567C(v2, v3, v4);
}

uint64_t sub_22FBAB5B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22FA2C21C;

  return sub_22FB8490C(v2, v3);
}

uint64_t objectdestroy_61Tm(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 24));

  return MEMORY[0x2821FE8E8](v3, a3, 7);
}

uint64_t sub_22FBAB6C0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22FA2C21C;

  return sub_22FB84540(v2, v3);
}

uint64_t sub_22FBAB76C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22FA2C21C;

  return sub_22FB83680(v2, v3, v4);
}

uint64_t sub_22FBAB82C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22FA2C21C;

  return sub_22FB83408(v2, v3, v5, v4);
}

uint64_t sub_22FBAB8EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22FA2C21C;

  return sub_22FB82168(v2, v3, v5, v4);
}

uint64_t objectdestroy_528Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22FBAB9FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22FA2C21C;

  return sub_22FB81094(v2, v3, v5, v4);
}

uint64_t objectdestroy_667Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22FBABB04()
{
  v2 = v0[2];
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22FA2C21C;

  return sub_22FB8007C(v3, v4, v2, v5);
}

uint64_t sub_22FBABBC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FA2C21C;

  return sub_22FBE3E84(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22FBABC9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FBA255C(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_22FBABD68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FBA27BC(a1, v4, v5, v6, (v1 + 5));
}

uint64_t getEnumTagSinglePayload for MomentGraphService.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 16))
  {
    return (*a1 + 125);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for MomentGraphService.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_22FBABEE0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

void *sub_22FBABF0C(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 3);
    result[1] = 0xC000000000000000;
  }

  return result;
}

unint64_t sub_22FBABF4C()
{
  result = qword_28147FF60;
  if (!qword_28147FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147FF60);
  }

  return result;
}

unint64_t sub_22FBABFA4()
{
  result = qword_28147FF50;
  if (!qword_28147FF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147FF50);
  }

  return result;
}

unint64_t sub_22FBABFF8()
{
  result = qword_28147FF58;
  if (!qword_28147FF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147FF58);
  }

  return result;
}

uint64_t PhotoKitChangeToken.hashValue.getter()
{
  sub_22FCC9844();
  sub_22FCC9194();
  return sub_22FCC9894();
}

uint64_t PhotoKitChangeToken.__allocating_init(with:)(void *a1)
{
  v2 = [a1 currentChangeToken];

  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t sub_22FBAC248()
{
  sub_22FCC9844();
  sub_22FCC8B14();
  return sub_22FCC9894();
}

uint64_t sub_22FBAC2BC()
{
  sub_22FCC9844();
  sub_22FCC8B14();
  return sub_22FCC9894();
}

uint64_t sub_22FBAC310@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_22FCC9554();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_22FBAC3A0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_22FCC9554();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_22FBAC404(uint64_t a1)
{
  v2 = sub_22FBACBDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FBAC440(uint64_t a1)
{
  v2 = sub_22FBACBDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhotoKitChangeToken.__allocating_init(persistentChangeToken:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t PhotoKitChangeToken.description.getter()
{
  v6 = sub_22FCC9904();
  MEMORY[0x231907FA0](8250, 0xE200000000000000);
  v1 = [*(v0 + 16) description];
  v2 = sub_22FCC8A84();
  v4 = v3;

  MEMORY[0x231907FA0](v2, v4);

  return v6;
}

uint64_t PhotoKitChangeToken.encode(to:)(void *a1)
{
  v2 = v1;
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8C08);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-1] - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FBACBDC();
  sub_22FCC98B4();
  v8 = objc_opt_self();
  v9 = *(v2 + 16);
  v18[0] = 0;
  v10 = [v8 archivedDataWithRootObject:v9 requiringSecureCoding:0 error:v18];
  v11 = v18[0];
  if (v10)
  {
    v12 = sub_22FCC6664();
    v14 = v13;

    v18[0] = v12;
    v18[1] = v14;
    sub_22FBACC30();
    sub_22FCC9694();
    (*(v5 + 8))(v7, v4);
    return sub_22FA7E6C4(v12, v14);
  }

  else
  {
    v16 = v11;
    sub_22FCC6514();

    swift_willThrow();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t PhotoKitChangeToken.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22FBAC7F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22FBAC970(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22FBAC840()
{
  sub_22FCC9844();
  sub_22FCC9194();
  return sub_22FCC9894();
}

uint64_t sub_22FBAC8B0()
{
  sub_22FCC9844();
  sub_22FCC9194();
  return sub_22FCC9894();
}

uint64_t sub_22FBAC970(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8C20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FBACBDC();
  sub_22FCC98A4();
  if (!v1)
  {
    sub_22FBACE6C();
    sub_22FCC95F4();
    v9 = v13[0];
    v8 = v13[1];
    v7 = sub_22FA3A77C(0, &qword_28147AEA8);
    sub_22FA3A77C(0, &qword_28147AE28);
    v10 = sub_22FCC8F44();
    if (v10)
    {
      v12 = v10;
      (*(v4 + 8))(v6, v3);
      sub_22FA7E6C4(v9, v8);
      type metadata accessor for PhotoKitChangeToken();
      v7 = swift_allocObject();
      *(v7 + 16) = v12;
      __swift_destroy_boxed_opaque_existential_0(a1);
      return v7;
    }

    sub_22FBACEC0();
    swift_allocError();
    swift_willThrow();
    sub_22FA7E6C4(v9, v8);
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_22FBACBDC()
{
  result = qword_281482168;
  if (!qword_281482168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281482168);
  }

  return result;
}

unint64_t sub_22FBACC30()
{
  result = qword_281482548;
  if (!qword_281482548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281482548);
  }

  return result;
}

unint64_t sub_22FBACC88()
{
  result = qword_27DAD8C10;
  if (!qword_27DAD8C10)
  {
    type metadata accessor for PhotoKitChangeToken();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8C10);
  }

  return result;
}

unint64_t sub_22FBACD68()
{
  result = qword_27DAD8C18;
  if (!qword_27DAD8C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8C18);
  }

  return result;
}

unint64_t sub_22FBACDC0()
{
  result = qword_281482158;
  if (!qword_281482158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281482158);
  }

  return result;
}

unint64_t sub_22FBACE18()
{
  result = qword_281482160;
  if (!qword_281482160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281482160);
  }

  return result;
}

unint64_t sub_22FBACE6C()
{
  result = qword_281482540;
  if (!qword_281482540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281482540);
  }

  return result;
}

unint64_t sub_22FBACEC0()
{
  result = qword_27DAD8C28;
  if (!qword_27DAD8C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8C28);
  }

  return result;
}

unint64_t sub_22FBACF28()
{
  result = qword_27DAD8C30;
  if (!qword_27DAD8C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8C30);
  }

  return result;
}

unint64_t sub_22FBACF98()
{
  result = qword_27DAD8C38;
  if (!qword_27DAD8C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD8C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8C38);
  }

  return result;
}

uint64_t sub_22FBACFFC()
{
  if (*v0)
  {
    return *v0;
  }

  sub_22FCC9384();
  MEMORY[0x231907FA0](0xD000000000000017, 0x800000022FCE6E70);
  v2 = sub_22FBAF25C();
  MEMORY[0x231907FA0](v2);

  MEMORY[0x231907FA0](0xD000000000000027, 0x800000022FCE6E90);
  result = sub_22FCC94D4();
  __break(1u);
  return result;
}

uint64_t sub_22FBAD10C()
{
  if (*v0)
  {
    return *v0;
  }

  sub_22FCC9384();
  MEMORY[0x231907FA0](0xD000000000000017, 0x800000022FCE6E70);
  v2 = sub_22FBAECA0();
  MEMORY[0x231907FA0](v2);

  MEMORY[0x231907FA0](0xD000000000000027, 0x800000022FCE6E90);
  result = sub_22FCC94D4();
  __break(1u);
  return result;
}

uint64_t sub_22FBAD224()
{
  result = swift_getObjectType();
  if (!result)
  {
    sub_22FCC9384();
    MEMORY[0x231907FA0](0xD000000000000017, 0x800000022FCE6E70);
    v2 = [v0 description];
    v3 = sub_22FCC8A84();
    v5 = v4;

    MEMORY[0x231907FA0](v3, v5);

    MEMORY[0x231907FA0](0xD000000000000027, 0x800000022FCE6E90);
    result = sub_22FCC94D4();
    __break(1u);
  }

  return result;
}

uint64_t sub_22FBAD344()
{
  if (*v0)
  {
    return *v0;
  }

  sub_22FCC9384();
  MEMORY[0x231907FA0](0xD000000000000017, 0x800000022FCE6E70);
  v2 = sub_22FBAE6B0();
  MEMORY[0x231907FA0](v2);

  MEMORY[0x231907FA0](0xD000000000000027, 0x800000022FCE6E90);
  result = sub_22FCC94D4();
  __break(1u);
  return result;
}

uint64_t sub_22FBAD454(unint64_t *a1)
{
  if (*v1)
  {
    return *v1;
  }

  sub_22FCC9384();
  MEMORY[0x231907FA0](0xD000000000000017, 0x800000022FCE6E70);
  v4 = sub_22FBADEFC(a1);
  MEMORY[0x231907FA0](v4);

  MEMORY[0x231907FA0](0xD000000000000027, 0x800000022FCE6E90);
  result = sub_22FCC94D4();
  __break(1u);
  return result;
}

uint64_t sub_22FBAD57C(uint64_t (*a1)(uint64_t))
{
  if (*v1)
  {
    return *v1;
  }

  sub_22FCC9384();
  v4 = MEMORY[0x231907FA0](0xD000000000000017, 0x800000022FCE6E70);
  v5 = a1(v4);
  MEMORY[0x231907FA0](v5);

  MEMORY[0x231907FA0](0xD000000000000027, 0x800000022FCE6E90);
  result = sub_22FCC94D4();
  __break(1u);
  return result;
}

uint64_t sub_22FBAD694()
{
  DynamicType = swift_getDynamicType();
  if (swift_isClassType() && DynamicType)
  {
    return DynamicType;
  }

  sub_22FCC9384();
  MEMORY[0x231907FA0](0xD000000000000017, 0x800000022FCE6E70);
  sub_22FCC96E4();
  MEMORY[0x231907FA0](0xD000000000000027, 0x800000022FCE6E90);
  result = sub_22FCC94D4();
  __break(1u);
  return result;
}

uint64_t sub_22FBAD7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = *v4;
  return MEMORY[0x2822009F8](sub_22FBAD7FC, 0, 0);
}

uint64_t sub_22FBAD7FC()
{
  if (*(v0[4] + OBJC_IVAR___PHAPromptSuggestionCachingTask_incrementalKey + 8))
  {
    v1 = swift_task_alloc();
    v0[5] = v1;
    *v1 = v0;
    v1[1] = sub_22FBB226C;
    v2 = v0[3];
    v3 = v0[2];

    return sub_22FA3C42C(v3, v2);
  }

  else
  {
    sub_22FAE1210();
    swift_allocError();
    *v5 = 0xD00000000000001CLL;
    *(v5 + 8) = 0x800000022FCE2D60;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 1;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22FBAD974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = *v4;
  return MEMORY[0x2822009F8](sub_22FBAD99C, 0, 0);
}

uint64_t sub_22FBAD99C()
{
  if (*(v0[4] + 120))
  {
    v1 = swift_task_alloc();
    v0[5] = v1;
    *v1 = v0;
    v1[1] = sub_22FBB226C;
    v2 = v0[3];
    v3 = v0[2];

    return sub_22FA535AC(v3, v2);
  }

  else
  {
    sub_22FAE1210();
    swift_allocError();
    *v5 = 0xD00000000000001CLL;
    *(v5 + 8) = 0x800000022FCE2D60;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 1;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22FBADACC()
{
  sub_22FCC9384();
  v1 = sub_22FCC9904();

  v12 = v1;
  MEMORY[0x231907FA0](8250, 0xE200000000000000);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  MEMORY[0x231907FA0](v2, v3);

  MEMORY[0x231907FA0](779495456, 0xE400000000000000);
  v4 = sub_22FCC96C4();
  MEMORY[0x231907FA0](v4);

  MEMORY[0x231907FA0](539828265, 0xE400000000000000);
  sub_22FBB19C4();
  v5 = sub_22FCC96C4();
  MEMORY[0x231907FA0](v5);

  MEMORY[0x231907FA0](0xD000000000000014, 0x800000022FCE6EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72B8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22FCD1800;
  *(v6 + 32) = sub_22FA3A77C(0, &qword_28147AE18);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8320);
  v8 = MEMORY[0x2319080B0](v6, v7);
  v10 = v9;

  MEMORY[0x231907FA0](v8, v10);

  return v12;
}

uint64_t sub_22FBADCD0()
{
  sub_22FCC9384();
  v1 = sub_22FCC9904();

  v12 = v1;
  MEMORY[0x231907FA0](8250, 0xE200000000000000);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);

  MEMORY[0x231907FA0](v2, v3);

  MEMORY[0x231907FA0](779495456, 0xE400000000000000);
  v4 = sub_22FCC96C4();
  MEMORY[0x231907FA0](v4);

  MEMORY[0x231907FA0](539828265, 0xE400000000000000);
  sub_22FBB19C4();
  v5 = sub_22FCC96C4();
  MEMORY[0x231907FA0](v5);

  MEMORY[0x231907FA0](0xD000000000000014, 0x800000022FCE6EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72B8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22FCD1800;
  *(v6 + 32) = sub_22FA3A77C(0, &qword_28147AE18);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8320);
  v8 = MEMORY[0x2319080B0](v6, v7);
  v10 = v9;

  MEMORY[0x231907FA0](v8, v10);

  return v12;
}

uint64_t sub_22FBADEFC(unint64_t *a1)
{
  sub_22FCC9384();
  v3 = sub_22FCC9904();

  v14 = v3;
  MEMORY[0x231907FA0](8250, 0xE200000000000000);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);

  MEMORY[0x231907FA0](v4, v5);

  MEMORY[0x231907FA0](779495456, 0xE400000000000000);
  v6 = sub_22FCC96C4();
  MEMORY[0x231907FA0](v6);

  MEMORY[0x231907FA0](539828265, 0xE400000000000000);
  sub_22FBB19C4();
  v7 = sub_22FCC96C4();
  MEMORY[0x231907FA0](v7);

  MEMORY[0x231907FA0](0xD000000000000014, 0x800000022FCE6EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72B8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22FCD1800;
  *(v8 + 32) = sub_22FA3A77C(0, a1);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8320);
  v10 = MEMORY[0x2319080B0](v8, v9);
  v12 = v11;

  MEMORY[0x231907FA0](v10, v12);

  return v14;
}

uint64_t sub_22FBAE108()
{
  sub_22FCC9384();
  v1 = sub_22FCC9904();

  v12 = v1;
  MEMORY[0x231907FA0](8250, 0xE200000000000000);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  MEMORY[0x231907FA0](v2, v3);

  MEMORY[0x231907FA0](779495456, 0xE400000000000000);
  v4 = sub_22FCC96C4();
  MEMORY[0x231907FA0](v4);

  MEMORY[0x231907FA0](539828265, 0xE400000000000000);
  sub_22FBB19C4();
  v5 = sub_22FCC96C4();
  MEMORY[0x231907FA0](v5);

  MEMORY[0x231907FA0](0xD000000000000014, 0x800000022FCE6EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72B8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22FCD1800;
  *(v6 + 32) = type metadata accessor for GyroPosterSuggestionGenerationTask();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8320);
  v8 = MEMORY[0x2319080B0](v6, v7);
  v10 = v9;

  MEMORY[0x231907FA0](v8, v10);

  return v12;
}

uint64_t sub_22FBAE2FC()
{
  sub_22FCC9384();
  v1 = sub_22FCC9904();

  v12 = v1;
  MEMORY[0x231907FA0](8250, 0xE200000000000000);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  MEMORY[0x231907FA0](v3, v2);

  MEMORY[0x231907FA0](779495456, 0xE400000000000000);
  v4 = sub_22FCC96C4();
  MEMORY[0x231907FA0](v4);

  MEMORY[0x231907FA0](539828265, 0xE400000000000000);
  sub_22FBB19C4();
  v5 = sub_22FCC96C4();
  MEMORY[0x231907FA0](v5);

  MEMORY[0x231907FA0](0xD000000000000014, 0x800000022FCE6EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72B8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22FCD1800;
  *(v6 + 32) = sub_22FA3A77C(0, &qword_28147AE30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8320);
  v8 = MEMORY[0x2319080B0](v6, v7);
  v10 = v9;

  MEMORY[0x231907FA0](v8, v10);

  return v12;
}

uint64_t sub_22FBAE500()
{
  sub_22FCC9384();
  v1 = sub_22FCC9904();

  v9 = v1;
  MEMORY[0x231907FA0](8250, 0xE200000000000000);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  MEMORY[0x231907FA0](v2, v3);

  MEMORY[0x231907FA0](779495456, 0xE400000000000000);
  v4 = sub_22FCC96C4();
  MEMORY[0x231907FA0](v4);

  MEMORY[0x231907FA0](539828265, 0xE400000000000000);
  sub_22FBB19C4();
  v5 = sub_22FCC96C4();
  MEMORY[0x231907FA0](v5);

  MEMORY[0x231907FA0](0xD000000000000014, 0x800000022FCE6EC0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8320);
  v7 = MEMORY[0x2319080B0](MEMORY[0x277D84F90], v6);
  MEMORY[0x231907FA0](v7);

  return v9;
}