uint64_t sub_269796CBC()
{
  OUTLINED_FUNCTION_2_7();
  v0[17] = v1;
  v0[18] = v2;
  v0[15] = v3;
  v0[16] = v4;
  v0[14] = v5;
  v6 = sub_2698548D4();
  v0[19] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v0[20] = v7;
  v9 = *(v8 + 64) + 15;
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v10 = sub_269852624();
  v0[24] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v0[25] = v11;
  v13 = *(v12 + 64) + 15;
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_269796DE8()
{
  v1 = *(v0 + 120);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  if (sub_2696CB5D4(v2, v3) & 1) != 0 || (v5 = v1[3], v4 = v1[4], __swift_project_boxed_opaque_existential_1(*(v0 + 120), v5), (sub_269852CE4()))
  {
    sub_2696A73F8(*(v0 + 120), v0 + 72);
    type metadata accessor for LocUtil();
    inited = swift_initStackObject();
    sub_26968E5D4((v0 + 72), inited + 16);
    sub_269830114();
    v8 = v7;
    *(v0 + 224) = v9;
    *(v0 + 232) = v7;
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0((inited + 16));
    if (v8)
    {
      v10 = *(v0 + 136);
      if (v10)
      {
        v11 = *(v0 + 144);
        v12 = *(v0 + 128);
        v13 = v11[3];
        v14 = v11[4];
        __swift_project_boxed_opaque_existential_1(v11, v13);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
        v15 = swift_allocObject();
        *(v0 + 240) = v15;
        *(v15 + 16) = xmmword_269857710;
        *(v15 + 32) = v12;
        *(v15 + 40) = v10;
        v16 = *(v14 + 8);

        v49 = (v16 + *v16);
        v17 = v16[1];
        v18 = swift_task_alloc();
        *(v0 + 248) = v18;
        *v18 = v0;
        v18[1] = sub_2697971DC;

        return v49(v15, v13, v14);
      }

      if (qword_2803226E0 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v31 = *(v0 + 176);
      v32 = *(v0 + 160);
      __swift_project_value_buffer(*(v0 + 152), qword_28033D910);
      v33 = OUTLINED_FUNCTION_2_8();
      v34(v33);
      v24 = sub_2698548B4();
      v35 = sub_269854F24();
      if (OUTLINED_FUNCTION_19_5(v35))
      {
        v36 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v36);
        OUTLINED_FUNCTION_31_0(&dword_269684000, v37, v38, "Missing mediaRouteId, skipping TV Remote button");
        OUTLINED_FUNCTION_18_7();
      }

      v29 = *(v0 + 176);
    }

    else
    {
      if (qword_2803226E0 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v21 = *(v0 + 160);
      v20 = *(v0 + 168);
      __swift_project_value_buffer(*(v0 + 152), qword_28033D910);
      v22 = OUTLINED_FUNCTION_2_8();
      v23(v22);
      v24 = sub_2698548B4();
      v25 = sub_269854F24();
      if (OUTLINED_FUNCTION_19_5(v25))
      {
        v26 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v26);
        OUTLINED_FUNCTION_31_0(&dword_269684000, v27, v28, "Unable to localize button label");
        OUTLINED_FUNCTION_18_7();
      }

      v29 = *(v0 + 168);
    }

    v39 = *(v0 + 152);
    v40 = *(v0 + 160);
    v41 = *(v0 + 112);

    (*(v40 + 8))(v29, v39);
  }

  else
  {
    v30 = *(v0 + 112);
  }

  v42 = type metadata accessor for VideoDataModels.ButtonModel(0);
  OUTLINED_FUNCTION_17_14(v42);
  v44 = *(v0 + 208);
  v43 = *(v0 + 216);
  v46 = *(v0 + 176);
  v45 = *(v0 + 184);
  v47 = *(v0 + 168);

  OUTLINED_FUNCTION_7_7();

  return v48();
}

uint64_t sub_2697971DC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 248);
  v3 = *(v1 + 240);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v7 + 256) = v6;

  v8 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2697972E4()
{
  v1 = v0[32];
  v2 = v0[29];
  if (v1[2])
  {
    v3 = v0[27];
    v44 = v0[28];
    v4 = v0[25];
    v5 = v0[26];
    v6 = v0[24];
    v7 = v0[14];
    v8 = v1[4];
    v9 = v1[5];

    v10 = [objc_allocWithZone(MEMORY[0x277D47AB0]) init];
    sub_269798608(v8, v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F0, &unk_26985D8C0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_269857710;
    v12 = sub_269852664();
    v13 = MEMORY[0x277D63778];
    *(v11 + 56) = v12;
    *(v11 + 64) = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v11 + 32));
    *boxed_opaque_existential_1 = v10;
    *(boxed_opaque_existential_1 + 8) = 0;
    v15 = *MEMORY[0x277D63720];
    (*(*(v12 - 8) + 104))();
    v16 = v10;
    sub_269852634();
    (*(v4 + 16))(v5, v3, v6);
    VideoDataModels.ButtonModel.init(label:actionProperty:)();

    (*(v4 + 8))(v3, v6);
    v17 = type metadata accessor for VideoDataModels.ButtonModel(0);
    v18 = v7;
    v19 = 0;
  }

  else
  {
    v20 = v0[32];

    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v21 = v0[23];
    v22 = v0[20];
    __swift_project_value_buffer(v0[19], qword_28033D910);
    v23 = OUTLINED_FUNCTION_2_8();
    v24(v23);
    v25 = sub_2698548B4();
    v26 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v26))
    {
      v27 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v27);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v28, v29, "Unable to encode mediaRoute for TV Remote");
      OUTLINED_FUNCTION_18_7();
    }

    v30 = v0[23];
    v31 = v0[19];
    v32 = v0[20];
    v33 = v0[14];

    v34 = *(v32 + 8);
    v35 = OUTLINED_FUNCTION_22_3();
    v36(v35);
    v17 = type metadata accessor for VideoDataModels.ButtonModel(0);
    v18 = v33;
    v19 = 1;
  }

  __swift_storeEnumTagSinglePayload(v18, v19, 1, v17);
  v38 = v0[26];
  v37 = v0[27];
  v40 = v0[22];
  v39 = v0[23];
  v41 = v0[21];

  OUTLINED_FUNCTION_7_7();

  return v42();
}

uint64_t sub_2697975C4()
{
  OUTLINED_FUNCTION_2_7();
  v0[47] = v1;
  v0[48] = v2;
  v0[45] = v3;
  v0[46] = v4;
  v5 = *(*(sub_269852EB4() - 8) + 64) + 15;
  v0[49] = swift_task_alloc();
  v6 = sub_269853634();
  v0[50] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v0[51] = v7;
  v9 = *(v8 + 64) + 15;
  v0[52] = swift_task_alloc();
  v10 = sub_2698548D4();
  v0[53] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v0[54] = v11;
  v13 = *(v12 + 64) + 15;
  v0[55] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2697976F4()
{
  v36 = v0;
  *(v0 + 56) = 0;
  v1 = (v0 + 56);
  v2 = *(v0 + 368);
  *(v0 + 60) = 0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  if (v2 < 2)
  {
    goto LABEL_2;
  }

  if (v2 == 2)
  {
    *(v0 + 59) = 1;
    goto LABEL_16;
  }

  sub_26981D690(1836019538, 0xE400000000000000, v2);
  if (v3)
  {
    OUTLINED_FUNCTION_6_29();
    if (v6)
    {
      *(v0 + 64) = v4;
      *(v0 + 72) = v5;
      *(v0 + 57) = 1;
      goto LABEL_16;
    }
  }

  sub_26981D690(0x656369766544, 0xE600000000000000, v2);
  if (!v7)
  {
LABEL_13:
    sub_26981D690(0x797469746E45, 0xE600000000000000, v2);
    if (v11)
    {
      OUTLINED_FUNCTION_6_29();
      if (v12)
      {
        goto LABEL_15;
      }
    }

LABEL_2:
    *(v0 + 57) = 0;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_6_29();
  if (!v10)
  {

    goto LABEL_13;
  }

LABEL_15:
  *(v0 + 80) = v8;
  *(v0 + 88) = v9;
  *(v0 + 58) = 1;
LABEL_16:
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v14 = *(v0 + 432);
  v13 = *(v0 + 440);
  v15 = *(v0 + 424);
  v16 = __swift_project_value_buffer(v15, qword_28033D910);
  (*(v14 + 16))(v13, v16, v15);
  v17 = *v1;
  v18 = *(v0 + 72);
  *(v0 + 96) = *(v0 + 56);
  *(v0 + 112) = v18;
  *(v0 + 128) = *(v0 + 88);
  sub_2696C2924(v0 + 96, v0 + 136);
  v19 = sub_2698548B4();
  v20 = sub_269854F14();
  sub_2696C28F4(v0 + 96);
  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 432);
  v23 = *(v0 + 440);
  v24 = *(v0 + 424);
  if (v21)
  {
    v34 = *(v0 + 440);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v35 = v26;
    *v25 = 136315138;
    *(v0 + 256) = *(v0 + 96);
    *(v0 + 272) = *(v0 + 112);
    *(v0 + 288) = *(v0 + 128);
    sub_2696C2924(v0 + 96, v0 + 296);
    v27 = sub_269854AE4();
    v29 = sub_26974F520(v27, v28, &v35);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_269684000, v19, v20, "Returning remoteVideoPlayingDeviceNotFoundDialog with params: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v22 + 8))(v34, v24);
  }

  else
  {

    (*(v22 + 8))(v23, v24);
  }

  swift_beginAccess();
  v30 = *(v0 + 72);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v30;
  *(v0 + 48) = *(v0 + 88);
  v31 = swift_task_alloc();
  *(v0 + 448) = v31;
  *v31 = v0;
  v31[1] = sub_269797A3C;
  v32 = *(v0 + 376);

  return sub_2696C0FB4();
}

uint64_t sub_269797A3C(uint64_t a1)
{
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  v6 = *(v4 + 448);
  v7 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v5 + 456) = v1;

  if (v1)
  {
    v9 = sub_269797E64;
  }

  else
  {
    *(v5 + 464) = a1;
    v9 = sub_269797B58;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_269797B58()
{
  v1 = v0[58];
  v2 = v0[52];
  v4 = v0[48];
  v3 = v0[49];
  sub_269852E64();
  sub_2698535C4();
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v7 = swift_allocObject();
  v0[59] = v7;
  *(v7 + 16) = xmmword_2698590C0;
  *(v7 + 32) = v1;
  v8 = *(MEMORY[0x277D5BE58] + 4);
  v9 = v1;
  v10 = swift_task_alloc();
  v0[60] = v10;
  *v10 = v0;
  v10[1] = sub_269797C9C;
  v11 = v0[52];
  v12 = v0[45];

  return MEMORY[0x2821BB488](v12, v7, v11, v5, v6);
}

uint64_t sub_269797C9C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 480);
  v3 = *(v1 + 472);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_269797D9C()
{
  v1 = *(v0 + 440);
  v3 = *(v0 + 408);
  v2 = *(v0 + 416);
  v5 = *(v0 + 392);
  v4 = *(v0 + 400);

  v6 = *(v3 + 8);
  v7 = OUTLINED_FUNCTION_22_3();
  v8(v7);
  *(v0 + 216) = *(v0 + 56);
  *(v0 + 232) = *(v0 + 72);
  *(v0 + 248) = *(v0 + 88);
  sub_2696C28F4(v0 + 216);

  OUTLINED_FUNCTION_7_7();

  return v9();
}

uint64_t sub_269797E64()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 416);
  v3 = *(v0 + 392);
  v4 = *(v0 + 72);
  *(v0 + 176) = *(v0 + 56);
  *(v0 + 192) = v4;
  *(v0 + 208) = *(v0 + 88);
  sub_2696C28F4(v0 + 176);

  OUTLINED_FUNCTION_7_7();
  v6 = *(v0 + 456);

  return v5();
}

uint64_t sub_269797F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v5 = sub_2698532A4();
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[12] = v8;
  v9 = *(MEMORY[0x277D5BCD0] + 4);
  v10 = swift_task_alloc();
  v3[13] = v10;
  *v10 = v3;
  v10[1] = sub_269798038;

  return MEMORY[0x2821BAED8](v8);
}

uint64_t sub_269798038()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = *(v2 + 104);
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v6 + 112) = v0;

  if (v0)
  {
    v7 = sub_269728394;
  }

  else
  {
    v7 = sub_26979813C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26979813C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_269852CA4();
  v8 = sub_269853234();
  OUTLINED_FUNCTION_17_14(v8);
  v9 = sub_2698538F4();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v10 = MEMORY[0x277D5C1D8];
  v6[3] = v9;
  v6[4] = v10;
  __swift_allocate_boxed_opaque_existential_1(v6);
  sub_2698530B4();
  sub_2696B9D80(v0 + 16, &qword_280323028, qword_26985AD20);
  sub_2696B9D80(v3, &qword_280323010, &unk_26985B640);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_7_7();

  return v11();
}

uint64_t sub_2697982A8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324500, &qword_269860408);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19[-v7];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2698580D0;
  v11 = *MEMORY[0x277CEEFF0];
  *(inited + 32) = sub_269854A94();
  *(inited + 40) = v12;
  v13 = *MEMORY[0x277CEEFE0];
  *(inited + 48) = sub_269854A94();
  *(inited + 56) = v14;
  sub_269831730(inited);
  (*(v5 + 16))(v8, a1, v4);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  (*(v5 + 32))(v16 + v15, v8, v4);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_269798674;
  *(v17 + 24) = v16;
  sub_269854484();
}

id sub_269798530(uint64_t *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = [v1 initWithSerializedBackingStore_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_26979859C(void *a1)
{
  v1 = [a1 serializedContextByKey];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2698549E4();

  return v3;
}

void sub_269798608(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setHashedRouteId_];
}

uint64_t sub_269798674()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324500, &qword_269860408) - 8) + 80);

  return sub_2697984B4();
}

uint64_t sub_2697986F8()
{
  OUTLINED_FUNCTION_2_7();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2696DA938;

  return sub_269797F04(v3, v0 + 16, v0 + 56);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2697987A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2697987FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17_14(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void *sub_2697988A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_2698538C4();
  v3 = type metadata accessor for BaseDialogProvider();
  v21 = OUTLINED_FUNCTION_99_0();
  if (qword_2803226B0 != -1)
  {
    swift_once();
  }

  v22 = qword_28033D8E0;
  sub_2698538C4();
  type metadata accessor for LocUtil();
  v4 = OUTLINED_FUNCTION_40_5();
  sub_26968E5D4(v24, v4 + 16);
  v5 = type metadata accessor for GlobalsImpl();
  inited = swift_initStaticObject();
  sub_269852C84();
  v7 = sub_2698546A4();
  v8 = sub_269854684();
  if (qword_280322688 != -1)
  {
    swift_once();
  }

  v9 = qword_28033D8B8;
  v10 = sub_269853264();
  OUTLINED_FUNCTION_68_0(v10);
  v11 = sub_269853254();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = OUTLINED_FUNCTION_68_0(v12);
  v13[5] = &type metadata for CoreAnalyticsService;
  v13[6] = &xmmword_287A41610;
  v13[15] = v3;
  v13[16] = &off_287A3DBA0;
  v13[12] = v21;
  v13[20] = type metadata accessor for SiriSignalsRecorder();
  v13[21] = &off_287A44CA0;
  v13[17] = v22;
  v13[26] = v5;
  v13[27] = &off_287A41CD0;
  v13[23] = inited;
  v14 = MEMORY[0x277D61F10];
  v13[46] = v7;
  v13[47] = v14;
  v13[43] = v8;
  v13[31] = type metadata accessor for TrialSignalCollectConfigProvider();
  v13[32] = &off_287A44AE0;
  v13[28] = v9;
  v15 = MEMORY[0x277D5BD58];
  v13[36] = v10;
  v13[37] = v15;
  v13[33] = v11;
  v13[48] = 0;
  v16 = qword_2803238F0;
  v17 = type metadata accessor for MediaNLIntent();
  __swift_storeEnumTagSinglePayload(v13 + v16, 1, 1, v17);
  sub_26968E5D4(&v25, (v13 + 7));
  v13[22] = v4;
  sub_26968E5D4(v24, (v13 + 38));
  v13[48] = a1;

  return v13;
}

uint64_t sub_269798AFC()
{
  type metadata accessor for AddToWatchListIntent();
  type metadata accessor for AddToWatchListIntentResponse();
  sub_269852B14();
  v0 = sub_269854404();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_2698543D4();
  sub_269852A44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803246B0, &qword_269860610);
  sub_269852AB4();
  sub_2697988A8(0, &qword_2803246D8, &qword_269860628);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803246D8, &qword_269860628);
  sub_26971CA38(&qword_2803246E0, &qword_2803246D8, &qword_269860628);
  sub_269852A74();

  sub_269852AF4();
  type metadata accessor for AddToWatchListUnsupportedValueStrategy();
  *&v5 = sub_2697473A4();
  sub_26979C320(&qword_2803246E8, type metadata accessor for AddToWatchListUnsupportedValueStrategy);
  sub_269852A94();

  sub_269852AD4();
  sub_2698538C4();
  type metadata accessor for BaseDialogProvider();
  v3 = swift_allocObject();
  *&v5 = sub_26979C204(&v5, v3, type metadata accessor for AddToWatchListHandleIntentStrategy);
  type metadata accessor for AddToWatchListHandleIntentStrategy();
  sub_26979C320(&qword_2803246F0, type metadata accessor for AddToWatchListHandleIntentStrategy);
  sub_269852A34();

  sub_269852AA4();
}

void sub_269798DB8()
{
  OUTLINED_FUNCTION_19_1();
  sub_26969329C(0, &qword_2815718F0, 0x277CD3EC0);
  sub_26969329C(0, &qword_2803245E0, 0x277CD3EC8);
  OUTLINED_FUNCTION_16_16();
  sub_269852B14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323DC0, &unk_26985CF00);
  OUTLINED_FUNCTION_12_26();
  sub_269852AB4();
  if (qword_280322450 != -1)
  {
    swift_once();
  }

  sub_26979BF5C(qword_28033D628, &v37);
  sub_2698538C4();
  v0 = OUTLINED_FUNCTION_22_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  v2 = OUTLINED_FUNCTION_44_6();
  sub_26968E5D4(&v34, v2 + 16);
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_11_28();
  sub_26971CA38(v3, v4, &qword_269860598);
  OUTLINED_FUNCTION_18_15();
  sub_269852A34();
  OUTLINED_FUNCTION_29_11();
  OUTLINED_FUNCTION_10_18();
  sub_269852AA4();
  v5 = OUTLINED_FUNCTION_22_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *&v37 = v7;
  OUTLINED_FUNCTION_11_28();
  sub_26971CA38(v8, v9, &qword_2698605A0);
  OUTLINED_FUNCTION_18_15();
  sub_269852A54();
  OUTLINED_FUNCTION_29_11();
  OUTLINED_FUNCTION_10_18();
  sub_269852AC4();
  v10 = type metadata accessor for BaseDialogProvider();
  v11 = OUTLINED_FUNCTION_99_0();

  sub_2698538C4();
  v35 = v10;
  v36 = &off_287A3DBA0;
  *&v34 = v11;
  type metadata accessor for INPlayMediaUnsupportedValueStrategy();
  v12 = OUTLINED_FUNCTION_44_6();
  __swift_mutable_project_boxed_opaque_existential_1(&v34, v10);
  OUTLINED_FUNCTION_3_20();
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = OUTLINED_FUNCTION_6_30(v16, v34);
  v18(v17);
  OUTLINED_FUNCTION_39_2();
  *&v37 = v12;
  sub_26979C320(&qword_280324608, type metadata accessor for INPlayMediaUnsupportedValueStrategy);
  OUTLINED_FUNCTION_18_15();
  sub_269852A94();

  OUTLINED_FUNCTION_5_13();
  OUTLINED_FUNCTION_12_26();
  sub_269852AD4();
  sub_2698538C4();
  v19 = OUTLINED_FUNCTION_20_14();
  v20 = sub_269853264();
  OUTLINED_FUNCTION_68_0(v20);
  OUTLINED_FUNCTION_15_18();

  v21 = sub_269853254();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324610, &qword_2698605A8);
  swift_allocObject();
  v22 = OUTLINED_FUNCTION_52_3();
  sub_26979BFB8(v22, v19, v21, v23);
  OUTLINED_FUNCTION_15_18();

  *&v37 = v21;
  OUTLINED_FUNCTION_14_16(&qword_280324618);
  OUTLINED_FUNCTION_52_3();
  sub_269852A84();

  OUTLINED_FUNCTION_50_4();
  OUTLINED_FUNCTION_12_26();
  sub_269852B04();
  sub_2698538C4();
  OUTLINED_FUNCTION_20_14();
  v24 = OUTLINED_FUNCTION_50_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  v26 = swift_allocObject();
  OUTLINED_FUNCTION_41_4(v26);
  type metadata accessor for LocUtil();
  v27 = OUTLINED_FUNCTION_40_5();
  sub_26968E5D4(&v37, v27 + 16);
  qword_269860608 = v27;
  *&v37 = &qword_2698605A8;
  OUTLINED_FUNCTION_13_17(&qword_280324628);
  OUTLINED_FUNCTION_18_15();
  sub_269852A74();
  OUTLINED_FUNCTION_48_6();

  OUTLINED_FUNCTION_9_24();
  sub_269852AF4();
  v28 = OUTLINED_FUNCTION_20_14();
  v38 = v10;
  v39 = &off_287A3DBA0;
  *&v37 = v28;
  sub_2698538C4();
  v29 = OUTLINED_FUNCTION_16_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
  v31 = OUTLINED_FUNCTION_44_6();
  OUTLINED_FUNCTION_31_10(v31);
  sub_26968E5D4(&v34, &qword_2698605E8);
  *&v37 = &unk_2698605B0;
  OUTLINED_FUNCTION_11_28();
  sub_26971CA38(v32, v33, &qword_2698605B8);
  OUTLINED_FUNCTION_18_15();
  sub_269852A64();
  OUTLINED_FUNCTION_48_6();

  OUTLINED_FUNCTION_9_24();
  sub_269852AE4();
  OUTLINED_FUNCTION_21_0();
}

