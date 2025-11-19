uint64_t sub_1E3C16BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3C16BD0()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = Strong;
    *(v0 + 72) = *(Strong + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_timingTracker);

    v3 = OUTLINED_FUNCTION_52_29();

    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_54();

    return v6();
  }
}

uint64_t sub_1E3C16CA0()
{
  OUTLINED_FUNCTION_24();
  sub_1E3DAC6F0();

  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1E3C16D08()
{
  **(v0 + 40) = *(v0 + 64) == 0;
  OUTLINED_FUNCTION_54();
  return v1();
}

void sub_1E3C16D3C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sharedPlayer);
  *(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sharedPlayer) = a1;
  v3 = a1;

  sub_1E3C15798();
}

id sub_1E3C16D94()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isPostPlayActive];

  return v1;
}

uint64_t sub_1E3C16E00()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_timingTracker);
  *(v0 + 24) = v1;
  return OUTLINED_FUNCTION_13_1(sub_1E3C16E28, v1);
}

uint64_t sub_1E3C16E28()
{
  OUTLINED_FUNCTION_24();
  sub_1E32AB9D8();
  OUTLINED_FUNCTION_54();

  return v0();
}

void sub_1E3C16E80()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_isConfigured;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    OUTLINED_FUNCTION_38_1();
    sub_1E42074B4();

    OUTLINED_FUNCTION_41_7();
    if (sub_1E3C14F9C())
    {
      v3 = sub_1E41FF3F4();
      v5 = v4;
    }

    else
    {
      v5 = 0xE500000000000000;
      v3 = 0x3E6C696E3CLL;
    }

    MEMORY[0x1E69109E0](v3, v5);

    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_55_31();
    sub_1E32AAD78(v10, v11, 0xD00000000000001FLL, v12, v13);

    if (sub_1E3C14F9C())
    {
      sub_1E41FF424();
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_178();
    OUTLINED_FUNCTION_43_42();
    sub_1E32AAD78(v6, v7, 0xD00000000000001FLL, v8, v9);
  }
}

uint64_t sub_1E3C16FD0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  v10 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_isConfigured;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v4 + v10) == 1)
  {
    if (sub_1E3C14F9C())
    {
      sub_1E41FF4B4();

      sub_1E39CB410();
    }

    OUTLINED_FUNCTION_82();
    v18 = sub_1E3C17278(v15, v16, v17, a2);

    if (v18)
    {
      LOBYTE(a2) = 1;
    }

    else
    {
      if (sub_1E3C14F9C())
      {
        sub_1E41FF4B4();

        v19 = sub_1E39CB9F8();

        if (v19)
        {
          v20 = [v19 playbackURL];

          if (v20)
          {
            sub_1E41FE3C4();
          }

          v21 = sub_1E41FE414();
          OUTLINED_FUNCTION_166_3();
          __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
          v25 = OUTLINED_FUNCTION_53();
          sub_1E327D738(v25, v26);
          v27 = OUTLINED_FUNCTION_125_5();
          OUTLINED_FUNCTION_52(v27, v28, v21);
          if (v29)
          {
            sub_1E325F7A8(v3, &unk_1ECF363C0);
          }

          else
          {
            sub_1E41FE314();
            OUTLINED_FUNCTION_37_1();
            (*(v30 + 8))(v3, v21);
          }
        }
      }

      v31 = OUTLINED_FUNCTION_76_0();
      sub_1E3C17278(v31, v32, a1, a2);
      OUTLINED_FUNCTION_12_1();
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_178();
    OUTLINED_FUNCTION_43_42();
    sub_1E32AAD78(v11, v12, 0xD000000000000035, v13, v14);
    LOBYTE(a2) = 0;
  }

  return a2 & 1;
}

uint64_t sub_1E3C17278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2 || !a4)
  {
    return OUTLINED_FUNCTION_18();
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1E42079A4();
  }
}

void sub_1E3C172A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v28 = OUTLINED_FUNCTION_17_2(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_50_9();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  v32 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_226();
  sub_1E379D7E4(v26, v31, &unk_1ECF363C0);
  v37 = OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_52(v37, v38, v32);
  if (v46)
  {
    v39 = v31;
LABEL_7:
    sub_1E325F7A8(v39, &unk_1ECF363C0);
    goto LABEL_8;
  }

  v40 = *(v34 + 32);
  (v40)(v21, v31, v32);
  v41 = OUTLINED_FUNCTION_38_0();
  sub_1E379D7E4(v41, v42, v43);
  v44 = OUTLINED_FUNCTION_44_5();
  OUTLINED_FUNCTION_52(v44, v45, v32);
  if (v46)
  {
    v47 = OUTLINED_FUNCTION_67_0();
    v48(v47);
    v39 = v20;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_21_1();
  v40();
  OUTLINED_FUNCTION_4_150();
  sub_1E32AC410(v49, v50);
  sub_1E4205E84();
  v51 = *(v34 + 8);
  v51(v22, v32);
  v52 = OUTLINED_FUNCTION_67_0();
  (v51)(v52);
LABEL_8:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C174E4()
{
  OUTLINED_FUNCTION_31_1();
  v19 = v1;
  v20 = v0;
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v3 = sub_1E41FE624();
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_60_22();
  sub_1E42074B4();

  OUTLINED_FUNCTION_41_7();
  v5 = OUTLINED_FUNCTION_53();
  MEMORY[0x1E69109E0](v5);
  MEMORY[0x1E69109E0](2108704, 0xE300000000000000);
  OUTLINED_FUNCTION_4_150();
  sub_1E32AC410(v6, v7);
  OUTLINED_FUNCTION_180_2();
  v8 = sub_1E4207944();
  MEMORY[0x1E69109E0](v8);

  OUTLINED_FUNCTION_0_185();
  OUTLINED_FUNCTION_55_31();
  sub_1E32AAD78(v9, v10, v11, v12, v13);

  type metadata accessor for GroupWatchActivity();
  sub_1E41FE614();
  OUTLINED_FUNCTION_167_0();
  v14();

  v15 = v20;
  sub_1E39CBC68();
  if (!v19)
  {
    [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  }

  OUTLINED_FUNCTION_2_145();
  sub_1E32AC410(v16, v17);
  v18 = v19;
  sub_1E4206834();

  OUTLINED_FUNCTION_25_2();
}

id sub_1E3C17748(void *a1, void *a2, void *a3)
{
  v6 = sub_1E41FE624();
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  type metadata accessor for GroupWatchActivity();
  sub_1E41FE614();
  v8 = a1;
  v9 = a2;
  OUTLINED_FUNCTION_53();
  sub_1E39CBFD0();
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  }

  OUTLINED_FUNCTION_2_145();
  sub_1E32AC410(v11, v12);
  v13 = a3;
  sub_1E4206834();

  return v10;
}

id sub_1E3C17864(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  OUTLINED_FUNCTION_39_1();
  sub_1E42074B4();

  OUTLINED_FUNCTION_41_7();
  v25 = v10;
  v11 = OUTLINED_FUNCTION_8_6();
  MEMORY[0x1E69109E0](v11);
  OUTLINED_FUNCTION_0_185();
  OUTLINED_FUNCTION_55_31();
  sub_1E32AAD78(v12, v13, v14, v15, v16);

  if (a4)
  {
    v17 = a4;
  }

  else
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  }

  OUTLINED_FUNCTION_10_9();
  v18 = swift_allocObject();
  v18[2] = v5;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  type metadata accessor for GroupWatchActivity();
  OUTLINED_FUNCTION_2_145();
  sub_1E32AC410(v19, v20);
  v21 = a4;
  v22 = v5;

  v23 = a3;
  sub_1E4206824();

  return v17;
}

uint64_t sub_1E3C179D0()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1E41FE414();
  OUTLINED_FUNCTION_17_2(v3);
  v0[4] = OUTLINED_FUNCTION_86_0();
  v4 = sub_1E41FE624();
  OUTLINED_FUNCTION_17_2(v4);
  v0[5] = OUTLINED_FUNCTION_86_0();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_56_1(v5);
  v6 = OUTLINED_FUNCTION_32_0();

  return sub_1E3C17CF0(v6, v7);
}

uint64_t sub_1E3C17AA4()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 56) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_169();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

id sub_1E3C17BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_60_7();
  OUTLINED_FUNCTION_58_5();
  v13 = *(v12 + 56);
  sub_1E41FE614();
  result = sub_1E39A4DDC(v13, &selRef_sharedWatchId);
  if (!v15)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = [*(v12 + 56) sharedWatchUrl];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v16 = result;
  v17 = *(v12 + 56);
  v19 = *(v12 + 16);
  v18 = *(v12 + 24);
  type metadata accessor for GroupWatchActivity();
  sub_1E41FE3C4();

  v20 = v18;
  OUTLINED_FUNCTION_76_0();
  v21 = sub_1E39CBC68();

  *v19 = v21;

  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_68_2();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_1E3C17CF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3C17D04()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  sub_1E3280A90(0, &qword_1EE23B1C0);
  *v4 = v0;
  v4[1] = sub_1E3C17E10;
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DE38](v5, v6, v7, v8, v9, v10, v3, v11);
}

uint64_t sub_1E3C17E10()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3C17F38()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3C17F94()
{
  OUTLINED_FUNCTION_24();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[5] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v6);
  v1[10] = OUTLINED_FUNCTION_86_0();
  v7 = sub_1E41FE414();
  v1[11] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v1[12] = v8;
  v1[13] = OUTLINED_FUNCTION_86_0();
  sub_1E4206434();
  v1[14] = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v1[15] = v9;
  v1[16] = v10;
  v11 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1E3C18094()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_isConfigured;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    v3 = sub_1E39A4DDC(*(v0 + 40), &selRef_utsEntityType);
    v5 = v4;
    v6 = sub_1E4205F14();
    if (v5)
    {
      v8 = v3 == v6 && v5 == v7;
      if (!v8)
      {
        OUTLINED_FUNCTION_67_0();
        sub_1E42079A4();
      }
    }

    else
    {
    }

    v22 = *(v0 + 88);
    sub_1E379D7E4(*(v0 + 48), *(v0 + 80), &unk_1ECF363C0);
    v23 = OUTLINED_FUNCTION_44_5();
    OUTLINED_FUNCTION_52(v23, v24, v22);
    if (!v8)
    {
      v28 = *(v0 + 40);
      (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 80), *(v0 + 88));
      sub_1E39A4DDC(v28, &selRef_sharedWatchId);
      *(v0 + 136) = v29;
      v30 = swift_task_alloc();
      *(v0 + 144) = v30;
      *v30 = v0;
      v30[1] = sub_1E3C183AC;
      OUTLINED_FUNCTION_62_1();

      return sub_1E3C186E8();
    }

    v25 = *(v0 + 40);
    sub_1E325F7A8(*(v0 + 80), &unk_1ECF363C0);
    if ([v25 useSharedPlayableForCowatching])
    {
      v26 = swift_task_alloc();
      *(v0 + 160) = v26;
      *v26 = v0;
      v26[1] = sub_1E3C1856C;
      OUTLINED_FUNCTION_62_1();

      return sub_1E3C18FA8();
    }

    v9 = "s not yet configured";
    v10 = 0xD000000000000046;
  }

  else
  {
    v9 = "ction:previewMetadata:)";
    v10 = 0xD000000000000074;
  }

  OUTLINED_FUNCTION_1_178();
  sub_1E32AAD78(v10, v9 | 0x8000000000000000, 0xD000000000000047, v11 | 0x8000000000000000, v12);

  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_62_1();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1E3C183AC()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_37_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_5();
  *v5 = v4;
  *(v7 + 152) = v6;

  OUTLINED_FUNCTION_66_1();
  v9 = *(v8 + 128);
  v10 = *(v0 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1E3C184DC, v10, v9);
}

uint64_t sub_1E3C184DC()
{
  OUTLINED_FUNCTION_27_2();

  v0 = OUTLINED_FUNCTION_16_0();
  v1(v0);

  v2 = OUTLINED_FUNCTION_88_1();

  return v3(v2);
}

uint64_t sub_1E3C1856C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_37_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_5();
  *v5 = v4;
  *(v7 + 168) = v6;

  OUTLINED_FUNCTION_66_1();
  v9 = *(v8 + 128);
  v10 = *(v0 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1E3C18678, v10, v9);
}

uint64_t sub_1E3C18678()
{
  OUTLINED_FUNCTION_24();

  v0 = OUTLINED_FUNCTION_88_1();

  return v1(v0);
}

uint64_t sub_1E3C186E8()
{
  OUTLINED_FUNCTION_24();
  *(v1 + 224) = v2;
  *(v1 + 96) = v3;
  *(v1 + 104) = v0;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408);
  OUTLINED_FUNCTION_17_2(v8);
  *(v1 + 112) = OUTLINED_FUNCTION_86_0();
  v9 = sub_1E41FE624();
  *(v1 + 120) = v9;
  OUTLINED_FUNCTION_8_0(v9);
  *(v1 + 128) = v10;
  *(v1 + 136) = OUTLINED_FUNCTION_107_1();
  *(v1 + 144) = swift_task_alloc();
  v11 = sub_1E41FE414();
  *(v1 + 152) = v11;
  OUTLINED_FUNCTION_8_0(v11);
  *(v1 + 160) = v12;
  *(v1 + 168) = OUTLINED_FUNCTION_107_1();
  *(v1 + 176) = swift_task_alloc();
  sub_1E4206434();
  *(v1 + 184) = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  *(v1 + 192) = v13;
  *(v1 + 200) = v14;
  v15 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1E3C18850()
{
  if (v0[10])
  {
    v2 = v0[14];
    v1 = v0[15];
    v3 = v0[13];

    sub_1E3C1E710();
    v4 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_modifyingActivityIdentifier;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E379D7E4(v3 + v4, v2, &qword_1ECF29408);
    if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
    {
      v5 = v0[15];
      sub_1E41FE614();
      v6 = OUTLINED_FUNCTION_31_5();
      OUTLINED_FUNCTION_52(v6, v7, v5);
      if (!v8)
      {
        sub_1E325F7A8(v0[14], &qword_1ECF29408);
      }
    }

    else
    {
      (*(v0[16] + 32))(v0[18], v0[14], v0[15]);
    }

    v13 = v0[11];
    sub_1E42074B4();

    OUTLINED_FUNCTION_41_7();
    OUTLINED_FUNCTION_4_150();
    sub_1E32AC410(v14, v15);
    v16 = sub_1E4207944();
    v18 = v17;
    MEMORY[0x1E69109E0](v16);

    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_81_14(v19, v20, v21, v22, v23);

    switch(v13)
    {
      case 0:
        OUTLINED_FUNCTION_75_13();

        OUTLINED_FUNCTION_41_7();
        OUTLINED_FUNCTION_157_5();
        OUTLINED_FUNCTION_0_185();
        OUTLINED_FUNCTION_81_14(v24, v25, v26, v27, v28);

        type metadata accessor for GroupWatchActivity();
        v29 = OUTLINED_FUNCTION_185_1();
        v31 = v30(v29);
        v39 = OUTLINED_FUNCTION_171_2(v31, v32, v33, v34, v35, v36, v37, v38, v85, v86, v87);
        v40(v39);
        v41 = v18;
        OUTLINED_FUNCTION_142_7();
        v42 = sub_1E39CBC68();
        goto LABEL_10;
      case 1:

        OUTLINED_FUNCTION_0_185();
        OUTLINED_FUNCTION_190_0(v68, v69, v70);
        v42 = 0x8000000000000000;
        goto LABEL_13;
      case 2:
        OUTLINED_FUNCTION_75_13();

        OUTLINED_FUNCTION_41_7();
        OUTLINED_FUNCTION_157_5();
        OUTLINED_FUNCTION_0_185();
        OUTLINED_FUNCTION_81_14(v43, v44, v45, v46, v47);

        type metadata accessor for GroupWatchActivity();
        v48 = OUTLINED_FUNCTION_185_1();
        v50 = v49(v48);
        v58 = OUTLINED_FUNCTION_171_2(v50, v51, v52, v53, v54, v55, v56, v57, v85, v86, v87);
        v59(v58);
        v60 = v18;
        OUTLINED_FUNCTION_142_7();
        v42 = sub_1E39CBC68() | 0x4000000000000000;
LABEL_10:

LABEL_13:
        v0[26] = v42;
        v71 = swift_task_alloc();
        v0[27] = v71;
        *v71 = v0;
        v71[1] = sub_1E3C18D84;
        OUTLINED_FUNCTION_41_12();

        return sub_1E3C1ECB0();
      case 3:

        OUTLINED_FUNCTION_1_178();
        OUTLINED_FUNCTION_190_0(v61, v62, v63);
        v64 = OUTLINED_FUNCTION_24_4();
        v65(v64);
        v66 = OUTLINED_FUNCTION_57();
        v67(v66);
        break;
      default:
        v74 = v0[20];
        v89 = v0[19];
        v90 = v0[22];
        v88 = v0[18];
        v76 = v0[15];
        v75 = v0[16];
        v77 = v0[11];

        sub_1E42074B4();
        v0[5] = 0;
        v0[6] = 0xE000000000000000;
        MEMORY[0x1E69109E0](0xD000000000000016, 0x80000001E42776A0);
        v0[7] = v77;
        sub_1E4207614();
        OUTLINED_FUNCTION_1_178();
        OUTLINED_FUNCTION_81_14(v78, v79, v80, v81, v82);

        (*(v75 + 8))(v88, v76);
        (*(v74 + 8))(v90, v89);
        break;
    }
  }

  else
  {

    OUTLINED_FUNCTION_1_178();
    OUTLINED_FUNCTION_43_42();
    sub_1E32AAD78(v9, v10, 0xD00000000000005CLL, v11, v12);
  }

  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_41_12();

  __asm { BRAA            X2, X16 }

  return result;
}

uint64_t sub_1E3C18D84()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_37_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_5();
  *v5 = v4;
  *(v7 + 225) = v6;

  OUTLINED_FUNCTION_66_1();
  v9 = *(v8 + 200);
  v10 = *(v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1E3C18EB4, v10, v9);
}

uint64_t sub_1E3C18EB4()
{

  v0 = OUTLINED_FUNCTION_35_5();
  v1(v0);
  v2 = OUTLINED_FUNCTION_16_0();
  v3(v2);

  v4 = OUTLINED_FUNCTION_88_1();

  return v5(v4);
}

uint64_t sub_1E3C18FA8()
{
  OUTLINED_FUNCTION_24();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408);
  OUTLINED_FUNCTION_17_2(v5);
  v1[12] = OUTLINED_FUNCTION_86_0();
  v6 = sub_1E41FE624();
  v1[13] = v6;
  OUTLINED_FUNCTION_8_0(v6);
  v1[14] = v7;
  v1[15] = OUTLINED_FUNCTION_107_1();
  v1[16] = swift_task_alloc();
  sub_1E4206434();
  v1[17] = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v1[18] = v8;
  v1[19] = v9;
  v10 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1E3C190B0()
{
  v74 = v0;
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  strcpy(v73, "New playable ");
  HIWORD(v73[1]) = -4864;
  v5 = [v4 description];
  sub_1E4205F14();

  v6 = OUTLINED_FUNCTION_24_4();
  MEMORY[0x1E69109E0](v6);

  OUTLINED_FUNCTION_0_185();
  OUTLINED_FUNCTION_78_12(v7, v8, v9, v10, v11);

  v12 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_modifyingActivityIdentifier;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E379D7E4(v3 + v12, v2, &qword_1ECF29408);
  v13 = OUTLINED_FUNCTION_31_5();
  if (__swift_getEnumTagSinglePayload(v13, v14, v1) == 1)
  {
    v15 = *(v0 + 104);
    sub_1E41FE614();
    v16 = OUTLINED_FUNCTION_44_5();
    OUTLINED_FUNCTION_52(v16, v17, v15);
    if (!v61)
    {
      sub_1E325F7A8(*(v0 + 96), &qword_1ECF29408);
    }
  }

  else
  {
    (*(*(v0 + 112) + 32))(*(v0 + 128), *(v0 + 96), *(v0 + 104));
  }

  v18 = *(v0 + 72);
  switch(v18)
  {
    case 0:
      v19 = *(v0 + 80);
      v20 = *(v0 + 64);
      OUTLINED_FUNCTION_38_1();
      sub_1E42074B4();

      OUTLINED_FUNCTION_41_7();
      v73[0] = 0xD000000000000027;
      v73[1] = v21;
      v22 = sub_1E39A4DDC(v20, &selRef_sharedWatchId);
      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v22 = 7104878;
        v24 = 0xE300000000000000;
      }

      MEMORY[0x1E69109E0](v22, v24);

      OUTLINED_FUNCTION_0_185();
      OUTLINED_FUNCTION_78_12(v25, v26, v27, v28, v29);

      type metadata accessor for GroupWatchActivity();
      OUTLINED_FUNCTION_167_0();
      v30();
      v31 = v19;
      v32 = v20;
      OUTLINED_FUNCTION_19_3();
      v33 = sub_1E39CBFD0();
      goto LABEL_14;
    case 1:
      OUTLINED_FUNCTION_0_185();
      OUTLINED_FUNCTION_188_0(v53, v54, v55);
      v33 = 0x8000000000000000;
      goto LABEL_17;
    case 2:
      v34 = *(v0 + 80);
      v35 = *(v0 + 64);
      OUTLINED_FUNCTION_38_1();
      sub_1E42074B4();

      OUTLINED_FUNCTION_41_7();
      v73[0] = 0xD000000000000027;
      v73[1] = v36;
      v37 = sub_1E39A4DDC(v35, &selRef_sharedWatchId);
      if (v38)
      {
        v39 = v38;
      }

      else
      {
        v37 = 7104878;
        v39 = 0xE300000000000000;
      }

      MEMORY[0x1E69109E0](v37, v39);

      OUTLINED_FUNCTION_0_185();
      OUTLINED_FUNCTION_78_12(v40, v41, v42, v43, v44);

      type metadata accessor for GroupWatchActivity();
      OUTLINED_FUNCTION_167_0();
      v45();
      v46 = v34;
      v47 = v35;
      OUTLINED_FUNCTION_19_3();
      v33 = sub_1E39CBFD0() | 0x4000000000000000;
LABEL_14:

LABEL_17:
      *(v0 + 160) = v33;
      v56 = sub_1E39A4DDC(*(v0 + 64), &selRef_utsEntityType);
      v58 = v57;
      v59 = sub_1E4205F14();
      if (v58)
      {
        v61 = v56 == v59 && v58 == v60;
        if (!v61)
        {
          OUTLINED_FUNCTION_38_0();
          sub_1E42079A4();
        }
      }

      else
      {
      }

      v72 = swift_task_alloc();
      *(v0 + 168) = v72;
      *v72 = v0;
      v72[1] = sub_1E3C19634;

      return sub_1E3C1ECB0();
    case 3:

      OUTLINED_FUNCTION_1_178();
      OUTLINED_FUNCTION_188_0(v48, v49, v50);
      v51 = OUTLINED_FUNCTION_16_0();
      v52(v51);
      goto LABEL_26;
    default:

      OUTLINED_FUNCTION_38_1();
      sub_1E42074B4();
      v62 = v73[1];
      *(v0 + 40) = v73[0];
      *(v0 + 48) = v62;
      MEMORY[0x1E69109E0](0xD000000000000016, 0x80000001E42776A0);
      *(v0 + 56) = v18;
      sub_1E4207614();
      OUTLINED_FUNCTION_1_178();
      OUTLINED_FUNCTION_78_12(v63, v64, v65, v66, v67);

      v68 = OUTLINED_FUNCTION_27_0();
      v69(v68);
LABEL_26:

      OUTLINED_FUNCTION_13_7();

      return v70(1);
  }
}

uint64_t sub_1E3C19634()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_37_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_5();
  *v5 = v4;
  *(v7 + 176) = v6;

  OUTLINED_FUNCTION_66_1();
  v9 = *(v8 + 152);
  v10 = *(v0 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1E3C19764, v10, v9);
}

uint64_t sub_1E3C19764()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();

  v0 = OUTLINED_FUNCTION_16_0();
  v1(v0);

  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_62_1();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

