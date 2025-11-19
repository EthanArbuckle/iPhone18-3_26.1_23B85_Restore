uint64_t sub_1E3FBA53C()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_13_7();
  v2 = *(v0 + 56) == 0;

  return v1(v2);
}

uint64_t sub_1E3FBA5AC()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E41FFCB4();
  v0[11] = v1;
  v0[12] = *(v1 - 8);
  v0[13] = OUTLINED_FUNCTION_86_0();
  sub_1E4206434();
  v0[14] = OUTLINED_FUNCTION_104_0();
  v3 = OUTLINED_FUNCTION_61_0();
  v0[15] = v3;
  v0[16] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E3FBA680, v3, v2);
}

uint64_t sub_1E3FBA680()
{
  OUTLINED_FUNCTION_27_2();
  v1 = [objc_opt_self() sharedPreferences];
  v0[17] = v1;
  v2 = [v1 autoDownloadsEpisodeCount];
  v3 = [v2 integerValue];

  type metadata accessor for AutoDownloadsServiceRequestContext();
  sub_1E3280A90(0, &unk_1ECF3FA50);
  v4 = sub_1E3A81730();
  v0[18] = sub_1E3DADFD4(v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D6D8);
  v5 = sub_1E37B2CB8();
  v0[19] = v5;
  v6 = (*(*v5 + 352))();
  v0[20] = v6;
  if (v6)
  {
    v7 = swift_task_alloc();
    v0[21] = v7;
    *v7 = v0;
    v7[1] = sub_1E3FBA888;

    return MEMORY[0x1EEDB5DD8](v0 + 8);
  }

  else
  {

    v8 = v0[17];

    OUTLINED_FUNCTION_13_7();
    v10 = MEMORY[0x1E69E7CC0];

    return v9(v10);
  }
}

uint64_t sub_1E3FBA888()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *v1;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 176) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_1E3FBAAA0;
  }

  else
  {
    v7 = sub_1E3FBA9D4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E3FBA9D4()
{
  OUTLINED_FUNCTION_27_2();

  v1 = *(v0 + 64);

  swift_beginAccess();
  v2 = *(v1 + 24);

  v3 = *(v0 + 136);

  if (!v2)
  {

    v2 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_13_7();

  return v4(v2);
}

uint64_t sub_1E3FBAAA0()
{
  v24 = v0;
  v1 = v0[22];

  sub_1E324FBDC();
  v2 = OUTLINED_FUNCTION_17_138();
  v3(v2);
  v4 = v1;
  v5 = sub_1E41FFC94();
  v6 = sub_1E4206814();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[11];
    v10 = OUTLINED_FUNCTION_6_21();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_1E4207AB4();
    v14 = sub_1E3270FC8(v12, v13, &v23);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1E323F000, v5, v6, "AutoDownloadsManager:: error %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v16 = v0[12];
    v15 = v0[13];
    v17 = v0[11];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[22];
  v19 = v0[17];

  OUTLINED_FUNCTION_13_7();
  v21 = MEMORY[0x1E69E7CC0];

  return v20(v21);
}

uint64_t sub_1E3FBAC8C()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_309(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_86_0();
  v4 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E3FBAD2C()
{
  OUTLINED_FUNCTION_27_2();
  v1 = v0[3];
  sub_1E324FBDC();
  v2 = OUTLINED_FUNCTION_17_138();
  v3(v2);

  v4 = sub_1E41FFC94();
  v5 = sub_1E4206814();
  v6 = OUTLINED_FUNCTION_16_53(v5);
  v7 = v0[2];
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_6_21();
    *v8 = 134217984;
    *(v8 + 4) = sub_1E32AE9B0(v7);

    _os_log_impl(&dword_1E323F000, v4, v1, "AutoDownloadsManager:: enqueuing %ld playables", v8, 0xCu);
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);
  v0[6] = sub_1E4206434();
  v0[7] = sub_1E4206424();
  OUTLINED_FUNCTION_61_0();
  v9 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3FBAE70()
{
  OUTLINED_FUNCTION_24();

  *(v0 + 64) = sub_1E3287BA0();
  v1 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E3FBAED4()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 72) = sub_1E4206424();
  OUTLINED_FUNCTION_61_0();
  v1 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E3FBAF4C()
{
  OUTLINED_FUNCTION_24();
  v1 = v0[8];

  v2 = *v1;
  v0[10] = *v1;
  v2;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E3FBB000;

  return sub_1E4099E40();
}

uint64_t sub_1E3FBB000()
{
  OUTLINED_FUNCTION_24();
  v1 = *(*v0 + 80);
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  OUTLINED_FUNCTION_54();

  return v4();
}

uint64_t sub_1E3FBB118()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_309(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_86_0();
  sub_1E4206434();
  v1[6] = OUTLINED_FUNCTION_104_0();
  v5 = OUTLINED_FUNCTION_61_0();
  v1[7] = v5;
  v1[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E3FBB1E4, v5, v4);
}

uint64_t sub_1E3FBB1E4()
{
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_22_34();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E4206814();
  if (OUTLINED_FUNCTION_16_53(v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_3_12(&dword_1E323F000, v5, v6, "AutoDownloadsManager:: removeWatchedDownloads");
    OUTLINED_FUNCTION_6_0();
  }

  v7 = OUTLINED_FUNCTION_17_10();
  v8(v7);
  v9 = [objc_opt_self() defaultManager];
  v0[9] = [v9 sidebandMediaLibrary];

  v10 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
  sub_1E4207574();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  OUTLINED_FUNCTION_16_143();
  OUTLINED_FUNCTION_1_272();
  OUTLINED_FUNCTION_4_234();
  sub_1E4207594();
  sub_1E4207554();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  OUTLINED_FUNCTION_16_143();
  OUTLINED_FUNCTION_1_272();
  OUTLINED_FUNCTION_4_234();
  sub_1E4207594();
  sub_1E4207554();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  OUTLINED_FUNCTION_16_143();
  OUTLINED_FUNCTION_1_272();
  OUTLINED_FUNCTION_4_234();
  sub_1E4207594();
  sub_1E4207554();
  sub_1E3FBB5C8(v17);
  sub_1E3280A90(0, &qword_1EE23ADD0);
  sub_1E3D61F1C();
  v11 = sub_1E4206614();

  v12 = OUTLINED_FUNCTION_21_110();
  v14 = [v12 v13];

  if (v14)
  {
    sub_1E3280A90(0, &qword_1EE23B0B0);
    v10 = sub_1E42062B4();
  }

  v0[10] = v10;
  v15 = swift_task_alloc();
  v0[11] = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_56_1(v15);

  return sub_1E3FBB6C4();
}

uint64_t sub_1E3FBB498()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *v1;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 96) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_1E3FBD388;
  }

  else
  {
    v7 = sub_1E3FBD384;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

void sub_1E3FBB5C8(unint64_t a1)
{
  v2 = sub_1E32AE9B0(a1);
  v3 = sub_1E3280A90(0, &qword_1EE23ADD0);
  v4 = sub_1E3D61F1C();
  v8[1] = MEMORY[0x1E6910FA0](v2, v3, v4);
  v5 = sub_1E32AE9B0(a1);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E3FBC838(v8, v7);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1E3FBB6C4()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_309(v2);
  v0[4] = v3;
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  sub_1E4206434();
  v0[7] = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_61_0();
  v4 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E3FBB79C()
{
  v47 = v0;
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];

  v4 = sub_1E324FBDC();
  v43 = *(v2 + 16);
  v43(v1, v4, v3);

  v5 = sub_1E41FFC94();
  v6 = sub_1E4206814();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[2];
  if (v7)
  {
    v9 = OUTLINED_FUNCTION_6_21();
    *v9 = 134217984;
    *(v9 + 4) = sub_1E32AE9B0(v8);

    _os_log_impl(&dword_1E323F000, v5, v6, "AutoDownloadsManager:: removing %ld downloads", v9, 0xCu);
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  v10 = v0[4];
  v11 = v0[2];
  v14 = *(v10 + 8);
  v12 = v10 + 8;
  v13 = v14;
  v14(v0[6], v0[3]);
  result = sub_1E32AE9B0(v11);
  if (result)
  {
    v16 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v17 = 0;
    v18 = v0[2];
    v42 = v18 & 0xC000000000000001;
    v37 = v18 + 32;
    v39 = v4;
    v40 = v0;
    v38 = result;
    do
    {
      if (v42)
      {
        v19 = MEMORY[0x1E6911E60](v17, v0[2]);
      }

      else
      {
        v19 = *(v37 + 8 * v17);
      }

      v20 = v19;
      v43(v0[5], v4, v0[3]);
      v21 = v20;
      v22 = sub_1E41FFC94();
      v23 = sub_1E4206814();
      v45 = v21;

      v24 = os_log_type_enabled(v22, v23);
      v25 = v0[5];
      v44 = v0[3];
      if (v24)
      {
        v26 = OUTLINED_FUNCTION_6_21();
        v27 = swift_slowAlloc();
        v46 = v27;
        *v26 = 136315138;
        v28 = sub_1E3FBD320(v45);
        if (!v29)
        {
          v28 = 0x3E6C696E3CLL;
        }

        v30 = v13;
        v31 = v12;
        if (v29)
        {
          v32 = v29;
        }

        else
        {
          v32 = 0xE500000000000000;
        }

        v41 = v25;
        v33 = sub_1E3270FC8(v28, v32, &v46);
        v12 = v31;
        v13 = v30;
        v16 = v38;

        *(v26 + 4) = v33;
        _os_log_impl(&dword_1E323F000, v22, v23, "AutoDownloadsManager:: removing %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        v0 = v40;
        OUTLINED_FUNCTION_6_0();
        v4 = v39;
        OUTLINED_FUNCTION_6_0();

        v34 = v41;
      }

      else
      {

        v34 = v25;
      }

      v13(v34, v44);
      ++v17;
      v35 = [objc_allocWithZone(VUIUniversalAssetController) initWithVideoManagedObject_];
      [v35 cancelAndRemoveDownload];
    }

    while (v16 != v17);
  }

  OUTLINED_FUNCTION_54();

  return v36();
}

uint64_t sub_1E3FBBB04()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_309(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_86_0();
  sub_1E4206434();
  v1[6] = OUTLINED_FUNCTION_104_0();
  v5 = OUTLINED_FUNCTION_61_0();
  v1[7] = v5;
  v1[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E3FBBBD0, v5, v4);
}

uint64_t sub_1E3FBBBD0()
{
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_22_34();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E4206814();
  if (OUTLINED_FUNCTION_16_53(v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_3_12(&dword_1E323F000, v5, v6, "AutoDownloadsManager:: removeOngoingDownloads");
    OUTLINED_FUNCTION_6_0();
  }

  v7 = OUTLINED_FUNCTION_17_10();
  v8(v7);
  v9 = [objc_opt_self() defaultManager];
  v0[9] = [v9 sidebandMediaLibrary];

  v10 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
  sub_1E4207574();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  OUTLINED_FUNCTION_16_143();
  OUTLINED_FUNCTION_1_272();
  OUTLINED_FUNCTION_4_234();
  sub_1E4207594();
  sub_1E4207554();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  OUTLINED_FUNCTION_16_143();
  OUTLINED_FUNCTION_1_272();
  OUTLINED_FUNCTION_4_234();
  sub_1E4207594();
  sub_1E4207554();
  sub_1E3FBB5C8(v17);
  sub_1E3280A90(0, &qword_1EE23ADD0);
  sub_1E3D61F1C();
  v11 = sub_1E4206614();

  v12 = OUTLINED_FUNCTION_21_110();
  v14 = [v12 v13];

  if (v14)
  {
    sub_1E3280A90(0, &qword_1EE23B0B0);
    v10 = sub_1E42062B4();
  }

  v0[10] = v10;
  v15 = swift_task_alloc();
  v0[11] = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_56_1(v15);

  return sub_1E3FBB6C4();
}

uint64_t sub_1E3FBBE50()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *v1;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 96) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_1E3FBBFFC;
  }

  else
  {
    v7 = sub_1E3FBBF80;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E3FBBF80()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_54();

  return v2();
}

uint64_t sub_1E3FBBFFC()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_54();

  return v2();
}

uint64_t sub_1E3FBC078(uint64_t a1)
{
  v1 = [objc_opt_self() stringFromByteCount:a1 countStyle:2];
  v2 = sub_1E4205F14();

  return v2;
}

void sub_1E3FBC0E4()
{
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedPreferences];
  v7 = [v6 autoDownloadsStorageLimit];

  v8 = [v7 longLongValue];
  v9 = 1000000000 * v8;
  if ((v8 * 1000000000) >> 64 == (1000000000 * v8) >> 63)
  {
    v10 = sub_1E3FBC36C();
    v11 = sub_1E324FBDC();
    (*(v2 + 16))(v5, v11, v0);

    v12 = sub_1E41FFC94();
    v13 = sub_1E42067E4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v0;
      v23 = v15;
      *v14 = 136315394;
      v16 = sub_1E3FBC078(v9);
      v18 = sub_1E3270FC8(v16, v17, &v23);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v19 = sub_1E3FBC078(v10);
      v21 = sub_1E3270FC8(v19, v20, &v23);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_1E323F000, v12, v13, "AutoDownloadsManager:: storageLimit=%s,\n                       currentStorage=%s", v14, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v2 + 8))(v5, v22);
    }

    else
    {

      (*(v2 + 8))(v5, v0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3FBC36C()
{
  v40 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v1 = v0;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v32 - v5;
  v6 = [objc_opt_self() mainBundle];
  v7 = sub_1E3ABF2D0(v6);
  v9 = 0x6C7070612E6D6F63;
  if (v8)
  {
    v9 = v7;
  }

  v36 = v9;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000076742E65;
  }

  v11 = [objc_opt_self() defaultManager];
  v12 = [v11 sidebandMediaLibrary];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4298880;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  sub_1E3FBB5C8(inited);
  sub_1E3280A90(0, &qword_1EE23ADD0);
  sub_1E3D61F1C();
  v14 = sub_1E4206614();

  v15 = [v12 videosWithDownloadStates:v14 downloadTrigger:1 useMainThreadContext:1];

  if (!v15)
  {

    return 0;
  }

  sub_1E3280A90(0, &qword_1EE23B0B0);
  v16 = sub_1E42062B4();

  result = sub_1E32AE9B0(v16);
  if (!result)
  {

    return 0;
  }

  v18 = result;
  if (result < 1)
  {
    goto LABEL_27;
  }

  v35 = v10;
  v19 = 0;
  v20 = 0;
  v38 = v16 & 0xC000000000000001;
  v33 = v12;
  v34 = (v1 + 32);
  v21 = (v1 + 8);
  while (1)
  {
    v22 = v38 ? MEMORY[0x1E6911E60](v20, v16) : *(v16 + 8 * v20 + 32);
    v23 = v22;
    v24 = [v22 localPlaybackURL];
    if (v24)
    {
      break;
    }

LABEL_20:
    if (v18 == ++v20)
    {

      return v19;
    }
  }

  v25 = v24;
  v26 = v16;
  v27 = v37;
  sub_1E41FE3C4();

  (*v34)(v39, v27, v40);
  sub_1E41FE3E4();
  sub_1E3280A90(0, &qword_1ECF3D6D0);

  v28 = sub_1E3FBC780();
  if (v28)
  {
    v29 = v28;
    v30 = [v28 size];
  }

  else
  {
    v30 = 0;
  }

  result = (*v21)(v39, v40);
  v31 = __OFADD__(v19, v30);
  v19 += v30;
  if (!v31)
  {
    v16 = v26;
    goto LABEL_20;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

id sub_1E3FBC780()
{
  v0 = sub_1E4205ED4();

  v1 = sub_1E4205ED4();

  v2 = [swift_getObjCClassFromMetadata() assetFromFile:v0 withIdentifier:v1];

  return v2;
}

uint64_t sub_1E3FBC838(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1E4207394();

    if (v9)
    {

      sub_1E3280A90(0, &qword_1EE23ADD0);
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
    }

    else
    {
      result = sub_1E4207384();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_1E3FBCA5C(v7, result + 1);
        if (*(v16 + 24) <= *(v16 + 16))
        {
          sub_1E3FBCC38();
        }

        v17 = v8;
        sub_1E3B0CE7C(v17, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v17;
        return 1;
      }
    }
  }

  else
  {
    sub_1E3280A90(0, &qword_1EE23ADD0);
    v11 = sub_1E4206F54();
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *v3;
        v17 = a2;
        sub_1E3FBCE5C(v17, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v22;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = sub_1E4206F64();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v19 = *(*(v6 + 48) + 8 * v13);
    *a1 = v19;
    v20 = v19;
    return 0;
  }

  return result;
}

uint64_t sub_1E3FBCA5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBC8);
    v2 = sub_1E4207454();
    v14 = v2;
    sub_1E4207344();
    while (1)
    {
      if (!sub_1E42073C4())
      {

        return v2;
      }

      sub_1E3280A90(0, &qword_1EE23ADD0);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1E3FBCC38();
      }

      v2 = v14;
      result = sub_1E4206F54();
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1E3FBCC38()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBC8);
  result = sub_1E4207444();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_1E373CBF0(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    result = sub_1E4206F54();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

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
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1E3FBCE5C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1E3FBCC38();
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_1E3FBD110();
LABEL_8:
      v8 = *v3;
      result = sub_1E4206F54();
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_1E3280A90(0, &qword_1EE23ADD0);
        v10 = *(*(v8 + 48) + 8 * a2);
        v11 = sub_1E4206F64();

        if (v11)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1E3FBCFC0();
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    result = sub_1E4207A64();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }

  return result;
}

id sub_1E3FBCFC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBC8);
  v2 = *v0;
  v3 = sub_1E4207434();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1E3FBD110()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBC8);
  result = sub_1E4207444();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        result = sub_1E4206F54();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v23;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1E3FBD320(void *a1)
{
  v1 = [a1 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

uint64_t sub_1E3FBD38C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1E4205ED4();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    result = sub_1E325F748(v8, &unk_1ECF296E0);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if (!result)
  {
LABEL_8:
    v4 = 1;
    goto LABEL_9;
  }

  v4 = v5;
LABEL_9:
  byte_1EE2AAAB8 = v4;
  return result;
}

uint64_t sub_1E3FBD4AC()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v1 = sub_1E3BC565C();
    if (sub_1E39DFFC8())
    {
      if (qword_1EE293FC0 != -1)
      {
        OUTLINED_FUNCTION_0_310();
      }

      if ((byte_1EE2AAAB8 & 1) == 0)
      {
        v3 = (*(*v1 + 2320))(1);
        v4 = (*v1 + 2096);
        v5 = *v4;
        v6 = *(*v4)(v3);
        (*(v6 + 360))(0x403C000000000000, 0);

        v8 = *v5(v7);
        (*(v8 + 256))(0x403C000000000000, 0);

        v9 = (*(*v1 + 1888))(1);
        v10 = v5(v9);
        v11 = [objc_opt_self() configurationWithPointSize:7 weight:2 scale:16.0];
        (*(*v10 + 1952))(v11);
      }
    }

    *(v2 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E3FBD74C()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0x4030000000000000;
  return sub_1E3C2F9A0();
}

uint64_t sub_1E3FBD758()
{
  v0 = sub_1E3C36C6C();

  return MEMORY[0x1EEE6BDC0](v0, 120, 7);
}

uint64_t sub_1E3FBD7A0(uint64_t *a1, uint64_t *a2)
{
  if ((a1[3] & 1) != 0 && a1[2])
  {
    v2 = *(a1 + 25);
    v3 = *(a2 + 24);
    if ((v3 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *(a2 + 24);
    if ((v3 & 1) == 0)
    {
      goto LABEL_11;
    }

    v2 = 0;
  }

  if (a2[2])
  {
    if ((v2 & 1) != (*(a2 + 25) & 1))
    {
      goto LABEL_30;
    }

    goto LABEL_11;
  }

LABEL_10:
  if (v2)
  {
    goto LABEL_30;
  }

LABEL_11:
  v4 = a2[2];
  v5 = a1[2];
  if (v5)
  {
    if (v5 != v4)
    {
      goto LABEL_30;
    }
  }

  else if (v4)
  {
    goto LABEL_30;
  }

  if (a1[1])
  {
    v6 = *a1;
    if (a2[1])
    {
      v7 = 0;
      v8 = 0;
      v9 = *a2;
      if ((v6 != 0) == (*a2 == 0))
      {
        return v8 & 1;
      }

      goto LABEL_25;
    }

    v10 = 0;
    v8 = 0;
    if (v6)
    {
      return v8 & 1;
    }

LABEL_23:
    v9 = *a2;
    v7 = v10 ^ 1;
    goto LABEL_25;
  }

  v10 = *(a2 + 8);
  if ((v10 & 1) == 0)
  {
    goto LABEL_23;
  }

  v7 = 0;
  if (*a2)
  {
    v8 = 0;
    return v8 & 1;
  }

  v9 = 0;
LABEL_25:
  v11 = *a1;
  if (!*a1)
  {
    if (!v9)
    {
      goto LABEL_29;
    }

LABEL_30:
    v8 = 0;
    return v8 & 1;
  }

  if (v11 != v9)
  {
    goto LABEL_30;
  }

LABEL_29:
  if ((*(a1 + 25) & 1) != (*(a2 + 25) & 1))
  {
    goto LABEL_30;
  }

  if (a1[5])
  {
    v13 = a1[4];
    if ((a2[5] & 1) == 0)
    {
      v14 = 0;
      v8 = 0;
      if (v13)
      {
        return v8 & 1;
      }

      goto LABEL_40;
    }

    if ((v13 != 0) == (a2[4] == 0))
    {
      goto LABEL_30;
    }

    goto LABEL_38;
  }

  v14 = *(a2 + 40);
  if (v14)
  {
    if (a2[4])
    {
      goto LABEL_30;
    }

LABEL_38:
    v14 = 1;
  }

LABEL_40:
  v15 = a2[4];
  v16 = a1[4];
  if (v16)
  {
    if (v16 != v15)
    {
      goto LABEL_30;
    }
  }

  else if (v15)
  {
    goto LABEL_30;
  }

  if ((*(a1 + 41) & 1) != (*(a2 + 41) & 1))
  {
    goto LABEL_30;
  }

  v17 = 0;
  if (v11 && a1[6] && (a1[1] & 1) != 0 && (*(a1 + 41) & 1) != 0)
  {
    v17 = *(a1 + 42);
  }

  if (a2[6] && !(v7 & 1 | (v9 == 0)) && (*(a2 + 41) & 1) != 0)
  {
    if ((v17 & 1) != (*(a2 + 42) & 1))
    {
      goto LABEL_30;
    }
  }

  else if (v17)
  {
    goto LABEL_30;
  }

  v18 = 0;
  if (v5 && a1[9] && (*(a1 + 41) & 1) != 0 && (*(a1 + 25) & 1) != 0 && (a1[3] & 1) != 0)
  {
    v18 = *(a1 + 42);
  }

  if (a2[9] && (v3 & (v4 != 0)) == 1 && (*(a2 + 41) & 1) != 0 && (*(a2 + 25) & 1) != 0)
  {
    v19 = *(a2 + 42);
    if ((v18 & 1) != (v19 & 1))
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v18)
    {
      goto LABEL_30;
    }

    v19 = *(a2 + 42);
  }

  v20 = *(a1 + 42);
  if ((v19 & 1) != (v20 & 1))
  {
    goto LABEL_30;
  }

  if ((a1[5] & 1) == 0 || !a1[10] || (*(a1 + 41) & 1) == 0)
  {
    v20 = 0;
  }

  if ((v14 & 1) == 0 || !a2[10] || (*(a2 + 41) & 1) == 0)
  {
    v19 = 0;
  }

  v8 = v19 ^ v20 ^ 1;
  return v8 & 1;
}

id sub_1E3FBDA48@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 fixedSpaceItemOfWidth_];
  result = [v2 fixedSpaceItemOfWidth_];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 39) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v3;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = result;
  return result;
}