void sub_26979927C()
{
  OUTLINED_FUNCTION_19_1();
  sub_26969329C(0, &qword_2815718C8, 0x277CD4030);
  sub_26969329C(0, &qword_280324640, 0x277CD4038);
  OUTLINED_FUNCTION_16_16();
  sub_269852B14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D58, &unk_26985CD10);
  OUTLINED_FUNCTION_12_26();
  sub_269852AB4();
  if (qword_280322448 != -1)
  {
    swift_once();
  }

  sub_26979C04C(qword_28033D600, &v37);
  sub_2698538C4();
  v0 = OUTLINED_FUNCTION_22_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  v2 = OUTLINED_FUNCTION_44_6();
  sub_26968E5D4(&v34, v2 + 16);
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_11_28();
  sub_26971CA38(v3, v4, &qword_2698605D8);
  OUTLINED_FUNCTION_18_15();
  sub_269852A34();
  OUTLINED_FUNCTION_29_11();
  OUTLINED_FUNCTION_10_18();
  sub_269852AA4();
  v5 = OUTLINED_FUNCTION_22_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *&v37 = v7;
  OUTLINED_FUNCTION_11_28();
  sub_26971CA38(v8, v9, &qword_2698605E0);
  OUTLINED_FUNCTION_18_15();
  sub_269852A54();
  OUTLINED_FUNCTION_29_11();
  OUTLINED_FUNCTION_10_18();
  sub_269852AC4();
  v10 = type metadata accessor for BaseDialogProvider();
  v11 = OUTLINED_FUNCTION_99_0();

  sub_2698538C4();
  v35 = v10;
  v36 = &off_287A3DBA0;
  *&v34 = v11;
  type metadata accessor for INSearchForMediaUnsupportedValueStrategy();
  v12 = OUTLINED_FUNCTION_44_6();
  __swift_mutable_project_boxed_opaque_existential_1(&v34, v10);
  OUTLINED_FUNCTION_3_20();
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = OUTLINED_FUNCTION_6_30(v16, v34);
  v18(v17);
  OUTLINED_FUNCTION_39_2();
  *&v37 = v12;
  sub_26979C320(&qword_280324668, type metadata accessor for INSearchForMediaUnsupportedValueStrategy);
  OUTLINED_FUNCTION_18_15();
  sub_269852A94();

  OUTLINED_FUNCTION_5_13();
  OUTLINED_FUNCTION_12_26();
  sub_269852AD4();
  sub_2698538C4();
  v19 = OUTLINED_FUNCTION_20_14();
  v20 = sub_269853264();
  OUTLINED_FUNCTION_68_0(v20);
  OUTLINED_FUNCTION_15_18();

  v21 = sub_269853254();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324670, &qword_2698605E8);
  swift_allocObject();
  v22 = OUTLINED_FUNCTION_52_3();
  sub_26979BFB8(v22, v19, v21, v23);
  OUTLINED_FUNCTION_15_18();

  *&v37 = v21;
  OUTLINED_FUNCTION_14_16(&qword_280324678);
  OUTLINED_FUNCTION_52_3();
  sub_269852A84();

  OUTLINED_FUNCTION_50_4();
  OUTLINED_FUNCTION_12_26();
  sub_269852B04();
  sub_2698538C4();
  OUTLINED_FUNCTION_20_14();
  v24 = OUTLINED_FUNCTION_50_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  v26 = swift_allocObject();
  OUTLINED_FUNCTION_41_4(v26);
  type metadata accessor for LocUtil();
  v27 = OUTLINED_FUNCTION_40_5();
  sub_26968E5D4(&v37, v27 + 16);
  qword_269860648 = v27;
  *&v37 = &qword_2698605E8;
  OUTLINED_FUNCTION_13_17(&qword_280324688);
  OUTLINED_FUNCTION_18_15();
  sub_269852A74();
  OUTLINED_FUNCTION_48_6();

  OUTLINED_FUNCTION_9_24();
  sub_269852AF4();
  v28 = OUTLINED_FUNCTION_20_14();
  v38 = v10;
  v39 = &off_287A3DBA0;
  *&v37 = v28;
  sub_2698538C4();
  v29 = OUTLINED_FUNCTION_16_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
  v31 = OUTLINED_FUNCTION_44_6();
  OUTLINED_FUNCTION_31_10(v31);
  sub_26968E5D4(&v34, &unk_269860628);
  *&v37 = &unk_2698605F0;
  OUTLINED_FUNCTION_11_28();
  sub_26971CA38(v32, v33, &qword_2698605F8);
  OUTLINED_FUNCTION_18_15();
  sub_269852A64();
  OUTLINED_FUNCTION_48_6();

  OUTLINED_FUNCTION_9_24();
  sub_269852AE4();
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_269799740@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2698548D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlayLiveServiceIntent();
  type metadata accessor for PlayLiveServiceIntentResponse();
  sub_269852B14();
  v9 = sub_269854404();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v30 = sub_2698543D4();
  sub_269852A44();
  v28[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803245A0, &qword_269860568);
  v31 = a2;
  sub_269852AB4();
  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_281571B38);
  (*(v5 + 16))(v8, v12, v4);
  v13 = a1;
  v14 = a1;
  v15 = sub_2698548B4();
  v16 = sub_269854F44();

  v17 = os_log_type_enabled(v15, v16);
  v29 = v14;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v32 = v19;
    *v18 = 136315138;
    if (v14 && (v20 = sub_269854634(), v21))
    {
      v22 = v21;
    }

    else
    {

      v22 = 0xE500000000000000;
      v20 = 0x3E6C696E3CLL;
    }

    v23 = sub_26974F520(v20, v22, &v32);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_269684000, v15, v16, "RCHChildFlowProducers.playLiveServiceProducers() remoteDevice: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x26D647170](v19, -1, -1);
    MEMORY[0x26D647170](v18, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  type metadata accessor for PlayLiveServiceHandleIntentStrategy();
  v24 = v13;
  v25 = v29;
  v32 = sub_2697597C8(v29);
  sub_26979C320(&qword_2803245C8, type metadata accessor for PlayLiveServiceHandleIntentStrategy);
  sub_269852A34();

  sub_269852AA4();
  type metadata accessor for PlayLiveServiceDisambiguationStrategy();
  v26 = v24;
  v32 = sub_269751094(v25);
  sub_26979C320(&qword_2803245D0, type metadata accessor for PlayLiveServiceDisambiguationStrategy);
  sub_269852A74();

  sub_269852AF4();
  type metadata accessor for PlayLiveServiceUnsupportedValueStrategy();
  v32 = sub_26975DFA4();
  sub_26979C320(&qword_2803245D8, type metadata accessor for PlayLiveServiceUnsupportedValueStrategy);
  sub_269852A94();

  sub_269852AD4();
}

uint64_t sub_269799BE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2698548D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlayVideoIntent();
  type metadata accessor for PlayVideoIntentResponse();
  sub_269852B14();
  v9 = sub_269854404();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v28[2] = sub_2698543D4();
  sub_269852A44();
  v28[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324550, &qword_269860540);
  v30 = a2;
  sub_269852AB4();
  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_281571B38);
  (*(v5 + 16))(v8, v12, v4);
  v13 = a1;
  v14 = a1;
  v15 = sub_2698548B4();
  v16 = sub_269854F44();

  v17 = os_log_type_enabled(v15, v16);
  v29 = v14;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = v19;
    *v18 = 136315138;
    if (v14 && (v20 = sub_269854634(), v21))
    {
      v22 = v21;
    }

    else
    {

      v22 = 0xE500000000000000;
      v20 = 0x3E6C696E3CLL;
    }

    v23 = sub_26974F520(v20, v22, &v31);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_269684000, v15, v16, "RCHChildFlowProducers.playVideoProducers() remoteDevice: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x26D647170](v19, -1, -1);
    MEMORY[0x26D647170](v18, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v24 = v13;
  v25 = v29;
  v31 = sub_2697988A8(v29, &qword_280324578, &qword_269860558);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324578, &qword_269860558);
  sub_26971CA38(&qword_280324580, &qword_280324578, &qword_269860558);
  sub_269852A74();

  sub_269852AF4();
  type metadata accessor for PlayVideoUnsupportedValueStrategy();
  v31 = sub_26977F4B8();
  sub_26979C320(&qword_280324588, type metadata accessor for PlayVideoUnsupportedValueStrategy);
  sub_269852A94();

  sub_269852AD4();
  type metadata accessor for PlayVideoHandleIntentStrategy();
  v26 = v24;
  v31 = sub_269763E24(v25);
  sub_26979C320(&qword_280324590, type metadata accessor for PlayVideoHandleIntentStrategy);
  sub_269852A34();

  sub_269852AA4();
}

uint64_t sub_26979A098()
{
  type metadata accessor for RemoveFromWatchListIntent();
  type metadata accessor for RemoveFromWatchListIntentResponse();
  sub_269852B14();
  v0 = sub_269854404();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_2698543D4();
  sub_269852A44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324700, &qword_269860638);
  sub_269852AB4();
  sub_2697988A8(0, &qword_280324728, &qword_269860650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324728, &qword_269860650);
  sub_26971CA38(&qword_280324730, &qword_280324728, &qword_269860650);
  sub_269852A74();

  sub_269852AF4();
  type metadata accessor for RemoveFromWatchListUnsupportedValueStrategy();
  *&v5 = sub_269785C84();
  sub_26979C320(&qword_280324738, type metadata accessor for RemoveFromWatchListUnsupportedValueStrategy);
  sub_269852A94();

  sub_269852AD4();
  sub_2698538C4();
  type metadata accessor for BaseDialogProvider();
  v3 = swift_allocObject();
  *&v5 = sub_26979C204(&v5, v3, type metadata accessor for RemoveFromWatchListHandleIntentStrategy);
  type metadata accessor for RemoveFromWatchListHandleIntentStrategy();
  sub_26979C320(&qword_280324740, type metadata accessor for RemoveFromWatchListHandleIntentStrategy);
  sub_269852A34();

  sub_269852AA4();
}

uint64_t sub_26979A354@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2698548D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WatchSportsEventIntent();
  type metadata accessor for WatchSportsEventIntentResponse();
  sub_269852B14();
  v9 = sub_269854404();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v28 = sub_2698543D4();
  sub_269852A44();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324518, &qword_269860520);
  v29 = a2;
  sub_269852AB4();
  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_281571B38);
  (*(v5 + 16))(v8, v13, v4);
  v14 = a1;
  v15 = a1;
  v16 = sub_2698548B4();
  v17 = sub_269854F44();

  if (os_log_type_enabled(v16, v17))
  {
    v26[1] = v12;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136315138;
    v27 = v15;
    if (v15 && (v20 = sub_269854634(), v21))
    {
      v22 = v21;
    }

    else
    {

      v22 = 0xE500000000000000;
      v20 = 0x3E6C696E3CLL;
    }

    v23 = sub_26974F520(v20, v22, &v30);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_269684000, v16, v17, "RCHChildFlowProducers.watchSportsEventProducers() remoteDevice: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x26D647170](v19, -1, -1);
    MEMORY[0x26D647170](v18, -1, -1);

    (*(v5 + 8))(v8, v4);
    v15 = v27;
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  type metadata accessor for WatchSportsEventHandleIntentStrategy();
  v24 = v14;
  v30 = sub_269788DE0(v15);
  sub_26979C320(&qword_280324540, type metadata accessor for WatchSportsEventHandleIntentStrategy);
  sub_269852A34();

  sub_269852AA4();
}

uint64_t sub_26979A708()
{
  v0 = sub_269854404();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2698543D4();
  qword_280324508 = result;
  return result;
}

void sub_26979A778()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_37_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324548, &qword_269860538);
  OUTLINED_FUNCTION_8(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_9();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324550, &qword_269860540);
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_36_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_29();
  sub_269799BE4(v0, v10);
  v11 = OUTLINED_FUNCTION_8_27();
  v12(v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324558, &qword_269860548);
  OUTLINED_FUNCTION_68_0(v13);
  OUTLINED_FUNCTION_38_9();
  sub_269852B24();
  OUTLINED_FUNCTION_34_6();
  type metadata accessor for PlayVideoFlowStrategy();
  sub_26979C320(&qword_280324560, type metadata accessor for PlayVideoFlowStrategy);

  OUTLINED_FUNCTION_21_14();
  if (qword_280322500 != -1)
  {
    OUTLINED_FUNCTION_4_24();
  }

  OUTLINED_FUNCTION_45_4(qword_280324508);
  v14 = OUTLINED_FUNCTION_19_11();
  v15(v14);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_0_36();
  sub_26971CA38(v16, v17, &qword_269860550);
  OUTLINED_FUNCTION_23_13();
  sub_269852B34();
  OUTLINED_FUNCTION_56_4();

  v18 = OUTLINED_FUNCTION_35_10();
  v19(v18);
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_21_0();
}

void sub_26979A9BC()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_37_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324598, &qword_269860560);
  OUTLINED_FUNCTION_8(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_9();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803245A0, &qword_269860568);
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_36_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_29();
  sub_269799740(v0, v10);
  v11 = OUTLINED_FUNCTION_8_27();
  v12(v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803245A8, &qword_269860570);
  OUTLINED_FUNCTION_68_0(v13);
  OUTLINED_FUNCTION_38_9();
  sub_269852B24();
  OUTLINED_FUNCTION_34_6();
  type metadata accessor for PlayLiveServiceFlowStrategy();
  sub_26979C320(&qword_2803245B0, type metadata accessor for PlayLiveServiceFlowStrategy);

  OUTLINED_FUNCTION_21_14();
  if (qword_280322500 != -1)
  {
    OUTLINED_FUNCTION_4_24();
  }

  OUTLINED_FUNCTION_45_4(qword_280324508);
  v14 = OUTLINED_FUNCTION_19_11();
  v15(v14);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_0_36();
  sub_26971CA38(v16, v17, &qword_269860578);
  OUTLINED_FUNCTION_23_13();
  sub_269852B34();
  OUTLINED_FUNCTION_56_4();

  v18 = OUTLINED_FUNCTION_35_10();
  v19(v18);
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_21_0();
}

void sub_26979AC00()
{
  OUTLINED_FUNCTION_19_1();
  v0 = type metadata accessor for BaseDialogProvider();
  memset(v39, 0, 40);
  v1 = OUTLINED_FUNCTION_99_0();
  sub_2698538C4();
  sub_269852BB4();
  sub_269853524();
  v35[3] = &type metadata for FeatureFlagServiceImpl;
  v35[4] = &off_287A41BD8;
  v34[3] = &type metadata for VideoFlowFactoryImpl;
  v34[4] = &off_287A40968;
  v33[3] = v0;
  v33[4] = &off_287A3DBA0;
  v33[0] = v1;
  v2 = type metadata accessor for ThirdPartyPlayWrapperFlow();
  v3 = OUTLINED_FUNCTION_68_0(v2);
  __swift_mutable_project_boxed_opaque_existential_1(v35, &type metadata for FeatureFlagServiceImpl);
  __swift_mutable_project_boxed_opaque_existential_1(v34, &type metadata for VideoFlowFactoryImpl);
  __swift_mutable_project_boxed_opaque_existential_1(v33, v0);
  OUTLINED_FUNCTION_3_20();
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = *v8;
  v32[3] = &type metadata for FeatureFlagServiceImpl;
  v32[4] = &off_287A41BD8;
  v31[3] = &type metadata for VideoFlowFactoryImpl;
  v31[4] = &off_287A40968;
  v30[3] = v0;
  v30[4] = &off_287A3DBA0;
  v30[0] = v10;
  v11 = OBJC_IVAR____TtC16SiriVideoIntents25ThirdPartyPlayWrapperFlow_input;
  v12 = sub_269853854();
  __swift_storeEnumTagSinglePayload(v11 + v3, 1, 1, v12);
  *(v3 + 296) = 0;
  *(v3 + 304) = 0;
  *(v3 + 312) = 0;
  sub_2696A73F8(v32, v3 + 16);
  sub_2696A73F8(v31, v3 + 56);
  sub_2696A73F8(v30, v3 + 96);
  sub_2696A73F8(v38, v3 + 136);
  sub_26979C0A8(v39, &v25);
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_0(v38);
    sub_26979C118(v39);
    __swift_destroy_boxed_opaque_existential_0(v30);
    __swift_destroy_boxed_opaque_existential_0(v31);
    __swift_destroy_boxed_opaque_existential_0(v32);
    sub_26968E5D4(&v25, &v27);
  }

  else
  {
    sub_2696A73F8(v38, &v27);
    v13 = type metadata accessor for CarSessionProvider();
    v14 = swift_allocObject();
    v15 = v28;
    v16 = v29;
    __swift_mutable_project_boxed_opaque_existential_1(&v27, v28);
    OUTLINED_FUNCTION_3_20();
    v18 = *(v17 + 64);
    MEMORY[0x28223BE20](v19);
    v21 = OUTLINED_FUNCTION_6_30(v20, v24);
    v22(v21);
    v23 = sub_2697B1354(&off_287A41BD8, v14, v15, v16);
    __swift_destroy_boxed_opaque_existential_0(&v27);
    v28 = v13;
    v29 = &off_287A41458;
    *&v27 = v23;
    __swift_destroy_boxed_opaque_existential_0(v38);
    sub_26979C118(v39);
    __swift_destroy_boxed_opaque_existential_0(v30);
    __swift_destroy_boxed_opaque_existential_0(v31);
    __swift_destroy_boxed_opaque_existential_0(v32);
    if (v26)
    {
      sub_26979C118(&v25);
    }
  }

  sub_26968E5D4(&v27, v3 + 176);
  sub_26968E5D4(&v37, v3 + 216);
  sub_26968E5D4(&v36, v3 + 256);
  __swift_destroy_boxed_opaque_existential_0(v33);
  __swift_destroy_boxed_opaque_existential_0(v34);
  __swift_destroy_boxed_opaque_existential_0(v35);
  v39[0] = v3;
  sub_26979C320(&qword_280323DB0, type metadata accessor for ThirdPartyPlayWrapperFlow);
  sub_269852B34();
  OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_21_0();
}