void sub_1E3C19814()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF355E0);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v67 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_21_3();
  v18 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v72 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v21 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_isConfigured;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v3 + v21) == 1)
  {
    v71 = v5;
    v22 = [objc_opt_self() sharedInstance];
    v23 = [v22 appController];

    if (v23)
    {
      v24 = [v23 appContext];

      if (v24)
      {
        v70 = v24;
        sub_1E3C1F644();
        v68 = v25;
        v69 = v26;
        if (sub_1E3C14F9C())
        {
          sub_1E41FF4B4();

          v67 = sub_1E39CB410();
          v28 = v27;
        }

        else
        {
          v67 = 0;
          v28 = 0;
        }

        if (sub_1E3C14F9C())
        {
          sub_1E41FF4B4();
          sub_1E39CB5B0();

          OUTLINED_FUNCTION_52(v2, 1, v18);
          if (v34)
          {

            sub_1E325F7A8(v2, &unk_1ECF363C0);
          }

          else
          {
            (*(v72 + 32))(v1, v2, v18);
            v40 = sub_1E3C17278(v68, v69, v67, v28);

            if (v40)
            {
              sub_1E41FF484();
              (*(v8 + 104))(v12, *MEMORY[0x1E696B2D0], v6);
              type metadata accessor for GroupWatchActivity();
              OUTLINED_FUNCTION_2_145();
              sub_1E32AC410(v41, v42);
              OUTLINED_FUNCTION_142_7();
              v43 = sub_1E41FF464();
              v44 = *(v8 + 8);
              v44(v12, v6);
              v44(v15, v6);
              if (v43)
              {
                OUTLINED_FUNCTION_0_185();
                OUTLINED_FUNCTION_167_4();
                OUTLINED_FUNCTION_43_42();
                OUTLINED_FUNCTION_195_1(v45, v46, v47, v48, v49);
                v50 = sub_1E3286BF0();
                v51 = *((*MEMORY[0x1E69E7D40] & **v50) + 0x278);
                v52 = *v50;
                v53 = v70;
                OUTLINED_FUNCTION_25();
                v51();

                v54 = OUTLINED_FUNCTION_165_4();
                v55(v54);
                goto LABEL_7;
              }
            }

            v56 = OUTLINED_FUNCTION_165_4();
            v57(v56);
          }

          OUTLINED_FUNCTION_167_4();
          OUTLINED_FUNCTION_0_185();
          OUTLINED_FUNCTION_43_42();
          OUTLINED_FUNCTION_195_1(v58, v59, v60, v61, v62);
          v63 = sub_1E3286BF0();
          v64 = *((*MEMORY[0x1E69E7D40] & **v63) + 0x278);
          v65 = *v63;
          v66 = v70;
          OUTLINED_FUNCTION_25();
          v64();

          goto LABEL_7;
        }

        OUTLINED_FUNCTION_0_185();
        OUTLINED_FUNCTION_167_4();
        OUTLINED_FUNCTION_43_42();
        OUTLINED_FUNCTION_195_1(v35, v36, v37, v38, v39);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_4();
    OUTLINED_FUNCTION_1_178();
    OUTLINED_FUNCTION_43_42();
    OUTLINED_FUNCTION_195_1(v29, v30, v31, v32, v33);
  }

LABEL_7:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C19DCC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_isConfigured;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v2 + v4) != 1)
  {
    OUTLINED_FUNCTION_1_178();
    OUTLINED_FUNCTION_43_42();
LABEL_10:
    sub_1E32AAD78(v15, v16, 0xD000000000000012, v17, v18);
    return;
  }

  if (!a1)
  {
    OUTLINED_FUNCTION_0_185();
    v15 = 0x6920726579616C50;
    v16 = 0xED00006C696E2073;
    v17 = v19 | 0x8000000000000000;
    goto LABEL_10;
  }

  v5 = *(v2 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sharedPlayer);
  if (v5)
  {
    v6 = v5 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v20 = a1;
    OUTLINED_FUNCTION_0_185();
    sub_1E32AAD78(0xD000000000000043, 0x80000001E4276F50, 0xD000000000000012, 0x80000001E4276ED0, v21);
  }

  else
  {
    v7 = a1;
    sub_1E42074B4();

    OUTLINED_FUNCTION_41_7();
    v8 = [v7 description];
    sub_1E4205F14();

    v9 = OUTLINED_FUNCTION_24_4();
    MEMORY[0x1E69109E0](v9);

    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_55_31();
    sub_1E32AAD78(v10, v11, 0xD000000000000012, v12, v13);

    v14 = v7;
    sub_1E3C16D3C(a1);
  }
}

void sub_1E3C19FBC()
{
  OUTLINED_FUNCTION_0_185();
  OUTLINED_FUNCTION_43_42();
  sub_1E32AAD78(v0, v1, 0xD000000000000013, v2, v3);

  sub_1E3C16D3C(0);
}

uint64_t sub_1E3C1A01C()
{
  OUTLINED_FUNCTION_24();
  v1[14] = v2;
  v1[15] = v0;
  v3 = sub_1E41FF3E4();
  v1[16] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v1[17] = v4;
  v1[18] = OUTLINED_FUNCTION_107_1();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408);
  OUTLINED_FUNCTION_17_2(v5);
  v1[21] = OUTLINED_FUNCTION_107_1();
  v1[22] = swift_task_alloc();
  v6 = sub_1E41FE624();
  v1[23] = v6;
  OUTLINED_FUNCTION_17_2(v6);
  v1[24] = OUTLINED_FUNCTION_86_0();
  v7 = sub_1E41FE414();
  v1[25] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v1[26] = v8;
  v1[27] = OUTLINED_FUNCTION_107_1();
  v1[28] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v9);
  v1[29] = OUTLINED_FUNCTION_107_1();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1E3C1A1F4()
{
  v110 = v0;
  v1 = *(v0 + 120);
  v2 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_isConfigured;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v1 + v2) != 1)
  {
    OUTLINED_FUNCTION_1_178();
    OUTLINED_FUNCTION_43_42();
    OUTLINED_FUNCTION_163_3(v7, v8, v9, v10, v11);
    v12 = 1;
LABEL_5:
    v102 = v12;
LABEL_26:
    OUTLINED_FUNCTION_183_2();
    OUTLINED_FUNCTION_193_0();

    OUTLINED_FUNCTION_13_7();

    return v54(v102);
  }

  v3 = *(v0 + 112);
  if (v3)
  {
    v4 = sub_1E39A4DDC(*(v0 + 112), &selRef_sharedWatchId);
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v13 = sub_1E3C14F9C();
  if (v13)
  {
    sub_1E41FF4B4();

    v14 = sub_1E39CB410();
    v13 = v15;
  }

  else
  {
    v14 = 0;
  }

  v16 = sub_1E3C17278(v4, v6, v14, v13);

  if (v16)
  {
    goto LABEL_25;
  }

  if (v3)
  {
    v17 = [*(v0 + 112) playbackURL];
    if (v17)
    {
      v18 = v17;
      sub_1E41FE3C4();

      v19 = 0;
    }

    else
    {
      v19 = 1;
    }

    __swift_storeEnumTagSinglePayload(*(v0 + 264), v19, 1, *(v0 + 200));
    v24 = OUTLINED_FUNCTION_67_0();
    sub_1E327D738(v24, v25);
  }

  else
  {
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  }

  if (sub_1E3C14F9C() && (sub_1E41FF4B4(), , v26 = sub_1E39CB9F8(), , v26))
  {
    v27 = [v26 playbackURL];

    if (v27)
    {
      sub_1E41FE3C4();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    __swift_storeEnumTagSinglePayload(*(v0 + 248), v28, 1, *(v0 + 200));
    v33 = OUTLINED_FUNCTION_67_0();
    sub_1E327D738(v33, v34);
  }

  else
  {
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  }

  v35 = OUTLINED_FUNCTION_57();
  sub_1E3C172A0(v35, v36, v37, v38, v39, v40, v41, v42, v97, v98, v99, v100, v101, v103, v104, v105, v106, v107, v108, v109);
  v44 = v43;
  OUTLINED_FUNCTION_167_0();
  sub_1E325F7A8(v45, v46);
  OUTLINED_FUNCTION_167_0();
  sub_1E325F7A8(v47, v48);
  if (v44)
  {
LABEL_25:
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_43_42();
    OUTLINED_FUNCTION_163_3(v49, v50, v51, v52, v53);
    v102 = 0;
    goto LABEL_26;
  }

  if (!v3)
  {
    goto LABEL_36;
  }

  v56 = *(v0 + 112);
  sub_1E39A4DDC(v56, &selRef_sharedWatchId);
  if (!v57)
  {
    goto LABEL_36;
  }

  v58 = [v56 sharedWatchUrl];
  if (v58)
  {
    v59 = v58;
    sub_1E41FE3C4();

    v60 = 0;
  }

  else
  {
    v60 = 1;
  }

  v61 = *(v0 + 200);
  __swift_storeEnumTagSinglePayload(*(v0 + 232), v60, 1, v61);
  v62 = OUTLINED_FUNCTION_38_0();
  sub_1E327D738(v62, v63);
  v64 = OUTLINED_FUNCTION_44_5();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v64, v65, v61);
  v67 = *(v0 + 240);
  if (EnumTagSinglePayload == 1)
  {

    sub_1E325F7A8(v67, &unk_1ECF363C0);
LABEL_36:
    v68 = type metadata accessor for GroupWatchActivity();
    sub_1E39D0190();
    v69 = sub_1E39CBAEC();
    goto LABEL_37;
  }

  v90 = *(v0 + 224);
  v91 = *(v0 + 200);
  v92 = *(v0 + 208);
  v93 = OUTLINED_FUNCTION_38_0();
  v94(v93);
  v68 = type metadata accessor for GroupWatchActivity();
  OUTLINED_FUNCTION_146_2();
  v95 = OUTLINED_FUNCTION_124();
  v96(v95);
  sub_1E39CBC64();
  v69 = sub_1E39CBC68();
  (*(v92 + 8))(v90, v91);
LABEL_37:
  *(v0 + 280) = v69;
  v70 = *(v0 + 176);
  v71 = *(v0 + 184);
  v72 = *(v0 + 120);
  v106 = 0xE000000000000000;

  sub_1E42074B4();

  OUTLINED_FUNCTION_41_7();
  type metadata accessor for GroupWatchActivity();
  *(v0 + 288) = v68;
  v108 = v68;
  v105 = v69;
  v73 = sub_1E3294FA4(&v105);
  MEMORY[0x1E69109E0](v73);

  OUTLINED_FUNCTION_0_185();
  OUTLINED_FUNCTION_104_6();
  OUTLINED_FUNCTION_163_3(v74, v75, v76, v77, v78);

  v79 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_modifyingActivityIdentifier;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E379D7E4(v72 + v79, v70, &qword_1ECF29408);
  LODWORD(v71) = __swift_getEnumTagSinglePayload(v70, 1, v71);
  v80 = OUTLINED_FUNCTION_76_0();
  sub_1E325F7A8(v80, v81);
  if (v71 != 1)
  {
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_163_3(0xD00000000000004ALL, v87 | 0x8000000000000000, v88, 0x80000001E4276FE0, v89);

    v12 = 2;
    goto LABEL_5;
  }

  *(v0 + 96) = v69;
  v82 = swift_task_alloc();
  *(v0 + 296) = v82;
  OUTLINED_FUNCTION_2_145();
  v85 = sub_1E32AC410(v83, v84);
  *v82 = v0;
  v82[1] = sub_1E3C1A8B8;
  v86 = *(v0 + 160);

  return MEMORY[0x1EEDC7538](v86, v68, v85);
}

uint64_t sub_1E3C1A8B8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1E3C1A99C()
{
  v1 = v0[35];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[16];
  v5 = v0[17];
  sub_1E42074B4();
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  MEMORY[0x1E69109E0](0xD00000000000002CLL, 0x80000001E42770A0);
  v0[13] = v1;
  sub_1E4207614();
  MEMORY[0x1E69109E0](0x3A746C7573657220, 0xE900000000000020);
  OUTLINED_FUNCTION_76_0();
  sub_1E4207614();
  OUTLINED_FUNCTION_0_185();
  OUTLINED_FUNCTION_104_6();
  OUTLINED_FUNCTION_163_3(v6, v7, v8, v9, v10);

  (*(v5 + 16))(v2, v3, v4);
  v11 = OUTLINED_FUNCTION_27_0();
  v13 = v12(v11);
  v14 = *MEMORY[0x1E696B2A0];
  if (v13 == v14)
  {
    sub_1E3C1ACF0(1);
  }

  else if (v13 != *MEMORY[0x1E696B298] && v13 != *MEMORY[0x1E696B2A8])
  {
    (*(v0[17] + 8))(v0[19], v0[16]);
  }

  v15 = v0[17];
  (*(v15 + 104))(v0[18], v14, v0[16]);
  sub_1E32AC410(&qword_1ECF355F0, MEMORY[0x1E696B2B0]);
  v16 = sub_1E4205E84();
  v17 = *(v15 + 8);
  v18 = OUTLINED_FUNCTION_24_4();
  v17(v18);
  if (v16)
  {
    (v17)(v0[20], v0[16]);
  }

  else
  {
    v19 = v0[21];
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    sub_1E3C156EC(v19);

    v24 = OUTLINED_FUNCTION_24_4();
    v17(v24);
  }

  OUTLINED_FUNCTION_183_2();
  OUTLINED_FUNCTION_193_0();

  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_41_12();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1E3C1ACF0(char a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v5;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = a1;
  v6 = sub_1E4205CB4();
  if (a1)
  {
    sub_1E4205F14();
    OUTLINED_FUNCTION_192_0(*(v2 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_participantsCount), v29, v31, v32, v33, v34, v35, v36, v37);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_90();
    sub_1E32A87C0(v7, v8, v9);

    v10 = v6;
    v11 = sub_1E4205F14();
    v13 = v12;
    OUTLINED_FUNCTION_192_0(*(v2 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_participantsCountMax), v30, v10, v32, v33, v34, v35, v36, v37);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1E32A87C0(&v32, v11, v13);

    v6 = v10;
  }

  else
  {
    sub_1E3C1575C(0);
    *(v2 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_participantsCountMax) = 0;
  }

  sub_1E3280A90(0, &qword_1EE23B398);
  sub_1E3744600(v6);
  v14 = sub_1E37766C4();
  v15 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_metricsDictionary;

  sub_1E3744600(v16);

  v17 = sub_1E4205C44();

  v18 = [v14 isEqualToDictionary_];

  if ((v18 & 1) == 0)
  {
    *&v35 = 0;
    *(&v35 + 1) = 0xE000000000000000;
    sub_1E42074B4();

    OUTLINED_FUNCTION_41_7();
    *&v35 = 0xD00000000000001ELL;
    *(&v35 + 1) = v19;

    v20 = sub_1E4205C74();
    MEMORY[0x1E69109E0](v20);

    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_55_31();
    sub_1E32AAD78(v21, v22, 0xD00000000000001BLL, v23, v24);

    v25 = [objc_opt_self() defaultCenter];
    v26 = @"GroupActivitiesSessionStateDidChangeNotification";
    v27 = sub_1E3744600(v6);
    sub_1E37E7460(v26, 0, v27, v25);

    *(v2 + v15) = v6;
  }
}

void sub_1E3C1B02C()
{
  v1 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_isConfigured;
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_191_1(0xD00000000000002ALL, v2, v3);
    sub_1E3C1B0C4();
  }

  else
  {
    OUTLINED_FUNCTION_1_178();
    OUTLINED_FUNCTION_191_1(0xD000000000000042, v4, v5);
  }
}

void sub_1E3C1B0C4()
{
  sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v2 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_isConfigured;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v0 + v2) == 1)
  {
    if (sub_1E3C14F9C())
    {
      OUTLINED_FUNCTION_95_11();
      sub_1E42074B4();

      OUTLINED_FUNCTION_41_7();
      v19 = 0xD000000000000011;
      v20 = v3;
      sub_1E41FF434();
      OUTLINED_FUNCTION_3_143();
      sub_1E32AC410(v4, v5);
      OUTLINED_FUNCTION_180_2();
      v6 = sub_1E4207944();
      MEMORY[0x1E69109E0](v6);

      v7 = OUTLINED_FUNCTION_124();
      v8(v7);
      OUTLINED_FUNCTION_23();
      MEMORY[0x1E69109E0](0xD000000000000010);
      v18 = type metadata accessor for GroupWatchActivity();
      sub_1E41FF4B4();
      v9 = sub_1E3294FA4(v17);
      MEMORY[0x1E69109E0](v9);

      OUTLINED_FUNCTION_0_185();
      OUTLINED_FUNCTION_82();
      sub_1E32AAD78(v10, v11, v12, 0xEE0029286E6F6973, v13);

      sub_1E41FF474();

      return;
    }

    OUTLINED_FUNCTION_0_185();
    v16 = 0xD00000000000002DLL;
  }

  else
  {
    OUTLINED_FUNCTION_1_178();
    v16 = 0xD00000000000003BLL;
  }

  sub_1E32AAD78(v16, v15 | 0x8000000000000000, 0x736553657661656CLL, 0xEE0029286E6F6973, v14);
}

uint64_t sub_1E3C1B4D0()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_23_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 288) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3C1B5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_60_7();
  OUTLINED_FUNCTION_58_5();
  v13 = v12[37];
  if (v13)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v12[38] = Strong;
    if (Strong)
    {
      v16 = v12[27];
      v15 = v12[28];
      v17 = v12[26];
      v12[11] = 0;
      v12[12] = 0xE000000000000000;
      sub_1E42074B4();

      v12[9] = 0xD000000000000013;
      v12[10] = 0x80000001E4277AD0;
      sub_1E41FF434();
      OUTLINED_FUNCTION_3_143();
      sub_1E32AC410(v18, v19);
      OUTLINED_FUNCTION_180_2();
      v20 = sub_1E4207944();
      MEMORY[0x1E69109E0](v20);

      (*(v16 + 8))(v15, v17);
      OUTLINED_FUNCTION_0_185();
      OUTLINED_FUNCTION_104_6();
      sub_1E32AAD78(v21, v22, v23, v24, v25);

      sub_1E41FFC14();
      sub_1E41FFBC4();
      v26 = sub_1E41FFC14();
      v27 = sub_1E4206BA4();
      if (sub_1E42070B4())
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        v29 = sub_1E41FFBD4();
        _os_signpost_emit_with_name_impl(&dword_1E323F000, v26, v27, v29, "tv.watch-together.content-ready", "", v28, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      v30 = v12[25];
      v31 = v12[22];
      v32 = v12[23];

      OUTLINED_FUNCTION_167_0();
      v33();
      sub_1E41FFC74();
      OUTLINED_FUNCTION_119();
      sub_1E41FFC64();
      (*(v32 + 8))(v30, v31);
      OUTLINED_FUNCTION_162(OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_signpostState);
      if ((sub_1E41FF404() & 1) == 0)
      {
        v34 = [objc_opt_self() standardUserDefaults];
        v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        v36 = sub_1E4205ED4();
        [v34 setObject:v35 forKey:v36];
      }

      v38 = v12[20];
      v37 = v12[21];
      v40 = v12[18];
      v39 = v12[19];
      sub_1E41FF4B4();
      sub_1E379D7E4(v12[15] + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_identifier, v37, &qword_1ECF29408);

      v41 = sub_1E4206474();
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v42, v43, v44, v41);
      OUTLINED_FUNCTION_10_9();
      v45 = swift_allocObject();
      v45[2] = 0;
      v45[3] = 0;
      v45[4] = v40;
      v45[5] = v13;
      sub_1E379D7E4(v38, v39, &unk_1ECF2C400);
      LODWORD(v39) = __swift_getEnumTagSinglePayload(v39, 1, v41);
      v46 = v40;

      v47 = v12[19];
      if (v39 == 1)
      {
        sub_1E325F7A8(v12[19], &unk_1ECF2C400);
      }

      else
      {
        sub_1E4206464();
        OUTLINED_FUNCTION_37_1();
        (*(v57 + 8))(v47, v41);
      }

      v58 = v45[2];
      swift_unknownObjectRetain();

      if (v58)
      {
        swift_getObjectType();
        v59 = sub_1E42063B4();
        v61 = v60;
        swift_unknownObjectRelease();
      }

      else
      {
        v59 = 0;
        v61 = 0;
      }

      sub_1E325F7A8(v12[20], &unk_1ECF2C400);
      OUTLINED_FUNCTION_2_4();
      v62 = swift_allocObject();
      *(v62 + 16) = &unk_1E42C4BD0;
      *(v62 + 24) = v45;
      if (v61 | v59)
      {
        v12[2] = 0;
        v12[3] = 0;
        v12[4] = v59;
        v12[5] = v61;
      }

      swift_task_create();

      swift_unknownObjectWeakInit();
      sub_1E4206434();
      v12[39] = OUTLINED_FUNCTION_104_0();
      OUTLINED_FUNCTION_50();
      sub_1E42063B4();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_68_2();

      return MEMORY[0x1EEE6DFA0](v63, v64, v65);
    }

    (*(v12[33] + 8))(v12[34], v12[32]);
  }

  else
  {
    (*(v12[33] + 8))(v12[34], v12[32]);
  }

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_68_2();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12);
}

uint64_t sub_1E3C1BBB8()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 112) = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
  OUTLINED_FUNCTION_187_1();

  return swift_willThrowTypedImpl();
}

void sub_1E3C1BC30()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 288);

  sub_1E3C1BF28();
  if (v1)
  {
  }

  else
  {
    MEMORY[0x1E69144A0](v0 + 128);
    v2 = OUTLINED_FUNCTION_11_1();

    MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }
}

uint64_t sub_1E3C1BCE0()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 168);

  sub_1E325F7A8(v1, &qword_1ECF29408);
  OUTLINED_FUNCTION_87_8(&qword_1EE28A3A8, &qword_1ECF35648);
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v0 + 280) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_49_35();

  return MEMORY[0x1EEE6D8C8](v4);
}

uint64_t sub_1E3C1BD9C()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1E41FE624();
  v0[4] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_86_0();
  v5 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3C1BE40()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 56) = *(*(v0 + 16) + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_timingTracker);
  sub_1E41FF434();
  v1 = OUTLINED_FUNCTION_52_29();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E3C1BEB0()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_135_2();
  sub_1E3DAA0B4();
  v0 = OUTLINED_FUNCTION_17_10();
  v1(v0);

  OUTLINED_FUNCTION_54();

  return v2();
}