void sub_1E3FBDADC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_isMuted;
  OUTLINED_FUNCTION_15_0();
  v3 = *(v0 + v2);
  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    if (v3)
    {
      v6 = 0x80000001E426CE40;
    }

    else
    {
      v6 = 0xEE006574754D2E6ELL;
    }

    if (v3)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = 0x6F747475422E5654;
    }

    v8 = sub_1E3741090(v7, v6, v5);
    v10 = v9;

    v11 = v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState;
    v12 = *(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState);
    v13 = &selRef_setDelayContentsChangeOperation_;
    if (v12)
    {
      v14 = [v12 imageView];
      if (v14)
      {
        v15 = v14;
        OUTLINED_FUNCTION_4_235();
        sub_1E3FBDEF4();
        v16 = sub_1E3FBD4AC();

        v17 = v8;
        v8 = &OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_audioOnImageName;
        v18 = sub_1E3FC1D1C(v17, &selRef_gridStyle, v16, &OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_audioOnImageName, v10);

        v13 = &selRef_setDelayContentsChangeOperation_;

        [v15 setImage_];
      }
    }

    v19 = *(v11 + 48);
    if (v19)
    {
      v20 = [v19 customView];
      if (v20)
      {
        v21 = v20;
        objc_opt_self();
        v22 = swift_dynamicCastObjCClass();
        if (v22)
        {
          v23 = [v22 imageView];

          if (v23)
          {
            OUTLINED_FUNCTION_4_235();
            sub_1E3FBDEF4();
            sub_1E3FBD4AC();
            OUTLINED_FUNCTION_12_1();

            v24 = sub_1E3FC1D1C(v8, &selRef_gridStyle, v1, &OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_audioOnImageName, v10);

            [v23 v13[345]];

            return;
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3FBDD44(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_isMuted;
  OUTLINED_FUNCTION_3_0();
  *(v1 + v3) = a1;
  sub_1E3FBDADC();
}

uint64_t sub_1E3FBDD90()
{
  v1 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___accountSettingButtonLayout;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___accountSettingButtonLayout))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___accountSettingButtonLayout);
  }

  else
  {
    v3 = v0;
    type metadata accessor for ButtonLayout();
    v4 = j__OUTLINED_FUNCTION_18();
    v5 = sub_1E3B050E8();
    v6 = j__OUTLINED_FUNCTION_18();
    v2 = sub_1E3BBD964(6, v4 & 1, v5, v6 & 1);
    v7 = *(MEMORY[0x1E69DDCE0] + 16);
    v10[0] = *MEMORY[0x1E69DDCE0];
    v10[1] = v7;
    v11 = 0;
    v8 = *(*v2 + 184);

    v8(v10);

    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_1E3FBDE80()
{
  v1 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1E3FBDEF4()
{
  v1 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___layout;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___layout))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___layout);
  }

  else
  {
    v3 = v0;
    type metadata accessor for MediaShowcasingToolbarLayout();
    swift_allocObject();
    v2 = sub_1E3FBD74C();
    *(v3 + v1) = v2;
  }

  return v2;
}

unint64_t sub_1E3FBDF70()
{
  v1 = sub_1E41E1364(v0);
  MEMORY[0x1E69109E0](v1);

  return 0xD000000000000019;
}

id sub_1E3FBDFD0()
{
  OUTLINED_FUNCTION_0_8();
  swift_getObjectType();
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_onMutePressed);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_isMuted) = 1;
  v2 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState;
  sub_1E3FBDA48(__src);
  memcpy((v0 + v2), __src, 0x58uLL);
  *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___accountSettingButtonLayout) = 0;
  OUTLINED_FUNCTION_16_144(OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_audioOnImageName);
  OUTLINED_FUNCTION_40_69(OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_audioOffImageName);
  *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___stackView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_navigationItem) = 0;
  v3 = (v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___logPrefix);
  *v3 = 0;
  v3[1] = 0;
  v4 = OUTLINED_FUNCTION_2_0();
  v7 = objc_msgSendSuper2(v5, v6, v4);
  sub_1E3FBE0D8();

  return v7;
}

void sub_1E3FBE0D8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v54 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v56 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v55 = v5 - v4;
  v6 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E4206BA4();
  v13 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_25_99();

  v59 = v6;
  v58 = *(v8 + 8);
  v58(v12, v6);
  v14 = sub_1E3FBDE80();
  [v14 setAxis_];

  v15 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___stackView;
  [*&v1[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___stackView] setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = *&v1[v15];
  sub_1E3FBDEF4();

  [v16 setSpacing_];

  [*&v1[v15] setAlignment_];
  [*&v1[v15] setDistribution_];
  [v1 addSubview_];
  v17 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1E42A1E20;
  v19 = [*&v1[v15] leadingAnchor];
  v20 = [v1 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v18 + 32) = v21;
  v22 = [*&v1[v15] trailingAnchor];
  v23 = OUTLINED_FUNCTION_7_212([v1 trailingAnchor]);

  *(v18 + 40) = v23;
  v24 = [*&v1[v15] centerYAnchor];
  v25 = OUTLINED_FUNCTION_7_212([v1 centerYAnchor]);

  *(v18 + 48) = v25;
  v26 = [*&v1[v15] heightAnchor];
  v27 = OUTLINED_FUNCTION_7_212([v1 heightAnchor]);

  *(v18 + 56) = v27;
  sub_1E3280A90(0, &qword_1EE23B1A0);
  v28 = sub_1E42062A4();

  [v17 activateConstraints_];

  memcpy(v79, &v1[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState], 0x58uLL);
  v57 = v79[6];
  v29 = v79[0];
  v30 = *&v1[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 8];
  v70 = *&v1[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 24];
  v71 = *&v1[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 40];
  v31 = *&v1[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 72];
  v67 = *&v1[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 56];
  v68 = v31;
  v69 = v30;
  v32 = *&v1[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_audioOffImageName];
  v33 = *&v1[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_audioOffImageName + 8];
  OUTLINED_FUNCTION_4_0();
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E3FBFC2C(v79, &v72);

  v35 = sub_1E3FC0C14(v32, v33, sub_1E3FC2D6C, v34);

  OUTLINED_FUNCTION_4_0();
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v37 = sub_1E3FC0C14(v32, v33, sub_1E3FC2CDC, v36);

  v38 = v37;
  [v38 setTranslatesAutoresizingMaskIntoConstraints_];
  v39 = sub_1E3FBDF70();
  sub_1E3FC2B38(v39, v40, v38);
  v41 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];

  if (sub_1E39DFFC8())
  {
    if (qword_1EE293FC0 != -1)
    {
      OUTLINED_FUNCTION_0_310();
    }

    if ((byte_1EE2AAAB8 & 1) == 0)
    {
      v42 = sub_1E324FBDC();
      (*(v56 + 16))(v55, v42, v54);
      v43 = v1;
      v44 = sub_1E41FFC94();
      v45 = sub_1E4206814();

      v53 = v45;
      if (os_log_type_enabled(v44, v45))
      {
        v46 = OUTLINED_FUNCTION_6_21();
        v47 = OUTLINED_FUNCTION_100();
        v72 = v47;
        *v46 = 136315138;
        v48 = sub_1E3FBE9B8();
        v50 = sub_1E3270FC8(v48, v49, &v72);

        *(v46 + 4) = v50;
        _os_log_impl(&dword_1E323F000, v44, v53, "%s muteBarButtonItem: prefersNoPlatter=true", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v47);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v56 + 8))(v55, v54);
      [v41 _setPrefersNoPlatter_];
    }
  }

  v73 = v69;
  v74 = v70;
  v72 = v35;
  v75 = v71;
  v76 = v41;
  v77 = v67;
  v78 = v68;
  sub_1E3FBEB5C(&v72, 0);
  v51 = [objc_allocWithZone(MEMORY[0x1E69DCC18]) init];
  [v1 addInteraction_];

  v60 = v35;
  v61 = v69;
  v62 = v70;
  v63 = v71;
  v64 = v41;
  v65 = v67;
  v66 = v68;
  sub_1E3FBFC64(&v60);
  sub_1E4206B94();
  v52 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_25_99();

  v58(v12, v59);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FBE8A0()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_onMutePressed);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_isMuted) = 1;
  v2 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState;
  sub_1E3FBDA48(__src);
  memcpy((v0 + v2), __src, 0x58uLL);
  *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___accountSettingButtonLayout) = 0;
  OUTLINED_FUNCTION_16_144(OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_audioOnImageName);
  OUTLINED_FUNCTION_40_69(OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_audioOffImageName);
  *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___stackView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_navigationItem) = 0;
  v3 = (v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___logPrefix);
  *v3 = 0;
  v3[1] = 0;
  sub_1E42076B4();
  __break(1u);
}

unint64_t sub_1E3FBE9B8()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___logPrefix);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___logPrefix + 8))
  {
    v2 = *v1;
  }

  else
  {
    sub_1E42074B4();

    v3 = sub_1E41E1364(v0);
    MEMORY[0x1E69109E0](v3);

    MEMORY[0x1E69109E0](41, 0xE100000000000000);
    v2 = 0xD000000000000017;
    *v1 = 0xD000000000000017;
    v1[1] = 0x80000001E428C510;
  }

  return v2;
}

uint64_t sub_1E3FBEA98(char a1, int a2)
{
  memcpy(__dst, (v2 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState), sizeof(__dst));
  v5 = __dst[0];
  memcpy(__src, (v2 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 9), sizeof(__src));
  v8 = __dst[0];
  v9 = a1;
  memcpy(v10, (v2 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 9), sizeof(v10));
  sub_1E3FBFC2C(__dst, &v12);
  sub_1E3FBEB5C(&v8, a2);
  v12 = v5;
  v13 = a1;
  memcpy(v14, __src, sizeof(v14));
  return sub_1E3FBFC64(&v12);
}

uint64_t sub_1E3FBEB5C(uint64_t a1, int a2)
{
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v152 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v152 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v152 - v18;
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    LODWORD(v161) = a2;
    v40 = &v2[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState];
    v41 = *&v2[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState];
    v42 = *&v2[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 16];
    v43 = v2;
    v44 = *&v2[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 32];
    v45 = v2[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 41];
    v46 = v2[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 42];
    v47 = *(v40 + 6);
    v48 = *(v40 + 9);
    result = sub_1E3FBD7A0(v40, a1);
    if (result)
    {
      return result;
    }

    v162 = v43;
    v49 = v40[40];
    v50 = v40[25];
    v51 = v40[24];
    v52 = v40[8];
    v53 = *(a1 + 8);
    if (v53)
    {
      v54 = *a1 != 0;
      if ((v40[8] & 1) == 0)
      {
LABEL_16:
        if ((*(a1 + 24) & 1) == 0)
        {
          v55 = 0;
          goto LABEL_28;
        }

LABEL_23:
        if (*(a1 + 16))
        {
          v81 = *(a1 + 25);
          v55 = 1;
          if ((v40[24] & 1) == 0)
          {
            goto LABEL_32;
          }

          goto LABEL_30;
        }

        v55 = 1;
LABEL_28:
        if ((v40[24] & 1) == 0)
        {
          v82 = v41;
          if (*(a1 + 40))
          {
            LODWORD(v159) = 0;
            v83 = 0;
            LODWORD(v158) = *(a1 + 32) != 0;
          }

          else
          {
            LODWORD(v158) = 0;
            LODWORD(v159) = 0;
            v83 = 0;
          }

          LODWORD(v157) = 1;
          if ((v49 & 1) == 0)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }

        v81 = 0;
LABEL_30:
        if (v42)
        {
          v81 ^= v50;
        }

LABEL_32:
        LODWORD(v157) = v81 ^ 1;
        if (*(a1 + 40))
        {
          LODWORD(v158) = *(a1 + 32) != 0;
          LODWORD(v159) = v81;
          v82 = v41;
          if ((v49 & 1) == 0)
          {
            v83 = 0;
            goto LABEL_42;
          }
        }

        else
        {
          v82 = v41;
          LODWORD(v159) = v81;
          LODWORD(v158) = 0;
          v83 = 0;
          if ((v49 & 1) == 0)
          {
LABEL_42:
            v84 = 0;
            v155 = *(a1 + 72);
            if (v155 && v55)
            {
              if (*(a1 + 16) && (*(a1 + 25) & 1) != 0 && (*(a1 + 41) & 1) != 0)
              {
                v84 = *(a1 + 42);
              }

              else
              {
                v84 = 0;
              }
            }

            v85 = 0;
            v86 = (v48 != 0) & v51;
            if (!v42)
            {
              v86 = 0;
            }

            v87 = v50 & v45;
            v88 = *(a1 + 48);
            if (v88 && (v53 & 1) != 0)
            {
              if (*a1 && (*(a1 + 41) & 1) != 0)
              {
                v85 = *(a1 + 42);
              }

              else
              {
                v85 = 0;
              }
            }

            LODWORD(v156) = v85;
            LODWORD(v160) = v54;
            v89 = v87 & v46;
            if (!v47 || (v52 & 1) == 0 || !v82 || (v45 & 1) == 0)
            {
              v46 = 0;
            }

            v90 = v55;
            v91 = v86 & v89;
            if (*a1 && sub_1E3FC2AD4([*a1 layer]))
            {

              v92 = 1;
            }

            else
            {
              v92 = 0;
            }

            v93 = v91 ^ v84;
            if (v88 && (v94 = [v88 customView]) != 0 && (v95 = v94, v96 = objc_msgSend(v94, sel_layer), v95, v97 = objc_msgSend(v96, sel_animationKeys), v96, v97))
            {

              v98 = 1;
            }

            else
            {
              v98 = 0;
            }

            v99 = v83;
            if (v157)
            {
              goto LABEL_72;
            }

            if (!v90)
            {
              v92 = 0;
              goto LABEL_86;
            }

            if (*(a1 + 16) && (*(a1 + 25) & 1) != 0)
            {
              if (v155)
              {
                OUTLINED_FUNCTION_10_158();
                if ((v103 & 1) == 0)
                {
                  goto LABEL_75;
                }

                goto LABEL_87;
              }
            }

            else
            {
LABEL_72:
              v92 = 0;
              if (v155)
              {
                OUTLINED_FUNCTION_10_158();
                if (v102)
                {
                  v92 = 0;
                  if (*(a1 + 16))
                  {
LABEL_75:
                    if (*(a1 + 25) & 1) != 0 && (*(a1 + 41) & 1) != 0 && (*(a1 + 42))
                    {
                      goto LABEL_88;
                    }
                  }
                }

LABEL_87:
                v98 = 0;
LABEL_88:
                v104 = v99 ^ v100;
                v105 = v101 ^ v46;
                OUTLINED_FUNCTION_16_0();
                sub_1E3FC0E60();
                sub_1E3FC12CC();
                if (v161)
                {
                  v106 = v98 | v92;
                  if ((v106 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_3_235();
                    sub_1E3FC1B68();
                  }

                  v161 = objc_opt_self();
                  v107 = swift_allocObject();
                  v107[16] = v106;
                  v108 = v83;
                  v107[17] = v108;
                  memcpy(v107 + 24, a1, 0x58uLL);
                  v109 = v93 & 1;
                  v107[112] = v93 & 1;
                  v107[113] = v104;
                  v107[114] = v160;
                  v107[115] = v105 & 1;
                  v168 = sub_1E3FC2B9C;
                  v169 = v107;
                  aBlock = MEMORY[0x1E69E9820];
                  v165 = 1107296256;
                  v166 = sub_1E378AEA4;
                  v167 = &block_descriptor_147;
                  v110 = _Block_copy(&aBlock);
                  OUTLINED_FUNCTION_17_139();

                  OUTLINED_FUNCTION_4_0();
                  v111 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v112 = swift_allocObject();
                  *(v112 + 16) = v111;
                  memcpy((v112 + 24), a1, 0x58uLL);
                  *(v112 + 112) = v108;
                  *(v112 + 113) = v109;
                  *(v112 + 114) = v104;
                  v168 = sub_1E3FC2C18;
                  v169 = v112;
                  aBlock = MEMORY[0x1E69E9820];
                  v165 = 1107296256;
                  v166 = sub_1E37EB82C;
                  v167 = &block_descriptor_18_0;
                  v113 = _Block_copy(&aBlock);
                  OUTLINED_FUNCTION_17_139();

                  [v161 animateWithDuration:v110 animations:v113 completion:0.3];
                  _Block_release(v113);
                  _Block_release(v110);
                }

                else
                {
                  OUTLINED_FUNCTION_3_235();
                  sub_1E3FC1B68();
                  sub_1E3FC17BC();
                  v114 = OUTLINED_FUNCTION_3_235();
                  sub_1E3FC1A68(v114, v115, v116, v117);
                }

                memcpy(__dst, v40, sizeof(__dst));
                v118 = v40;
                goto LABEL_145;
              }
            }

LABEL_86:
            v83 = v159;
            v100 = v158;
            v101 = v156;
            goto LABEL_87;
          }
        }

LABEL_41:
        v83 = v44 != 0;
        goto LABEL_42;
      }
    }

    else
    {
      v54 = 0;
      if ((v40[8] & 1) == 0)
      {
        v55 = 0;
        if ((*(a1 + 24) & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_23;
      }
    }

    v54 ^= v41 != 0;
    goto LABEL_16;
  }

  v20 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState;
  result = sub_1E3FBD7A0(&v2[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState], a1);
  if (result)
  {
    return result;
  }

  v22 = v2;
  v23 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_navigationItem;
  OUTLINED_FUNCTION_5_0();
  v24 = *&v22[v23];
  if (v24)
  {
    v157 = v16;
    v25 = *(a1 + 42);
    v26 = v24;
    v27 = sub_1E324FBDC();
    v28 = v7[2];
    v161 = v7;
    if (v25)
    {
      v159 = v20;
      v158 = v26;
      v154 = v27;
      v156 = (v7 + 2);
      v155 = v28;
      (v28)(v19);
      OUTLINED_FUNCTION_17_139();
      OUTLINED_FUNCTION_17_139();
      OUTLINED_FUNCTION_17_139();
      OUTLINED_FUNCTION_17_139();
      OUTLINED_FUNCTION_17_139();
      OUTLINED_FUNCTION_17_139();
      v29 = v22;
      v30 = sub_1E41FFC94();
      v31 = sub_1E4206814();

      v32 = os_log_type_enabled(v30, v31);
      v162 = v22;
      v153 = v29;
      if (!v32)
      {
        sub_1E3FBFC64(a1);
        sub_1E3FBFC64(a1);
        sub_1E3FBFC64(a1);
        sub_1E3FBFC64(a1);
        sub_1E3FBFC64(a1);
        sub_1E3FBFC64(a1);

        v119 = v7[1];
        v33 = (v7 + 1);
        v152 = v119;
        v119(v19, v5);
        goto LABEL_116;
      }

      v33 = swift_slowAlloc();
      v34 = OUTLINED_FUNCTION_100();
      __dst[0] = v34;
      *v33 = 136315906;
      v35 = sub_1E3FBE9B8();
      v37 = OUTLINED_FUNCTION_38_69(v35, v36);

      *(v33 + 4) = v37;
      *(v33 + 12) = 1024;
      if (*(a1 + 40))
      {
        v38 = *(a1 + 80);
        sub_1E3FBFC64(a1);
        if (v38 && (*(a1 + 41) & 1) != 0)
        {
          v39 = 1;
LABEL_100:
          *(v33 + 14) = v39;
          sub_1E3FBFC64(a1);
          *(v33 + 18) = 1024;
          if (*(a1 + 72) && (*(a1 + 24) & 1) != 0)
          {
            v120 = *(a1 + 16);
            sub_1E3FBFC64(a1);
            if (v120 && (*(a1 + 25) & 1) != 0 && (*(a1 + 41) & 1) != 0)
            {
              v121 = 1;
LABEL_108:
              *(v33 + 20) = v121;
              sub_1E3FBFC64(a1);
              *(v33 + 24) = 1024;
              if (*(a1 + 48) && (*(a1 + 8) & 1) != 0)
              {
                v122 = *a1;
                sub_1E3FBFC64(a1);
                if (v122 && (*(a1 + 41) & 1) != 0)
                {
                  v123 = 1;
LABEL_115:
                  *(v33 + 26) = v123;
                  sub_1E3FBFC64(a1);
                  _os_log_impl(&dword_1E323F000, v30, v31, "%s updateUI: accountButton: %{BOOL}d, upnext: %{BOOL}d, muteButton: %{BOOL}d", v33, 0x1Eu);
                  __swift_destroy_boxed_opaque_existential_1(v34);
                  OUTLINED_FUNCTION_6_0();
                  OUTLINED_FUNCTION_6_0();

                  v152 = v161[1];
                  v152(v19, v5);
LABEL_116:
                  v124 = MEMORY[0x1E69E7CC0];
                  v163 = MEMORY[0x1E69E7CC0];
                  v125 = *(a1 + 80);
                  v126 = &selRef_setDelayContentsChangeOperation_;
                  if (v125)
                  {
                    v127 = *(a1 + 40);
                    OUTLINED_FUNCTION_21_111(v125);
                    v128 = v33;
                    MEMORY[0x1E6910BF0]();
                    OUTLINED_FUNCTION_2_235();
                    if (v129)
                    {
LABEL_149:
                      OUTLINED_FUNCTION_8_185();
                    }

                    OUTLINED_FUNCTION_168();
                    sub_1E4206324();
                    MEMORY[0x1E6910BF0]([*(a1 + 56) v126[304]]);
                    if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_1E42062F4();
                    }

                    sub_1E4206324();
                    v130 = v163;
                  }

                  else
                  {
                    v130 = MEMORY[0x1E69E7CC0];
                  }

                  v131 = *(a1 + 72);
                  if (v131)
                  {
                    v132 = OUTLINED_FUNCTION_21_111(v131);
                    MEMORY[0x1E6910BF0](v132);
                    OUTLINED_FUNCTION_2_235();
                    if (v129)
                    {
                      OUTLINED_FUNCTION_8_185();
                    }

                    OUTLINED_FUNCTION_168();
                    sub_1E4206324();
                    v130 = v163;
                  }

                  v133 = *(a1 + 48);
                  if (v133)
                  {
                    v134 = OUTLINED_FUNCTION_21_111(v133);
                    MEMORY[0x1E6910BF0](v134);
                    OUTLINED_FUNCTION_2_235();
                    if (v129)
                    {
                      OUTLINED_FUNCTION_8_185();
                    }

                    OUTLINED_FUNCTION_168();
                    sub_1E4206324();
                    v130 = v163;
                  }

                  v160 = v5;
                  __dst[0] = v124;
                  v128 = sub_1E32AE9B0(v130);
                  v135 = 0;
                  v126 = (v130 & 0xC000000000000001);
                  v127 = v130 & 0xF8;
                  v5 = &selRef_initWithMediaInfo_watchType_isRentAndWatchNow_;
                  while (v128 != v135)
                  {
                    if (v126)
                    {
                      v136 = MEMORY[0x1E6911E60](v135, v130);
                    }

                    else
                    {
                      if (v135 >= *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_148;
                      }

                      v136 = *(v130 + 8 * v135 + 32);
                    }

                    v137 = v136;
                    if (__OFADD__(v135, 1))
                    {
                      __break(1u);
LABEL_148:
                      __break(1u);
                      goto LABEL_149;
                    }

                    if ([v136 isHidden])
                    {
                    }

                    else
                    {
                      sub_1E4207544();
                      v124 = *(__dst[0] + 16);
                      sub_1E4207584();
                      sub_1E4207594();
                      sub_1E4207554();
                    }

                    ++v135;
                  }

                  v138 = sub_1E32AE9B0(__dst[0]);

                  v139 = v157;
                  v140 = v160;
                  v155(v157, v154, v160);
                  swift_bridgeObjectRetain_n();
                  v141 = v153;
                  v142 = sub_1E41FFC94();
                  v143 = sub_1E4206814();

                  if (os_log_type_enabled(v142, v143))
                  {
                    v144 = OUTLINED_FUNCTION_100();
                    v156 = OUTLINED_FUNCTION_100();
                    __dst[0] = v156;
                    *v144 = 136315650;
                    v145 = sub_1E3FBE9B8();
                    v147 = OUTLINED_FUNCTION_38_69(v145, v146);

                    *(v144 + 4) = v147;
                    *(v144 + 12) = 2048;
                    v148 = sub_1E32AE9B0(v130);

                    *(v144 + 14) = v148;

                    *(v144 + 22) = 2048;
                    *(v144 + 24) = v138;
                    _os_log_impl(&dword_1E323F000, v142, v143, "%s rightBarItemsCount: %ld, visibleItems: %ld", v144, 0x20u);
                    __swift_destroy_boxed_opaque_existential_1(v156);
                    OUTLINED_FUNCTION_6_0();
                    OUTLINED_FUNCTION_6_0();
                  }

                  else
                  {

                    swift_bridgeObjectRelease_n();
                  }

                  v152(v139, v140);
                  v149 = v162;
                  v150 = v159;
                  v151 = v158;
                  sub_1E3FC29B4(MEMORY[0x1E69E7CC0], v158);
                  sub_1E3FC29B4(v130, v151);

                  memcpy(__dst, &v149[v150], sizeof(__dst));
                  v118 = &v149[v150];
                  goto LABEL_145;
                }
              }

              else
              {
                sub_1E3FBFC64(a1);
              }

              v123 = 0;
              goto LABEL_115;
            }
          }

          else
          {
            sub_1E3FBFC64(a1);
          }

          v121 = 0;
          goto LABEL_108;
        }
      }

      else
      {
        sub_1E3FBFC64(a1);
      }

      v39 = 0;
      goto LABEL_100;
    }

    v28(v13, v27, v5);
    v67 = v22;
    v68 = sub_1E41FFC94();
    v69 = v5;
    v70 = sub_1E4206814();

    if (os_log_type_enabled(v68, v70))
    {
      v71 = OUTLINED_FUNCTION_6_21();
      v72 = OUTLINED_FUNCTION_100();
      v158 = v26;
      v73 = v20;
      v74 = v72;
      __dst[0] = v72;
      *v71 = 136315138;
      v160 = v69;
      v75 = sub_1E3FBE9B8();
      v77 = OUTLINED_FUNCTION_38_69(v75, v76);

      *(v71 + 4) = v77;
      _os_log_impl(&dword_1E323F000, v68, v70, "%s updateUI: showNavigationItems is false, clear right bar items", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      v20 = v73;
      v26 = v158;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v78 = OUTLINED_FUNCTION_33_80();
      v80 = v160;
    }

    else
    {

      v78 = OUTLINED_FUNCTION_33_80();
      v80 = v69;
    }

    v79(v78, v80);
    sub_1E3FC29B4(MEMORY[0x1E69E7CC0], v26);
  }

  else
  {
    v56 = sub_1E324FBDC();
    (v7[2])(v10, v56, v5);
    v57 = v22;
    v58 = sub_1E41FFC94();
    v59 = v5;
    v60 = sub_1E4206814();

    if (os_log_type_enabled(v58, v60))
    {
      v61 = OUTLINED_FUNCTION_6_21();
      v62 = OUTLINED_FUNCTION_100();
      v159 = v20;
      v63 = v62;
      __dst[0] = v62;
      *v61 = 136315138;
      v160 = v59;
      v64 = sub_1E3FBE9B8();
      v66 = OUTLINED_FUNCTION_38_69(v64, v65);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_1E323F000, v58, v60, "%s updateUI: navigationItem is nil, ignore", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      v20 = v159;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v7[1](v10, v160);
    }

    else
    {

      v7[1](v10, v59);
    }
  }

  memcpy(__dst, &v22[v20], sizeof(__dst));
  v118 = &v22[v20];
LABEL_145:
  memcpy(v118, a1, 0x58uLL);
  sub_1E3FBFC2C(a1, &aBlock);
  return sub_1E3FBFC64(__dst);
}

uint64_t sub_1E3FBFC94(void *a1, char a2, char a3)
{
  memcpy(__dst, (v3 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState), 0x58uLL);
  v7 = *(v3 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 16);
  v24 = *(v3 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState);
  v25[0] = v7;
  *(v25 + 9) = *(v3 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 25);
  v8 = __dst[41];
  v9 = *(v3 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 59);
  v22 = *(v3 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 43);
  v23[0] = v9;
  *(v23 + 13) = *(v3 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 72);
  v10 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_navigationItem;
  OUTLINED_FUNCTION_3_0();
  v11 = *(v3 + v10);
  if (!v11)
  {
    if (a1)
    {
      sub_1E3FBFC2C(__dst, &v26);
      v8 = 1;
      goto LABEL_7;
    }

LABEL_6:
    sub_1E3FBFC2C(__dst, &v26);
    goto LABEL_7;
  }

  if (a1)
  {
    goto LABEL_6;
  }

  sub_1E3FBFC2C(__dst, &v26);
  sub_1E3FC29B4(MEMORY[0x1E69E7CC0], v11);
  v8 = 0;
LABEL_7:
  v12 = a2 & 1;
  v13 = *(v3 + v10);
  *(v3 + v10) = a1;
  v14 = a1;

  v26 = v24;
  *v27 = v25[0];
  *&v27[9] = *(v25 + 9);
  v28 = v8;
  v29 = v12;
  v30 = v22;
  *v31 = v23[0];
  *&v31[13] = *(v23 + 13);
  sub_1E3FBEB5C(&v26, a3 & 1);
  v16 = v24;
  *v17 = v25[0];
  *&v17[9] = *(v25 + 9);
  v18 = v8;
  v19 = v12;
  v20 = v22;
  *v21 = v23[0];
  *&v21[13] = *(v23 + 13);
  return sub_1E3FBFC64(&v16);
}

uint64_t sub_1E3FBFE0C(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState);
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 16);
  v5 = v4;
  v6 = sub_1E3FC00C0(a1, v4);

  if (v6)
  {
    memcpy(__dst, v3, sizeof(__dst));
    v8 = __dst[9];
    v7 = __dst[10];
    v9 = __dst[2];
    v29 = *v3;
    v24 = *(v3 + 26);
    *v26 = *(v3 + 42);
    *&v26[14] = *(v3 + 56);
    sub_1E3FBFC2C(__dst, &v38);

    v10 = v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState;
    v11 = *(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 72);
    if (v11 && (v12 = [v11 customView]) != 0)
    {
      v13 = v12;
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (!v14)
      {
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = sub_1E3FC00C0(a1, v14);
    if (v15)
    {
      v16 = v15;
      [v16 setTranslatesAutoresizingMaskIntoConstraints_];
      v17 = sub_1E3FBDF70();
      sub_1E3FC2B38(v17, v18, v16);
      v19 = *(v10 + 72);
      if (v19)
      {
        v20 = *(v10 + 72);
      }

      else
      {
        v20 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
        v19 = 0;
      }

      v22 = v19;
      [v20 setCustomView_];
    }

    else
    {

      v20 = 0;
    }

    v38 = v29;
    v39 = v6;
    v40 = 257;
    v41 = v24;
    *v42 = *v26;
    *&v42[14] = *&v26[14];
    *&v42[30] = v20;
    *&v42[38] = v7;
    sub_1E3FBEB5C(&v38, 1);
    v33 = v29;
    v34 = v6;
    v35 = 257;
    v36 = v24;
    *v37 = *v26;
    *&v37[14] = *&v26[14];
    *&v37[30] = v20;
    *&v37[38] = v7;
  }

  else
  {
    memcpy(__dst, v3, sizeof(__dst));
    v31 = *(v3 + 2);
    v25 = *(v3 + 26);
    v27 = *(v3 + 42);
    *v28 = *(v3 + 58);
    v21 = *v28;
    *&v28[14] = *(v3 + 72);
    v38 = *v3;
    v30 = v38;
    v39 = v31;
    v40 = 0;
    *v42 = v27;
    v41 = v25;
    *&v42[16] = v21;
    *&v42[30] = *&v28[14];
    sub_1E3FBFC2C(__dst, &v33);
    sub_1E3FBEB5C(&v38, 1);
    v33 = v30;
    v34 = v31;
    v35 = 0;
    v36 = v25;
    *v37 = v27;
    *&v37[16] = *v28;
    *&v37[30] = *&v28[14];
  }

  return sub_1E3FBFC64(&v33);
}

void *sub_1E3FC00C0(uint64_t a1, void *a2)
{
  v4 = v3;
  v6 = (*(*a1 + 488))();
  if (!v6)
  {
    return 0;
  }

  sub_1E373E010(65, v6);
  OUTLINED_FUNCTION_12_1();

  if (!v2)
  {
    return 0;
  }

  v7 = [v3 vuiUserInterfaceStyle];
  OUTLINED_FUNCTION_24_103(v7, v8, v9, v10, v11, v12, v13, v14, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, 0, 0, 0, 0, 0, 0, 0, 0, v50, v51, v52);
  type metadata accessor for ButtonLayout();
  v15 = sub_1E3BC565C();
  type metadata accessor for UIFactory();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_36_68(v16, v17, v18, v19, v20, v21, v22, v23, v32, v33, v34, v35, &type metadata for ButtonViewContext, &off_1F5D8FAD0, v38);
  sub_1E3280A90(0, &qword_1EE23ACF0);

  v25 = sub_1E393D92C(v24, a2, &v33, v15);

  sub_1E325F748(&v33, &qword_1ECF296C0);
  if (v25)
  {
    v26 = objc_opt_self();
    v27 = v25;
    v28 = [v26 whiteColor];
    [v27 setTintColor_];

    [v27 setAllowsUberTinting_];
    [v27 setScrolledNonUberPercentage_];
    v29 = sub_1E41E1364(v4);
    v33 = 0xD000000000000016;
    v34 = 0x80000001E42E2BF0;
    MEMORY[0x1E69109E0](v29);

    sub_1E3FC2B38(v33, v34, v27);
  }

  return v25;
}

void sub_1E3FC02FC()
{
  [v0 frame];
  CGRectGetHeight(v5);
  v1 = *&v0[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState];
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 16];
    if (!v3)
    {
      return;
    }

    v2 = v3;
    v1 = 0;
  }

  v4 = v1;
  [v2 intrinsicContentSize];
  [v0 frame];
  CGRectGetHeight(v6);
}