void sub_26979AFB8()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_54_2(v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323DB8, &unk_269860580);
  OUTLINED_FUNCTION_8(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323DC0, &unk_26985CF00);
  v10 = OUTLINED_FUNCTION_8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_33();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_29();
  sub_269798DB8();
  v16 = *(v12 + 16);
  v17 = OUTLINED_FUNCTION_22_10();
  v18(v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323DC8, &unk_26985CF10);
  OUTLINED_FUNCTION_68_0(v19);
  OUTLINED_FUNCTION_86();
  sub_269852B24();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323DA8, &qword_26985CED8);
  OUTLINED_FUNCTION_11_28();
  sub_26971CA38(v20, v21, &qword_26985CED8);
  OUTLINED_FUNCTION_43_4();
  if (v1 && v2)
  {
    sub_269854404();
    OUTLINED_FUNCTION_15_18();

    v22 = v2;
    v23 = sub_2698543E4();
    OUTLINED_FUNCTION_55_4(v23);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323DD8, &qword_269860590);
    OUTLINED_FUNCTION_0_36();
    sub_26971CA38(v24, v25, &qword_269860590);
    OUTLINED_FUNCTION_23_13();
    sub_269852B34();
  }

  else
  {
    sub_269853044();
    v26 = OUTLINED_FUNCTION_5_13();
    __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
    OUTLINED_FUNCTION_0_36();
    sub_26971CA38(v28, v29, &qword_269860590);
    OUTLINED_FUNCTION_23_13();
    sub_269852B34();
    OUTLINED_FUNCTION_15_18();
  }

  v30 = OUTLINED_FUNCTION_51_7();
  v31(v30);
  (*(v12 + 8))(v0, v9);
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_26979B2A8()
{
  type metadata accessor for ExecutePlayVideoIntentFlow();
  sub_269854404();

  v0 = sub_2698543E4();
  sub_269707540(v0);
  sub_26979C320(&qword_280323B70, type metadata accessor for ExecutePlayVideoIntentFlow);
  v1 = sub_269852B34();

  return v1;
}

uint64_t sub_26979B370()
{
  sub_269852BB4();
  v7[3] = &type metadata for FeatureFlagServiceImpl;
  v7[4] = &off_287A41BD8;
  v6[3] = &type metadata for VideoFlowFactoryImpl;
  v6[4] = &off_287A40968;
  WrapperFlow = type metadata accessor for ThirdPartyFindWrapperFlow();
  v1 = OUTLINED_FUNCTION_68_0(WrapperFlow);
  __swift_mutable_project_boxed_opaque_existential_1(v7, &type metadata for FeatureFlagServiceImpl);
  __swift_mutable_project_boxed_opaque_existential_1(v6, &type metadata for VideoFlowFactoryImpl);
  *(v1 + 40) = &type metadata for FeatureFlagServiceImpl;
  *(v1 + 48) = &off_287A41BD8;
  *(v1 + 80) = &type metadata for VideoFlowFactoryImpl;
  *(v1 + 88) = &off_287A40968;
  v2 = OBJC_IVAR____TtC16SiriVideoIntents25ThirdPartyFindWrapperFlow_input;
  v3 = sub_269853854();
  __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, v3);
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 152) = 0;
  sub_26968E5D4(&v8, v1 + 96);
  __swift_destroy_boxed_opaque_existential_0(v6);
  __swift_destroy_boxed_opaque_existential_0(v7);
  *&v8 = v1;
  sub_26979C320(&qword_280323D48, type metadata accessor for ThirdPartyFindWrapperFlow);
  v4 = sub_269852B34();

  return v4;
}

void sub_26979B4A8()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_54_2(v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D50, &unk_2698605C0);
  OUTLINED_FUNCTION_8(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D58, &unk_26985CD10);
  v10 = OUTLINED_FUNCTION_8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_33();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_29();
  sub_26979927C();
  v16 = *(v12 + 16);
  v17 = OUTLINED_FUNCTION_22_10();
  v18(v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D60, &unk_26985CD20);
  OUTLINED_FUNCTION_68_0(v19);
  OUTLINED_FUNCTION_86();
  sub_269852B24();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D40, &unk_26985CD00);
  OUTLINED_FUNCTION_11_28();
  sub_26971CA38(v20, v21, &unk_26985CD00);
  OUTLINED_FUNCTION_43_4();
  if (v1 && v2)
  {
    sub_269854404();
    OUTLINED_FUNCTION_15_18();

    v22 = v2;
    v23 = sub_2698543E4();
    OUTLINED_FUNCTION_55_4(v23);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D70, &qword_2698605D0);
    OUTLINED_FUNCTION_0_36();
    sub_26971CA38(v24, v25, &qword_2698605D0);
    OUTLINED_FUNCTION_23_13();
    sub_269852B34();
  }

  else
  {
    sub_269853044();
    v26 = OUTLINED_FUNCTION_5_13();
    __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
    OUTLINED_FUNCTION_0_36();
    sub_26971CA38(v28, v29, &qword_2698605D0);
    OUTLINED_FUNCTION_23_13();
    sub_269852B34();
    OUTLINED_FUNCTION_15_18();
  }

  v30 = OUTLINED_FUNCTION_51_7();
  v31(v30);
  (*(v12 + 8))(v0, v9);
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_26979B798()
{
  type metadata accessor for ExecuteShowInAppSearchResultsIntentFlow();
  sub_269854404();

  v0 = sub_2698543E4();
  sub_269708ADC(v0);
  sub_26979C320(&qword_280323B98, type metadata accessor for ExecuteShowInAppSearchResultsIntentFlow);
  v1 = sub_269852B34();

  return v1;
}

void sub_26979B860()
{
  OUTLINED_FUNCTION_19_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803246A8, &qword_269860608);
  OUTLINED_FUNCTION_8(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803246B0, &qword_269860610);
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_33();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_53_1();
  sub_269798AFC();
  sub_2698538C4();
  type metadata accessor for AddToWatchListFlowStrategy();
  v12 = OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_31_10(v12);
  v13 = *(v8 + 16);
  v14 = OUTLINED_FUNCTION_16_16();
  v15(v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803246B8, &qword_269860618);
  OUTLINED_FUNCTION_68_0(v16);
  OUTLINED_FUNCTION_86();
  sub_269852B24();
  sub_26979C320(&qword_2803246C0, type metadata accessor for AddToWatchListFlowStrategy);
  OUTLINED_FUNCTION_15_18();

  OUTLINED_FUNCTION_42_6();
  sub_269853044();
  v17 = OUTLINED_FUNCTION_47_5();
  v18(v17);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_0_36();
  sub_26971CA38(v19, v20, &qword_269860620);
  sub_269852B34();
  OUTLINED_FUNCTION_38_9();

  (*(v8 + 8))(v0, v5);
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_21_0();
}

void sub_26979BABC()
{
  OUTLINED_FUNCTION_19_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803246F8, &qword_269860630);
  OUTLINED_FUNCTION_8(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324700, &qword_269860638);
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_33();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_53_1();
  sub_26979A098();
  sub_2698538C4();
  type metadata accessor for RemoveFromWatchListFlowStrategy();
  v12 = OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_31_10(v12);
  v13 = *(v8 + 16);
  v14 = OUTLINED_FUNCTION_16_16();
  v15(v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324708, &qword_269860640);
  OUTLINED_FUNCTION_68_0(v16);
  OUTLINED_FUNCTION_86();
  sub_269852B24();
  sub_26979C320(&qword_280324710, type metadata accessor for RemoveFromWatchListFlowStrategy);
  OUTLINED_FUNCTION_15_18();

  OUTLINED_FUNCTION_42_6();
  sub_269853044();
  v17 = OUTLINED_FUNCTION_47_5();
  v18(v17);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_0_36();
  sub_26971CA38(v19, v20, &qword_269860648);
  sub_269852B34();
  OUTLINED_FUNCTION_38_9();

  (*(v8 + 8))(v0, v5);
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_21_0();
}

void sub_26979BD18()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_37_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324510, &qword_269860518);
  OUTLINED_FUNCTION_8(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_9();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324518, &qword_269860520);
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_36_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_29();
  sub_26979A354(v0, v10);
  v11 = OUTLINED_FUNCTION_8_27();
  v12(v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324520, &qword_269860528);
  OUTLINED_FUNCTION_68_0(v13);
  OUTLINED_FUNCTION_38_9();
  sub_269852B24();
  OUTLINED_FUNCTION_34_6();
  type metadata accessor for WatchSportsEventFlowStrategy();
  sub_26979C320(&qword_280324528, type metadata accessor for WatchSportsEventFlowStrategy);

  OUTLINED_FUNCTION_21_14();
  if (qword_280322500 != -1)
  {
    OUTLINED_FUNCTION_4_24();
  }

  OUTLINED_FUNCTION_45_4(qword_280324508);
  v14 = OUTLINED_FUNCTION_19_11();
  v15(v14);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_0_36();
  sub_26971CA38(v16, v17, &qword_269860530);
  OUTLINED_FUNCTION_23_13();
  sub_269852B34();
  OUTLINED_FUNCTION_56_4();

  v18 = OUTLINED_FUNCTION_35_10();
  v19(v18);
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_21_0();
}

void *sub_26979BFB8(__int128 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[10] = type metadata accessor for BaseDialogProvider();
  a4[11] = &off_287A3DBA0;
  a4[7] = a2;
  v8 = sub_269853264();
  v9 = MEMORY[0x277D5BD58];
  a4[16] = v8;
  a4[17] = v9;
  a4[13] = a3;
  sub_2696A73F8(a1, (a4 + 2));
  type metadata accessor for LocUtil();
  v10 = OUTLINED_FUNCTION_40_5();
  sub_26968E5D4(a1, v10 + 16);
  a4[12] = v10;
  return a4;
}

uint64_t sub_26979C0A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803246A0, &qword_269860600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26979C118(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803246A0, &qword_269860600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_26979C180(__int128 *a1, uint64_t a2, void *a3)
{
  a3[16] = type metadata accessor for BaseDialogProvider();
  a3[17] = &off_287A3DBA0;
  a3[13] = a2;
  sub_2696A73F8(a1, (a3 + 2));
  sub_2696A73F8(a1, (a3 + 7));
  type metadata accessor for LocUtil();
  v6 = OUTLINED_FUNCTION_40_5();
  sub_26968E5D4(a1, v6 + 16);
  a3[12] = v6;
  return a3;
}

void *sub_26979C204(__int128 *a1, uint64_t a2, void (*a3)(void))
{
  v17 = type metadata accessor for BaseDialogProvider();
  v18 = &off_287A3DBA0;
  v16[0] = a2;
  a3(0);
  v6 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  OUTLINED_FUNCTION_3_20();
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = (&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_26979C180(a1, *v11, v6);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return v13;
}

uint64_t sub_26979C320(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_86();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_24()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_27()
{
  v4 = *(v2 + 16);
  result = v0;
  *(v3 - 96) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_17(unint64_t *a1)
{

  return sub_26971CA38(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_14_16(unint64_t *a1)
{

  return sub_26971CA38(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_20_14()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_21_14()
{

  return sub_269853064();
}

__n128 OUTLINED_FUNCTION_24_12()
{
  result = *(v1 - 120);
  v3 = *(v1 - 104);
  *(v0 + 56) = result;
  *(v0 + 72) = v3;
  *(v0 + 88) = *(v1 - 88);
  *(v1 - 120) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_11()
{
}

uint64_t OUTLINED_FUNCTION_31_10(uint64_t a1)
{

  return sub_26968E5D4((v1 - 120), a1 + 16);
}

uint64_t OUTLINED_FUNCTION_35_10()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_39_2()
{
  v5 = *v2;
  v1[5] = v0;
  v1[6] = v3;
  v1[2] = v5;
  sub_26968E5D4((v4 - 120), (v1 + 7));
  __swift_destroy_boxed_opaque_existential_0((v4 - 160));
}

uint64_t OUTLINED_FUNCTION_40_5()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_41_4(void *a1)
{
  a1[10] = v2;
  a1[11] = v3;
  a1[7] = v1;

  return sub_2696A73F8(v4 - 120, (a1 + 2));
}

uint64_t OUTLINED_FUNCTION_42_6()
{

  return sub_269853064();
}

uint64_t OUTLINED_FUNCTION_43_4()
{

  return sub_269853064();
}

uint64_t OUTLINED_FUNCTION_44_6()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_45_4(uint64_t a1)
{

  return MEMORY[0x2821BAFA0](a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_46_2()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_55_4(uint64_t a1)
{

  return MEMORY[0x2821BAFA0](a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_56_4()
{
}

uint64_t sub_26979C798()
{
  v0 = sub_26979C7E0();
  type metadata accessor for AtomicOnce();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v0;
  qword_281571B20 = result;
  return result;
}

uint64_t sub_26979C7E0()
{
  v15 = sub_269854F94();
  v0 = OUTLINED_FUNCTION_8(v15);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  v8 = sub_269854F74();
  v9 = OUTLINED_FUNCTION_4_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = sub_269854994();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_3_1();
  sub_2696ADFE4();
  sub_269854974();
  sub_2697A1A18(&qword_2815718E8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324D40, &unk_269862100);
  sub_2697A1A60(&qword_281571900, &unk_280324D40, &unk_269862100);
  sub_269855174();
  (*(v2 + 104))(v7, *MEMORY[0x277D85260], v15);
  return sub_269854FB4();
}

uint64_t VideoFlowProvider.init()@<X0>(uint64_t a1@<X8>)
{
  sub_2698538C4();
  *(a1 + 64) = &type metadata for VideoFlowFactoryImpl;
  *(a1 + 72) = &off_287A40968;
  v2 = type metadata accessor for PommesResponseLoggingProvider();
  result = swift_allocObject();
  *(a1 + 152) = v2;
  *(a1 + 160) = &off_287A41D18;
  *(a1 + 128) = result;
  *(a1 + 112) = &type metadata for FeatureFlagServiceImpl;
  *(a1 + 120) = &off_287A41BD8;
  *(a1 + 80) = 0;
  return result;
}

uint64_t VideoFlowProvider.findFlow(for:)@<X0>(void (*a1)(void, void, void)@<X0>, uint64_t a2@<X8>)
{
  v246 = a2;
  v245 = a1;
  v216 = sub_2698538D4();
  v2 = OUTLINED_FUNCTION_8(v216);
  v215 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_1(v207 - v8);
  v210 = sub_269852474();
  v9 = OUTLINED_FUNCTION_8(v210);
  v209 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_7();
  v208 = v13;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A38, qword_26985BB40);
  v14 = OUTLINED_FUNCTION_4_3(v213);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15_1(v207 - v17);
  v223 = sub_269852584();
  v18 = OUTLINED_FUNCTION_4_3(v223);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_15_1(v21);
  v222 = sub_269851ED4();
  v22 = OUTLINED_FUNCTION_8(v222);
  v221 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_15_1(v26);
  v227 = sub_269851EF4();
  v27 = OUTLINED_FUNCTION_8(v227);
  v226 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_15_1(v31);
  v32 = sub_269853874();
  v33 = OUTLINED_FUNCTION_8(v32);
  v234 = v34;
  v235 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_15_1(v207 - v38);
  v39 = sub_2698538A4();
  v40 = OUTLINED_FUNCTION_8(v39);
  v232 = v41;
  v233 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_15_1(v44);
  v45 = type metadata accessor for MediaNLIntent();
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  OUTLINED_FUNCTION_15_7();
  v237 = v47;
  v48 = sub_269853F44();
  v49 = OUTLINED_FUNCTION_8(v48);
  v243 = v50;
  v244 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_24_3();
  v236 = v53;
  MEMORY[0x28223BE20](v54);
  v240 = v207 - v55;
  v56 = sub_2698538B4();
  v57 = OUTLINED_FUNCTION_8(v56);
  v59 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v63);
  v65 = (v207 - v64);
  v66 = sub_2698548D4();
  v67 = OUTLINED_FUNCTION_8(v66);
  v69 = v68;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_23_3();
  v242 = v76;
  MEMORY[0x28223BE20](v77);
  v79 = v207 - v78;
  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v80 = __swift_project_value_buffer(v66, qword_281571B38);
  v81 = *(v69 + 16);
  v238 = v80;
  v239 = v81;
  (v81)(v79);
  v82 = sub_2698548B4();
  v83 = sub_269854F44();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_269684000, v82, v83, "Making flow from parse", v84, 2u);
    OUTLINED_FUNCTION_10();
  }

  v87 = *(v69 + 8);
  v86 = v69 + 8;
  v85 = v87;
  v87(v79, v66);
  if ((v247[10] & 1) == 0)
  {
    if (qword_280322508 != -1)
    {
      OUTLINED_FUNCTION_8_28();
    }

    v88 = swift_allocObject();
    *(v88 + 16) = 0;
    sub_269846098(sub_2697A17FC, v88);
  }

  v241 = v86;
  v89 = *(v59 + 16);
  v90 = v245;
  v89(v65, v245, v56);
  v91 = (*(v59 + 88))(v65, v56);
  if (v91 == *MEMORY[0x277D5C128])
  {
    v92 = OUTLINED_FUNCTION_6_31();
    v93(v92);
    v95 = v243;
    v94 = v244;
    v96 = v240;
    (*(v243 + 32))(v240, v65, v244);
    OUTLINED_FUNCTION_15_19();
    v97();
    v98 = v236;
    v245 = *(v95 + 16);
    v245(v236, v96, v94);
    v99 = sub_2698548B4();
    v100 = sub_269854F44();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = OUTLINED_FUNCTION_27_2();
      v233 = v85;
      v102 = v101;
      v103 = OUTLINED_FUNCTION_9_3();
      *&v248[0] = v103;
      *v102 = 136315138;
      sub_2697A1A18(&qword_2803236E0, MEMORY[0x277D5F458]);
      v104 = sub_269855544();
      v106 = v105;
      v107 = *(v95 + 8);
      v107(v98, v244);
      v108 = sub_26974F520(v104, v106, v248);
      v94 = v244;

      *(v102 + 4) = v108;
      _os_log_impl(&dword_269684000, v99, v100, "Received .NLv3IntentOnly parse: %s", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v103);
      v96 = v240;
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v233(v242, v66);
    }

    else
    {

      v107 = *(v95 + 8);
      v107(v98, v94);
      v85(v242, v66);
    }

    v115 = v237;
    v245(v237, v96, v94);
    v116 = sub_26979DE38();
    sub_2697A1918(v115, type metadata accessor for MediaNLIntent);
    if (v116)
    {
      sub_269852BA4();

      v117 = OUTLINED_FUNCTION_14_17();
      return (v107)(v117);
    }

    v144 = OUTLINED_FUNCTION_14_17();
    (v107)(v144);
  }

  else if (v91 == *MEMORY[0x277D5C150])
  {
    v109 = OUTLINED_FUNCTION_6_31();
    v110(v109);
    v112 = v232;
    v111 = v233;
    v113 = v231;
    (*(v232 + 32))(v231, v65, v233);
    if (sub_26979E614())
    {
      sub_269852BA4();

      return (*(v112 + 8))(v113, v111);
    }

    (*(v112 + 8))(v113, v111);
  }

  else if (v91 == *MEMORY[0x277D5C140])
  {
    v118 = OUTLINED_FUNCTION_6_31();
    v119(v118);
    v121 = v234;
    v120 = v235;
    v122 = v230;
    (*(v234 + 32))(v230, v65, v235);
    v123 = v228;
    OUTLINED_FUNCTION_15_19();
    v124();
    v125 = v229;
    (*(v121 + 16))(v229, v122, v120);
    v126 = v66;
    v127 = sub_2698548B4();
    v128 = sub_269854F44();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = OUTLINED_FUNCTION_27_2();
      v130 = OUTLINED_FUNCTION_9_3();
      v233 = v85;
      v131 = v130;
      *&v248[0] = v130;
      *v129 = 136315138;
      v132 = v225;
      v245 = v126;
      sub_269853864();
      v133 = v220;
      sub_269851EE4();
      v134 = v226;
      v135 = v227;
      (*(v226 + 8))(v132, v227);
      sub_269851EC4();
      (*(v221 + 8))(v133, v222);
      v136 = sub_269854AE4();
      v138 = v137;
      v139 = *(v234 + 8);
      v139(v229, v235);
      v140 = sub_26974F520(v136, v138, v248);

      *(v129 + 4) = v140;
      v141 = v132;
      v122 = v230;
      _os_log_impl(&dword_269684000, v127, v128, "Received .pegasusResults parse: %s", v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v131);
      OUTLINED_FUNCTION_10();
      v120 = v235;
      OUTLINED_FUNCTION_10();

      v142 = OUTLINED_FUNCTION_9_25(&v250);
      v143(v142);
    }

    else
    {

      v139 = *(v121 + 8);
      v139(v125, v120);
      v85(v123, v126);
      v135 = v227;
      v134 = v226;
      v141 = v225;
    }

    sub_269853864();
    v162 = sub_26979E748();
    (*(v134 + 8))(v141, v135);
    if (v162)
    {
      sub_269852BA4();

      return (v139)(v122, v120);
    }

    v139(v122, v120);
  }

  else if (v91 == *MEMORY[0x277D5C148])
  {
    v145 = OUTLINED_FUNCTION_6_31();
    v146(v145);
    v147 = v66;
    v148 = *v65;
    v149 = v224;
    v239(v224, v238, v147);
    v150 = v148;
    v151 = sub_2698548B4();
    v152 = sub_269854F44();

    if (os_log_type_enabled(v151, v152))
    {
      v153 = v85;
      v154 = OUTLINED_FUNCTION_27_2();
      v155 = OUTLINED_FUNCTION_9_3();
      *&v248[0] = v155;
      *v154 = 136315138;
      sub_2696D6C54();
      if (v156)
      {
        v157 = v156;
        v158 = v208;
        sub_269854544();

        v159 = v212;
        sub_269852424();
        v160 = v158;
        v149 = v224;
        (*(v209 + 8))(v160, v210);
        v161 = 0;
      }

      else
      {
        v161 = 1;
        v159 = v212;
      }

      v203 = sub_2698523C4();
      __swift_storeEnumTagSinglePayload(v159, v161, 1, v203);
      v204 = sub_269854AE4();
      v206 = sub_26974F520(v204, v205, v248);

      *(v154 + 4) = v206;
      _os_log_impl(&dword_269684000, v151, v152, "Received .pommesResponse parse: %s", v154, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v155);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v153(v149, v147);
    }

    else
    {

      v85(v149, v147);
    }

    v249 = 0;
    memset(v248, 0, sizeof(v248));
    sub_269854524();
    sub_26969B0C0(v248, &qword_280324748, &qword_269860658);
    if (sub_26979E8D0())
    {
      sub_269852BA4();
    }
  }

  else if (v91 == *MEMORY[0x277D5C160])
  {
    v233 = v85;
    v163 = OUTLINED_FUNCTION_6_31();
    v164(v163);
    v165 = v215;
    v166 = v219;
    v167 = v216;
    (*(v215 + 32))(v219, v65, v216);
    v168 = v218;
    OUTLINED_FUNCTION_15_19();
    v169();
    v170 = *(v165 + 16);
    v171 = v214;
    v170(v214, v166, v167);
    v172 = v66;
    v173 = sub_2698548B4();
    v174 = sub_269854F44();
    if (os_log_type_enabled(v173, v174))
    {
      v175 = OUTLINED_FUNCTION_27_2();
      v245 = v172;
      v176 = v165;
      v177 = v175;
      v178 = OUTLINED_FUNCTION_9_3();
      *&v248[0] = v178;
      *v177 = 136315138;
      v170(v207[2], v171, v167);
      v179 = sub_269854AE4();
      v181 = v180;
      v182 = *(v176 + 8);
      v182(v171, v167);
      v183 = sub_26974F520(v179, v181, v248);

      *(v177 + 4) = v183;
      _os_log_impl(&dword_269684000, v173, v174, "Received .uso parse: %s", v177, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v178);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v184 = OUTLINED_FUNCTION_9_25(v248 + 8);
      v185(v184);
      v182(v219, v167);
    }

    else
    {

      v202 = *(v165 + 8);
      v202(v171, v167);
      v233(v168, v172);
      v202(v166, v167);
    }
  }

  else
  {
    v186 = v217;
    OUTLINED_FUNCTION_15_19();
    v187();
    v188 = v211;
    v89(v211, v90, v56);
    v189 = sub_2698548B4();
    v245 = v66;
    v190 = v189;
    v191 = sub_269854F24();
    if (os_log_type_enabled(v190, v191))
    {
      v192 = v188;
      v193 = OUTLINED_FUNCTION_27_2();
      v247 = OUTLINED_FUNCTION_9_3();
      *&v248[0] = v247;
      *v193 = 136315138;
      LODWORD(v244) = v191;
      v89(v207[1], v192, v56);
      v194 = sub_269854AE4();
      v233 = v85;
      v195 = v194;
      v197 = v196;
      v198 = *(v59 + 8);
      v198(v192, v56);
      v199 = sub_26974F520(v195, v197, v248);

      *(v193 + 4) = v199;
      _os_log_impl(&dword_269684000, v190, v244, "Received unsupported parse: %s", v193, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v247);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v200 = OUTLINED_FUNCTION_9_25(v248);
      v201(v200);
    }

    else
    {

      v198 = *(v59 + 8);
      v198(v188, v56);
      v85(v186, v245);
    }

    v198(v65, v56);
  }

  return sub_269852B94();
}

uint64_t sub_26979DE38()
{
  v1 = v0;
  v2 = sub_2698548D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v29 - v8;
  if (qword_280322560 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaNLIntent();
  sub_2697A1A18(qword_280323548, type metadata accessor for MediaNLIntent);
  sub_269853D54();
  if (v30)
  {
    v10 = 0;
    if (v30 == 1)
    {
      if (!sub_2697A1458())
      {
        if (qword_2803225C8 != -1)
        {
          swift_once();
        }

        sub_269853D54();
        if (v31)
        {

          type metadata accessor for PlayLiveServiceWrapperFlow();
          sub_269724F70();
          v30 = v12;
          v13 = &qword_280323E70;
          v14 = type metadata accessor for PlayLiveServiceWrapperFlow;
        }

        else
        {
          if (qword_2803225C0 != -1)
          {
            swift_once();
          }

          v19 = sub_269853D64();
          v20 = (v19 + 32);
          v21 = *(v19 + 16);
          v29[3] = 0x800000026987A6C0;
          v29[4] = v19;
          v29[1] = 0x800000026987A660;
          v29[2] = 0x800000026987A6A0;
          v29[0] = 0x800000026987A640;
          while (2)
          {
            if (v21)
            {
              switch(*v20)
              {
                case 0x13:

                  break;
                default:
                  v22 = sub_269855584();

                  ++v20;
                  --v21;
                  if ((v22 & 1) == 0)
                  {
                    continue;
                  }

                  break;
              }

              if (qword_280322578 != -1)
              {
                swift_once();
              }

              sub_269853D54();
              if (!v31)
              {
                sub_269852BB4();
                sub_269724B58();
                v10 = sub_269852B34();
                sub_2697A18C4(&v30);
                return v10;
              }
            }

            break;
          }

          if (qword_280322700 != -1)
          {
            swift_once();
          }

          v23 = __swift_project_value_buffer(v2, qword_281571B38);
          (*(v3 + 16))(v9, v23, v2);
          v24 = sub_2698548B4();
          v25 = sub_269854F44();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 0;
            _os_log_impl(&dword_269684000, v24, v25, "VideoFlowProvider makeFlow() returning playVideoWrapperFlow", v26, 2u);
            MEMORY[0x26D647170](v26, -1, -1);
          }

          (*(v3 + 8))(v9, v2);
          type metadata accessor for PlayVideoWrapperFlow();
          sub_2697290CC();
          v30 = v27;
          v13 = &qword_280323E90;
          v14 = type metadata accessor for PlayVideoWrapperFlow;
        }

        sub_2697A1A18(v13, v14);
        v10 = sub_269852B34();

        return v10;
      }

      __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
      sub_26979AC00();
      return v11;
    }
  }

  else
  {
    if (sub_2697A1458())
    {
      __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));
      return sub_26979B370();
    }

    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_281571B38);
    (*(v3 + 16))(v7, v15, v2);
    v16 = sub_2698548B4();
    v17 = sub_269854F24();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_269684000, v16, v17, "Unable to handle find utterances on this platform", v18, 2u);
      MEMORY[0x26D647170](v18, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    return 0;
  }

  return v10;
}

uint64_t sub_26979E614()
{
  sub_269853884();
  v1 = SKIDirectInvocation.Video.init(rawValue:)();
  if (v1 == 4)
  {
    type metadata accessor for TvAppNotInstalledFlow();
    sub_26973895C();
    v3 = &qword_280323EF8;
    v4 = type metadata accessor for TvAppNotInstalledFlow;
    goto LABEL_7;
  }

  if (v1 == 3)
  {
    type metadata accessor for OpenOnRemoteDeviceFlow();
    sub_269720C4C();
    v3 = &qword_280323E48;
    v4 = type metadata accessor for OpenOnRemoteDeviceFlow;
LABEL_7:
    sub_2697A1A18(v3, v4);
    v2 = sub_269852B34();

    return v2;
  }

  if (v1 != 2)
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));
  return sub_26979B370();
}

uint64_t sub_26979E748()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_269852474();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2696D3C74();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_26969B0C0(v3, &qword_280323360, &unk_26985AB80);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v9 = sub_2697A00B8(v8);
    (*(v5 + 8))(v8, v4);
  }

  return v9;
}