void sub_1E3C1BF28()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v167 = v6;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35650);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v169 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v163 = v11 - v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_6();
  v162 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v16);
  v174 = &v155 - v17;
  OUTLINED_FUNCTION_138();
  v176 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v168 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v160 = v20 - v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  v175 = &v155 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF355E0);
  OUTLINED_FUNCTION_0_10();
  v177 = v25;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44();
  v165 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35658);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_6();
  v172 = (v30 - v31);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v155 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35600);
  v36 = OUTLINED_FUNCTION_17_2(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_4_6();
  v171 = v37 - v38;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_18_6();
  v170 = v40;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_18_6();
  v173 = v42;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_91_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v47 = Strong;
    v164 = v5;
    v48 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_dismissDelayTimer;
    v49 = *(Strong + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_dismissDelayTimer);
    v161 = v1;
    if (v49)
    {
      v159 = v3;
      v50 = v0;
      v51 = v34;
      v52 = v24;
      v53 = Strong;

      OUTLINED_FUNCTION_0_185();
      v47 = v53;
      v24 = v52;
      v34 = v51;
      v0 = v50;
      v3 = v159;
      OUTLINED_FUNCTION_50_30();
      sub_1E32AAD78(v54, v55, v56, v57, v58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
      sub_1E42064D4();

      *&v47[v48] = 0;
    }

    if (sub_1E3C14F9C())
    {
      sub_1E41FF484();

      v59 = 0;
    }

    else
    {
      v59 = 1;
    }

    __swift_storeEnumTagSinglePayload(v0, v59, 1, v24);
    v60 = *MEMORY[0x1E696B2D0];
    v158 = *(v177 + 104);
    v158(v3, v60, v24);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v24);
    v159 = v28;
    v64 = *(v28 + 48);
    v65 = OUTLINED_FUNCTION_35_5();
    sub_1E379D7E4(v65, v66, &qword_1ECF35600);
    sub_1E379D7E4(v3, &v34[v64], &qword_1ECF35600);
    OUTLINED_FUNCTION_44_3(v34);
    if (v72)
    {
      v67 = OUTLINED_FUNCTION_53_29();
      sub_1E325F7A8(v67, v68);
      OUTLINED_FUNCTION_21_1();
      sub_1E325F7A8(v69, v70);
      OUTLINED_FUNCTION_44_3(&v34[v64]);
      if (v72)
      {
        v71 = v176;
        goto LABEL_25;
      }
    }

    else
    {
      sub_1E379D7E4(v34, v2, &qword_1ECF35600);
      OUTLINED_FUNCTION_44_3(&v34[v64]);
      if (!v72)
      {
        v81 = v177;
        v82 = *(v177 + 32);
        v156 = v2;
        v82(v165, &v34[v64], v24);
        OUTLINED_FUNCTION_22_64(&qword_1ECF35630, &qword_1ECF355E0);
        v157 = sub_1E4205E84();
        v83 = *(v81 + 8);
        v84 = OUTLINED_FUNCTION_120();
        v83(v84);
        sub_1E325F7A8(v3, &qword_1ECF35600);
        v85 = OUTLINED_FUNCTION_67_0();
        sub_1E325F7A8(v85, v86);
        (v83)(v156, v24);
        v87 = OUTLINED_FUNCTION_76_0();
        sub_1E325F7A8(v87, v88);
        v71 = v176;
        if (v157)
        {
LABEL_26:
          if (sub_1E3C14F9C())
          {
            sub_1E41FF474();
          }

LABEL_32:
          v108 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_modifyingActivityIdentifier;
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          v109 = &v47[v108];
          v110 = v174;
          sub_1E379D7E4(v109, v174, &qword_1ECF29408);
          v111 = OUTLINED_FUNCTION_44_5();
          OUTLINED_FUNCTION_52(v111, v112, v71);
          if (v72)
          {
            sub_1E325F7A8(v110, &qword_1ECF29408);
          }

          else
          {
            v113 = v168;
            v114 = *(v168 + 32);
            v115 = v175;
            v116 = OUTLINED_FUNCTION_16_0();
            v114(v116);
            v117 = v161;
            (*(v113 + 16))(v161, v115, v71);
            OUTLINED_FUNCTION_114();
            __swift_storeEnumTagSinglePayload(v118, v119, v120, v71);
            v121 = *(v166 + 48);
            v122 = v169;
            OUTLINED_FUNCTION_19_1();
            sub_1E379D7E4(v123, v124, v125);
            OUTLINED_FUNCTION_19_1();
            sub_1E379D7E4(v126, v127, v128);
            OUTLINED_FUNCTION_52(v122, 1, v71);
            if (!v129)
            {
              v130 = v162;
              sub_1E379D7E4(v122, v162, &qword_1ECF29408);
              OUTLINED_FUNCTION_52(v122 + v121, 1, v71);
              if (!v131)
              {
                v147 = v160;
                (v114)(v160, v122 + v121, v71);
                OUTLINED_FUNCTION_3_143();
                sub_1E32AC410(v148, v149);
                v150 = sub_1E4205E84();
                v151 = *(v113 + 8);
                v151(v147, v71);
                sub_1E325F7A8(v161, &qword_1ECF29408);
                v151(v130, v71);
                v152 = OUTLINED_FUNCTION_120();
                sub_1E325F7A8(v152, v153);
                if (v150)
                {
                  v151(v175, v71);
                  goto LABEL_49;
                }

                goto LABEL_44;
              }

              sub_1E325F7A8(v161, &qword_1ECF29408);
              (*(v113 + 8))(v130, v71);
LABEL_43:
              sub_1E325F7A8(v122, &qword_1ECF35650);
LABEL_44:
              v132 = v163;
              v133 = OUTLINED_FUNCTION_10_2();
              __swift_storeEnumTagSinglePayload(v133, v134, v135, v71);
              sub_1E3C156EC(v132);
              (*(v113 + 8))(v175, v71);
              goto LABEL_49;
            }

            sub_1E325F7A8(v117, &qword_1ECF29408);
            OUTLINED_FUNCTION_52(v122 + v121, 1, v71);
            if (!v72)
            {
              goto LABEL_43;
            }

            sub_1E325F7A8(v122, &qword_1ECF29408);
            (*(v113 + 8))(v175, v71);
          }

LABEL_49:
          sub_1E41FF3D4();
          OUTLINED_FUNCTION_119();
          OUTLINED_FUNCTION_50();

          *&v47[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_messenger] = sub_1E41FF3A4();

          sub_1E3C1CBA0();

          sub_1E3C1500C(v154);
          sub_1E3C1ACF0(1);
          sub_1E3C1CD94();
          sub_1E3C1D134();
          sub_1E3C1D930();

          goto LABEL_50;
        }

        goto LABEL_16;
      }

      v73 = OUTLINED_FUNCTION_53_29();
      sub_1E325F7A8(v73, v74);
      OUTLINED_FUNCTION_21_1();
      sub_1E325F7A8(v75, v76);
      v77 = OUTLINED_FUNCTION_120();
      v78(v77);
    }

    sub_1E325F7A8(v34, &qword_1ECF35658);
    v71 = v176;
LABEL_16:
    if (sub_1E3C14F9C())
    {
      v79 = v173;
      sub_1E41FF484();

      v80 = 0;
      v34 = v172;
    }

    else
    {
      v80 = 1;
      v34 = v172;
      v79 = v173;
    }

    __swift_storeEnumTagSinglePayload(v79, v80, 1, v24);
    v158(v170, *MEMORY[0x1E696B2C8], v24);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v89, v90, v91, v24);
    v92 = *(v159 + 48);
    OUTLINED_FUNCTION_19_1();
    sub_1E379D7E4(v93, v94, v95);
    OUTLINED_FUNCTION_19_1();
    sub_1E379D7E4(v96, v97, v98);
    OUTLINED_FUNCTION_44_3(v34);
    if (!v72)
    {
      sub_1E379D7E4(v34, v171, &qword_1ECF35600);
      OUTLINED_FUNCTION_44_3(&v34[v92]);
      if (!v103)
      {
        v136 = v171;
        v137 = v177;
        v138 = &v34[v92];
        v139 = v165;
        (*(v177 + 32))(v165, v138, v24);
        OUTLINED_FUNCTION_22_64(&qword_1ECF35630, &qword_1ECF355E0);
        LODWORD(v176) = sub_1E4205E84();
        v140 = *(v137 + 8);
        v140(v139, v24);
        OUTLINED_FUNCTION_82();
        sub_1E325F7A8(v141, v142);
        OUTLINED_FUNCTION_82();
        sub_1E325F7A8(v143, v144);
        v140(v136, v24);
        v145 = OUTLINED_FUNCTION_76_0();
        sub_1E325F7A8(v145, v146);
        if ((v176 & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_26;
      }

      OUTLINED_FUNCTION_21_1();
      sub_1E325F7A8(v104, v105);
      v106 = OUTLINED_FUNCTION_53_29();
      sub_1E325F7A8(v106, v107);
      (*(v177 + 8))(v171, v24);
LABEL_31:
      sub_1E325F7A8(v34, &qword_1ECF35658);
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_21_1();
    sub_1E325F7A8(v99, v100);
    v101 = OUTLINED_FUNCTION_53_29();
    sub_1E325F7A8(v101, v102);
    OUTLINED_FUNCTION_44_3(&v34[v92]);
    if (!v72)
    {
      goto LABEL_31;
    }

LABEL_25:
    sub_1E325F7A8(v34, &qword_1ECF35600);
    goto LABEL_26;
  }

LABEL_50:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C1CBA0()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_2();
  v5 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_messengerTask;
  if (*&v0[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_messengerTask])
  {

    sub_1E42064D4();
  }

  OUTLINED_FUNCTION_60_22();
  sub_1E42074B4();

  OUTLINED_FUNCTION_41_7();
  v29[4] = 0xD000000000000015;
  v29[5] = v6;
  v7 = sub_1E3C14F9C();
  v8 = v7;
  if (v7)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35720);
  }

  else
  {
    v29[1] = 0;
    v29[2] = 0;
  }

  v29[0] = v8;
  v29[3] = v7;
  v9 = sub_1E3294FA4(v29);
  MEMORY[0x1E69109E0](v9);

  OUTLINED_FUNCTION_0_185();
  OUTLINED_FUNCTION_55_31();
  sub_1E32AAD78(v10, v11, v12, v13, v14);

  v16 = *&v2[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_messenger];
  if (v16)
  {
    sub_1E4206474();
    v17 = OUTLINED_FUNCTION_43_2();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    sub_1E4206434();
    OUTLINED_FUNCTION_31_4();
    swift_retain_n();
    v21 = v2;
    v22 = sub_1E4206424();
    OUTLINED_FUNCTION_10_9();
    v23 = swift_allocObject();
    v24 = MEMORY[0x1E69E85E0];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v16;
    v23[5] = v21;
    v25 = OUTLINED_FUNCTION_23_7();
    sub_1E376FE58(v25, v26, v1, v27, v28);
    OUTLINED_FUNCTION_31_4();

    *&v2[v5] = v22;
  }

  return result;
}

void sub_1E3C1CD94()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF356F8);
  OUTLINED_FUNCTION_0_10();
  v38 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35700);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_26_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35600);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  if (sub_1E3C14F9C())
  {
    v36 = v10;
    v37 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF355E0);
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    v20 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_previousState;
    OUTLINED_FUNCTION_11_3();
    sub_1E3C25C04(v15, v0 + v20);
    swift_endAccess();
    v21 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionStateObserver;
    if (*(v0 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionStateObserver))
    {

      sub_1E42004E4();
    }

    sub_1E41FF494();
    sub_1E3280A90(0, &qword_1EE23B1D0);
    v22 = sub_1E4206A04();
    v39 = v22;
    sub_1E42069A4();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    OUTLINED_FUNCTION_96_11(&qword_1ECF35708, &qword_1ECF356F8);
    sub_1E3746800();
    sub_1E42007D4();
    sub_1E325F7A8(v2, &unk_1ECF2D2B0);

    v27 = OUTLINED_FUNCTION_168();
    v28(v27);
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    OUTLINED_FUNCTION_45_2();
    OUTLINED_FUNCTION_13_106(&qword_1ECF35710, &qword_1ECF35700);
    v29 = v37;
    v30 = sub_1E4200844();

    (*(v36 + 8))(v1, v29);
    *(v3 + v21) = v30;
  }

  else
  {
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_43_42();
    OUTLINED_FUNCTION_160_2(v31, v32, v33, v34, v35);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C1D134()
{
  OUTLINED_FUNCTION_31_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v49 = v5;
  OUTLINED_FUNCTION_138();
  v6 = sub_1E42069E4();
  OUTLINED_FUNCTION_0_10();
  v56 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v55 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35690);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35698);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_21_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF356A0);
  OUTLINED_FUNCTION_0_10();
  v47 = v16;
  v48 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_31_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF356A8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_20_1();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF356B0);
  OUTLINED_FUNCTION_0_10();
  v51 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  v50 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF356B8);
  OUTLINED_FUNCTION_0_10();
  v53 = v25;
  v54 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44();
  v52 = v27;
  if (sub_1E3C14F9C())
  {
    *(v0 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_participantsCountMax) = 0;
    sub_1E3C1575C(0);
    v46 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionActivityParticipantsObserver;
    if (*(v0 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionActivityParticipantsObserver))
    {

      sub_1E42004E4();
    }

    sub_1E41FF414();
    OUTLINED_FUNCTION_11_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF355F8);
    sub_1E4200644();
    swift_endAccess();
    sub_1E32752B0(&qword_1ECF356C0, &qword_1ECF35698);
    sub_1E32752B0(&qword_1ECF356C8, &qword_1ECF35690);
    OUTLINED_FUNCTION_53();
    sub_1E4200714();
    v28 = OUTLINED_FUNCTION_38_0();
    v29(v28);
    (*(v14 + 8))(v2, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF356D0);
    sub_1E32752B0(&qword_1ECF356D8, &qword_1ECF356A0);
    OUTLINED_FUNCTION_19_1();
    sub_1E4200744();
    (*(v48 + 8))(v1, v47);
    sub_1E42069C4();
    sub_1E3280A90(0, &qword_1EE23B1D0);
    v30 = sub_1E4206A04();
    v31 = sub_1E42069A4();
    v32 = OUTLINED_FUNCTION_10_2();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
    sub_1E32752B0(&qword_1ECF356E0, &qword_1ECF356A8);
    sub_1E3746800();
    sub_1E42007F4();
    sub_1E325F7A8(v49, &unk_1ECF2D2B0);

    (*(v56 + 8))(v55, v6);
    v35 = OUTLINED_FUNCTION_8_6();
    v36(v35);
    v57 = sub_1E4206A04();
    v37 = OUTLINED_FUNCTION_10_2();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v31);
    sub_1E32752B0(&qword_1ECF356E8, &qword_1ECF356B0);
    sub_1E42007D4();
    sub_1E325F7A8(v49, &unk_1ECF2D2B0);

    (*(v51 + 8))(v50, v20);
    OUTLINED_FUNCTION_4_0();
    v40 = swift_allocObject();
    OUTLINED_FUNCTION_105_2(v40);
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_2_4();
    v41 = swift_allocObject();
    *(v41 + 16) = sub_1E3C26260;
    *(v41 + 24) = v50;
    OUTLINED_FUNCTION_13_106(&qword_1ECF356F0, &qword_1ECF356B8);
    sub_1E4200844();

    (*(v53 + 8))(v52, v54);
    OUTLINED_FUNCTION_162(v46);
  }

  else
  {
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_43_42();
    sub_1E32AAD78(v42, v43, 0xD00000000000001ELL, v44, v45);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C1D930()
{
  OUTLINED_FUNCTION_31_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35660);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35668);
  OUTLINED_FUNCTION_0_10();
  v30 = v10;
  v31 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35670);
  OUTLINED_FUNCTION_0_10();
  v32 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8_4();
  if (sub_1E3C14F9C())
  {
    v29[0] = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionActivityObserver;
    v29[1] = v14;
    if (*(v0 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionActivityObserver))
    {

      sub_1E42004E4();
    }

    sub_1E41FF4D4();
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    OUTLINED_FUNCTION_45_2();
    OUTLINED_FUNCTION_96_11(&qword_1ECF35678, &qword_1ECF35660);
    sub_1E4200734();

    (*(v7 + 8))(v2, v5);
    sub_1E3280A90(0, &qword_1EE23B1D0);
    v17 = sub_1E4206A04();
    v33 = v17;
    sub_1E42069A4();
    OUTLINED_FUNCTION_93_4();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    sub_1E32752B0(&qword_1ECF35680, &qword_1ECF35668);
    sub_1E3746800();
    v22 = v31;
    sub_1E42007D4();
    sub_1E325F7A8(v1, &unk_1ECF2D2B0);

    (*(v30 + 8))(v13, v22);
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    OUTLINED_FUNCTION_45_2();
    OUTLINED_FUNCTION_13_106(&qword_1ECF35688, &qword_1ECF35670);
    sub_1E4200844();

    v23 = OUTLINED_FUNCTION_53();
    v24(v23);
    OUTLINED_FUNCTION_162(v29[0]);
  }

  else
  {
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_43_42();
    sub_1E32AAD78(v25, v26, 0xD000000000000018, v27, v28);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C1DD44()
{
  OUTLINED_FUNCTION_24();
  v0[15] = v1;
  v0[16] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35728);
  OUTLINED_FUNCTION_17_2(v3);
  v0[17] = OUTLINED_FUNCTION_86_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35730);
  v0[18] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v0[19] = v5;
  v0[20] = OUTLINED_FUNCTION_86_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35738);
  v0[21] = v6;
  OUTLINED_FUNCTION_8_0(v6);
  v0[22] = v7;
  v0[23] = OUTLINED_FUNCTION_86_0();
  v0[24] = sub_1E4206434();
  v0[25] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v0[26] = v8;
  v0[27] = v9;
  v10 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1E3C1DEAC()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  sub_1E41FF3C4();
  sub_1E41FF3B4();
  v1 = OUTLINED_FUNCTION_35_5();
  v2(v1);
  v0[28] = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_endSessionReason;
  v0[29] = sub_1E4206424();
  OUTLINED_FUNCTION_93_9(&qword_1ECF35740, &qword_1ECF35738);
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  v0[30] = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_48_31(v3);
  OUTLINED_FUNCTION_62_1();

  return MEMORY[0x1EEE6D8C8](v5);
}

uint64_t sub_1E3C1DF98()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *v1;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 248) = v0;

  v5 = *(v2 + 232);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_1E42063B4();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v10 = sub_1E3C1E4D8;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_1E42063B4();
      v8 = v9;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v10 = sub_1E3C1E118;
  }

  return MEMORY[0x1EEE6DFA0](v10, v6, v8);
}

uint64_t sub_1E3C1E118()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1E3C1E178, v1, v2);
}

uint64_t sub_1E3C1E178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_60_7();
  OUTLINED_FUNCTION_58_5();
  v13 = v12[17];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35748);
  v15 = OUTLINED_FUNCTION_44_5();
  OUTLINED_FUNCTION_52(v15, v16, v14);
  if (v17)
  {
    v18 = OUTLINED_FUNCTION_168_4();
    v19(v18);

LABEL_6:

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_68_2();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }

  v20 = *(v14 + 48);
  v21 = sub_1E4206504();
  if (v21)
  {
    v22 = OUTLINED_FUNCTION_168_4();
    v23(v22);
    v24 = OUTLINED_FUNCTION_124();
    sub_1E38DCCB0(v24, v25);

    sub_1E41FF384();
    OUTLINED_FUNCTION_10();
    (*(v26 + 8))(v13 + v20);
    goto LABEL_6;
  }

  v36 = v12[31];
  sub_1E41FDE24();
  OUTLINED_FUNCTION_119();
  sub_1E41FDE14();
  sub_1E3C265E8();
  sub_1E41FDE04();
  if (v36)
  {

    v12[7] = 0;
    v12[8] = 0xE000000000000000;
    sub_1E42074B4();

    v12[5] = 0xD000000000000019;
    v12[6] = 0x80000001E4278170;
    swift_getErrorValue();
    v37 = sub_1E4207AB4();
    MEMORY[0x1E69109E0](v37);

    v38 = v12[6];
    OUTLINED_FUNCTION_1_178();
    sub_1E32AAD78(v39, v38, 0xD000000000000019, 0x80000001E4278150, v40);
    v41 = OUTLINED_FUNCTION_124();
    sub_1E38DCCB0(v41, v42);
  }

  else
  {
    v43 = v12[28];
    v44 = v12[16];

    v45 = v44 + v43;
    v12[11] = 0;
    v12[12] = 0xE000000000000000;
    sub_1E42074B4();

    v12[9] = 0xD000000000000011;
    v12[10] = 0x80000001E4278190;
    v46 = sub_1E4205F84();
    MEMORY[0x1E69109E0](v46);

    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_104_6();
    sub_1E32AAD78(v47, v48, 0xD000000000000019, v49, v50);

    v51 = OUTLINED_FUNCTION_124();
    sub_1E38DCCB0(v51, v52);
    *v45 = 2;
    *(v45 + 8) = 0;
  }

  sub_1E41FF384();
  OUTLINED_FUNCTION_10();
  (*(v53 + 8))(v13 + v20);
  v12[29] = sub_1E4206424();
  OUTLINED_FUNCTION_93_9(&qword_1ECF35740, &qword_1ECF35738);
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  v12[30] = v54;
  *v54 = v55;
  OUTLINED_FUNCTION_48_31();
  OUTLINED_FUNCTION_68_2();

  return MEMORY[0x1EEE6D8C8](v56);
}

uint64_t sub_1E3C1E4D8()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 104) = *(v0 + 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
  OUTLINED_FUNCTION_187_1();

  return swift_willThrowTypedImpl();
}

void sub_1E3C1E550()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35638);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_2();
  v5 = objc_opt_self();
  OUTLINED_FUNCTION_13_8();
  v6 = sub_1E4205ED4();
  OUTLINED_FUNCTION_90();
  v7();
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v0, v1);
  aBlock[4] = sub_1E3C25D78;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E39FE2F0;
  aBlock[3] = &block_descriptor_64_0;
  v10 = _Block_copy(aBlock);

  [v5 playableForAdamID:v6 completion:v10];
  _Block_release(v10);
}

void sub_1E3C1E710()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v73 = v4;
  v5 = sub_1E41FE004();
  OUTLINED_FUNCTION_0_10();
  v69 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v68 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v71 = v12;
  OUTLINED_FUNCTION_138();
  v13 = sub_1E41FDF74();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_50_9();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v67 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8);
  OUTLINED_FUNCTION_17_2(v20);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_26_2();
  sub_1E41FDFB4();
  v22 = OUTLINED_FUNCTION_125_5();
  if (__swift_getEnumTagSinglePayload(v22, v23, v5) || (v25 = sub_1E41FDF84()) == 0)
  {

    v24 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v24 = v25;
  }

  OUTLINED_FUNCTION_60_22();
  sub_1E42074B4();

  OUTLINED_FUNCTION_41_7();
  v74 = 0xD000000000000018;
  v75 = v26;
  v27 = sub_1E41FE414();
  OUTLINED_FUNCTION_4_150();
  v30 = sub_1E32AC410(v28, v29);
  v72 = v3;
  v67[1] = v30;
  v31 = sub_1E4207944();
  MEMORY[0x1E69109E0](v31);

  OUTLINED_FUNCTION_0_185();
  v70 = v32;
  OUTLINED_FUNCTION_55_31();
  sub_1E32AAD78(v33, v34, 0xD000000000000014, v35, v36);

  v37 = objc_opt_self();
  sub_1E39A4DDC(v37, &selRef_storefrontId);
  if (v38)
  {
    sub_1E41FDF44();

    (*(v15 + 16))(v0, v19, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1E39E8924(0, *(v24 + 16) + 1, 1, v24);
    }

    v40 = *(v24 + 16);
    v39 = *(v24 + 24);
    if (v40 >= v39 >> 1)
    {
      v24 = sub_1E39E8924(v39 > 1, v40 + 1, 1, v24);
    }

    (*(v15 + 8))(v19, v13);
    *(v24 + 16) = v40 + 1;
    (*(v15 + 32))(v24 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v40, v0, v13);
  }

  v41 = v71;
  v42 = OUTLINED_FUNCTION_125_5();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, v43, v5);
  v45 = v72;
  if (EnumTagSinglePayload)
  {
  }

  else
  {
    sub_1E41FDF94();
  }

  v46 = OUTLINED_FUNCTION_125_5();
  if (__swift_getEnumTagSinglePayload(v46, v47, v5))
  {
    v48 = OUTLINED_FUNCTION_43_2();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v27);
LABEL_18:
    sub_1E325F7A8(v41, &unk_1ECF363C0);
    OUTLINED_FUNCTION_1_178();
    sub_1E32AAD78(0xD000000000000039, v57 | 0x8000000000000000, 0xD000000000000014, v70 | 0x8000000000000000, v58);
    OUTLINED_FUNCTION_37_1();
    (*(v59 + 16))(v73, v45, v27);
    goto LABEL_19;
  }

  v51 = v68;
  v52 = v69;
  OUTLINED_FUNCTION_90();
  v53();
  sub_1E41FDFC4();
  (*(v52 + 8))(v51, v5);
  v54 = OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_52(v54, v55, v27);
  if (v56)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_37_1();
  v60 = OUTLINED_FUNCTION_27_0();
  v61(v60);
  OUTLINED_FUNCTION_60_22();
  sub_1E42074B4();

  OUTLINED_FUNCTION_41_7();
  v74 = 0xD000000000000024;
  v75 = v62;
  v63 = sub_1E4207944();
  MEMORY[0x1E69109E0](v63);

  v64 = v75;
  OUTLINED_FUNCTION_0_185();
  sub_1E32AAD78(v65, v64, 0xD000000000000014, v70 | 0x8000000000000000, v66);

LABEL_19:
  sub_1E325F7A8(v1, &qword_1ECF304A8);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C1ECB0()
{
  OUTLINED_FUNCTION_24();
  *(v1 + 160) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v0;
  v4 = sub_1E41FE414();
  *(v1 + 48) = v4;
  OUTLINED_FUNCTION_8_0(v4);
  *(v1 + 56) = v5;
  *(v1 + 64) = OUTLINED_FUNCTION_86_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v6);
  *(v1 + 72) = OUTLINED_FUNCTION_107_1();
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  sub_1E4206434();
  *(v1 + 104) = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  *(v1 + 112) = v7;
  *(v1 + 120) = v8;
  v9 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3C1EDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_60_7();
  OUTLINED_FUNCTION_58_5();
  v13 = *(v12 + 32);
  if (v13 >> 62)
  {
    if (v13 >> 62 == 1)
    {

      sub_1E3C21118(v13 & 0x3FFFFFFFFFFFFFFFLL);
LABEL_22:

      OUTLINED_FUNCTION_13_7();
      OUTLINED_FUNCTION_68_2();

      return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12);
    }