uint64_t sub_1E3FC03AC(uint64_t result)
{
  if (result)
  {
    v2 = (v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState);
    v3 = *(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 32);
    v4 = v3;

    v6 = sub_1E3FC0524(v5, v3);

    if (v6)
    {
      memcpy(__dst, v2, sizeof(__dst));
      v7 = v2[1];
      v21 = *v2;
      v22 = v7;
      v8 = *(v2 + 57);
      v19 = *(v2 + 41);
      v20[0] = v8;
      *(v20 + 15) = *(v2 + 9);
      v9 = __dst[4];
      v10 = __dst[10];
      sub_1E3FBFC2C(__dst, v24);

      if (sub_1E39DFFC8())
      {
        v11 = __dst[10];

        sub_1E3FC0674();
        v10 = v12;
      }

      v24[0] = v21;
      v24[1] = v22;
      v25 = v6;
      v26 = 1;
      v27 = v19;
      *v28 = v20[0];
      *&v28[15] = *(v20 + 15);
      v29 = v10;
      sub_1E3FBEB5C(v24, 0);

      v13[0] = v21;
      v13[1] = v22;
      v14 = v6;
      v15 = 1;
      v16 = v19;
      *v17 = v20[0];
      *&v17[15] = *(v20 + 15);
      v18 = v10;
      return sub_1E3FBFC64(v13);
    }

    else
    {
    }
  }

  return result;
}

void *sub_1E3FC0524(uint64_t a1, void *a2)
{
  v5 = [v2 vuiUserInterfaceStyle];
  OUTLINED_FUNCTION_24_103(v5, v6, v7, v8, v9, v10, v11, v12, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, 0, 0, 0, 0, 0, 0, 0, 0, v46, v47, v48);
  type metadata accessor for UIFactory();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_36_68(v13, v14, v15, v16, v17, v18, v19, v20, v28, v29, v30, v31, &type metadata for ButtonViewContext, &off_1F5D8FAD0, v34);
  v21 = sub_1E3FBDD90();
  sub_1E3280A90(0, &qword_1EE23ACF0);
  v22 = sub_1E393D92C(a1, a2, &v29, v21);

  sub_1E325F748(&v29, &qword_1ECF296C0);
  if (v22)
  {
    v23 = objc_opt_self();
    v24 = v22;
    v25 = [v23 whiteColor];
    [v24 setTintColor_];
  }

  return v22;
}

void sub_1E3FC0674()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  if (v2)
  {
    v10 = [v2 customView];
    if (v10)
    {
      v11 = v10;
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = v12;
        goto LABEL_7;
      }
    }
  }

  type metadata accessor for MediaShowcasingToolbarPrewarm();
  v13 = qword_1ECF69FB0;
  qword_1ECF69FB0 = 0;
LABEL_7:

  v15 = sub_1E3FC0524(v14, v13);
  if (v15)
  {
    v16 = v15;
    if (v2)
    {
      v17 = v2;
    }

    else
    {
      v17 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
    }

    v18 = v2;
    [v17 setCustomView_];
    if (sub_1E39DFFC8())
    {
      v19 = sub_1E324FBDC();
      (*(v5 + 16))(v9, v19, v3);
      v20 = v0;
      v21 = sub_1E41FFC94();
      v22 = sub_1E4206814();

      if (os_log_type_enabled(v21, v22))
      {
        v28 = v5;
        v23 = OUTLINED_FUNCTION_6_21();
        v27 = OUTLINED_FUNCTION_100();
        v29 = v27;
        *v23 = 136315138;
        v24 = sub_1E3FBE9B8();
        v26 = sub_1E3270FC8(v24, v25, &v29);

        *(v23 + 4) = v26;
        _os_log_impl(&dword_1E323F000, v21, v22, "%s makeAccountSetting: prefersNoPlatter=true", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        (*(v28 + 8))(v9, v3);
      }

      else
      {

        (*(v5 + 8))(v9, v3);
      }

      [v17 _setPrefersNoPlatter_];
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FC0934(char a1)
{
  memcpy(__dst, (v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState), sizeof(__dst));
  v6 = *(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState);
  v7 = *(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 16);
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 41);
  *v5 = *(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 57);
  *&v5[15] = *(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 72);
  v10 = *(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 32);
  v8 = v10;
  v9[0] = v6;
  v9[1] = v7;
  v11 = a1;
  v12 = *(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 41);
  *v13 = *(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 57);
  *&v13[15] = *(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 72);
  sub_1E3FBFC2C(__dst, v15);
  sub_1E3FBEB5C(v9, 0);
  v15[0] = v6;
  v15[1] = v7;
  v16 = v8;
  v17 = a1;
  v18 = v4;
  v19[0] = *v5;
  *(v19 + 15) = *&v5[15];
  return sub_1E3FBFC64(v15);
}

uint64_t sub_1E3FC0B74()
{
  v1 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_isMuted;
  OUTLINED_FUNCTION_3_0();
  *(v0 + v1) = (*(v0 + v1) & 1) == 0;
  sub_1E3FBDADC();
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_onMutePressed);
  result = OUTLINED_FUNCTION_5_0();
  v4 = *v2;
  if (*v2)
  {
    v5 = *(v0 + v1);

    v4(v5);
    return sub_1E34AF594(v4);
  }

  return result;
}

id sub_1E3FC0C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1E3FBDEF4();
  sub_1E3FBD4AC();
  OUTLINED_FUNCTION_12_1();

  v9 = [objc_allocWithZone(VUIButton) initWithType:7 interfaceStyle:2];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DF740]) init];
  [v9 setImageView_];

  [v9 setTextContentView_];
  v11 = [v9 imageView];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1E3FC1D1C(a1, a2, v4, 0, 0);
    [v12 setImage_];
  }

  v19[4] = a3;
  v19[5] = a4;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1E37C0588;
  v19[3] = &block_descriptor_28_1;
  v14 = _Block_copy(v19);

  [v9 setSelectActionHandler_];
  _Block_release(v14);
  sub_1E3F88F44();
  [v9 configureWithLayoutProperties];
  [v9 setScrolledNonUberPercentage_];
  v15 = objc_opt_self();
  v16 = v9;
  v17 = [v15 whiteColor];
  [v16 setTintColor_];

  [v16 setAllowsUberTinting_];

  return v16;
}