uint64_t sub_26979E8D0()
{
  v0 = sub_269852474();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2696D6C54();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  sub_269854544();
  v7 = sub_2697A00B8(v4);

  (*(v1 + 8))(v4, v0);
  return v7;
}

uint64_t static VideoFlowProvider.prewarm()()
{
  if (qword_280322508 != -1)
  {
    OUTLINED_FUNCTION_8_28();
  }

  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  sub_269846098(sub_2697A1AB8, v0);
}

uint64_t sub_26979EA64(char a1)
{
  v2 = sub_269854954();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_269854994();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v20);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269854964();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2696ADFE4();
  (*(v11 + 104))(v14, *MEMORY[0x277D851C0], v10);
  v15 = sub_269854FC4();
  (*(v11 + 8))(v14, v10);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  aBlock[4] = sub_2697A19E4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2696A8DD0;
  aBlock[3] = &block_descriptor_14;
  v17 = _Block_copy(aBlock);
  sub_269854974();
  v22 = MEMORY[0x277D84F90];
  sub_2697A1A18(&qword_281571918, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
  sub_2697A1A60(&qword_281571908, &unk_2803228A0, &qword_2698577D0);
  sub_269855174();
  MEMORY[0x26D645EA0](0, v9, v5, v17);
  _Block_release(v17);

  (*(v21 + 8))(v5, v2);
  (*(v6 + 8))(v9, v20);
}

uint64_t sub_26979EDE8(char a1)
{
  v2 = sub_269854964();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2698548D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, qword_281571B38);
  (*(v8 + 16))(v11, v12, v7);
  v13 = sub_2698548B4();
  v14 = sub_269854F44();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_269684000, v13, v14, "VideoFlowProvider#prewarm parallelizing playback tasks on separate queue", v15, 2u);
    MEMORY[0x26D647170](v15, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  (*(v3 + 104))(v6, *MEMORY[0x277D851C0], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324758, &qword_2698606E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269858BB0;
  v17 = swift_allocObject();
  *(v17 + 16) = a1 & 1;
  *(inited + 32) = sub_2697A1A04;
  *(inited + 40) = v17;
  *(inited + 48) = sub_26979F150;
  *(inited + 56) = 0;
  *(inited + 64) = sub_26979F1B0;
  *(inited + 72) = 0;
  *(inited + 80) = sub_26979F1DC;
  *(inited + 88) = 0;
  *(inited + 96) = sub_26979F3C0;
  *(inited + 104) = 0;
  *(inited + 112) = sub_26979FC30;
  *(inited + 120) = 0;
  sub_2696ADFE4();
  v18 = sub_269854FC4();
  sub_2696A87EC(v18, inited, sub_26979FF2C, 0);

  swift_setDeallocating();
  sub_269819DD4();
  return (*(v3 + 8))(v6, v2);
}

void sub_26979F150()
{
  v0 = [objc_opt_self() sharedInstance];
  [v0 prewarm];
}

uint64_t sub_26979F1F8(uint64_t a1)
{
  v2 = sub_2698548D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_281571B50);
  (*(v3 + 16))(v6, v7, v2);

  v8 = sub_2698548B4();
  v9 = sub_269854F14();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = *(a1 + 16);

    _os_log_impl(&dword_269684000, v8, v9, "VideoFlowProvider#prewarm InstalledAppProvider apps: %ld", v10, 0xCu);
    MEMORY[0x26D647170](v10, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_26979F3C0()
{
  v33 = sub_269854954();
  v36 = *(v33 - 8);
  v0 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_269854994();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269854944();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2698549B4();
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = sub_269854964();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2696ADFE4();
  (*(v18 + 104))(v21, *MEMORY[0x277D851B8], v17);
  v30 = sub_269854FC4();
  (*(v18 + 8))(v21, v17);
  sub_2698549A4();
  *v9 = 50;
  (*(v6 + 104))(v9, *MEMORY[0x277D85178], v5);
  MEMORY[0x26D6458C0](v14, v9);
  (*(v6 + 8))(v9, v5);
  v22 = *(v37 + 8);
  v37 += 8;
  v22(v14, v10);
  aBlock[4] = sub_26979F8D4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2696A8DD0;
  aBlock[3] = &block_descriptor_13;
  v23 = _Block_copy(aBlock);
  v24 = v31;
  sub_269854974();
  v38 = MEMORY[0x277D84F90];
  sub_2697A1A18(&qword_281571918, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
  sub_2697A1A60(&qword_281571908, &unk_2803228A0, &qword_2698577D0);
  v26 = v32;
  v25 = v33;
  sub_269855174();
  v27 = v30;
  MEMORY[0x26D645E80](v16, v24, v26, v23);
  _Block_release(v23);

  (*(v36 + 8))(v26, v25);
  (*(v34 + 8))(v24, v35);
  return (v22)(v16, v10);
}

void sub_26979F8D4()
{
  v0 = sub_2698548D4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_281571B50);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2698548B4();
  v7 = sub_269854F14();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_269684000, v6, v7, "VideoFlowProvider#prewarm AppSelector started...", v8, 2u);
    MEMORY[0x26D647170](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  type metadata accessor for AppSelector();
  sub_2696AEBC0();
}

uint64_t sub_26979FA88(char a1)
{
  v2 = sub_2698548D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_281571B50);
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2698548B4();
  v9 = sub_269854F14();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&dword_269684000, v8, v9, "VideoFlowProvider#prewarm AppSelector success?:%{BOOL}d", v10, 8u);
    MEMORY[0x26D647170](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_26979FC30(uint64_t a1)
{
  v2 = sub_2698548D4();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v11 = *a1;
  v10 = *(a1 + 8);
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v2, qword_281571B50);
  v30 = v3[2];
  v30(v9, v12, v2);
  v13 = sub_2698548B4();
  v14 = sub_269854F14();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v7;
    v16 = v11;
    v17 = v15;
    *v15 = 0;
    _os_log_impl(&dword_269684000, v13, v14, "SpotlightSearchProvider#warmup", v15, 2u);
    v18 = v17;
    v11 = v16;
    v7 = v29;
    MEMORY[0x26D647170](v18, -1, -1);
  }

  v19 = v3[1];
  v19(v9, v2);
  v20 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324760, qword_2698606F0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_269857710;
  v22 = *MEMORY[0x277CCA1A0];
  *(v21 + 32) = *MEMORY[0x277CCA1A0];
  v23 = v22;
  sub_2697A1970(v21, v20);
  v30(v7, v12, v2);
  v24 = sub_2698548B4();
  v25 = sub_269854F14();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_269684000, v24, v25, "SpotlightSearchProvider#warmup complete", v26, 2u);
    MEMORY[0x26D647170](v26, -1, -1);
  }

  v27 = (v19)(v7, v2);
  return v11(v27);
}

uint64_t sub_26979FF2C()
{
  v0 = sub_2698548D4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_281571B50);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2698548B4();
  v7 = sub_269854F14();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_269684000, v6, v7, "VideoFlowDelegatePlugin#warmup complete", v8, 2u);
    MEMORY[0x26D647170](v8, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2697A00B8(uint64_t a1)
{
  v165 = a1;
  v1 = sub_2698548D4();
  v2 = *(v1 - 8);
  v159 = v1;
  v160 = v2;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v145 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v155 = &v144 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v154 = &v144 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v146 = &v144 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v147 = &v144 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v149 = &v144 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v150 = &v144 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v148 = &v144 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v151 = &v144 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v152 = &v144 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v153 = &v144 - v25;
  MEMORY[0x28223BE20](v24);
  v158 = &v144 - v26;
  v27 = sub_269851F04();
  v28 = *(v27 - 8);
  v29 = v28;
  v30 = v28[8];
  v31 = MEMORY[0x28223BE20](v27);
  v163 = &v144 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v144 - v33;
  v35 = sub_2698523C4();
  v164 = *(v35 - 8);
  v36 = *(v164 + 8);
  v37 = MEMORY[0x28223BE20](v35);
  v162 = &v144 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v144 - v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324750, &unk_2698606D8);
  v41 = v28[9];
  v42 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_2698580D0;
  v44 = v43 + v42;
  v45 = v28[13];
  v161 = *MEMORY[0x277D39200];
  v45(v44);
  v157 = *MEMORY[0x277D39208];
  v45(v44 + v41);
  v46 = v27;
  v47 = v35;
  v48 = v164;
  sub_269831C88();
  sub_269852424();
  sub_2698523A4();
  v49 = *(v48 + 1);
  v49(v40, v47);
  sub_269807DA0();
  LOBYTE(v28) = v50;

  v51 = v29[1];
  v51(v34, v46);
  if (v28)
  {
    v52 = *(sub_269852464() + 16);

    if (!v52)
    {
      type metadata accessor for NoResultsFlow();
      v166 = sub_26971D2CC();
      v65 = &qword_280323E00;
      v66 = type metadata accessor for NoResultsFlow;
      goto LABEL_34;
    }
  }

  v164 = v51;
  v53 = v162;
  sub_269852424();
  v54 = v163;
  sub_2698523A4();
  v49(v53, v47);
  v55 = (v29[11])(v54, v46);
  if (v55 == v161)
  {
    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v56 = v159;
    v57 = __swift_project_value_buffer(v159, qword_281571B38);
    v58 = v160;
    v59 = v158;
    (*(v160 + 16))(v158, v57, v56);
    v60 = sub_2698548B4();
    v61 = sub_269854F44();
    if (!os_log_type_enabled(v60, v61))
    {
      goto LABEL_9;
    }

    v62 = swift_slowAlloc();
    *v62 = 0;
    v63 = "VideoFlowProvider makeFlow() returning playVideoWrapperFlow";
LABEL_8:
    _os_log_impl(&dword_269684000, v60, v61, v63, v62, 2u);
    MEMORY[0x26D647170](v62, -1, -1);
LABEL_9:

    (*(v58 + 8))(v59, v56);
    type metadata accessor for PlayVideoWrapperFlow();
    sub_2697290CC();
    v166 = v64;
    v65 = &qword_280323E90;
    v66 = type metadata accessor for PlayVideoWrapperFlow;
LABEL_34:
    sub_2697A1A18(v65, v66);
    v91 = sub_269852B34();

    return v91;
  }

  if (v55 == v157)
  {
    v67 = v156[4];
    __swift_project_boxed_opaque_existential_1(v156, v156[3]);
    v68 = sub_269852D04();
    v56 = v159;
    v58 = v160;
    if ((v68 & 1) == 0)
    {
      if (qword_280322700 != -1)
      {
        swift_once();
      }

      v78 = __swift_project_value_buffer(v56, qword_281571B38);
      v79 = v155;
      (*(v58 + 16))(v155, v78, v56);
      v80 = sub_2698548B4();
      v81 = sub_269854F44();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_269684000, v80, v81, "VideoFlowProvider makeFlow() returning SearchVideoFlow", v82, 2u);
        MEMORY[0x26D647170](v82, -1, -1);
      }

      (*(v58 + 8))(v79, v56);
      type metadata accessor for SearchVideoFlow();
      v166 = sub_26972CD80();
      v65 = &qword_280323EB0;
      v66 = type metadata accessor for SearchVideoFlow;
      goto LABEL_34;
    }

    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v69 = __swift_project_value_buffer(v56, qword_281571B38);
    v59 = v154;
    (*(v58 + 16))(v154, v69, v56);
    v60 = sub_2698548B4();
    v61 = sub_269854F44();
    if (!os_log_type_enabled(v60, v61))
    {
      goto LABEL_9;
    }

    v62 = swift_slowAlloc();
    *v62 = 0;
    v63 = "VideoFlowProvider makeFlow() returning playVideoWrapperFlow for search request because device is in CarPlay";
    goto LABEL_8;
  }

  if (v55 == *MEMORY[0x277D391D8])
  {
    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v70 = v159;
    v71 = __swift_project_value_buffer(v159, qword_281571B38);
    v72 = v160;
    v73 = v153;
    (*(v160 + 16))(v153, v71, v70);
    v74 = sub_2698548B4();
    v75 = sub_269854F44();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_269684000, v74, v75, "VideoFlowProvider makeFlow() returning playLiveServiceWrapperFlow", v76, 2u);
      MEMORY[0x26D647170](v76, -1, -1);
    }

    (*(v72 + 8))(v73, v70);
    type metadata accessor for PlayLiveServiceWrapperFlow();
    sub_269724F70();
    v166 = v77;
    v65 = &qword_280323E70;
    v66 = type metadata accessor for PlayLiveServiceWrapperFlow;
    goto LABEL_34;
  }

  if (v55 == *MEMORY[0x277D391E0])
  {
    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v83 = v159;
    v84 = __swift_project_value_buffer(v159, qword_281571B38);
    v85 = v160;
    v86 = v152;
    (*(v160 + 16))(v152, v84, v83);
    v87 = sub_2698548B4();
    v88 = sub_269854F44();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_269684000, v87, v88, "VideoFlowProvider makeFlow() returning watchSportsEventWrapperFlow", v89, 2u);
      MEMORY[0x26D647170](v89, -1, -1);
    }

    (*(v85 + 8))(v86, v83);
    type metadata accessor for WatchSportsEventWrapperFlow();
    sub_269739E38();
    v166 = v90;
    v65 = &qword_280323F20;
    v66 = type metadata accessor for WatchSportsEventWrapperFlow;
    goto LABEL_34;
  }

  if (v55 == *MEMORY[0x277D391D0])
  {
    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v93 = v159;
    v94 = __swift_project_value_buffer(v159, qword_281571B38);
    v95 = v160;
    v96 = v151;
    (*(v160 + 16))(v151, v94, v93);
    v97 = sub_2698548B4();
    v98 = sub_269854F44();
    v99 = os_log_type_enabled(v97, v98);
    v100 = v156;
    if (!v99)
    {
      goto LABEL_42;
    }

    v101 = swift_slowAlloc();
    *v101 = 0;
    v102 = "VideoFlowProvider makeFlow() returning thirdPartyPlayWrapperFlow";
    goto LABEL_41;
  }

  if (v55 == *MEMORY[0x277D391F0])
  {
    v100 = v156;
    v104 = v156[4];
    __swift_project_boxed_opaque_existential_1(v156, v156[3]);
    v105 = sub_269852D04();
    v93 = v159;
    v95 = v160;
    if ((v105 & 1) == 0)
    {
      if (qword_280322700 != -1)
      {
        swift_once();
      }

      v116 = __swift_project_value_buffer(v93, qword_281571B38);
      v117 = v150;
      (*(v95 + 16))(v150, v116, v93);
      v118 = sub_2698548B4();
      v119 = sub_269854F44();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        *v120 = 0;
        _os_log_impl(&dword_269684000, v118, v119, "VideoFlowProvider makeFlow() returning thirdPartyFindWrapperFlow", v120, 2u);
        MEMORY[0x26D647170](v120, -1, -1);
      }

      (*(v95 + 8))(v117, v93);
      __swift_project_boxed_opaque_existential_1(v100 + 5, v100[8]);
      return sub_26979B370();
    }

    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v106 = __swift_project_value_buffer(v93, qword_281571B38);
    v96 = v148;
    (*(v95 + 16))(v148, v106, v93);
    v97 = sub_2698548B4();
    v98 = sub_269854F44();
    if (!os_log_type_enabled(v97, v98))
    {
LABEL_42:

      (*(v95 + 8))(v96, v93);
      __swift_project_boxed_opaque_existential_1(v100 + 5, v100[8]);
      sub_26979AC00();
      return v103;
    }

    v101 = swift_slowAlloc();
    *v101 = 0;
    v102 = "VideoFlowProvider makeFlow() returning thirdPartyPlayWrapperFlow for search request because device is in CarPlay";