LABEL_21:
    sub_1E3C1FEF4();
    goto LABEL_22;
  }

  v14 = *(v12 + 48);
  sub_1E39CB5B0();
  v15 = OUTLINED_FUNCTION_27_0();
  sub_1E379D7E4(v15, v16, v17);
  v18 = OUTLINED_FUNCTION_31_5();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, v19, v14);
  v21 = *(v12 + 96);
  if (EnumTagSinglePayload == 1)
  {
    sub_1E325F7A8(*(v12 + 96), &unk_1ECF363C0);
    v22 = 0;
  }

  else
  {
    v23 = *(v12 + 40);
    (*(*(v12 + 56) + 32))(*(v12 + 64), *(v12 + 88), *(v12 + 48));
    v24 = v23;
    OUTLINED_FUNCTION_112_8();
    sub_1E3C1F644();
    v22 = v25;
    v26 = OUTLINED_FUNCTION_24_4();
    v27(v26);
    sub_1E325F7A8(v21, &unk_1ECF363C0);
  }

  *(v12 + 128) = v22;
  v28 = sub_1E3C14F9C();
  if (v28)
  {
    v29 = *(v12 + 48);
    sub_1E41FF4B4();

    sub_1E39CB5B0();

    v30 = OUTLINED_FUNCTION_24_4();
    sub_1E379D7E4(v30, v31, v32);
    v33 = OUTLINED_FUNCTION_245();
    v35 = __swift_getEnumTagSinglePayload(v33, v34, v29);
    v36 = *(v12 + 80);
    if (v35 == 1)
    {
      sub_1E325F7A8(*(v12 + 80), &unk_1ECF363C0);
      v28 = 0;
    }

    else
    {
      v37 = *(v12 + 64);
      v38 = *(v12 + 48);
      v39 = *(v12 + 56);
      v40 = *(v12 + 40);
      (*(v39 + 32))(v37, *(v12 + 72), v38);
      v41 = v40;
      OUTLINED_FUNCTION_112_8();
      sub_1E3C1F644();
      v28 = v42;
      (*(v39 + 8))(v37, v38);
      sub_1E325F7A8(v36, &unk_1ECF363C0);
    }
  }

  *(v12 + 136) = v28;
  if (*(v12 + 160) == 1)
  {
    v43 = swift_task_alloc();
    *(v12 + 144) = v43;
    *v43 = v12;
    OUTLINED_FUNCTION_56_1(v43);
    OUTLINED_FUNCTION_13_8();
    OUTLINED_FUNCTION_68_2();

    return sub_1E3C1FC74(v44, v45, v46, v47);
  }

  else
  {

    v50 = sub_1E3C14F9C();
    if (v50)
    {
      sub_1E41FF4B4();

      v50 = *(v12 + 24);
    }

    sub_1E3C1F9F4(*(v12 + 32), v50);
    OUTLINED_FUNCTION_12_1();

    if (v22)
    {

      OUTLINED_FUNCTION_0_185();
      OUTLINED_FUNCTION_43_42();
      sub_1E32AAD78(v51, v52, 0xD00000000000002DLL, v53, v54);
      goto LABEL_21;
    }

    v63 = swift_task_alloc();
    *(v12 + 152) = v63;
    *v63 = v12;
    OUTLINED_FUNCTION_62_20(v63);
    OUTLINED_FUNCTION_68_2();

    return sub_1E3C20378();
  }
}

uint64_t sub_1E3C1F1EC()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_37_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_5();
  *v5 = v4;
  *(v7 + 161) = v6;

  OUTLINED_FUNCTION_66_1();
  v9 = *(v8 + 120);
  v10 = *(v0 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1E3C1F338, v10, v9);
}

uint64_t sub_1E3C1F338()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *(v1 + 161);
  v3 = sub_1E3C14F9C();
  if (v3)
  {
    sub_1E41FF4B4();

    v3 = *(v1 + 24);
  }

  sub_1E3C1F9F4(*(v1 + 32), v3);
  OUTLINED_FUNCTION_12_1();

  if (v0 & v2)
  {

    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_43_42();
    sub_1E32AAD78(v4, v5, 0xD00000000000002DLL, v6, v7);
    sub_1E3C1FEF4();

    OUTLINED_FUNCTION_13_7();

    return v8(1);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v1 + 152) = v10;
    *v10 = v1;
    OUTLINED_FUNCTION_62_20(v10);

    return sub_1E3C20378();
  }
}

uint64_t sub_1E3C1F4A0()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_37_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_5();
  *v5 = v4;
  *(v7 + 162) = v6;

  OUTLINED_FUNCTION_66_1();
  v9 = *(v8 + 120);
  v10 = *(v0 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1E3C1F5AC, v10, v9);
}

uint64_t sub_1E3C1F5AC()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();

  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_62_1();

  return v2(v0, v1, v2, v3, v4, v5, v6, v7);
}

void sub_1E3C1F644()
{
  OUTLINED_FUNCTION_31_1();
  v40 = v2;
  v4 = v3;
  OUTLINED_FUNCTION_106();
  v41 = sub_1E41FDF74();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35200);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = OUTLINED_FUNCTION_120();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v15);
  v17 = OUTLINED_FUNCTION_17_2(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_78();
  sub_1E41FDFB4();
  sub_1E379D7E4(v0, v1, &qword_1ECF304A8);
  v19 = sub_1E41FE004();
  OUTLINED_FUNCTION_44_3(v1);
  if (v31)
  {
    OUTLINED_FUNCTION_21_1();
    sub_1E325F7A8(v20, v21);
    v22 = OUTLINED_FUNCTION_53_29();
  }

  else
  {
    v24 = sub_1E41FDF84();
    OUTLINED_FUNCTION_37_1();
    (*(v25 + 8))(v1, v19);
    if (v24)
    {
      v38 = v0;
      v39 = v14;
      v26 = 0;
      v27 = *(v24 + 16);
      v28 = (v6 + 8);
      v29 = v41;
      while (1)
      {
        if (v27 == v26)
        {

          v33 = 1;
          v34 = v39;
          goto LABEL_19;
        }

        if (v26 >= *(v24 + 16))
        {
          __break(1u);
          return;
        }

        (*(v6 + 16))(v10, v24 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v26, v29);
        v31 = sub_1E41FDF54() == v4 && v30 == v40;
        if (v31)
        {

          goto LABEL_18;
        }

        v32 = sub_1E42079A4();

        if (v32)
        {
          break;
        }

        v29 = v41;
        (*v28)(v10, v41);
        ++v26;
      }

      v29 = v41;
LABEL_18:
      v34 = v39;
      (*(v6 + 32))(v39, v10, v29);
      v33 = 0;
LABEL_19:
      v35 = v38;
      __swift_storeEnumTagSinglePayload(v34, v33, 1, v29);
      v36 = OUTLINED_FUNCTION_44_5();
      OUTLINED_FUNCTION_52(v36, v37, v29);
      if (!v31)
      {
        sub_1E41FDF64();
        sub_1E325F7A8(v35, &qword_1ECF304A8);
        (*v28)(v34, v29);
        goto LABEL_23;
      }

      sub_1E325F7A8(v35, &qword_1ECF304A8);
      v23 = &qword_1ECF35200;
      v22 = v34;
    }

    else
    {
      v23 = &qword_1ECF304A8;
      v22 = v0;
    }
  }

  sub_1E325F7A8(v22, v23);
LABEL_23:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C1FC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3C1FC8C()
{
  OUTLINED_FUNCTION_134();
  v1 = v0[3];
  if (v1 && (v2 = v0[5]) != 0)
  {
    v3 = v0[4];
    v4 = v0[2];
    v5 = swift_task_alloc();
    v0[6] = v5;
    v5[2] = v4;
    v5[3] = v1;
    v5[4] = v3;
    v5[5] = v2;
    swift_task_alloc();
    OUTLINED_FUNCTION_33_3();
    v0[7] = v6;
    *v6 = v7;
    v6[1] = sub_1E3C1FDD0;
    OUTLINED_FUNCTION_169();

    return MEMORY[0x1EEE6DDE0](v8, v9, v10, 0xD000000000000035, v11, v12, v5, v13);
  }

  else
  {
    OUTLINED_FUNCTION_13_7();

    return v14(0);
  }
}

uint64_t sub_1E3C1FDD0()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1E3C1FEF4()
{
  OUTLINED_FUNCTION_31_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8_4();
  v5 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v53 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF355E0);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_78();
  v19 = v0;
  v20 = sub_1E3C14F9C();
  if (v20)
  {
    v21 = v20;
    sub_1E41FF484();
    (*(v13 + 104))(v17, *MEMORY[0x1E696B2C8], v11);
    OUTLINED_FUNCTION_22_64(&qword_1ECF35630, &qword_1ECF355E0);
    OUTLINED_FUNCTION_93_4();
    v22 = sub_1E4205E84();
    v23 = *(v13 + 8);
    v23(v17, v11);
    v23(v1, v11);
    if (v22)
    {
      OUTLINED_FUNCTION_0_185();
      OUTLINED_FUNCTION_108_7(0xD000000000000030, v24, v25);
    }

    else
    {
      v28 = *&v19[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sharedPlayer];
      if (v28 && (v29 = [v28 avPlayer]) != 0)
      {
        v30 = v29;
        OUTLINED_FUNCTION_0_185();
        OUTLINED_FUNCTION_124_3(0xD000000000000037, v31, v32);
        v33 = [v30 playbackCoordinator];
        sub_1E4206C74();
      }

      else
      {
        OUTLINED_FUNCTION_0_185();
        OUTLINED_FUNCTION_124_3(0xD00000000000002ELL, v34, v35);
      }

      sub_1E3C14E28();
      v54[0] = 0;
      v54[1] = 0xE000000000000000;
      sub_1E42074B4();

      OUTLINED_FUNCTION_41_7();
      v54[4] = 0xD000000000000011;
      v55 = v36;
      sub_1E41FF434();
      OUTLINED_FUNCTION_3_143();
      sub_1E32AC410(v37, v38);
      v39 = sub_1E4207944();
      MEMORY[0x1E69109E0](v39);

      (*(v53 + 8))(v10, v5);
      OUTLINED_FUNCTION_23();
      MEMORY[0x1E69109E0](0xD000000000000010);
      v54[3] = type metadata accessor for GroupWatchActivity();
      sub_1E41FF4B4();
      v40 = sub_1E3294FA4(v54);
      MEMORY[0x1E69109E0](v40);

      v41 = v55;
      OUTLINED_FUNCTION_0_185();
      sub_1E32AAD78(v42, v41, v19, 0xED000029286E6F69, v43);

      sub_1E4206474();
      v44 = OUTLINED_FUNCTION_43_2();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
      OUTLINED_FUNCTION_10_9();
      v48 = swift_allocObject();
      v48[2] = 0;
      v48[3] = 0;
      v48[4] = v19;
      v48[5] = v21;
      v49 = v19;

      v50 = OUTLINED_FUNCTION_23_7();
      sub_1E376FE58(v50, v51, v2, v52, v48);

      sub_1E41FF454();
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_108_7(0xD000000000000029, v26, v27);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C20378()
{
  OUTLINED_FUNCTION_24();
  v1[16] = v2;
  v1[17] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408);
  OUTLINED_FUNCTION_17_2(v3);
  v1[18] = OUTLINED_FUNCTION_86_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35600);
  OUTLINED_FUNCTION_17_2(v4);
  v1[19] = OUTLINED_FUNCTION_86_0();
  v5 = sub_1E41FF534();
  v1[20] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v1[21] = v6;
  v1[22] = OUTLINED_FUNCTION_86_0();
  sub_1E4206434();
  v1[23] = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v1[24] = v7;
  v1[25] = v8;
  v9 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3C2049C()
{
  OUTLINED_FUNCTION_58_5();
  v1 = v0[16];
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  MEMORY[0x1E69109E0](0x6974617669746341, 0xEB0000000020676ELL);
  v0[12] = v1;
  v0[26] = type metadata accessor for GroupWatchActivity();
  OUTLINED_FUNCTION_32_0();
  sub_1E4207614();
  OUTLINED_FUNCTION_0_185();
  OUTLINED_FUNCTION_27_51();
  sub_1E32AAD78(v2, v3, v4, v5, v6);

  sub_1E41FDE54();
  OUTLINED_FUNCTION_119();
  sub_1E41FDE44();
  sub_1E3C25BB0();
  v0[27] = sub_1E41FDE34();
  v0[28] = v7;
  v29 = v0[17];

  v30 = *(v29 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_messenger);
  v0[29] = v30;
  if (v30)
  {
    (*(v0[21] + 104))(v0[22], *MEMORY[0x1E696B350], v0[20]);

    v31 = swift_task_alloc();
    v0[30] = v31;
    *v31 = v0;
    v31[1] = sub_1E3C20880;
    v32 = OUTLINED_FUNCTION_76_0();

    return MEMORY[0x1EEDC7408](v32);
  }

  else
  {
    v33 = OUTLINED_FUNCTION_76_0();
    sub_1E38DCCB0(v33, v34);
    v8 = v0[17];
    if (*(v8 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionStateObserver))
    {

      sub_1E42004E4();

      v8 = v0[17];
    }

    if (*(v8 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionActivityObserver))
    {

      sub_1E42004E4();

      v8 = v0[17];
    }

    if (*(v8 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionActivityParticipantsObserver))
    {

      sub_1E42004E4();

      v8 = v0[17];
    }

    v10 = v0[18];
    v9 = v0[19];
    v11 = v0[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF355E0);
    v12 = OUTLINED_FUNCTION_28_10();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    v16 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_previousState;
    OUTLINED_FUNCTION_118_5();
    sub_1E3C25C04(v9, v8 + v16);
    swift_endAccess();
    sub_1E3C14E28();
    sub_1E379D7E4(v11 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_identifier, v10, &qword_1ECF29408);
    sub_1E3C156EC(v10);
    v0[14] = v11;
    v17 = swift_task_alloc();
    v0[32] = v17;
    OUTLINED_FUNCTION_2_145();
    sub_1E32AC410(v18, v19);
    OUTLINED_FUNCTION_139_5();
    *v17 = v20;
    v21 = OUTLINED_FUNCTION_14_109();

    return MEMORY[0x1EEDC7540](v21, v22, v23, v24, v25, v26, v27, v28);
  }
}

uint64_t sub_1E3C20880()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *v1;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 248) = v0;

  (*(v2[21] + 8))(v2[22], v2[20]);

  v5 = v2[25];
  v6 = v2[24];
  if (v0)
  {
    v7 = sub_1E3C20D8C;
  }

  else
  {
    v7 = sub_1E3C20A18;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E3C20A18()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  sub_1E38DCCB0(v0[27], v0[28]);
  v1 = v0[17];
  if (*(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionStateObserver))
  {

    sub_1E42004E4();

    v1 = v0[17];
  }

  if (*(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionActivityObserver))
  {

    sub_1E42004E4();

    v1 = v0[17];
  }

  if (*(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionActivityParticipantsObserver))
  {

    sub_1E42004E4();

    v1 = v0[17];
  }

  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF355E0);
  v5 = OUTLINED_FUNCTION_28_10();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_previousState;
  OUTLINED_FUNCTION_118_5();
  sub_1E3C25C04(v2, v1 + v9);
  swift_endAccess();
  sub_1E3C14E28();
  sub_1E379D7E4(v4 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_identifier, v3, &qword_1ECF29408);
  sub_1E3C156EC(v3);
  v0[14] = v4;
  v10 = swift_task_alloc();
  v0[32] = v10;
  OUTLINED_FUNCTION_2_145();
  sub_1E32AC410(v11, v12);
  OUTLINED_FUNCTION_139_5();
  *v10 = v13;
  OUTLINED_FUNCTION_14_109();
  OUTLINED_FUNCTION_62_1();

  return MEMORY[0x1EEDC7540](v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1E3C20BC8()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_37_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v5 + 264) = v0;

  if (v0)
  {
    v9 = *(v5 + 192);
    v10 = *(v5 + 200);
    v11 = sub_1E3C20FC8;
  }

  else
  {
    *(v5 + 272) = v3 & 1;
    v9 = *(v5 + 192);
    v10 = *(v5 + 200);
    v11 = sub_1E3C20CDC;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1E3C20CDC()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 272);

  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 144);
    sub_1E41FE624();
    v3 = OUTLINED_FUNCTION_43_2();
    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
    sub_1E3C156EC(v2);
    sub_1E3C14E28();
  }

  OUTLINED_FUNCTION_13_7();

  return v7(v1);
}

uint64_t sub_1E3C20D8C()
{
  sub_1E38DCCB0(v0[27], v0[28]);
  v1 = v0[31];
  OUTLINED_FUNCTION_38_1();
  sub_1E42074B4();

  OUTLINED_FUNCTION_101_7();
  swift_getErrorValue();
  v2 = sub_1E4207AB4();
  MEMORY[0x1E69109E0](v2);

  OUTLINED_FUNCTION_1_178();
  OUTLINED_FUNCTION_27_51();
  sub_1E32AAD78(v3, v4, v5, v6, v7);

  v8 = v0[17];
  if (*(v8 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionStateObserver))
  {

    sub_1E42004E4();

    v8 = v0[17];
  }

  if (*(v8 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionActivityObserver))
  {

    sub_1E42004E4();

    v8 = v0[17];
  }

  if (*(v8 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionActivityParticipantsObserver))
  {

    sub_1E42004E4();

    v8 = v0[17];
  }

  v10 = v0[18];
  v9 = v0[19];
  v11 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF355E0);
  v12 = OUTLINED_FUNCTION_28_10();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_previousState;
  OUTLINED_FUNCTION_118_5();
  sub_1E3C25C04(v9, v8 + v16);
  swift_endAccess();
  sub_1E3C14E28();
  sub_1E379D7E4(v11 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_identifier, v10, &qword_1ECF29408);
  sub_1E3C156EC(v10);
  v0[14] = v11;
  v17 = swift_task_alloc();
  v0[32] = v17;
  OUTLINED_FUNCTION_2_145();
  sub_1E32AC410(v18, v19);
  OUTLINED_FUNCTION_139_5();
  *v17 = v20;
  v21 = OUTLINED_FUNCTION_14_109();

  return MEMORY[0x1EEDC7540](v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t sub_1E3C20FC8()
{
  OUTLINED_FUNCTION_134();
  v2 = v1[33];

  OUTLINED_FUNCTION_39_1();
  sub_1E42074B4();
  OUTLINED_FUNCTION_181();
  *(v0 + 80) = v3;
  v1[11] = v4;
  OUTLINED_FUNCTION_82_10();
  MEMORY[0x1E69109E0](v5 + 9, v6 | 0x8000000000000000);
  v1[15] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
  OUTLINED_FUNCTION_67_0();
  sub_1E4207614();
  OUTLINED_FUNCTION_1_178();
  OUTLINED_FUNCTION_27_51();
  sub_1E32AAD78(v7, v8, v9, v10, v11);

  v12 = v1[18];
  sub_1E41FE624();
  v13 = OUTLINED_FUNCTION_28_10();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  sub_1E3C156EC(v12);
  sub_1E3C14E28();

  OUTLINED_FUNCTION_13_7();

  return v17(0);
}

uint64_t sub_1E3C21118(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_60_22();
  sub_1E42074B4();
  v14 = v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1E69109E0](0xD000000000000013);
  if (sub_1E3C14F9C())
  {
    OUTLINED_FUNCTION_106();
    *(&v13 + 1) = type metadata accessor for GroupWatchActivity();
    sub_1E41FF4B4();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v5 = sub_1E3294FA4(&v12);
  MEMORY[0x1E69109E0](v5);

  MEMORY[0x1E69109E0](0x206874697720, 0xE600000000000000);
  *&v12 = a1;
  type metadata accessor for GroupWatchActivity();
  sub_1E4207614();
  OUTLINED_FUNCTION_0_185();
  OUTLINED_FUNCTION_55_31();
  sub_1E32AAD78(v6, v7, v8, v9, v10);

  sub_1E379D7E4(a1 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_identifier, v1, &qword_1ECF29408);
  sub_1E3C156EC(v1);
  result = sub_1E3C14F9C();
  if (result)
  {
    *&v12 = a1;

    sub_1E41FF4C4();
  }

  return result;
}

uint64_t sub_1E3C212DC()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1E41FE624();
  v0[4] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_86_0();
  v5 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3C21380()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 56) = *(*(v0 + 16) + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_timingTracker);
  sub_1E41FF434();
  v1 = OUTLINED_FUNCTION_52_29();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E3C213F0()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_135_2();
  sub_1E3DAABDC();
  v0 = OUTLINED_FUNCTION_17_10();
  v1(v0);

  OUTLINED_FUNCTION_54();

  return v2();
}

void sub_1E3C21468()
{
  OUTLINED_FUNCTION_31_1();
  v95 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35718);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF355E0);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_8();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35600);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v92 = v16 - v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_91_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v89 - v20;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v90 = v2;
    OUTLINED_FUNCTION_95_11();
    sub_1E42074B4();
    v96 = v98;
    v97 = v99;
    MEMORY[0x1E69109E0](0xD000000000000015, 0x80000001E4277EE0);
    v24 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_previousState;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v94 = v24;
    sub_1E379D7E4(v23 + v24, v21, &qword_1ECF35600);
    v25 = OUTLINED_FUNCTION_44_5();
    OUTLINED_FUNCTION_52(v25, v26, v6);
    v93 = v0;
    if (v27)
    {
      v31 = 0xE500000000000000;
      v29 = 0x7472617473;
    }

    else
    {
      OUTLINED_FUNCTION_77();
      v28();
      (*(v8 + 16))(v12, v1, v6);
      OUTLINED_FUNCTION_84_5();
      v29 = sub_1E4205F84();
      v31 = v30;
      v32 = OUTLINED_FUNCTION_119_0();
      v33(v32);
    }

    MEMORY[0x1E69109E0](v29, v31);

    MEMORY[0x1E69109E0](540945696, 0xE400000000000000);
    sub_1E4207614();
    v34 = v97;
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_160_2(v35, v34, v36, 0x80000001E4277EC0, v37);

    v38 = *(v4 + 48);
    v39 = v93;
    sub_1E379D7E4(v23 + v94, v93, &qword_1ECF35600);
    v91 = v23;
    v40 = *(v8 + 16);
    OUTLINED_FUNCTION_82();
    v40();
    v41 = (v8 + 88);
    v42 = *(v8 + 88);
    v43 = v42(v39 + v38, v6);
    if (v43 == *MEMORY[0x1E696B2C0])
    {
      (v40)(v1, v39 + v38, v6);
      v44 = OUTLINED_FUNCTION_119_0();
      v45(v44);
      v41 = *v1;
      v96 = 0;
      v97 = 0xE000000000000000;
      sub_1E42074B4();

      OUTLINED_FUNCTION_41_7();
      OUTLINED_FUNCTION_176_3();
      v96 = v47 + 17;
      v97 = v46;
      swift_getErrorValue();
      v48 = sub_1E4207AB4();
      MEMORY[0x1E69109E0](v48);

      v49 = v97;
      OUTLINED_FUNCTION_0_185();
      OUTLINED_FUNCTION_160_2(v50, v49, v51, 0x80000001E4277EC0, v52);

      v53 = v91;
      sub_1E3C21D90();

      (*(v8 + 8))(v39 + v38, v6);
      sub_1E325F7A8(v39, &qword_1ECF35600);
LABEL_7:
      v54 = v53;
LABEL_18:
      v73 = OUTLINED_FUNCTION_175_2();
      (v40)(v73);
      OUTLINED_FUNCTION_114();
      __swift_storeEnumTagSinglePayload(v74, v75, v76, v6);
      v77 = v94;
      OUTLINED_FUNCTION_11_3();
      sub_1E3C25C04(v41, v54 + v77);
      swift_endAccess();
LABEL_19:

      goto LABEL_20;
    }

    v89[1] = v8 + 16;
    v54 = v91;
    if (v43 == *MEMORY[0x1E696B2D0])
    {
      v55 = v93;
      OUTLINED_FUNCTION_52(v93, 1, v6);
      if (v27)
      {
        v53 = v54;
        v56 = sub_1E3C14F9C();
        if (!v56)
        {
          OUTLINED_FUNCTION_0_185();
          OUTLINED_FUNCTION_176_3();
          OUTLINED_FUNCTION_160_2(v78 + 4, v79 | 0x8000000000000000, v80, 0x80000001E4277EC0, v81);
          v82 = OUTLINED_FUNCTION_182_2();
          v83(v82);
          sub_1E325F7A8(v41, &qword_1ECF35600);
          v84 = OUTLINED_FUNCTION_175_2();
          (v40)(v84);
          OUTLINED_FUNCTION_114();
          __swift_storeEnumTagSinglePayload(v85, v86, v87, v6);
          v88 = v94;
          OUTLINED_FUNCTION_11_3();
          sub_1E3C25C04(v41, v54 + v88);
          swift_endAccess();
          goto LABEL_19;
        }

        v41 = v56;
        sub_1E3C21B98();

        v57 = OUTLINED_FUNCTION_182_2();
        v58(v57);
        sub_1E325F7A8(v41, &qword_1ECF35600);
        goto LABEL_7;
      }

      sub_1E379D7E4(v55, v90, &qword_1ECF35600);
      v59 = OUTLINED_FUNCTION_119_0();
      if ((v42)(v59) == *MEMORY[0x1E696B2C8])
      {
        OUTLINED_FUNCTION_0_185();
        OUTLINED_FUNCTION_176_3();
        OUTLINED_FUNCTION_160_2(v60 + 23, v61 | 0x8000000000000000, v62, 0x80000001E4277EC0, v63);
        sub_1E3C14E28();
        (*(v8 + 8))(v55 + v38, v6);
        v64 = &qword_1ECF35600;
        v65 = v55;
LABEL_17:
        sub_1E325F7A8(v65, v64);
        goto LABEL_18;
      }

      v66 = OUTLINED_FUNCTION_119_0();
      v67(v66);
    }

    v96 = 0;
    v97 = 0xE000000000000000;
    sub_1E42074B4();
    OUTLINED_FUNCTION_176_3();
    MEMORY[0x1E69109E0](v68 + 11, v69 | 0x8000000000000000);
    sub_1E4207614();
    v41 = v97;
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_160_2(v70, v41, v71, 0x80000001E4277EC0, v72);

    v64 = &qword_1ECF35718;
    v65 = v93;
    goto LABEL_17;
  }