void sub_1E3FC0E60()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_navigationItem;
  OUTLINED_FUNCTION_5_0();
  v5 = *(v3 + v4);
  if (!v5)
  {
    goto LABEL_45;
  }

  v6 = v5;
  v7 = sub_1E3FC2944(v6);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v46 = v8;
  v9 = *(v1 + 72);
  if (v9 && (*(v1 + 24) & 1) != 0 && *(v1 + 16) && (*(v1 + 25) & 1) != 0 && (*(v1 + 41) & 1) != 0 && (*(v1 + 42) & 1) != 0)
  {
    v45 = *(v1 + 72);
    MEMORY[0x1EEE9AC00](v7);
    v43 = &v45;
    v10 = v9;
    sub_1E3FC2308(sub_1E3FC2D48, v42, v8);
    if (v11)
    {
    }

    else
    {
      v38 = [v10 customView];
      if (v38)
      {
        v39 = v38;
        [v38 setAlpha_];
      }

      sub_1E37EFABC(0, v8);
      if (sub_1E32AE9B0(v8) < 0)
      {
        goto LABEL_56;
      }

      v40 = sub_1E32AE9B0(v8);
      v26 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v26)
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      sub_1E3797CDC(v41);
      sub_1E3FC27F0(0, 0, 1, v10);
      v8 = v46;
    }
  }

  if (!*(v1 + 48) || (*(v1 + 8) & 1) == 0 || !*v1 || (*(v1 + 41) & 1) == 0 || (*(v1 + 42) & 1) == 0)
  {
LABEL_44:
    v36 = OUTLINED_FUNCTION_16_0();
    sub_1E3FC29B4(v36, v37);

LABEL_45:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v12 = *(v1 + 64);
  v45 = v12;
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v45;
  v44 = v13;
  sub_1E3FC2308(sub_1E3FC2CBC, v42, v8);
  if (!v9 || (v14 & 1) != 0 || (*(v1 + 24) & 1) == 0 || !*(v1 + 16) || (*(v1 + 25) & 1) == 0)
  {
    v45 = v12;
    MEMORY[0x1EEE9AC00](v14);
    OUTLINED_FUNCTION_18_131();
    sub_1E3FC2308(sub_1E3FC2D48, v19, v8);
    if (v18 & 1) == 0 || v9 && (*(v1 + 24) & 1) != 0 && *(v1 + 16) && (*(v1 + 25))
    {
      goto LABEL_38;
    }

    sub_1E3FC23F8(&v46, v12);
    v21 = v20;
    v22 = v46;
    v23 = sub_1E32AE9B0(v46);
    v24 = v23 - v21;
    if (v23 < v21)
    {
      __break(1u);
    }

    else if ((v21 & 0x8000000000000000) == 0)
    {
      v25 = v23;
      if (sub_1E32AE9B0(v22) >= v23)
      {
        v26 = __OFSUB__(0, v24);
        v27 = -v24;
        if (!v26)
        {
          v28 = sub_1E32AE9B0(v22);
          v26 = __OFADD__(v28, v27);
          v29 = v28 + v27;
          if (!v26)
          {
            sub_1E3797CDC(v29);
            v18 = sub_1E3FC26E4(v21, v25, 0);
            goto LABEL_37;
          }

          goto LABEL_55;
        }

LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    __break(1u);
    goto LABEL_53;
  }

  sub_1E37EFABC(1, v8);
  if (sub_1E32AE9B0(v8) < 1)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v15 = sub_1E32AE9B0(v8);
  v16 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    v17 = v12;
    sub_1E3797CDC(v16);
    sub_1E3FC27F0(1, 1, 1, v17);
LABEL_37:
    v8 = v46;
LABEL_38:
    v30 = v44;
    v45 = v44;
    MEMORY[0x1EEE9AC00](v18);
    OUTLINED_FUNCTION_18_131();
    sub_1E3FC2308(sub_1E3FC2D48, v31, v8);
    if ((v32 & 1) == 0)
    {
      v33 = v30;
      MEMORY[0x1E6910BF0]();
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      v34 = [v33 customView];
      if (v34)
      {
        v35 = v34;
        [v34 setAlpha_];
      }
    }

    goto LABEL_44;
  }

LABEL_59:
  __break(1u);
}

void sub_1E3FC12CC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = v0;
  v4 = &selRef_secureInvalidationNonceURL;
  if (*v0 && (*(v0 + 8) & 1) != 0)
  {
    v5 = *v0;
    v6 = sub_1E3FBDE80();
    v7 = [v6 arrangedSubviews];

    sub_1E3280A90(0, &qword_1EE23AE80);
    v8 = sub_1E42062B4();

    v40 = v5;
    MEMORY[0x1EEE9AC00](v9);
    v10 = OUTLINED_FUNCTION_22_95();
    sub_1E3FC2308(sub_1E3FC2D2C, v7, v8);
    LOBYTE(v7) = v11;

    if ((v7 & 1) == 0)
    {
      [*(v2 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___stackView) insertArrangedSubview:v10 atIndex:0];
      [v10 setAlpha_];
    }
  }

  v12 = *(v3 + 16);
  v13 = &selRef__shouldShowRenewalOption;
  if (v12 && (*(v3 + 24) & 1) != 0 && (*(v3 + 25) & 1) != 0)
  {
    v14 = v12;
    v15 = sub_1E3FBDE80();
    v16 = [v15 arrangedSubviews];

    sub_1E3280A90(0, &qword_1EE23AE80);
    v17 = sub_1E42062B4();

    v40 = v14;
    MEMORY[0x1EEE9AC00](v18);
    v19 = OUTLINED_FUNCTION_22_95();
    sub_1E3FC2308(sub_1E3FC2D2C, v16, v17);
    LOBYTE(v16) = v20;

    v4 = &selRef_secureInvalidationNonceURL;
    if (v16)
    {
LABEL_16:

      v13 = &selRef__shouldShowRenewalOption;
      goto LABEL_17;
    }

    v21 = *(v3 + 32);
    if (v21)
    {
      v39 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___stackView;
      v22 = *(v2 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___stackView);
      v23 = v21;
      v24 = [v22 &selRef_changeMediaInDirection_ + 1];
      v25 = sub_1E42062B4();

      sub_1E3FC16C0(v23, v25);
      v27 = v26;
      LOBYTE(v24) = v28;

      if ((v24 & 1) == 0)
      {
        [*(v2 + v39) insertArrangedSubview:v19 atIndex:v27];

        v4 = &selRef_secureInvalidationNonceURL;
        goto LABEL_15;
      }

      v4 = &selRef_secureInvalidationNonceURL;
    }

    [*(v2 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___stackView) addArrangedSubview_];
LABEL_15:
    [v19 v4[143]];
    goto LABEL_16;
  }

LABEL_17:
  v29 = *(v3 + 32);
  if (v29 && (*(v3 + 40) & 1) != 0)
  {
    v30 = v29;
    v31 = sub_1E3FBDE80();
    v32 = [v31 arrangedSubviews];

    sub_1E3280A90(0, &qword_1EE23AE80);
    v33 = sub_1E42062B4();

    v40 = v30;
    MEMORY[0x1EEE9AC00](v34);
    v38[2] = &v40;
    v35 = v30;
    sub_1E3FC2308(sub_1E3BC8610, v38, v33);
    v37 = v36;

    if ((v37 & 1) == 0)
    {
      [*(v2 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___stackView) v13[409]];
      [v35 v4[143]];
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FC16C0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E32AE9B0(a2);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E6911E60](v4, a2);
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_1E3280A90(0, &qword_1EE23AE80);
    v7 = sub_1E4206F64();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

void sub_1E3FC17BC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  if (v10)
  {
    v11 = *v0;
    if (*v0)
    {
      v12 = *(v0 + 8) & 1;
      v13 = 0.0;
      if (*(v0 + 8))
      {
        v13 = 1.0;
      }

      [*v0 setAlpha_];
      [v11 setUserInteractionEnabled_];
    }
  }

  if (v8)
  {
    v14 = *(v9 + 48);
    if (v14)
    {
      v15 = [*(v9 + 48) customView];
      if (v15)
      {
        v16 = v15;
        if ((*(v9 + 8) & 1) == 0 || !*v9 || (*(v9 + 41) & 1) == 0 || (v17 = 1.0, (*(v9 + 42) & 1) == 0))
        {
          v17 = 0.0;
        }

        [v15 setAlpha_];
      }

      v18 = [v14 customView];
      if (v18)
      {
        v19 = v18;
        if (*(v9 + 8) & 1) != 0 && *v9 && (*(v9 + 41))
        {
          v20 = *(v9 + 42);
        }

        else
        {
          v20 = 0;
        }

        [v18 setUserInteractionEnabled_];
      }
    }
  }

  if (v6)
  {
    v21 = *(v9 + 16);
    if (v21)
    {
      v22 = *(v9 + 24);
      if (v22)
      {
        if (*(v9 + 25))
        {
          v23 = 1.0;
          v24 = 1;
LABEL_30:
          [*(v9 + 16) setAlpha_];
          [v21 setUserInteractionEnabled_];
          goto LABEL_31;
        }

        v24 = 0;
      }

      else
      {
        v24 = *(v9 + 25);
      }

      v23 = 0.0;
      goto LABEL_30;
    }
  }

LABEL_31:
  if (v4)
  {
    v25 = *(v9 + 72);
    if (v25)
    {
      v26 = [*(v9 + 72) customView];
      if (v26)
      {
        v27 = v26;
        if ((*(v9 + 24) & 1) == 0 || !*(v9 + 16) || (*(v9 + 25) & 1) == 0 || (*(v9 + 41) & 1) == 0 || (v28 = 1.0, (*(v9 + 42) & 1) == 0))
        {
          v28 = 0.0;
        }

        [v26 setAlpha_];
      }

      v29 = [v25 customView];
      if (v29)
      {
        v30 = v29;
        if (*(v9 + 24) & 1) != 0 && *(v9 + 16) && (*(v9 + 25) & 1) != 0 && (*(v9 + 41))
        {
          v31 = *(v9 + 42);
        }

        else
        {
          v31 = 0;
        }

        [v29 setUserInteractionEnabled_];
      }
    }
  }

  if ((v2 & 1) != 0 && (v32 = *(v9 + 32)) != 0)
  {
    v33 = 0.0;
    if (*(v9 + 40))
    {
      v33 = 1.0;
    }

    [v32 setAlpha_];
    OUTLINED_FUNCTION_25_2();

    [v34 v35];
  }

  else
  {
    OUTLINED_FUNCTION_25_2();
  }
}

void sub_1E3FC1A68(char a1, uint64_t a2, char a3, char a4)
{
  if ((a1 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 16);
  if (*(a2 + 24))
  {
    if (!v7 || (*(a2 + 25) & 1) != 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v7)
  {
    goto LABEL_8;
  }

  [v7 setHidden_];
LABEL_8:
  if (a3)
  {
    v8 = *(a2 + 72);
    if (v8)
    {
      if ((*(a2 + 24) & 1) == 0 || !*(a2 + 16) || (*(a2 + 25) & 1) == 0 || (*(a2 + 41) & 1) == 0 || (*(a2 + 42) & 1) == 0)
      {
        v9 = [v8 customView];
        if (v9)
        {
          v10 = v9;
          [v9 setHidden_];
        }
      }
    }
  }

  if ((a4 & 1) != 0 && (*(a2 + 40) & 1) == 0)
  {
    v11 = *(a2 + 32);
    if (v11)
    {

      [v11 setHidden_];
    }
  }
}

void sub_1E3FC1B68()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  if (v6)
  {
    v7 = *(v0 + 16);
    if (v7)
    {
      if ([*(v0 + 16) isHidden] && (*(v5 + 24) & 1) != 0 && (*(v5 + 25) & 1) != 0)
      {
        [v7 setHidden_];
        [v7 setAlpha_];
      }
    }
  }

  if (v4)
  {
    v8 = *(v5 + 72);
    if (v8)
    {
      v9 = [*(v5 + 72) customView];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 isHidden];

        if (v11)
        {
          if (*(v5 + 24) & 1) != 0 && *(v5 + 16) && (*(v5 + 25) & 1) != 0 && (*(v5 + 41) & 1) != 0 && (*(v5 + 42))
          {
            v12 = [v8 customView];
            if (v12)
            {
              v13 = v12;
              [v12 setHidden_];
            }

            v14 = [v8 customView];
            if (v14)
            {
              v15 = v14;
              [v14 setAlpha_];
            }
          }
        }
      }
    }
  }

  if (v2 & 1) != 0 && (v16 = *(v5 + 32)) != 0 && [*(v5 + 32) isHidden] && (*(v5 + 40))
  {
    [v16 setHidden_];
    OUTLINED_FUNCTION_25_2();

    [v17 v18];
  }

  else
  {
    OUTLINED_FUNCTION_25_2();
  }
}

id sub_1E3FC1D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = (*(*a3 + 2096))();
  (*(*v7 + 1944))(v7);
  OUTLINED_FUNCTION_12_1();

  v8 = sub_1E4205ED4();
  if (a5)
  {
    a5 = sub_1E4205ED4();
  }

  v9 = [objc_opt_self() vuiSystemImageNamed:v8 withConfiguration:v5 accessibilityDescription:a5];

  return v9;
}

id sub_1E3FC1E24()
{
  result = qword_1ECF69FA8;
  if (qword_1ECF69FA8)
  {
    qword_1ECF69FA8 = 0;
  }

  else
  {
    v2 = objc_allocWithZone(type metadata accessor for MediaShowcasingToolbar());
    v5 = OUTLINED_FUNCTION_5_8();

    return [v3 v4];
  }

  return result;
}

uint64_t sub_1E3FC1E70()
{
  v1[2] = v0;
  v2 = sub_1E41FFBF4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1E4206434();
  v1[6] = sub_1E4206424();
  v4 = sub_1E42063B4();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E3FC1F64, v4, v3);
}

uint64_t sub_1E3FC1F64()
{
  v1 = v0[4];
  sub_1E4206BA4();
  v2 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_27_92();

  v0[9] = *(v1 + 8);
  v0[10] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3 = OUTLINED_FUNCTION_16_0();
  v4(v3);
  v5 = [objc_allocWithZone(VUIAccountSettingsButton) initWithType:5 interfaceStyle:2];
  if (v5)
  {
    v6 = qword_1ECF69FB0;
    qword_1ECF69FB0 = v5;

    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_1E3FC209C;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DA78](v5);
}

uint64_t sub_1E3FC209C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1E3FC21BC, v3, v2);
}

uint64_t sub_1E3FC21BC()
{
  v1 = *(v0 + 72);

  v2 = objc_allocWithZone(type metadata accessor for MediaShowcasingToolbar());
  v3 = OUTLINED_FUNCTION_5_8();
  v6 = [v4 v5];
  v7 = qword_1ECF69FA8;
  qword_1ECF69FA8 = v6;

  sub_1E4206B94();
  v8 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_27_92();

  v9 = OUTLINED_FUNCTION_16_0();
  v1(v9);

  v10 = *(v0 + 8);

  return v10();
}

void sub_1E3FC2308(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = sub_1E32AE9B0(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v11 = OUTLINED_FUNCTION_168();
      v8 = MEMORY[0x1E6911E60](v11);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v13 = v8;
    v10 = a1(&v13);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

void sub_1E3FC23F8(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  v6 = sub_1E3FC2610(v4, v5);
  v8 = v6;
  if (v2)
  {
    goto LABEL_36;
  }

  if (v7)
  {
    sub_1E32AE9B0(v4);
LABEL_36:

    return;
  }

  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      if (v4 >> 62)
      {
        v10 = sub_1E4207384();
      }

      else
      {
        v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9 == v10)
      {
        goto LABEL_36;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1E6911E60](v9, v4);
        swift_unknownObjectRelease();
        if (v22 != v5)
        {
          if (v8 != v9)
          {
            v13 = MEMORY[0x1E6911E60](v8, v4);
            v14 = MEMORY[0x1E6911E60](v9, v4);
            goto LABEL_16;
          }

LABEL_26:
          v21 = __OFADD__(v8++, 1);
          if (v21)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          break;
        }

        v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9 >= v11)
        {
          goto LABEL_38;
        }

        v12 = *(v4 + 32 + 8 * v9);
        if (v12 != v5)
        {
          if (v8 != v9)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_41;
            }

            if (v8 >= v11)
            {
              goto LABEL_42;
            }

            v13 = *(v4 + 32 + 8 * v8);
            v14 = v12;
LABEL_16:
            v15 = v14;
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
            {
              v4 = sub_1E37EFA58(v4);
              v16 = (v4 >> 62) & 1;
            }

            else
            {
              LODWORD(v16) = 0;
            }

            v17 = v4 & 0xFFFFFFFFFFFFFF8;
            v18 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
            *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v15;

            if ((v4 & 0x8000000000000000) != 0 || v16)
            {
              v4 = sub_1E37EFA58(v4);
              v17 = v4 & 0xFFFFFFFFFFFFFF8;
              if ((v9 & 0x8000000000000000) != 0)
              {
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }
            }

            else if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_35;
            }

            if (v9 >= *(v17 + 16))
            {
              goto LABEL_43;
            }

            v19 = v17 + 8 * v9;
            v20 = *(v19 + 32);
            *(v19 + 32) = v13;

            *a1 = v4;
          }

          goto LABEL_26;
        }
      }

      v21 = __OFADD__(v9++, 1);
      if (v21)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1E3FC2610(unint64_t a1, void *a2)
{
  result = sub_1E32AE9B0(a1);
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      v9 = 0;
      goto LABEL_12;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v8 = MEMORY[0x1E6911E60](v6, a1);
    result = swift_unknownObjectRelease();
    if (v8 == a2)
    {
LABEL_10:
      v9 = v6;
LABEL_12:

      return v9;
    }

LABEL_6:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_14;
    }
  }

  if (v6 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    if (*(a1 + 8 * v6 + 32) == a2)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1E3FC26E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1E3280A90(0, qword_1EE23B2E0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_21:
  result = sub_1E4207384();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1E4207384();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

void sub_1E3FC27F0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a3;
  v6 = a2;
  v19 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  sub_1E3280A90(0, qword_1EE23B2E0);
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_25:
  v13 = sub_1E4207384();
LABEL_6:
  v14 = &v13[-v6];
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = &v5[v4];
  v16 = (v8 + 8 * v6);
  if (v15 != v16 || &v16[8 * v14] <= v15)
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    v13 = sub_1E4207384();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_27;
  }

  *(v7 + 16) = &v13[v10];
LABEL_17:
  v13 = v19;
  if (v4 >= 1)
  {
    *v5 = v19;
    if (v4 == 1)
    {
      return;
    }

LABEL_28:
    v18 = v13;
    __break(1u);
    return;
  }
}

uint64_t sub_1E3FC2944(void *a1)
{
  v1 = [a1 rightBarButtonItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E3280A90(0, qword_1EE23B2E0);
  v3 = sub_1E42062B4();

  return v3;
}

void sub_1E3FC29B4(uint64_t a1, void *a2)
{
  sub_1E3280A90(0, qword_1EE23B2E0);
  v3 = sub_1E42062A4();

  [a2 setRightBarButtonItems_];
}

uint64_t sub_1E3FC2AD4(void *a1)
{
  v2 = [a1 animationKeys];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E42062B4();

  return v3;
}

void sub_1E3FC2B38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  [a3 setBackdropGroupName_];
}

void sub_1E3FC2B9C()
{
  if (*(v0 + 16) == 1)
  {
    OUTLINED_FUNCTION_35_75();
    sub_1E3FC1B68();
  }

  sub_1E3FC17BC();
}

void sub_1E3FC2C18()
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (sub_1E3FBD7A0((Strong + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState), (v0 + 24)))
    {
      v3 = OUTLINED_FUNCTION_35_75();
      sub_1E3FC1A68(v3, v4, v5, v6);
    }
  }
}

void sub_1E3FC2CE0()
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3FC0B74();
  }
}

uint64_t sub_1E3FC2D70(uint64_t a1, uint64_t a2)
{
  sub_1E42074B4();
  MEMORY[0x1E69109E0](0x6867696C68676968, 0xEF203A734C525574);
  v4 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = MEMORY[0x1E69E6158];
  v7 = MEMORY[0x1E6910C30](v5, MEMORY[0x1E69E6158]);
  v9 = v8;

  MEMORY[0x1E69109E0](v7, v9);

  MEMORY[0x1E69109E0](0xD000000000000018, 0x80000001E428C5A0);
  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = v4;
  }

  v11 = MEMORY[0x1E6910C30](v10, v6);
  v13 = v12;

  MEMORY[0x1E69109E0](v11, v13);

  OUTLINED_FUNCTION_23();
  MEMORY[0x1E69109E0](0xD000000000000015);
  v14 = sub_1E4207944();
  MEMORY[0x1E69109E0](v14);

  return 0;
}

id sub_1E3FC2F30()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 syndicationConfig];

  v2 = [v1 highlightsFetchLimit];
  return v2;
}

uint64_t sub_1E3FC2FA8()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI17HighlightsManager____lazy_storage___syndicationIdToHighlightMap))
  {
    v1 = *(v0 + OBJC_IVAR____TtC8VideosUI17HighlightsManager____lazy_storage___syndicationIdToHighlightMap);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
    *(v0 + OBJC_IVAR____TtC8VideosUI17HighlightsManager____lazy_storage___syndicationIdToHighlightMap) = MEMORY[0x1E69E7CC8];
  }

  return v1;
}

id sub_1E3FC2FF0()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v0;
  [v1 removeObserver:v2 name:*NSNotificationName.VUIAuthenticationManagerAccountStoreDidChange.unsafeMutableAddressor() object:0];

  v4.receiver = v2;
  v4.super_class = type metadata accessor for HighlightsManager();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1E3FC3114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

void sub_1E3FC3164()
{
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  if ([objc_opt_self() isEnabled])
  {
    v8 = sub_1E324FBDC();
    (*(v3 + 16))(v7, v8, v1);
    v9 = v0;
    v10 = sub_1E41FFC94();
    v11 = sub_1E4206814();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_6_21();
      *v12 = 134217984;
      *(v12 + 4) = sub_1E3FC2F30();

      _os_log_impl(&dword_1E323F000, v10, v11, "Syndication::Starting to fetch highlights, limit %lu", v12, 0xCu);
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      v10 = v9;
    }

    (*(v3 + 8))(v7, v1);
    v13 = *(&v9->isa + OBJC_IVAR____TtC8VideosUI17HighlightsManager_highlightCenter);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1E3FC54F0;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E3FC3E4C;
    aBlock[3] = &block_descriptor_148;
    v15 = _Block_copy(aBlock);

    [v13 fetchHighlights_];
    _Block_release(v15);
  }
}

void sub_1E3FC339C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36[-v14];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (v1)
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_0_11();
      v18(v15);
      v19 = sub_1E41FFC94();
      v20 = sub_1E42067F4();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = OUTLINED_FUNCTION_125_0();
        *v21 = 0;
        _os_log_impl(&dword_1E323F000, v19, v20, "Syndication::Failed to fetch highlights due to SocialLayer error", v21, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      (*(v6 + 8))(v15, v4);
    }

    v22 = sub_1E32AE9B0(v3);
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    if (v22)
    {
      v23(v12);
      v24 = sub_1E41FFC94();
      v25 = sub_1E4206814();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = OUTLINED_FUNCTION_125_0();
        *v26 = 0;
        _os_log_impl(&dword_1E323F000, v24, v25, "Syndication::Highlights fetched successfully", v26, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      (*(v6 + 8))(v12, v4);
      v27 = sub_1E3280A90(0, &qword_1EE23B1D0);
      MEMORY[0x1EEE9AC00](v27);
      OUTLINED_FUNCTION_1_27();
      *(v29 - 16) = v17;
      *(v29 - 8) = v3;
      v30 = sub_1E3FC56A8;
    }

    else
    {
      v23(v9);
      v31 = sub_1E41FFC94();
      v32 = sub_1E42067F4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = OUTLINED_FUNCTION_125_0();
        *v33 = 0;
        _os_log_impl(&dword_1E323F000, v31, v32, "Syndication::Nil or Empty highlights array fetched", v33, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      (*(v6 + 8))(v9, v4);
      v34 = sub_1E3280A90(0, &qword_1EE23B1D0);
      MEMORY[0x1EEE9AC00](v34);
      OUTLINED_FUNCTION_1_27();
      *(v35 - 16) = v17;
      v30 = sub_1E3FC56D4;
    }

    sub_1E3B79200(v30, v28);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FC3720()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v78 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v84 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = v5;
  if (!v5)
  {
    if (!v3)
    {
LABEL_35:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    v18 = v3;
  }

  v19 = *(v0 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_internalHighlightsVersion);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_37:
    OUTLINED_FUNCTION_3_236();
LABEL_34:
    v70 = qword_1EE2AA7A8;
    v71 = sub_1E3FC50D4(v0);

    sub_1E37E7460(v70, v1, v71, v3);

    goto LABEL_35;
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_internalHighlightsVersion) = v21;
  v83 = v3;
  v76 = v7;
  v77 = v0;
  v75 = v11;
  if (!v5)
  {
    v26 = 0;
    if (v3)
    {
      goto LABEL_18;
    }

    goto LABEL_29;
  }

  v22 = sub_1E32AE9B0(v5);
  if (!v22)
  {

    v26 = MEMORY[0x1E69E7CC0];
    if (v3)
    {
      goto LABEL_18;
    }

LABEL_29:
    v41 = 0;
    goto LABEL_30;
  }

  v23 = v22;
  v86 = MEMORY[0x1E69E7CC0];
  v24 = v22 & ~(v22 >> 63);

  sub_1E377FD30(0, v24, 0);
  if (v23 < 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  v81 = v23;
  v72 = v13;
  v73 = v18;
  v25 = 0;
  v26 = v86;
  v79 = v5 & 0xC000000000000001;
  v27 = (v13 + 8);
  v28 = v5;
  v29 = v5;
  do
  {
    if (v79)
    {
      v30 = MEMORY[0x1E6911E60](v25, v28);
    }

    else
    {
      v30 = *(v28 + 8 * v25 + 32);
    }

    v31 = v30;
    v32 = [v30 resourceURL];
    sub_1E41FE3C4();

    v33 = sub_1E41FE314();
    v35 = v34;

    (*v27)(v17, v84);
    v86 = v26;
    v37 = *(v26 + 16);
    v36 = *(v26 + 24);
    if (v37 >= v36 >> 1)
    {
      sub_1E377FD30((v36 > 1), v37 + 1, 1);
      v26 = v86;
    }

    ++v25;
    *(v26 + 16) = v37 + 1;
    v38 = v26 + 16 * v37;
    *(v38 + 32) = v33;
    *(v38 + 40) = v35;
    v28 = v29;
  }

  while (v81 != v25);
  v1 = v0;
  v3 = v83;
  v13 = v72;
  v18 = v73;
  if (!v83)
  {
    goto LABEL_29;
  }

LABEL_18:
  v39 = v13;
  v40 = sub_1E32AE9B0(v3);
  v41 = MEMORY[0x1E69E7CC0];
  if (!v40)
  {
    goto LABEL_30;
  }

  v42 = v40;
  v86 = MEMORY[0x1E69E7CC0];
  sub_1E377FD30(0, v40 & ~(v40 >> 63), 0);
  if ((v42 & 0x8000000000000000) == 0)
  {
    v74 = v18;
    v43 = 0;
    v41 = v86;
    v80 = v3 & 0xC000000000000001;
    v82 = v42;
    v44 = (v39 + 8);
    do
    {
      if (v80)
      {
        v45 = MEMORY[0x1E6911E60](v43, v3);
      }

      else
      {
        v45 = *(v3 + 8 * v43 + 32);
      }

      v46 = v45;
      v47 = [v45 resourceURL];
      sub_1E41FE3C4();

      v48 = sub_1E41FE314();
      v50 = v49;

      (*v44)(v17, v84);
      v86 = v41;
      v52 = *(v41 + 16);
      v51 = *(v41 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1E377FD30((v51 > 1), v52 + 1, 1);
        v41 = v86;
      }

      ++v43;
      *(v41 + 16) = v52 + 1;
      v53 = v41 + 16 * v52;
      *(v53 + 32) = v48;
      *(v53 + 40) = v50;
      v3 = v83;
    }

    while (v82 != v43);
    v1 = v0;
    v18 = v74;
LABEL_30:
    v54 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))();
    v55 = (v1 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_pendingHighlightsUpdate);
    v56 = *(v1 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_pendingHighlightsUpdate);
    v57 = *(v1 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_pendingHighlightsUpdate + 8);
    v58 = *(v1 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_pendingHighlightsUpdate + 16);
    v59 = *(v1 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_pendingHighlightsUpdate + 24);
    *v55 = v26;
    v55[1] = v41;
    v85 = v54;
    v55[2] = v54;
    v55[3] = v18;

    sub_1E3FC3114(v56, v57, v58, v59);
    v60 = sub_1E324FBDC();
    (*(v76 + 16))(v75, v60, v78);

    v61 = sub_1E41FFC94();
    v62 = sub_1E4206814();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = OUTLINED_FUNCTION_6_21();
      v64 = OUTLINED_FUNCTION_100();
      v86 = v64;
      *v63 = 136315138;

      v65 = sub_1E3FC2D70(v26, v41);
      v67 = v66;

      v68 = sub_1E3270FC8(v65, v67, &v86);

      *(v63 + 4) = v68;
      _os_log_impl(&dword_1E323F000, v61, v62, "Syndication::Sending update to JS for parsing: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      OUTLINED_FUNCTION_6_0();
      v1 = v77;
      OUTLINED_FUNCTION_6_0();

      (*(v76 + 8))(v75, v78);
    }

    else
    {

      (*(v76 + 8))(v75, v78);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D768);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    *(inited + 32) = 0x74616369646E7973;
    *(inited + 40) = 0xEF6F666E496E6F69;
    *(inited + 48) = v26;
    *(inited + 56) = v41;
    *(inited + 64) = v85;
    v0 = sub_1E4205CB4();
    v3 = [objc_opt_self() defaultCenter];
    if (qword_1EE28E718 == -1)
    {
      goto LABEL_34;
    }

    goto LABEL_37;
  }

LABEL_39:
  __break(1u);
}