LABEL_41:
    _os_log_impl(&dword_269684000, v97, v98, v102, v101, 2u);
    MEMORY[0x26D647170](v101, -1, -1);
    goto LABEL_42;
  }

  if (v55 == *MEMORY[0x277D391C0])
  {
    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v107 = v159;
    v108 = __swift_project_value_buffer(v159, qword_281571B38);
    v109 = v160;
    v110 = v149;
    (*(v160 + 16))(v149, v108, v107);
    v111 = sub_2698548B4();
    v112 = sub_269854F44();
    v113 = os_log_type_enabled(v111, v112);
    v114 = v156;
    if (v113)
    {
      v115 = swift_slowAlloc();
      *v115 = 0;
      _os_log_impl(&dword_269684000, v111, v112, "VideoFlowProvider makeFlow() returning addToWatchListFlow", v115, 2u);
      MEMORY[0x26D647170](v115, -1, -1);
    }

    (*(v109 + 8))(v110, v107);
    __swift_project_boxed_opaque_existential_1(v114 + 5, v114[8]);
    sub_26979B860();
    return v103;
  }

  if (v55 == *MEMORY[0x277D391E8])
  {
    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v121 = v159;
    v122 = __swift_project_value_buffer(v159, qword_281571B38);
    v123 = v160;
    v124 = v147;
    (*(v160 + 16))(v147, v122, v121);
    v125 = sub_2698548B4();
    v126 = sub_269854F44();
    v127 = os_log_type_enabled(v125, v126);
    v128 = v156;
    if (v127)
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&dword_269684000, v125, v126, "VideoFlowProvider makeFlow() returning removeFromWatchListFlow", v129, 2u);
      MEMORY[0x26D647170](v129, -1, -1);
    }

    (*(v123 + 8))(v124, v121);
    __swift_project_boxed_opaque_existential_1(v128 + 5, v128[8]);
    sub_26979BABC();
    return v103;
  }

  if (v55 != *MEMORY[0x277D391C8])
  {
    if (v55 != *MEMORY[0x277D391F8])
    {
      v164(v54, v46);
      return 0;
    }

    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v137 = v159;
    v138 = __swift_project_value_buffer(v159, qword_281571B38);
    v139 = v160;
    v140 = v145;
    (*(v160 + 16))(v145, v138, v137);
    v141 = sub_2698548B4();
    v142 = sub_269854F44();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      *v143 = 0;
      _os_log_impl(&dword_269684000, v141, v142, "VideoFlowProvider makeFlow() returning ServerNeedsDisambiguationFlow", v143, 2u);
      MEMORY[0x26D647170](v143, -1, -1);
    }

    (*(v139 + 8))(v140, v137);
    type metadata accessor for ServerNeedsDisambiguationFlow();
    v166 = sub_2697342A0();
    v65 = &qword_280323EF0;
    v66 = type metadata accessor for ServerNeedsDisambiguationFlow;
    goto LABEL_34;
  }

  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v130 = v159;
  v131 = __swift_project_value_buffer(v159, qword_281571B38);
  v132 = v160;
  v133 = v146;
  (*(v160 + 16))(v146, v131, v130);
  v134 = sub_2698548B4();
  v135 = sub_269854F44();
  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    *v136 = 0;
    _os_log_impl(&dword_269684000, v134, v135, "VideoFlowProvider makeFlow() returning openWatchListFlow", v136, 2u);
    MEMORY[0x26D647170](v136, -1, -1);
  }

  (*(v132 + 8))(v133, v130);
  sub_269852BB4();
  sub_269724B58();
  v91 = sub_269852B34();
  sub_2697A18C4(&v166);
  return v91;
}

BOOL sub_2697A1458()
{
  v0 = sub_2698548D4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323700, qword_26985B120);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21[-v7];
  if (qword_2803225D0 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaNLIntent();
  v9 = _s10MediaNLAppVMa(0);
  sub_2697A1A18(qword_280323548, type metadata accessor for MediaNLIntent);
  sub_2697A1A18(qword_280323708, _s10MediaNLAppVMa);
  sub_269853D44();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_26969B0C0(v8, &qword_280323700, qword_26985B120);
  }

  else
  {
    v10 = sub_2697A5220();
    v12 = v11;
    v13 = sub_2697A1918(v8, _s10MediaNLAppVMa);
    if (v12)
    {
      v22[0] = v10;
      v22[1] = v12;
      MEMORY[0x28223BE20](v13);
      *&v21[-16] = v22;
      v14 = sub_2698337D4();

      return !v14;
    }
  }

  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v0, qword_281571B38);
  (*(v1 + 16))(v4, v16, v0);
  v17 = sub_2698548B4();
  v18 = sub_269854F44();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_269684000, v17, v18, "Request does not contain app bundleID", v19, 2u);
    MEMORY[0x26D647170](v19, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

uint64_t sub_2697A180C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2697A184C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2697A1918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_2697A1970(uint64_t a1, void *a2)
{
  type metadata accessor for FileProtectionType(0);
  v3 = sub_269854CA4();

  [a2 preheat_];
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2697A1A04()
{
  if (*(v0 + 16) == 1)
  {
    sub_2697B19D0();
  }
}

uint64_t sub_2697A1A18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2697A1A60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_8_28()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_25@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 152);
  v4 = *(v1 - 184);
  v5 = *(v1 - 248);
  return result;
}

void sub_2697A1B24()
{
  v1 = v0;
  v2 = sub_2698523C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = [v0 contentSearch];
  if (!v10)
  {
    type metadata accessor for ContentSearch();
    v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v10 = sub_2697C01B0(0, 0);
  }

  [v1 setContentSearch_];

  v12 = [v1 contentSearch];
  if (v12)
  {
    v13 = v12;
    sub_269852424();
    v14 = sub_269851FD4();
    v16 = v15;
    v17 = *(v3 + 8);
    v17(v9, v2);

    v18 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v18 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      sub_269852424();
      sub_269851FD4();
      v17(v7, v2);
      v19 = sub_269854A64();
    }

    else
    {
      v19 = 0;
    }

    [v13 setName_];
  }
}

void sub_2697A1D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = v4;
  v8 = (*(*(a3 + 8) + 16))(a2);
  if (!v8)
  {
    sub_26969329C(0, &qword_280322DB8, 0x277CD3DC8);
    OUTLINED_FUNCTION_1_30();
    OUTLINED_FUNCTION_83_0();
    v8 = sub_269854ED4();
  }

  v9 = v8;
  v10 = a4(a1);
  v11 = OUTLINED_FUNCTION_54();
  [v6 setValue:v10 forKey:v11];
}

void sub_2697A1E44()
{
  v1 = v0;
  sub_26969329C(0, &qword_280322DB8, 0x277CD3DC8);

  OUTLINED_FUNCTION_1_30();
  OUTLINED_FUNCTION_83_0();
  v2 = sub_269854ED4();
  v3 = OUTLINED_FUNCTION_54();
  [v1 setValue:v2 forKey:v3];
}

void sub_2697A1EFC()
{
  sub_26969329C(0, &qword_280323838, 0x277CD3DB8);
  v1 = sub_269854CA4();
  v2 = sub_269854A64();
  [v0 setValue:v1 forKey:v2];
}

void sub_2697A1F9C()
{
  v1 = v0;
  sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
  v2 = sub_269855034();
  v3 = objc_allocWithZone(MEMORY[0x277CD3F18]);
  v4 = sub_2697A21C8(0, 0, 0, v2);
  [v1 setPrivateSearchForMediaIntentData_];
}

void sub_2697A2040()
{
  v1 = v0;
  sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
  v2 = sub_269855034();
  v3 = sub_269855034();
  v4 = objc_allocWithZone(MEMORY[0x277CD3F10]);
  v5 = sub_2697A2120(v2, v3, 0);
  [v1 setPrivatePlayMediaIntentData_];
}

id sub_2697A2120(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    sub_26969329C(0, &qword_280323838, 0x277CD3DB8);
    v7 = sub_269854CA4();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithAppSelectionEnabled:a1 appInferred:a2 audioSearchResults:v7];

  return v8;
}

id sub_2697A21C8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (!a2)
  {
    v9 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  sub_26969329C(0, &qword_280323838, 0x277CD3DB8);
  v9 = sub_269854CA4();

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_269854CA4();

LABEL_6:
  v11 = [v5 initWithPrivateMediaIntentData:a1 audioSearchResults:v9 internalSignals:v10 appInferred:a4];

  return v11;
}

void sub_2697A22BC()
{
  if (qword_2803225C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaNLIntent();
  sub_2696DAEF8();
  sub_269853D54();
  if (v2)
  {
    sub_2697593BC(v1, v2, v0);
  }
}

void sub_2697A2360(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 contentSearch];
  if (!v4)
  {
    type metadata accessor for ContentSearch();
    v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v4 = OUTLINED_FUNCTION_0_37();
    [v2 setContentSearch_];
  }

  v6 = [v2 contentSearch];
  if (v6)
  {
    v7 = v6;
    sub_2697A29D8(a1);
  }
}

void sub_2697A2434(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_2698523C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v27 - v11;
  v13 = [v2 contentSearch];
  if (!v13)
  {
    type metadata accessor for ContentSearch();
    v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v13 = OUTLINED_FUNCTION_0_37();
  }

  [v3 setContentSearch_];

  v15 = [v3 contentSearch];
  if (v15)
  {
    v16 = v15;
    v27[1] = a2;
    sub_269852424();
    v17 = sub_269851FD4();
    v18 = v5;
    v20 = v19;
    v27[0] = v6;
    v21 = *(v6 + 8);
    v21(v12, v18);

    v22 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v22 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      sub_269852424();
      sub_269851FD4();
      v21(v10, v18);
      v23 = sub_269854A64();
    }

    else
    {
      v23 = 0;
    }

    v5 = v18;
    [v16 setName_];

    v6 = v27[0];
  }

  sub_2696D4E0C();
  sub_2697A26BC(v24, v3);
  sub_269852424();
  v25 = sub_269852384();
  (*(v6 + 8))(v10, v5);
  sub_2697A2730(v25, v3);
  sub_2696D3F48();
  sub_269763C54(v26, v3);
}

void sub_2697A26BC(uint64_t a1, void *a2)
{
  type metadata accessor for UtsSearchParam();
  v3 = sub_269854CA4();

  [a2 setUtsSearchParams_];
}

void sub_2697A2730(uint64_t a1, void *a2)
{
  v3 = sub_269854CA4();

  [a2 setChannelIds_];
}

id OUTLINED_FUNCTION_0_37()
{

  return sub_2697C01B0(0, 0);
}

void sub_2697A27C0()
{
  v1 = v0;
  v2 = sub_2698523C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = [v0 contentSearch];
  if (!v10)
  {
    type metadata accessor for ContentSearch();
    v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v10 = sub_2697C01B0(0, 0);
  }

  [v1 setContentSearch_];

  v12 = [v1 contentSearch];
  if (v12)
  {
    v13 = v12;
    sub_269852424();
    v14 = sub_269851FD4();
    v16 = v15;
    v17 = *(v3 + 8);
    v17(v9, v2);

    v18 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v18 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      sub_269852424();
      sub_269851FD4();
      v17(v7, v2);
      v19 = sub_269854A64();
    }

    else
    {
      v19 = 0;
    }

    [v13 setName_];
  }
}

void sub_2697A29D8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324790, &qword_269860820);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  i = (v42 - v6);
  if (qword_280322578 != -1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    v8 = type metadata accessor for MediaNLIntent();
    v9 = sub_2697A3D58(qword_280323548, type metadata accessor for MediaNLIntent);
    sub_269853D54();
    if (v52)
    {
      sub_2696C97B8(v51, v52, v2, &selRef_setName_);
    }

    if (qword_280322580 != -1)
    {
      swift_once();
    }

    v44 = v9;
    sub_269853D54();
    if (v52)
    {
      v49 = v51;
      v50 = v52;
      v47 = 0x3A636D753A6E7275;
      v48 = 0xE800000000000000;
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_269693054();
      v10 = sub_269855104();
      v12 = v11;

      sub_2696C97B8(v10, v12, v2, &selRef_setUmcId_);
    }

    if (qword_280322568 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_0_38();
    sub_269853D54();
    v13 = v51;
    if (v51 != 12)
    {
      if (qword_280322520 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_4_25();
      sub_26981D3C4(v13, qword_280324778);
      if (v14)
      {
        swift_endAccess();
      }

      else
      {
        v15 = swift_endAccess();
        OUTLINED_FUNCTION_0_16(v15, sel_setType_);
      }
    }

    if (qword_2803225B0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_0_38();
    sub_269853D54();
    v16 = v51;
    if (v51 != 9)
    {
      if (qword_280322528 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_4_25();
      sub_26982EB2C(v16, qword_280324780);
      if (v17)
      {
        swift_endAccess();
      }

      else
      {
        v18 = swift_endAccess();
        OUTLINED_FUNCTION_0_16(v18, sel_setSort_);
      }
    }

    if (qword_280322558 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_0_38();
    sub_269853D54();
    if (v51 != 48)
    {
      v19 = sub_2697A5954(v51);
      sub_2696C97B8(v19, v20, v2, &selRef_setGenre_);
    }

    sub_26969329C(0, &qword_280324798, 0x277CD3B68);
    v21 = sub_2697A40A4(a1);
    OUTLINED_FUNCTION_0_16(v21, sel_setReleaseDateRange_);

    sub_2697A35D8();
    sub_2697A388C();
    if (sub_2697856BC(v2))
    {
    }

    else
    {
      sub_2697A3CE4(MEMORY[0x277D84F90], v2);
    }

    if (qword_280322598 != -1)
    {
      swift_once();
    }

    _s13MediaNLPersonVMa(0);
    sub_2697A3D58(&qword_2803247A0, _s13MediaNLPersonVMa);
    v22 = *(OUTLINED_FUNCTION_1_31() + 16);

    if (v22)
    {
      v51 = sub_2697856BC(v2);
      if (v51)
      {
        type metadata accessor for Person();
        v23 = OUTLINED_FUNCTION_1_31();
        v24 = sub_2697ACE74(v23);

        v25 = sub_26980BAA8(v24);
        if (v51)
        {
          v26 = sub_269854CA4();
        }

        else
        {
          v26 = 0;
        }

        OUTLINED_FUNCTION_0_16(v25, sel_setRoles_);
      }

      else
      {
        [v2 setRoles_];
      }
    }

    if (qword_2803225A0 != -1)
    {
      swift_once();
    }

    v27 = *(sub_269853D64() + 16);

    if (!v27)
    {
      break;
    }

    v42[2] = a1;
    v43 = i;
    v42[1] = v8;
    OUTLINED_FUNCTION_0_38();
    v28 = sub_269853D64();
    v29 = 0;
    a1 = *(v28 + 16);
    for (i = (v28 + 40); ; i += 2)
    {
      if (a1 == v29)
      {

        i = v43;
        goto LABEL_56;
      }

      if (v29 >= *(v28 + 16))
      {
        break;
      }

      v30 = *(i - 1);
      v31 = *i;
      type metadata accessor for Person();
      v32 = objc_allocWithZone(swift_getObjCClassFromMetadata());

      v33 = sub_2697C01B0(0, 0);
      [v33 setRole_];
      sub_2697A3DA0(v30, v31, v33);
      v51 = sub_2697856BC(v2);
      if (v51)
      {
        v34 = v33;
        MEMORY[0x26D645B90]();
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_269854CD4();
        }

        v35 = sub_269854CF4();
        if (v51)
        {
          v36 = sub_269854CA4();
        }

        else
        {
          v36 = 0;
        }

        OUTLINED_FUNCTION_0_16(v35, sel_setRoles_);
      }

      else
      {
        [v2 setRoles_];
      }

      ++v29;
    }

    __break(1u);
LABEL_66:
    swift_once();
  }

LABEL_56:
  v37 = sub_2697A7014();
  if (v38)
  {
    sub_2696C97B8(v37, v38, v2, &selRef_setStudio_);
  }

  if (qword_2803225B8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_38();
  sub_269853D54();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803247A8, &qword_269860828);
  if (__swift_getEnumTagSinglePayload(i, 1, v39) == 1)
  {
    sub_2697A3DF8(i);
  }

  else
  {
    sub_269853F14();
    v40 = v52;
    (*(*(v39 - 8) + 8))(i, v39);
    if ((v40 & 1) == 0)
    {
      v41 = sub_269854E84();
      OUTLINED_FUNCTION_0_16(v41, sel_setRecommendedAge_);
    }
  }
}

uint64_t sub_2697A3258()
{
  sub_2697A3F98();
  result = sub_269854A04();
  qword_280324768 = result;
  return result;
}

uint64_t sub_2697A3298()
{
  sub_2697A3FEC();
  result = sub_269854A04();
  qword_280324770 = result;
  return result;
}

uint64_t sub_2697A32D8()
{
  sub_2697A3E60();
  result = sub_269854A04();
  qword_280324778 = result;
  return result;
}

uint64_t sub_2697A3318()
{
  sub_2697A3EB4();
  result = sub_269854A04();
  qword_280324780 = result;
  return result;
}

void *sub_2697A3358()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803247C0, &unk_269860830);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269858BC0;
  *(inited + 32) = 2;
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = 3;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 4;
  *(inited + 72) = swift_getKeyPath();
  *(inited + 80) = 5;
  *(inited + 88) = swift_getKeyPath();
  *(inited + 96) = 16;
  *(inited + 104) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803247C8, &qword_269860938);
  sub_2697A3F44();
  result = sub_269854A04();
  off_280324788 = result;
  return result;
}