LABEL_20:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C21B98()
{
  v0 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  if (sub_1E32AA9E0() & 1) != 0 || (sub_1E41FF404())
  {
    sub_1E42074B4();

    OUTLINED_FUNCTION_41_7();
    sub_1E41FF434();
    OUTLINED_FUNCTION_3_143();
    sub_1E32AC410(v7, v8);
    v9 = sub_1E4207944();
    MEMORY[0x1E69109E0](v9);

    (*(v2 + 8))(v6, v0);
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_55_31();
    sub_1E32AAD78(v10, v11, 0xD000000000000020, v12, v13);

    sub_1E3C1FEF4();
  }

  else
  {
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_43_42();
    sub_1E32AAD78(v14, v15, 0xD000000000000020, v16, v17);
  }
}

void sub_1E3C21D90()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35600);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_20_1();
  v11 = MEMORY[0x1E69E6158];
  v12 = sub_1E4205CB4();
  v13 = sub_1E3C14F9C();
  if (v13)
  {
    sub_1E41FF4B4();

    v13 = sub_1E39CB410();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_1E4205F14();
  v18 = v16;
  v19 = v17;
  if (v15)
  {
    *(&v48 + 1) = v11;
    *&v47 = v13;
    *(&v47 + 1) = v15;
    sub_1E329504C(&v47, v46);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1E32A87C0(v46, v18, v19);
  }

  else
  {
    v20 = sub_1E327D33C(v16, v17);
    if (v21)
    {
      v22 = v20;
      swift_isUniquelyReferenced_nonNull_native();
      *&v46[0] = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
      sub_1E4207644();

      sub_1E329504C((*(v12 + 56) + 32 * v22), &v47);
      sub_1E4207664();
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
    }

    sub_1E325F7A8(&v47, &unk_1ECF296E0);
  }

  v23 = sub_1E3C16D94();
  v24 = &v4[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_endSessionReason];
  if ((v23 & 1) == 0)
  {
    if ((v4[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_endSessionReason + 8] & 1) == 0)
    {
LABEL_15:
      if (*v24 == 2)
      {
        goto LABEL_17;
      }
    }

LABEL_16:
    sub_1E3C23858();
    goto LABEL_17;
  }

  if (v4[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_endSessionReason + 8])
  {
    goto LABEL_16;
  }

  if (*v24)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (sub_1E3C14F9C())
  {
    OUTLINED_FUNCTION_106();
    sub_1E4206474();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
    OUTLINED_FUNCTION_10_9();
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = v4;
    v29[5] = v4;
    v30 = v4;
    v31 = OUTLINED_FUNCTION_23_7();
    sub_1E376FE58(v31, v32, v3, v33, v29);
  }

  sub_1E3C14E28();
  if (*&v4[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionStateObserver])
  {

    sub_1E42004E4();
  }

  if (*&v4[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionActivityObserver])
  {

    sub_1E42004E4();
  }

  if (*&v4[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionActivityParticipantsObserver])
  {

    sub_1E42004E4();
  }

  sub_1E41FE624();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  sub_1E3C156EC(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF355E0);
  v38 = OUTLINED_FUNCTION_43_2();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  v42 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_previousState;
  OUTLINED_FUNCTION_11_3();
  sub_1E3C25C04(v1, &v4[v42]);
  swift_endAccess();
  sub_1E3C1500C(0);
  v43 = &v4[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_endSessionReason];
  *v43 = 0;
  v43[8] = 1;
  sub_1E3C1ACF0(0);
  v44 = [objc_opt_self() defaultCenter];
  v45 = sub_1E3744600(v12);

  sub_1E37E7460(@"VUIGroupWatchActivitySessionDidEndNotification", 0, v45, v44);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C2225C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E3C22230();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void sub_1E3C22514()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35650);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v69 = v7;
  OUTLINED_FUNCTION_138();
  v8 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v65 = v12 - v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_23_8();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408);
  v16 = OUTLINED_FUNCTION_17_2(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v66 = v17 - v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_18_6();
  v72 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_91_0();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v64 - v24;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_78();
  v27 = *v5;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v67 = v1;
    v71 = v10;
    v30 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_modifyingActivityIdentifier;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E379D7E4(v29 + v30, v0, &qword_1ECF29408);
    v74 = 0;
    v75 = 0xE000000000000000;
    sub_1E42074B4();
    MEMORY[0x1E69109E0](0xD00000000000001FLL, 0x80000001E4277BD0);
    v70 = v27;
    v73 = v27;
    type metadata accessor for GroupWatchActivity();
    sub_1E4207614();
    MEMORY[0x1E69109E0](0xD000000000000017, 0x80000001E4277BF0);
    sub_1E379D7E4(v0, v3, &qword_1ECF29408);
    v31 = OUTLINED_FUNCTION_34_4(v3);
    if (v48)
    {
      sub_1E325F7A8(v3, &qword_1ECF29408);
    }

    else
    {
      MEMORY[0x1E6908F50](v31);
      (*(v71 + 8))(v3, v8);
    }

    v32 = v72;
    v33 = OUTLINED_FUNCTION_168();
    MEMORY[0x1E69109E0](v33);

    v34 = v75;
    OUTLINED_FUNCTION_0_185();
    sub_1E32AAD78(v35, v34, 0xD000000000000018, 0x80000001E4277BB0, v36);

    v37 = OUTLINED_FUNCTION_43_2();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v8);
    sub_1E3C156EC(v25);
    sub_1E379D7E4(v0, v2, &qword_1ECF29408);
    OUTLINED_FUNCTION_34_4(v2);
    if (v48)
    {
      sub_1E325F7A8(v2, &qword_1ECF29408);
LABEL_18:
      OUTLINED_FUNCTION_0_185();
      OUTLINED_FUNCTION_189_1(0xD00000000000004ELL, v52, v53);
      sub_1E3C22BD0();

LABEL_19:
      sub_1E325F7A8(v0, &qword_1ECF29408);
      goto LABEL_20;
    }

    v72 = "ecause no session exists";
    v64 = *(v71 + 32);
    v64(v67, v2, v8);
    v40 = OUTLINED_FUNCTION_84_5();
    v41(v40);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v8);
    v45 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_identifier;
    v46 = v69;
    v47 = *(v68 + 48);
    sub_1E379D7E4(v32, v69, &qword_1ECF29408);
    sub_1E379D7E4(v70 + v45, v46 + v47, &qword_1ECF29408);
    OUTLINED_FUNCTION_34_4(v46);
    if (v48)
    {
      sub_1E325F7A8(v32, &qword_1ECF29408);
      OUTLINED_FUNCTION_34_4(v46 + v47);
      v49 = v71;
      if (v48)
      {
        sub_1E325F7A8(v46, &qword_1ECF29408);
LABEL_22:
        OUTLINED_FUNCTION_0_185();
        OUTLINED_FUNCTION_189_1(0xD000000000000036, v62, v63);

        (*(v49 + 8))(v67, v8);
        goto LABEL_19;
      }
    }

    else
    {
      v50 = v66;
      sub_1E379D7E4(v46, v66, &qword_1ECF29408);
      OUTLINED_FUNCTION_34_4(v46 + v47);
      if (!v51)
      {
        v64(v65, v46 + v47, v8);
        OUTLINED_FUNCTION_3_143();
        sub_1E32AC410(v54, v55);
        v56 = sub_1E4205E84();
        v49 = v71;
        v57 = *(v71 + 8);
        v58 = OUTLINED_FUNCTION_13_8();
        v57(v58);
        v59 = OUTLINED_FUNCTION_84_5();
        sub_1E325F7A8(v59, v60);
        v61 = OUTLINED_FUNCTION_38_0();
        v57(v61);
        sub_1E325F7A8(v69, &qword_1ECF29408);
        if (v56)
        {
          goto LABEL_22;
        }

        goto LABEL_17;
      }

      sub_1E325F7A8(v32, &qword_1ECF29408);
      v49 = v71;
      (*(v71 + 8))(v50, v8);
    }

    sub_1E325F7A8(v46, &qword_1ECF35650);
    v57 = *(v49 + 8);
LABEL_17:
    (v57)(v67, v8);
    goto LABEL_18;
  }

LABEL_20:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C22BD0()
{
  OUTLINED_FUNCTION_31_1();
  v170 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v171 = v7;
  OUTLINED_FUNCTION_138();
  sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v167 = v9;
  v168 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v169 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v157 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v157 - v16;
  v18 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v172 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_23_8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v157 - v28;
  OUTLINED_FUNCTION_95_11();
  sub_1E42074B4();
  OUTLINED_FUNCTION_82_10();
  MEMORY[0x1E69109E0](v30 + 4, v31 | 0x8000000000000000);
  *&v176 = v4;
  type metadata accessor for GroupWatchActivity();
  sub_1E4207614();
  OUTLINED_FUNCTION_0_185();
  v173 = v32;
  OUTLINED_FUNCTION_27_51();
  sub_1E32AAD78(v33, v34, v35, v36, v37);

  v38 = sub_1E39CB9F8();
  if (!v38)
  {
    v162 = v26;
    v163 = v2;
    v164 = v11;
    v165 = v15;
    v166 = v17;
    v52 = v171;
    v51 = v172;
    v53 = swift_allocBox();
    v55 = v54;
    sub_1E39CB5B0();
    OUTLINED_FUNCTION_34_4(v29);
    if (v56)
    {
      sub_1E325F7A8(v29, &unk_1ECF363C0);
      swift_deallocBox();
    }

    else
    {
      v161 = v53;
      v68 = v51;
      v69 = v51[4];
      v70 = v29;
      v71 = v18;
      v69(v55, v70, v18);
      v72 = [objc_opt_self() sharedInstance];
      v73 = [v72 appController];

      if (v73)
      {
        v74 = v55;
        v158 = v69;
        OUTLINED_FUNCTION_4_0();
        v160 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v75 = sub_1E3C16D94();
        v159 = v1;
        v76 = v71;
        v77 = v169;
        if ((v75 & 1) == 0)
        {
          v78 = v68[2];
          v79 = OUTLINED_FUNCTION_119_0();
          v78(v79);
          v80 = v162;
          sub_1E3C246F4();
          v81 = OUTLINED_FUNCTION_168();
          v82(v81);
          v83 = OUTLINED_FUNCTION_245();
          if (__swift_getEnumTagSinglePayload(v83, v84, v76) == 1)
          {
            v85 = v163;
            v86 = OUTLINED_FUNCTION_84_5();
            v78(v86);
            v87 = OUTLINED_FUNCTION_245();
            OUTLINED_FUNCTION_52(v87, v88, v76);
            if (!v56)
            {
              sub_1E325F7A8(v80, &unk_1ECF363C0);
            }
          }

          else
          {
            v85 = v163;
            v158(v163, v80, v76);
          }

          v68 = v172;
          v172[5](v74, v85, v76);
          v52 = v171;
          v77 = v169;
        }

        v172 = v73;
        v104 = v170;
        if (sub_1E3C14F9C())
        {
          sub_1E41FF434();

          v105 = v167;
          v163 = v74;
          v162 = v76;
          v106 = *(v167 + 32);
          v107 = OUTLINED_FUNCTION_11_6();
          v108 = v168;
          v106(v107);
          sub_1E4206474();
          OUTLINED_FUNCTION_32_2();
          __swift_storeEnumTagSinglePayload(v109, v110, v111, v112);
          v113 = OUTLINED_FUNCTION_171_0();
          v114(v113);
          v115 = v52;
          v116 = v68;
          v117 = (*(v105 + 80) + 40) & ~*(v105 + 80);
          v118 = swift_allocObject();
          v118[2] = 0;
          v118[3] = 0;
          v118[4] = v104;
          v119 = v118 + v117;
          v68 = v116;
          (v106)(v119, v77, v108);
          v76 = v162;
          v74 = v163;
          v120 = v104;
          v121 = OUTLINED_FUNCTION_23_7();
          sub_1E376FE58(v121, v122, v115, v123, v118);

          (*(v105 + 8))(v166, v108);
        }

        v124 = objc_opt_self();
        if ([v124 userHasActiveAccount])
        {
          OUTLINED_FUNCTION_95_11();
          sub_1E42074B4();

          OUTLINED_FUNCTION_41_7();
          OUTLINED_FUNCTION_82_10();
          v178[0] = v126 - 2;
          v178[1] = v125;
          v127 = v68[2];
          v128 = v159;
          v129 = OUTLINED_FUNCTION_84_5();
          v127(v129);
          OUTLINED_FUNCTION_4_150();
          sub_1E32AC410(v130, v131);
          v132 = sub_1E4207944();
          MEMORY[0x1E69109E0](v132);

          v133 = v68[1];
          v133(v128, v76);
          OUTLINED_FUNCTION_0_185();
          OUTLINED_FUNCTION_50_30();
          sub_1E32AAD78(v134, v135, v136, v137, v138);

          v139 = *sub_1E3286BF0();
          (v127)(v128, v74, v76);
          v140 = v139;
          v141 = v172;
          v142 = [v172 appContext];
          v143 = *((*MEMORY[0x1E69E7D40] & *v140) + 0x278);
          v144 = v160;

          v143(v128, v142, sub_1E3C25EE0, v144);

          v133(v128, v76);
        }

        else
        {
          OUTLINED_FUNCTION_82_10();
          OUTLINED_FUNCTION_0_185();
          OUTLINED_FUNCTION_46_35(v145, v146, v147);
          v148 = v170;
          v149 = sub_1E3C14F9C();
          v150 = v161;
          if (v149)
          {
            v148 = v149;
            sub_1E41FF424();
          }

          OUTLINED_FUNCTION_4_0();
          v151 = swift_allocObject();
          OUTLINED_FUNCTION_105_2(v151);
          swift_unknownObjectWeakInit();
          v152 = swift_allocObject();
          v152[2] = v148;
          v152[3] = v150;
          v153 = v172;
          v152[4] = v172;
          v152[5] = sub_1E3C25EE0;
          v152[6] = v160;
          OUTLINED_FUNCTION_12_14(v152);
          OUTLINED_FUNCTION_26_50(COERCE_DOUBLE(1107296256));
          v179 = v154;
          v180 = &block_descriptor_92;
          v155 = _Block_copy(v178);

          v156 = v153;

          [v124 requestAuthenticationAlwaysPrompt:1 withCompletionHandler:v155];

          _Block_release(v155);
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_185();
        OUTLINED_FUNCTION_82_10();
        OUTLINED_FUNCTION_46_35(v92 + 4, v93, v94);
      }
    }

    goto LABEL_38;
  }

  v39 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  OUTLINED_FUNCTION_5_10();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1E4298880;
  *(v40 + 32) = v39;
  v41 = objc_allocWithZone(VUIMediaInfo);
  v42 = v39;
  OUTLINED_FUNCTION_25();
  v47 = sub_1E376538C(v43, v44, v45, v46);
  [v47 setIntent_];
  v48 = [objc_opt_self() sharedInstance];
  v49 = [v48 appController];

  if (v49)
  {
    v50 = [v49 appContext];
  }

  else
  {
    v50 = 0;
  }

  [v47 setAppContext_];

  v57 = [objc_opt_self() sharedInstance];
  v58 = [v57 isFullscreenPlaybackUIBeingShown];

  if ((v58 & 1) == 0)
  {
    [objc_opt_self() dismissPresentedViewController];
  }

  v59 = [v42 metadata];
  if (v59)
  {
    v60 = sub_1E3C25998(v59);
    if (v60)
    {
      v61 = v60;
      v174 = sub_1E4205F14();
      v175 = v62;
      sub_1E4207414();
      sub_1E375D7E8(v178, v61, &v176);

      sub_1E375D84C(v178);
      if (v177)
      {
        if (swift_dynamicCast() && (v174 & 1) != 0)
        {
          v63 = objc_opt_self();
          if (![v63 userHasActiveAccount])
          {
            OUTLINED_FUNCTION_82_10();
            OUTLINED_FUNCTION_0_185();
            OUTLINED_FUNCTION_46_35(v95, v96, v97);
            OUTLINED_FUNCTION_4_0();
            v98 = swift_allocObject();
            swift_unknownObjectWeakInit();
            OUTLINED_FUNCTION_5_10();
            v99 = swift_allocObject();
            v99[2] = v98;
            v99[3] = v47;
            v99[4] = v42;
            OUTLINED_FUNCTION_12_14(v99);
            OUTLINED_FUNCTION_26_50(COERCE_DOUBLE(1107296256));
            v179 = v100;
            v180 = &block_descriptor_99;
            v101 = _Block_copy(v178);
            v102 = v42;
            v103 = v47;

            [v63 requestAuthenticationAlwaysPrompt:1 withCompletionHandler:v101];

            _Block_release(v101);
            goto LABEL_38;
          }

          OUTLINED_FUNCTION_0_185();
          OUTLINED_FUNCTION_82_10();
          v67 = v66 + 44;
LABEL_24:
          OUTLINED_FUNCTION_46_35(v67, v64, v65);
          v90 = OUTLINED_FUNCTION_57();
          sub_1E3C242B4(v90, v91);

LABEL_38:
          OUTLINED_FUNCTION_25_2();
          return;
        }
      }

      else
      {
        sub_1E325F7A8(&v176, &unk_1ECF296E0);
      }
    }

    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_82_10();
    v67 = v89 + 40;
    goto LABEL_24;
  }

  __break(1u);
}

uint64_t sub_1E3C23858()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_2();
  sub_1E42074B4();
  MEMORY[0x1E69109E0](0xD00000000000001DLL, 0x80000001E42780B0);
  sub_1E4206594();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1E69109E0](0xD000000000000010);
  OUTLINED_FUNCTION_0_185();
  OUTLINED_FUNCTION_55_31();
  sub_1E32AAD78(v5, v6, v7, v8, v9);

  v10 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_dismissDelayTimer;
  if (*&v0[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_dismissDelayTimer])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
    sub_1E42064D4();
  }

  sub_1E4206474();
  v11 = OUTLINED_FUNCTION_43_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_10_9();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = 0x3FF0000000000000;
  v15[5] = v2;
  v16 = v2;
  v17 = OUTLINED_FUNCTION_23_7();
  *&v2[v10] = sub_1E37748D8(v17, v18, v1, v19, v15);
}

uint64_t sub_1E3C23A1C()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1E41FE624();
  v0[4] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_86_0();
  v5 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3C23AC0()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 56) = *(*(v0 + 16) + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_timingTracker);
  sub_1E41FF434();
  v1 = OUTLINED_FUNCTION_52_29();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E3C23B30()
{
  OUTLINED_FUNCTION_27_2();
  v0 = OUTLINED_FUNCTION_135_2();
  sub_1E3DAD0D0(v0);
  v1 = OUTLINED_FUNCTION_17_10();
  v2(v1);

  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_1E3C23BA8()
{
  OUTLINED_FUNCTION_24();
  v0[9] = v1;
  v0[8] = v2;
  v3 = sub_1E42075E4();
  v0[10] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[11] = v4;
  v0[12] = OUTLINED_FUNCTION_86_0();
  v5 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3C23C50()
{
  OUTLINED_FUNCTION_27_2();
  sub_1E4207CA4();
  sub_1E4207AA4();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1E3C23D20;
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_25();

  return sub_1E38786F0(v2, v3, v4, v5, 1);
}

uint64_t sub_1E3C23D20()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_23_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 112) = v0;

  v7 = OUTLINED_FUNCTION_17_10();
  v8(v7);
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3C23E6C()
{
  OUTLINED_FUNCTION_134();
  if (sub_1E4206504())
  {
    OUTLINED_FUNCTION_39_1();
    sub_1E42074B4();
    OUTLINED_FUNCTION_181();
    *(v0 + 48) = v2;
    *(v1 + 56) = v3;
    MEMORY[0x1E69109E0](0xD00000000000001DLL, 0x80000001E42780B0);
    sub_1E4206594();
    OUTLINED_FUNCTION_23();
    MEMORY[0x1E69109E0](0xD000000000000012);
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_55_31();
    sub_1E32AAD78(v4, v5, v6, v7, v8);

    OUTLINED_FUNCTION_15_12();

    return v9();
  }

  else
  {
    sub_1E4206434();
    *(v1 + 120) = OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_50();
    sub_1E42063B4();
    OUTLINED_FUNCTION_109();

    return MEMORY[0x1EEE6DFA0](sub_1E3C2403C, v11, v12);
  }
}

uint64_t sub_1E3C23FE0()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3C2403C()
{
  v2 = *(v1 + 72);

  v3 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_dismissDelayTimer;
  if (*(v2 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_dismissDelayTimer))
  {
    OUTLINED_FUNCTION_39_1();
    sub_1E42074B4();
    OUTLINED_FUNCTION_181();
    *(v0 + 16) = v4;
    *(v1 + 24) = v5;
    MEMORY[0x1E69109E0](0xD00000000000001DLL, 0x80000001E42780B0);
    OUTLINED_FUNCTION_77();
    sub_1E4206594();
    MEMORY[0x1E69109E0](0x2072656D69742820, 0xEE00296465726966);
    v6 = MEMORY[0x1E69E9450];
    sub_1E32AAD78(*(v0 + 16), *(v1 + 24), 0xD000000000000017, 0x80000001E42780F0, MEMORY[0x1E69E9450]);

    *(v2 + v3) = 0;

    v7 = [objc_opt_self() sharedInstance];
    [v7 dismissPlaybackAnimated:1 leaveGroupActivitySession:0 completion:0];

    OUTLINED_FUNCTION_39_1();
    sub_1E42074B4();
    OUTLINED_FUNCTION_181();
    v7[4] = v8;
    v7[5] = v9;
    MEMORY[0x1E69109E0](0xD00000000000001DLL, 0x80000001E42780B0);
    OUTLINED_FUNCTION_77();
    sub_1E4206594();
    MEMORY[0x1E69109E0](0x656C706D6F632820, 0xEC00000029646574);
    OUTLINED_FUNCTION_27_51();
    sub_1E32AAD78(v10, v11, v12, v13, v6);
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1E3C2425C()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_15_12();

  return v0();
}

id sub_1E3C242B4(uint64_t a1, uint64_t a2)
{
  [objc_opt_self() playMediaInfo:a1 watchType:1 isRentAndWatchNow:0];
  v3 = objc_opt_self();

  return [v3 recordPlay:a2 isLaunchingExtras:0];
}

void sub_1E3C24328()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v6 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = sub_1E3C14F9C();
    if (v19)
    {
      v20 = v19;
      sub_1E41FF434();

      v35 = v3;
      v34 = *(v8 + 32);
      v34(v16, v1, v6);
      sub_1E4206474();
      OUTLINED_FUNCTION_93_4();
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
      OUTLINED_FUNCTION_4_0();
      v25 = swift_allocObject();
      OUTLINED_FUNCTION_105_2(v25);
      swift_unknownObjectWeakInit();
      (*(v8 + 16))(&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v6);
      v26 = (*(v8 + 80) + 40) & ~*(v8 + 80);
      v27 = swift_allocObject();
      *(v27 + 2) = 0;
      *(v27 + 3) = 0;
      *(v27 + 4) = v20;
      v34(&v27[v26], v13, v6);
      LOBYTE(v3) = v35;
      v28 = OUTLINED_FUNCTION_23_7();
      sub_1E3797438(v28, v29, v0, v30, v27);

      v31 = OUTLINED_FUNCTION_8_6();
      v32(v31);
    }

    if ((v3 & 1) == 0 && sub_1E3C14F9C())
    {
      sub_1E41FF424();
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C245A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3C245BC()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = Strong;
    *(v0 + 72) = *(Strong + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_timingTracker);

    v3 = OUTLINED_FUNCTION_52_29();

    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_54();

    return v6();
  }
}

uint64_t sub_1E3C2468C()
{
  OUTLINED_FUNCTION_24();
  sub_1E3DABCA4();

  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

void sub_1E3C246F4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FE004();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v62 = v8 - v7;
  OUTLINED_FUNCTION_138();
  v9 = sub_1E41FDF74();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v61 = v13 - v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_77_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8);
  OUTLINED_FUNCTION_17_2(v16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  sub_1E41FDFB4();
  v20 = 0;
  if (!__swift_getEnumTagSinglePayload(v19, 1, v3))
  {
    v20 = sub_1E41FDF84();
  }

  v63 = v19;
  if (!__swift_getEnumTagSinglePayload(v19, 1, v3))
  {
    if (!v20)
    {
LABEL_27:
      v21 = v63;
      sub_1E41FDF94();
      goto LABEL_28;
    }

    v57 = v5;
    v58 = v3;
    v59 = v2;
    v22 = 0;
    v23 = *(v20 + 16);
    v67 = v11 + 16;
    v68 = v23;
    v64 = @"binge";
    v56 = (v11 + 32);
    v65 = (v11 + 8);
    v66 = @"postPlay";
    v60 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      while (1)
      {
        if (v68 == v22)
        {

          v3 = v58;
          v5 = v57;
          goto LABEL_27;
        }

        if (v22 >= *(v20 + 16))
        {
          __break(1u);
          return;
        }

        v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v25 = *(v11 + 72);
        v26 = v9;
        (*(v11 + 16))(v0, v20 + v24 + v25 * v22, v9);
        v27 = sub_1E41FDF54();
        v29 = v28;
        if (v27 != sub_1E4205F14() || v29 != v30)
        {
          v32 = OUTLINED_FUNCTION_158_5();

          if (v32)
          {
            goto LABEL_25;
          }

          v33 = sub_1E41FDF54();
          v35 = v34;
          if (v33 != sub_1E4205F14() || v35 != v36)
          {
            break;
          }
        }

LABEL_25:
        v9 = v26;
        (*v65)(v0, v26);
        ++v22;
      }

      v38 = OUTLINED_FUNCTION_158_5();

      if (v38)
      {
        goto LABEL_25;
      }

      v39 = *v56;
      (*v56)(v61, v0, v26);
      v40 = v60;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v40;
      v55 = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E3C253E8(0, *(v40 + 16) + 1, 1);
        v40 = v69;
      }

      v43 = *(v40 + 16);
      v42 = *(v40 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1E3C253E8(v42 > 1, v43 + 1, 1);
        v40 = v69;
      }

      ++v22;
      *(v40 + 16) = v43 + 1;
      v60 = v40;
      v44 = v40 + v24 + v43 * v25;
      v9 = v26;
      v55(v44, v61, v26);
    }
  }

  v21 = v63;