void sub_1E3FC3DC4()
{
  v1 = sub_1E3FC2FA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D760);
  sub_1E4205D14();
  *(v0 + OBJC_IVAR____TtC8VideosUI17HighlightsManager____lazy_storage___syndicationIdToHighlightMap) = v1;

  sub_1E3FC3720();
}

void sub_1E3FC3E4C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_1E3280A90(0, &qword_1EE23B3F0);
  v5 = sub_1E42062B4();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1E3FC3EFC()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_pendingHighlightsUpdate + 24))
  {
    v1 = *(v0 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_pendingHighlightsUpdate + 8);

    if (v1)
    {
    }

    sub_1E3FC3720();
  }

  return result;
}

void sub_1E3FC3F90()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v105 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v109 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v111 = v0;
  v19 = &v0[OBJC_IVAR____TtC8VideosUI17HighlightsManager_pendingHighlightsUpdate];
  v20 = *&v0[OBJC_IVAR____TtC8VideosUI17HighlightsManager_pendingHighlightsUpdate + 24];
  if (!v20 || *(v19 + 2) > v2)
  {
LABEL_52:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v21 = *(v19 + 1);
  *v19 = 0u;
  *(v19 + 1) = 0u;

  v107 = v12;
  v108 = v8;
  if (v21)
  {

    sub_1E3280A90(0, &qword_1EE23B3F0);
    v22 = sub_1E4205CB4();
    v23 = 0;
    v24 = *(v6 + 16);
    v25 = v6 + 40;
    v26 = v105;
    v110 = v6 + 40;
LABEL_5:
    v27 = (v25 + 16 * v23);
    for (i = v23; ; ++i)
    {
      if (v24 == i)
      {
        *&v0[OBJC_IVAR____TtC8VideosUI17HighlightsManager____lazy_storage___syndicationIdToHighlightMap] = v22;

        v12 = v107;
        v8 = v108;
        goto LABEL_48;
      }

      if (i >= v24)
      {
        break;
      }

      v23 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_54;
      }

      v30 = *(v27 - 1);
      v29 = *v27;
      v31 = sub_1E3FC2FA8();
      v32 = *(v31 + 16);

      if (v32)
      {
        v33 = OUTLINED_FUNCTION_99_0();
        v35 = sub_1E327D33C(v33, v34);
        if (v36)
        {
          v42 = *(*(v31 + 56) + 8 * v35);

          swift_isUniquelyReferenced_nonNull_native();
          v112 = v22;
          v43 = OUTLINED_FUNCTION_99_0();
          v45 = sub_1E327D33C(v43, v44);
          if (__OFADD__(*(v22 + 16), (v46 & 1) == 0))
          {
            goto LABEL_57;
          }

          v47 = v45;
          v48 = v46;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D6F8);
          if (sub_1E4207644())
          {
            v49 = OUTLINED_FUNCTION_99_0();
            v51 = sub_1E327D33C(v49, v50);
            v26 = v105;
            if ((v48 & 1) != (v52 & 1))
            {
              goto LABEL_61;
            }

            v47 = v51;
          }

          else
          {
            v26 = v105;
          }

          v22 = v112;
          if (v48)
          {
            v53 = *(v112 + 56);
            v54 = *(v53 + 8 * v47);
            *(v53 + 8 * v47) = v42;
          }

          else
          {
            OUTLINED_FUNCTION_7_2(v112 + 8 * (v47 >> 6));
            v55 = (*(v112 + 48) + 16 * v47);
            *v55 = v30;
            v55[1] = v29;
            *(*(v22 + 56) + 8 * v47) = v42;
            v56 = *(v22 + 16);
            v57 = __OFADD__(v56, 1);
            v58 = v56 + 1;
            if (v57)
            {
              goto LABEL_59;
            }

            *(v22 + 16) = v58;
          }

          goto LABEL_23;
        }
      }

      v37 = OUTLINED_FUNCTION_99_0();
      v39 = sub_1E327D33C(v37, v38);
      if (v40)
      {
        v41 = v39;
        swift_isUniquelyReferenced_nonNull_native();
        v112 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D6F8);
        sub_1E4207644();

        sub_1E4207664();

LABEL_23:
        v25 = v110;
        v0 = v111;
        goto LABEL_5;
      }

      v27 += 2;
      v0 = v111;
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  sub_1E3280A90(0, &qword_1EE23B3F0);
  v104 = sub_1E4205CB4();
  v59 = 0;
  v106 = sub_1E32AE9B0(v20);
  v60 = (v14 + 8);
  while (2)
  {
    while (2)
    {
      for (j = v59; ; ++j)
      {
        if (v106 == j)
        {

          v0 = v111;
          *&v111[OBJC_IVAR____TtC8VideosUI17HighlightsManager____lazy_storage___syndicationIdToHighlightMap] = v104;

          v26 = v105;
LABEL_48:
          sub_1E324FBDC();
          OUTLINED_FUNCTION_0_11();
          v87(v12);
          v88 = v0;
          v89 = v12;
          v90 = sub_1E41FFC94();
          v91 = sub_1E4206814();

          if (os_log_type_enabled(v90, v91))
          {
            v92 = OUTLINED_FUNCTION_6_21();
            v93 = OUTLINED_FUNCTION_100();
            v112 = v93;
            *v92 = 136315138;
            sub_1E3FC2FA8();
            sub_1E3280A90(0, &qword_1EE23B3F0);
            v94 = sub_1E4205C74();
            v96 = v95;

            v97 = sub_1E3270FC8(v94, v96, &v112);

            *(v92 + 4) = v97;
            _os_log_impl(&dword_1E323F000, v90, v91, "Syndication::Highlights map after update: %s", v92, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v93);
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_6_0();

            v98 = OUTLINED_FUNCTION_99_0();
          }

          else
          {

            v100 = *(v8 + 8);
            v98 = v89;
            v99 = v26;
          }

          v100(v98, v99);
          goto LABEL_52;
        }

        if ((v20 & 0xC000000000000001) != 0)
        {
          v62 = MEMORY[0x1E6911E60](j, v20);
        }

        else
        {
          if (j >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_56;
          }

          v62 = *(v20 + 8 * j + 32);
        }

        v63 = v62;
        v59 = j + 1;
        if (__OFADD__(j, 1))
        {
          goto LABEL_55;
        }

        v64 = [v62 resourceURL];
        sub_1E41FE3C4();

        v65 = sub_1E41FE314();
        v67 = v66;
        (*v60)(v18, v109);
        if (*(v4 + 16))
        {
          break;
        }

LABEL_36:

        v12 = v107;
        v8 = v108;
      }

      v68 = sub_1E327D33C(v65, v67);
      v70 = v69;

      if ((v70 & 1) == 0)
      {
        goto LABEL_36;
      }

      v71 = (*(v4 + 56) + 16 * v68);
      v72 = *v71;
      v73 = v71[1];

      v102 = v63;
      swift_isUniquelyReferenced_nonNull_native();
      v112 = v104;
      v101 = v72;
      v103 = v73;
      v74 = sub_1E327D33C(v72, v73);
      if (__OFADD__(*(v104 + 16), (v75 & 1) == 0))
      {
        goto LABEL_58;
      }

      v76 = v74;
      v77 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D6F8);
      if (sub_1E4207644())
      {
        v78 = sub_1E327D33C(v101, v73);
        v8 = v108;
        if ((v77 & 1) != (v79 & 1))
        {
          goto LABEL_61;
        }

        v76 = v78;
        v80 = v77;
      }

      else
      {
        v80 = v77;
        v8 = v108;
      }

      v12 = v107;
      if (v80)
      {

        v104 = v112;
        v81 = *(v112 + 56);
        v82 = *(v81 + 8 * v76);
        *(v81 + 8 * v76) = v102;

        continue;
      }

      break;
    }

    v83 = v112;
    OUTLINED_FUNCTION_7_2(v112 + 8 * (v76 >> 6));
    v84 = (*(v112 + 48) + 16 * v76);
    *v84 = v101;
    v84[1] = v103;
    *(*(v83 + 56) + 8 * v76) = v102;

    v85 = *(v83 + 16);
    v57 = __OFADD__(v85, 1);
    v86 = v85 + 1;
    if (!v57)
    {
      v104 = v83;
      *(v83 + 16) = v86;
      continue;
    }

    break;
  }

LABEL_60:
  __break(1u);
LABEL_61:
  sub_1E4207A74();
  __break(1u);
}

id sub_1E3FC4788(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69D37B8]) initWithHighlight_];
  [v1 updateAlignment_];
  return v1;
}

void sub_1E3FC47DC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E3FC2FA8();
  if (*(v11 + 16) && (v12 = sub_1E327D33C(v3, v1), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
  }

  else
  {

    v15 = sub_1E324FBDC();
    (*(v6 + 16))(v10, v15, v4);

    v16 = sub_1E41FFC94();
    v17 = sub_1E42067F4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_6_21();
      v19 = OUTLINED_FUNCTION_100();
      v20 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1E3270FC8(v3, v1, &v20);
      _os_log_impl(&dword_1E323F000, v16, v17, "Syndication::Could not find highlight object for syndicationId: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v6 + 8))(v10, v4);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FC49A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_21();
    v4 = (*(v3 + 272))();
    if (v4)
    {
      v5 = v4;
      [*(v2 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_highlightCenter) feedbackForHighlight_withType_completionBlock_];
    }
  }
}

id sub_1E3FC4A60()
{
  result = [objc_opt_self() isEnabled];
  if (result)
  {
    v2 = sub_1E3280A90(0, &qword_1EE23B1D0);
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_27();
    *(v3 - 16) = v0;
    return sub_1E3B79200(sub_1E3FC54F8, v4);
  }

  return result;
}

id sub_1E3FC4B58(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() isEnabled];
  if (result)
  {
    v5 = sub_1E3280A90(0, &qword_1EE23B1D0);
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_1_27();
    *(v6 - 16) = v2;
    *(v6 - 8) = a2;
    return sub_1E3B79200(sub_1E3FC5548, v7);
  }

  return result;
}

uint64_t sub_1E3FC4C88()
{
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v3 = v0;
  return sub_1E3B79200(sub_1E3FC5574, &v2);
}

void sub_1E3FC4CEC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = [objc_opt_self() isEnabled];
  v10 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v10, v2);
  v11 = sub_1E41FFC94();
  v12 = sub_1E4206814();
  if (os_log_type_enabled(v11, v12))
  {
    v19 = v1;
    v13 = OUTLINED_FUNCTION_6_21();
    v14 = OUTLINED_FUNCTION_100();
    v20 = v14;
    *v13 = 136315138;
    if (v9)
    {
      v15 = 0x44454C42414E45;
    }

    else
    {
      v15 = 0x44454C4241534944;
    }

    if (v9)
    {
      v16 = 0xE700000000000000;
    }

    else
    {
      v16 = 0xE800000000000000;
    }

    v17 = sub_1E3270FC8(v15, v16, &v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1E323F000, v11, v12, "Syndication::Feature is now %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_6_0();
    v1 = v19;
    OUTLINED_FUNCTION_6_0();
  }

  v18 = (*(v4 + 8))(v8, v2);
  if (v9)
  {
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))(v18);
  }

  else
  {
    sub_1E3FC3DC4();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FC4F60()
{
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v3 = v0;
  return sub_1E3B79200(sub_1E3FC558C, &v2);
}

uint64_t *sub_1E3FC5094()
{
  if (qword_1EE28E718 != -1)
  {
    OUTLINED_FUNCTION_3_236();
  }

  return &qword_1EE2AA7A8;
}

uint64_t sub_1E3FC50D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8D0);
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
    v10 = (*(a1 + 56) + 24 * (__clz(__rbit64(v4)) | (v8 << 6)));
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];

    swift_dynamicCast();
    *&v32 = v11;
    *(&v32 + 1) = v12;
    v33 = v13;
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1E329504C(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1E329504C(v31, &v32);
    result = sub_1E42073F4();
    v14 = -1 << *(v1 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v6 + 8 * (v15 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *(v6 + 8 * v16);
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v17 = __clz(__rbit64((-1 << v15) & ~*(v6 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v4 &= v4 - 1;
    *(v6 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v22 = *(v1 + 48) + 40 * v17;
    *v22 = v24;
    *(v22 + 16) = v25;
    *(v22 + 32) = v26;
    result = sub_1E329504C(&v32, (*(v1 + 56) + 32 * v17));
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

uint64_t sub_1E3FC53B4()
{
  OUTLINED_FUNCTION_23();
  result = sub_1E4205ED4();
  qword_1EE2AA7A8 = result;
  return result;
}

uint64_t sub_1E3FC53E8()
{
  OUTLINED_FUNCTION_23();
  result = sub_1E4205ED4();
  qword_1EE2AA798 = result;
  return result;
}

uint64_t *sub_1E3FC541C()
{
  if (qword_1EE28E700 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA798;
}

uint64_t sub_1E3FC546C()
{
  OUTLINED_FUNCTION_23();
  result = sub_1E4205ED4();
  qword_1EE2AA7A0 = result;
  return result;
}

uint64_t *sub_1E3FC54A0()
{
  if (qword_1EE28E708 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA7A0;
}

void sub_1E3FC558C()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = [v2 DSID];
  v4 = OBJC_IVAR____TtC8VideosUI17HighlightsManager_cachedDSID;
  v5 = *(v1 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_cachedDSID);
  v11 = v3;
  if (v5)
  {
    if (v3)
    {
      v6 = [v5 isEqualToNumber_];
      v7 = *(v1 + v4);
      *(v1 + v4) = v11;
      v8 = v11;

      if (v6)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else if (!v3)
  {
    *(v1 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_cachedDSID) = 0;
    goto LABEL_10;
  }

  *(v1 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_cachedDSID) = v3;
  v9 = v3;

LABEL_7:
  sub_1E3FC3DC4();
  if ([v2 userHasActiveAccount])
  {
    OUTLINED_FUNCTION_21();
    (*(v10 + 240))();
  }

LABEL_10:
}

uint64_t sub_1E3FC572C()
{
  *(v0 + 104) = 0;
  v1 = sub_1E3C2F9A0();
  v2 = *(*v1 + 312);

  v3 = v2(0x4051000000000000, 0);
  v4 = *(*v1 + 1696);
  v5 = v4(v3);
  LOBYTE(v15) = 2;
  v25 = 6;
  sub_1E3C2FC98();
  v23 = v24;
  sub_1E3C3DE00(&qword_1F5D549D8);
  v21 = v22;
  sub_1E3C3DE00(&qword_1F5D549D8);
  v19 = v20;
  sub_1E3C3DE00(&qword_1F5D549D8);
  v17 = v18;
  sub_1E3C2FCB8(&v15, &v26);
  v15 = v26;
  v16 = v27;
  v6 = OUTLINED_FUNCTION_18();
  (*(*v5 + 1600))(&v15, 48, v6 & 1, &qword_1F5D549D8);

  v8 = v4(v7);
  v9 = *sub_1E3E5FD88();
  v10 = *(*v8 + 680);
  v11 = v9;
  v10(v9);

  v13 = *v4(v12);
  (*(v13 + 1792))(7);

  return v1;
}

BOOL GroupActivityIdentifier.init(rawValue:)()
{
  v0 = sub_1E4207784();

  return v0 != 0;
}

unint64_t sub_1E3FC5A38()
{
  result = qword_1ECF3D770;
  if (!qword_1ECF3D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D770);
  }

  return result;
}

uint64_t sub_1E3FC5A90()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3FC5B0C()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

BOOL sub_1E3FC5B60@<W0>(_BYTE *a1@<X8>)
{
  result = GroupActivityIdentifier.init(rawValue:)();
  *a1 = result;
  return result;
}

unint64_t sub_1E3FC5B94@<X0>(void *a1@<X8>)
{
  result = GroupActivityIdentifier.rawValue.getter();
  *a1 = 0xD00000000000001BLL;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for GroupActivityIdentifier(_BYTE *result, int a2, int a3)
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

uint64_t sub_1E3FC5C70()
{
  v0 = sub_1E4207784();

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

uint64_t sub_1E3FC5CC4(char a1)
{
  if (a1)
  {
    return 1953720684;
  }

  else
  {
    return 0x70756B636F6CLL;
  }
}

uint64_t sub_1E3FC5D18()
{
  sub_1E4206014();
}

uint64_t sub_1E3FC5D80()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3FC5DF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3FC5C70();
  *a1 = result;
  return result;
}

uint64_t sub_1E3FC5E24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FC5CC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3FC5E84(char a1)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 402) = a1 & 1;
  return result;
}

uint64_t sub_1E3FC5EF4(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 408) = a1;
}

uint64_t sub_1E3FC5F80()
{
  OUTLINED_FUNCTION_8();
  v2 = *(v0 + 1608);
  if (v2())
  {

    return v2();
  }

  else
  {

    return sub_1E40B1140();
  }
}

uint64_t sub_1E3FC6008()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 1608))())
  {

    OUTLINED_FUNCTION_8();
    result = (*(v1 + 960))();
    if (result)
    {
      v3 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      result = swift_allocObject();
      *(result + 16) = xmmword_1E4298880;
      *(result + 32) = v3;
    }
  }

  else
  {

    return sub_1E40B11F0();
  }

  return result;
}

uint64_t sub_1E3FC6124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 402) = 0;
  *(v3 + 408) = 0;
  *(v3 + 416) = 0;
  *(v3 + 424) = 1;

  v7 = sub_1E40B19D4(a1, a2, a3);
  v8 = v7;
  if (v7)
  {
    v9 = *(*v7 + 392);

    v11 = v9(v10);
    if (v11)
    {
      v12 = (*(*v11 + 984))();
      v14 = v13;
    }

    else
    {

      v12 = 0;
      v14 = 1;
    }

    *(v8 + 416) = v12;
    *(v8 + 424) = v14 & 1;
  }

  return v8;
}

void sub_1E3FC6248(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  if ((*(v3 + 392))())
  {
    OUTLINED_FUNCTION_30();
    v5 = (*(v4 + 1536))();
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v5 = 0;
    v9 = 0;
    v7 = 1;
  }

  sub_1E40B2344(a1);
  (*(*v1 + 1656))(v5, v7, v9);

  sub_1E39DFB80(v5, v7);
}

void sub_1E3FC6354(uint64_t a1, void *a2)
{
  v58 = a1;
  if (a2 == 1)
  {
    OUTLINED_FUNCTION_192();
    return;
  }

  v3 = v2;
  OUTLINED_FUNCTION_8();
  v6 = (*(v5 + 1040))(a2);
  if (!v6)
  {
    goto LABEL_24;
  }

  v14 = v6;
  if (!sub_1E32AE9B0(v6))
  {
    goto LABEL_23;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_30:
    v15 = MEMORY[0x1E6911E60](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v15 = *(v14 + 32);
  }

  v17 = (*(*v15 + 872))(v16);

  if (!v17)
  {
    goto LABEL_24;
  }

  v18 = sub_1E3FC6630(v17);

  if (!v18)
  {
    goto LABEL_24;
  }

  v57 = sub_1E32AE9B0(v18);
  if (!v57)
  {
LABEL_23:

LABEL_24:
    OUTLINED_FUNCTION_0_311(v6, v7, v8, v9, v10, v11, v12, v13, v56, v57, v58);
    OUTLINED_FUNCTION_192();

    sub_1E39DFB80(v53, v54);
    return;
  }

  v14 = v3;
  if ((*(*v3 + 392))())
  {
    OUTLINED_FUNCTION_30();
    v27 = OUTLINED_FUNCTION_0_311(v19, v20, v21, v22, v23, v24, v25, v26, v56, v57, v58);
    v28(v27);
  }

  v29 = 0;
  v30 = *(*v3 + 1584);
  v56 = v18 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1E6911E60](v29, v18);
    }

    else
    {
      if (v29 >= *(v56 + 16))
      {
        goto LABEL_29;
      }

      v31 = *(v18 + 8 * v29 + 32);
    }

    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v33 = v30();
    v40 = OUTLINED_FUNCTION_0_311(v33, v34, v35, v33 & 1, v36, v37, v38, v39, v56, v57, v58);
    v14 = v31;
    v41(v40);

    ++v29;
  }

  while (v32 != v57);
  v50 = OUTLINED_FUNCTION_0_311(v42, v43, v44, v45, v46, v47, v48, v49, v56, v57, v58);
  sub_1E39DFB80(v50, v51);
  OUTLINED_FUNCTION_192();
}