id sub_2697A345C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_25(a1) isUhd];
  *v1 = result;
  return result;
}

id sub_2697A34A8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_25(a1) isDolbyVision];
  *v1 = result;
  return result;
}

id sub_2697A34F4(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_25(a1) isDolbyAtmos];
  *v1 = result;
  return result;
}

id sub_2697A3540(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_25(a1) isHdr];
  *v1 = result;
  return result;
}

id sub_2697A358C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_25(a1) isFree];
  *v1 = result;
  return result;
}

void sub_2697A35D8()
{
  v1 = v0;
  if (qword_280322618 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaNLIntent();
  sub_2697A3D58(qword_280323548, type metadata accessor for MediaNLIntent);
  sub_269853D54();
  if (v15 != 4)
  {
    if (qword_280322510 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = sub_26981D394(v15, qword_280324768);
    if (v3)
    {
      swift_endAccess();
    }

    else
    {
      v4 = v2;
      swift_endAccess();
      [v1 setSeasonReference_];
    }
  }

  v5 = sub_2697A7180();
  if ((v6 & 1) == 0)
  {
    v15 = v5;
    v7 = sub_269855544();
    sub_2696C97B8(v7, v8, v1, &selRef_setSeasonNumber_);
  }

  if (qword_280322608 != -1)
  {
    swift_once();
  }

  sub_269853D54();
  if (v15 != 5)
  {
    if (qword_280322518 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v9 = sub_26981D3AC(v15, qword_280324770);
    if (v10)
    {
      swift_endAccess();
    }

    else
    {
      v11 = v9;
      swift_endAccess();
      [v1 setEpisodeReference_];
    }
  }

  sub_2697A71A4();
  if ((v12 & 1) == 0)
  {
    v13 = sub_269855544();
    sub_2696C97B8(v13, v14, v1, &selRef_setEpisodeNumber_);
  }
}

uint64_t sub_2697A388C()
{
  v1 = sub_2698548D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v0;
  v6 = [v0 attributes];
  if (!v6)
  {
    type metadata accessor for SearchAttributes();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v6 = sub_2697C01B0(0, 0);
    [v37 setAttributes_];
  }

  if (qword_2803225C0 != -1)
  {
LABEL_22:
    swift_once();
  }

  type metadata accessor for MediaNLIntent();
  sub_2697A3D58(qword_280323548, type metadata accessor for MediaNLIntent);
  v8 = sub_269853D64();
  v9 = 0;
  v10 = *(v8 + 16);
  v11 = (v2 + 16);
  v2 += 8;
  *&v12 = 136315138;
  v38 = v12;
  v39 = v2;
  v40 = v11;
  while (v10 != v9)
  {
    if (v9 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_22;
    }

    v13 = *(v8 + v9 + 32);
    if (qword_280322530 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v14 = off_280324788;
    if (*(off_280324788 + 2) && (v15 = sub_26973D4C8(v13), (v16 & 1) != 0))
    {
      v17 = *(v14[7] + 8 * v15);
      swift_endAccess();

      v18 = [v37 attributes];
      if (v18)
      {
        v19 = v18;
        sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
        v42 = sub_269855034();
        v43 = v19;
        swift_setAtReferenceWritableKeyPath();
      }
    }

    else
    {
      swift_endAccess();
      if (qword_280322700 != -1)
      {
        swift_once();
      }

      v20 = __swift_project_value_buffer(v1, qword_281571B38);
      (*v11)(v5, v20, v1);
      v21 = sub_2698548B4();
      v22 = sub_269854F14();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v43 = v24;
        *v23 = v38;
        v25 = sub_2697A7348(v13);
        v27 = sub_26974F520(v25, v26, &v43);
        v41 = v9;
        v28 = v8;
        v29 = v5;
        v30 = v1;
        v31 = v10;
        v32 = v27;

        *(v23 + 4) = v32;
        v10 = v31;
        v1 = v30;
        v5 = v29;
        v8 = v28;
        v9 = v41;
        _os_log_impl(&dword_269684000, v21, v22, "Skipping unsupported attribute case: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        v33 = v24;
        v2 = v39;
        MEMORY[0x26D647170](v33, -1, -1);
        v34 = v23;
        v11 = v40;
        MEMORY[0x26D647170](v34, -1, -1);
      }

      (*v2)(v5, v1);
    }

    ++v9;
  }
}

void sub_2697A3CE4(uint64_t a1, void *a2)
{
  type metadata accessor for Person();
  v3 = sub_269854CA4();

  [a2 setRoles_];
}

uint64_t sub_2697A3D58(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2697A3DA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();
  [a3 setName_];
}

uint64_t sub_2697A3DF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324790, &qword_269860820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2697A3E60()
{
  result = qword_2803247B0;
  if (!qword_2803247B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803247B0);
  }

  return result;
}

unint64_t sub_2697A3EB4()
{
  result = qword_2803247B8;
  if (!qword_2803247B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803247B8);
  }

  return result;
}

unint64_t sub_2697A3F44()
{
  result = qword_2803247D0;
  if (!qword_2803247D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803247D0);
  }

  return result;
}

unint64_t sub_2697A3F98()
{
  result = qword_2803247D8;
  if (!qword_2803247D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803247D8);
  }

  return result;
}

unint64_t sub_2697A3FEC()
{
  result = qword_2803247E0;
  if (!qword_2803247E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803247E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_31()
{
  v2 = *(v0 - 160);

  return sub_269853D34();
}

uint64_t OUTLINED_FUNCTION_4_25()
{

  return swift_beginAccess();
}

uint64_t sub_2697A40A4(uint64_t a1)
{
  v132 = a1;
  v1 = sub_2698548D4();
  v2 = OUTLINED_FUNCTION_8(v1);
  v129 = v3;
  v130 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12();
  v121 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v112 = &v111 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803247E8, &qword_269860940);
  v11 = OUTLINED_FUNCTION_8_9(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12();
  v111 = (v14 - v15);
  v17 = MEMORY[0x28223BE20](v16);
  v131 = &v111 - v18;
  MEMORY[0x28223BE20](v17);
  v126 = &v111 - v19;
  OUTLINED_FUNCTION_2_13();
  v20 = sub_2698540A4();
  v21 = OUTLINED_FUNCTION_8(v20);
  v127 = v22;
  v128 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_1();
  v125 = v26 - v25;
  OUTLINED_FUNCTION_2_13();
  v119 = sub_269854104();
  v27 = OUTLINED_FUNCTION_8(v119);
  v117 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_1();
  v120 = v32 - v31;
  OUTLINED_FUNCTION_2_13();
  v33 = sub_269854114();
  v34 = OUTLINED_FUNCTION_8(v33);
  v115 = v35;
  v116 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3_1();
  v118 = v39 - v38;
  OUTLINED_FUNCTION_2_13();
  v40 = sub_269854134();
  v41 = OUTLINED_FUNCTION_8(v40);
  v123 = v42;
  v124 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3_1();
  v122 = v46 - v45;
  OUTLINED_FUNCTION_2_13();
  v47 = sub_269851D34();
  v48 = OUTLINED_FUNCTION_8_9(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_3_1();
  v114 = v52 - v51;
  OUTLINED_FUNCTION_2_13();
  v53 = sub_269851E84();
  v54 = OUTLINED_FUNCTION_8_9(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_3_1();
  v113 = sub_269854144();
  v57 = OUTLINED_FUNCTION_8(v113);
  v59 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_3_1();
  v64 = v63 - v62;
  v65 = sub_269851EA4();
  v66 = OUTLINED_FUNCTION_8_9(v65);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_3_1();
  v69 = sub_269851E24();
  v70 = OUTLINED_FUNCTION_8_9(v69);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_12();
  v74 = MEMORY[0x28223BE20](v73);
  MEMORY[0x28223BE20](v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803247F0, &qword_269860948);
  v76 = OUTLINED_FUNCTION_8_9(v75);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v76);
  v80 = &v111 - v79;
  if (qword_280322590 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaNLIntent();
  sub_2697A4BF0(qword_280323548, type metadata accessor for MediaNLIntent);
  sub_269853D54();
  v81 = sub_269853C94();
  if (__swift_getEnumTagSinglePayload(v80, 1, v81) == 1)
  {
    v82 = &qword_2803247F0;
    v83 = &qword_269860948;
    v84 = v80;
LABEL_18:
    sub_269698048(v84, v82, v83);
    return 0;
  }

  v132 = sub_269853C84();
  (*(*(v81 - 8) + 8))(v80, v81);
  sub_269851DE4();
  sub_269851DE4();
  sub_269851DE4();
  sub_269851E94();
  (*(v59 + 104))(v64, *MEMORY[0x277D56150], v113);
  sub_269851E54();
  sub_269851D24();
  v85 = sub_269854164();
  v86 = *(v85 + 48);
  v87 = *(v85 + 52);
  swift_allocObject();
  v88 = sub_269854154();
  (*(v115 + 104))(v118, *MEMORY[0x277D56138], v116);
  (*(v117 + 104))(v120, *MEMORY[0x277D56120], v119);
  sub_269854174();
  sub_269854194();
  sub_2697A4BF0(&qword_2803247F8, MEMORY[0x277D563F8]);
  sub_269854A04();
  v89 = v122;
  sub_269854124();
  v90 = v125;
  sub_269854094();
  v91 = v126;
  v120 = v88;
  sub_269854084();
  v93 = v130;
  v92 = v131;
  v94 = v129;
  v95 = v121;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324800, &unk_269860950);
  __swift_storeEnumTagSinglePayload(v91, 0, 1, v96);
  sub_2697A4C38(v91, v92);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324800, &unk_269860950);
  if (__swift_getEnumTagSinglePayload(v92, 1, v97) == 1)
  {
LABEL_13:
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v106 = __swift_project_value_buffer(v93, qword_281571B38);
    (*(v94 + 16))(v95, v106, v93);
    v107 = sub_2698548B4();
    v108 = sub_269854F14();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&dword_269684000, v107, v108, "Got no recommendation from DateTimeResolver, setting releaseDateRange to nil", v109, 2u);
      MEMORY[0x26D647170](v109, -1, -1);
    }

    (*(v94 + 8))(v95, v93);
    sub_269698048(v91, &qword_2803247E8, &qword_269860940);
    (*(v127 + 8))(v90, v128);
    (*(v123 + 8))(v89, v124);
    v84 = v92;
    v82 = &qword_2803247E8;
    v83 = &qword_269860940;
    goto LABEL_18;
  }

  v98 = v111;
  sub_2697A4C38(v92, v111);
  v99 = *(v97 - 8);
  if ((*(v99 + 88))(v98, v97) != *MEMORY[0x277D56080])
  {
    (*(v99 + 8))(v98, v97);
    goto LABEL_13;
  }

  (*(v99 + 96))(v98, v97);
  v100 = *v98;
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v101 = __swift_project_value_buffer(v93, qword_281571B38);
  (*(v94 + 16))(v112, v101, v93);
  v102 = sub_2698548B4();
  v103 = sub_269854F14();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    *v104 = 0;
    _os_log_impl(&dword_269684000, v102, v103, "Got confident recommendation from DateTimeResolver", v104, 2u);
    MEMORY[0x26D647170](v104, -1, -1);
  }

  (*(v94 + 8))(v112, v93);
  v105 = sub_269854184();

  sub_269698048(v91, &qword_2803247E8, &qword_269860940);
  (*(v127 + 8))(v90, v128);
  (*(v123 + 8))(v89, v124);
  sub_269698048(v92, &qword_2803247E8, &qword_269860940);
  return v105;
}

uint64_t sub_2697A4BF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2697A4C38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803247E8, &qword_269860940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2697A4CA8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MediaNLIntent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269853F44();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  v9 = sub_2696CD57C(v2, &selRef_mediaName);
  v11 = v10;
  v12 = sub_2697A6488();
  if (v13)
  {
    v14 = v12;
    v15 = v13;

    v9 = v14;
    v11 = v15;
  }

  [v2 sortOrder];
  if (qword_2803225B0 != -1)
  {
    swift_once();
  }

  v19[3] = v9;
  v19[4] = v11;
  sub_2696DAEF8();
  sub_269853D54();
  v16 = v20;
  if (v20 != 9)
  {
    if (qword_280322538 != -1)
    {
      swift_once();
    }

    sub_26982EB2C(v16, qword_280324808);
  }

  v19[2] = sub_26969CDB4();
  v19[1] = [v2 mediaType];
  v19[0] = sub_2696CD57C(v2, &selRef_artistName);
  sub_2696CD57C(v2, &selRef_albumName);
  sub_26977DD18(v2, &selRef_genreNames);
  sub_26977DD18(v2, &selRef_moodNames);
  [v2 releaseDate];
  [v2 reference];
  sub_2696CD57C(v2, &selRef_mediaIdentifier);
  v17 = sub_269854ED4();
  sub_2696CC460(v7);
  return v17;
}

uint64_t sub_2697A4F74()
{
  v1 = sub_2698523C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269852424();
  v6 = sub_269851FD4();
  v9[2] = v7;
  v9[3] = v6;
  (*(v2 + 8))(v5, v1);
  v9[1] = sub_26969CDB4();
  [v0 sortOrder];
  sub_2696CD57C(v0, &selRef_artistName);
  sub_2696CD57C(v0, &selRef_albumName);
  sub_26977DD18(v0, &selRef_genreNames);
  sub_26977DD18(v0, &selRef_moodNames);
  [v0 releaseDate];
  [v0 reference];
  sub_2696CD57C(v0, &selRef_mediaIdentifier);
  return sub_269854ED4();
}

uint64_t sub_2697A5164()
{
  type metadata accessor for INMediaSortOrder(0);
  sub_2697A3EB4();
  result = sub_269854A04();
  qword_280324808 = result;
  return result;
}

uint64_t sub_2697A5220()
{
  if (qword_280322550 != -1)
  {
    OUTLINED_FUNCTION_1_32();
  }

  _s10MediaNLAppVMa(0);
  sub_2697A58D0(&qword_280324838);
  sub_269853D54();
  if (v3)
  {
    return v2;
  }

  if (qword_280322548 != -1)
  {
    OUTLINED_FUNCTION_0_39();
  }

  sub_269853D54();
  return v1;
}

uint64_t sub_2697A537C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = sub_269853BB4();
  *a4 = result;
  return result;
}

uint64_t sub_2697A53E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324820, &unk_269860990);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26985C7B0;
  if (qword_280322540 != -1)
  {
    swift_once();
  }

  v1 = qword_28033D758;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  *(v0 + 56) = v2;
  v3 = sub_2697A55A4();
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_280322548;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_0_39();
  }

  v5 = qword_28033D760;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  *(v0 + 72) = v5;
  v6 = qword_280322550;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_1_32();
  }

  v7 = qword_28033D768;
  *(v0 + 136) = v2;
  *(v0 + 144) = v3;
  *(v0 + 112) = v7;

  return MEMORY[0x2821C0790](7368801, 0xE300000000000000, 0, v0);
}

uint64_t sub_2697A556C()
{
  v0 = sub_269853B84();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

unint64_t sub_2697A55A4()
{
  result = qword_280324830;
  if (!qword_280324830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280324828, &qword_269860C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324830);
  }

  return result;
}

uint64_t sub_2697A5650()
{
  result = sub_269853D94();
  if (v1 <= 0x3F)
  {
    result = sub_269853B74();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2697A56D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_269853D94();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  *(a3 + *(_s10MediaNLAppVMa(0) + 20)) = a2;
}

uint64_t sub_2697A5764@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269853D94();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2697A57DC(uint64_t a1)
{
  v2 = sub_2697A58D0(qword_280323708);

  return MEMORY[0x2821C1928](a1, v2);
}

uint64_t sub_2697A5844(uint64_t a1)
{
  v2 = sub_2697A58D0(qword_280323708);

  return MEMORY[0x2821C1920](a1, v2);
}

uint64_t sub_2697A58D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s10MediaNLAppVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_39()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_32()
{

  return swift_once();
}

uint64_t sub_2697A5954(char a1)
{
  result = 0x6E6F69746361;
  switch(a1)
  {
    case 1:
      return 0x7275746E65766461;
    case 2:
      return 0xD000000000000011;
    case 3:
      v4 = 1835626081;
      return v4 | 0x6F69746100000000;
    case 4:
      return 0x656D696E61;
    case 5:
      return 0x68706172676F6962;
    case 6:
      return 0x6F6F77796C6C6F62;
    case 7:
      return 0x7363697373616C63;
    case 8:
      return 0x7964656D6F63;
    case 9:
      return 0x656D697263;
    case 10:
      return 0x6D61726475636F64;
    case 11:
      return 0x746E656D75636F64;
    case 12:
      return 0x616D617264;
    case 13:
      return 0x6369746F7265;
    case 14:
      v4 = 1668637797;
      return v4 | 0x6F69746100000000;
    case 15:
      v5 = 0x7361746E6166;
      return v5 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
    case 16:
      return 0x74616E7265746E69;
    case 17:
      return 0x776F6873656D6167;
    case 18:
      v5 = 0x726F74736968;
      return v5 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
    case 19:
      v5 = 0x6164696C6F68;
      return v5 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
    case 20:
      return 0x726F72726F68;
    case 21:
      return 0x646E657065646E69;
    case 22:
      return 0x6B6567696164696ALL;
    case 23:
      return 0x662026207364696BLL;
    case 24:
      return 1952606060;
    case 25:
      return 0x6E656D756B636F6DLL;
    case 26:
      return 0x636973756DLL;
    case 27:
      return 0x6C61636973756DLL;
    case 28:
      v5 = 0x72657473796DLL;
      return v5 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
    case 29:
      return 1937204590;
    case 30:
      return 0x6F6F77796C6C6F6ELL;
    case 31:
      return 0x616C65766F6ELL;
    case 32:
      return 0xD000000000000010;
    case 33:
      v5 = 0x74696C616572;
      return v5 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
    case 34:
      return 0x65636E616D6F72;
    case 35:
      return 0x657269746173;
    case 36:
      return 0x69662D696373;
    case 37:
      return 0x69662074726F6873;
    case 38:
      return 0x6D6F63746973;
    case 39:
      return 0xD000000000000010;
    case 40:
      return 0x7374726F7073;
    case 41:
      v3 = 0x687265707573;
      goto LABEL_29;
    case 42:
      return 0x6F68732D6B6C6174;
    case 43:
      return 0x736E656574;
    case 44:
      v3 = 0x6C6C69726874;
LABEL_29:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
      break;
    case 45:
      result = 0x73746173756B6F74;
      break;
    case 46:
      result = 7496055;
      break;
    case 47:
      result = 0x6E726574736577;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2697A5E0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324850, &qword_269860A20);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_269853BB4();
  qword_28033D780 = result;
  return result;
}

uint64_t _s5GenreOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD1)
  {
    if (a2 + 47 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 47) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 48;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x30;
  v5 = v6 - 48;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s5GenreOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 47 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 47) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD0)
  {
    v6 = ((a2 - 209) >> 8) + 1;
    *result = a2 + 47;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 47;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2697A5FDC()
{
  result = qword_280324858;
  if (!qword_280324858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324858);
  }

  return result;
}