LABEL_28:
  v45 = OUTLINED_FUNCTION_44_5();
  if (__swift_getEnumTagSinglePayload(v45, v46, v3))
  {
    sub_1E41FE414();
    v47 = OUTLINED_FUNCTION_43_2();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  }

  else
  {
    v51 = v62;
    v52 = OUTLINED_FUNCTION_16_0();
    v53(v52);
    sub_1E41FDFC4();
    (*(v5 + 8))(v51, v3);
  }

  sub_1E325F7A8(v21, &qword_1ECF304A8);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C24B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3C24B88()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_timingTracker);
  *(v0 + 32) = v1;
  return OUTLINED_FUNCTION_13_1(sub_1E3C24BB0, v1);
}

uint64_t sub_1E3C24BB0()
{
  OUTLINED_FUNCTION_24();
  sub_1E3DAB808();
  OUTLINED_FUNCTION_54();

  return v0();
}

void sub_1E3C24C08()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  swift_projectBox();
  if (v3)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      sub_1E42074B4();

      OUTLINED_FUNCTION_41_7();
      OUTLINED_FUNCTION_82_10();
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      OUTLINED_FUNCTION_146_2();
      OUTLINED_FUNCTION_142_7();
      v7();
      OUTLINED_FUNCTION_4_150();
      sub_1E32AC410(v8, v9);
      v10 = sub_1E4207944();
      MEMORY[0x1E69109E0](v10);

      v11 = OUTLINED_FUNCTION_38_0();
      v12(v11);
      OUTLINED_FUNCTION_0_185();
      OUTLINED_FUNCTION_27_51();
      sub_1E32AAD78(v13, v14, v15, v16, v17);
    }

    v18 = *sub_1E3286BF0();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    OUTLINED_FUNCTION_146_2();
    OUTLINED_FUNCTION_142_7();
    v19();
    v20 = v18;
    v21 = [v1 appContext];
    v22 = OUTLINED_FUNCTION_24_4();
    v23(v22);

    v24 = OUTLINED_FUNCTION_38_0();
    v25(v24);
  }

  else
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = v26;
      OUTLINED_FUNCTION_0_185();
      OUTLINED_FUNCTION_43_42();
      OUTLINED_FUNCTION_50_30();
      sub_1E32AAD78(v28, v29, v30, v31, v32);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C24EEC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v16 - v6;
  objc_opt_self();
  v8 = sub_1E4205ED4();
  OUTLINED_FUNCTION_76_0();
  v9 = sub_1E4205ED4();
  OUTLINED_FUNCTION_146_2();
  v10(v7, v1, v2);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + v11, v7, v2);
  v16[4] = sub_1E3C25B10;
  v16[5] = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1E37EB82C;
  v16[3] = &block_descriptor_78;
  v13 = _Block_copy(v16);

  OUTLINED_FUNCTION_19_1();
  [v14 v15];
  _Block_release(v13);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C250C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3C14F9C();
  *a1 = result;
  return result;
}

uint64_t sub_1E3C25120()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v3 + 120) = v0;

  v9 = OUTLINED_FUNCTION_35_5();
  v6(v9);
  if (v0)
  {
    OUTLINED_FUNCTION_169();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {

    OUTLINED_FUNCTION_15_12();

    return v13();
  }
}

uint64_t sub_1E3C252B4()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_30_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_56_1(v3);

  return sub_1E3C16DEC(v5, v6, v7, v1);
}

uint64_t sub_1E3C2533C()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v1[1] = sub_1E327C238;
  OUTLINED_FUNCTION_62_1();

  return sub_1E3C179D0();
}

size_t sub_1E3C253E8(size_t a1, int64_t a2, char a3)
{
  result = sub_1E3C25408(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1E3C25408(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF304B0);
  v10 = *(sub_1E41FDF74() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1E41FDF74() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1E39E8B4C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_1E3C255C0()
{
  result = qword_1ECF35608;
  if (!qword_1ECF35608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35608);
  }

  return result;
}

unint64_t sub_1E3C25618()
{
  result = qword_1ECF35610;
  if (!qword_1ECF35610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35610);
  }

  return result;
}

unint64_t sub_1E3C25670()
{
  result = qword_1ECF35618;
  if (!qword_1ECF35618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35618);
  }

  return result;
}

uint64_t sub_1E3C256FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1E3C2576C(void **a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong;
    if (sub_1E3C14F9C())
    {
      OUTLINED_FUNCTION_0_185();
      sub_1E32AAD78(0xD000000000000020, v5 | 0x8000000000000000, 0x6C50646572616873, 0xEC00000072657961, v6);
      v7 = [v1 playbackCoordinator];
      OUTLINED_FUNCTION_31_4();
      sub_1E4206C74();
    }

    else
    {
      OUTLINED_FUNCTION_0_185();
      sub_1E32AAD78(0xD000000000000030, v8 | 0x8000000000000000, 0x6C50646572616873, 0xEC00000072657961, v9);
    }
  }
}

void sub_1E3C25880()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_106();
    sub_1E3C15F8C();
  }
}

uint64_t sub_1E3C258D4()
{
  OUTLINED_FUNCTION_27_2();
  v0 = sub_1E41FE624();
  OUTLINED_FUNCTION_17_2(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_14_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_152_5(v2);

  return sub_1E3C16BB8(v4, v5, v6, v7, v8);
}

uint64_t sub_1E3C25998(void *a1)
{
  v2 = [a1 backingDictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205C64();

  return v3;
}

uint64_t sub_1E3C25A10()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = v1;
  OUTLINED_FUNCTION_37_2();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_7();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_15_12();

  return v8();
}

uint64_t sub_1E3C25B10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  OUTLINED_FUNCTION_17_2(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  return sub_1E42063D4();
}

unint64_t sub_1E3C25BB0()
{
  result = qword_1EE29AA78;
  if (!qword_1EE29AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE29AA78);
  }

  return result;
}

uint64_t sub_1E3C25C04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35600);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3C25C74()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_63(v1);

  return sub_1E3C212DC();
}

uint64_t objectdestroy_46Tm(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1E3C25D78(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35638);
  result = OUTLINED_FUNCTION_17_2(v4);
  if (a1)
  {
    v6 = a1;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35638);
    OUTLINED_FUNCTION_178_2(v7, v8, v9, v10, v11, v12, v13, v14, v24, a1);
    return sub_1E42063D4();
  }

  else if (a2)
  {
    v15 = a2;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35638);
    OUTLINED_FUNCTION_178_2(v16, v17, v18, v19, v20, v21, v22, v23, v24, a2);
    return sub_1E42063C4();
  }

  return result;
}

uint64_t sub_1E3C25E4C()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_63(v1);

  return sub_1E3C1BD9C();
}

uint64_t sub_1E3C25EE8()
{
  OUTLINED_FUNCTION_27_2();
  v1 = sub_1E41FE624();
  OUTLINED_FUNCTION_17_2(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_30_0(v5);
  *v6 = v9;
  v6[1] = sub_1E327C238;

  return sub_1E3C24B74(v6, v7, v8, v4, v0 + v3);
}

void sub_1E3C25FC4(char a1)
{
  if ((a1 & 1) == 0)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v9 = Strong;
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_43_42();
    OUTLINED_FUNCTION_50_30();
    sub_1E32AAD78(v13, v14, v15, v16, v17);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (v1)
  {
    v2 = v1;
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_43_42();
    OUTLINED_FUNCTION_50_30();
    sub_1E32AAD78(v3, v4, v5, v6, v7);
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = OUTLINED_FUNCTION_32_0();
    sub_1E3C242B4(v10, v11);
LABEL_8:
  }
}

uint64_t objectdestroy_28Tm_0()
{
  v1 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1E3C2619C()
{
  OUTLINED_FUNCTION_27_2();
  v0 = sub_1E41FE624();
  OUTLINED_FUNCTION_17_2(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_14_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_152_5(v2);

  return sub_1E3C245A4(v4, v5, v6, v7, v8);
}

void sub_1E3C26260(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(a1 + 16);
    OUTLINED_FUNCTION_38_1();
    sub_1E42074B4();

    OUTLINED_FUNCTION_41_7();
    v7 = sub_1E4207944();
    MEMORY[0x1E69109E0](v7);

    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_55_31();
    sub_1E32AAD78(v8, v9, v10, v11, v12);

    if (a2)
    {
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *&v5[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_participantsCountMax] = 0;
      sub_1E3C1575C(0);
    }

    sub_1E3C1575C(v6);
    sub_1E3C1ACF0(a2 & 1);
LABEL_7:
  }
}

uint64_t objectdestroy_51Tm_0()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E3C26400()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_63(v1);

  return sub_1E3C23A1C();
}

uint64_t sub_1E3C26484()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3C23BA8();
}

uint64_t objectdestroy_67Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_16_0();

  return swift_deallocObject();
}

uint64_t sub_1E3C26564()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_63(v1);

  return sub_1E3C1DD44();
}

unint64_t sub_1E3C265E8()
{
  result = qword_1EE29AA60[0];
  if (!qword_1EE29AA60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE29AA60);
  }

  return result;
}

unint64_t sub_1E3C2664C()
{
  result = qword_1ECF5B970;
  if (!qword_1ECF5B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF5B970);
  }

  return result;
}

unint64_t sub_1E3C266A0()
{
  result = qword_1ECF5B978;
  if (!qword_1ECF5B978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF5B978);
  }

  return result;
}

unint64_t sub_1E3C266F4()
{
  result = qword_1ECF5B980[0];
  if (!qword_1ECF5B980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5B980);
  }

  return result;
}

_BYTE *sub_1E3C2675C(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1E3C2680C()
{
  result = qword_1ECF5BA10[0];
  if (!qword_1ECF5BA10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5BA10);
  }

  return result;
}

unint64_t sub_1E3C26864()
{
  result = qword_1ECF5BC20[0];
  if (!qword_1ECF5BC20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5BC20);
  }

  return result;
}

unint64_t sub_1E3C268BC()
{
  result = qword_1ECF5BE30;
  if (!qword_1ECF5BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF5BE30);
  }

  return result;
}

unint64_t sub_1E3C26914()
{
  result = qword_1ECF5BE38[0];
  if (!qword_1ECF5BE38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5BE38);
  }

  return result;
}

unint64_t sub_1E3C26968()
{
  result = qword_1ECF5BEC0[0];
  if (!qword_1ECF5BEC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5BEC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_96_11(unint64_t *a1, uint64_t *a2)
{

  return sub_1E32752B0(a1, a2);
}

void OUTLINED_FUNCTION_108_7(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X8>)
{

  sub_1E32AAD78(a1, a3 | 0x8000000000000000, 0x737365536E696F6ALL, 0xED000029286E6F69, a2);
}

void OUTLINED_FUNCTION_157_5()
{

  JUMPOUT(0x1E69109E0);
}

uint64_t OUTLINED_FUNCTION_158_5()
{

  return sub_1E42079A4();
}

void OUTLINED_FUNCTION_160_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{

  sub_1E32AAD78(a1, a2, 0xD00000000000001CLL, a4, a5);
}

void OUTLINED_FUNCTION_163_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{

  sub_1E32AAD78(a1, a2, 0xD000000000000028, a4, a5);
}

uint64_t OUTLINED_FUNCTION_187_1()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_188_0(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X8>)
{

  sub_1E32AAD78(a1, a3 | 0x8000000000000000, 0xD000000000000036, v3 | 0x8000000000000000, a2);
}

void OUTLINED_FUNCTION_189_1(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X8>)
{

  sub_1E32AAD78(a1, a3 | 0x8000000000000000, 0xD000000000000018, v3 | 0x8000000000000000, a2);
}

void OUTLINED_FUNCTION_190_0(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X8>)
{

  sub_1E32AAD78(a1, a3 | 0x8000000000000000, 0xD00000000000005CLL, v3 | 0x8000000000000000, a2);
}

void OUTLINED_FUNCTION_191_1(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X8>)
{

  sub_1E32AAD78(a1, v3 | 0x8000000000000000, 0xD000000000000015, a3 | 0x8000000000000000, a2);
}

_OWORD *OUTLINED_FUNCTION_192_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, __int128 a4, uint64_t a5, uint64_t a6, __int128 a7, uint64_t a8, uint64_t a9)
{
  a9 = v9;
  *&a7 = a1;

  return sub_1E329504C(&a7, &a4);
}

uint64_t OUTLINED_FUNCTION_193_0()
{
}

void OUTLINED_FUNCTION_195_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{

  sub_1E32AAD78(a1, a2, 0xD000000000000022, a4, a5);
}

uint64_t sub_1E3C26D74(id a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      strcpy(v10, "Text Array: ");
      BYTE5(v10[1]) = 0;
      HIWORD(v10[1]) = -5120;
      v7 = type metadata accessor for ViewModel();
      v8 = MEMORY[0x1E6910C30](a1, v7);
      MEMORY[0x1E69109E0](v8);
      goto LABEL_7;
    case 2:
      strcpy(v10, "HTML text: ");
      HIDWORD(v10[1]) = -352321536;
      v4 = [a1 string];
      goto LABEL_5;
    case 3:
      sub_1E42074B4();

      v10[0] = 0xD000000000000011;
      v10[1] = 0x80000001E42781D0;
      v4 = [a1 description];
LABEL_5:
      v5 = v4;
      sub_1E4205F14();

      v6 = OUTLINED_FUNCTION_34();
      MEMORY[0x1E69109E0](v6);
LABEL_7:

      break;
    default:
      v10[0] = 0x203A74786554;
      v10[1] = 0xE600000000000000;
      MEMORY[0x1E69109E0](a1);
      break;
  }

  return v10[0];
}

uint64_t sub_1E3C26EE8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 != 1)
      {
        goto LABEL_18;
      }

      return sub_1E38BBA04(a1, a4);
    case 2:
      if (a6 == 2)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    case 3:
      if (a6 != 3)
      {
        goto LABEL_18;
      }

LABEL_13:
      sub_1E3280A90(0, &qword_1EE23AD70);
      result = sub_1E4206F64() & 1;
      break;
    default:
      if (a6)
      {
LABEL_18:
        result = 0;
      }

      else if (a1 == a4 && a2 == a5)
      {
        result = 1;
      }

      else
      {

        result = sub_1E42079A4();
      }

      break;
  }

  return result;
}

uint64_t sub_1E3C27024()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v1 = *(v0 + 248);
  if (*(v0 + 264) == 2)
  {
    v2 = OUTLINED_FUNCTION_4_151();
    sub_1E3C270F0(v2, v3, v4);
    v5 = OUTLINED_FUNCTION_4_151();
    sub_1E3C27104(v5, v6, v7);
    v8 = [v1 string];
    sub_1E4205F14();

    v9 = OUTLINED_FUNCTION_4_151();
    sub_1E37AE010(v9, v10, v11);
    v12 = OUTLINED_FUNCTION_4_151();
    sub_1E37AE010(v12, v13, v14);
  }

  else if (!*(v0 + 264))
  {
    sub_1E3C27104(*(v0 + 248), *(v0 + 256), 0);
  }

  return OUTLINED_FUNCTION_34();
}

id sub_1E3C270F0(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1E3C27104(result, a2, a3);
  }

  return result;
}

id sub_1E3C27104(id result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:

      break;
    case 2:
    case 3:
      result = result;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3C27144()
{
  v1 = v0;
  sub_1E3C27024();
  if (!v2)
  {
    sub_1E39BEC20();
    v23 = &type metadata for ViewModelKeys;
    v24 = &off_1F5D7BCA8;
    LOBYTE(v20) = 14;
    sub_1E3F9F164(&v20);

    if (v27)
    {
      swift_dynamicCast();
      __swift_destroy_boxed_opaque_existential_1(&v20);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v20);
      sub_1E329505C(&v25);
    }
  }

  sub_1E39BD698();
  v20 = v3;
  v21 = v4;
  MEMORY[0x1E69109E0](11256352, 0xA300000000000000);
  v5 = v20;
  v6 = v21;

  v7 = sub_1E3C273C0(32);
  v25 = v5;
  v26 = v6;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  sub_1E3998904();

  sub_1E4206064();

  v12 = v25;
  v11 = v26;
  sub_1E4206024();

  v20 = v12;
  v21 = v11;

  v13 = OUTLINED_FUNCTION_34();
  MEMORY[0x1E69109E0](v13);

  v15 = v20;
  v14 = v21;
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  if (v17)
  {
    v25 = v16;
    v26 = v17;
    sub_1E37614CC();

    sub_1E38D2484(sub_1E3C27480, MEMORY[0x1E69E6158], &v20);

    v16 = v20;
    v17 = v21;
  }

  v18 = sub_1E414A784(v15, v14, v16, v17);

  return v18;
}

uint64_t sub_1E3C273C0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1E4206044();
    v1 = sub_1E4206184();

    return v1;
  }

  return result;
}

uint64_t sub_1E3C27480@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = MEMORY[0x1E69109E0](*a1, a1[1]);
  *a2 = 8992;
  a2[1] = 0xE200000000000000;
  return result;
}

uint64_t sub_1E3C274DC()
{
  result = sub_1E3C27528();
  if (result)
  {
    type metadata accessor for TextLayout();
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1E3C27528()
{
  v1 = *(v0 + 304);
  if (!v1)
  {
    v1 = sub_1E382EF1C();
  }

  return v1;
}

uint64_t sub_1E3C2756C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v0 + 264) == 255)
  {
    return ViewModel.description.getter();
  }

  v1 = OUTLINED_FUNCTION_10_95();
  sub_1E3C27104(v1, v2, v3);
  v4 = OUTLINED_FUNCTION_10_95();
  v7 = sub_1E3C26D74(v4, v5, v6);
  v8 = OUTLINED_FUNCTION_10_95();
  sub_1E37AE010(v8, v9, v10);
  return v7;
}

id sub_1E3C275F8()
{
  v1 = *(v0 + 296);
  v2 = v1;
  if (!v1)
  {
    v2 = sub_1E39BE41C();
  }

  v3 = v1;
  return v2;
}