uint64_t sub_1E3FC6630(unint64_t a1)
{
  v5 = MEMORY[0x1E69E7CC0];
  sub_1E32AE9B0(a1);
  sub_1E4207574();
  result = sub_1E32AE9B0(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v5;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    type metadata accessor for PlayerCellViewModel();
    if (!swift_dynamicCastClass())
    {

      return 0;
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    result = sub_1E4207554();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1E3FC6760(double a1)
{
  type metadata accessor for LayoutGrid();
  sub_1E3A2579C(a1);
  if ([objc_opt_self() shouldPlayerTabsUseVerticalLayout])
  {
    v3 = OUTLINED_FUNCTION_14_0();
    *(v1 + 402) = 1;
    v4 = *(*v1 + 392);
    v5 = v4(v3);
    if (v5)
    {
      v6 = *(MEMORY[0x1E69DDCE0] + 16);
      v17 = *MEMORY[0x1E69DDCE0];
      v18 = v6;
      v19 = 0;
      (*(*v5 + 184))(&v17);
    }

    result = v4(v5);
    if (result)
    {
      OUTLINED_FUNCTION_30();
      (*(v8 + 992))(21, 0);
    }
  }

  else
  {
    v9 = OUTLINED_FUNCTION_14_0();
    *(v1 + 402) = 0;
    v10 = *(*v1 + 392);
    v11 = v10(v9);
    if (v11)
    {
      v12 = v11;
      type metadata accessor for CollectionLayoutFactory();
      sub_1E3C11CA0(v1);
      *&v17 = v13;
      *(&v17 + 1) = v14;
      *&v18 = v15;
      *(&v18 + 1) = v16;
      v19 = 0;
      (*(*v12 + 184))(&v17);
    }

    result = v10(v11);
    if (result)
    {
      (*(*result + 992))(*(v1 + 416), *(v1 + 424));
    }
  }

  return result;
}

uint64_t sub_1E3FC69D8()
{
  v0 = CollectionViewModel.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 425, 7);
}

unint64_t sub_1E3FC6A24()
{
  result = qword_1ECF3D778;
  if (!qword_1ECF3D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D778);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlayerCollectionAppearanceType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3FC6B84()
{
  result = TVAppFeature.isEnabled.getter(20);
  v1 = 640.0;
  if (result)
  {
    v1 = 680.0;
  }

  qword_1EE2AA9D0 = *&v1;
  return result;
}

uint64_t *sub_1E3FC6BC0()
{
  if (qword_1EE293460 != -1)
  {
    OUTLINED_FUNCTION_0_312();
  }

  return &qword_1EE2AA9D0;
}

uint64_t sub_1E3FC6C54()
{
  result = TVAppFeature.isEnabled.getter(20);
  v1 = 44.0;
  if ((result & 1) == 0)
  {
    v1 = 0.0;
  }

  qword_1ECF719C0 = *&v1;
  return result;
}

uint64_t *sub_1E3FC6C8C()
{
  if (qword_1ECF6A3C0 != -1)
  {
    swift_once();
  }

  return &qword_1ECF719C0;
}

double sub_1E3FC6CDC()
{
  v0 = [objc_opt_self() isPad];
  result = 0.0;
  if (v0)
  {
    return 3.0;
  }

  return result;
}

uint64_t sub_1E3FC6D48()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1E4205ED4();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    result = sub_1E329505C(v8);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if (!result)
  {
LABEL_8:
    v4 = 0x3FEFFF2E48E8A71ELL;
    goto LABEL_9;
  }

  v4 = v5;
LABEL_9:
  qword_1EE2AA9D8 = v4;
  return result;
}

uint64_t *sub_1E3FC6E5C()
{
  if (qword_1EE293468 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA9D8;
}

uint64_t sub_1E3FC6EAC()
{
  swift_allocObject();
  v0 = sub_1E3C2F9A0();

  sub_1E3FC6EF8();

  return v0;
}

void sub_1E3FC6EF8()
{
  if (qword_1EE293460 != -1)
  {
    OUTLINED_FUNCTION_0_312();
  }

  sub_1E3C2D0A0();
  __dst[0] = 0;
  LOBYTE(__dst[1]) = 0;
  v17 = 0x3FE22E8BA2E8BA2FLL;
  v18 = 0;
  v0 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  v13 = v15;
  v14 = v16;
  sub_1E3C3DE00(v0);
  v9 = v11;
  v10 = v12;
  sub_1E3C3DE00(v0);
  v5 = v7;
  v6 = v8;
  sub_1E3C3DE00(v0);
  __dst[12] = v3;
  v2 = v4;
  sub_1E3C2FCB8(__dst, __src);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  sub_1E3C2FDFC();
}

uint64_t sub_1E3FC7038(double a1, double a2)
{
  v4 = *sub_1E3C2AEE0();
  if (a2 < a1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3FC706C(double a1, double a2, double a3)
{
  type metadata accessor for LayoutGrid();
  v5 = sub_1E3A2579C(a1);
  if ((*sub_1E3C2AEE0() & (a3 < a1)) != 0)
  {
    return 3;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1E3FC70CC()
{
  type metadata accessor for TextLayout();
  v0 = sub_1E383BCC0();

  v1 = *sub_1E3E5FD88();
  v2 = *(*v0 + 680);
  v3 = v1;
  v2(v1);

  OUTLINED_FUNCTION_36();
  (*(v4 + 1792))(7);
  OUTLINED_FUNCTION_36();
  (*(v5 + 2176))(4, 0);
  OUTLINED_FUNCTION_36();
  (*(v6 + 2056))(2, 0);
  OUTLINED_FUNCTION_36();
  (*(v7 + 2080))(2, 0);
  OUTLINED_FUNCTION_36();
  (*(v8 + 2104))(2, 0);
  OUTLINED_FUNCTION_36();
  (*(v9 + 2128))(0x3FE6666666666666, 0);
  if (TVAppFeature.isEnabled.getter(20))
  {
    (*(*v0 + 1720))(7);
  }

  (*(*v0 + 1696))(2);
  return v0;
}

id sub_1E3FC7330()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  [v0 setShadowOffset_];
  [v0 setShadowBlurRadius_];
  v1 = [objc_opt_self() blackColor];
  v2 = [v1 colorWithAlphaComponent_];

  [v0 setShadowColor_];
  return v0;
}

id sub_1E3FC747C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v8 = [objc_allocWithZone(VUIOpenURLRouterDataSource) init];
  sub_1E3FC77B4(a1, a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E4298880;
  *(v9 + 32) = a3;
  v10 = a3;
  sub_1E3FC7818(v9, v8);
  [v8 setActionFirst_];
  *&v3[OBJC_IVAR____TtC8VideosUI15ActionTabSwitch_routerDataSource] = v8;
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

uint64_t sub_1E3FC7580(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 openURLHandler];

  v8 = *(v3 + OBJC_IVAR____TtC8VideosUI15ActionTabSwitch_routerDataSource);
  if (a2)
  {
    v10[4] = a2;
    v10[5] = a3;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1E37EB82C;
    v10[3] = &block_descriptor_149;
    a2 = _Block_copy(v10);
  }

  [v7 processRouterDeeplink:v8 completion:a2];
  _Block_release(a2);
  return swift_unknownObjectRelease();
}

void sub_1E3FC77B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  [a3 setTabIdentifier_];
}

void sub_1E3FC7818(uint64_t a1, void *a2)
{
  sub_1E3FC78B0();
  v3 = sub_1E42062A4();

  [a2 setDocumentDataSources_];
}

unint64_t sub_1E3FC78B0()
{
  result = qword_1EE23B0D0;
  if (!qword_1EE23B0D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B0D0);
  }

  return result;
}

uint64_t sub_1E3FC78F4()
{
  type metadata accessor for Route(0);
  j__OUTLINED_FUNCTION_18();
  return sub_1E3F4C85C();
}

void sub_1E3FC7940()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D788);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v40 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D790);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  if ([objc_opt_self() userHasActiveAccount])
  {
    v46 = v2;
    v12 = [objc_opt_self() sharedInstance];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1E3741090(0xD000000000000010, 0x80000001E4280880, v12);
      v16 = v15;
      v44 = v15;

      v45 = &v40;
      MEMORY[0x1EEE9AC00](v17);
      v43 = &v40 - 6;
      *(&v40 - 4) = v0;
      *(&v40 - 3) = v14;
      *(&v40 - 2) = v16;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D7B0);
      v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D7B8);
      v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D2F0);
      v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D7C0);
      v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D7C8);
      v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D798);
      v21 = sub_1E3FC7EB0();
      v22 = sub_1E32822E0();
      v48 = v20;
      v49 = MEMORY[0x1E69E6158];
      v50 = v21;
      v51 = v22;
      OUTLINED_FUNCTION_2_207();
      v23 = OUTLINED_FUNCTION_17_12();
      v48 = v19;
      v49 = v23;
      OUTLINED_FUNCTION_7_18();
      v24 = OUTLINED_FUNCTION_17_12();
      v48 = v18;
      v49 = v24;
      OUTLINED_FUNCTION_5_221();
      v25 = OUTLINED_FUNCTION_17_12();
      v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D330);
      OUTLINED_FUNCTION_2_63();
      v28 = sub_1E32752B0(v27, &qword_1ECF2D330);
      v48 = v26;
      v49 = v28;
      OUTLINED_FUNCTION_6_10();
      v29 = OUTLINED_FUNCTION_17_12();
      v48 = v41;
      v49 = v40;
      v50 = v25;
      v51 = v29;
      OUTLINED_FUNCTION_17_12();
      sub_1E42013C4();

      (*(v8 + 16))(v5, v11, v6);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_18(&qword_1ECF3D7A0, &qword_1ECF3D790);
      sub_1E4201F44();
      (*(v8 + 8))(v11, v6);
LABEL_6:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    __break(1u);
  }

  else
  {
    v30 = *(v0 + *(type metadata accessor for AccountSettings() + 20));
    if (v30)
    {
      type metadata accessor for Route(0);
      OUTLINED_FUNCTION_8_186();
      sub_1E3FC7E68(v31, v32);
      v33 = v30;
      v34 = sub_1E4200BC4();
      type metadata accessor for NavigationBarObservableModel(0);
      sub_1E39EE6D8();
      *v5 = sub_1E379D97C(v33, v34);
      v5[1] = v35;
      v5[2] = v36;
      v5[3] = v37;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D798);
      OUTLINED_FUNCTION_8_18(&qword_1ECF3D7A0, &qword_1ECF3D790);
      sub_1E3FC7EB0();
      OUTLINED_FUNCTION_3_5();
      sub_1E4201F44();
      goto LABEL_6;
    }
  }

  type metadata accessor for Router();
  OUTLINED_FUNCTION_0_313();
  sub_1E3FC7E68(v38, v39);
  OUTLINED_FUNCTION_6_46();
  __break(1u);
}

uint64_t type metadata accessor for AccountSettings()
{
  result = qword_1ECF6A460;
  if (!qword_1ECF6A460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3FC7E68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E3FC7EB0()
{
  result = qword_1ECF3D7A8;
  if (!qword_1ECF3D7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D798);
    sub_1E3FC7F3C();
    sub_1E389B90C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D7A8);
  }

  return result;
}

unint64_t sub_1E3FC7F3C()
{
  result = qword_1ECF6A3D8[0];
  if (!qword_1ECF6A3D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF6A3D8);
  }

  return result;
}

void sub_1E3FC7F90()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v75 = v6;
  sub_1E4200C24();
  OUTLINED_FUNCTION_0_10();
  v73 = v8;
  v74 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v70 = v10 - v9;
  sub_1E4201AE4();
  OUTLINED_FUNCTION_0_10();
  v66 = v12;
  v67 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v63 = v14 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D7C8);
  OUTLINED_FUNCTION_0_10();
  v61 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - v17;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D7C0);
  OUTLINED_FUNCTION_0_10();
  v65 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v62 = &v59 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D7B8);
  OUTLINED_FUNCTION_0_10();
  v71 = v23;
  v72 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  v69 = &v59 - v25;
  v26 = *(v5 + *(type metadata accessor for AccountSettings() + 20));
  if (v26)
  {
    v60 = v5;
    type metadata accessor for Route(0);
    OUTLINED_FUNCTION_8_186();
    sub_1E3FC7E68(v27, v28);
    v29 = v26;
    v30 = sub_1E4200BC4();
    type metadata accessor for NavigationBarObservableModel(0);
    sub_1E39EE6D8();
    v31 = sub_1E379D97C(v29, v30);
    v33 = v32;
    v78 = v31;
    v79 = v34;
    v80 = v32;
    v81 = v35;
    if (v1)
    {
      v36 = v3;
    }

    else
    {
      v36 = 0;
    }

    if (v1)
    {
      v37 = v1;
    }

    else
    {
      v37 = 0xE000000000000000;
    }

    v76 = v36;
    v77 = v37;

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D798);
    v39 = sub_1E3FC7EB0();
    v40 = sub_1E32822E0();
    v41 = MEMORY[0x1E69E6158];
    sub_1E4203034();

    v43 = v66;
    v42 = v67;
    v44 = v63;
    (*(v66 + 104))(v63, *MEMORY[0x1E697C438], v67);
    v78 = v38;
    v79 = v41;
    v80 = v39;
    v81 = v40;
    OUTLINED_FUNCTION_2_207();
    v45 = OUTLINED_FUNCTION_121_2();
    v46 = v62;
    v47 = v64;
    sub_1E42033D4();
    (*(v43 + 8))(v44, v42);
    (*(v61 + 8))(v18, v47);
    v48 = v70;
    sub_1E4200C14();
    v78 = v47;
    v79 = v45;
    OUTLINED_FUNCTION_7_18();
    v49 = OUTLINED_FUNCTION_121_2();
    v50 = v68;
    v51 = v69;
    sub_1E4202E44();
    (*(v73 + 8))(v48, v74);
    v52 = (*(v65 + 8))(v46, v50);
    MEMORY[0x1EEE9AC00](v52);
    *(&v59 - 2) = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2F0);
    v78 = v50;
    v79 = v49;
    OUTLINED_FUNCTION_5_221();
    OUTLINED_FUNCTION_121_2();
    v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D330);
    OUTLINED_FUNCTION_2_63();
    v55 = sub_1E32752B0(v54, &qword_1ECF2D330);
    v78 = v53;
    v79 = v55;
    OUTLINED_FUNCTION_6_10();
    OUTLINED_FUNCTION_121_2();
    v56 = v72;
    sub_1E4203504();
    (*(v71 + 8))(v51, v56);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    type metadata accessor for Router();
    OUTLINED_FUNCTION_0_313();
    sub_1E3FC7E68(v57, v58);
    OUTLINED_FUNCTION_6_46();
    __break(1u);
  }
}

void sub_1E3FC8568()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E4202034();
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D330);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v15 - v7;
  sub_1E4201FD4();
  v15[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D390);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D398);
  OUTLINED_FUNCTION_3_120();
  v11 = sub_1E32752B0(v10, &qword_1ECF2D398);
  v12 = sub_1E375320C();
  v15[4] = v9;
  v15[5] = &type metadata for SystemButtonStyle;
  v15[6] = v11;
  v15[7] = v12;
  OUTLINED_FUNCTION_17_12();
  sub_1E4200C04();
  OUTLINED_FUNCTION_2_63();
  v14 = sub_1E32752B0(v13, &qword_1ECF2D330);
  MEMORY[0x1E690CA00](v8, v3, v14);
  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FC89C4()
{
  v0 = sub_1E4200E34();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E3898B28(v5 - v4);
  sub_1E4200E24();
  return (*(v2 + 8))(v6, v0);
}

uint64_t sub_1E3FC8A7C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA78);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AccountSettings();
  OUTLINED_FUNCTION_17_140();
  OUTLINED_FUNCTION_0_313();
  sub_1E3FC7E68(v1, v2);
  v3 = sub_1E4201754();
  return OUTLINED_FUNCTION_4_236(v3, v4);
}

id sub_1E3FC8B20()
{
  v0 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = VUISignpostLogObject();
  sub_1E41FFBC4();
  sub_1E4206BA4();
  v8 = VUISignpostLogObject();
  OUTLINED_FUNCTION_15_157();

  type metadata accessor for AccountViewController();
  v9 = AccountViewController.__allocating_init()();
  sub_1E4206B94();
  v10 = VUISignpostLogObject();
  OUTLINED_FUNCTION_15_157();

  (*(v2 + 8))(v6, v0);
  return v9;
}

uint64_t sub_1E3FC8C6C()
{
  OUTLINED_FUNCTION_18_132();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDB778](v0);
}

uint64_t sub_1E3FC8CB8()
{
  OUTLINED_FUNCTION_18_132();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDB740](v0);
}

void sub_1E3FC8D04()
{
  sub_1E3FC8EE4();
  sub_1E42025D4();
  __break(1u);
}

void sub_1E3FC8D7C()
{
  sub_1E389B45C();
  if (v0 <= 0x3F)
  {
    sub_1E389B5AC();
    if (v1 <= 0x3F)
    {
      sub_1E389B640();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1E3FC8E18()
{
  result = qword_1ECF3D7D0;
  if (!qword_1ECF3D7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D7D8);
    sub_1E32752B0(&qword_1ECF3D7A0, &qword_1ECF3D790);
    sub_1E3FC7EB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D7D0);
  }

  return result;
}

unint64_t sub_1E3FC8EE4()
{
  result = qword_1EE293FD0[0];
  if (!qword_1EE293FD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE293FD0);
  }

  return result;
}

uint64_t sub_1E3FC8F40()
{
  type metadata accessor for ButtonLayout();
  v0 = j__OUTLINED_FUNCTION_18();
  v1 = sub_1E3B050E8();
  v2 = j__OUTLINED_FUNCTION_18();
  sub_1E3BBD964(8, v0 & 1, v1, v2 & 1);
  sub_1E3FC8754();
}

uint64_t sub_1E3FC8FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountSettings();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3FC9030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountSettings();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3FC9094()
{
  type metadata accessor for AccountSettings();

  return sub_1E3FC89C4();
}

uint64_t sub_1E3FC90F4()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    type metadata accessor for ButtonLayout();
    v1 = sub_1E3BBFAF0();
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1E3FC9190()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = xmmword_1E42E3210;
  v1 = vdupq_n_s64(0x4043000000000000uLL);
  *(v0 + 136) = v1;
  *(v0 + 152) = xmmword_1E42E3210;
  *(v0 + 168) = v1;
  *(v0 + 184) = xmmword_1E42E3220;
  v2 = sub_1E3C2F9A0();
  v3 = *(* + 1760);
  v4 = v3();
  (*(*v4 + 208))(0x4076800000000000, 0);

  v6 = (v3)(v5);
  v30[0] = xmmword_1E42E3230;
  v30[1] = xmmword_1E42E3230;
  v31 = 0;
  (*(*v6 + 184))(v30);

  (v3)(v7);
  OUTLINED_FUNCTION_2_1();
  (*(v8 + 312))(0, 1);

  v10 = (v3)(v9);
  v11 = objc_opt_self();
  (*(*v10 + 752))([v11 systemBlueColor]);

  (v3)(v12);
  OUTLINED_FUNCTION_2_1();
  v14 = (*(v13 + 2048))();

  (*(*v14 + 680))([v11 whiteColor]);

  v16 = *(*v2 + 1736);
  v16(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v17 + 1984))(1);

  v19 = (v16)(v18);
  v20 = *sub_1E3E5FDEC();
  v21 = *(*v19 + 680);
  v22 = v20;
  v21(v20);

  v16(v23);
  OUTLINED_FUNCTION_2_1();
  (*(v24 + 2176))(0, 0);

  v16(v25);
  OUTLINED_FUNCTION_2_1();
  (*(v26 + 2056))(0, 0);

  v16(v27);
  OUTLINED_FUNCTION_2_1();
  (*(v28 + 1696))(21);

  return v2;
}

uint64_t sub_1E3FC9630()
{
  v0 = sub_1E37BD5C4();

  return MEMORY[0x1EEE6BDC0](v0, 200, 7);
}

uint64_t type metadata accessor for TextBadge()
{
  result = qword_1EE28F160;
  if (!qword_1EE28F160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3FC96D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 40) = 0;
  v6 = *(type metadata accessor for TextBadge() + 40);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 32) = a2;
  v7 = *(*a1 + 392);

  v9 = v7(v8);
  if (v9)
  {
    type metadata accessor for TextBadgeLayout();
    v9 = swift_dynamicCastClass();
    if (!v9)
    {

      v9 = 0;
    }
  }

  *(a3 + 8) = v9;
  OUTLINED_FUNCTION_8();
  v10 += 61;
  v11 = *v10;
  v12 = (*v10)();
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = sub_1E373E010(17, v12);

  if (v13 && *v13 != _TtC8VideosUI13TextViewModel)
  {

LABEL_8:
    v13 = 0;
  }

  *(a3 + 16) = v13;
  v14 = (v11)(v12);

  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = sub_1E373E010(39, v14);

  if (!v15)
  {
    goto LABEL_13;
  }

  type metadata accessor for ImageViewModel();
  result = swift_dynamicCastClass();
  if (!result)
  {

LABEL_13:
    result = 0;
  }

  *(a3 + 24) = result;
  return result;
}

uint64_t sub_1E3FC98B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v109 = a1;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v96 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D7E0);
  OUTLINED_FUNCTION_6_4(v8, &v124);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D7E8);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D7F0);
  OUTLINED_FUNCTION_6_4(v14, &v122);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v16);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D7F8);
  OUTLINED_FUNCTION_0_10();
  v99 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  OUTLINED_FUNCTION_17_2(v20);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v96 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D800);
  OUTLINED_FUNCTION_6_4(v24, &v121);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v26);
  type metadata accessor for TextBadge();
  OUTLINED_FUNCTION_0_10();
  v101 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D808);
  OUTLINED_FUNCTION_6_4(v31, v120);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v96 - v33;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D810);
  OUTLINED_FUNCTION_0_10();
  v102 = v35;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v96 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D818);
  OUTLINED_FUNCTION_6_4(v39, &v123);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v41);
  if (*(v2 + 8) && (v44 = *(v2 + 16)) != 0)
  {
    v100 = *(v2 + 8);

    if ((TVAppFeature.isEnabled.getter(10) & 1) != 0 || *(v2 + 40) == 1)
    {
      v45 = *(v2 + 32);
      v99 = v44;
      sub_1E3FCA9BC(v100, v44, v45, v34);
      *&v117 = *v2;
      sub_1E38115FC(v2, &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
      v46 = (*(v101 + 80) + 16) & ~*(v101 + 80);
      v47 = swift_allocObject();
      sub_1E3FCB4B0(&v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v47 + v46);
      v48 = type metadata accessor for ViewModel();
      v49 = sub_1E3FCA5D8();
      v50 = sub_1E388C264();

      v51 = v103;
      sub_1E4203524();

      sub_1E325F69C(v34, &qword_1ECF3D808);
      v52 = v102;
      v53 = v104;
      (*(v102 + 16))(v105, v38, v104);
      swift_storeEnumTagMultiPayload();
      *&v117 = v51;
      *(&v117 + 1) = v48;
      *&v118 = v49;
      *(&v118 + 1) = v50;
      OUTLINED_FUNCTION_3_219();
      swift_getOpaqueTypeConformance2();
      v54 = sub_1E3FCA848();
      *&v117 = v106;
      *(&v117 + 1) = v54;
      OUTLINED_FUNCTION_6_20();
      swift_getOpaqueTypeConformance2();
      OUTLINED_FUNCTION_15_158();
      sub_1E4201F44();
      (*(v52 + 8))(v38, v53);
    }

    else
    {
      sub_1E3746E10(v23);
      v57 = sub_1E42012F4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v57);
      v58 = v100;
      v59 = (*(*v100 + 2056))(v23);
      sub_1E325F69C(v23, &qword_1ECF2A250);
      sub_1E3FCB058();
      v60 = sub_1E4201B84();
      v61 = (*(*v58 + 1872))();
      if (v61)
      {
        (*(*v61 + 152))(v115);

        v62 = v115[3];
        if (v116)
        {
          v62 = 0;
        }
      }

      else
      {
        v62 = 0;
      }

      v63 = v96;
      *v96 = v60;
      v63[1] = v62;
      *(v63 + 16) = 0;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D860);
      sub_1E3FCB16C(v2, v44, v63 + *(v64 + 44));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4299720;
      v66 = sub_1E4202764();
      *(inited + 32) = v66;
      v67 = sub_1E4202784();
      *(inited + 33) = v67;
      v68 = sub_1E4202774();
      sub_1E4202774();
      if (sub_1E4202774() != v66)
      {
        v68 = sub_1E4202774();
      }

      sub_1E4202774();
      if (sub_1E4202774() != v67)
      {
        v68 = sub_1E4202774();
      }

      sub_1E4200A54();
      v70 = v69;
      v72 = v71;
      v74 = v73;
      v76 = v75;
      v77 = v63;
      v78 = v97;
      sub_1E329E454(v77, v97, &qword_1ECF3D7E8);
      v79 = v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D850) + 36);
      *v79 = v68;
      *(v79 + 8) = v70;
      *(v79 + 16) = v72;
      *(v79 + 24) = v74;
      *(v79 + 32) = v76;
      *(v79 + 40) = 0;
      sub_1E4203DA4();
      sub_1E4200D94();
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D858);
      v81 = v100;
      v82 = (v78 + *(v80 + 36));
      v83 = v118;
      *v82 = v117;
      v82[1] = v83;
      v82[2] = v119;
      (*(*v81 + 1824))();

      v86 = nullsub_1(v84, v85);
      v34 = v106;
      v87 = v78 + *(v106 + 9);
      *v87 = v86;
      *(v87 + 8) = v88;
      v89 = sub_1E3FCA848();
      v90 = v98;
      sub_1E3E361E8();
      sub_1E325F69C(v78, &qword_1ECF3D7F0);
      v91 = v99;
      v92 = v107;
      (*(v99 + 16))(v105, v90, v107);
      swift_storeEnumTagMultiPayload();
      v93 = type metadata accessor for ViewModel();
      v94 = sub_1E3FCA5D8();
      v95 = sub_1E388C264();
      v111 = v103;
      v112 = v93;
      v113 = v94;
      v114 = v95;
      OUTLINED_FUNCTION_3_219();
      swift_getOpaqueTypeConformance2();
      v111 = v34;
      v112 = v89;
      OUTLINED_FUNCTION_6_20();
      swift_getOpaqueTypeConformance2();
      OUTLINED_FUNCTION_15_158();
      sub_1E4201F44();

      (*(v91 + 8))(v90, v92);
    }

    sub_1E3294EE4(v34, v108, &qword_1ECF3D818);
    swift_storeEnumTagMultiPayload();
    sub_1E3FCA4B4();
    OUTLINED_FUNCTION_5_1();
    sub_1E4201F44();

    return sub_1E325F69C(v34, &qword_1ECF3D818);
  }

  else
  {
    nullsub_1(v42, v43);
    v55 = v110;
    (*(v4 + 16))(v108, v7, v110);
    swift_storeEnumTagMultiPayload();
    sub_1E3FCA4B4();
    OUTLINED_FUNCTION_5_1();
    sub_1E4201F44();
    return (*(v4 + 8))(v7, v55);
  }
}