uint64_t sub_2697A6030()
{
  v0 = sub_2698555B4();

  if (v0 >= 0x30)
  {
    return 48;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2697A60B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2697A6030();
  *a2 = result;
  return result;
}

uint64_t sub_2697A60E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2697A5954(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2697A6120(uint64_t a1, uint64_t a2)
{
  v4 = sub_2697A62AC();
  v5 = sub_2697A6300();
  v6 = sub_2697A6354();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_2697A6198()
{
  result = qword_280324860;
  if (!qword_280324860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280324868, &qword_269860A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324860);
  }

  return result;
}

unint64_t sub_2697A6200()
{
  result = qword_280324870;
  if (!qword_280324870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324870);
  }

  return result;
}

unint64_t sub_2697A6258()
{
  result = qword_280324878;
  if (!qword_280324878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324878);
  }

  return result;
}

unint64_t sub_2697A62AC()
{
  result = qword_280324880;
  if (!qword_280324880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324880);
  }

  return result;
}

unint64_t sub_2697A6300()
{
  result = qword_280324888;
  if (!qword_280324888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324888);
  }

  return result;
}

unint64_t sub_2697A6354()
{
  result = qword_280324890;
  if (!qword_280324890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324890);
  }

  return result;
}

uint64_t type metadata accessor for MediaNLIntent()
{
  result = qword_280324898;
  if (!qword_280324898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2697A641C()
{
  result = sub_269853F44();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2697A6488()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803249A0, &qword_269860CE0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v29 - v2;
  v4 = sub_2696CAAE8();
  v6 = v4;
  v7 = v5;
  if (v5)
  {
    *&v30 = v4;
    *(&v30 + 1) = v5;
    v29[0] = 94;
    v29[1] = 0xE100000000000000;
    sub_269693054();
    if (sub_269855144())
    {

      v6 = 0;
      v7 = 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803249A8, &qword_269860CE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269860B70;
  *(inited + 32) = v6;
  *(inited + 40) = v7;
  if (qword_280322570 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaNLIntent();
  OUTLINED_FUNCTION_0_40();
  sub_2697A9F1C(v9, v10);
  OUTLINED_FUNCTION_2_26();
  sub_269853D54();
  *(inited + 48) = v30;
  if (qword_280322578 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_26();
  sub_269853D54();
  *(inited + 64) = v30;
  if (qword_280322558 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_26();
  sub_269853D54();
  if (v30 == 48)
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = sub_2697A5954(v30);
  }

  *(inited + 80) = v11;
  *(inited + 88) = v12;
  if (qword_280322598 != -1)
  {
    swift_once();
  }

  v13 = _s13MediaNLPersonVMa(0);
  OUTLINED_FUNCTION_4_26();
  sub_2697A9F1C(v14, v15);
  v16 = sub_269853D34();
  sub_269771CE8(v16);

  if (__swift_getEnumTagSinglePayload(v3, 1, v13) == 1)
  {
    sub_2696CB05C(v3, &qword_2803249A0, &qword_269860CE0);
    *(inited + 96) = 0;
    *(inited + 104) = 0;
  }

  else
  {
    if (qword_280322640 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_4_26();
    sub_2697A9F1C(v17, v18);
    sub_269853D54();
    *(inited + 96) = v30;
    sub_2697A9F64(v3);
  }

  if (qword_2803225A0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_26();
  v19 = sub_269853D64();
  if (v19[2])
  {
    v21 = v19[4];
    v20 = v19[5];
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  *(inited + 112) = v21;
  *(inited + 120) = v20;
  if (qword_280322568 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_26();
  sub_269853D54();
  if (v30 == 12)
  {
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v22 = sub_2697A8CD8(v30);
  }

  v24 = 0;
  *(inited + 128) = v22;
  *(inited + 136) = v23;
  while (1)
  {
    v25 = v24 + 16;
    if (v24 == 112)
    {
      break;
    }

    v26 = *(inited + v24 + 40);
    v24 += 16;
    if (v26)
    {
      v27 = *(inited + v25 + 16);
      swift_setDeallocating();

      goto LABEL_35;
    }
  }

  swift_setDeallocating();
  v27 = 0;
LABEL_35:
  sub_269819D58();
  return v27;
}

uint64_t sub_2697A6954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_2698548D4();
  v4 = OUTLINED_FUNCTION_8(v3);
  v70 = v5;
  v71 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v73 = v9 - v8;
  v10 = sub_2698538B4();
  v11 = OUTLINED_FUNCTION_8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v67 = &v63[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v69 = &v63[-v19];
  MEMORY[0x28223BE20](v18);
  v21 = &v63[-v20];
  v22 = sub_269853F44();
  v23 = OUTLINED_FUNCTION_8(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_1();
  v30 = (v29 - v28);
  v72 = type metadata accessor for MediaNLIntent();
  OUTLINED_FUNCTION_3_14(v72);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_1();
  v36 = v35 - v34;
  v68 = *(v13 + 16);
  v68(v21, a1, v10);
  v37 = (*(v13 + 88))(v21, v10);
  v38 = *(v13 + 8);
  if (v37 == *MEMORY[0x277D5C128])
  {
    v38(a1, v10);
    (*(v13 + 96))(v21, v10);
    v39 = *(v25 + 32);
    v39(v30, v21, v22);
    v39(v36, v30, v22);
    v40 = v74;
    sub_269750B68(v36, v74);
    v41 = 0;
    v42 = v40;
  }

  else
  {
    v66 = *(v13 + 8);
    v38(v21, v10);
    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v43 = v71;
    v44 = __swift_project_value_buffer(v71, qword_281571B38);
    v45 = v70;
    (*(v70 + 16))(v73, v44, v43);
    v46 = v69;
    v47 = v68;
    v68(v69, a1, v10);
    v48 = sub_2698548B4();
    v49 = sub_269854F44();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v65 = a1;
      v51 = v50;
      v52 = swift_slowAlloc();
      v75 = v52;
      *v51 = 136315138;
      v64 = v49;
      v47(v67, v46, v10);
      v53 = sub_269854AE4();
      v55 = v54;
      v56 = v46;
      v57 = v66;
      v66(v56, v10);
      v58 = sub_26974F520(v53, v55, &v75);
      v59 = v45;
      v60 = v58;

      *(v51 + 4) = v60;
      _os_log_impl(&dword_269684000, v48, v64, "Unsupported parse while creating MediaNLIntent: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x26D647170](v52, -1, -1);
      MEMORY[0x26D647170](v51, -1, -1);

      v57(v65, v10);
      (*(v59 + 8))(v73, v71);
    }

    else
    {

      v61 = v66;
      v66(a1, v10);
      v61(v46, v10);
      (*(v45 + 8))(v73, v43);
    }

    v41 = 1;
    v42 = v74;
  }

  return __swift_storeEnumTagSinglePayload(v42, v41, 1, v72);
}

BOOL sub_2697A6E84()
{
  if (qword_2803225E0 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaNLIntent();
  OUTLINED_FUNCTION_0_40();
  sub_2697A9F1C(v0, v1);
  sub_269853D54();
  if (v4)
  {

    return 1;
  }

  else
  {
    if (qword_2803225E8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_15_20();
    if (qword_2803225F8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_15_20();
    if (qword_280322600 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_15_20();
    return v3 != 2;
  }
}

uint64_t sub_2697A7014()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324988, &qword_269860CC8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  if (qword_2803225A8 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaNLIntent();
  OUTLINED_FUNCTION_0_40();
  sub_2697A9F1C(v4, v5);
  OUTLINED_FUNCTION_17_15();
  v6 = sub_269853CB4();
  if (__swift_getEnumTagSinglePayload(v3, 1, v6) == 1)
  {
    sub_2696CB05C(v3, &qword_280324988, &qword_269860CC8);
    return 0;
  }

  else
  {
    v7 = sub_269853CA4();
    OUTLINED_FUNCTION_3_14(v6);
    (*(v8 + 8))(v3, v6);
  }

  return v7;
}

uint64_t sub_2697A71C8(void *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324990, &qword_269860CD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = *a2;
  type metadata accessor for MediaNLIntent();
  OUTLINED_FUNCTION_0_40();
  sub_2697A9F1C(v9, v10);
  OUTLINED_FUNCTION_17_15();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324998, &qword_269860CD8);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    sub_2696CB05C(v7, &qword_280324990, &qword_269860CD0);
    return 0;
  }

  else
  {
    sub_269853F14();
    v12 = v15;
    OUTLINED_FUNCTION_3_14(v11);
    (*(v13 + 8))(v7, v11);
  }

  return v12;
}

unint64_t sub_2697A7348(char a1)
{
  result = 0x7572207473726966;
  switch(a1)
  {
    case 1:
      result = 25704;
      break;
    case 2:
      result = 27444;
      break;
    case 3:
      result = 0x69762079626C6F64;
      break;
    case 4:
      result = 0x74612079626C6F64;
      break;
    case 5:
      result = 7496808;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
    case 15:
      result = 0xD000000000000012;
      break;
    case 8:
      v3 = 1650619748;
      goto LABEL_21;
    case 9:
      result = 0x656C746974627573;
      break;
    case 10:
      result = 25651;
      break;
    case 11:
      result = 2019650921;
      break;
    case 12:
      result = 0x65656E6974616DLL;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0x7720736472617761;
      break;
    case 16:
      result = 1701147238;
      break;
    case 17:
      result = 0x6573616863727570;
      break;
    case 18:
      v3 = 1953391986;
LABEL_21:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
      break;
    case 19:
      result = 0x656D75736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2697A751C()
{
  if (qword_280322638 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2697A7578()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803248A8, &qword_269860C50);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_1_33();
  result = sub_269853BB4();
  qword_28033D788 = result;
  return result;
}

uint64_t sub_2697A75D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803248B8, &qword_269860C58);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_1_33();
  result = sub_269853BB4();
  qword_28033D790 = result;
  return result;
}

uint64_t sub_2697A7628()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_269853BB4();
  qword_28033D798 = result;
  return result;
}

uint64_t sub_2697A7694()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_1_33();
  result = sub_269853BB4();
  qword_28033D7A0 = result;
  return result;
}

uint64_t sub_2697A76EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_3_34();
  result = OUTLINED_FUNCTION_11_29();
  qword_28033D7A8 = result;
  return result;
}

uint64_t sub_2697A7740()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803248C8, &qword_269860C68);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_269853BB4();
  qword_28033D7B0 = result;
  return result;
}

uint64_t sub_2697A77A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803248D8, &unk_269860C70);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_3_34();
  result = OUTLINED_FUNCTION_11_29();
  qword_28033D7B8 = result;
  return result;
}

uint64_t sub_2697A7830()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_1_33();
  result = sub_269853BB4();
  qword_28033D7C8 = result;
  return result;
}

uint64_t sub_2697A7890()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803248F0, &qword_269860C80);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_269853BB4();
  qword_28033D7D0 = result;
  return result;
}

uint64_t sub_2697A78FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324900, &qword_269860C88);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_1_33();
  result = sub_269853BB4();
  qword_28033D7D8 = result;
  return result;
}

uint64_t sub_2697A7954()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324910, &qword_269860C90);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_3_34();
  result = OUTLINED_FUNCTION_11_29();
  qword_28033D7E0 = result;
  return result;
}

uint64_t sub_2697A79A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324920, &qword_269860C98);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_3_34();
  result = sub_269853BB4();
  qword_28033D7E8 = result;
  return result;
}

uint64_t sub_2697A7A04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_3_34();
  result = OUTLINED_FUNCTION_11_29();
  qword_28033D7F0 = result;
  return result;
}

uint64_t sub_2697A7A8C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_68_0(v6);
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_2697A7AD8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_3_34();
  result = OUTLINED_FUNCTION_11_29();
  qword_28033D800 = result;
  return result;
}

uint64_t sub_2697A7B2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_3_34();
  result = OUTLINED_FUNCTION_11_29();
  qword_28033D808 = result;
  return result;
}

uint64_t sub_2697A7B80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_3_34();
  result = OUTLINED_FUNCTION_11_29();
  qword_28033D810 = result;
  return result;
}

uint64_t sub_2697A7BD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_1_33();
  result = sub_269853BB4();
  qword_28033D818 = result;
  return result;
}

uint64_t sub_2697A7C34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_3_34();
  result = OUTLINED_FUNCTION_11_29();
  qword_28033D820 = result;
  return result;
}

uint64_t sub_2697A7C88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324970, &qword_269860CC0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_269853BB4();
  qword_28033D828 = result;
  return result;
}

uint64_t sub_2697A7CF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324930, &qword_269860CA0);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_3_34();
  result = OUTLINED_FUNCTION_11_29();
  qword_28033D830 = result;
  return result;
}

uint64_t sub_2697A7D44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324940, &qword_269860CA8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_269853BB4();
  qword_28033D838 = result;
  return result;
}

uint64_t sub_2697A7DAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324950, &qword_269860CB0);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_3_34();
  result = OUTLINED_FUNCTION_11_29();
  qword_28033D840 = result;
  return result;
}

uint64_t sub_2697A7E00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324940, &qword_269860CA8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_269853BB4();
  qword_28033D848 = result;
  return result;
}

uint64_t sub_2697A7E68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324960, &qword_269860CB8);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_3_34();
  result = OUTLINED_FUNCTION_11_29();
  qword_28033D850 = result;
  return result;
}

uint64_t sub_2697A7EBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_269853BB4();
  qword_28033D858 = result;
  return result;
}

uint64_t sub_2697A7F2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324820, &unk_269860990);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_269860B80;
  if (qword_280322560 != -1)
  {
    swift_once();
  }

  v1 = qword_28033D788;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803248A8, &qword_269860C50);
  *(v0 + 64) = sub_269693204(&qword_2803248B0, &qword_2803248A8, &qword_269860C50);
  *(v0 + 32) = v1;
  v2 = qword_280322568;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_28033D790;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803248B8, &qword_269860C58);
  *(v0 + 104) = sub_269693204(&qword_2803248C0, &qword_2803248B8, &qword_269860C58);
  *(v0 + 72) = v3;
  v4 = qword_280322570;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_28033D798;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  *(v0 + 136) = v6;
  v7 = sub_269693204(&qword_280324830, &qword_280324828, &qword_269860C60);
  *(v0 + 144) = v7;
  *(v0 + 112) = v5;
  v8 = qword_280322578;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_28033D7A0;
  *(v0 + 176) = v6;
  *(v0 + 184) = v7;
  *(v0 + 152) = v9;
  v10 = qword_280322580;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_28033D7A8;
  *(v0 + 216) = v6;
  *(v0 + 224) = v7;
  *(v0 + 192) = v11;
  v12 = qword_280322588;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_28033D7B0;
  *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803248C8, &qword_269860C68);
  *(v0 + 264) = sub_269693204(&qword_2803248D0, &qword_2803248C8, &qword_269860C68);
  *(v0 + 232) = v13;
  v14 = qword_280322590;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_28033D7B8;
  *(v0 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803248D8, &unk_269860C70);
  *(v0 + 304) = sub_269693204(&qword_2803248E0, &qword_2803248D8, &unk_269860C70);
  *(v0 + 272) = v15;
  v16 = qword_280322558;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_28033D780;
  *(v0 + 336) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324850, &qword_269860A20);
  *(v0 + 344) = sub_269693204(&qword_2803248E8, &qword_280324850, &qword_269860A20);
  *(v0 + 312) = v17;
  v18 = qword_280322598;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_28033D7C0;
  v20 = _s23MediaPersonOntologyNodeCMa(0);
  v21 = MEMORY[0x277D5E210];
  *(v0 + 376) = v20;
  *(v0 + 384) = v21;
  *(v0 + 352) = v19;
  v22 = qword_2803225A0;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_28033D7C8;
  *(v0 + 416) = v6;
  *(v0 + 424) = v7;
  *(v0 + 392) = v23;
  v24 = qword_2803225A8;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_28033D7D0;
  *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803248F0, &qword_269860C80);
  *(v0 + 464) = sub_269693204(&qword_2803248F8, &qword_2803248F0, &qword_269860C80);
  *(v0 + 432) = v25;
  v26 = qword_2803225B0;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_28033D7D8;
  *(v0 + 496) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324900, &qword_269860C88);
  *(v0 + 504) = sub_269693204(&qword_280324908, &qword_280324900, &qword_269860C88);
  *(v0 + 472) = v27;
  v28 = qword_2803225B8;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_28033D7E0;
  *(v0 + 536) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324910, &qword_269860C90);
  *(v0 + 544) = sub_269693204(&qword_280324918, &qword_280324910, &qword_269860C90);
  *(v0 + 512) = v29;
  v30 = qword_2803225C0;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_28033D7E8;
  *(v0 + 576) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324920, &qword_269860C98);
  *(v0 + 584) = sub_269693204(&qword_280324928, &qword_280324920, &qword_269860C98);
  *(v0 + 552) = v31;
  v32 = qword_2803225C8;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = qword_28033D7F0;
  *(v0 + 616) = v6;
  *(v0 + 624) = v7;
  *(v0 + 592) = v33;
  v34 = qword_2803225D0;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = qword_28033D7F8;
  *(v0 + 656) = _s20MediaAppOntologyNodeCMa(0);
  *(v0 + 664) = v21;
  *(v0 + 632) = v35;
  v36 = qword_280322608;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = qword_28033D830;
  *(v0 + 696) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324930, &qword_269860CA0);
  *(v0 + 704) = sub_269693204(&qword_280324938, &qword_280324930, &qword_269860CA0);
  *(v0 + 672) = v37;
  v38 = qword_280322610;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = qword_28033D838;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324940, &qword_269860CA8);
  *(v0 + 736) = v40;
  v41 = sub_269693204(&qword_280324948, &qword_280324940, &qword_269860CA8);
  *(v0 + 744) = v41;
  *(v0 + 712) = v39;
  v42 = qword_280322618;

  if (v42 != -1)
  {
    swift_once();
  }

  v43 = qword_28033D840;
  *(v0 + 776) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324950, &qword_269860CB0);
  *(v0 + 784) = sub_269693204(&qword_280324958, &qword_280324950, &qword_269860CB0);
  *(v0 + 752) = v43;
  v44 = qword_280322620;

  if (v44 != -1)
  {
    swift_once();
  }

  v45 = qword_28033D848;
  *(v0 + 816) = v40;
  *(v0 + 824) = v41;
  *(v0 + 792) = v45;
  v46 = qword_280322630;

  if (v46 != -1)
  {
    swift_once();
  }

  v47 = qword_28033D858;
  *(v0 + 856) = v6;
  *(v0 + 864) = v7;
  *(v0 + 832) = v47;
  v48 = qword_280322628;

  if (v48 != -1)
  {
    swift_once();
  }

  v49 = qword_28033D850;
  *(v0 + 896) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324960, &qword_269860CB8);
  *(v0 + 904) = sub_269693204(&qword_280324968, &qword_280324960, &qword_269860CB8);
  *(v0 + 872) = v49;
  v50 = qword_2803225D8;

  if (v50 != -1)
  {
    swift_once();
  }

  v51 = qword_28033D800;
  *(v0 + 936) = v6;
  *(v0 + 944) = v7;
  *(v0 + 912) = v51;
  v52 = qword_2803225E0;

  if (v52 != -1)
  {
    swift_once();
  }

  v53 = qword_28033D808;
  *(v0 + 976) = v6;
  *(v0 + 984) = v7;
  *(v0 + 952) = v53;
  v54 = qword_2803225E8;

  if (v54 != -1)
  {
    swift_once();
  }

  v55 = qword_28033D810;
  *(v0 + 1016) = v6;
  *(v0 + 1024) = v7;
  *(v0 + 992) = v55;
  v56 = qword_2803225F8;

  if (v56 != -1)
  {
    swift_once();
  }

  v57 = qword_28033D820;
  *(v0 + 1056) = v6;
  *(v0 + 1064) = v7;
  *(v0 + 1032) = v57;
  v58 = qword_280322600;

  if (v58 != -1)
  {
    swift_once();
  }

  v59 = qword_28033D828;
  *(v0 + 1096) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324970, &qword_269860CC0);
  *(v0 + 1104) = sub_269693204(&qword_280324978, &qword_280324970, &qword_269860CC0);
  *(v0 + 1072) = v59;
  v60 = sub_269853BA4();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();

  result = sub_269853B94();
  qword_28033D860 = result;
  return result;
}