uint64_t sub_1E3C276A4(int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  LODWORD(v171) = a1;
  *(v5 + 31) = 0;
  *(v5 + 32) = 0;
  v5[264] = -1;
  *(v5 + 34) = 0;
  *(v5 + 35) = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *(v5 + 37) = 0;
  *(v5 + 38) = 0;
  *(v5 + 36) = v10;
  v11 = MEMORY[0x1E69E6158];
  v12 = sub_1E4205CB4();
  sub_1E328438C(a2, &v218);
  v13 = swift_dynamicCast();
  v14 = v13;
  if (v13)
  {
    LODWORD(linkURL) = v13;
    v15 = a5;
    v16 = *(&v214 + 1);
    v17 = v214;
    OUTLINED_FUNCTION_3_0();
    linkURL_8 = a3;
    v18 = a2;
    *(v6 + 248) = v214;
    v19 = v6[264];
    v6[264] = 0;

    v20 = OUTLINED_FUNCTION_34();
    sub_1E37AE010(v20, v21, v19);
    ViewModelKeys.rawValue.getter(14);
    v23 = v22;
    v25 = v24;
    *(&v219 + 1) = v11;
    v218 = __PAIR128__(v16, v17);
    a5 = v15;
    sub_1E329504C(&v218, &v214);
    swift_isUniquelyReferenced_nonNull_native();
    *&v210 = v12;
    sub_1E32A87C0(&v214, v23, v25);
    a2 = v18;
    a3 = linkURL_8;

    v26 = v12;
  }

  else
  {

    sub_1E328438C(a2, &v218);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(a2);

      sub_1E37AE010(*(v5 + 31), *(v5 + 32), v5[264]);

      swift_deallocPartialClassInstance();
      return 0;
    }

    LODWORD(linkURL) = v14;
    v26 = v214;
  }

  v27 = *(v6 + 37);
  *(v6 + 37) = a4;
  v28 = a4;

  *(v6 + 38) = a5;

  if (!sub_1E39BEDCC(v171, v26, a3))
  {

    __swift_destroy_boxed_opaque_existential_1(a2);

    return 0;
  }

  v29 = sub_1E39BDB00();
  if (v29)
  {
    v30 = v29;
    v157 = v28;
    v161 = a2;
    linkURL_8 = a3;
    v171 = a5;
    v31 = MEMORY[0x1E69E7CC0];
    *&v218 = MEMORY[0x1E69E7CC0];
    v32 = sub_1E32AE9B0(v29);
    v33 = 0;
    while (v32 != v33)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x1E6911E60](v33, v30);
        v34 = v35;
      }

      else
      {
        if (v33 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_76;
        }

        v34 = *(v30 + 8 * v33 + 32);
      }

      v6 = (v33 + 1);
      if (__OFADD__(v33, 1))
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      if (*v34 == _TtC8VideosUI13TextViewModel)
      {
        MEMORY[0x1E6910BF0](v35);
        if (*((v218 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v218 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();
        v31 = v218;
        ++v33;
      }

      else
      {

        ++v33;
      }
    }

    v36 = sub_1E32AE9B0(v31);
    for (i = 0; v36 != i; ++i)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x1E6911E60](i, v31);
      }

      else
      {
        if (i >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_78;
        }

        v38 = *(v31 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_77;
      }

      if (!sub_1E3C27528())
      {
        *(v38 + 304) = sub_1E3C27528();
      }
    }

    a3 = linkURL_8;
  }

  *(&v219 + 1) = &unk_1F5D5DD98;
  v220 = &off_1F5D5CA38;
  LOBYTE(v218) = 0;
  v39 = j__OUTLINED_FUNCTION_18();
  v40 = v175;
  v41 = sub_1E39C29F0(&v218, v39 & 1);
  __swift_destroy_boxed_opaque_existential_1(&v218);
  if (linkURL)
  {

LABEL_67:
    sub_1E3CB5F1C();

    __swift_destroy_boxed_opaque_existential_1(a2);

    return v40;
  }

  *(&v219 + 1) = &type metadata for ViewModelKeys;
  v220 = &off_1F5D7BCA8;
  LOBYTE(v218) = 14;
  v42 = MEMORY[0x1E69E7CA0];
  sub_1E3F9F164(&v218);

  if (!*(&v215[0] + 1))
  {
    sub_1E329505C(&v214);
    v64 = &v218;
LABEL_64:
    __swift_destroy_boxed_opaque_existential_1(v64);
    goto LABEL_67;
  }

  sub_1E329504C(&v214, v217);
  __swift_destroy_boxed_opaque_existential_1(&v218);
  v43 = sub_1E328438C(v217, &v218);
  OUTLINED_FUNCTION_3_144(v43, v44, v45, MEMORY[0x1E69E6158], v46, v47, v48, v49, v133, v137, v140, v144, v147, v150, v154, v157, v161, linkURL, linkURL_8, v171, v175, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, *(&v210 + 1), v211, *(&v211 + 1), v212, v213, v214);
  if (swift_dynamicCast())
  {

    v50 = sub_1E328438C(v217, &v218);
    v51 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_3_144(v50, v52, v53, v54, v55, v56, v57, v58, v134, v138, v141, v145, v148, v151, v155, v158, v162, linkURLa, linkURL_8a, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v210, *(&v210 + 1), v211, *(&v211 + 1), v212, v213, v214);
    if (swift_dynamicCast())
    {
      v6 = v28;
      v59 = v214;
      if (v41)
      {
        sub_1E3280A90(0, &qword_1EE23B1B0);
        v60 = sub_1E37631D4();
        __swift_destroy_boxed_opaque_existential_1(v217);
        v40 = v175;
        OUTLINED_FUNCTION_3_0();
        v61 = *(v175 + 248);
        v62 = *(v175 + 256);
        *(v175 + 248) = v60;
        *(v175 + 256) = 0;
        v63 = *(v175 + 264);
        *(v175 + 264) = 2;
        sub_1E37AE010(v61, v62, v63);
      }

      else
      {
        sub_1E3CB6544(v214, *(&v214 + 1), &v218);
        v102 = *(&v218 + 1);
        if (*(&v218 + 1))
        {
          v160 = *(&v219 + 1);
          v161 = a2;
          v103 = v221;
          linkURLc = v219;
          v104 = v218;

          *&v210 = v104;
          *(&v210 + 1) = v102;
          v214 = v210;
          *&v216[0] = 32;
          *(&v216[0] + 1) = 0xE100000000000000;
          v143 = sub_1E32822E0();
          v136 = v51;
          OUTLINED_FUNCTION_25();
          v105 = sub_1E42071F4();
          v107 = v106;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35760);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1E4297BE0;
          v109 = *MEMORY[0x1E69DB650];
          *(inited + 32) = *MEMORY[0x1E69DB650];
          v110 = v109;
          v153 = sub_1E3E60700();
          v111 = *v153;
          *(inited + 40) = *v153;
          type metadata accessor for Key(0);
          sub_1E3280A90(0, &qword_1EE23AE20);
          OUTLINED_FUNCTION_0_186();
          sub_1E3C2A244(v112, v113);
          v114 = v111;
          v115 = sub_1E4205CB4();
          *&v214 = 32;
          *(&v214 + 1) = 0xE100000000000000;
          MEMORY[0x1E69109E0](v105, v107);

          MEMORY[0x1E69109E0](41154, 0xA200000000000000);

          v116 = v214;
          v117 = sub_1E3C28388(v115);

          v118 = objc_allocWithZone(MEMORY[0x1E696AD40]);
          v31 = sub_1E3C2A044(v116, *(&v116 + 1), v117);
          v119._countAndFlagsBits = v105;
          v119._object = v107;
          v120._countAndFlagsBits = linkURLc;
          v120._object = v160;
          NSMutableAttributedString.setAsLink(textToFind:linkURL:)(v119, v120);

          if (v103)
          {

            sub_1E3782C70(&v210);

            sub_1E3280A90(0, &qword_1EE23AE00);
            v121 = sub_1E3834BC8();
            v28 = v6;
            v40 = v175;
            if (v121)
            {
              v122 = v121;
              v123 = [v121 vui:*v153 imageWithColor:{v136, v143, v143, v143}];
              if (v123)
              {
                v124 = v123;
                v125 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
                [v125 setImage_];
                v126 = [objc_opt_self() attributedStringWithAttachment_];
                [v31 appendAttributedString_];

                __swift_destroy_boxed_opaque_existential_1(v217);
              }

              else
              {
                __swift_destroy_boxed_opaque_existential_1(v217);
              }
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1(v217);
            }
          }

          else
          {
LABEL_79:
            sub_1E3782C70(&v210);

            __swift_destroy_boxed_opaque_existential_1(v217);
            v40 = v175;
            v28 = v6;
          }

          OUTLINED_FUNCTION_3_0();
          v130 = *(v40 + 248);
          v131 = *(v40 + 256);
          *(v40 + 248) = v31;
          *(v40 + 256) = 0;
          v132 = *(v40 + 264);
          *(v40 + 264) = 3;
          sub_1E37AE010(v130, v131, v132);
          a2 = v161;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v217);
          OUTLINED_FUNCTION_3_0();
          v127 = *(v175 + 248);
          v128 = *(v175 + 256);
          *(v175 + 248) = v59;
          v129 = *(v175 + 264);
          *(v175 + 264) = 0;
          sub_1E37AE010(v127, v128, v129);
          v40 = v175;
        }
      }

      goto LABEL_67;
    }

    v40 = v175;
  }

  sub_1E328438C(v217, &v218);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF311C8);
  OUTLINED_FUNCTION_3_144(v65, v66, v67, v65, v68, v69, v70, v71, v134, v138, v141, v145, v148, v151, v155, v158, v162, linkURLa, linkURL_8a, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v210, *(&v210 + 1), v211, *(&v211 + 1), v212, v213, v214);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    v64 = v217;
    goto LABEL_64;
  }

  v173 = a5;
  v163 = a2;
  v73 = v214;
  v206 = MEMORY[0x1E69E7CC0];
  v74 = *(v214 + 16);
  if (!v74)
  {

    v98 = MEMORY[0x1E69E7CC0];
LABEL_66:
    __swift_destroy_boxed_opaque_existential_1(v217);
    OUTLINED_FUNCTION_3_0();
    v99 = *(v40 + 248);
    v100 = *(v40 + 256);
    *(v40 + 248) = v98;
    *(v40 + 256) = 0;
    v101 = *(v40 + 264);
    *(v40 + 264) = 1;
    sub_1E37AE010(v99, v100, v101);
    a2 = v163;
    goto LABEL_67;
  }

  v159 = v28;
  linkURLb = MEMORY[0x1E69E7CC0];
  linkURL_8b = a3;
  v75 = 0;
  while (v75 < *(v73 + 16))
  {
    sub_1E328438C(v73 + 32 + 32 * v75, &v218);
    v76 = OUTLINED_FUNCTION_88();
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(v76);
    OUTLINED_FUNCTION_3_144(v77, v78, v79, v77, v80, v81, v82, v83, v135, v139, v142, v146, v149, v152, v156, v159, v163, linkURLb, linkURL_8b, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v210, *(&v210 + 1), v211, *(&v211 + 1), v212, v213, v214);
    result = swift_dynamicCast();
    if (result)
    {
      v84 = 0;
      v85 = 1 << *(v214 + 32);
      v86 = (v85 + 63) >> 6;
      v87 = 64;
      if (!v86)
      {
        goto LABEL_52;
      }

      while (1)
      {
        v88 = *(v214 + v87);
        if (v88)
        {
          break;
        }

        v87 += 8;
        v84 -= 64;
        if (!--v86)
        {
          goto LABEL_52;
        }
      }

      v89 = __clz(__rbit64(v88));
      if (v89 - v85 != v84)
      {
        if (-v84 < 0)
        {
          goto LABEL_84;
        }

        v90 = v89 - v84;
        if (v90 >= v85)
        {
          goto LABEL_84;
        }

        if (((*(v214 + v87) >> v89) & 1) == 0)
        {
          goto LABEL_85;
        }

        v91 = v42;
        v92 = (*(v214 + 48) + 16 * v90);
        v94 = *v92;
        v93 = v92[1];
        sub_1E328438C(*(v214 + 56) + 32 * v90, &v211);

        sub_1E329504C(&v211, v215);
        *&v218 = v94;
        *(&v218 + 1) = v93;
        sub_1E329504C(v215, &v219);
        v95 = v218;
        sub_1E329504C(&v219, v216);
        v96 = sub_1E3A7CD30(v95, *(&v95 + 1), v216, v176);

        if (v96)
        {

          MEMORY[0x1E6910BF0](v97);
          if (*((v206 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v206 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E42062F4();
          }

          sub_1E4206324();

          result = __swift_destroy_boxed_opaque_existential_1(v216);
          linkURLb = v206;
          v42 = v91;
        }

        else
        {
          result = __swift_destroy_boxed_opaque_existential_1(v216);
          v42 = v91;
        }
      }

      else
      {
LABEL_52:
      }
    }

    if (++v75 == v74)
    {

      v98 = linkURLb;
      v28 = v159;
      v40 = v176;
      goto LABEL_66;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

uint64_t sub_1E3C28388(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29398);
    v1 = sub_1E4207744();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  if (!v4)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v26 = *(*(a1 + 56) + v10);
    v12 = v26;
    sub_1E3280A90(0, &qword_1EE23AE20);
    v13 = v11;
    v14 = v12;
    swift_dynamicCast();
    sub_1E329504C((v27 + 8), v25);
    sub_1E329504C(v25, v27);
    sub_1E4205F14();
    sub_1E4207B44();
    sub_1E4206014();
    v15 = sub_1E4207BA4();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v6 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v6 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v6 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v6 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v19) = v13;
    result = sub_1E329504C(v27, (*(v1 + 56) + 32 * v19));
    ++*(v1 + 16);
  }

  while (v4);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1E3C2863C(uint64_t a1)
{
  if (*a1 != _TtC8VideosUI13TextViewModel)
  {
    goto LABEL_7;
  }

  if ((sub_1E39C0504(v3) & 1) == 0)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v4 = *(v1 + 264);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v5 = *(a1 + 248);
  v6 = *(a1 + 256);
  v7 = *(a1 + 264);
  if (v4 == 255)
  {
    v25 = OUTLINED_FUNCTION_1_22();
    sub_1E3C270F0(v25, v26, v27);

    if (v7 == 255)
    {
      v17 = 1;
      return v17 & 1;
    }

    v28 = OUTLINED_FUNCTION_1_22();
    sub_1E37AE010(v28, v29, v30);
    goto LABEL_7;
  }

  if (v7 == 255)
  {
LABEL_6:

LABEL_7:
    v17 = 0;
    return v17 & 1;
  }

  v8 = OUTLINED_FUNCTION_1_22();
  sub_1E3C270F0(v8, v9, v10);
  v11 = OUTLINED_FUNCTION_11_103();
  sub_1E3C270F0(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_11_103();
  v17 = sub_1E3C26EE8(v14, v15, v16, v5, v6, v7);
  v18 = OUTLINED_FUNCTION_1_22();
  sub_1E37AE010(v18, v19, v20);

  v21 = OUTLINED_FUNCTION_11_103();
  sub_1E37AE010(v21, v22, v23);
  return v17 & 1;
}

uint64_t sub_1E3C2877C(void *a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_14_0();
  *(v3 + 248) = a1;
  *(v3 + 256) = a2;
  *(v3 + 264) = a3;
  sub_1E3C270F0(a1, a2, a3);
  sub_1E3CB5F1C();
  return OUTLINED_FUNCTION_1_22();
}

uint64_t sub_1E3C287F4(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v142[6] = sub_1E3C274DC();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B848);
    sub_1E4148C68(sub_1E3C29A90, v4, v137);

    v3 = v137[0];
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v6 = *(v1 + 248);
  v5 = *(v1 + 256);
  switch(*(v1 + 264))
  {
    case 0:
      v139 = &unk_1F5D5DAC8;
      v140 = &off_1F5D5C998;
      LOBYTE(v137[0]) = 46;

      v7 = OUTLINED_FUNCTION_88();
      sub_1E3C270F0(v7, v8, 0);
      v9 = j__OUTLINED_FUNCTION_18();
      sub_1E39C29F0(v137, v9 & 1);
      v10 = __swift_destroy_boxed_opaque_existential_1(v137);
      v11 = (*(*v3 + 2408))(v10);
      v12 = OUTLINED_FUNCTION_88();
      v16 = sub_1E3C2A180(v12, v13, v14, v15, v11);

      if (!v16)
      {
        goto LABEL_139;
      }

      goto LABEL_137;
    case 1:
      v27 = objc_allocWithZone(MEMORY[0x1E696AD40]);

      v123 = v5;
      sub_1E3C270F0(v6, v5, 1);
      v133 = [v27 init];
      result = sub_1E32AE9B0(v6);
      v136 = result;
      if (!result)
      {
        goto LABEL_134;
      }

      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v29 = 0;
      v135 = v6 & 0xC000000000000001;
      v30 = *(MEMORY[0x1E69DDCE0] + 16);
      v122 = *MEMORY[0x1E69DB650];
      v134 = v6;
      v124 = v2;
      break;
    case 2:

      v17 = OUTLINED_FUNCTION_88();
      sub_1E3C270F0(v17, v18, 2);
      v19 = sub_1E3C29AF8(v3, v6);
      v20 = (*(*v3 + 2408))();
      v21 = [v20 0x1FCA6139CLL];

      v22 = OUTLINED_FUNCTION_88();
      sub_1E37AE010(v22, v23, 2);

      OUTLINED_FUNCTION_3_0();
      v24 = *(v2 + 280);
      *(v2 + 280) = v21;
      goto LABEL_138;
    case 3:

      v25 = OUTLINED_FUNCTION_88();
      sub_1E3C270F0(v25, v26, 3);

      OUTLINED_FUNCTION_3_0();
      v24 = *(v1 + 280);
      *(v1 + 280) = v6;
      goto LABEL_138;
    default:

      goto LABEL_139;
  }

  do
  {
    if (v135)
    {
      v31 = MEMORY[0x1E6911E60](v29, v6);
    }

    else
    {
      v31 = *(v6 + 8 * v29 + 32);
    }

    if (*v31 != _TtC8VideosUI13TextViewModel)
    {
      goto LABEL_35;
    }

    if (sub_1E3C274DC())
    {
      if (v3 && ([v3 copyWithZone_], sub_1E4207264(), swift_unknownObjectRelease(), type metadata accessor for TextLayout(), (swift_dynamicCast() & 1) != 0))
      {
        v32 = v142[0];
        sub_1E3C37FB4();
      }

      else
      {

        v32 = 0;
      }
    }

    else
    {

      v32 = v3;
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v33 = *(v31 + 264);
    if (!*(v31 + 264) && v32)
    {
      v35 = *(v31 + 248);
      v34 = *(v31 + 256);
      OUTLINED_FUNCTION_12_6();
      v37 = *(v36 + 2408);
      v38 = sub_1E3C27104(v35, v34, 0);
      v39 = v37(v38);
      v40 = sub_1E3C2A11C(v35, v34, v39);

      if (v40)
      {
        goto LABEL_29;
      }

      v33 = *(v31 + 264);
    }

    if (v33 == 2)
    {
      if (v32)
      {
        v41 = *(v31 + 248);
        v42 = *(v31 + 256);
        sub_1E3C27104(v41, v42, 2);
        v43 = sub_1E3C29AF8(v32, v41);
        v44 = (*(*v32 + 2408))();
        v40 = [v44 attributedStringWithAttributedString:v43 view:0 updateTextColor:0];
        sub_1E37AE010(v41, v42, 2);

LABEL_29:

        goto LABEL_33;
      }
    }

    else
    {

      if (*(v31 + 264) == 3)
      {
        v40 = *(v31 + 248);
        sub_1E3C27104(v40, *(v31 + 256), 3);
        goto LABEL_33;
      }
    }

    v40 = 0;
LABEL_33:
    v6 = v134;

    if (v40)
    {
      [v133 appendAttributedString_];

      goto LABEL_127;
    }

LABEL_35:
    type metadata accessor for ImageViewModel();
    v45 = swift_dynamicCastClass();
    if (!v45)
    {
      goto LABEL_126;
    }

    v46 = v45;
    v47 = *(*v45 + 392);

    v49 = v47(v48);

    if (v49)
    {
      type metadata accessor for ImageLayout();
      OUTLINED_FUNCTION_20_2();
      v50 = swift_dynamicCastClass();
      if (!v50)
      {
      }
    }

    else
    {
      v50 = 0;
    }

    v137[0] = v50;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B850);
    sub_1E4148C68(sub_1E3C29AC4, v51, &v141);

    v52 = v141;
    v53.n128_f64[0] = OUTLINED_FUNCTION_1_36();
    v54 = (*(*v46 + 1000))(0, v53);
    if (v55 == 255)
    {
      goto LABEL_123;
    }

    v56 = v54;
    if (v55)
    {
      goto LABEL_122;
    }

    sub_1E3C2A288(v54, 0);
    v57 = [v56 type];
    v131 = v56;
    v58 = [v56 name];
    v129 = sub_1E4205F14();
    v132 = v59;

    v60 = (*(*v46 + 392))();
    if (v57 == 1)
    {
      if (v60)
      {
        type metadata accessor for ImageLayout();
        OUTLINED_FUNCTION_20_2();
        v61 = swift_dynamicCastClass();
        if (!v61)
        {
        }
      }

      else
      {
        v61 = 0;
      }

      v68 = objc_opt_self();
      v69 = sub_1E4205ED4();
      v70 = [v68 imageForResource:v69 accessibilityDescription:0];

      if (!v70)
      {
        v73 = 0;
        v82 = v131;
LABEL_77:

        goto LABEL_111;
      }

      v71 = objc_allocWithZone(MEMORY[0x1E69DB7F0]);
      v72 = v70;
      v73 = [v71 init];
      [v73 setImage_];
      if (v61)
      {
        OUTLINED_FUNCTION_71_2();
        v75 = COERCE_DOUBLE((*(v74 + 200))());
        if (v76)
        {
          v77 = 0.0;
        }

        else
        {
          v77 = v75;
        }

        v78 = COERCE_DOUBLE((*(*v61 + 304))());
        if (v79)
        {
          v80 = 0.0;
        }

        else
        {
          v80 = v78;
        }

        (*(*v61 + 152))(v137);
        if ((v140 & 1) == 0)
        {
          v81 = v138;
          v82 = v131;
LABEL_76:
          [v73 setBounds_];

          v6 = v134;
          goto LABEL_77;
        }
      }

      else
      {
        v80 = 0.0;
        v77 = 0.0;
      }

      v82 = v131;
      v81 = v30;
      goto LABEL_76;
    }

    if (!v60)
    {
      goto LABEL_69;
    }

    type metadata accessor for ImageLayout();
    OUTLINED_FUNCTION_20_2();
    if (!swift_dynamicCastClass())
    {

LABEL_69:
      v128 = 0;
      v125 = 1;
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_71_2();
    v63 = *(v62 + 2064);

    if (v63(v64) == 27 && sub_1E3C274DC())
    {
      OUTLINED_FUNCTION_12_6();
      if ((*(v65 + 1688))() != 27)
      {
        OUTLINED_FUNCTION_71_2();
        (*(v66 + 2072))();
      }
    }

    OUTLINED_FUNCTION_71_2();
    v128 = (*(v67 + 1944))();
    v125 = 0;
    v6 = v134;
LABEL_70:
    if (sub_1E3C274DC())
    {
      v83 = objc_opt_self();
      OUTLINED_FUNCTION_12_6();
      v85 = (*(v84 + 2408))();
      v86 = [v83 vui:v85 fontFromTextLayout:?];

      v127 = v86;
      if (v86)
      {
        OUTLINED_FUNCTION_12_6();
        v88 = (*(v87 + 1712))();
        if (v88 == 13)
        {
          v89 = 0;
        }

        else
        {
          LOBYTE(v137[0]) = v88;
          LOBYTE(v142[0]) = 0;
          sub_1E376C1A8();
          v89 = sub_1E4205E84();
        }

        if (v125 & 1) != 0 || (OUTLINED_FUNCTION_71_2(), v94 = (*(v93 + 2016))(), (v95))
        {
          v96 = -1;
        }

        else
        {
          v96 = v94;
        }

        v97 = [objc_opt_self() configurationWithFont:v127 scale:v96];
        v90 = v97;
        if (v128)
        {
          if (v89)
          {

            sub_1E3280A90(0, &qword_1EE23AE00);
            v90 = v128;
LABEL_92:
            v6 = v134;
            goto LABEL_93;
          }

          v98 = v97;
          v90 = [v128 configurationByApplyingConfiguration_];
        }

        sub_1E3280A90(0, &qword_1EE23AE00);
        v128 = v90;
        goto LABEL_92;
      }

      v6 = v134;
    }

    sub_1E3280A90(0, &qword_1EE23AE00);
    if (v128)
    {
      v127 = 0;
      v90 = v128;
LABEL_93:
      v91 = v52;
      v92 = v90;
      goto LABEL_94;
    }

    v91 = v52;
    v92 = 0;
    v127 = 0;
    v128 = 0;
LABEL_94:

    v99 = sub_1E37E96E8(v129, v132, v92);
    if (v99)
    {
      v52 = v91;
      v130 = v99;
      if (v125)
      {
        v100 = v99;
        v101 = 0.0;
        v2 = v124;
      }

      else
      {
        v126 = v91;
        OUTLINED_FUNCTION_71_2();
        v103 = *(v102 + 672);
        v100 = v104;
        v105 = v103();
        v2 = v124;
        if (v105)
        {

          v106 = sub_1E3C7762C(2u);
          v100 = v106;
        }

        OUTLINED_FUNCTION_71_2();
        v52 = v126;
        if ((*(v107 + 480))() != 4 && (sub_1E3C29EC4() & 1) != 0 && v127)
        {
          v109 = v127;
          [v109 capHeight];
          [v100 size];
          VUIRoundValue();
          v111 = v110;

          v101 = v111 * 0.5;
        }

        else
        {
          OUTLINED_FUNCTION_71_2();
          (*(v108 + 152))(v137);
          if (v140)
          {
            v101 = 0.0;
          }

          else
          {
            v101 = v138;
          }
        }
      }

      v73 = [objc_opt_self() textAttachmentWithImage_];
      if (v73)
      {
        [v100 size];
        v113 = v112;
        [v100 size];
        [v73 setBounds_];
      }

      v82 = v131;

      v6 = v134;
      v99 = v130;
    }

    else
    {
      v73 = 0;
      v82 = v131;
      v52 = v91;
      v2 = v124;
    }

LABEL_111:

    sub_1E379098C(v82, 0);
    if (!v73)
    {
      v54 = v82;
      v55 = 0;
LABEL_122:
      sub_1E379098C(v54, v55);
LABEL_123:
      v115 = 0;
      goto LABEL_124;
    }

    sub_1E3280A90(0, &unk_1EE23AFE0);
    v115 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    if (v52)
    {
      v116 = (*(*v52 + 672))();
      if (v116)
      {
        v117 = v116;
        [v115 addAttribute:v122 value:v116 range:{0, objc_msgSend(v115, sel_length)}];
      }
    }

    LOBYTE(v142[0]) = 2;
    (*(*v46 + 776))(v137, v142, &unk_1F5D5D408, &off_1F5D5C818);
    if (v139)
    {
      if (swift_dynamicCast())
      {
        sub_1E3280A90(0, &qword_1EE23B1B0);
        v118 = sub_1E3763FC8();
        if (v52 && (v119 = (*(*v52 + 1896))(), v119 != 2) && sub_1E3B65750(v119 & 1, 1))
        {
          [v115 insertAttributedString:v118 atIndex:1];
        }

        else
        {
          [v115 insertAttributedString:v118 atIndex:0];
        }

        sub_1E379098C(v131, 0);
      }

      else
      {

        sub_1E379098C(v131, 0);
      }
    }

    else
    {

      sub_1E379098C(v131, 0);
      sub_1E329505C(v137);
    }

LABEL_124:

    if (v115)
    {
      [v133 appendAttributedString_];

      goto LABEL_127;
    }

LABEL_126:

LABEL_127:
    ++v29;
  }

  while (v136 != v29);
LABEL_134:
  sub_1E37AE010(v6, v123, 1);
  [v133 copy];
  sub_1E4207264();

  swift_unknownObjectRelease();

  sub_1E3280A90(0, &qword_1EE23B1B0);
  if (swift_dynamicCast())
  {
    v16 = v142[0];
  }

  else
  {
    v16 = 0;
  }

LABEL_137:
  OUTLINED_FUNCTION_3_0();
  v24 = *(v2 + 280);
  *(v2 + 280) = v16;
LABEL_138:

LABEL_139:
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v120 = *(v2 + 280);
  v121 = v120;
  return v120;
}

uint64_t sub_1E3C29A90@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TextLayout();
  result = sub_1E383BCC0();
  *a1 = result;
  return result;
}

uint64_t sub_1E3C29AC4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ImageLayout();
  result = sub_1E3BD61D8();
  *a1 = result;
  return result;
}

uint64_t sub_1E3C29AF8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = objc_opt_self();
  v7 = (*(*a1 + 2408))();
  v8 = [v6 vui:v7 fontFromTextLayout:?];

  if (!v8)
  {
    return 0;
  }

  if (!a2)
  {

    return 0;
  }

  v9 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v10 = a2;
  v11 = [v9 initWithAttributedString_];
  result = [v11 length];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    v14 = swift_allocObject();
    v14[2] = v3;
    v14[3] = v8;
    v14[4] = v11;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1E3C2A2F0;
    *(v15 + 24) = v14;
    v21[4] = sub_1E3C2A654;
    v21[5] = v15;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 1107296256;
    v21[2] = sub_1E3C29F74;
    v21[3] = &block_descriptor_79;
    v16 = _Block_copy(v21);
    v17 = v11;

    v18 = v8;

    [v17 enumerateAttributesInRange:0 options:v13 usingBlock:{0, v16}];
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v20 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];

      return v20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3C29DE0()
{
  sub_1E37AE010(*(v0 + 248), *(v0 + 256), *(v0 + 264));
}