unint64_t sub_1E3FCA4B4()
{
  result = qword_1ECF3D820;
  if (!qword_1ECF3D820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D818);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D808);
    type metadata accessor for ViewModel();
    sub_1E3FCA5D8();
    sub_1E388C264();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D7F0);
    sub_1E3FCA848();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D820);
  }

  return result;
}

unint64_t sub_1E3FCA5D8()
{
  result = qword_1ECF3D828;
  if (!qword_1ECF3D828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D808);
    sub_1E3FCA690();
    sub_1E374AD40(&qword_1EE2887D0, &qword_1ECF291E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D828);
  }

  return result;
}

unint64_t sub_1E3FCA690()
{
  result = qword_1ECF3D830;
  if (!qword_1ECF3D830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D838);
    sub_1E3FCA8F4(&qword_1ECF3D840, &unk_1ECF3D848);
    sub_1E3FCA7F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D830);
  }

  return result;
}

unint64_t sub_1E3FCA73C()
{
  result = qword_1EE2897E8;
  if (!qword_1EE2897E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D850);
    sub_1E374AD40(&qword_1EE2885F8, &unk_1ECF3D7E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2897E8);
  }

  return result;
}

unint64_t sub_1E3FCA7F4()
{
  result = qword_1EE299728[0];
  if (!qword_1EE299728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE299728);
  }

  return result;
}

unint64_t sub_1E3FCA848()
{
  result = qword_1EE289470;
  if (!qword_1EE289470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D7F0);
    sub_1E3FCA8F4(&qword_1EE289558, &unk_1ECF3D858);
    sub_1E3FCA968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289470);
  }

  return result;
}

uint64_t sub_1E3FCA8F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    sub_1E3FCA73C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3FCA968()
{
  result = qword_1EE251C38[0];
  if (!qword_1EE251C38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE251C38);
  }

  return result;
}

uint64_t sub_1E3FCA9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a3;
  v70[0] = a2;
  v73 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D7E8);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v70 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D850);
  OUTLINED_FUNCTION_6_4(v10, v78);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v70 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D848);
  OUTLINED_FUNCTION_6_4(v14, &v79);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v70 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D838);
  OUTLINED_FUNCTION_6_4(v18, &v81);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D808);
  OUTLINED_FUNCTION_6_4(v21, &v80);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v70 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  OUTLINED_FUNCTION_17_2(v25);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v70 - v27;
  type metadata accessor for TextBadge();
  sub_1E3746E10(v28);
  v29 = sub_1E42012F4();
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v29);
  v30 = (*(*a1 + 2056))(v28);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v71 = v30;
  sub_1E325F69C(v28, &qword_1ECF2A250);
  sub_1E3FCB058();
  v37 = sub_1E4201B84();
  if (*(v4 + 8) && (OUTLINED_FUNCTION_8(), (v40 = (*(v38 + 1872))(v39)) != 0))
  {
    (*(*v40 + 152))(v75);

    v41 = v75[3];
    if (v76)
    {
      v41 = 0;
    }
  }

  else
  {
    v41 = 0;
  }

  *v9 = v37;
  *(v9 + 1) = v41;
  v9[16] = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D860);
  sub_1E3FCB16C(v4, v70[0], &v9[*(v42 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v44 = sub_1E4202764();
  *(inited + 32) = v44;
  v45 = sub_1E4202784();
  *(inited + 33) = v45;
  v46 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v44)
  {
    v46 = sub_1E4202774();
  }

  sub_1E4202774();
  if (sub_1E4202774() != v45)
  {
    v46 = sub_1E4202774();
  }

  v47 = v74;
  sub_1E4200A54();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_1E329E454(v9, v13, &qword_1ECF3D7E8);
  OUTLINED_FUNCTION_141();
  v57 = &v13[v56];
  *v57 = v46;
  *(v57 + 1) = v49;
  *(v57 + 2) = v51;
  *(v57 + 3) = v53;
  *(v57 + 4) = v55;
  v57[40] = 0;
  sub_1E4203DA4();
  sub_1E42015C4();
  sub_1E329E454(v13, v17, &qword_1ECF3D850);
  OUTLINED_FUNCTION_141();
  memcpy(&v17[v58], __src, 0x70uLL);
  if (v47)
  {
    v59 = v47;
  }

  else
  {
    type metadata accessor for TextBadgePresenter();

    v59 = sub_1E3789F30(v60);
  }

  v61 = v72;
  sub_1E329E454(v17, v72, &qword_1ECF3D848);
  OUTLINED_FUNCTION_141();
  v63 = (v61 + v62);
  *v63 = v32;
  v63[1] = v34;
  v63[2] = v36;
  v63[3] = v71;
  v63[4] = a1;
  v63[5] = v59;
  OUTLINED_FUNCTION_141();
  v65 = &v24[v64];
  v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0) + 28);
  v67 = *MEMORY[0x1E697DBA8];
  sub_1E4200B44();
  OUTLINED_FUNCTION_2();
  (*(v68 + 104))(v65 + v66, v67);
  *v65 = swift_getKeyPath();
  sub_1E329E454(v61, v24, &qword_1ECF3D838);
  sub_1E329E454(v24, v73, &qword_1ECF3D808);
}

double sub_1E3FCB058()
{
  v1 = TVAppFeature.isEnabled.getter(10);
  v2 = *(v0 + 8);
  if (v1)
  {
    v3 = 0.0;
    if (v2)
    {
      OUTLINED_FUNCTION_8();
      (*(v4 + 176))(&v7);
      if ((v11 & 1) == 0)
      {
        return sub_1E3952BE0(v7, v8, v9, v10) * 0.5;
      }
    }
  }

  else
  {
    v3 = -2.0;
    if (v2)
    {
      OUTLINED_FUNCTION_8();
      (*(v5 + 176))(&v7);
      if ((v11 & 1) == 0)
      {
        return sub_1E3952BE0(v7, v8, v9, v10) * 0.5 + -2.0;
      }
    }
  }

  return v3;
}

void sub_1E3FCB134(void *a1)
{
  if (*(v1 + 32))
  {
    v3 = a1;
    sub_1E3788EB8(a1);
  }
}

uint64_t sub_1E3FCB16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v40 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938);
  v20 = OUTLINED_FUNCTION_17_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v39 - v24;
  v26 = *(a1 + 24);
  if (v26)
  {

    sub_1E3EB9BB4(v41);
    v27 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v26, v41, 0, v27 & 1, 0, 0, v18);

    sub_1E375C31C(v41);
    (*(v15 + 32))(v25, v18, v13);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  __swift_storeEnumTagSinglePayload(v25, v28, 1, v13);
  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  v29 = v22;
  v39 = v25;
  sub_1E3294EE4(v25, v22, &qword_1ECF29938);
  v30 = *(v6 + 16);
  v31 = OUTLINED_FUNCTION_34();
  v30(v31);
  v32 = v22;
  v33 = v12;
  v34 = v9;
  v35 = v40;
  sub_1E3294EE4(v32, v40, &qword_1ECF29938);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D8B0);
  (v30)(v35 + *(v36 + 48), v34, v4);
  v37 = *(v6 + 8);
  v37(v33, v4);
  sub_1E325F69C(v39, &qword_1ECF29938);
  v37(v34, v4);
  return sub_1E325F69C(v29, &qword_1ECF29938);
}

uint64_t sub_1E3FCB4B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextBadge();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3FCB514()
{
  v1 = type metadata accessor for TextBadge();
  result = OUTLINED_FUNCTION_17_2(v1);
  if (*(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 32))
  {
    OUTLINED_FUNCTION_8();
    v5 = (*(v4 + 392))();
    if (v5)
    {
      type metadata accessor for TextBadgeLayout();
      v5 = swift_dynamicCastClass();
      if (!v5)
      {

        v5 = 0;
      }
    }

    return sub_1E3788E58(v5);
  }

  return result;
}

void sub_1E3FCB61C()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    sub_1E3FCB7F8(319, qword_1EE27EF08, type metadata accessor for TextBadgeLayout, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1E3FCB7F8(319, qword_1EE283398, type metadata accessor for TextViewModel, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1E3FCB7F8(319, qword_1EE282B40, type metadata accessor for ImageViewModel, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1E3FCB7F8(319, qword_1EE275F88, type metadata accessor for TextBadgePresenter, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1E3FCB7F8(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1E3FCB7F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1E3FCB85C()
{
  result = qword_1ECF3D868;
  if (!qword_1ECF3D868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D870);
    sub_1E3FCA4B4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D868);
  }

  return result;
}

uint64_t sub_1E3FCB900(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1E3FCB940(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1E3FCB9B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v63[0] = a1;
  v68 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D878);
  OUTLINED_FUNCTION_0_10();
  v64 = v5;
  v65 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D880) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v63 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D888);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v66 = v13;
  v14 = v2[4];
  v16 = (*(*v14 + 792))(v15);
  v17 = *v3;
  v18 = v3[2];
  v19 = v3[3];
  v20.n128_u64[0] = *v3;
  *&v69 = j__OUTLINED_FUNCTION_7_78(v20);
  *(&v69 + 1) = v21;
  v70 = v22;
  v71 = v23;
  v72 = 0;
  v24 = OUTLINED_FUNCTION_34();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v24);
  v26 = sub_1E374AD40(&qword_1EE288970, &qword_1ECF3D890);
  sub_1E3A6929C(v16, v19, v18, 0, &v69, v25, v26);
  v27 = sub_1E3788970();
  v28 = sub_1E38F08C4(v27);

  *&v75 = v28;
  v29 = MEMORY[0x1E69815C0];
  v30 = MEMORY[0x1E6981580];
  LOBYTE(v27) = OUTLINED_FUNCTION_18();
  v31 = OUTLINED_FUNCTION_18();
  v32 = &v11[*(v8 + 44)];
  sub_1E391F7FC(v19, v27 & 1, v31 & 1, v29, v30, *&v18, *&v17);

  v33 = sub_1E4203DA4();
  v35 = v34;
  v36 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D898) + 36)];
  *v36 = v33;
  v36[1] = v35;
  if (sub_1E3789594())
  {
    v37 = sub_1E42037B4();
  }

  else
  {
    v37 = 0;
  }

  *&v75 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8A0);
  v39 = sub_1E3FCBF58();
  OUTLINED_FUNCTION_34();
  v40 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_34();
  v41 = OUTLINED_FUNCTION_18();
  v42 = v63[1];
  sub_1E391F7FC(v19, v40 & 1, v41 & 1, v38, v39, *&v18, *&v17);

  v43 = sub_1E4203DA4();
  v45 = v44;
  v46 = v66;
  v47 = v66 + *(v67 + 36);
  (*(v64 + 32))(v47, v42, v65);
  v48 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8A8) + 36));
  *v48 = v43;
  v48[1] = v45;
  v49 = sub_1E329E454(v11, v46, &qword_1ECF3D880);
  v50 = (*(*v14 + 600))(v49);
  if (!v50)
  {
    v75 = 0u;
    v76 = 0u;
LABEL_12:
    sub_1E325F69C(&v75, &unk_1ECF296E0);
    goto LABEL_13;
  }

  v51 = v50;
  v52 = [v50 shadowColor];

  if (v52)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v73 = 0u;
    v74 = 0u;
  }

  v75 = v73;
  v76 = v74;
  if (!*(&v74 + 1))
  {
    goto LABEL_12;
  }

  sub_1E3755B54();
  if (swift_dynamicCast())
  {
    v53 = v73;
    v54 = sub_1E38F08C4(v73);

    goto LABEL_14;
  }

LABEL_13:
  v54 = sub_1E42036E4();
LABEL_14:
  v55 = (*(*v14 + 600))();
  if (v55)
  {
    v56 = v55;
    [v55 shadowBlurRadius];
    v58 = v57;
  }

  else
  {
    v58 = 12.0;
  }

  v59 = sub_1E3FCBFD4();
  v60 = OUTLINED_FUNCTION_5_11();
  v61 = OUTLINED_FUNCTION_5_11();
  sub_1E3C43478(v54, v59, v68, v58, v60, v61);

  return sub_1E325F69C(v46, &qword_1ECF3D888);
}

unint64_t sub_1E3FCBF58()
{
  result = qword_1EE288698;
  if (!qword_1EE288698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288698);
  }

  return result;
}

unint64_t sub_1E3FCBFD4()
{
  result = qword_1EE289600;
  if (!qword_1EE289600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D888);
    sub_1E3FCC08C();
    sub_1E374AD40(&qword_1EE289220, &unk_1ECF3D8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289600);
  }

  return result;
}

unint64_t sub_1E3FCC08C()
{
  result = qword_1EE2899B8;
  if (!qword_1EE2899B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D880);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D890);
    sub_1E374AD40(&qword_1EE288970, &qword_1ECF3D890);
    swift_getOpaqueTypeConformance2();
    sub_1E374AD40(&qword_1EE289228, &unk_1ECF3D898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2899B8);
  }

  return result;
}

__objc2_class *sub_1E3FCC1B4(void *a1)
{
  result = object_getClass(a1);
  if (result == _TtC8VideosUI20CollectionInteractor && a1 != 0)
  {
    result = object_getClass(v1);
    if (result == _TtC8VideosUI20CollectionInteractor && v1 != 0)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_1E37CFCD4(a1);
      swift_unknownObjectRelease();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1E3FCC2B4(unint64_t a1)
{
  v38 = a1;

  sub_1E37FE584(v2);
  v37 = v38;
  v3 = sub_1E32AE9B0(v38);
  if (v3)
  {
    v4 = v3;
    if (v3 < 1)
    {
      goto LABEL_36;
    }

    v5 = 0;
    v6 = MEMORY[0x1E69E7CC8];
    v36 = v38 & 0xC000000000000001;
    do
    {
      if (v36)
      {
        v7 = MEMORY[0x1E6911E60](v5, v37);
      }

      else
      {
        v7 = *(v37 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = sub_1E4205204();
      if (v10)
      {
        v11 = v9;
        v12 = v10;
        v13 = v8;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = v6;
        v14 = sub_1E327D33C(v11, v12);
        if (__OFADD__(*(v6 + 16), (v15 & 1) == 0))
        {
          goto LABEL_34;
        }

        v16 = v14;
        v17 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8C0);
        if (sub_1E4207644())
        {
          v18 = sub_1E327D33C(v11, v12);
          if ((v17 & 1) != (v19 & 1))
          {
            goto LABEL_37;
          }

          v16 = v18;
        }

        v6 = v38;
        if (v17)
        {
          v20 = *(v38 + 56);
          v8 = *(v20 + 8 * v16);
          *(v20 + 8 * v16) = v13;
        }

        else
        {
          *(v38 + 8 * (v16 >> 6) + 64) |= 1 << v16;
          v21 = (*(v6 + 48) + 16 * v16);
          *v21 = v11;
          v21[1] = v12;
          *(*(v6 + 56) + 8 * v16) = v13;
          v22 = *(v6 + 16);
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_35;
          }

          *(v6 + 16) = v24;

          v8 = 0;
        }
      }

      ++v5;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  v38 = MEMORY[0x1E69E7CC0];
  v25 = 1 << *(v6 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v6 + 64);
  v28 = (v25 + 63) >> 6;

  v29 = 0;
  while (v27)
  {
    v30 = v29;
LABEL_28:
    v31 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    isUniquelyReferenced_nonNull_native = *(*(v6 + 56) + ((v30 << 9) | (8 * v31)));
    sub_1E4205224();
    if (v32)
    {
    }

    else
    {
      sub_1E4207544();
      sub_1E4207584();
      OUTLINED_FUNCTION_74();
      sub_1E4207594();
      sub_1E4207554();
    }

    v29 = v30;
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v28)
    {

      v33 = v38;

      v38 = sub_1E3FD6710(v34, sub_1E38009E8);
      sub_1E3FD59B4(&v38);

      sub_1E38005A8(v38);
      OUTLINED_FUNCTION_50();

      return v33;
    }

    v27 = *(v6 + 64 + 8 * v30);
    ++v29;
    if (v27)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_1E4207A74();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1E3FCC624()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DAD8);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_19_2();
  v3 = sub_1E3FCC724();
  sub_1E3FCC738(v3, v0);

  v4 = type metadata accessor for SportsSeeAllPlayModel();
  if (__swift_getEnumTagSinglePayload(v0, 1, v4) == 1)
  {
    sub_1E325F858(v0, &qword_1ECF3DAD8);
    v5 = 0;
  }

  else
  {
    v5 = sub_1E39543F4();
    sub_1E3FD7030(v0, type metadata accessor for SportsSeeAllPlayModel);
  }

  return sub_1E3FCC884(v5);
}

uint64_t sub_1E3FCC738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for SportsSeeAllPlayModel();
  v6 = v5;
  if (v4)
  {
    sub_1E3FD6FCC(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_1E3FCC7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1E4205AF4();
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

uint64_t sub_1E3FCC884(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_68_33(v2, v3, v4, v5, v6, v7, v8, v9, a1);
  return sub_1E4200684();
}

uint64_t sub_1E3FCC900@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FCC724();
  *a1 = result;
  return result;
}

uint64_t sub_1E3FCC958()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_36_57();
  sub_1E4200684();
  return sub_1E3FCC624();
}

uint64_t sub_1E3FCC9B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3FCCA2C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E3FCC9B8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E3FCCA94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3FCCB04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3FCCA94();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E3FCCB5C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_36_57();
  return sub_1E4200684();
}

uint64_t sub_1E3FCCBC4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3FCCC34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FCCBC4();
  *a1 = result;
  return result;
}

uint64_t sub_1E3FCCC88()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_36_57();
  return sub_1E4200684();
}

uint64_t sub_1E3FCCCE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3FCCD54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FCCCE4();
  *a1 = result;
  return result;
}

uint64_t sub_1E3FCCDAC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_36_57();
  return sub_1E4200684();
}

double sub_1E3FCCE1C@<D0>(_OWORD *a1@<X8>)
{
  sub_1E3FCCE08(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  a1[2] = v5[0];
  result = *(v5 + 10);
  *(a1 + 42) = *(v5 + 10);
  return result;
}

double sub_1E3FCCE90@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  *&v6[2] = *&v5[10];
  *v6 = *&v5[8];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = *v5;
  result = *&v6[2];
  *(a1 + 42) = *&v6[2];
  return result;
}

double sub_1E3FCCF28@<D0>(_OWORD *a1@<X8>)
{
  sub_1E3FCCE7C(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  a1[2] = v5[0];
  result = *(v5 + 10);
  *(a1 + 42) = *(v5 + 10);
  return result;
}

uint64_t sub_1E3FCCF88(__int128 *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v5[0] = a1[2];
  *(v5 + 10) = *(a1 + 42);
  sub_1E3FCC24C(v4, &v3);
  return sub_1E3FCCFF4(v4);
}

uint64_t sub_1E3FCCFF4(__int128 *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = *a1;

  OUTLINED_FUNCTION_68_33(v2, v3, v4, v5, v6, v7, v8, v9, v11);
  return sub_1E4200684();
}

void sub_1E3FCD080()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v3 = sub_1E4205BF4();
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  type metadata accessor for SportsPlayProcessor(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_9();
  v9 = *(v0 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_voiceOverViewModel);
  v10 = OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_competitors;
  OUTLINED_FUNCTION_5_0();
  v11 = *(v9 + v10);

  sub_1E3FCE014();
  v12 = *(v2 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_hasFetchedAllPlays);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DA30);
  v13 = swift_allocObject();
  v13[1] = xmmword_1E4299720;
  sub_1E3FCCE08(v28);
  v14 = v28[1];
  v13[2] = v28[0];
  v13[3] = v14;
  v13[4] = *v29;
  *(v13 + 74) = *&v29[10];
  sub_1E3FCCE7C(v30);
  v15 = v30[1];
  v16 = *v31;
  v13[6] = v30[0];
  v13[7] = v15;
  v13[8] = v16;
  *(v13 + 138) = *&v31[10];
  v17 = *(v2 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawSubscription);
  if (v17)
  {
    v18 = v17;
    v19 = sub_1E42056A4();

    v20 = sub_1E4205054();
  }

  else
  {
    v20 = 0;
  }

  sub_1E40302FC(v11, v7, v12, v13, v20, v1);
  sub_1E3FCD90C();
  sub_1E40303C8();
  sub_1E3FCC958();
  sub_1E3FCCCE4();
  OUTLINED_FUNCTION_5_0();

  sub_1E40C0B50();

  v21 = sub_1E32AE9B0(*(v2 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawPlays));
  v22 = sub_1E3FCC724();
  v23 = sub_1E39549A8(5);
  sub_1E3FD21BC(v23, v24, v22);
  v26 = v25;

  v27 = *(v26 + 16);

  if (__OFADD__(v21, v27))
  {
    __break(1u);
  }

  else
  {
    sub_1E3FCCC88();
    sub_1E3FD7030(v1, type metadata accessor for SportsPlayProcessor);
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E3FCD324@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FCD06C();
  *a1 = result;
  return result;
}

uint64_t sub_1E3FCD37C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_34();
  sub_1E4200674();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1E4200684();
  if (sub_1E3FCD06C())
  {
    v0 = sub_1E42053B4();

    v1 = sub_1E4205294();

    if (!v6)
    {
      if (!v1)
      {
        goto LABEL_15;
      }

LABEL_11:
      v3 = v1;
LABEL_13:

LABEL_14:

      sub_1E3FCD080();

      goto LABEL_15;
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_15;
    }

    v1 = 0;
  }

  v2 = sub_1E42053B4();
  v3 = sub_1E4205294();

  if (v1)
  {
    if (v3)
    {
      sub_1E4205544();
      v4 = sub_1E4206F64();

      if (v4)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v3)
  {
    goto LABEL_13;
  }

LABEL_15:
}

uint64_t sub_1E3FCD52C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FCD518();
  *a1 = result;
  return result;
}