uint64_t sub_2697A8BC0()
{
  OUTLINED_FUNCTION_8_29();
  sub_2698553E4();
  OUTLINED_FUNCTION_13_18();
  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2697A8C0C(char a1)
{
  result = 1684957542;
  switch(a1)
  {
    case 1:
      result = 2036427888;
      break;
    case 2:
      result = 6579297;
      break;
    case 3:
      result = 0x65766F6D6572;
      break;
    case 4:
      result = 0x6170206863746566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2697A8C8C()
{
  OUTLINED_FUNCTION_8_29();
  sub_2698553E4();
  OUTLINED_FUNCTION_13_18();
  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2697A8CD8(char a1)
{
  result = 0x736472617761;
  switch(a1)
  {
    case 1:
      result = 0x776F68735F7674;
      break;
    case 2:
      result = 0x6F736165735F7674;
      break;
    case 3:
      result = 0x6F736970655F7674;
      break;
    case 4:
      result = 0x6569766F6DLL;
      break;
    case 5:
      result = 0x6C656E6E616863;
      break;
    case 6:
      result = 0x656D6974776F6873;
      break;
    case 7:
      result = 0x73676E696874;
      break;
    case 8:
      result = 0x72656C69617274;
      break;
    case 9:
      result = 0x7374656B636974;
      break;
    case 10:
      result = 0x7372657461656874;
      break;
    case 11:
      result = 0x736F65646976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2697A8E14()
{
  OUTLINED_FUNCTION_8_29();
  sub_2698553E4();
  OUTLINED_FUNCTION_13_18();
  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2697A8E60(char a1)
{
  result = 0x42656D69546C6C41;
  switch(a1)
  {
    case 1:
      result = 0x57656D69546C6C41;
      break;
    case 2:
      result = 1953719650;
      break;
    case 3:
      result = OUTLINED_FUNCTION_7_30(28535);
      break;
    case 4:
      result = 0x72616C75706F70;
      break;
    case 5:
      result = 0x6E656D6D6F636572;
      break;
    case 6:
      v3 = 1702323566;
      goto LABEL_9;
    case 7:
      v3 = 1701080175;
LABEL_9:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x747300000000;
      break;
    case 8:
      result = 0x676E6973736F7267;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2697A8F54()
{
  OUTLINED_FUNCTION_8_29();
  sub_2698553E4();
  OUTLINED_FUNCTION_13_18();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2697A8FA0(char a1)
{
  if (!a1)
  {
    return 0x657469726F766166;
  }

  if (a1 == 1)
  {
    return 0x7473696C68736977;
  }

  return 0x73696C6863746177;
}

uint64_t sub_2697A8FF8()
{
  OUTLINED_FUNCTION_8_29();
  sub_2698553E4();
  OUTLINED_FUNCTION_13_18();
  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2697A9044(char a1)
{
  result = 7105633;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_7_30(26982);
      break;
    case 2:
      result = OUTLINED_FUNCTION_10_19();
      break;
    case 3:
      result = 1954047342;
      break;
    case 4:
      result = 0x73756F6976657270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2697A90B0()
{
  OUTLINED_FUNCTION_8_29();
  sub_2698553E4();
  OUTLINED_FUNCTION_13_18();
  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2697A90FC(char a1)
{
  result = 7105633;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_7_30(26982);
      break;
    case 2:
      result = OUTLINED_FUNCTION_10_19();
      break;
    case 3:
      result = 0x746E6572727563;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2697A917C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2697A8BC0();
  *a2 = result;
  return result;
}

uint64_t sub_2697A91AC()
{
  v1 = OUTLINED_FUNCTION_5_30();
  result = sub_2697A8C0C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2697A9248@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2697A8C8C();
  *a2 = result;
  return result;
}

uint64_t sub_2697A9278()
{
  v1 = OUTLINED_FUNCTION_5_30();
  result = sub_2697A8CD8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2697A9314@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2697A8E14();
  *a2 = result;
  return result;
}

unint64_t sub_2697A9344()
{
  v1 = OUTLINED_FUNCTION_5_30();
  result = sub_2697A8E60(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2697A93E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2697A8F54();
  *a2 = result;
  return result;
}

uint64_t sub_2697A9410()
{
  v1 = OUTLINED_FUNCTION_5_30();
  result = sub_2697A8FA0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2697A9488(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_269771208();
}

uint64_t sub_2697A94AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2697A8FF8();
  *a2 = result;
  return result;
}

uint64_t sub_2697A94DC()
{
  v1 = OUTLINED_FUNCTION_5_30();
  result = sub_2697A9044(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2697A9554(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_269771328();
}

uint64_t sub_2697A9578@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2697A90B0();
  *a2 = result;
  return result;
}

uint64_t sub_2697A95A8()
{
  v1 = OUTLINED_FUNCTION_5_30();
  result = sub_2697A90FC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2697A9670(char a1)
{
  if (a1)
  {
    return 0x65674178616DLL;
  }

  else
  {
    return 0x6567416E696DLL;
  }
}

uint64_t sub_2697A9698()
{
  OUTLINED_FUNCTION_8_29();
  sub_2698555B4();
  OUTLINED_FUNCTION_13_18();
  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2697A96EC()
{
  OUTLINED_FUNCTION_8_29();
  sub_2698553E4();
  OUTLINED_FUNCTION_13_18();
  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2697A9738(char a1)
{
  result = 7562617;
  switch(a1)
  {
    case 1:
      result = 28526;
      break;
    case 2:
      result = 0x6C65636E6163;
      break;
    case 3:
      result = 0x206D7269666E6F63;
      break;
    case 4:
      result = 0x63207463656A6572;
      break;
    case 5:
      result = 0x726F6D20776F6873;
      break;
    case 6:
      result = 0x6B636162206F67;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2697A9814()
{
  OUTLINED_FUNCTION_8_29();
  sub_2698553E4();
  OUTLINED_FUNCTION_13_18();
  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2697A9864(char a1)
{
  if (a1)
  {
    return 0x69736976656C6574;
  }

  else
  {
    return 0x76745F656C707061;
  }
}

uint64_t sub_2697A9908@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2697A9814();
  *a2 = result;
  return result;
}

uint64_t sub_2697A9940()
{
  v1 = OUTLINED_FUNCTION_5_30();
  result = sub_2697A9670(v1);
  *v0 = result;
  v0[1] = 0xE600000000000000;
  return result;
}

uint64_t sub_2697A99E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2697A9698();
  *a2 = result;
  return result;
}

unint64_t sub_2697A9A10()
{
  v1 = OUTLINED_FUNCTION_5_30();
  result = sub_2697A7348(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2697A9AAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2697A96EC();
  *a2 = result;
  return result;
}

uint64_t sub_2697A9ADC()
{
  v1 = OUTLINED_FUNCTION_5_30();
  result = sub_2697A9738(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2697A9B78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2697A9814();
  *a2 = result;
  return result;
}

uint64_t sub_2697A9BB0()
{
  v1 = OUTLINED_FUNCTION_5_30();
  result = sub_2697A9864(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2697A9C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4();
  v11 = a5();
  v12 = a6();

  return MEMORY[0x2821C21F8](a1, a2, v10, v11, v12);
}

uint64_t sub_2697A9CB8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269853F44();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2697A9D38(uint64_t a1)
{
  v2 = sub_2697A9F1C(&qword_280324980, type metadata accessor for MediaNLIntent);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_2697A9DB4(uint64_t a1)
{
  v2 = sub_2697A9F1C(&qword_280324980, type metadata accessor for MediaNLIntent);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_2697A9E20(uint64_t a1)
{
  v2 = sub_2697A9F1C(&qword_280324980, type metadata accessor for MediaNLIntent);

  return MEMORY[0x2821C0C70](a1, v2);
}

uint64_t sub_2697A9F1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2697A9F64(uint64_t a1)
{
  v2 = _s13MediaNLPersonVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for MediaNLIntent.MediaConfirmationValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaNLIntent.SeasonNumberReference(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaNLIntent.SearchAttribute(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MediaNLIntent.SearchAttribute(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PredictedApp.Order(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2697AA394(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_14_18(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaNLIntent.Sort(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MediaNLIntent.Sort(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaNLIntent.List(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaNLIntent.Noun(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MediaNLIntent.Noun(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2697AA810(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_14_18(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2697AA8EC()
{
  result = qword_2803249B8;
  if (!qword_2803249B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803249B8);
  }

  return result;
}

unint64_t sub_2697AA988()
{
  result = qword_2803249D0;
  if (!qword_2803249D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803249D0);
  }

  return result;
}

unint64_t sub_2697AA9E0()
{
  result = qword_2803249D8;
  if (!qword_2803249D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803249D8);
  }

  return result;
}

unint64_t sub_2697AAA80()
{
  result = qword_2803249F0;
  if (!qword_2803249F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803249F0);
  }

  return result;
}

unint64_t sub_2697AAAD8()
{
  result = qword_2803249F8;
  if (!qword_2803249F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803249F8);
  }

  return result;
}

unint64_t sub_2697AAB74()
{
  result = qword_280324A10;
  if (!qword_280324A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324A10);
  }

  return result;
}

unint64_t sub_2697AABCC()
{
  result = qword_280324A18;
  if (!qword_280324A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324A18);
  }

  return result;
}

unint64_t sub_2697AAC6C()
{
  result = qword_280324A30;
  if (!qword_280324A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324A30);
  }

  return result;
}

unint64_t sub_2697AACC4()
{
  result = qword_280324A38;
  if (!qword_280324A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324A38);
  }

  return result;
}

unint64_t sub_2697AAD60()
{
  result = qword_280324A50;
  if (!qword_280324A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324A50);
  }

  return result;
}

unint64_t sub_2697AADB8()
{
  result = qword_280324A58;
  if (!qword_280324A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324A58);
  }

  return result;
}

unint64_t sub_2697AAE58()
{
  result = qword_280324A70;
  if (!qword_280324A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324A70);
  }

  return result;
}

unint64_t sub_2697AAEF8()
{
  result = qword_280324A88;
  if (!qword_280324A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324A88);
  }

  return result;
}

unint64_t sub_2697AAF50()
{
  result = qword_280324A90;
  if (!qword_280324A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324A90);
  }

  return result;
}

unint64_t sub_2697AAFA8()
{
  result = qword_280324A98;
  if (!qword_280324A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324A98);
  }

  return result;
}

unint64_t sub_2697AB000()
{
  result = qword_280324AA0;
  if (!qword_280324AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324AA0);
  }

  return result;
}

unint64_t sub_2697AB0A0()
{
  result = qword_280324AB8;
  if (!qword_280324AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324AB8);
  }

  return result;
}

unint64_t sub_2697AB0F8()
{
  result = qword_280324AC0;
  if (!qword_280324AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324AC0);
  }

  return result;
}

unint64_t sub_2697AB194()
{
  result = qword_280324AD8;
  if (!qword_280324AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324AD8);
  }

  return result;
}

unint64_t sub_2697AB1EC()
{
  result = qword_280324AE0;
  if (!qword_280324AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324AE0);
  }

  return result;
}

unint64_t sub_2697AB244()
{
  result = qword_280324AE8;
  if (!qword_280324AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324AE8);
  }

  return result;
}

unint64_t sub_2697AB2E0()
{
  result = qword_280324B00;
  if (!qword_280324B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B00);
  }

  return result;
}

unint64_t sub_2697AB338()
{
  result = qword_280324B08;
  if (!qword_280324B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B08);
  }

  return result;
}

unint64_t sub_2697AB390()
{
  result = qword_280324B10;
  if (!qword_280324B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B10);
  }

  return result;
}

unint64_t sub_2697AB3E8()
{
  result = qword_280324B18;
  if (!qword_280324B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B18);
  }

  return result;
}

unint64_t sub_2697AB440()
{
  result = qword_280324B20;
  if (!qword_280324B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B20);
  }

  return result;
}

unint64_t sub_2697AB498()
{
  result = qword_280324B28;
  if (!qword_280324B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B28);
  }

  return result;
}

unint64_t sub_2697AB4F0()
{
  result = qword_280324B30;
  if (!qword_280324B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B30);
  }

  return result;
}

unint64_t sub_2697AB544()
{
  result = qword_280324B38;
  if (!qword_280324B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B38);
  }

  return result;
}

unint64_t sub_2697AB598()
{
  result = qword_280324B40;
  if (!qword_280324B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B40);
  }

  return result;
}

unint64_t sub_2697AB5EC()
{
  result = qword_280324B48;
  if (!qword_280324B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B48);
  }

  return result;
}

unint64_t sub_2697AB640()
{
  result = qword_280324B50;
  if (!qword_280324B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B50);
  }

  return result;
}

unint64_t sub_2697AB694()
{
  result = qword_280324B58;
  if (!qword_280324B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B58);
  }

  return result;
}

unint64_t sub_2697AB6E8()
{
  result = qword_280324B60;
  if (!qword_280324B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B60);
  }

  return result;
}

unint64_t sub_2697AB73C()
{
  result = qword_280324B68;
  if (!qword_280324B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B68);
  }

  return result;
}

unint64_t sub_2697AB790()
{
  result = qword_280324B70;
  if (!qword_280324B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B70);
  }

  return result;
}

unint64_t sub_2697AB7E4()
{
  result = qword_280324B78;
  if (!qword_280324B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B78);
  }

  return result;
}

unint64_t sub_2697AB838()
{
  result = qword_280324B80;
  if (!qword_280324B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B80);
  }

  return result;
}

unint64_t sub_2697AB88C()
{
  result = qword_280324B88;
  if (!qword_280324B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B88);
  }

  return result;
}

unint64_t sub_2697AB8E0()
{
  result = qword_280324B90;
  if (!qword_280324B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B90);
  }

  return result;
}

unint64_t sub_2697AB934()
{
  result = qword_280324B98;
  if (!qword_280324B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B98);
  }

  return result;
}

unint64_t sub_2697AB988()
{
  result = qword_280324BA0;
  if (!qword_280324BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324BA0);
  }

  return result;
}

unint64_t sub_2697AB9DC()
{
  result = qword_280324BA8;
  if (!qword_280324BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324BA8);
  }

  return result;
}

unint64_t sub_2697ABA30()
{
  result = qword_280324BB0;
  if (!qword_280324BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324BB0);
  }

  return result;
}

unint64_t sub_2697ABA84()
{
  result = qword_280324BB8;
  if (!qword_280324BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324BB8);
  }

  return result;
}

unint64_t sub_2697ABAD8()
{
  result = qword_280324BC0;
  if (!qword_280324BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324BC0);
  }

  return result;
}

unint64_t sub_2697ABB2C()
{
  result = qword_280324BC8;
  if (!qword_280324BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324BC8);
  }

  return result;
}

unint64_t sub_2697ABB80()
{
  result = qword_280324BD0;
  if (!qword_280324BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324BD0);
  }

  return result;
}

unint64_t sub_2697ABBD4()
{
  result = qword_280324BD8;
  if (!qword_280324BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324BD8);
  }

  return result;
}

unint64_t sub_2697ABC28()
{
  result = qword_280324BE0;
  if (!qword_280324BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324BE0);
  }

  return result;
}

unint64_t sub_2697ABC7C()
{
  result = qword_280324BE8;
  if (!qword_280324BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324BE8);
  }

  return result;
}

unint64_t sub_2697ABCD0()
{
  result = qword_280324BF0;
  if (!qword_280324BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324BF0);
  }

  return result;
}

unint64_t sub_2697ABD24()
{
  result = qword_280324BF8;
  if (!qword_280324BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324BF8);
  }

  return result;
}

unint64_t sub_2697ABD78()
{
  result = qword_280324C00;
  if (!qword_280324C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324C00);
  }

  return result;
}

unint64_t sub_2697ABDCC()
{
  result = qword_280324C08;
  if (!qword_280324C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324C08);
  }

  return result;
}

unint64_t sub_2697ABE20()
{
  result = qword_280324C10;
  if (!qword_280324C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324C10);
  }

  return result;
}

unint64_t sub_2697ABE74()
{
  result = qword_280324C18;
  if (!qword_280324C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324C18);
  }

  return result;
}

unint64_t sub_2697ABEC8()
{
  result = qword_280324C20;
  if (!qword_280324C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324C20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_29()
{

  return sub_269853BB4();
}

uint64_t OUTLINED_FUNCTION_13_18()
{
}

uint64_t OUTLINED_FUNCTION_15_20()
{

  return sub_269853D54();
}

uint64_t OUTLINED_FUNCTION_17_15()
{

  return sub_269853D54();
}

uint64_t sub_2697AC034()
{
  if (qword_280322628 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaNLIntent();
  sub_2696DAEF8();
  sub_269853D54();
  if (v4 == 7)
  {
    v0 = 0;
  }

  else if (sub_2697A9738(v4) == 0x6C65636E6163 && v1 == 0xE600000000000000)
  {

    v0 = 1;
  }

  else
  {
    v0 = sub_269855584();
  }

  return v0 & 1;
}

uint64_t sub_2697AC1D8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_2_27();
  result = sub_269853BB4();
  *a5 = result;
  return result;
}

uint64_t sub_2697AC230()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324820, &unk_269860990);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2698580D0;
  if (qword_280322640 != -1)
  {
    swift_once();
  }

  v1 = qword_28033D868;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  *(v0 + 64) = OUTLINED_FUNCTION_0_41(&qword_280324830);
  *(v0 + 32) = v1;
  v2 = qword_280322648;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_28033D870;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324C38, &qword_269861AE0);
  *(v0 + 104) = OUTLINED_FUNCTION_0_41(&qword_280324C40);
  *(v0 + 72) = v3;

  v4 = OUTLINED_FUNCTION_2_27();

  return MEMORY[0x2821C0790](v4, 0xEB000000006E6F73, 1, v0);
}

uint64_t _s13MediaNLPersonV10PersonRoleOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s13MediaNLPersonV10PersonRoleOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2697AC584()
{
  result = qword_280324C58;
  if (!qword_280324C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324C58);
  }

  return result;
}

uint64_t sub_2697AC5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_269853D94();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  *(a3 + *(_s13MediaNLPersonVMa(0) + 20)) = a2;
}

uint64_t sub_2697AC668()
{
  v0 = sub_2698553E4();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2697AC6C0(char a1)
{
  result = 0x726F746361;
  switch(a1)
  {
    case 1:
      result = 0x726F7461657263;
      break;
    case 2:
      result = 0x726F746365726964;
      break;
    case 3:
      result = 0x6174537473657567;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x72656375646F7270;
      break;
    case 6:
      result = 0x72656B616DLL;
      break;
    case 7:
      result = 0x726574697277;
      break;
    case 8:
      result = 0x6574636172616863;
      break;
    case 9:
      result = 0x6669636570736E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2697AC7F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2697AC668();
  *a2 = result;
  return result;
}

unint64_t sub_2697AC824@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2697AC6C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2697AC860(uint64_t a1, uint64_t a2)
{
  v4 = sub_2697ACB04();
  v5 = sub_2697ACB58();
  v6 = sub_2697ACBAC();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_2697AC91C()
{
  result = qword_280324C70;
  if (!qword_280324C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324C70);
  }

  return result;
}

unint64_t sub_2697AC974()
{
  result = qword_280324C78;
  if (!qword_280324C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324C78);
  }

  return result;
}

uint64_t sub_2697AC9CC(uint64_t a1)
{
  v2 = sub_2697ACAC0(&qword_2803247A0);

  return MEMORY[0x2821C1928](a1, v2);
}

uint64_t sub_2697ACA34(uint64_t a1)
{
  v2 = sub_2697ACAC0(&qword_2803247A0);

  return MEMORY[0x2821C1920](a1, v2);
}

uint64_t sub_2697ACAC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s13MediaNLPersonVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2697ACB04()
{
  result = qword_280324C80;
  if (!qword_280324C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324C80);
  }

  return result;
}

unint64_t sub_2697ACB58()
{
  result = qword_280324C88;
  if (!qword_280324C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324C88);
  }

  return result;
}

unint64_t sub_2697ACBAC()
{
  result = qword_280324C90;
  if (!qword_280324C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324C90);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_41(unint64_t *a1)
{

  return sub_269693204(a1, v1, v2);
}

uint64_t sub_2697ACC48(uint64_t result, uint64_t *a2, void *a3)
{
  v6 = result;
  v7 = 0;
  v8 = *(result + 16);
  do
  {
    if (v8 == v7)
    {
      break;
    }

    v9 = *(_s13MediaNLPersonVMa(0) - 8);
    result = sub_2697ACEBC(v6 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++, a2, a3);
  }

  while (!v3);
  return result;
}

uint64_t sub_2697ACD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_269853CE4();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_269853CE4();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

char *sub_2697ACDE0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_269750050(result - 1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return MEMORY[0x26D646120](v3, a1);
  }

  result = sub_269855324();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}