uint64_t sub_1E3C29E34()
{
  v0 = ViewModel.deinit();
  sub_1E37AE010(*(v0 + 248), *(v0 + 256), *(v0 + 264));

  return v0;
}

uint64_t sub_1E3C29E94()
{
  v0 = sub_1E3C29E34();

  return MEMORY[0x1EEE6BDC0](v0, 312, 7);
}

uint64_t sub_1E3C29EC4()
{
  sub_1E3C2A29C();
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

uint64_t sub_1E3C29F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_1E3C2A244(&qword_1EE23B100, type metadata accessor for Key);
  v9 = sub_1E4205C64();
  v8(v9, a3, a4, a5);
}

id sub_1E3C2A044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E4205ED4();

  if (a3)
  {
    type metadata accessor for Key(0);
    sub_1E3C2A244(&qword_1EE23B100, type metadata accessor for Key);
    v6 = sub_1E4205C44();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6];

  return v7;
}

id sub_1E3C2A11C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  v5 = [a3 attributedStringWithString_];

  return v5;
}

id sub_1E3C2A180(uint64_t a1, uint64_t a2, char a3, char a4, void *a5)
{
  v8 = sub_1E4205ED4();

  v9 = [a5 attributedStringWithString:v8 isHighlighted:a3 & 1 isDisabled:a4 & 1];

  return v9;
}

uint64_t sub_1E3C2A244(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1E3C2A288(id result, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
    return result;
  }

  return result;
}

unint64_t sub_1E3C2A29C()
{
  result = qword_1EE287240;
  if (!qword_1EE287240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE287240);
  }

  return result;
}

uint64_t sub_1E3C2A2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v43 = *(v3 + 24);
  v44 = *(v3 + 32);
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v46 = *MEMORY[0x1E69DB648];

  v12 = 0;
  v40 = a3;
  for (i = result; v9; result = __swift_destroy_boxed_opaque_existential_1(&v49))
  {
    v13 = v12;
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v13 << 6);
    v16 = *(*(v5 + 48) + 8 * v15);
    sub_1E328438C(*(v5 + 56) + 32 * v15, v48);
    *&v49 = v16;
    sub_1E329504C(v48, (&v49 + 8));
    v17 = v16;
LABEL_10:
    v52[0] = v49;
    v52[1] = v50;
    v53 = v51;
    v18 = v49;
    if (!v49)
    {
    }

    sub_1E329504C((v52 + 8), &v49);
    v19 = sub_1E4205F14();
    v21 = v20;
    if (v19 == sub_1E4205F14() && v21 == v22)
    {
    }

    else
    {
      v24 = sub_1E42079A4();

      if ((v24 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    sub_1E328438C(&v49, v48);
    sub_1E3280A90(0, &qword_1ECF29388);
    if (swift_dynamicCast())
    {
      v25 = [v47 fontDescriptor];
      v42 = [v25 symbolicTraits];

      v26 = [v43 fontDescriptor];
      v27 = [v26 symbolicTraits];

      v28 = *sub_1E3E932F8();
      v29 = *sub_1E3E93304();
      v30 = sub_1E3DA9F20();
      if (!v30 || ((v31 = v30, (v28 & ~v27) != 0) ? (v32 = (v28 & ~v42) == 0) : (v32 = 0), v32 ? (v33 = v28) : (v33 = 0), (v34 = v33 | v27, (v29 & ~v34) != 0) ? (v35 = (v29 & ~v42) == 0) : (v35 = 0), v35 ? (v36 = v29) : (v36 = 0), (v37 = [v30 fontDescriptorWithSymbolicTraits_], v31, !v37) || (v38 = sub_1E3DA9F68(v37, 0.0)) == 0))
      {
        v38 = v43;
      }

      v39 = v38;
      a3 = v40;
      [v44 addAttribute:v46 value:v38 range:{a2, v40, v40}];

      v5 = i;
      goto LABEL_37;
    }

LABEL_36:
    [v44 removeAttribute:v18 range:{a2, a3, v40}];
    v39 = v18;
LABEL_37:
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      v9 = 0;
      v51 = 0;
      v49 = 0u;
      v50 = 0u;
      goto LABEL_10;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3C2A67C()
{
  v0 = sub_1E4207784();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3C2A6C8(char a1)
{
  result = 0x6669636570736E75;
  switch(a1)
  {
    case 1:
      result = 0x5548726579616C70;
      break;
    case 2:
      result = 0x65697669746C756DLL;
      break;
    case 3:
      result = 0x6C6C41656573;
      break;
    case 4:
      result = 0x686372616573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3C2A780(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = a1;
  v5 = 0x6669636570736E75;
  v6 = 0xEB00000000646569;
  switch(v4)
  {
    case 1:
      v5 = 0x5548726579616C70;
      v6 = 0xE900000000000044;
      break;
    case 2:
      v5 = 0x65697669746C756DLL;
      v6 = 0xE900000000000077;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v5 = 0x6C6C41656573;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v5 = 0x686372616573;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x5548726579616C70;
      v2 = 0xE900000000000044;
      break;
    case 2:
      v3 = 0x65697669746C756DLL;
      v2 = 0xE900000000000077;
      break;
    case 3:
      v2 = 0xE600000000000000;
      v3 = 0x6C6C41656573;
      break;
    case 4:
      v2 = 0xE600000000000000;
      v3 = 0x686372616573;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3C2A914(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_27_0();
  sub_1E4206254();
  OUTLINED_FUNCTION_27_0();
  sub_1E4206254();
  if (v8 == v6 && v9 == v7)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  return v4 & 1;
}

uint64_t sub_1E3C2A9C4(char a1)
{
  sub_1E4207B44();
  sub_1E3C2A6C8(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3C2AA30()
{
  sub_1E4206014();
}

uint64_t sub_1E3C2AB18(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3C2A6C8(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3C2AB78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3C2A67C();
  *a1 = result;
  return result;
}

uint64_t sub_1E3C2ABA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3C2A6C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3C2ABD4()
{
  sub_1E42074B4();
  MEMORY[0x1E69109E0](0x73616C43657A6973, 0xEB00000000203A73);
  sub_1E4207614();
  MEMORY[0x1E69109E0](0x6D6563616C70202CLL, 0xED0000203A746E65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35768);
  v0 = sub_1E4205F84();
  MEMORY[0x1E69109E0](v0);

  return 0;
}

BOOL sub_1E3C2ACD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E3C2A914(a1, a4, sub_1E3741588);
  v8 = a5 == 0;
  if (a5)
  {
    v9 = a2 == a5;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  if (a2)
  {
    v8 = v10;
  }

  return (v7 & 1) != 0 && v8;
}

uint64_t sub_1E3C2AD40(uint64_t result)
{
  if (result)
  {
    v1 = (*(*result + 1000))();
    if (!v2)
    {
      return 0;
    }

    v3 = v2;
    if (v1 == sub_1E4205F14() && v3 == v4)
    {
    }

    else
    {
      OUTLINED_FUNCTION_13_8();
      v6 = sub_1E42079A4();

      if ((v6 & 1) == 0)
      {
        return 0;
      }
    }

    return 3;
  }

  return result;
}

char *sub_1E3C2AE50()
{
  if (qword_1EE29AD10 != -1)
  {
    OUTLINED_FUNCTION_1_179();
  }

  return &byte_1EE2AAD70;
}

id sub_1E3C2AEA4(uint64_t a1, SEL *a2, _BYTE *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

char *sub_1E3C2AEE0()
{
  if (qword_1EE29DCC8 != -1)
  {
    OUTLINED_FUNCTION_25_65();
  }

  return &byte_1EE2AAE88;
}

double sub_1E3C2AF20()
{
  OUTLINED_FUNCTION_147_4();
  v1.n128_f64[0] = sub_1E3C2AF54(0, v0);
  *&result = OUTLINED_FUNCTION_24_61(v2, v3, v4, v5, v6, v7, v8, v9, v11, v1, v12, v13).n128_u64[0];
  return result;
}

double sub_1E3C2AF54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EE29AD10 != -1)
  {
    swift_once();
  }

  if (byte_1EE2AAD70 == 1)
  {
    v5 = sub_1E3C2F454();
  }

  else
  {
    v6 = sub_1E3C2F454();
    sub_1E3C2FBB4(a1, v6, &v17);

    if (v18)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35848);
      if (swift_dynamicCast())
      {
        v22 = 0;
        v15 = v19;
        v16 = v20;
        v10 = v21[0];
        v13 = *&v21[8];
        v14 = *&v21[24];
        v11 = v21[40];
        v12 = (*(*v2 + 1512))();
        if (sub_1E3C2A914(v12, 3, sub_1E3C3DDA8))
        {
          v23 = v13;
          v24 = v14;
        }

        else
        {
          v23 = v15;
          v24 = v16;
          v11 = v10;
        }

        goto LABEL_14;
      }

      LOBYTE(v23) = 1;
      v19 = 0u;
      v20 = 0u;
      memset(v21, 0, sizeof(v21));
      v22 = 1;
    }

    else
    {
      sub_1E325F6F0(&v17, &unk_1ECF296E0);
    }

    v5 = v2[6];
  }

  sub_1E3C2FBB4(a1, v5, &v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  type metadata accessor for UIEdgeInsets();
  v7 = swift_dynamicCast();
  if ((v7 & 1) == 0)
  {
    v23 = 0u;
    v24 = 0u;
  }

  v11 = v7 ^ 1;
LABEL_14:
  result = *&v23;
  v9 = v24;
  *a2 = v23;
  *(a2 + 16) = v9;
  *(a2 + 32) = v11 & 1;
  return result;
}

uint64_t sub_1E3C2B18C(uint64_t a1)
{
  if (qword_1EE29AD10 != -1)
  {
    swift_once();
  }

  if (byte_1EE2AAD70 == 1)
  {
    v3 = sub_1E3C2F454();
  }

  else
  {
    v4 = sub_1E3C2F454();
    sub_1E3C2FBB4(a1, v4, &v9);

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35838);
      if (swift_dynamicCast())
      {
        v5 = v11;
        if (v11 != 8)
        {
          v6 = (*(*v1 + 1512))();
          if ((sub_1E3C2A914(v6, 3, sub_1E3C3DDA8) & 1) == 0)
          {
            LOBYTE(v11) = v5;
            return v11;
          }

          v7 = v5 >> 8;
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v9, &unk_1ECF296E0);
    }

    v3 = v1[6];
  }

  sub_1E3C2FBB4(a1, v3, &v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    LOBYTE(v7) = 7;
LABEL_14:
    LOBYTE(v11) = v7;
  }

  return v11;
}

uint64_t sub_1E3C2B358(uint64_t a1)
{
  if (qword_1EE29AD10 != -1)
  {
    swift_once();
  }

  if (byte_1EE2AAD70 == 1)
  {
    v3 = sub_1E3C2F454();
  }

  else
  {
    v4 = sub_1E3C2F454();
    sub_1E3C2FBB4(a1, v4, &v9);

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35828);
      if (swift_dynamicCast())
      {
        v5 = v11;
        if (v11 != 19)
        {
          v6 = (*(*v1 + 1512))();
          if ((sub_1E3C2A914(v6, 3, sub_1E3C3DDA8) & 1) == 0)
          {
            LOBYTE(v11) = v5;
            return v11;
          }

          v7 = v5 >> 8;
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v9, &unk_1ECF296E0);
    }

    v3 = v1[6];
  }

  sub_1E3C2FBB4(a1, v3, &v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    LOBYTE(v7) = 18;
LABEL_14:
    LOBYTE(v11) = v7;
  }

  return v11;
}

uint64_t sub_1E3C2B524()
{
  OUTLINED_FUNCTION_139_6();
  if (qword_1EE29AD10 != -1)
  {
    OUTLINED_FUNCTION_1_179();
  }

  OUTLINED_FUNCTION_8_104();
  if (v3)
  {
    sub_1E3C2F454();
  }

  else
  {
    v4 = sub_1E3C2F454();
    sub_1E3C2FBB4(v1, v4, &v10);

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v2);
      if (OUTLINED_FUNCTION_21_4())
      {
        v5 = v12;
        OUTLINED_FUNCTION_82_11();
        if (!v3)
        {
          (*(*v0 + 1512))();
          OUTLINED_FUNCTION_4_152();
          if ((sub_1E3C2A914(v6, 3, v7) & 1) == 0)
          {
            LOBYTE(v12) = v5;
            return v12;
          }

          v8 = v5 >> 8;
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v10, &unk_1ECF296E0);
    }

    OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_76_13(&v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  if ((OUTLINED_FUNCTION_153_4() & 1) == 0)
  {
    LOBYTE(v8) = 4;
LABEL_15:
    LOBYTE(v12) = v8;
  }

  return v12;
}

uint64_t sub_1E3C2B6A0(uint64_t a1)
{
  if (qword_1EE29AD10 != -1)
  {
    swift_once();
  }

  if (byte_1EE2AAD70 == 1)
  {
    v3 = sub_1E3C2F454();
  }

  else
  {
    v4 = sub_1E3C2F454();
    sub_1E3C2FBB4(a1, v4, &v9);

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35818);
      if (swift_dynamicCast())
      {
        v5 = v11;
        if (v11 != 3)
        {
          v6 = (*(*v1 + 1512))();
          if ((sub_1E3C2A914(v6, 3, sub_1E3C3DDA8) & 1) == 0)
          {
            LOBYTE(v11) = v5;
            return v11;
          }

          v7 = v5 >> 8;
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v9, &unk_1ECF296E0);
    }

    v3 = v1[6];
  }

  sub_1E3C2FBB4(a1, v3, &v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    LOBYTE(v7) = 2;
LABEL_14:
    LOBYTE(v11) = v7;
  }

  return v11;
}

uint64_t sub_1E3C2B86C(uint64_t a1)
{
  if (qword_1EE29AD10 != -1)
  {
    swift_once();
  }

  if (byte_1EE2AAD70 == 1)
  {
    v3 = sub_1E3C2F454();
  }

  else
  {
    v4 = sub_1E3C2F454();
    sub_1E3C2FBB4(a1, v4, &v9);

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35808);
      if (swift_dynamicCast())
      {
        v5 = v11;
        if (v11 != 6)
        {
          v6 = (*(*v1 + 1512))();
          if ((sub_1E3C2A914(v6, 3, sub_1E3C3DDA8) & 1) == 0)
          {
            LOBYTE(v11) = v5;
            return v11;
          }

          v7 = v5 >> 8;
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v9, &unk_1ECF296E0);
    }

    v3 = v1[6];
  }

  sub_1E3C2FBB4(a1, v3, &v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    LOBYTE(v7) = 5;
LABEL_14:
    LOBYTE(v11) = v7;
  }

  return v11;
}

void *sub_1E3C2BA38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (qword_1EE29AD10 != -1)
  {
    OUTLINED_FUNCTION_1_179();
  }

  OUTLINED_FUNCTION_8_104();
  if (v8)
  {
    v4 = sub_1E3C2F454();
  }

  else
  {
    v9 = sub_1E3C2F454();
    sub_1E3C2FBB4(a1, v9, &v23);

    if (v25)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a4);
      if (OUTLINED_FUNCTION_57_19())
      {
        v10 = v26;
        if (v26 != 1)
        {
          v11 = v27;
          OUTLINED_FUNCTION_8();
          (*(v12 + 1512))();
          OUTLINED_FUNCTION_4_152();
          if (sub_1E3C2A914(v13, 3, v14))
          {

            return v11;
          }

          else
          {

            return v10;
          }
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v23, &unk_1ECF296E0);
    }

    OUTLINED_FUNCTION_126_3();
  }

  sub_1E3C2FBB4(a1, v4, &v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  v15 = sub_1E3280A90(0, a2);
  OUTLINED_FUNCTION_71_23(v15, v16, v17, v15, v18, v19, v20, v21, v23, *(&v23 + 1), v24, v25, v26);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  return v26;
}

uint64_t sub_1E3C2BBE8(uint64_t a1)
{
  if (qword_1EE29AD10 != -1)
  {
    swift_once();
  }

  if (byte_1EE2AAD70 == 1)
  {
    v3 = sub_1E3C2F454();
  }

  else
  {
    v4 = sub_1E3C2F454();
    sub_1E3C2FBB4(a1, v4, &v9);

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF357F0);
      if (swift_dynamicCast())
      {
        v5 = v11;
        if (v11 != 12)
        {
          v6 = (*(*v1 + 1512))();
          if ((sub_1E3C2A914(v6, 3, sub_1E3C3DDA8) & 1) == 0)
          {
            LOBYTE(v11) = v5;
            return v11;
          }

          v7 = v5 >> 8;
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v9, &unk_1ECF296E0);
    }

    v3 = v1[6];
  }

  sub_1E3C2FBB4(a1, v3, &v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    LOBYTE(v7) = 11;
LABEL_14:
    LOBYTE(v11) = v7;
  }

  return v11;
}

uint64_t sub_1E3C2BDB4(uint64_t a1)
{
  if (qword_1EE29AD10 != -1)
  {
    swift_once();
  }

  if (byte_1EE2AAD70 == 1)
  {
    v3 = sub_1E3C2F454();
  }

  else
  {
    v4 = sub_1E3C2F454();
    sub_1E3C2FBB4(a1, v4, &v9);

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF357E8);
      if (swift_dynamicCast())
      {
        v5 = v11;
        if (v11 != 1)
        {
          v6 = v12;
          v7 = (*(*v1 + 1512))();
          if (sub_1E3C2A914(v7, 3, sub_1E3C3DDA8))
          {

            return v6;
          }

          else
          {

            return v5;
          }
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v9, &unk_1ECF296E0);
    }

    v3 = v1[6];
  }

  sub_1E3C2FBB4(a1, v3, &v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  type metadata accessor for ViewGradientLayout();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  return v11;
}

uint64_t sub_1E3C2BF94(uint64_t a1)
{
  if (qword_1EE29AD10 != -1)
  {
    swift_once();
  }

  if (byte_1EE2AAD70 == 1)
  {
    v3 = sub_1E3C2F454();
  }

  else
  {
    v4 = sub_1E3C2F454();
    sub_1E3C2FBB4(a1, v4, &v9);

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF357E0);
      if (swift_dynamicCast())
      {
        v5 = v12;
        v6 = v11;
        v7 = (*(*v1 + 1512))();
        if (sub_1E3C2A914(v7, 3, sub_1E3C3DDA8))
        {
          return v5;
        }

        else
        {
          return v6;
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v9, &unk_1ECF296E0);
    }

    v3 = v1[6];
  }

  sub_1E3C2FBB4(a1, v3, &v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  type metadata accessor for VUIGridStyle(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  return v11;
}

uint64_t sub_1E3C2C174()
{
  OUTLINED_FUNCTION_139_6();
  if (qword_1EE29AD10 != -1)
  {
    OUTLINED_FUNCTION_1_179();
  }

  OUTLINED_FUNCTION_8_104();
  if (v2)
  {
    sub_1E3C2F454();
  }

  else
  {
    v3 = sub_1E3C2F454();
    sub_1E3C2FBB4(v0, v3, &v17);

    if (v19)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v1);
      if (OUTLINED_FUNCTION_57_19())
      {
        v4 = v21;
        v5 = v20;
        OUTLINED_FUNCTION_8();
        (*(v6 + 1512))();
        OUTLINED_FUNCTION_4_152();
        if (sub_1E3C2A914(v7, 3, v8))
        {
          return v4;
        }

        else
        {
          return v5;
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v17, &unk_1ECF296E0);
    }

    OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_76_13(&v17);

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  OUTLINED_FUNCTION_71_23(v9, v10, v9, v11, v12, v13, v14, v15, v17, *(&v17 + 1), v18, v19, v20);
  if ((OUTLINED_FUNCTION_153_4() & 1) == 0)
  {
    return 0;
  }

  return v20;
}

uint64_t sub_1E3C2C2E8(uint64_t a1)
{
  if (qword_1EE29AD10 != -1)
  {
    swift_once();
  }

  if (byte_1EE2AAD70 == 1)
  {
    v3 = sub_1E3C2F454();
  }

  else
  {
    v4 = sub_1E3C2F454();
    sub_1E3C2FBB4(a1, v4, &v9);

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF357D0);
      if (swift_dynamicCast())
      {
        v5 = v11;
        if (v11 != 4)
        {
          v6 = (*(*v1 + 1512))();
          if ((sub_1E3C2A914(v6, 3, sub_1E3C3DDA8) & 1) == 0)
          {
            LOBYTE(v11) = v5;
            return v11;
          }

          v7 = v5 >> 8;
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v9, &unk_1ECF296E0);
    }

    v3 = v1[6];
  }

  sub_1E3C2FBB4(a1, v3, &v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    LOBYTE(v7) = 3;
LABEL_14:
    LOBYTE(v11) = v7;
  }

  return v11;
}

uint64_t sub_1E3C2C4B4(uint64_t a1)
{
  if (qword_1EE29AD10 != -1)
  {
    swift_once();
  }

  if (byte_1EE2AAD70 == 1)
  {
    v3 = sub_1E3C2F454();
  }

  else
  {
    v4 = sub_1E3C2F454();
    sub_1E3C2FBB4(a1, v4, &v9);

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF357C8);
      if (swift_dynamicCast())
      {
        v5 = v11;
        if (v11 != 1)
        {
          v6 = v12;
          v7 = (*(*v1 + 1512))();
          if (sub_1E3C2A914(v7, 3, sub_1E3C3DDA8))
          {

            return v6;
          }

          else
          {

            return v5;
          }
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v9, &unk_1ECF296E0);
    }

    v3 = v1[6];
  }

  sub_1E3C2FBB4(a1, v3, &v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF357B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  return v11;
}

void sub_1E3C2C6A0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for ViewLayout.StorageTuple();
  sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  OUTLINED_FUNCTION_1_2();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  if (qword_1EE29AD10 != -1)
  {
    OUTLINED_FUNCTION_1_179();
  }

  OUTLINED_FUNCTION_8_104();
  if (v16)
  {
    v0 = sub_1E3C2F454();
LABEL_11:
    sub_1E3C2FBB4(v4, v0, &v34);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
    v31 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v6, v31 ^ 1u, 1, v2);
    goto LABEL_12;
  }

  v33 = v12;
  v17 = sub_1E3C2F454();
  sub_1E3C2FBB4(v4, v17, &v34);

  if (!v35)
  {
    sub_1E325F6F0(&v34, &unk_1ECF296E0);
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v7);
    goto LABEL_10;
  }

  v18 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v10, v18 ^ 1u, 1, v7);
  OUTLINED_FUNCTION_52(v10, 1, v7);
  if (v16)
  {
LABEL_10:
    v29 = OUTLINED_FUNCTION_17_11();
    v30(v29);
    OUTLINED_FUNCTION_126_3();
    goto LABEL_11;
  }

  v19 = (*(v33 + 32))(v15, v10, v7);
  (*(*v0 + 1512))(v19);
  OUTLINED_FUNCTION_4_152();
  sub_1E3C2A914(v20, 3, v21);
  sub_1E4207104();
  OUTLINED_FUNCTION_2();
  v22 = OUTLINED_FUNCTION_32_0();
  v23(v22);
  v24 = OUTLINED_FUNCTION_171_0();
  v25(v24);
LABEL_12:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C2CA00()
{
  OUTLINED_FUNCTION_31_1();
  v35 = v0;
  v5 = v4;
  v6 = sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_66_5();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_91_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_88_2();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v5);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v5);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v5);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v5);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v5);
  sub_1E3C33DE4();
  v33 = *(v8 + 8);
  v33(v12, v6);
  v33(v1, v6);
  v33(v2, v6);
  v33(v3, v6);
  v33(v17, v6);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C2CBE8()
{
  v0 = OUTLINED_FUNCTION_144_5();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_37_44(v1);
  sub_1E3C2AF54(0, v2);
  return OUTLINED_FUNCTION_146_5();
}

double sub_1E3C2CC44()
{
  OUTLINED_FUNCTION_147_4();
  v1.n128_f64[0] = sub_1E3C2AF54(1, v0);
  *&result = OUTLINED_FUNCTION_24_61(v2, v3, v4, v5, v6, v7, v8, v9, v11, v1, v12, v13).n128_u64[0];
  return result;
}

uint64_t sub_1E3C2CCA4()
{
  v0 = OUTLINED_FUNCTION_144_5();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_37_44(v1);
  sub_1E3C2AF54(1, v2);
  return OUTLINED_FUNCTION_146_5();
}

uint64_t sub_1E3C2CD40(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E3C2CFF0();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3C2CDF0(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E3C2CFF0();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3C2CEA0(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E3C2CFF0();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}