uint64_t sub_1E3FCD584()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_36_57();
  return sub_1E4200684();
}

uint64_t sub_1E3FCD5E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_57();
  sub_1E4200674();
}

uint64_t sub_1E3FCD678(uint64_t a1)
{
  v2 = sub_1E4205754();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1E3FCD744(v5);
}

uint64_t sub_1E3FCD744(uint64_t a1)
{
  sub_1E4205754();
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_9();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  v6();

  OUTLINED_FUNCTION_68_3();
  sub_1E4200684();
  return (*(v4 + 8))(a1, v1);
}

uint64_t sub_1E3FCD858@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FCD844();
  *a1 = result;
  return result;
}

uint64_t sub_1E3FCD8B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_36_57();
  return sub_1E4200684();
}

uint64_t sub_1E3FCD90C()
{
  result = sub_1E3FCD844();
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  while (1)
  {
    if (v3 == v2)
    {

      v5 = sub_1E3FCD844();
      if (*(v5 + 16))
      {
        v4 = *(v5 + 32);
      }

      else
      {
        v4 = 3;
      }

LABEL_9:

      return v4;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v4 = *(v1 + v2++ + 32);
    result = static SportsDisplayError.__derived_enum_equals(_:_:)(v4, 1);
    if (result)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1E3FCD9B0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_2();
  v54 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v52 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v51 = v7 - v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v47[-v10];
  OUTLINED_FUNCTION_138();
  v11 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47[-v19];
  v55 = v2;
  v21 = sub_1E42056A4();
  sub_1E4205044();

  v22 = *(v13 + 104);
  v22(v17, *MEMORY[0x1E69D3B98], v11);
  sub_1E3FD70F0(&qword_1EE23B680, MEMORY[0x1E69D3BB8]);
  LOBYTE(v21) = sub_1E4205E84();
  v23 = *(v13 + 8);
  v24 = OUTLINED_FUNCTION_124();
  v23(v24);
  (v23)(v20, v11);
  if ((v21 & 1) == 0)
  {
    v49 = v0;
    v50 = v22;
    type metadata accessor for SportsRunningClockViewModel();
    OUTLINED_FUNCTION_5_0();

    v55 = v55;
    sub_1E3F833B0(v55);
    sub_1E3FCD37C();
    if (sub_1E3FCD518())
    {
    }

    else
    {
      sub_1E3FCE014();
      v26 = v51;
      v25 = v52;
      (*(v52 + 104))(v51, *MEMORY[0x1E69D3D88], v54);
      OUTLINED_FUNCTION_27_93();
      v27 = OUTLINED_FUNCTION_34();
      v48 = sub_1E3FCE1DC(v27, v28, v29, v30, v31);
      v32 = *(v25 + 8);
      v33 = v26;
      v34 = v54;
      v32(v33, v54);
      v32(v53, v34);
      if (v48)
      {
        type metadata accessor for BaseballClockViewModel(0);
        sub_1E3DF8228();
        sub_1E3FCD584();
      }
    }

    if (sub_1E3FCD518())
    {
      sub_1E3DF7DE8();
    }

    v35 = sub_1E42056A4();
    sub_1E4205044();

    sub_1E3FCD744(v20);
    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    sub_1E4200674();

    v50(v17, *MEMORY[0x1E69D3B78], v11);
    LOBYTE(v35) = sub_1E3FCE1DC(v20, v17, MEMORY[0x1E69D3BB8], &unk_1EE23B670, MEMORY[0x1E69D3BB8]);
    v37 = OUTLINED_FUNCTION_124();
    v23(v37);
    (v23)(v20, v11);
    if (v35)
    {
      v38 = sub_1E42056A4();
      sub_1E4205024();

      if (sub_1E3FCD06C())
      {
        sub_1E42053B4();
        OUTLINED_FUNCTION_11_5();

        v39 = sub_1E4205294();

        v40 = v49;
        sub_1E4205514();
      }

      else
      {
        sub_1E4205784();
        v40 = v49;
        OUTLINED_FUNCTION_32_2();
        __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
      }

      OUTLINED_FUNCTION_38_0();
      sub_1E3FD2760();

      sub_1E325F858(v40, &qword_1ECF2BD98);
    }

    sub_1E3FE3B24();
    v45 = sub_1E42056D4();
    sub_1E3FD3838(v45);
    OUTLINED_FUNCTION_11_5();

    sub_1E3FCD8B0();
    v46 = sub_1E42056A4();
    sub_1E4205024();

    sub_1E3FD2000();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FCDF54(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawSubscription);
  *(v1 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawSubscription) = a1;
  v5 = a1;

  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawSubscription);
  if (v3)
  {
    v4 = v3;
    sub_1E3FCD9B0();
  }
}

uint64_t sub_1E3FCDFCC()
{

  sub_1E3FCD080();
}

uint64_t sub_1E3FCE014()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawSubscription);
  if (v1)
  {
    v2 = v1;
    sub_1E4205704();
  }

  OUTLINED_FUNCTION_57();

  return sub_1E4205BD4();
}

uint64_t sub_1E3FCE08C()
{
  v0 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  sub_1E3FCE014();
  (*(v2 + 104))(v6, *MEMORY[0x1E69D3D88], v0);
  OUTLINED_FUNCTION_27_93();
  v10 = OUTLINED_FUNCTION_74();
  v15 = sub_1E3FCE1DC(v10, v11, v12, v13, v14);
  v16 = *(v2 + 8);
  v17 = OUTLINED_FUNCTION_13_8();
  v16(v17);
  (v16)(v9, v0);
  return v15 & 1;
}

uint64_t sub_1E3FCE1DC(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_1E3FD70F0(a4, a5);
  sub_1E4206254();
  sub_1E4206254();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3FCE2B4()
{
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_124();
  sub_1E3FCE320();
  return v0;
}

void sub_1E3FCE320()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v241 = v2;
  v242 = v3;
  v5 = v4;
  v277 = v6;
  v278 = v7;
  v240[1] = *v0;
  sub_1E4203FB4();
  OUTLINED_FUNCTION_0_10();
  v245 = v9;
  v246 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v244 = (v11 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v243 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B498);
  OUTLINED_FUNCTION_0_10();
  v279 = v16;
  v280 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v276 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D950);
  OUTLINED_FUNCTION_0_10();
  v274 = v20;
  v275 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v273 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D948);
  OUTLINED_FUNCTION_0_10();
  v271 = v24;
  v272 = v23;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v270 = v26;
  OUTLINED_FUNCTION_138();
  sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v268 = v28;
  v269 = v27;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v267 = v29 - v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  v266 = v240 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D938);
  OUTLINED_FUNCTION_0_10();
  v264 = v34;
  v265 = v33;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_44();
  v263 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D920);
  OUTLINED_FUNCTION_0_10();
  v261 = v38;
  v262 = v37;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_44();
  v260 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D908);
  OUTLINED_FUNCTION_0_10();
  v258 = v42;
  v259 = v41;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_44();
  v257 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D8F8);
  OUTLINED_FUNCTION_0_10();
  v255 = v46;
  v256 = v45;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_44();
  v254 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39130);
  OUTLINED_FUNCTION_0_10();
  v252 = v50;
  v253 = v49;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44();
  v251 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_0_10();
  v249 = v54;
  v250 = v53;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_44();
  v247 = v56;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8E8);
  OUTLINED_FUNCTION_0_10();
  v58 = v57;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v59);
  v61 = v240 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D8D0);
  OUTLINED_FUNCTION_0_10();
  v64 = v63;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v65);
  v67 = v240 - v66;
  v68 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__plays;
  *&v299 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8C8);
  sub_1E4200634();
  (*(v64 + 32))(&v1[v68], v67, v62);
  v69 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__firstPlayID;
  *&v299 = 0;
  BYTE8(v299) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8E0);
  sub_1E4200634();
  v70 = v1;
  (*(v58 + 32))(&v1[v69], v61, v248);
  LOBYTE(v299) = 0;
  sub_1E4200634();
  v71 = OUTLINED_FUNCTION_36_69();
  v72(v71);
  *&v299 = 0;
  sub_1E4200634();
  v73 = OUTLINED_FUNCTION_36_69();
  v74(v73);
  v75 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__periodSelectionViewModel;
  type metadata accessor for SportsPeriodSelectionViewModel(0);
  *&v299 = sub_1E40C1224();
  v76 = v254;
  sub_1E4200634();
  (*(v255 + 32))(&v1[v75], v76, v256);
  v77 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__leftTeamScoreCard;
  LOBYTE(v296) = 1;
  *&v289 = 0;
  BYTE8(v289) = 1;
  v290 = 0u;
  memset(v291, 0, 26);
  v292 = 0;
  v293 = 1;
  v294 = 0u;
  memset(v295, 0, sizeof(v295));
  sub_1E3FCC24C(&v289, &v299);
  sub_1E3FCC284(&v292);
  v299 = v289;
  v300 = v290;
  v301[0] = v291[0];
  *(v301 + 10) = *(v291 + 10);
  v78 = v257;
  sub_1E4200634();
  v79 = v259;
  v80 = *(v258 + 32);
  v80(&v70[v77], v78, v259);
  v81 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rightTeamScoreCard;
  LOBYTE(v281) = 1;
  *&v296 = 0;
  BYTE8(v296) = 1;
  v297 = 0u;
  memset(v298, 0, 26);
  *&v299 = 0;
  BYTE8(v299) = 1;
  v300 = 0u;
  memset(v301, 0, 26);
  sub_1E3FCC24C(&v296, &v286);
  sub_1E3FCC284(&v299);
  v286 = v296;
  v287 = v297;
  v288[0] = v298[0];
  *(v288 + 10) = *(v298 + 10);
  sub_1E4200634();
  v80(&v70[v81], v78, v79);
  v82 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__clock;
  *&v286 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D918);
  OUTLINED_FUNCTION_87_15();
  v83 = v260;
  sub_1E4200634();
  (*(v261 + 32))(&v70[v82], v83, v262);
  v84 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__baseballClockViewModel;
  *&v286 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D930);
  OUTLINED_FUNCTION_87_15();
  v85 = v263;
  sub_1E4200634();
  (*(v264 + 32))(&v70[v84], v85, v265);
  v86 = v268;
  v87 = v269;
  v88 = v266;
  (*(v268 + 104))(v266, *MEMORY[0x1E69D3B98], v269);
  OUTLINED_FUNCTION_72_29();
  v89();
  sub_1E4200634();
  (*(v86 + 8))(v88, v87);
  v90 = OUTLINED_FUNCTION_36_69();
  v91(v90);
  v92 = MEMORY[0x1E69E7CC0];
  *&v286 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4C0);
  OUTLINED_FUNCTION_87_15();
  sub_1E4200634();
  v93 = OUTLINED_FUNCTION_36_69();
  v94(v93);
  *&v70[OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawSubscription] = 0;
  *&v70[OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawPlays] = v92;
  v70[OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_hasFetchedAllPlays] = 0;
  v70[OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_hasFetchedFromBackground] = 0;
  if (sub_1E32AE9B0(v92))
  {
    v95 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v95 = MEMORY[0x1E69E7CD0];
  }

  *&v70[OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__cancellables] = v95;
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v96 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v96 = MEMORY[0x1E69E7CD0];
  }

  *&v70[OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_notifications] = v96;
  v97 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_voiceOverViewModel;
  type metadata accessor for SportsVoiceOverViewModel();
  *&v70[v97] = sub_1E3FE2E1C();
  v98 = &v70[OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_eventDateString];
  *v98 = 0;
  *(v98 + 1) = 0;
  v99 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__clockScoreVoiceOverText;
  v286 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
  OUTLINED_FUNCTION_87_15();
  v100 = v276;
  sub_1E4200634();
  (*(v279 + 4))(&v70[v99], v100, v280);
  *&v70[OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_refreshEventStateTimer] = 0;
  v101 = &v70[OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_sportingEventID];
  v102 = v278;
  *v101 = v277;
  *(v101 + 1) = v102;
  v280 = v70;
  *&v70[OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_competitors] = v5;
  v103 = *(v5 + 16);

  v104 = 0;
  v279 = MEMORY[0x1E69E7CC0];
  v105 = 7;
  while (v103 != v104)
  {
    if (v104 >= *(v5 + 16))
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      v145 = MEMORY[0x1E6911E60](0, v105);
      goto LABEL_53;
    }

    *(&v287 + 1) = &type metadata for ViewModelKeys.Sports;
    *&v288[0] = &off_1F5D7BC68;
    LOBYTE(v286) = 7;

    sub_1E3F9F164(&v286);

    if (!v283)
    {
      __swift_destroy_boxed_opaque_existential_1(&v286);
      sub_1E325F858(&v281, &unk_1ECF296E0);
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      v284 = 0;
      v285 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(&v286);
    v106 = v285;
    if (v285)
    {
      v107 = v284;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v276 = v107;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v114 = OUTLINED_FUNCTION_27();
        v279 = sub_1E3740F88(v114, v115, v116, v117);
      }

      v110 = *(v279 + 2);
      v109 = *(v279 + 3);
      v111 = v110 + 1;
      if (v110 >= v109 >> 1)
      {
        v275 = v110 + 1;
        v118 = sub_1E3740F88((v109 > 1), v110 + 1, 1, v279);
        v111 = v275;
        v279 = v118;
      }

      ++v104;
      v112 = v279;
      *(v279 + 2) = v111;
      v113 = &v112[16 * v110];
      *(v113 + 4) = v276;
      *(v113 + 5) = v106;
    }

    else
    {
LABEL_20:
      ++v104;
    }
  }

  v105 = v280;
  *(v280 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_competitorIds) = v279;

  v120 = sub_1E407668C(v119);
  v121 = 0;
  v122 = (v105 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_teamColorProvider);
  v122[3] = &type metadata for SportsTeamColorVendor;
  v122[4] = &off_1F5D94380;
  v123 = MEMORY[0x1E69E7CC0];
  *v122 = v120;
  v279 = v123;
  while (v103 != v121)
  {
    if (v121 >= *(v5 + 16))
    {
      goto LABEL_92;
    }

    v105 = *(v5 + 8 * v121 + 32);

    sub_1E384EE08(40);
    if (!*(v105 + 16))
    {

LABEL_34:

      goto LABEL_35;
    }

    v126 = sub_1E327D33C(v124, v125);
    v128 = v127;

    if ((v128 & 1) == 0)
    {
      goto LABEL_34;
    }

    sub_1E328438C(*(v105 + 56) + 32 * v126, &v286);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if ((swift_dynamicCast() & 1) != 0 && (v129 = v281) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v132 = OUTLINED_FUNCTION_27();
        v123 = sub_1E39239C8(v132, v133, v134, v123);
      }

      v131 = *(v123 + 2);
      v130 = *(v123 + 3);
      v105 = v131 + 1;
      if (v131 >= v130 >> 1)
      {
        v135 = OUTLINED_FUNCTION_1_12(v130);
        v123 = sub_1E39239C8(v135, v136, v137, v123);
      }

      ++v121;
      *(v123 + 2) = v105;
      *&v123[8 * v131 + 32] = v129;
    }

    else
    {
LABEL_35:
      ++v121;
    }
  }

  v138 = 0;
  v281 = MEMORY[0x1E69E7CC0];
  v139 = *(v123 + 2);
  while (v139 != v138)
  {
    if (v138 >= *(v123 + 2))
    {
      goto LABEL_93;
    }

    v140 = *&v123[8 * v138 + 32];

    sub_1E384EE08(40);
    v142 = v141;
    v144 = v143;
    *(&v287 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    *&v286 = v140;

    v105 = sub_1E3A7CD30(v142, v144, &v286, 0);

    __swift_destroy_boxed_opaque_existential_1(&v286);
    if (v105)
    {
      type metadata accessor for ImageViewModel();
      OUTLINED_FUNCTION_20_2();
      if (!swift_dynamicCastClass())
      {

        goto LABEL_42;
      }

      MEMORY[0x1E6910BF0]();
      if (*((v281 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v281 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      ++v138;
      v105 = &v281;
      sub_1E4206324();
      v279 = v281;
    }

    else
    {
LABEL_42:
      ++v138;
    }
  }

  v105 = v279;
  if (sub_1E32AE9B0(v279) != 2)
  {

    goto LABEL_54;
  }

  if (!sub_1E32AE9B0(v105))
  {
    v145 = 0;
    goto LABEL_53;
  }

  if ((v105 & 0xC000000000000001) != 0)
  {
    goto LABEL_96;
  }

  if (!*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v145 = *(v105 + 32);

LABEL_53:
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_72_29();
  v146 = sub_1E4200664();
  *(v147 + 48) = v145;

  v148 = OUTLINED_FUNCTION_42_68();
  v146(v148);

  v105 = sub_1E37D027C(v279);

  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_72_29();
  v149 = sub_1E4200664();
  *(v150 + 48) = v105;

  v151 = OUTLINED_FUNCTION_42_68();
  v149(v151);

LABEL_54:
  v152 = 0;
  v279 = MEMORY[0x1E69E7CC0];
  while (v103 != v152)
  {
    if (v152 >= *(v5 + 16))
    {
      goto LABEL_94;
    }

    v105 = *(v5 + 8 * v152 + 32);

    ViewModelKeys.Sports.rawValue.getter(13);
    if (!*(v105 + 16))
    {

LABEL_67:

LABEL_68:
      ++v152;
      continue;
    }

    v155 = sub_1E327D33C(v153, v154);
    v157 = v156;

    if ((v157 & 1) == 0)
    {
      goto LABEL_67;
    }

    sub_1E328438C(*(v105 + 56) + 32 * v155, &v286);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_68;
    }

    v158 = v282;
    if (!v282)
    {
      goto LABEL_68;
    }

    v159 = v281;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v164 = OUTLINED_FUNCTION_27();
      v279 = sub_1E3740F88(v164, v165, v166, v167);
    }

    v161 = *(v279 + 2);
    v160 = *(v279 + 3);
    v105 = v161 + 1;
    if (v161 >= v160 >> 1)
    {
      v168 = OUTLINED_FUNCTION_1_12(v160);
      v279 = sub_1E3740F88(v168, v169, v170, v279);
    }

    ++v152;
    v162 = v279;
    *(v279 + 2) = v105;
    v163 = &v162[16 * v161];
    *(v163 + 4) = v159;
    *(v163 + 5) = v158;
  }

  v171 = 0;
  v172 = MEMORY[0x1E69E7CC0];
  while (v103 != v171)
  {
    if (v171 >= *(v5 + 16))
    {
      goto LABEL_95;
    }

    v105 = *(v5 + 8 * v171 + 32);

    ViewModelKeys.Sports.rawValue.getter(22);
    if (!*(v105 + 16))
    {

LABEL_82:

LABEL_83:
      ++v171;
      continue;
    }

    v175 = sub_1E327D33C(v173, v174);
    v177 = v176;

    if ((v177 & 1) == 0)
    {
      goto LABEL_82;
    }

    sub_1E328438C(*(v105 + 56) + 32 * v175, &v286);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_83;
    }

    v178 = v282;
    if (!v282)
    {
      goto LABEL_83;
    }

    v179 = v281;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v183 = OUTLINED_FUNCTION_27();
      v172 = sub_1E3740F88(v183, v184, v185, v172);
    }

    v181 = *(v172 + 2);
    v180 = *(v172 + 3);
    v105 = v181 + 1;
    if (v181 >= v180 >> 1)
    {
      v186 = OUTLINED_FUNCTION_1_12(v180);
      v172 = sub_1E3740F88(v186, v187, v188, v172);
    }

    ++v171;
    *(v172 + 2) = v105;
    v182 = &v172[16 * v181];
    *(v182 + 4) = v179;
    *(v182 + 5) = v178;
  }

  if (*(v279 + 2) == 2)
  {
    v190 = *(v279 + 4);
    v189 = *(v279 + 5);

    swift_getKeyPath();
    swift_getKeyPath();
    v191 = sub_1E4200664();
    *(v192 + 16) = v190;
    *(v192 + 24) = v189;

    v193 = OUTLINED_FUNCTION_42_68();
    v191(v193);

    if (*(v172 + 2))
    {
      v195 = *(v172 + 4);
      v194 = *(v172 + 5);
    }

    else
    {
      v195 = 0;
      v194 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v196 = v280;
    v197 = sub_1E4200664();
    *(v198 + 32) = v195;
    *(v198 + 40) = v194;

    v199 = OUTLINED_FUNCTION_42_68();
    v197(v199);

    v200 = sub_1E38EA748(v279);
    v202 = v201;

    swift_getKeyPath();
    swift_getKeyPath();
    v203 = sub_1E4200664();
    *(v204 + 16) = v200;
    *(v204 + 24) = v202;

    v205 = OUTLINED_FUNCTION_42_68();
    v203(v205);

    v206 = sub_1E38EA748(v172);
    v208 = v207;

    swift_getKeyPath();
    swift_getKeyPath();
    v209 = OUTLINED_FUNCTION_79_26();
    *(v210 + 32) = v206;
    *(v210 + 40) = v208;

    v211 = OUTLINED_FUNCTION_42_68();
    v209(v211);
  }

  else
  {

    v196 = v280;
  }

  *&v286 = v196;
  OUTLINED_FUNCTION_72_29();
  v215 = sub_1E383ACA0(v212, v213, v214);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_79_26();
  *(v216 + 57) = v215 & 1;
  v217 = OUTLINED_FUNCTION_42_68();
  v218(v217);

  *&v286 = v196;
  OUTLINED_FUNCTION_72_29();
  v222 = sub_1E383ACA0(v219, v220, v221);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200664();
  *(v223 + 57) = v222 & 1;
  v224 = OUTLINED_FUNCTION_42_68();
  v225(v224);

  v226 = (v196 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_eventDateString);
  swift_beginAccess();
  v227 = v242;
  *v226 = v241;
  v226[1] = v227;

  sub_1E3FE3850(v5);

  sub_1E3FCFD40();
  sub_1E4206474();
  v228 = v243;
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v229, v230, v231, v232);
  OUTLINED_FUNCTION_5_10();
  v233 = swift_allocObject();
  v233[2] = 0;
  v233[3] = 0;
  v233[4] = v196;

  v234 = OUTLINED_FUNCTION_23_7();
  sub_1E3CC3FD0(v234, v235, v228, v236, v233);

  sub_1E325F858(v228, &unk_1ECF2C400);
  sub_1E3FD0E04();
  sub_1E3FD1064();
  v238 = v244;
  v237 = v245;
  *v244 = 300;
  v239 = v246;
  (*(v237 + 104))(v238, *MEMORY[0x1E69E7F48], v246);
  sub_1E3FD11B8();

  (*(v237 + 8))(v238, v239);
  OUTLINED_FUNCTION_25_2();
}