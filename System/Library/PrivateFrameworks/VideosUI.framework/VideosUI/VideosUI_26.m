void sub_1E3823614(uint64_t a1)
{
  v2 = sub_1E4205754();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  sub_1E38236E0();
}

void sub_1E38236E0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel__progressStatus;
  OUTLINED_FUNCTION_5_0();
  v12 = *(v6 + 16);
  v12(v10, v1 + v11, v4);
  sub_1E3827E1C(&qword_1EE23B680, MEMORY[0x1E69D3BB8]);
  v17 = v3;
  LOBYTE(v3) = sub_1E4205E84();
  v13 = *(v6 + 8);
  v14 = OUTLINED_FUNCTION_53();
  v13(v14);
  if (v3)
  {
    v12(v10, v17, v4);
    swift_beginAccess();
    (*(v6 + 40))(v1 + v11, v10, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_1_40();
    *(v16 - 16) = v1;
    *(v16 - 8) = v17;
    (*(*v1 + 1264))();
  }

  (v13)(v17, v4);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E382392C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_8();
  (*(v0 + 1256))();
}

uint64_t sub_1E38239A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 992))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3823A24(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel__scoreViewModels;
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel__scoreViewModels);
  v5 = (v4 | a1) == 0;

  if (v4 && a1)
  {
    v6 = OUTLINED_FUNCTION_13_8();
    v5 = sub_1E3827C10(v6, v7);
  }

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_1_40();
    *(v10 - 16) = v1;
    *(v10 - 8) = a1;
    (*(*v1 + 1264))();
  }
}

uint64_t sub_1E3823B6C()
{
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3823BB4(char a1)
{
  result = 0x6576694C657270;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_16_25();
      break;
    case 2:
      result = 1953722224;
      break;
    case 3:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3823C3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3823B6C();
  *a1 = result;
  return result;
}

uint64_t sub_1E3823C6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3823BB4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3823C98()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_8();
  (*(v1 + 1256))();

  return *(v0 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel__scoreboardState);
}

uint64_t sub_1E3823D00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3823C98();
  *a1 = result;
  return result;
}

uint64_t sub_1E3823D54(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel__scoreboardState;
  result = sub_1E3822F5C(*(v1 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel__scoreboardState), a1);
  if (result)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_1_40();
    *(v6 - 16) = v1;
    *(v6 - 8) = a1;
    (*(*v1 + 1264))();
  }

  return result;
}

uint64_t sub_1E3823E48()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_clockState;
  OUTLINED_FUNCTION_5_0();
  LOBYTE(v1) = *(v1 + 16);
  v2 = OUTLINED_FUNCTION_57();
  sub_1E38275A4(v2, v3, v1);
  return OUTLINED_FUNCTION_57();
}

uint64_t sub_1E3823EA8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_clockState;
  OUTLINED_FUNCTION_3_0();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  v10 = *(v7 + 16);
  *(v7 + 16) = a3;
  return sub_1E3827608(v8, v9, v10);
}

uint64_t sub_1E3823F4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_competitors;
  OUTLINED_FUNCTION_3_0();
  *(v1 + v3) = a1;
}

uint64_t sub_1E3823F9C()
{
  v1 = OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_irregularGameStateTextEnabled;
  OUTLINED_FUNCTION_5_0();
  return *(v0 + v1);
}

uint64_t sub_1E3823FD8(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_irregularGameStateTextEnabled;
  result = OUTLINED_FUNCTION_3_0();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3824068(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_liveUpdateProvider);
  OUTLINED_FUNCTION_3_0();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1E38240C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_scoreboardViewModel);
  if (!v1)
  {
    return 0;
  }

  v2 = sub_1E38276B0(v1);
  if (!v2)
  {
    return 0;
  }

  sub_1E374BD08(v2);
  OUTLINED_FUNCTION_50();

  return v0;
}

uint64_t sub_1E3824120(SEL *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_scoreboardViewModel);
  if (v2)
  {
    return sub_1E3827728(v2, a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3824168()
{
  if (!sub_1E38240C0())
  {
    v2 = 0u;
    v3 = 0u;
    goto LABEL_8;
  }

  v1[3] = &type metadata for ViewModelKeys.Sports;
  v1[4] = &off_1F5D7BC68;
  LOBYTE(v1[0]) = 21;
  sub_1E3F9F164(v1);

  __swift_destroy_boxed_opaque_existential_1(v1);
  if (!*(&v3 + 1))
  {
LABEL_8:
    sub_1E325F6F0(&v2, &unk_1ECF296E0);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v1[0];
  }

  else
  {
    return 0;
  }
}

void sub_1E3824240()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v6 = *(*v0 + 944);
  v6(v5);
  v7 = *(v2 + 104);
  v8 = OUTLINED_FUNCTION_33_14();
  v7(v8);
  OUTLINED_FUNCTION_74();
  v9 = sub_1E3823168();
  v10 = *(v2 + 8);
  v11 = OUTLINED_FUNCTION_13_8();
  v10(v11);
  v12 = OUTLINED_FUNCTION_11_6();
  v13 = (v10)(v12);
  if (v9)
  {
    OUTLINED_FUNCTION_8();
    if ((*(v14 + 552))())
    {
      v23[3] = &type metadata for ViewModelKeys.Sports;
      v23[4] = &off_1F5D7BC68;
      LOBYTE(v23[0]) = 34;
      sub_1E3F9F164(v23);

      __swift_destroy_boxed_opaque_existential_1(v23);
      if (*(&v25 + 1))
      {
        swift_dynamicCast();
        goto LABEL_9;
      }
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    sub_1E325F6F0(&v24, &unk_1ECF296E0);
    goto LABEL_9;
  }

  (v6)(v13);
  v15 = OUTLINED_FUNCTION_33_14();
  v7(v15);
  OUTLINED_FUNCTION_74();
  v16 = sub_1E3823168();
  v17 = OUTLINED_FUNCTION_13_8();
  v10(v17);
  v18 = OUTLINED_FUNCTION_11_6();
  v19 = (v10)(v18);
  if ((v16 & 1) == 0)
  {
    (v6)(v19);
    v20 = OUTLINED_FUNCTION_33_14();
    v7(v20);
    OUTLINED_FUNCTION_74();
    sub_1E3823168();
    v21 = OUTLINED_FUNCTION_13_8();
    v10(v21);
    v22 = OUTLINED_FUNCTION_11_6();
    v10(v22);
  }

LABEL_9:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E382457C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FE5D4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel__progressStatus;
  v12 = *MEMORY[0x1E69D3B98];
  sub_1E4205754();
  OUTLINED_FUNCTION_2();
  (*(v13 + 104))(v0 + v11, v12);
  *(v0 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel__scoreViewModels) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel__scoreboardState) = 3;
  v14 = v0 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_clockState;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 3;
  *(v0 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_competitors) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_irregularGameStateTextEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_cancellables) = MEMORY[0x1E69E7CD0];
  v15 = (v0 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_liveUpdateProvider);
  *v15 = 0;
  v15[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_scoreboardViewModel) = 0;
  sub_1E41FE924();

  v16 = sub_1E39BEDCC(v6, v4, v2);
  v17 = v16;
  if (!v16)
  {

    goto LABEL_11;
  }

  v18 = *(*v16 + 552);

  v20 = v18(v19);

  if (!v20)
  {
    v20 = sub_1E4205CB4();
  }

  sub_1E382766C();
  sub_1E3744600(v20);

  v21 = sub_1E37766C4();
  v22 = *(v17 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_scoreboardViewModel);
  *(v17 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_scoreboardViewModel) = v21;
  v23 = v21;

  v24 = sub_1E39C408C(239);
  v25 = OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_competitors;
  OUTLINED_FUNCTION_3_0();
  *(v17 + v25) = v24;

  type metadata accessor for ViewModel();
  j___s8VideosUI9ViewModelCMa();
  v26 = sub_1E39C1CF8(237);
  v27 = sub_1E3824984(v26);

  sub_1E3823A24(v27);
  sub_1E3824AD4();
  if (((*(*v17 + 1232))() & 1) != 0 || ((*(*v17 + 912))(), !v28))
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_1E3824114();
  if (!v29)
  {

    goto LABEL_10;
  }

  type metadata accessor for SportsKitScoreboardManager.CacheValue(0);
  v30 = v23;
  sub_1E41FE594();
  sub_1E376EE58(v21, 1, v10);
  updated = type metadata accessor for Tier1LiveUpdateProvider();

  sub_1E3C05A88();
  OUTLINED_FUNCTION_50();

  v32 = (v17 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_liveUpdateProvider);
  OUTLINED_FUNCTION_3_0();
  *v32 = updated;
  v32[1] = &off_1F5D780A8;
  swift_unknownObjectRelease();
LABEL_11:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3824984(unint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  sub_1E32AE9B0(a1);
  sub_1E4207574();
  result = sub_1E32AE9B0(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v6;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, a1);
      v5 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*v5 != _TtC8VideosUI13TextViewModel)
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

void sub_1E3824AD4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v71 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v67 - v11;
  v13 = *(v0 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_scoreboardViewModel);
  *(v1 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_scoreboardViewModel) = v3;
  v14 = v3;

  v15 = sub_1E32859C4(v14, &selRef_state);
  OUTLINED_FUNCTION_32_11(v15, v16);
  v17 = sub_1E3823B6C();
  if (v17 == 4)
  {
    v18 = 3;
  }

  else
  {
    v18 = v17;
  }

  sub_1E3823D54(v18);
  v19 = MEMORY[0x1E69E7CC0];
  v74 = MEMORY[0x1E69E7CC0];
  sub_1E32859C4(v14, &selRef_scoreInfoText1);
  if (v20)
  {
    OUTLINED_FUNCTION_4_42();
    if (v21)
    {
      type metadata accessor for TextViewModel();
      OUTLINED_FUNCTION_28_18(MEMORY[0x1E69E6158]);
      if (OUTLINED_FUNCTION_13_44(17, v72))
      {
        MEMORY[0x1E6910BF0]();
        OUTLINED_FUNCTION_10_31();
        if (v22)
        {
          OUTLINED_FUNCTION_14_33();
        }

        OUTLINED_FUNCTION_11_6();
        sub_1E4206324();
        v19 = v74;
      }
    }

    else
    {
    }
  }

  sub_1E32859C4(v14, &selRef_scoreInfoText2);
  if (v23)
  {
    OUTLINED_FUNCTION_4_42();
    if (v24)
    {
      type metadata accessor for TextViewModel();
      OUTLINED_FUNCTION_28_18(MEMORY[0x1E69E6158]);
      if (OUTLINED_FUNCTION_13_44(18, v72))
      {
        MEMORY[0x1E6910BF0]();
        OUTLINED_FUNCTION_10_31();
        if (v22)
        {
          OUTLINED_FUNCTION_14_33();
        }

        OUTLINED_FUNCTION_11_6();
        sub_1E4206324();
        v19 = v74;
      }
    }

    else
    {
    }
  }

  sub_1E32859C4(v14, &selRef_scoreInfoText3);
  if (v25)
  {
    OUTLINED_FUNCTION_4_42();
    if (v26)
    {
      type metadata accessor for TextViewModel();
      OUTLINED_FUNCTION_28_18(MEMORY[0x1E69E6158]);
      if (OUTLINED_FUNCTION_13_44(19, v72))
      {
        MEMORY[0x1E6910BF0]();
        OUTLINED_FUNCTION_10_31();
        if (v22)
        {
          OUTLINED_FUNCTION_14_33();
        }

        OUTLINED_FUNCTION_11_6();
        sub_1E4206324();
        v19 = v74;
      }
    }

    else
    {
    }
  }

  if (sub_1E32AE9B0(v19))
  {
    v27 = sub_1E3AF46D0();
    v28 = v1 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_clockState;
    OUTLINED_FUNCTION_3_0();
    v29 = *v28;
    v30 = *(v28 + 8);
    *v28 = v19;
    *(v28 + 8) = v27;
    v31 = *(v28 + 16);
    *(v28 + 16) = 1;
    sub_1E3827608(v29, v30, v31);
  }

  else
  {
  }

  v32 = v12;
  sub_1E38264FC(v18);
  sub_1E377D244();
  if (v34)
  {
    v37 = v33;
    v38 = v34;
    v39 = v35;
    v40 = v36;
    v41 = sub_1E324FBDC();
    v42 = v71;
    (*(v71 + 16))(v32, v41, v4);

    v43 = sub_1E41FFC94();
    v44 = v4;
    v45 = sub_1E42067E4();

    if (os_log_type_enabled(v43, v45))
    {
      v46 = swift_slowAlloc();
      v68 = v32;
      v47 = v46;
      v48 = swift_slowAlloc();
      v70 = v37;
      v49 = v48;
      v73 = v48;
      *v47 = 136315138;
      v50 = *(*v1 + 912);
      v67 = v44;
      v51 = v50();
      v53 = OUTLINED_FUNCTION_32_11(v51, v52);
      if (v55)
      {
        v56 = 0xE000000000000000;
      }

      else
      {
        v56 = v54;
      }

      v57 = sub_1E3270FC8(v53, v56, &v73);
      v69 = v40;
      v58 = v39;
      v59 = v42;
      v60 = v57;

      *(v47 + 4) = v60;
      _os_log_impl(&dword_1E323F000, v43, v45, "ScoreboardViewModel::updating scores: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      v37 = v70;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v59 + 8))(v68, v67);
      v39 = v58;
      v40 = v69;
    }

    else
    {

      (*(v42 + 8))(v32, v44);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4299720;
    *(inited + 32) = v37;
    *(inited + 40) = v38;
    *(inited + 48) = v39;
    *(inited + 56) = v40;
    sub_1E3825870(inited);
    swift_setDeallocating();
    sub_1E38272B0();
  }

  else
  {
    v61 = sub_1E324FBDC();
    v62 = v71;
    (*(v71 + 16))(v9, v61, v4);
    v63 = sub_1E41FFC94();
    v64 = sub_1E42067E4();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_1E323F000, v63, v64, "ScoreboardViewModel:: no scores received in update.", v65, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v62 + 8))(v9, v4);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3825064()
{
  v1 = OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel__progressStatus;
  sub_1E4205754();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);

  sub_1E3827608(*(v0 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_clockState), *(v0 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_clockState + 8), *(v0 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_clockState + 16));

  swift_unknownObjectRelease();

  v3 = OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_2();
  v5 = *(v4 + 8);

  return v5(v0 + v3);
}

uint64_t sub_1E3825160()
{
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1E3E37F30();
  (*(v2 + 16))(v6, v7, v0);
  v8 = sub_1E41FFC94();
  v9 = sub_1E42067E4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1E323F000, v8, v9, "ScoreboardViewModel is deallocated", v10, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v11 = OUTLINED_FUNCTION_57();
  v12(v11);
  v13 = ViewModel.deinit();
  v14 = OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel__progressStatus;
  sub_1E4205754();
  OUTLINED_FUNCTION_2();
  (*(v15 + 8))(v13 + v14);

  sub_1E3827608(*(v13 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_clockState), *(v13 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_clockState + 8), *(v13 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_clockState + 16));

  swift_unknownObjectRelease();

  v16 = OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_2();
  (*(v17 + 8))(v13 + v16);
  return v13;
}

uint64_t sub_1E3825378()
{
  v0 = sub_1E3825160();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E38253CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v24 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v30 = v28 - v29;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &a9 - v33;
  (*(*v20 + 944))(v32);
  (*(v26 + 104))(v30, *MEMORY[0x1E69D3B68], v24);
  v35 = sub_1E3823168();
  v36 = *(v26 + 8);
  v37 = OUTLINED_FUNCTION_53();
  v36(v37);
  (v36)(v34, v24);
  if (v35)
  {
    OUTLINED_FUNCTION_8();
    if ((*(v38 + 1160))())
    {
      v40 = v39;
      ObjectType = swift_getObjectType();
      (*(v40 + 8))(ObjectType, v40);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1E3E37F30();
    v42 = OUTLINED_FUNCTION_33_14();
    v43(v42);
    v44 = sub_1E41FFC94();
    v45 = sub_1E42067E4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1E323F000, v44, v45, "ScoreboardViewModel ignoring updates since the game is not live.", v46, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v47 = OUTLINED_FUNCTION_13_8();
    v48(v47);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E382567C(char a1)
{
  OUTLINED_FUNCTION_8();
  result = (*(v2 + 1160))();
  if (result)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(a1 & 1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E3825720()
{
  OUTLINED_FUNCTION_8_36();
  sub_1E3827E1C(v0, v1);
  return sub_1E41FE8F4();
}

uint64_t sub_1E3825794()
{
  OUTLINED_FUNCTION_8_36();
  sub_1E3827E1C(v0, v1);
  return sub_1E41FE8E4();
}

uint64_t sub_1E3825870(uint64_t a1)
{
  v2 = v1;
  v28 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 40);
    v24 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v25 = 0;
      v26 = 0xE000000000000000;

      v7 = sub_1E376DA04();
      OUTLINED_FUNCTION_5_0();
      if (*v7)
      {
        v8 = 46;
      }

      else
      {
        v8 = 0;
      }

      if (*v7)
      {
        v9 = 0xE100000000000000;
      }

      else
      {
        v9 = 0xE000000000000000;
      }

      MEMORY[0x1E69109E0](v8, v9);

      MEMORY[0x1E69109E0](v6, v5);

      v11 = v25;
      v10 = v26;
      sub_1E384EE08(237);
      v13 = v12;
      v15 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      ViewModelKeys.rawValue.getter(14);
      *(inited + 32) = v17;
      *(inited + 40) = v18;
      *(inited + 48) = v11;
      *(inited + 56) = v10;
      v19 = sub_1E4205CB4();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770);
      v25 = v19;
      v20 = sub_1E3A7CD30(v13, v15, &v25, v2);

      v21 = __swift_destroy_boxed_opaque_existential_1(&v25);
      if (v20)
      {
        if (*v20 == _TtC8VideosUI13TextViewModel)
        {
          MEMORY[0x1E6910BF0](v21);
          if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E42062F4();
          }

          sub_1E4206324();
          v24 = v28;
        }

        else
        {
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  if (v24 >> 62)
  {
    v22 = sub_1E4207384();
  }

  else
  {
    v22 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22 == 2)
  {
    return sub_1E3823A24(v24);
  }

  else
  {
  }
}

uint64_t sub_1E3825AE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_scoreboardViewModel);
  if (v1)
  {
    v2 = [v1 jsContextDictionary];
    v3 = sub_1E4205C64();

    return v3;
  }

  else
  {

    return sub_1E4205CB4();
  }
}

void sub_1E3825BB0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v79 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v81 = v7 - v6;
  v83 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v84 = v12 - v11;
  v13 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v77 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v73 - v20;
  v22 = sub_1E324FBDC();
  v23 = *(v15 + 16);
  v75 = v22;
  v76 = v15 + 16;
  v74 = v23;
  (v23)(v21);

  v24 = sub_1E41FFC94();
  v25 = sub_1E42067E4();

  v26 = os_log_type_enabled(v24, v25);
  v85 = v0;
  v86 = v15;
  v82 = v2;
  v80 = v3;
  v78 = v13;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v87[0] = v28;
    *v27 = 136315138;
    v29 = (*(*v0 + 912))();
    v31 = OUTLINED_FUNCTION_32_11(v29, v30);
    if (v33)
    {
      v34 = 0xE000000000000000;
    }

    else
    {
      v34 = v32;
    }

    sub_1E3270FC8(v31, v34, v87);
    OUTLINED_FUNCTION_50();

    *(v27 + 4) = v0;
    _os_log_impl(&dword_1E323F000, v24, v25, "ScoreboardViewModel:: updating with sportingEvent: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v35 = *(v15 + 8);
  v35(v21, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6E0);
  v36 = *(v9 + 72);
  v37 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1E4299720;
  v39 = v38 + v37;
  v40 = *(v9 + 104);
  v41 = v83;
  v40(v39, *MEMORY[0x1E69D3B90], v83);
  v40(v39 + v36, *MEMORY[0x1E69D3B98], v41);
  v42 = v84;
  v43 = sub_1E4205044();
  MEMORY[0x1EEE9AC00](v43);
  *(&v73 - 2) = v42;
  v44 = sub_1E38273FC(sub_1E38277DC, (&v73 - 4), v38);
  swift_setDeallocating();
  sub_1E38272F4();
  (*(v9 + 8))(v42, v41);
  if (!v44)
  {
    v83 = v35;
    v45 = sub_1E3824168();
    OUTLINED_FUNCTION_32_11(v45, v46);
    v47 = v81;
    sub_1E4205BD4();
    v48 = sub_1E4205024();
    MEMORY[0x1EEE9AC00](v48);
    *(&v73 - 2) = v47;
    sub_1E38263A8(sub_1E38277FC, (&v73 - 4), v48);
    v50 = v49;

    v51 = sub_1E32AE9B0(v50);
    v52 = 0;
    v53 = MEMORY[0x1E69E7CC0];
    while (v51 != v52)
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        v62 = OUTLINED_FUNCTION_53();
        v54 = MEMORY[0x1E6911E60](v62);
      }

      else
      {
        if (v52 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v54 = *(v50 + 8 * v52 + 32);
      }

      v55 = v54;
      if (__OFADD__(v52, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

      v87[0] = sub_1E4205AE4();
      v56 = sub_1E4207944();
      v58 = v57;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_1E3740F88(0, *(v53 + 2) + 1, 1, v53);
      }

      v60 = *(v53 + 2);
      v59 = *(v53 + 3);
      if (v60 >= v59 >> 1)
      {
        v53 = sub_1E3740F88((v59 > 1), v60 + 1, 1, v53);
      }

      *(v53 + 2) = v60 + 1;
      v61 = &v53[16 * v60];
      *(v61 + 4) = v56;
      *(v61 + 5) = v58;
      ++v52;
    }

    sub_1E3825870(v53);
    v64 = v77;
    v63 = v78;
    v74(v77, v75, v78);

    v65 = sub_1E41FFC94();
    v66 = sub_1E42067E4();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v87[0] = v68;
      *v67 = 136315138;
      v69 = MEMORY[0x1E6910C30](v53, MEMORY[0x1E69E6158]);
      v71 = v70;

      v72 = sub_1E3270FC8(v69, v71, v87);

      *(v67 + 4) = v72;
      _os_log_impl(&dword_1E323F000, v65, v66, "ScoreboardViewModel:: [CloudChannels] Updated scores: %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v68);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    v83(v64, v63);
    (*(v79 + 8))(v81, v80);
  }

  sub_1E4205044();
  sub_1E38236E0();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38262D4@<X0>(uint64_t *a1@<X8>)
{
  sub_1E4205B94();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  sub_1E4205BC4();
  v3 = sub_1E4205984();
  v4 = OUTLINED_FUNCTION_53();
  result = v5(v4);
  *a1 = v3;
  return result;
}

void sub_1E38263A8(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v12 = MEMORY[0x1E69E7CC0];
  v5 = sub_1E32AE9B0(a3);
  for (i = 0; v5 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E6911E60](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = *(a3 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v11 = v7;
    a1(&v10, &v11);
    if (v3)
    {

      return;
    }

    if (v10)
    {
      MEMORY[0x1E6910BF0]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
    }
  }
}

void sub_1E38264FC(char a1)
{
  sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = MEMORY[0x1E69D3B98];
  switch(a1)
  {
    case 1:
      v7 = MEMORY[0x1E69D3B68];
      goto LABEL_4;
    case 2:
      v7 = MEMORY[0x1E69D3B78];
      goto LABEL_4;
    case 3:
      return;
    default:
LABEL_4:
      (*(v3 + 104))(v6, *v7);
      sub_1E38236E0();
      return;
  }
}

uint64_t sub_1E382662C()
{
  v2 = 15;
  OUTLINED_FUNCTION_8();
  (*(v0 + 776))(v3, &v2, &unk_1F5D5D528, &off_1F5D5C858);
  if (v3[3])
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1E325F6F0(v3, &unk_1ECF296E0);
  }

  return 0;
}

uint64_t sub_1E38266F4(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  result = (*(v3 + 1088))();
  if (result)
  {
    OUTLINED_FUNCTION_30();
    (*(v5 + 464))();
    OUTLINED_FUNCTION_35_2();
    if (v1)
    {
      LOBYTE(v15) = 0;
      v6 = OUTLINED_FUNCTION_57();
      __swift_instantiateConcreteTypeFromMangledNameV2(v6);
      v7 = OUTLINED_FUNCTION_36_15(&qword_1EE23B540);
      OUTLINED_FUNCTION_5_48(v7, v8, v9, v10, v11, v12, v13, v14, a1, v15, v16);

      return v17;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E38267DC(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  result = (*(v2 + 992))();
  if (result)
  {
    LOBYTE(v13) = 0;
    v4 = OUTLINED_FUNCTION_57();
    __swift_instantiateConcreteTypeFromMangledNameV2(v4);
    v5 = OUTLINED_FUNCTION_36_15(&qword_1EE23B5B0);
    OUTLINED_FUNCTION_5_48(v5, v6, v7, v8, v9, v10, v11, v12, a1, v13, v14);

    return v15;
  }

  return result;
}

void sub_1E3826880()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel_scoreboardViewModel);
  if (v1)
  {
    v2 = v1;
    sub_1E377D244();
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    if (v6)
    {
      v11 = HIBYTE(v6) & 0xF;
      v12 = v4 & 0xFFFFFFFFFFFFLL;
      if ((v6 & 0x2000000000000000) != 0)
      {
        v13 = HIBYTE(v6) & 0xF;
      }

      else
      {
        v13 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (!v13)
      {

        goto LABEL_72;
      }

      if ((v6 & 0x1000000000000000) != 0)
      {

        v33 = OUTLINED_FUNCTION_74();
        sub_1E37801A4(v33, v34, 10);
        v36 = v35;
        swift_bridgeObjectRelease_n();
        if (v36)
        {
          goto LABEL_72;
        }

LABEL_75:
        sub_1E3826C4C(v8, v10);
        return;
      }

      if ((v6 & 0x2000000000000000) != 0)
      {
        if (v4 == 43)
        {
          if (v11)
          {
            if (v11 != 1)
            {
              OUTLINED_FUNCTION_34_19();
              while (1)
              {
                OUTLINED_FUNCTION_1_4();
                if (!v17 & v16)
                {
                  break;
                }

                OUTLINED_FUNCTION_3_39();
                if (!v17 || __OFADD__(v26, v25))
                {
                  break;
                }

                OUTLINED_FUNCTION_132();
                if (v17)
                {
                  goto LABEL_71;
                }
              }
            }

            goto LABEL_70;
          }

LABEL_81:
          __break(1u);
          return;
        }

        if (v4 != 45)
        {
          if (v11)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_4();
              if (!v17 & v16)
              {
                break;
              }

              OUTLINED_FUNCTION_3_39();
              if (!v17 || __OFADD__(v31, v30))
              {
                break;
              }

              OUTLINED_FUNCTION_132();
              if (v17)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }

        if (v11)
        {
          if (v11 != 1)
          {
            OUTLINED_FUNCTION_34_19();
            while (1)
            {
              OUTLINED_FUNCTION_1_4();
              if (!v17 & v16)
              {
                break;
              }

              OUTLINED_FUNCTION_3_39();
              if (!v17 || __OFSUB__(v22, v21))
              {
                break;
              }

              OUTLINED_FUNCTION_132();
              if (v17)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }
      }

      else
      {
        if ((v4 & 0x1000000000000000) != 0)
        {
          v14 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          OUTLINED_FUNCTION_74();
          v14 = sub_1E4207524();
        }

        v15 = *v14;
        if (v15 == 43)
        {
          if (v12 >= 1)
          {
            if (v12 != 1)
            {
              if (v14)
              {
                while (1)
                {
                  OUTLINED_FUNCTION_1_4();
                  if (!v17 & v16)
                  {
                    goto LABEL_70;
                  }

                  OUTLINED_FUNCTION_3_39();
                  if (!v17 || __OFADD__(v24, v23))
                  {
                    goto LABEL_70;
                  }

                  OUTLINED_FUNCTION_132();
                  if (v17)
                  {
                    goto LABEL_71;
                  }
                }
              }

              goto LABEL_61;
            }

            goto LABEL_70;
          }

          goto LABEL_80;
        }

        if (v15 != 45)
        {
          if (v12)
          {
            v27 = 0;
            if (v14)
            {
              while (1)
              {
                v28 = *v14 - 48;
                if (v28 > 9)
                {
                  goto LABEL_70;
                }

                v29 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_70;
                }

                v27 = v29 + v28;
                if (__OFADD__(v29, v28))
                {
                  goto LABEL_70;
                }

                ++v14;
                if (!--v12)
                {
                  goto LABEL_61;
                }
              }
            }

            goto LABEL_61;
          }

LABEL_70:
          v20 = 1;
LABEL_71:
          v32 = v20;

          if (v32)
          {
LABEL_72:

            return;
          }

          goto LABEL_75;
        }

        if (v12 >= 1)
        {
          if (v12 != 1)
          {
            if (v14)
            {
              while (1)
              {
                OUTLINED_FUNCTION_1_4();
                if (!v17 & v16)
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_3_39();
                if (!v17 || __OFSUB__(v19, v18))
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_132();
                if (v17)
                {
                  goto LABEL_71;
                }
              }
            }

LABEL_61:
            v20 = 0;
            goto LABEL_71;
          }

          goto LABEL_70;
        }

        __break(1u);
      }

      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }
  }
}

uint64_t sub_1E3826B74()
{
  OUTLINED_FUNCTION_8();
  result = (*(v1 + 1088))();
  if (result)
  {
    OUTLINED_FUNCTION_30();
    (*(v3 + 464))();
    OUTLINED_FUNCTION_35_2();
    if (v0)
    {
      sub_1E3826880();
      OUTLINED_FUNCTION_30_14();
      v4 = OUTLINED_FUNCTION_57();
      __swift_instantiateConcreteTypeFromMangledNameV2(v4);
      v5 = OUTLINED_FUNCTION_36_15(&qword_1EE23B540);
      OUTLINED_FUNCTION_5_48(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);

      return v16;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E3826C4C(uint64_t result, unint64_t a2)
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
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v17 = v27 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v22 = v27;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v27 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
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
        result = sub_1E4207524();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v14 = (result + 1);
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_61;
                }

                v16 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_61;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_61;
                }

                ++v14;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_53;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
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
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_61;
              }

              v21 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_61;
              }

              v10 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v10 - v9;
              if (__OFSUB__(v10, v9))
              {
                goto LABEL_61;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_53:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v25 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v7 = sub_1E37801A4(result, a2, 10);
  v25 = v26;
LABEL_63:

  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

void sub_1E3826F44()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_8();
  if (!(*(v1 + 1088))() || (OUTLINED_FUNCTION_30(), (*(v2 + 464))(), OUTLINED_FUNCTION_35_2(), !v0))
  {
LABEL_30:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v3 = sub_1E32AE9B0(v0);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      goto LABEL_30;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      v7 = OUTLINED_FUNCTION_11_6();
      MEMORY[0x1E6911E60](v7);
    }

    else
    {
      if (i >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    type metadata accessor for ViewModel();
    j___s8VideosUI9ViewModelCMa();
    v5 = sub_1E39C1CF8(36);
    v6 = v5;
    if (v5 >> 62)
    {
      break;
    }

    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

LABEL_18:

LABEL_19:
    ;
  }

  if (!sub_1E4207384())
  {
    goto LABEL_18;
  }

LABEL_11:
  if ((v6 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E6911E60](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }
  }

  type metadata accessor for ImageViewModel();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_19;
  }

  j___s8VideosUI9ViewModelCMa();
  sub_1E39C1CF8(36);
  OUTLINED_FUNCTION_35_2();
  if (!sub_1E32AE9B0(v0))
  {

    goto LABEL_29;
  }

  if ((v0 & 0xC000000000000001) != 0)
  {
LABEL_34:
    MEMORY[0x1E6911E60](0, v0);
    goto LABEL_26;
  }

  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_26:

    if (swift_dynamicCastClass())
    {
      goto LABEL_30;
    }

LABEL_29:

    goto LABEL_30;
  }

  __break(1u);
}

id sub_1E38271C0()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 sportsScoreSpoilersAllowed];

  return v1;
}

unint64_t sub_1E3827218()
{
  OUTLINED_FUNCTION_8();
  result = (*(v1 + 992))();
  if (result)
  {
    sub_1E32AE9B0(result);
    OUTLINED_FUNCTION_50();

    return v0 != 0;
  }

  return result;
}

unint64_t sub_1E3827278()
{
  if ((sub_1E38271C0() & 1) == 0)
  {
    return 0;
  }

  return sub_1E3827218();
}

uint64_t sub_1E38272B0()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1E38272F4()
{
  sub_1E4205754();
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1E382736C()
{
  sub_1E4205754();
  sub_1E3827E1C(&qword_1EE23B680, MEMORY[0x1E69D3BB8]);
  return sub_1E4205E84() & 1;
}

BOOL sub_1E38273FC(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_1E4205754() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

uint64_t sub_1E38274D0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel__progressStatus;
  swift_beginAccess();
  sub_1E4205754();
  OUTLINED_FUNCTION_2();
  (*(v4 + 24))(v2 + v3, v1);
  return swift_endAccess();
}

uint64_t sub_1E3827560()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel__scoreViewModels) = *(v0 + 24);
}

uint64_t sub_1E38275A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
LABEL_4:
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }

    goto LABEL_4;
  }
}

uint64_t sub_1E3827608(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
LABEL_4:
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }

    goto LABEL_4;
  }
}

unint64_t sub_1E382766C()
{
  result = qword_1EE23AF68;
  if (!qword_1EE23AF68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AF68);
  }

  return result;
}

uint64_t sub_1E38276B0(void *a1)
{
  v2 = [a1 leagueContext];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205C64();

  return v3;
}

uint64_t sub_1E3827728(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    sub_1E4205F14();
  }

  return OUTLINED_FUNCTION_57();
}

uint64_t type metadata accessor for ScoreboardViewModel()
{
  result = qword_1EE29E720;
  if (!qword_1EE29E720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3827828(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3827880()
{
  result = qword_1ECF2B6F0;
  if (!qword_1ECF2B6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B6F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ScoreBoardState(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E38279B8()
{
  result = sub_1E4205754();
  if (v1 <= 0x3F)
  {
    result = sub_1E41FE934();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ScoreboardViewModel.ScoreboardState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E3827BA4()
{
  result = qword_1ECF474E0;
  if (!qword_1ECF474E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF474E0);
  }

  return result;
}

uint64_t sub_1E3827C10(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    if (a2 >> 62)
    {
      result = sub_1E4207384();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v14 = 0;
      return v14 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a1 < 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v14 = 1;
      return v14 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = type metadata accessor for TextViewModel();
    v11 = 4;
    while (1)
    {
      v12 = v11 - 4;
      v13 = v11 - 3;
      if (__OFADD__(v11 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v11 - 4, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v11 - 4, a2);
      }

      else
      {
        if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }
      }

      sub_1E3827E1C(&qword_1EE283758, type metadata accessor for TextViewModel);
      v14 = sub_1E4205E84();

      if (v14)
      {
        ++v11;
        if (v13 != i)
        {
          continue;
        }
      }

      return v14 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3827E1C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1E3827E64()
{
  result = [objc_allocWithZone(type metadata accessor for SceneTabBarController()) init];
  qword_1ECF71278 = result;
  return result;
}

uint64_t *sub_1E3827E98()
{
  if (qword_1ECF47500 != -1)
  {
    OUTLINED_FUNCTION_4_43();
  }

  return &qword_1ECF71278;
}

uint64_t sub_1E3827ED8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3827F4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3827ED8();
  *a1 = result;
  return result;
}

uint64_t sub_1E3827FA4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1E4200684();
}

void *sub_1E382807C()
{
  sub_1E3827ED8();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_64();
  v2 = (*(v1 + 248))();

  v3 = sub_1E32AE9B0(v2);
  if (!v3)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1E382A1D8(0, v3 & ~(v3 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v15;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1E6911E60](v6, v2);
      }

      else
      {
        v8 = *(v2 + 8 * v6 + 32);
      }

      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;

      sub_1E4207414();
      v11 = *&v9[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_dictionary];
      *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
      *(inited + 72) = v11;

      v12 = sub_1E4205CB4();

      v14 = *(v15 + 16);
      v13 = *(v15 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1E382A1D8((v13 > 1), v14 + 1, 1);
      }

      ++v6;
      *(v15 + 16) = v14 + 1;
      *(v15 + 8 * v14 + 32) = v12;
    }

    while (v4 != v6);

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E38282DC()
{
  sub_1E3827ED8();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_64();
  v2 = (*(v1 + 176))();

  return v2;
}

uint64_t sub_1E382838C(uint64_t a1)
{
  sub_1E3827ED8();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_64();
  (*(v3 + 184))(a1);

  sub_1E3827ED8();
  OUTLINED_FUNCTION_16_26();
  sub_1E382A1F8();
  OUTLINED_FUNCTION_19_3();
  sub_1E4200514();

  sub_1E4200594();
}

uint64_t sub_1E3828468()
{
  sub_1E3827ED8();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_64();
  v2 = (*(v1 + 152))();

  return v2 & 1;
}

uint64_t sub_1E3828518(uint64_t a1)
{
  sub_1E3827ED8();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_64();
  (*(v3 + 160))(a1);

  sub_1E3827ED8();
  OUTLINED_FUNCTION_16_26();
  sub_1E382A1F8();
  OUTLINED_FUNCTION_19_3();
  sub_1E4200514();

  sub_1E4200594();
}

id sub_1E38285C0()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B700);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = OBJC_IVAR____TtC8VideosUI21SceneTabBarController__tabBarInfo;
  type metadata accessor for TabBarItemsInfo();
  v23 = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  sub_1E4200634();
  (*(v4 + 32))(&v0[v8], v7, v2);
  *&v0[OBJC_IVAR____TtC8VideosUI21SceneTabBarController_previousSelectedIndex] = 0;
  v0[OBJC_IVAR____TtC8VideosUI21SceneTabBarController_hasSetTabbarIndex] = 0;
  v9 = OBJC_IVAR____TtC8VideosUI21SceneTabBarController_viewMetricsRecorder;
  type metadata accessor for ViewMetricsRecorder();
  *&v0[v9] = sub_1E3FEFA68();
  v22.receiver = v0;
  v22.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v22, sel_init);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 sharedInstance];
  [v13 setTabBarController_];

  v14 = sub_1E3827ED8();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = *((*MEMORY[0x1E69E7D40] & *v14) + 0xE8);

  v16(sub_1E382A3B0, v15);

  v17 = objc_opt_self();
  v18 = [v17 defaultCenter];
  [v18 addObserver:v12 selector:sel_didEnterBackground_ name:*MEMORY[0x1E69DF7E0] object:0];

  v19 = [v17 defaultCenter];
  [v19 addObserver:v12 selector:sel_willTerminate_ name:*MEMORY[0x1E69DF7F8] object:0];

  return v12;
}

void sub_1E38288A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v5 = sub_1E3827ED8();
    OUTLINED_FUNCTION_64();
    v7 = (*(v6 + 248))();

    v8 = sub_1E32AE9B0(v7);
    v9 = 0;
    while (1)
    {
      if (v8 == v9)
      {
        OUTLINED_FUNCTION_15_36();

        return;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E6911E60](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          return;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      if (*&v10[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier] == a1 && *&v10[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8] == a2)
      {

        goto LABEL_21;
      }

      v13 = sub_1E42079A4();

      if (v13)
      {
        break;
      }

      if (__OFADD__(v9++, 1))
      {
        goto LABEL_28;
      }
    }

LABEL_21:
    sub_1E3827ED8();
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    v17 = (*(v16 + 176))();

    if (v17 == v9 && (a3 & 1) == 0)
    {
      goto LABEL_23;
    }

    sub_1E3827ED8();
    OUTLINED_FUNCTION_64();
    (*(v18 + 184))(v9);
    OUTLINED_FUNCTION_15_36();
  }

  else
  {
LABEL_23:
    OUTLINED_FUNCTION_15_36();
  }
}

void sub_1E3828BD0(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  v81 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v83 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v74 - v14;
  v16 = *&v3[OBJC_IVAR____TtC8VideosUI21SceneTabBarController_viewMetricsRecorder];
  (*(*v16 + 240))(v13);
  v17 = sub_1E382942C(a1);
  v84 = sub_1E32AE9B0(v17);
  if (!v84)
  {

    return;
  }

  v76 = a3;
  sub_1E3827ED8();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_64();
  v82 = (*(v18 + 176))();

  v77 = v3;
  v80 = v17;
  if ((a2 & 1) == 0)
  {
    v20 = 0;
    v22 = 0;
    v23 = v81;
LABEL_20:
    v36 = 0;
    goto LABEL_21;
  }

  if (([objc_opt_self() shouldIgnoreLastSelectedTabIndex] & 1) != 0 || (sub_1E32737D4(), , v20 = sub_1E32774E4(), v22 = v21, , !v22))
  {
    v24 = [objc_opt_self() sharedInstance];
    v25 = [v24 dropOnTabConfig];

    v26 = [v25 dropOnTabIdentifier];
    v20 = sub_1E4205F14();
    v22 = v27;

    v28 = sub_1E324FBDC();
    v23 = v81;
    (*(v9 + 16))(v15, v28, v81);

    v29 = sub_1E41FFC94();
    v30 = sub_1E4206814();
    v79 = v9;
    v31 = v30;

    v32 = v29;
    if (os_log_type_enabled(v29, v31))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v85 = v34;
      *v33 = 136315138;
      v35 = sub_1E3270FC8(v20, v22, &v85);

      *(v33 + 4) = v35;
      _os_log_impl(&dword_1E323F000, v32, v31, "DropOnTab: setting dropOnTabIdentifier=%s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      v4 = v77;
      OUTLINED_FUNCTION_6_0();
      v17 = v80;
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    v9 = v79;
    (*(v79 + 8))(v15, v23);
  }

  else
  {
    v23 = v81;
  }

  v36 = v82;
  if (v82 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  v37 = sub_1E32AE9B0(v17);
  v38 = v37 < 1 || v36 >= v37;
  if (v38)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (v84 < 1)
  {
LABEL_49:
    __break(1u);
  }

  else
  {
    v75 = v16;
    v39 = 0;
    v40 = 0;
    v41 = v17 & 0xC000000000000001;
    v78 = (v9 + 8);
    v79 = v9 + 16;
    *&v19 = 138412290;
    v74 = v19;
    do
    {
      if (v41)
      {
        v42 = MEMORY[0x1E6911E60](v40, v17);
      }

      else
      {
        v42 = *(v17 + 8 * v40 + 32);
      }

      v43 = v42;
      v44 = *&v42[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
      v45 = *&v42[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8];
      v46 = HIBYTE(v45) & 0xF;
      if ((v45 & 0x2000000000000000) == 0)
      {
        v46 = v44 & 0xFFFFFFFFFFFFLL;
      }

      if (v46 || (OUTLINED_FUNCTION_5_49(), v47) || (OUTLINED_FUNCTION_5_49(), v48))
      {
        if (v22)
        {
          v49 = v20 == v44 && v22 == v45;
          if (v49 || (sub_1E42079A4() & 1) != 0)
          {
            sub_1E3829B14();
            v36 = v39;
          }
        }

        v38 = __CFADD__(v39++, 1);
        if (v38)
        {
          __break(1u);
          goto LABEL_49;
        }
      }

      else
      {
        v82 = v36;
        v50 = sub_1E324FBDC();
        (*v79)(v83, v50, v23);
        v51 = v43;
        v52 = sub_1E41FFC94();
        v53 = sub_1E42067E4();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v54 = v74;
          *(v54 + 4) = v51;
          *v55 = v51;
          v56 = v51;
          _os_log_impl(&dword_1E323F000, v52, v53, "Tab bar item has a zero length identifier, documentRef or title. Will ignore. TabBarItem: %@", v54, 0xCu);
          sub_1E325F7A8(v55, &unk_1ECF28E30);
          v4 = v77;
          OUTLINED_FUNCTION_6_0();
          v23 = v81;
          OUTLINED_FUNCTION_6_0();
          v57 = v56;
        }

        else
        {
          v57 = v52;
          v52 = v51;
        }

        (*v78)(v83, v23);
        v17 = v80;
        v36 = v82;
      }

      ++v40;
    }

    while (v84 != v40);

    sub_1E3827ED8();
    OUTLINED_FUNCTION_71();
    v58 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_64();
    (*(v59 + 160))(0);

    sub_1E3827ED8();
    OUTLINED_FUNCTION_7_5();
    (*((*v58 & v60) + 0x100))(v17);

    sub_1E3827ED8();
    OUTLINED_FUNCTION_7_5();
    v62 = *((*v58 & v61) + 0x118);
    v63 = v76;
    v64 = v76;
    v62(v63);

    sub_1E3827ED8();
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    (*(v65 + 184))(v36);

    sub_1E3827ED8();
    OUTLINED_FUNCTION_16_26();
    sub_1E382A1F8();
    OUTLINED_FUNCTION_19_3();
    sub_1E4200514();

    sub_1E4200594();

    type metadata accessor for Metrics();
    v66 = sub_1E3BA54D0();
    v67 = [objc_opt_self() sharedInstance];
    v68 = [v67 sidebarPageMetrics];

    v69 = sub_1E4205C64();
    v70 = sub_1E374BD08(v69);

    if (v70)
    {
      (*(*v66 + 136))(v70);
    }

    OUTLINED_FUNCTION_8();
    v72 = *(v71 + 200);

    v72(v73);
  }
}

uint64_t sub_1E382942C(uint64_t a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v15 = sub_1E4204724();
  MEMORY[0x1EEE9AC00](v15);
  v65 = MEMORY[0x1E69E7CC0];
  v19 = *(a1 + 16);
  if (v19)
  {
    v54 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v55 = v16;
    v56 = v14;
    v52 = v11;
    v53 = v1;
    v51 = OBJC_IVAR____TtC8VideosUI21SceneTabBarController_viewMetricsRecorder;
    v20 = (a1 + 32);
    v61 = @"documentRef";
    v58 = @"identifier";
    v50 = (v17 + 32);
    v49 = (v17 + 16);
    v48 = (v17 + 8);
    v21 = (v5 + 16);
    v22 = (v5 + 8);
    v59 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v23 = *v20;
      v62 = sub_1E4205F14();
      v63 = v24;

      sub_1E4207414();
      if (!*(v23 + 16))
      {
        goto LABEL_14;
      }

      v25 = sub_1E375D924(v64);
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_10_32(v25);
      sub_1E375D84C(v64);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v60 = v62;
      v27 = sub_1E4205F14();
      OUTLINED_FUNCTION_14_34(v27, v28);
      sub_1E4207414();
      if (!*(v23 + 16) || (v29 = sub_1E375D924(v64), (v30 & 1) == 0))
      {

        goto LABEL_14;
      }

      OUTLINED_FUNCTION_10_32(v29);
      sub_1E375D84C(v64);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_15;
      }

      v47 = v62;
      v57 = v63;
      v31 = sub_1E4205F14();
      OUTLINED_FUNCTION_14_34(v31, v32);
      sub_1E4207414();
      if (!*(v23 + 16) || (v33 = sub_1E375D924(v64), (v34 & 1) == 0))
      {

LABEL_14:

        sub_1E375D84C(v64);
LABEL_15:
        v39 = sub_1E324FBDC();
        (*v21)(v8, v39, v3);
        v40 = sub_1E41FFC94();
        v41 = sub_1E4206814();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_1E323F000, v40, v41, "TabBarViewHostingViewController::tabbarItem doesn't have documentRef or identifier or title. Skipping.", v42, 2u);
          OUTLINED_FUNCTION_6_0();
        }

        (*v22)(v8, v3);
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_10_32(v33);
      sub_1E375D84C(v64);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_15;
      }

      v59 = v63;
      type metadata accessor for RemoteBarItem();
      sub_1E3D48E60();
      v60 = v35;
      OUTLINED_FUNCTION_8();
      v37 = v56;
      (*(v36 + 224))();
      v38 = v55;
      if (__swift_getEnumTagSinglePayload(v37, 1, v55) == 1)
      {
        sub_1E325F7A8(v37, &qword_1ECF2B7B0);
      }

      else
      {
        v43 = v54;
        (*v50)(v54, v37, v38);
        v59 = *(v53 + v51);
        v44 = v52;
        (*v49)(v52, v43, v38);
        __swift_storeEnumTagSinglePayload(v44, 0, 1, v38);
        (*(*v59 + 264))(v44);
        sub_1E325F7A8(v44, &qword_1ECF2B7B0);
        (*v48)(v54, v38);
      }

      v45 = v60;
      MEMORY[0x1E6910BF0]();
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();

      v59 = v65;
LABEL_18:
      ++v20;
      if (!--v19)
      {
        return v59;
      }
    }

    goto LABEL_15;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1E3829B14()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI21SceneTabBarController_previousSelectedIndex;
  v3 = *&v0[OBJC_IVAR____TtC8VideosUI21SceneTabBarController_previousSelectedIndex];
  sub_1E3827ED8();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_64();
  v5 = (*(v4 + 176))();

  if (v3 != v5 || (v0[OBJC_IVAR____TtC8VideosUI21SceneTabBarController_hasSetTabbarIndex] & 1) == 0)
  {
    v6 = sub_1E3827ED8();
    OUTLINED_FUNCTION_0_47();
    v8 = (*(v7 + 248))();

    v9 = sub_1E3827ED8();
    OUTLINED_FUNCTION_0_47();
    v11 = (*(v10 + 176))();

    if (v11 < 0)
    {
      __break(1u);
    }

    else
    {
      v31[1] = v8;
      v29 = v11;
      LOBYTE(v30) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B790);
      sub_1E382A81C();
      sub_1E38D2054(&v29, v31);
      v12 = v31[0];

      if (v12)
      {
        v14 = *&v12[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
        v13 = *&v12[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8];
        v28 = v14;
        if (*&v12[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_pageContextData + 8])
        {
          v14 = *&v12[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_pageContextData];
          v15 = *&v12[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_pageContextData + 8];
        }

        else
        {

          v15 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4297BE0;
        v29 = sub_1E4205F14();
        v30 = v17;

        v18 = MEMORY[0x1E69E6158];
        sub_1E4207414();
        *(inited + 96) = v18;
        *(inited + 72) = v14;
        *(inited + 80) = v15;
        v19 = sub_1E4205CB4();
        v20 = [objc_opt_self() defaultCenter];
        sub_1E37E7460(@"TVAppRootViewControllerCurrentNavigationControllerDidChangeNotification", v1, v19, v20);

        if ((*(v1 + OBJC_IVAR____TtC8VideosUI21SceneTabBarController_hasSetTabbarIndex) & 1) == 0)
        {
          *(v1 + OBJC_IVAR____TtC8VideosUI21SceneTabBarController_hasSetTabbarIndex) = 1;
        }

        v21 = *(v1 + v2);
        v22 = sub_1E3827ED8();
        OUTLINED_FUNCTION_0_47();
        v24 = (*(v23 + 176))();

        if (v21 == v24)
        {
        }

        else
        {
          v25 = sub_1E3827ED8();
          OUTLINED_FUNCTION_0_47();
          v27 = (*(v26 + 176))();

          *(v1 + v2) = v27;
          sub_1E32737D4();

          sub_1E41D8DA0(v28, v13);
        }
      }
    }
  }
}

uint64_t sub_1E3829F98(uint64_t a1)
{
  type metadata accessor for Router();
  v2 = sub_1E40C43F8();
  OUTLINED_FUNCTION_8();
  result = (*(v3 + 240))();
  if (v2)
  {
    v5 = *(*v2 + 368);

    v7 = v5(v6);

    if (v7)
    {
      (*(*v7 + 248))(a1);
    }
  }

  return result;
}

uint64_t sub_1E382A190@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_1E4200514();
  *a1 = result;
  return result;
}

void *sub_1E382A1D8(void *a1, int64_t a2, char a3)
{
  result = sub_1E382A880(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1E382A1F8()
{
  result = qword_1ECF2B720;
  if (!qword_1ECF2B720)
  {
    type metadata accessor for TabBarItemsInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B720);
  }

  return result;
}

uint64_t type metadata accessor for SceneTabBarController()
{
  result = qword_1ECF475A0;
  if (!qword_1ECF475A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E382A2A4()
{
  sub_1E382A358();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E382A358()
{
  if (!qword_1ECF2B728)
  {
    type metadata accessor for TabBarItemsInfo();
    v0 = sub_1E4200694();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF2B728);
    }
  }
}

void sub_1E382A3B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = OBJC_IVAR____TtC8VideosUI21SceneTabBarController_previousSelectedIndex;
  v3 = *(Strong + OBJC_IVAR____TtC8VideosUI21SceneTabBarController_previousSelectedIndex);
  v4 = Strong;
  sub_1E3827ED8();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_64();
  v6 = (*(v5 + 176))();

  if (v3 == v6)
  {
    goto LABEL_12;
  }

  v7 = sub_1E3827ED8();
  OUTLINED_FUNCTION_0_47();
  (*(v8 + 248))();

  if ((*(v1 + v2) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B790);
  v9 = sub_1E382A81C();
  OUTLINED_FUNCTION_9_31(v9);

  if (!v30)
  {
LABEL_12:
    sub_1E3829B14();
LABEL_13:

    return;
  }

  v10 = sub_1E3827ED8();
  OUTLINED_FUNCTION_0_47();
  (*(v11 + 248))();

  v12 = sub_1E3827ED8();
  OUTLINED_FUNCTION_0_47();
  v14 = (*(v13 + 176))();

  if (v14 < 0)
  {
LABEL_23:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_9_31(v15);

  type metadata accessor for Router();

  v16 = sub_1E40C4F10();

  if (v16)
  {
    v18 = (*(*v16 + 368))(v17);
    if (v18)
    {
      (*(*v18 + 240))(v18);
    }
  }

  OUTLINED_FUNCTION_8();
  v20 = (*(v19 + 200))();
  if (v20)
  {
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1E4297BE0;
    *(v22 + 32) = v21;
  }

  else
  {
    v22 = 0;
  }

  OUTLINED_FUNCTION_8();
  v24 = *(v23 + 208);

  v24(v25, v22);

  sub_1E3829B14();
  v26 = sub_1E40C4F10();

  if (!v26)
  {

    goto LABEL_13;
  }

  v28 = (*(*v26 + 368))(v27);
  if (v28)
  {
    (*(*v28 + 104))(v28);
    OUTLINED_FUNCTION_8();
    (*(v29 + 200))();
  }

  else
  {
  }
}

unint64_t sub_1E382A81C()
{
  result = qword_1ECF2B798;
  if (!qword_1ECF2B798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B798);
  }

  return result;
}

void *sub_1E382A880(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E382A9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __objc2_class **a3@<X2>, uint64_t a4@<X8>)
{
  v321 = a3;
  v332 = a4;
  v5 = *(a2 + 32);
  v290 = *(a2 + 24);
  v291 = v5;
  v284 = a2;
  v289 = *(a2 + 40);
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v293 = v7;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v295 = v9;
  v294 = sub_1E4203B14();
  v282 = *(v294 - 8);
  MEMORY[0x1EEE9AC00](v294);
  OUTLINED_FUNCTION_5();
  v283 = v11 - v10;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v285 = v13;
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v287 = v15;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v301 = v17;
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v300 = v19;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  v296 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v297 = &v277 - v23;
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_5();
  v302 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v303 = &v277 - v27;
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  v313 = v29;
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  v308 = v31;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B690);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44();
  v309 = v33;
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B688);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_44();
  v315 = v35;
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B680);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_5();
  v305 = v37;
  MEMORY[0x1EEE9AC00](v38);
  v304 = &v277 - v39;
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_44();
  v317 = v41;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B670);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_44();
  v319 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_44();
  v320 = v45;
  v322 = type metadata accessor for SportsPortableScoreboardView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5();
  v306 = v48 - v47;
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_44();
  v334 = v50;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44();
  v333 = v52;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v277 - v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B800);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v277 - v57;
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B668);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v277 - v60;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B660);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v277 - v63;
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B658);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v277 - v66;
  type metadata accessor for TextBadge();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_5();
  v72 = v71 - v70;
  v73 = *(a1 + 98);
  if ((v73 - 50) >= 9)
  {
    v278 = v61;
    v279 = v55;
    v280 = v64;
    v281 = v67;
    v96 = v320;
    v95 = v321;
    v97 = v69;
    switch(v73)
    {
      case 234:

        sub_1E398E05C(v98);
        v99 = v306;
        sub_1E398E0C0(v96, v97, v306);
        sub_1E382CF1C(v99, v58, type metadata accessor for SportsPortableScoreboardView);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_16_27();
        sub_1E382CBD0(v100, v101);
        OUTLINED_FUNCTION_15_37();
        sub_1E382CBD0(v102, v103);
        v104 = v278;
        OUTLINED_FUNCTION_33_20();
        sub_1E4201F44();
        OUTLINED_FUNCTION_31_14();
        sub_1E3743538(v105, v106, v107);
        swift_storeEnumTagMultiPayload();
        sub_1E381F898();
        sub_1E381F984();
        sub_1E4201F44();
        sub_1E325F69C(v104, &qword_1ECF2B668);
        OUTLINED_FUNCTION_18_5();
        sub_1E3743538(v108, v109, v110);
        OUTLINED_FUNCTION_37_14();
        sub_1E381F80C();
        sub_1E381FB90();
        sub_1E4201F44();
        OUTLINED_FUNCTION_82();
        sub_1E325F69C(v111, v112);
        OUTLINED_FUNCTION_18_5();
        sub_1E3743538(v113, v114, v115);
        OUTLINED_FUNCTION_28_19();
        sub_1E381F780();
        sub_1E381FE5C();
        OUTLINED_FUNCTION_12_35();
        sub_1E4201F44();
        OUTLINED_FUNCTION_82();
        sub_1E325F69C(v116, v117);
        v92 = v99;
        v93 = type metadata accessor for SportsPortableScoreboardView;
        return sub_1E382CF78(v92, v93);
      case 241:
        type metadata accessor for SportStatsViewModel();
        v118 = swift_dynamicCastClass();
        if (v118)
        {
          v119 = v95;
          if (v95)
          {
            if (*v95 == _TtC8VideosUI16SportStatsLayout)
            {
            }

            else
            {
              v119 = 0;
            }
          }

          v152 = v317;

          v149 = sub_1E3E93310(v118, v119);
          v150 = v166;
          v118 = v167;
          v151 = v168;
        }

        else
        {
          v149 = 0;
          v150 = 0;
          v151 = 0;
          v152 = v317;
        }

        *v152 = v149;
        v152[1] = v150;
        v152[2] = v118;
        v152[3] = v151;
        v322 = v149;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_90();
        sub_1E382CE94(v169, v170);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B678);
        OUTLINED_FUNCTION_20_26();
        sub_1E382CC18(v171, &qword_1ECF2B678, &unk_1E42A0CB8, v172);
        sub_1E381FADC();
        v173 = v319;
        sub_1E4201F44();
        sub_1E3743538(v173, v279, &qword_1ECF2B670);
        swift_storeEnumTagMultiPayload();
        sub_1E381F898();
        sub_1E381F984();
        v174 = v280;
        sub_1E4201F44();
        sub_1E325F69C(v173, &qword_1ECF2B670);
        sub_1E3743538(v174, v333, &qword_1ECF2B660);
        OUTLINED_FUNCTION_37_14();
        sub_1E381F80C();
        sub_1E381FB90();
        v175 = v281;
        sub_1E4201F44();
        sub_1E325F69C(v174, &qword_1ECF2B660);
        sub_1E3743538(v175, v334, &qword_1ECF2B658);
        OUTLINED_FUNCTION_28_19();
        sub_1E381F780();
        sub_1E381FE5C();
        OUTLINED_FUNCTION_12_35();
        sub_1E4201F44();
        OUTLINED_FUNCTION_90();
        sub_1E382CED8(v176, v177);
        v147 = v175;
        v148 = &qword_1ECF2B658;
        return sub_1E325F69C(v147, v148);
      case 242:
        type metadata accessor for TeamStatsViewModel(0);
        v122 = swift_dynamicCastClass();
        if (v122)
        {
          v123 = v122;
          v124 = v334;
          v125 = v95;
          v126 = v304;
          if (v95)
          {
            if (*v95 == _TtC8VideosUI15TeamStatsLayout)
            {
            }

            else
            {
              v125 = 0;
            }

            v161 = v317;
          }

          else
          {
            v161 = v317;
          }

          v160 = v305;
          sub_1E41DC540(v123, v125);
          v158 = type metadata accessor for TeamStatsView();
          v159 = 0;
        }

        else
        {
          v158 = type metadata accessor for TeamStatsView();
          v159 = 1;
          v124 = v334;
          v126 = v304;
          v160 = v305;
          v161 = v317;
        }

        __swift_storeEnumTagSinglePayload(v160, v159, 1, v158);
        sub_1E382CE24(v160, v126);
        sub_1E3743538(v126, v161, &qword_1ECF2B680);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B678);
        OUTLINED_FUNCTION_20_26();
        sub_1E382CC18(v194, &qword_1ECF2B678, &unk_1E42A0CB8, v195);
        sub_1E381FADC();
        v196 = v319;
        sub_1E4201F44();
        sub_1E3743538(v196, v279, &qword_1ECF2B670);
        swift_storeEnumTagMultiPayload();
        sub_1E381F898();
        sub_1E381F984();
        sub_1E4201F44();
        sub_1E325F69C(v196, &qword_1ECF2B670);
        OUTLINED_FUNCTION_82();
        sub_1E3743538(v197, v198, v199);
        OUTLINED_FUNCTION_37_14();
        sub_1E381F80C();
        sub_1E381FB90();
        v200 = v281;
        sub_1E4201F44();
        OUTLINED_FUNCTION_31_14();
        sub_1E325F69C(v201, v202);
        sub_1E3743538(v200, v124, &qword_1ECF2B658);
        swift_storeEnumTagMultiPayload();
        sub_1E381F780();
        sub_1E381FE5C();
        OUTLINED_FUNCTION_12_35();
        sub_1E4201F44();
        OUTLINED_FUNCTION_31_14();
        sub_1E325F69C(v203, v204);
        v147 = v126;
        v148 = &qword_1ECF2B680;
        return sub_1E325F69C(v147, v148);
      case 243:
        type metadata accessor for PlayerStatsViewModel();
        v120 = swift_dynamicCastClass();
        if (v120)
        {
          v121 = v309;
          if (v95)
          {
            if (*v95 == _TtC8VideosUI17PlayerStatsLayout)
            {
            }

            else
            {
              v95 = 0;
            }
          }

          v157 = v333;
          v156 = v334;

          v153 = sub_1E396330C(v120, v95);
          v154 = v178;
          v155 = v179;
          v120 = v180;
        }

        else
        {
          v153 = 0;
          v154 = 0;
          v155 = 0;
          v157 = v333;
          v156 = v334;
          v121 = v309;
        }

        v181 = v308;
        *v308 = v153;
        v181[1] = v154;
        v181[2] = v155;
        v181[3] = v120;
        v324 = v153;
        v325 = v155;
        v323 = v154;
        swift_storeEnumTagMultiPayload();
        sub_1E382CE94(v153, v154);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B698);
        OUTLINED_FUNCTION_19_21();
        OUTLINED_FUNCTION_167_0();
        sub_1E382CC18(v182, v183, v184, v185);
        OUTLINED_FUNCTION_17_25();
        sub_1E382CC70(v186, v187);
        sub_1E4201F44();
        sub_1E3743538(v121, v313, &qword_1ECF2B690);
        swift_storeEnumTagMultiPayload();
        sub_1E381FC1C();
        sub_1E381FD54();
        v188 = v315;
        sub_1E4201F44();
        OUTLINED_FUNCTION_167_0();
        sub_1E325F69C(v189, v190);
        sub_1E3743538(v188, v157, &qword_1ECF2B688);
        OUTLINED_FUNCTION_36_16();
        sub_1E381F80C();
        sub_1E381FB90();
        v191 = v281;
        sub_1E4201F44();
        OUTLINED_FUNCTION_167_0();
        sub_1E325F69C(v192, v193);
        sub_1E3743538(v191, v156, &qword_1ECF2B658);
        OUTLINED_FUNCTION_28_19();
        sub_1E381F780();
        sub_1E381FE5C();
        OUTLINED_FUNCTION_12_35();
        sub_1E4201F44();
        sub_1E382CED8(v324, v323);
        OUTLINED_FUNCTION_167_0();
        return sub_1E325F69C(v147, v148);
      default:
        v127 = v69;
        if (*v69 == _TtC8VideosUI13TextViewModel)
        {
          v129 = v333;
          v128 = v334;
          if (v321)
          {
            type metadata accessor for TextLayout();
            swift_dynamicCastClass();
          }

          v130 = v310;
          v132 = v302;
          v131 = v303;

          OUTLINED_FUNCTION_18();
          sub_1E3F23370();

          v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
          __swift_storeEnumTagSinglePayload(v132, 0, 1, v133);
          sub_1E3741EA0(v132, v131, &qword_1ECF29210);
          sub_1E3743538(v131, v308, &qword_1ECF29210);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B698);
          OUTLINED_FUNCTION_19_21();
          OUTLINED_FUNCTION_90();
          sub_1E382CC18(v134, v135, v136, v137);
          OUTLINED_FUNCTION_17_25();
          sub_1E382CC70(v138, &qword_1ECF29210);
          v139 = v309;
          sub_1E4201F44();
          OUTLINED_FUNCTION_29_12(v139, v313);
          swift_storeEnumTagMultiPayload();
          sub_1E381FC1C();
          sub_1E381FD54();
          OUTLINED_FUNCTION_26_18();
          sub_1E4201F44();
          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v140, v141);
          OUTLINED_FUNCTION_29_12(v130, v129);
          OUTLINED_FUNCTION_36_16();
          sub_1E381F80C();
          sub_1E381FB90();
          v142 = v281;
          sub_1E4201F44();
          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v143, v144);
          OUTLINED_FUNCTION_29_12(v142, v128);
          OUTLINED_FUNCTION_28_19();
          sub_1E381F780();
          sub_1E381FE5C();
          OUTLINED_FUNCTION_12_35();
          sub_1E4201F44();
          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v145, v146);
          v147 = v303;
          v148 = &qword_1ECF29210;
          return sub_1E325F69C(v147, v148);
        }

        type metadata accessor for ImageViewModel();
        v162 = swift_dynamicCastClass();
        v163 = v334;
        if (v162)
        {
          v164 = v162;

          sub_1E3EB9BB4(__src);
          if (v95)
          {
            type metadata accessor for ImageLayout();
            v165 = swift_dynamicCastClass();
          }

          else
          {
            v165 = 0;
          }

          v209 = v313;
          v210 = v311;
          v211 = v296;
          v212 = OUTLINED_FUNCTION_18();
          sub_1E37E8BE8(v164, __src, v165, v212 & 1, 0, 0, v211);
          sub_1E375C31C(__src);

          v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
          __swift_storeEnumTagSinglePayload(v211, 0, 1, v213);
          OUTLINED_FUNCTION_18_5();
          sub_1E3741EA0(v214, v215, v216);
          OUTLINED_FUNCTION_18_5();
          sub_1E3743538(v217, v218, v219);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_18_19();
          OUTLINED_FUNCTION_82();
          sub_1E382CC70(v220, v221);
          sub_1E3741E4C();
          v222 = v300;
          sub_1E4201F44();
          OUTLINED_FUNCTION_29_12(v222, v209);
          swift_storeEnumTagMultiPayload();
          sub_1E381FC1C();
          sub_1E381FD54();
          OUTLINED_FUNCTION_26_18();
          sub_1E4201F44();
          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v223, v224);
          OUTLINED_FUNCTION_29_12(v210, v333);
          OUTLINED_FUNCTION_36_16();
          sub_1E381F80C();
          sub_1E381FB90();
          v225 = v281;
          sub_1E4201F44();
          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v226, v227);
          OUTLINED_FUNCTION_29_12(v225, v334);
          OUTLINED_FUNCTION_21_27();
          swift_storeEnumTagMultiPayload();
          sub_1E381F780();
          sub_1E381FE5C();
          OUTLINED_FUNCTION_1_71();
          sub_1E4201F44();
          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v228, v229);
          goto LABEL_51;
        }

        switch(v73)
        {
          case 0x4D:

            sub_1E38592BC(v241, v284, v341);
            OUTLINED_FUNCTION_7_53();
            v337 = 1;
            BYTE2(__src[6]) = 1;
            sub_1E38200E0();
            sub_1E3820134();

            OUTLINED_FUNCTION_32_21();
            sub_1E4201F44();
            OUTLINED_FUNCTION_2_39();
            v338 = 1;
            v336 = 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6B8);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6C0);
            sub_1E381FF74();
            sub_1E3820054();
            OUTLINED_FUNCTION_5_50();
            OUTLINED_FUNCTION_3_40();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6B0);
            sub_1E381FEE8();
            sub_1E3820188();
            OUTLINED_FUNCTION_6_38();
            OUTLINED_FUNCTION_4_44();
            sub_1E3743538(v242, v243, v244);
            OUTLINED_FUNCTION_21_27();
            swift_storeEnumTagMultiPayload();
            sub_1E381F780();
            sub_1E381FE5C();
            OUTLINED_FUNCTION_1_71();
            sub_1E4201F44();
            sub_1E382CCCC(v341);
            break;
          case 0x71:
            v271 = v283;
            sub_1E4203B04();
            v272 = v282;
            v273 = v294;
            (*(v282 + 16))(v293, v271, v294);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_14_35();
            sub_1E382CBD0(v274, v275);
            v276 = v295;
            sub_1E4201F44();
            sub_1E3743538(v276, v285, &qword_1ECF2B6C8);
            swift_storeEnumTagMultiPayload();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6B0);
            sub_1E381FEE8();
            sub_1E3820188();
            OUTLINED_FUNCTION_27_13();
            sub_1E325F69C(v276, &qword_1ECF2B6C8);
            sub_1E3743538(v73, v163, &qword_1ECF2B6A8);
            OUTLINED_FUNCTION_21_27();
            swift_storeEnumTagMultiPayload();
            sub_1E381F780();
            sub_1E381FE5C();
            OUTLINED_FUNCTION_1_71();
            sub_1E4201F44();
            sub_1E325F69C(v73, &qword_1ECF2B6A8);
            return (*(v272 + 8))(v283, v273);
          case 0xF5:
            goto LABEL_47;
          case 0xF6:
            v338 = 1;
            v337 = 0;
            __src[0] = 0;
            LOBYTE(__src[1]) = 1;
            BYTE2(__src[6]) = 0;
            sub_1E3820000();
            OUTLINED_FUNCTION_32_21();
            sub_1E4201F44();
            OUTLINED_FUNCTION_2_39();
            v341[0] = 0;
            v336 = 0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6B8);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6C0);
            sub_1E381FF74();
            sub_1E3820054();
            OUTLINED_FUNCTION_5_50();
            OUTLINED_FUNCTION_3_40();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6B0);
            sub_1E381FEE8();
            sub_1E3820188();
            OUTLINED_FUNCTION_6_38();
            OUTLINED_FUNCTION_4_44();
            sub_1E3743538(v230, v231, v232);
            OUTLINED_FUNCTION_21_27();
            swift_storeEnumTagMultiPayload();
            sub_1E381F780();
            sub_1E381FE5C();
            OUTLINED_FUNCTION_1_71();
            sub_1E4201F44();
            break;
          case 0x105:

            sub_1E38592BC(v237, v284, v341);
            OUTLINED_FUNCTION_7_53();
            v337 = 0;
            BYTE2(__src[6]) = 0;
            sub_1E38200E0();
            sub_1E3820134();

            OUTLINED_FUNCTION_32_21();
            sub_1E4201F44();
            OUTLINED_FUNCTION_2_39();
            v338 = 1;
            v336 = 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6B8);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6C0);
            sub_1E381FF74();
            sub_1E3820054();
            OUTLINED_FUNCTION_5_50();
            OUTLINED_FUNCTION_3_40();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6B0);
            sub_1E381FEE8();
            sub_1E3820188();
            OUTLINED_FUNCTION_6_38();
            OUTLINED_FUNCTION_4_44();
            sub_1E3743538(v238, v239, v240);
            OUTLINED_FUNCTION_21_27();
            swift_storeEnumTagMultiPayload();
            sub_1E381F780();
            sub_1E381FE5C();
            OUTLINED_FUNCTION_1_71();
            sub_1E4201F44();
            sub_1E382CD20(v341);
            break;
          case 0x103:

            sub_1E38592BC(v233, v284, v341);
            OUTLINED_FUNCTION_7_53();
            v337 = 1;
            BYTE2(__src[6]) = 1;
            sub_1E3820000();

            OUTLINED_FUNCTION_32_21();
            sub_1E4201F44();
            OUTLINED_FUNCTION_2_39();
            v338 = 0;
            v336 = 0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6B8);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6C0);
            sub_1E381FF74();
            sub_1E3820054();
            OUTLINED_FUNCTION_5_50();
            OUTLINED_FUNCTION_3_40();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6B0);
            sub_1E381FEE8();
            sub_1E3820188();
            OUTLINED_FUNCTION_6_38();
            OUTLINED_FUNCTION_4_44();
            sub_1E3743538(v234, v235, v236);
            OUTLINED_FUNCTION_21_27();
            swift_storeEnumTagMultiPayload();
            sub_1E381F780();
            sub_1E381FE5C();
            OUTLINED_FUNCTION_1_71();
            sub_1E4201F44();
            sub_1E382CD74(v341);
            break;
          case 0xF7:
LABEL_47:
            if (*(v284 + 41))
            {
              v205 = 0;
              v206 = 0;
              v207 = 0;
              v208 = 0;
            }

            else
            {
              if (*(v284 + 16))
              {
                v207 = 0;
              }

              else
              {
                v207 = *v284;
              }

              if (*(v284 + 16))
              {
                v208 = 0;
              }

              else
              {
                v208 = *(v284 + 8);
              }

              if (v289)
              {
                v205 = 0;
              }

              else
              {
                v205 = v290;
              }

              if (v289)
              {
                v206 = 0;
              }

              else
              {
                v206 = v291;
              }
            }

            sub_1E3EBA4A8(v207, v208, 0, v205, v206, 0, 0, 0, v339, 0);

            v255 = OUTLINED_FUNCTION_18();
            sub_1E3E321AC(v127, v339, 0, v255 & 1, __src);
            memcpy(v301, __src, 0x68uLL);
            swift_storeEnumTagMultiPayload();
            sub_1E382CDC8(__src, &v335);
            OUTLINED_FUNCTION_18_19();
            sub_1E382CC70(v256, v257);
            sub_1E3741E4C();
            sub_1E4201F44();
            OUTLINED_FUNCTION_18_5();
            sub_1E3743538(v258, v259, v260);
            swift_storeEnumTagMultiPayload();
            sub_1E381FC1C();
            sub_1E381FD54();
            OUTLINED_FUNCTION_26_18();
            sub_1E4201F44();
            OUTLINED_FUNCTION_82();
            sub_1E325F69C(v261, v262);
            OUTLINED_FUNCTION_18_5();
            sub_1E3743538(v263, v264, v265);
            OUTLINED_FUNCTION_36_16();
            sub_1E381F80C();
            sub_1E381FB90();
            sub_1E4201F44();
            OUTLINED_FUNCTION_82();
            sub_1E325F69C(v266, v267);
            OUTLINED_FUNCTION_4_44();
            sub_1E3743538(v268, v269, v270);
            OUTLINED_FUNCTION_21_27();
            swift_storeEnumTagMultiPayload();
            sub_1E381F780();
            sub_1E381FE5C();
            OUTLINED_FUNCTION_1_71();
            sub_1E4201F44();
            sub_1E3741F9C(__src);
            break;
          default:
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_14_35();
            sub_1E382CBD0(v245, v246);
            sub_1E4201F44();
            OUTLINED_FUNCTION_18_5();
            sub_1E3743538(v247, v248, v249);
            swift_storeEnumTagMultiPayload();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6B0);
            sub_1E381FEE8();
            sub_1E3820188();
            OUTLINED_FUNCTION_27_13();
            OUTLINED_FUNCTION_82();
            sub_1E325F69C(v250, v251);
            OUTLINED_FUNCTION_4_44();
            sub_1E3743538(v252, v253, v254);
            OUTLINED_FUNCTION_21_27();
            swift_storeEnumTagMultiPayload();
            sub_1E381F780();
            sub_1E381FE5C();
            OUTLINED_FUNCTION_1_71();
            sub_1E4201F44();
            break;
        }

LABEL_51:
        OUTLINED_FUNCTION_82();
        return sub_1E325F69C(v147, v148);
    }
  }

  v74 = v69;

  OUTLINED_FUNCTION_18();
  sub_1E3FC96D0(v74, 0, v72);
  sub_1E382CF1C(v72, v58, type metadata accessor for TextBadge);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_16_27();
  sub_1E382CBD0(v75, v76);
  OUTLINED_FUNCTION_15_37();
  sub_1E382CBD0(v77, v78);
  OUTLINED_FUNCTION_33_20();
  sub_1E4201F44();
  OUTLINED_FUNCTION_31_14();
  sub_1E3743538(v79, v80, v81);
  swift_storeEnumTagMultiPayload();
  sub_1E381F898();
  sub_1E381F984();
  sub_1E4201F44();
  sub_1E325F69C(v61, &qword_1ECF2B668);
  OUTLINED_FUNCTION_4_44();
  sub_1E3743538(v82, v83, v84);
  OUTLINED_FUNCTION_37_14();
  sub_1E381F80C();
  sub_1E381FB90();
  sub_1E4201F44();
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v85, v86);
  OUTLINED_FUNCTION_4_44();
  sub_1E3743538(v87, v88, v89);
  OUTLINED_FUNCTION_21_27();
  swift_storeEnumTagMultiPayload();
  sub_1E381F780();
  sub_1E381FE5C();
  OUTLINED_FUNCTION_1_71();
  sub_1E4201F44();
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v90, v91);
  v92 = v72;
  v93 = type metadata accessor for TextBadge;
  return sub_1E382CF78(v92, v93);
}

uint64_t sub_1E382CBD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E382CC18(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = OUTLINED_FUNCTION_12_34();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E382CC70(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    swift_getOpaqueTypeConformance2();
    result = OUTLINED_FUNCTION_12_34();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E382CE24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E382CE94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1E382CED8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1E382CF1C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E382CF78(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E382CFEC()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  if ((*(v2 + 1776))() != 2)
  {
    OUTLINED_FUNCTION_111();
    (*(v23 + 1832))(2);
    if (TVAppFeature.isEnabled.getter(10) & 1) != 0 || (OUTLINED_FUNCTION_111(), ((*(v24 + 2016))()))
    {
      type metadata accessor for TextLayout();
      v25 = sub_1E383BCC0();
      OUTLINED_FUNCTION_3_0();
      v1[13] = v25;

      OUTLINED_FUNCTION_9_2();
      v27 = *(v26 + 1848);
      v28 = v27();
      if (v28)
      {
        sub_1E3755B54();
        OUTLINED_FUNCTION_6_39();
        sub_1E4206F24();
        OUTLINED_FUNCTION_13();
        (*(v29 + 680))();
      }

      v30 = (v27)(v28);
      if (v30)
      {
        sub_1E4205F14();
        OUTLINED_FUNCTION_8();
        (*(v31 + 1768))();
      }

      v32 = (v27)(v30);
      if (v32)
      {
        OUTLINED_FUNCTION_30();
        (*(v33 + 1720))(7);
      }

      if ((v27)(v32))
      {
        OUTLINED_FUNCTION_30();
        (*(v34 + 1792))(6);
      }

      [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
      OUTLINED_FUNCTION_9_2();
      (*(v35 + 608))();
      v36 = objc_opt_self();
      v37 = [v36 blackColor];
      v38 = &selRef_collectionViewCanBecomeFocused_;
      v39 = [v37 colorWithAlphaComponent_];

      OUTLINED_FUNCTION_9_2();
      v41 = *(v40 + 752);
      v41(v39);
      OUTLINED_FUNCTION_9_2();
      v43 = *(v42 + 600);
      v44 = v43();
      if (v44)
      {
        v45 = v44;
        OUTLINED_FUNCTION_111();
        (*(v46 + 1800))();
        OUTLINED_FUNCTION_7_54();
        switch(v47)
        {
          case 1:
            OUTLINED_FUNCTION_19_22();
            goto LABEL_57;
          case 2:
            OUTLINED_FUNCTION_5_51();
            goto LABEL_57;
          case 3:

            v81 = 6.0;
            goto LABEL_61;
          default:
LABEL_57:
            OUTLINED_FUNCTION_2_40();
            v80 = OUTLINED_FUNCTION_17_26();

            v38 = 0x1FAB2E000;
            v81 = 4.0;
            if (v80)
            {
              v81 = 6.0;
            }

LABEL_61:
            [v45 &selRef:v81 buttonPressed:? + 3];

            break;
        }
      }

      OUTLINED_FUNCTION_111();
      v70 = 0;
      switch((*(v82 + 1776))())
      {
        case 1u:
        case 4u:
        case 7u:
          v83 = v43();
          if (v83)
          {
            v84 = v83;
            sub_1E3755B54();
            OUTLINED_FUNCTION_6_39();
            v85 = sub_1E4206F24();
            [v84 setShadowColor_];
          }

          v86 = v43();
          if (v86)
          {
            v87 = v86;
            [v86 setShadowBlurRadius_];
          }

          goto LABEL_75;
        case 3u:
          v88 = v43();
          if (v88)
          {
            v89 = v88;
            v90 = [v36 systemPinkColor];
            v91 = [v90 v38 + 376];

            [v89 setShadowColor_];
          }

          v92 = v43();
          if (v92)
          {
            v93 = v92;
            [v92 &selRef:12.0 buttonPressed:? + 3];
          }

          v94 = [objc_opt_self() current];
          v95 = [v94 accessibilityContrast];
          sub_1E3755B54();
          v96 = sub_1E4206F24();
          v97 = sub_1E4206F24();
          v98 = v97;
          if (v95 == 1)
          {
            v99 = v96;
          }

          else
          {
            v99 = v97;
          }

          v100 = v99;
          v41(v99);

LABEL_75:
          v70 = 0;
          break;
        default:
          break;
      }

LABEL_89:
      sub_1E382E6BC();

      goto LABEL_90;
    }

    OUTLINED_FUNCTION_111();
    v49 += 222;
    v50 = *v49;
    v51 = (*v49)();
    if (sub_1E3830A1C(v51) != 1702259052 || v52 != 0xE400000000000000)
    {
      sub_1E42079A4();
      v54 = OUTLINED_FUNCTION_28_3();
      v55 = (v50)(v54);
      if (sub_1E3830A1C(v55) != 0x6169726F74696465 || v56 != 0xE90000000000006CLL)
      {
        OUTLINED_FUNCTION_45_12();
        v58 = OUTLINED_FUNCTION_28_3();
        v59 = (v50)(v58);
        if (sub_1E3830A1C(v59) != 0x78456C61746E6572 || v60 != 0xEC00000079726970)
        {
          sub_1E42079A4();
          v62 = OUTLINED_FUNCTION_28_3();
          v63 = (v50)(v62);
          v65 = sub_1E3830A1C(v63) == 7824750 && v64 == 0xE300000000000000;
          if (v65 || ((sub_1E42079A4(), v66 = OUTLINED_FUNCTION_28_3(), v67 = (v50)(v66), sub_1E3830A1C(v67) == 0x6F73676E696D6F63) ? (v69 = v68 == 0xEA00000000006E6FLL) : (v69 = 0), v69))
          {
          }

          else
          {
            sub_1E42079A4();
            OUTLINED_FUNCTION_28_3();
          }

          sub_1E3755B54();
          OUTLINED_FUNCTION_6_39();
          v70 = sub_1E4206F24();
          sub_1E4206F24();
          OUTLINED_FUNCTION_9_2();
          (*(v128 + 752))();
          goto LABEL_51;
        }
      }
    }

    sub_1E3755B54();
    OUTLINED_FUNCTION_6_39();
    v70 = sub_1E4206F24();
    v71 = [objc_opt_self() systemPinkColor];
    OUTLINED_FUNCTION_9_2();
    v73 = (*(v72 + 752))();
    v74 = (v50)(v73);
    if (sub_1E3830A1C(v74) == 0x6169726F74696465 && v75 == 0xE90000000000006CLL)
    {
    }

    else
    {
      v77 = OUTLINED_FUNCTION_45_12();

      if ((v77 & 1) == 0)
      {
LABEL_51:
        v78 = 2;
LABEL_54:
        if ([objc_opt_self() isSUIEnabled])
        {
          OUTLINED_FUNCTION_111();
          switch((*(v79 + 1824))())
          {
            case 2u:

              goto LABEL_78;
            default:
              v101 = sub_1E42079A4();

              if (v101)
              {
LABEL_78:
                type metadata accessor for ViewGradientLayout();
                v102 = sub_1E40C2E40();
                OUTLINED_FUNCTION_14_0();
                v1[15] = v102;
              }

              break;
          }
        }

        type metadata accessor for TextLayout();
        v103 = sub_1E383BCC0();
        OUTLINED_FUNCTION_3_0();
        v1[13] = v103;

        OUTLINED_FUNCTION_9_2();
        v105 = *(v104 + 1848);
        v106 = v105();
        if (v106)
        {
          OUTLINED_FUNCTION_30();
          v108 = *(v107 + 680);
          v109 = v70;
          v108(v70);
        }

        v110 = (v105)(v106);
        if (v110)
        {
          OUTLINED_FUNCTION_30();
          (*(v111 + 1792))(6);
        }

        v112 = (v105)(v110);
        if (v112)
        {
          sub_1E4205F14();
          OUTLINED_FUNCTION_8();
          (*(v113 + 1768))();
        }

        v114 = (v105)(v112);
        if (v114)
        {
          OUTLINED_FUNCTION_30();
          (*(v115 + 1720))(6);
        }

        if ((v105)(v114))
        {
          OUTLINED_FUNCTION_30();
          (*(v116 + 1936))(v78);
        }

        goto LABEL_89;
      }
    }

    v78 = 0;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_111();
  (*(v3 + 1832))(2);
  v135[0] = xmmword_1E42A1380;
  v135[1] = xmmword_1E42A1380;
  v136 = 0;
  OUTLINED_FUNCTION_111();
  (*(v4 + 184))(v135);
  OUTLINED_FUNCTION_9_2();
  v6 = (*(v5 + 336))(0x4047800000000000, 0);
  v6.n128_u64[0] = 0x4037800000000000;
  v130 = j__OUTLINED_FUNCTION_7_78(v6);
  v131 = v7;
  v132 = v8;
  v133 = v9;
  v134 = 0;
  (*(*v0 + 560))(&v130);
  v10 = [objc_opt_self() systemRedColor];
  OUTLINED_FUNCTION_9_2();
  (*(v11 + 752))();
  type metadata accessor for TextLayout();
  v12 = sub_1E383BCC0();
  OUTLINED_FUNCTION_3_0();
  v1[13] = v12;

  OUTLINED_FUNCTION_9_2();
  v14 = *(v13 + 1848);
  v15 = v14();
  if (v15)
  {
    sub_1E3755B54();
    OUTLINED_FUNCTION_6_39();
    sub_1E4206F24();
    OUTLINED_FUNCTION_13();
    (*(v16 + 680))();
  }

  v17 = (v14)(v15);
  if (v17)
  {
    OUTLINED_FUNCTION_30();
    (*(v18 + 1696))(14);
  }

  v19 = (v14)(v17);
  if (v19)
  {
    OUTLINED_FUNCTION_30();
    (*(v20 + 1792))(10);
  }

  if ((v14)(v19))
  {
    OUTLINED_FUNCTION_30();
    v22 = (*(v21 + 672))();
  }

  else
  {
    v22 = 0;
  }

  v48 = sub_1E3832508(v22);

  OUTLINED_FUNCTION_3_0();
  v1[14] = v48;

LABEL_90:
  OUTLINED_FUNCTION_111();
  v129 = (*(v117 + 1848))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B848);
  sub_1E4148DE0(sub_1E38324F0);

  OUTLINED_FUNCTION_9_2();
  (*(v118 + 1872))(v119, v120, v121, v122, v123, v124, v125, v126, v129, COERCE_DOUBLE(*&v130), v131);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B850);
  sub_1E4148DE0(sub_1E38324FC);
}

uint64_t sub_1E382E3B4(char a1)
{
  v3 = 7824750;
  OUTLINED_FUNCTION_3_0();
  v4 = *(v1 + 98);
  *(v1 + 98) = a1;
  OUTLINED_FUNCTION_5_0();
  v5 = 0xE300000000000000;
  v6 = 7824750;
  switch(*(v1 + 98))
  {
    case 1:
      v6 = 0x6169726F74696465;
      v5 = 0xE90000000000006CLL;
      break;
    case 2:
      v6 = 0x6867696C746F7073;
      v5 = 0xE900000000000074;
      break;
    case 3:
      v5 = 0xE400000000000000;
      v6 = 1702259052;
      break;
    case 4:
      v5 = 0xE400000000000000;
      v6 = 1701669236;
      break;
    case 5:
      v5 = 0xE500000000000000;
      v6 = 0x7269616572;
      break;
    case 6:
      v6 = 0x6F73676E696D6F63;
      v5 = 0xEA00000000006E6FLL;
      break;
    case 7:
      v6 = 0x78456C61746E6572;
      v5 = 0xEC00000079726970;
      break;
    case 8:
      v6 = 0x6E69746152656761;
      v5 = 0xE900000000000067;
      break;
    default:
      break;
  }

  v7 = 0xE300000000000000;
  switch(v4)
  {
    case 1:
      v3 = 0x6169726F74696465;
      v7 = 0xE90000000000006CLL;
      break;
    case 2:
      v3 = 0x6867696C746F7073;
      v7 = 0xE900000000000074;
      break;
    case 3:
      v7 = 0xE400000000000000;
      v3 = 1702259052;
      break;
    case 4:
      v7 = 0xE400000000000000;
      v3 = 1701669236;
      break;
    case 5:
      v7 = 0xE500000000000000;
      v3 = 0x7269616572;
      break;
    case 6:
      v3 = 0x6F73676E696D6F63;
      v7 = 0xEA00000000006E6FLL;
      break;
    case 7:
      v3 = 0x78456C61746E6572;
      v7 = 0xEC00000079726970;
      break;
    case 8:
      v3 = 0x6E69746152656761;
      v7 = 0xE900000000000067;
      break;
    default:
      break;
  }

  if (v6 == v3 && v5 == v7)
  {
  }

  else
  {
    v9 = OUTLINED_FUNCTION_44_10();

    if ((v9 & 1) == 0)
    {
      return sub_1E382CFEC();
    }
  }

  return result;
}

void (*sub_1E382E63C())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_30_4(v2);
  OUTLINED_FUNCTION_5_0();
  *(v1 + 32) = *(v0 + 98);
  return sub_1E382E6A4;
}

uint64_t sub_1E382E6BC()
{
  v6 = v0;
  if (TVAppFeature.isEnabled.getter(10) & 1) != 0 || (OUTLINED_FUNCTION_111(), ((*(v7 + 2016))()))
  {
    OUTLINED_FUNCTION_111();
    v9 = (*(v8 + 1800))();
    OUTLINED_FUNCTION_111();
    v11 = (*(v10 + 1776))();
    sub_1E3831278(v9, v11, &v40);
    v2 = v40;
    v3 = v41;
    v4 = v42;
    v5 = v43;
    v12.n128_u64[0] = v44;
    v13 = v45;
  }

  else
  {
    v27 = objc_opt_self();
    if ([v27 isTV])
    {
      OUTLINED_FUNCTION_111();
      v28 += 225;
      v29 = *v28;
      (*v28)();
      OUTLINED_FUNCTION_33_21();
      switch(v30)
      {
        case 1:

          goto LABEL_27;
        case 2:
          OUTLINED_FUNCTION_5_51();
          break;
        case 3:
          OUTLINED_FUNCTION_9_32();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_20_27();
      v35 = OUTLINED_FUNCTION_23_22();

      if (v35)
      {
LABEL_27:
        sub_1E3952C10(28.0, 16.0);
        OUTLINED_FUNCTION_3();
        v12.n128_u64[0] = 15.5;
        v13 = 0x4032000000000000;
      }

      else
      {
        (v29)(v36);
        OUTLINED_FUNCTION_22_18();
        switch(v37)
        {
          case 1:
            goto LABEL_39;
          case 2:
            OUTLINED_FUNCTION_21_28();
            goto LABEL_39;
          case 3:

            goto LABEL_42;
          default:
            v1 = 120;
LABEL_39:
            OUTLINED_FUNCTION_2_40();
            OUTLINED_FUNCTION_17_26();
            OUTLINED_FUNCTION_28_3();
            if (v1)
            {
LABEL_42:
              sub_1E3952C10(28.0, 20.0);
              OUTLINED_FUNCTION_3();
              v13 = 0x4039000000000000;
              v12.n128_u64[0] = 0x4032800000000000;
            }

            else
            {
              sub_1E3952C10(28.0, 16.0);
              OUTLINED_FUNCTION_3();
              v12.n128_u64[0] = 15.5;
              v13 = 0x4037000000000000;
            }

            break;
        }
      }
    }

    else
    {
      v31 = [v27 isMac];
      OUTLINED_FUNCTION_111();
      v33 = (*(v32 + 1800))();
      if (v31)
      {
        OUTLINED_FUNCTION_7_54();
        switch(v33)
        {
          case 1:
            OUTLINED_FUNCTION_19_22();
            goto LABEL_31;
          case 2:
            OUTLINED_FUNCTION_5_51();
            goto LABEL_31;
          case 3:

            goto LABEL_35;
          default:
LABEL_31:
            OUTLINED_FUNCTION_2_40();
            OUTLINED_FUNCTION_17_26();
            OUTLINED_FUNCTION_28_3();
            if ((v33 & 1) == 0)
            {
              sub_1E3952C10(16.0, 10.0);
              goto LABEL_37;
            }

LABEL_35:
            sub_1E3952C10(20.0, 14.0);
            OUTLINED_FUNCTION_3();
            v12.n128_u64[0] = 11.0;
            v13 = 0x402E000000000000;
            break;
        }
      }

      else if ([objc_opt_self() isAXLargeEnabled_] && (OUTLINED_FUNCTION_111(), ((*(v34 + 1968))() & 1) != 0))
      {
        v2 = 10.0;
        if (v33 == 3)
        {
          v13 = 0x4034000000000000;
          v12.n128_u64[0] = 18.0;
          v3 = 15.0;
          v4 = 10.0;
          v5 = 15.0;
        }

        else
        {
          if (v33)
          {
            v13 = 0x4032000000000000;
          }

          else
          {
            v13 = 0x402E000000000000;
          }

          v3 = 15.0;
          v4 = 10.0;
          v5 = 15.0;
          v12.n128_u64[0] = 15.0;
        }
      }

      else if (v33)
      {
        if (v33 == 3)
        {
          v12.n128_u64[0] = 6.0;
          j__OUTLINED_FUNCTION_7_78(v12);
          OUTLINED_FUNCTION_3();
          v12.n128_u64[0] = 10.0;
          v13 = 0x4028000000000000;
        }

        else
        {
          v12.n128_u64[0] = 5.0;
          j__OUTLINED_FUNCTION_7_78(v12);
LABEL_37:
          OUTLINED_FUNCTION_3();
          v12.n128_u64[0] = 9.0;
          v13 = 0x4026000000000000;
        }
      }

      else
      {
        v12.n128_u64[0] = 4.0;
        j__OUTLINED_FUNCTION_7_78(v12);
        OUTLINED_FUNCTION_3();
        v12.n128_u64[0] = 6.0;
        v13 = 0x4022000000000000;
      }
    }
  }

  v40 = j__OUTLINED_FUNCTION_7_78(v12);
  v41 = v14;
  v42 = v15;
  v43 = v16;
  LOBYTE(v44) = 0;
  OUTLINED_FUNCTION_111();
  (*(v17 + 560))(&v40);
  *v38 = v2;
  *&v38[1] = v3;
  *&v38[2] = v4;
  *&v38[3] = v5;
  v39 = 0;
  OUTLINED_FUNCTION_111();
  (*(v18 + 184))(v38);
  OUTLINED_FUNCTION_9_2();
  v20 = *(v19 + 1848);
  v21 = v20();
  if (v21)
  {
    OUTLINED_FUNCTION_30();
    (*(v22 + 1816))(v13, 0);
  }

  if ((v20)(v21))
  {
    OUTLINED_FUNCTION_30();
    v24 = (*(v23 + 672))();
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_1E3832508(v24);

  OUTLINED_FUNCTION_3_0();
  *(v6 + 112) = v25;
}

uint64_t sub_1E382EC74(char a1)
{
  v3 = 0x6C6C616D7378;
  OUTLINED_FUNCTION_3_0();
  v4 = *(v1 + 99);
  *(v1 + 99) = a1;
  OUTLINED_FUNCTION_5_0();
  v5 = 0xE600000000000000;
  v6 = 0x6C6C616D7378;
  switch(*(v1 + 99))
  {
    case 1:
      v5 = 0xE500000000000000;
      v6 = OUTLINED_FUNCTION_19_22();
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_5_51();
      break;
    case 3:
      v5 = 0xE500000000000000;
      v6 = OUTLINED_FUNCTION_9_32();
      break;
    default:
      break;
  }

  v7 = 0xE600000000000000;
  switch(v4)
  {
    case 1:
      v7 = 0xE500000000000000;
      OUTLINED_FUNCTION_32_22();
      break;
    case 2:
      OUTLINED_FUNCTION_31_15();
      break;
    case 3:
      v7 = 0xE500000000000000;
      v3 = 0x656772616CLL;
      break;
    default:
      break;
  }

  if (v6 == v3 && v5 == v7)
  {
  }

  else
  {
    v9 = OUTLINED_FUNCTION_44_10();

    if ((v9 & 1) == 0)
    {
      return sub_1E382E6BC();
    }
  }

  return result;
}

void (*sub_1E382EDAC())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_30_4(v2);
  OUTLINED_FUNCTION_5_0();
  *(v1 + 32) = *(v0 + 99);
  return sub_1E382EE14;
}

void sub_1E382EE2C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  a3(*(*a1 + 32));

  free(v3);
}

uint64_t sub_1E382EE98(char a1)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 100) = a1;
  return result;
}

uint64_t sub_1E382EF48(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 104) = a1;
}

uint64_t sub_1E382EFB0(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 112) = a1;
}

uint64_t sub_1E382F018(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 120) = a1;
}

id sub_1E382F054()
{
  OUTLINED_FUNCTION_15_0();
  v1 = *(v0 + 128);

  return v1;
}

void sub_1E382F08C(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
}

uint64_t sub_1E382F0F0(double a1)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 136) = a1;
  return result;
}

uint64_t sub_1E382F14C(char a1)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 144) = a1;
  return result;
}

uint64_t sub_1E382F180@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI15TextBadgeLayout_maxContentSize;
  OUTLINED_FUNCTION_15_0();
  sub_1E42012F4();
  OUTLINED_FUNCTION_2();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t sub_1E382F1F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15TextBadgeLayout_maxContentSize;
  swift_beginAccess();
  sub_1E42012F4();
  OUTLINED_FUNCTION_2();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t sub_1E382F2DC()
{
  v1 = OBJC_IVAR____TtC8VideosUI15TextBadgeLayout_useOpalLayout;
  OUTLINED_FUNCTION_15_0();
  return *(v0 + v1);
}

uint64_t sub_1E382F314(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15TextBadgeLayout_useOpalLayout;
  OUTLINED_FUNCTION_3_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = OBJC_IVAR____TtC8VideosUI15TextBadgeLayout_useOpalLayout;
  result = OUTLINED_FUNCTION_5_0();
  if (v4 != *(v1 + v5))
  {
    return sub_1E382CFEC();
  }

  return result;
}

void (*sub_1E382F388())(uint64_t a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = OBJC_IVAR____TtC8VideosUI15TextBadgeLayout_useOpalLayout;
  OUTLINED_FUNCTION_5_0();
  *(v1 + 32) = *(v0 + v3);
  return sub_1E382F3F8;
}

void sub_1E382F3F8(uint64_t a1)
{
  v1 = *a1;
  sub_1E382F314(*(*a1 + 32));

  free(v1);
}

void sub_1E382F460()
{
  *(v0 + 99) = 2;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 104) = 0;
  *(v0 + 128) = [objc_opt_self() clearColor];
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  v1 = OBJC_IVAR____TtC8VideosUI15TextBadgeLayout_maxContentSize;
  v2 = *MEMORY[0x1E697E6C8];
  sub_1E42012F4();
  OUTLINED_FUNCTION_2();
  (*(v3 + 104))(v0 + v1, v2);
  *(v0 + OBJC_IVAR____TtC8VideosUI15TextBadgeLayout_useOpalLayout) = 0;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E382F5B0(char a1, char a2, char a3)
{
  *(v3 + 99) = 2;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 104) = 0;
  v7 = [objc_opt_self() clearColor];
  *(v3 + 144) = 1;
  *(v3 + 128) = v7;
  *(v3 + 136) = 0;
  v8 = OBJC_IVAR____TtC8VideosUI15TextBadgeLayout_maxContentSize;
  v9 = *MEMORY[0x1E697E6C8];
  sub_1E42012F4();
  OUTLINED_FUNCTION_2();
  (*(v10 + 104))(v3 + v8, v9);
  *(v3 + OBJC_IVAR____TtC8VideosUI15TextBadgeLayout_useOpalLayout) = 0;
  *(v3 + 98) = a1;
  OUTLINED_FUNCTION_3_0();
  *(v3 + 99) = a2;
  OUTLINED_FUNCTION_3_0();
  *(v3 + 144) = a3;
  v11 = sub_1E3C2F9A0();

  sub_1E382CFEC();

  return v11;
}

uint64_t sub_1E382F6D0()
{
  if (!sub_1E385050C())
  {
    return 2;
  }

  LOBYTE(v2) = 0;
  OUTLINED_FUNCTION_8();
  (*(v0 + 776))(v3, &v2, &unk_1F5D5D648, &off_1F5D5C898);
  if (!v3[3])
  {
    sub_1E325F6F0(v3, &unk_1ECF296E0);
    return 2;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 2;
  }

  LODWORD(result) = sub_1E382F7B0();
  if (result == 4)
  {
    return 2;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1E382F7B0()
{
  v0 = sub_1E4207784();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E382F7FC(uint64_t a1)
{
  v2 = 1;
  (*(*a1 + 776))(v3, &v2, &unk_1F5D5D648, &off_1F5D5C898);
  if (v3[3])
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1E325F6F0(v3, &unk_1ECF296E0);
  }

  return 1;
}

id sub_1E382F8C4()
{
  v1 = [objc_allocWithZone(VUITextBadgeLayout) init];
  [v1 setBadgeKind_];
  OUTLINED_FUNCTION_8();
  v3 = v33;
  (*(v2 + 176))(v33);
  if (v34)
  {
    v3 = MEMORY[0x1E69DDCE0];
    v4 = *(MEMORY[0x1E69DDCE0] + 8);
    v5 = *(MEMORY[0x1E69DDCE0] + 16);
    v6 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v4 = *&v33[1];
    v5 = *&v33[2];
    v6 = *&v33[3];
  }

  [v1 setPadding_];
  OUTLINED_FUNCTION_13();
  v8 = (*(v7 + 1872))();
  if (v8)
  {
    v9 = (*(*v8 + 672))();
  }

  else
  {
    v9 = 0;
  }

  OUTLINED_FUNCTION_2_34(v8, sel_setTintColor_);

  OUTLINED_FUNCTION_13();
  v11 = *(v10 + 1848);
  v12 = v11();
  if (v12)
  {
    OUTLINED_FUNCTION_30();
    v14 = (*(v13 + 1928))();

    if (v14 == 4)
    {
      LOBYTE(v12) = 0;
    }

    else
    {
      LOBYTE(v32[0]) = v14;
      sub_1E376C360();
      LOBYTE(v12) = sub_1E4205E84();
    }
  }

  if ((v11)([v1 setIsUppercased_]) && (OUTLINED_FUNCTION_30(), v16 = (*(v15 + 1904))(), , v16 != 28))
  {
    v17 = sub_1E376BD24(v16);
  }

  else
  {
    v17 = 0;
  }

  [v1 setBlendMode_];
  OUTLINED_FUNCTION_13();
  v19 = (*(v18 + 552))(v32);
  MEMORY[0x1EEE9AC00](v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0);
  sub_1E4148DE0(sub_1E38115B4);
  OUTLINED_FUNCTION_13();
  v21 = *(v20 + 744);
  v22 = v21();
  OUTLINED_FUNCTION_2_34(v22, sel_setBackgroundColor_);

  OUTLINED_FUNCTION_13();
  v24 = (*(v23 + 840))();
  v25 = v24;
  if (v24)
  {
    OUTLINED_FUNCTION_8();
    v27 = (*(v26 + 1792))();

    if (v27)
    {
      sub_1E3755B54();
      v25 = sub_1E42062A4();
    }

    else
    {
      v25 = 0;
    }
  }

  OUTLINED_FUNCTION_2_34(v24, sel_setGradientBgColors_);

  v28 = v21();
  OUTLINED_FUNCTION_2_34(v28, sel_setBackgroundColor_);

  v29 = v11();
  if (v29)
  {
    v30 = (*(*v29 + 2408))();
  }

  else
  {
    v30 = 0;
  }

  OUTLINED_FUNCTION_2_34(v29, sel_setTextLayout_);

  return v1;
}

double sub_1E382FDD0(uint64_t a1)
{
  if (TVAppFeature.isEnabled.getter(10) & 1) != 0 || (OUTLINED_FUNCTION_8(), ((*(v3 + 2016))()))
  {
    sub_1E3830158(a1);
    return v4;
  }

  else
  {
    v6 = objc_opt_self();
    if ([v6 isTV])
    {
      OUTLINED_FUNCTION_8();
      v7 += 225;
      v8 = *v7;
      switch((*v7)())
      {
        case 1u:

          v9 = 28.0;
          break;
        case 2u:
          OUTLINED_FUNCTION_5_51();
          goto LABEL_14;
        case 3u:
          OUTLINED_FUNCTION_9_32();
          goto LABEL_14;
        default:
LABEL_14:
          OUTLINED_FUNCTION_20_27();
          v14 = OUTLINED_FUNCTION_23_22();

          v9 = 28.0;
          if ((v14 & 1) == 0)
          {
            (v8)(v15);
            OUTLINED_FUNCTION_22_18();
            switch(v16)
            {
              case 2:
                OUTLINED_FUNCTION_21_28();
                goto LABEL_28;
              case 3:

                v9 = 38.0;
                goto LABEL_32;
              default:
LABEL_28:
                OUTLINED_FUNCTION_2_40();
                v25 = OUTLINED_FUNCTION_17_26();

                v18 = (v25 & 1) == 0;
                v19 = 32.0;
                v20 = 38.0;
                goto LABEL_29;
            }
          }

          break;
      }
    }

    else if ([v6 isMac])
    {
      OUTLINED_FUNCTION_8();
      (*(v10 + 1800))();
      OUTLINED_FUNCTION_33_21();
      switch(v11)
      {
        case 1:
          OUTLINED_FUNCTION_32_22();
          goto LABEL_17;
        case 2:
          OUTLINED_FUNCTION_31_15();
          goto LABEL_17;
        case 3:

          v9 = 22.0;
          break;
        default:
LABEL_17:
          OUTLINED_FUNCTION_2_40();
          v17 = OUTLINED_FUNCTION_17_26();

          v18 = (v17 & 1) == 0;
          v19 = 18.0;
          v20 = 22.0;
LABEL_29:
          if (v18)
          {
            v9 = v19;
          }

          else
          {
            v9 = v20;
          }

          break;
      }
    }

    else
    {
      v12 = [objc_opt_self() isAXLargeEnabled_];
      (*(*v1 + 1800))();
      OUTLINED_FUNCTION_33_21();
      switch(v13)
      {
        case 1:
          OUTLINED_FUNCTION_32_22();
          goto LABEL_19;
        case 2:
          OUTLINED_FUNCTION_31_15();
          goto LABEL_19;
        case 3:

          goto LABEL_23;
        default:
LABEL_19:
          OUTLINED_FUNCTION_2_40();
          v21 = OUTLINED_FUNCTION_17_26();

          if (v21)
          {
LABEL_23:
            v22 = v12 == 0;
            v23 = 34.0;
            v24 = 20.0;
          }

          else
          {
            v22 = v12 == 0;
            v23 = 32.0;
            v24 = 18.0;
          }

          if (v22)
          {
            v9 = v24;
          }

          else
          {
            v9 = v23;
          }

          break;
      }
    }

LABEL_32:
    v5 = v9 * 0.5;
    sub_1E3755B54();
    OUTLINED_FUNCTION_6_39();
    sub_1E4206F24();
  }

  return v5;
}

uint64_t sub_1E3830158(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  v4 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(v3 + 1800))(v8);
  OUTLINED_FUNCTION_9_2();
  v13 = (*(v12 + 1776))();
  OUTLINED_FUNCTION_9_2();
  (*(v14 + 1992))();
  sub_1E3831908(v11, v13, a1, &v23);
  v15 = *(&v24 + 1);
  v16 = v25;
  v21 = v26;
  v22 = v27;
  (*(v6 + 8))(v10, v4);
  OUTLINED_FUNCTION_9_2();
  if ((*(v17 + 1848))())
  {
    OUTLINED_FUNCTION_30();
    (*(v18 + 1816))(v16, 0);
  }

  v23 = v21;
  v24 = v22;
  LOBYTE(v25) = 0;
  OUTLINED_FUNCTION_111();
  (*(v19 + 184))(&v23);
  return v15;
}

uint64_t sub_1E38303C4(unsigned __int8 a1, char a2)
{
  v2 = 0x6C6C616D7378;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6C6C616D7378;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x6C6C616D73;
      break;
    case 2:
      v5 = 0x6D756964656DLL;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x656772616CLL;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x6C6C616D73;
      break;
    case 2:
      v2 = 0x6D756964656DLL;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x656772616CLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E38304EC(unsigned __int8 a1, char a2)
{
  v2 = 0x796C6E4F74786574;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x796C6E4F74786574;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x656B6F727473;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1819044198;
      break;
    case 3:
      v5 = 0x6C6169726574616DLL;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x656B6F727473;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1819044198;
      break;
    case 3:
      v2 = 0x6C6169726574616DLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3830618(unsigned __int8 a1, char a2)
{
  v2 = 7824750;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7824750;
  switch(v4)
  {
    case 1:
      v5 = 0x6169726F74696465;
      v3 = 0xE90000000000006CLL;
      break;
    case 2:
      v5 = 0x6867696C746F7073;
      v3 = 0xE900000000000074;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1702259052;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1701669236;
      break;
    case 5:
      v3 = 0xE500000000000000;
      v5 = 0x7269616572;
      break;
    case 6:
      v5 = 0x6F73676E696D6F63;
      v3 = 0xEA00000000006E6FLL;
      break;
    case 7:
      v5 = 0x78456C61746E6572;
      v3 = 0xEC00000079726970;
      break;
    case 8:
      v5 = 0x6E69746152656761;
      v3 = 0xE900000000000067;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6169726F74696465;
      v6 = 0xE90000000000006CLL;
      break;
    case 2:
      v2 = 0x6867696C746F7073;
      v6 = 0xE900000000000074;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1702259052;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1701669236;
      break;
    case 5:
      v6 = 0xE500000000000000;
      v2 = 0x7269616572;
      break;
    case 6:
      v2 = 0x6F73676E696D6F63;
      v6 = 0xEA00000000006E6FLL;
      break;
    case 7:
      v2 = 0x78456C61746E6572;
      v6 = 0xEC00000079726970;
      break;
    case 8:
      v2 = 0x6E69746152656761;
      v6 = 0xE900000000000067;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3830868()
{

  v1 = OBJC_IVAR____TtC8VideosUI15TextBadgeLayout_maxContentSize;
  sub_1E42012F4();
  OUTLINED_FUNCTION_2();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_1E38308E8()
{
  v0 = sub_1E3C36C6C();

  v1 = OBJC_IVAR____TtC8VideosUI15TextBadgeLayout_maxContentSize;
  sub_1E42012F4();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1E3830968()
{
  v0 = sub_1E38308E8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E38309BC(int a1)
{
  if ((a1 - 50) >= 9u)
  {
    return 1;
  }

  else
  {
    return (a1 - 50);
  }
}

uint64_t sub_1E38309D0()
{
  v0 = sub_1E4207784();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3830A1C(char a1)
{
  result = 7824750;
  switch(a1)
  {
    case 1:
      result = 0x6169726F74696465;
      break;
    case 2:
      result = 0x6867696C746F7073;
      break;
    case 3:
      result = 1702259052;
      break;
    case 4:
      result = 1701669236;
      break;
    case 5:
      result = 0x7269616572;
      break;
    case 6:
      result = 0x6F73676E696D6F63;
      break;
    case 7:
      result = 0x78456C61746E6572;
      break;
    case 8:
      result = 0x6E69746152656761;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3830B30(char a1)
{
  sub_1E4207B44();
  sub_1E3830A1C(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3830B94(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_1E4207B44();
  a2(v5, a1);
  return sub_1E4207BA4();
}

uint64_t sub_1E3830BEC()
{
  sub_1E4206014();
}

uint64_t sub_1E3830C90()
{
  sub_1E4206014();
}

uint64_t sub_1E3830DC4()
{
  sub_1E4206014();
}

uint64_t sub_1E3830E74(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3830A1C(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3830ED4(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1E4207B44();
  a3(v6, a2);
  return sub_1E4207BA4();
}

uint64_t sub_1E3830F20(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E38309D0();
  *v1 = result;
  return result;
}

uint64_t sub_1E3830F48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3830A1C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3830F80()
{
  v0 = sub_1E4207784();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3830FCC(char a1)
{
  result = 0x796C6E4F74786574;
  switch(a1)
  {
    case 1:
      result = 0x656B6F727473;
      break;
    case 2:
      result = 1819044198;
      break;
    case 3:
      result = 0x6C6169726574616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E38310B4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3830F80();
  *v1 = result;
  return result;
}

uint64_t sub_1E38310DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3830FCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3831114()
{
  result = OUTLINED_FUNCTION_7_54();
  switch(v1)
  {
    case 1:
      result = OUTLINED_FUNCTION_19_22();
      break;
    case 2:
      result = OUTLINED_FUNCTION_5_51();
      break;
    case 3:
      result = OUTLINED_FUNCTION_9_32();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3831218(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E382F7B0();
  *v1 = result;
  return result;
}

uint64_t sub_1E3831240@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3831114();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1E3831278(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v10 = objc_opt_self();
  if ([v10 isTV])
  {
    switch(a1)
    {
      case 1u:

        goto LABEL_13;
      case 2u:
        OUTLINED_FUNCTION_5_51();
        goto LABEL_12;
      case 3u:
        OUTLINED_FUNCTION_9_32();
        goto LABEL_12;
      default:
LABEL_12:
        OUTLINED_FUNCTION_20_27();
        v12 = OUTLINED_FUNCTION_23_22();

        if ((v12 & 1) == 0)
        {
          switch(a1)
          {
            case 0u:
            case 1u:
              goto LABEL_25;
            case 2u:
              OUTLINED_FUNCTION_21_28();
LABEL_25:
              OUTLINED_FUNCTION_2_40();
              v16 = OUTLINED_FUNCTION_24_13();

              if (v16)
              {
                goto LABEL_28;
              }

              sub_1E3952C10(22.0, 16.0);
              OUTLINED_FUNCTION_3();
              v14 = 14.0;
              v13 = 21.0;
              goto LABEL_66;
            case 3u:

LABEL_28:
              sub_1E3952C10(28.0, 20.0);
              OUTLINED_FUNCTION_3();
              v14 = 17.0;
              v13 = 23.0;
              goto LABEL_66;
            default:
              goto LABEL_67;
          }
        }

LABEL_13:
        v13 = 16.0;
        sub_1E3952C10(18.0, 16.0);
        OUTLINED_FUNCTION_3();
        v14 = 11.0;
        break;
    }

    goto LABEL_66;
  }

  if ([v10 isMac])
  {
    switch(a1)
    {
      case 1u:
        OUTLINED_FUNCTION_19_22();
        goto LABEL_18;
      case 2u:
        OUTLINED_FUNCTION_5_51();
        goto LABEL_18;
      case 3u:

        goto LABEL_22;
      default:
LABEL_18:
        OUTLINED_FUNCTION_2_40();
        v15 = OUTLINED_FUNCTION_24_13();

        if (v15)
        {
LABEL_22:
          sub_1E3952C10(20.0, 14.0);
          OUTLINED_FUNCTION_3();
          v14 = 9.0;
          goto LABEL_23;
        }

        if (a1 > 1u)
        {
        }

        else
        {
          v18 = sub_1E42079A4();

          if ((v18 & 1) == 0)
          {
            sub_1E3952C10(16.0, 10.0);
            OUTLINED_FUNCTION_3();
            v14 = 7.0;
            v13 = 11.0;
            goto LABEL_66;
          }
        }

        sub_1E3952C10(16.0, 10.0);
        OUTLINED_FUNCTION_3();
        v14 = 8.0;
        break;
    }

    goto LABEL_44;
  }

  if ([v10 isVision])
  {
    v11.n128_u64[0] = 4.0;
    j__OUTLINED_FUNCTION_7_78(v11);
    OUTLINED_FUNCTION_3();
    switch(a1)
    {
      case 1u:
        OUTLINED_FUNCTION_19_22();
        goto LABEL_30;
      case 2u:
        OUTLINED_FUNCTION_5_51();
        goto LABEL_30;
      case 3u:

        goto LABEL_37;
      default:
LABEL_30:
        v17 = OUTLINED_FUNCTION_24_13();

        if (v17)
        {
LABEL_37:
          sub_1E3952C10(16.0, 8.0);
          OUTLINED_FUNCTION_3();
          v14 = 9.0;
          v13 = 13.0;
          goto LABEL_57;
        }

        if (a1 > 1u)
        {
        }

        else
        {
          v20 = sub_1E42079A4();

          if ((v20 & 1) == 0)
          {
            switch(v21)
            {
              case 1:

                goto LABEL_56;
              default:
                v23 = OUTLINED_FUNCTION_24_13();

                v13 = 0.0;
                v14 = 0.0;
                if (v23)
                {
LABEL_56:
                  sub_1E3952C10(12.0, 5.0);
                  OUTLINED_FUNCTION_3();
                  v14 = 7.0;
                  v13 = 11.0;
                }

                break;
            }

LABEL_57:
            if (a2 != 9)
            {
              if (sub_1E3830A1C(a2) == 0x6E69746152656761 && v24 == 0xE900000000000067)
              {

                v14 = 0.0;
              }

              else
              {
                sub_1E42079A4();
                OUTLINED_FUNCTION_28_3();
                if (a2)
                {
                  v14 = 0.0;
                }
              }
            }

            goto LABEL_66;
          }
        }

        sub_1E3952C10(14.0, 6.0);
        OUTLINED_FUNCTION_3();
        v14 = 8.0;
        v13 = 12.0;
        goto LABEL_57;
    }
  }

  switch(a1)
  {
    case 1u:

      goto LABEL_40;
    case 2u:
      OUTLINED_FUNCTION_5_51();
      break;
    case 3u:
      OUTLINED_FUNCTION_9_32();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_20_27();
  v19 = OUTLINED_FUNCTION_23_22();

  if (v19)
  {
LABEL_40:
    sub_1E3952C10(10.0, 4.0);
    OUTLINED_FUNCTION_3();
    v14 = 5.0;
LABEL_44:
    v13 = 12.0;
    goto LABEL_66;
  }

  switch(a1)
  {
    case 0u:
    case 1u:
      goto LABEL_51;
    case 2u:
      OUTLINED_FUNCTION_21_28();
LABEL_51:
      OUTLINED_FUNCTION_2_40();
      v22 = OUTLINED_FUNCTION_24_13();

      if (v22)
      {
        goto LABEL_54;
      }

      v14 = 6.0;
      sub_1E3952C10(12.0, 6.0);
      OUTLINED_FUNCTION_3();
LABEL_23:
      v13 = 13.0;
      break;
    case 3u:

LABEL_54:
      sub_1E3952C10(16.0, 8.0);
      OUTLINED_FUNCTION_3();
      v14 = 7.0;
      v13 = 14.0;
      break;
    default:
LABEL_67:
      JUMPOUT(0);
  }

LABEL_66:
  *a3 = v3;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v14;
  *(a3 + 40) = v13;
}

uint64_t sub_1E383189C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E697E6C8];
  sub_1E42012F4();
  OUTLINED_FUNCTION_2();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_1E3831908@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - v11;
  v13 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_opt_self();
  v20 = [v19 isTV];
  v61 = a1;
  if (v20)
  {
    v58 = v15;
    switch(a1)
    {
      case 1:

        v21 = 11.0;
        v22 = 26.0;
        v23 = 1.0;
        v15 = v58;
        goto LABEL_29;
      case 2:
        OUTLINED_FUNCTION_5_51();
        goto LABEL_12;
      case 3:
        OUTLINED_FUNCTION_9_32();
        goto LABEL_12;
      default:
LABEL_12:
        v59 = a3;
        OUTLINED_FUNCTION_24_13();
        OUTLINED_FUNCTION_46_9();
        if ((a1 & 1) == 0)
        {
          OUTLINED_FUNCTION_40_14();
          switch(v24)
          {
            case 2:
              OUTLINED_FUNCTION_41_19();
              goto LABEL_22;
            case 3:

              v21 = 17.0;
              v23 = 2.0;
              v22 = 42.0;
              v15 = v58;
              a3 = v59;
              goto LABEL_29;
            default:
LABEL_22:
              OUTLINED_FUNCTION_2_40();
              OUTLINED_FUNCTION_24_13();
              OUTLINED_FUNCTION_46_9();
              if (a1)
              {
                v21 = 17.0;
                v23 = 2.0;
                *&v26 = 42.0;
              }

              else
              {
                v21 = 14.0;
                v23 = 1.5;
                *&v26 = 34.0;
              }

              v22 = *&v26;
              goto LABEL_26;
          }
        }

        v21 = 11.0;
        v22 = 26.0;
        v23 = 1.0;
LABEL_26:
        v15 = v58;
        break;
    }

    goto LABEL_27;
  }

  if ([v19 isMac])
  {
    OUTLINED_FUNCTION_7_54();
    switch(a1)
    {
      case 1:

        v21 = 7.0;
        v22 = 18.0;
        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_5_51();
        break;
      case 3:
        OUTLINED_FUNCTION_9_32();
        break;
      default:
        break;
    }

    v59 = a3;
    OUTLINED_FUNCTION_24_13();
    OUTLINED_FUNCTION_46_9();
    v23 = 1.0;
    if ((a1 & 1) == 0)
    {
      OUTLINED_FUNCTION_40_14();
      switch(v25)
      {
        case 2:
          OUTLINED_FUNCTION_41_19();
          goto LABEL_35;
        case 3:

          v21 = 9.0;
          v22 = 24.0;
          break;
        default:
LABEL_35:
          OUTLINED_FUNCTION_2_40();
          OUTLINED_FUNCTION_24_13();
          OUTLINED_FUNCTION_46_9();
          v57 = (a1 & 1) == 0;
          LOBYTE(a1) = v61;
          if (v57)
          {
            v22 = 20.0;
          }

          else
          {
            v22 = 24.0;
          }

          if (v57)
          {
            v21 = 8.0;
          }

          else
          {
            v21 = 9.0;
          }

          break;
      }

      goto LABEL_28;
    }

    v21 = 7.0;
    v22 = 18.0;
LABEL_27:
    LOBYTE(a1) = v61;
LABEL_28:
    a3 = v59;
    goto LABEL_29;
  }

  if ([v19 isVision])
  {
    v22 = dbl_1E42A1770[a1];
    v21 = dbl_1E42A17D0[a1];
LABEL_9:
    v23 = 1.0;
  }

  else
  {
    v23 = dbl_1E42A1790[a1];
    v22 = dbl_1E42A17B0[a1];
    v21 = dbl_1E42A17D0[a1];
  }

LABEL_29:
  sub_1E3831F24(a3, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1E325F6F0(v12, &qword_1ECF2A250);
    sub_1E3831278(a1, v60, &v62);
    v27 = v62;
    v28 = v63;
    v29 = v64;
    v30 = v65;
    v31 = v66;
  }

  else
  {
    (*(v15 + 32))(v18, v12, v13);
    v32 = *(v15 + 16);
    v33 = OUTLINED_FUNCTION_15_38();
    v32(v33);
    v34 = OUTLINED_FUNCTION_3_41();
    v21 = sub_1E3AC5CD8(v34, v35, v21);
    sub_1E325F6F0(v9, &qword_1ECF2A250);
    v36 = OUTLINED_FUNCTION_15_38();
    v32(v36);
    v37 = OUTLINED_FUNCTION_3_41();
    v22 = sub_1E3AC5CD8(v37, v38, v22);
    OUTLINED_FUNCTION_27_14();
    v39 = OUTLINED_FUNCTION_15_38();
    v32(v39);
    v40 = OUTLINED_FUNCTION_3_41();
    v23 = sub_1E3AC5CD8(v40, v41, v23);
    OUTLINED_FUNCTION_27_14();
    sub_1E3831278(v61, v60, &v62);
    v42 = v62;
    v43 = v63;
    v44 = v64;
    v45 = v65;
    v46 = v66;
    v47 = OUTLINED_FUNCTION_15_38();
    v32(v47);
    v48 = OUTLINED_FUNCTION_3_41();
    v31 = sub_1E3AC5CD8(v48, v49, v46);
    OUTLINED_FUNCTION_27_14();
    v50 = OUTLINED_FUNCTION_15_38();
    v32(v50);
    v51 = OUTLINED_FUNCTION_3_41();
    v27 = sub_1E3AC6180(v51, v52, v42, v43, v44, v45);
    v28 = v53;
    v29 = v54;
    v30 = v55;
    OUTLINED_FUNCTION_27_14();
    (*(v15 + 8))(v18, v13);
  }

  sub_1E3755B54();
  OUTLINED_FUNCTION_6_39();
  result = sub_1E4206F24();
  *a4 = v21;
  *(a4 + 8) = v22;
  *(a4 + 16) = v23;
  *(a4 + 24) = result;
  *(a4 + 32) = v31;
  *(a4 + 40) = v27;
  *(a4 + 48) = v28;
  *(a4 + 56) = v29;
  *(a4 + 64) = v30;
  return result;
}

uint64_t sub_1E3831F24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3831FCC()
{
  result = qword_1ECF2B818;
  if (!qword_1ECF2B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B818);
  }

  return result;
}

unint64_t sub_1E3832054()
{
  result = qword_1ECF2B830;
  if (!qword_1ECF2B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B830);
  }

  return result;
}

uint64_t sub_1E38320D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1E3832118(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for TextBadgeLayout()
{
  result = qword_1ECF47AB0;
  if (!qword_1ECF47AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E38321BC()
{
  result = sub_1E42012F4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextBadgeLayout.BadgeType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for TextBadgeLayout.BadgeType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s8VideosUI15TextBadgeLayoutC9BadgeKindOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E3832508(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B858);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v69 - v5;
  type metadata accessor for ImageLayout();
  v7 = sub_1E3BD61D8();
  (*(*v7 + 1808))(1);
  OUTLINED_FUNCTION_13();
  v9 = v8 - 88;
  v10 = *(v8 + 680);
  v11 = a1;

  v10(a1);
  if (TVAppFeature.isEnabled.getter(10) & 1) != 0 || ((*(*v1 + 2016))())
  {
    OUTLINED_FUNCTION_47_0();
    (*(v12 + 2072))(22);
    v13 = [objc_opt_self() whiteColor];
    v14 = (v10)(v13);
    (*(*v1 + 864))(v14);
    OUTLINED_FUNCTION_13();
    (*(v15 + 872))();

    v17 = *(*v1 + 1800);
    v17(v16);
    OUTLINED_FUNCTION_33_21();
    switch(v18)
    {
      case 2:
        OUTLINED_FUNCTION_5_51();
        goto LABEL_7;
      case 3:
LABEL_10:

        break;
      default:
LABEL_7:
        OUTLINED_FUNCTION_24_13();
        v21 = OUTLINED_FUNCTION_34_3();
        if ((v9 & 1) == 0)
        {
          (v17)(v21, 6.0);
          OUTLINED_FUNCTION_22_18();
          switch(v22)
          {
            case 1:
            case 3:
              break;
            case 2:
              goto LABEL_10;
            default:
              OUTLINED_FUNCTION_4_45();
              break;
          }

          OUTLINED_FUNCTION_8_37();
          OUTLINED_FUNCTION_34_3();
        }

        break;
    }

    v90 = sub_1E3952CA4();
    v91 = v26;
    v92 = v27;
    v93 = v28;
    v94 = 0;
    (v17)();
    OUTLINED_FUNCTION_22_18();
    switch(v29)
    {
      case 1:
        goto LABEL_17;
      case 2:
        OUTLINED_FUNCTION_5_51();
        goto LABEL_17;
      case 3:
LABEL_20:

        goto LABEL_22;
      default:
        OUTLINED_FUNCTION_4_45();
LABEL_17:
        OUTLINED_FUNCTION_24_13();
        v30 = OUTLINED_FUNCTION_34_3();
        if ((v9 & 1) == 0)
        {
          (v17)(v30, 6.0);
          OUTLINED_FUNCTION_22_18();
          switch(v31)
          {
            case 1:
            case 3:
              break;
            case 2:
              goto LABEL_20;
            default:
              OUTLINED_FUNCTION_4_45();
              break;
          }

          OUTLINED_FUNCTION_8_37();
          OUTLINED_FUNCTION_34_3();
        }

LABEL_22:
        v85 = sub_1E3952CA4();
        v86 = v32;
        v87 = v33;
        v88 = v34;
        v89 = 0;
        (v17)();
        OUTLINED_FUNCTION_22_18();
        switch(v35)
        {
          case 1:
            goto LABEL_25;
          case 2:
            OUTLINED_FUNCTION_5_51();
            goto LABEL_25;
          case 3:
LABEL_28:

            goto LABEL_30;
          default:
            OUTLINED_FUNCTION_4_45();
LABEL_25:
            OUTLINED_FUNCTION_24_13();
            v36 = OUTLINED_FUNCTION_34_3();
            if ((v9 & 1) == 0)
            {
              (v17)(v36, 7.0);
              OUTLINED_FUNCTION_22_18();
              switch(v37)
              {
                case 1:
                case 3:
                  break;
                case 2:
                  goto LABEL_28;
                default:
                  OUTLINED_FUNCTION_4_45();
                  break;
              }

              OUTLINED_FUNCTION_8_37();
              OUTLINED_FUNCTION_34_3();
            }

LABEL_30:
            v80 = sub_1E3952CA4();
            v81 = v38;
            v82 = v39;
            v83 = v40;
            v84 = 0;
            (v17)();
            OUTLINED_FUNCTION_22_18();
            switch(v41)
            {
              case 1:
                goto LABEL_33;
              case 2:
                OUTLINED_FUNCTION_5_51();
                goto LABEL_33;
              case 3:
LABEL_35:

                goto LABEL_37;
              default:
                OUTLINED_FUNCTION_4_45();
LABEL_33:
                OUTLINED_FUNCTION_24_13();
                v42 = OUTLINED_FUNCTION_34_3();
                if ((v9 & 1) == 0)
                {
                  (v17)(v42, 5.0);
                  OUTLINED_FUNCTION_22_18();
                  switch(v43)
                  {
                    case 2:
                      goto LABEL_35;
                    default:
                      OUTLINED_FUNCTION_8_37();

                      break;
                  }
                }

LABEL_37:
                v69[0] = sub_1E3952CA4();
                v69[1] = v44;
                v69[2] = v45;
                v69[3] = v46;
                LOBYTE(v69[4]) = 0;
                v75 = sub_1E3952CA4();
                v76 = v47;
                v77 = v48;
                v78 = v49;
                v79 = 0;
                type metadata accessor for UIEdgeInsets();
                v51 = v50;
                sub_1E3C3DE00(v50);
                v70[0] = v72;
                v70[1] = v73;
                v71 = v74;
                sub_1E3C2FCB8(v70, v95);
                memcpy(v69, v95, 0xE9uLL);
                OUTLINED_FUNCTION_18();
                OUTLINED_FUNCTION_13();
                (*(v52 + 1600))(v69, 0, v53 & 1, v51);
                v69[0] = sub_1E3952CA4();
                v69[1] = v54;
                v69[2] = v55;
                v69[3] = v56;
                LOBYTE(v69[4]) = 0;
                (*(*v2 + 160))(v69);
                sub_1E4201DD4();
                v57 = sub_1E4201DF4();
                __swift_storeEnumTagSinglePayload(v6, 0, 1, v57);
                OUTLINED_FUNCTION_13();
                (*(v58 + 2192))(v6);
                OUTLINED_FUNCTION_13();
                (*(v59 + 2096))(7);
                OUTLINED_FUNCTION_13();
                (*(v60 + 2024))(1, 0);
                break;
            }

            break;
        }

        break;
    }
  }

  else
  {
    v19 = objc_opt_self();
    if ([v19 isTV])
    {
      (*(*v2 + 1800))();
      OUTLINED_FUNCTION_33_21();
      switch(v20)
      {
        case 3:

          goto LABEL_42;
        default:
          OUTLINED_FUNCTION_2_40();
          v63 = OUTLINED_FUNCTION_17_26();

          if (v63)
          {
LABEL_42:
            OUTLINED_FUNCTION_47_0();
            OUTLINED_FUNCTION_42_18();
            v66();
            OUTLINED_FUNCTION_13();
            (*(v67 + 312))(0x4031000000000000, 0);
          }

          else
          {
            OUTLINED_FUNCTION_47_0();
            OUTLINED_FUNCTION_42_18();
            v64();
            OUTLINED_FUNCTION_13();
            (*(v65 + 312))(0x402E000000000000, 0);
          }

          break;
      }
    }

    else
    {
      [v19 isMac];
      OUTLINED_FUNCTION_47_0();
      if (v23)
      {
        OUTLINED_FUNCTION_42_18();
        v24();
        OUTLINED_FUNCTION_13();
        (*(v25 + 312))(0x4032000000000000, 0);
      }

      else
      {
        OUTLINED_FUNCTION_42_18();
        v61();
        OUTLINED_FUNCTION_13();
        (*(v62 + 312))(0x4020000000000000, 0);
      }
    }
  }

  return v7;
}

uint64_t sub_1E3833060(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_1E38330E4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  OUTLINED_FUNCTION_3_0();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_1E3833198()
{
  v1 = OBJC_IVAR___VUIASCAppInstallerViewController_forceDSIDless;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E38331D8(char a1)
{
  v3 = OBJC_IVAR___VUIASCAppInstallerViewController_forceDSIDless;
  result = OUTLINED_FUNCTION_3_0();
  *(v1 + v3) = a1;
  return result;
}

void *AppInstallerViewController.__allocating_init(title:subtitle:request:forceDSIDless:onFlowComplete:)()
{
  OUTLINED_FUNCTION_4_46();
  v1 = objc_allocWithZone(v0);
  return AppInstallerViewController.init(title:subtitle:request:forceDSIDless:onFlowComplete:)();
}

void *AppInstallerViewController.init(title:subtitle:request:forceDSIDless:onFlowComplete:)()
{
  OUTLINED_FUNCTION_4_46();
  OUTLINED_FUNCTION_25();
  v10 = [v8 v9];
  sub_1E3835BB4(v7, v6, v10);
  v11 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v12 + 240))(v5, v4);
  v13 = *((*v11 & *v10) + 0x108);
  v14 = v3;
  v13(v3);

  v15 = OBJC_IVAR___VUIASCAppInstallerViewController_forceDSIDless;
  OUTLINED_FUNCTION_3_0();
  *(v10 + v15) = v2;
  v16 = (v10 + OBJC_IVAR___VUIASCAppInstallerViewController_onFlowComplete);
  OUTLINED_FUNCTION_3_0();
  v17 = *v16;
  *v16 = v1;
  v16[1] = v0;
  v18 = OUTLINED_FUNCTION_13_8();
  sub_1E34AF604(v18);
  sub_1E34AF594(v17);

  v19 = OUTLINED_FUNCTION_13_8();
  sub_1E34AF594(v19);
  return v10;
}

id AppInstallerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E4205ED4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AppInstallerViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR___VUIASCAppInstallerViewController_previousState] = 0;
  v5 = &v3[OBJC_IVAR___VUIASCAppInstallerViewController_onFlowComplete];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v3[OBJC_IVAR___VUIASCAppInstallerViewController_onAppInstall];
  *v6 = 0;
  *(v6 + 1) = 0;
  OUTLINED_FUNCTION_14_36(&OBJC_IVAR___VUIASCAppInstallerViewController_previousState);
  if (v7)
  {
    v8 = sub_1E4205ED4();
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for AppInstallerViewController();
  v9 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v8, a3);

  v10 = v9;
  sub_1E3834A38();

  return v10;
}

void sub_1E38336C8()
{
  *(v0 + OBJC_IVAR___VUIASCAppInstallerViewController_previousState) = 0;
  v1 = (v0 + OBJC_IVAR___VUIASCAppInstallerViewController_onFlowComplete);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR___VUIASCAppInstallerViewController_onAppInstall);
  *v2 = 0;
  v2[1] = 0;
  OUTLINED_FUNCTION_14_36(&OBJC_IVAR___VUIASCAppInstallerViewController_previousState);
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3833780()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 288))();

  return sub_1E3835C3C(v1);
}

void sub_1E38337DC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21();
  v3 += 36;
  v4 = *v3;
  v5 = (*v3)();
  if (a2)
  {

    v6 = sub_1E4205ED4();
  }

  else
  {
    v6 = 0;
  }

  [v5 setText_];

  v7 = v4();

  [v7 setHidden_];
}

uint64_t sub_1E38338EC(uint64_t *a1)
{
  a1[2] = v1;
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 288))();
  *a1 = sub_1E3835C3C(v4);
  a1[1] = v5;
  return OUTLINED_FUNCTION_116();
}

void sub_1E3833968(uint64_t a1, char a2)
{
  if (a2)
  {

    v2 = OUTLINED_FUNCTION_13_8();
    sub_1E38337DC(v2, v3);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_13_8();
    sub_1E38337DC(v4, v5);
  }
}

id sub_1E38339D4()
{
  v0 = sub_1E3834E3C();
  v1 = [v0 request];

  return v1;
}

void sub_1E3833A18(void *a1)
{
  v2 = sub_1E3834E3C();
  [v2 setRequest_];
}

uint64_t sub_1E3833A70(void *a1)
{
  a1[1] = v1;
  v3 = sub_1E3834E3C();
  v4 = [v3 request];

  *a1 = v4;
  return OUTLINED_FUNCTION_116();
}

void sub_1E3833ADC(uint64_t a1)
{
  v1 = *a1;
  [*(*(a1 + 8) + OBJC_IVAR___VUIASCAppInstallerViewController____lazy_storage___appStoreComponentsLockupView) setRequest_];
}

Swift::Void __swiftcall AppInstallerViewController.viewDidLoad()()
{
  v1 = v0;
  v151.receiver = v0;
  v151.super_class = type metadata accessor for AppInstallerViewController();
  objc_msgSendSuper2(&v151, sel_viewDidLoad);
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429DCC0;
  *(inited + 32) = v2;
  *(inited + 40) = v3;
  v150 = v2;
  v148 = v3;
  v5 = OUTLINED_FUNCTION_19_23();
  if (!v5)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v6 = v5;
  for (i = 0; i != 2; ++i)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E6911E60](i, inited);
    }

    else
    {
      if (i >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v8 = *(inited + 8 * i + 32);
    }

    v9 = v8;
    [v6 addLayoutGuide_];
  }

  swift_setDeallocating();
  sub_1E377D458();

  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1E429DCC0;
  v11 = MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x120);
  *(v10 + 32) = v12();
  v149 = *((*v11 & *v1) + 0x150);
  *(v10 + 40) = v149();
  v13 = [v1 0x1FB648AF8];
  if (!v13)
  {
    goto LABEL_31;
  }

  v14 = v13;
  for (j = 0; j != 2; ++j)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1E6911E60](j, v10);
    }

    else
    {
      if (j >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v16 = *(v10 + 8 * j + 32);
    }

    v17 = v16;
    [v14 addSubview_];
  }

  swift_setDeallocating();
  sub_1E377D458();

  v18 = v12();
  LODWORD(v19) = 1144750080;
  [v18 setContentCompressionResistancePriority:1 forAxis:v19];

  v20 = v149();
  LODWORD(v21) = 1144750080;
  [v20 setContentCompressionResistancePriority:1 forAxis:v21];

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1E42A17F0;
  v23 = [v150 topAnchor];
  v24 = OUTLINED_FUNCTION_19_23();
  if (!v24)
  {
    goto LABEL_32;
  }

  v25 = v24;
  v26 = [v24 safeAreaLayoutGuide];

  v27 = [v26 topAnchor];
  v28 = OUTLINED_FUNCTION_3_42();
  v30 = [v28 v29];

  *(v22 + 32) = v30;
  v31 = [v150 leadingAnchor];
  v32 = OUTLINED_FUNCTION_19_23();
  if (!v32)
  {
    goto LABEL_33;
  }

  v33 = v32;
  v34 = [v32 safeAreaLayoutGuide];

  v35 = [v34 leadingAnchor];
  v36 = OUTLINED_FUNCTION_3_42();
  v38 = [v36 v37];

  *(v22 + 40) = v38;
  v39 = [v150 trailingAnchor];
  v40 = OUTLINED_FUNCTION_19_23();
  if (!v40)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v41 = v40;
  v42 = [v40 safeAreaLayoutGuide];

  v43 = [v42 trailingAnchor];
  v44 = OUTLINED_FUNCTION_3_42();
  v46 = [v44 v45];

  *(v22 + 48) = v46;
  v47 = v12();
  v48 = [v47 topAnchor];

  v49 = [v150 bottomAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v22 + 56) = v50;
  v51 = v12();
  v52 = [v51 leadingAnchor];

  v53 = [v1 view];
  if (!v53)
  {
    goto LABEL_35;
  }

  v54 = v53;
  v55 = [v53 readableContentGuide];

  v56 = [v55 leadingAnchor];
  v57 = OUTLINED_FUNCTION_3_42();
  v59 = [v57 v58];

  *(v22 + 64) = v59;
  v60 = v12();
  v61 = [v60 trailingAnchor];

  v62 = [v1 view];
  if (!v62)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v63 = v62;
  v64 = [v62 readableContentGuide];

  v65 = [v64 trailingAnchor];
  v66 = OUTLINED_FUNCTION_3_42();
  v68 = [v66 v67];

  *(v22 + 72) = v68;
  v69 = v12();
  v70 = [v69 bottomAnchor];

  v71 = v149();
  v72 = [v71 topAnchor];

  v73 = [v70 constraintEqualToAnchor:v72 constant:-16.0];
  *(v22 + 80) = v73;
  v74 = v149();
  v75 = [v74 topAnchor];

  v76 = v12();
  v77 = [v76 bottomAnchor];

  v78 = [v75 constraintEqualToAnchor:v77 constant:16.0];
  *(v22 + 88) = v78;
  v79 = v149();
  v80 = [v79 leadingAnchor];

  v81 = OUTLINED_FUNCTION_15_39();
  if (!v81)
  {
    goto LABEL_37;
  }

  v82 = v81;
  v83 = [v81 readableContentGuide];

  v84 = [v83 leadingAnchor];
  v85 = OUTLINED_FUNCTION_3_42();
  v87 = [v85 v86];

  *(v22 + 96) = v87;
  v88 = v149();
  v89 = [v88 trailingAnchor];

  v90 = OUTLINED_FUNCTION_15_39();
  if (!v90)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v91 = v90;
  v92 = [v90 readableContentGuide];

  v93 = [v92 trailingAnchor];
  v94 = OUTLINED_FUNCTION_3_42();
  v96 = [v94 v95];

  *(v22 + 104) = v96;
  v97 = v149();
  v98 = [v97 bottomAnchor];

  v99 = [v148 topAnchor];
  v100 = [v98 constraintEqualToAnchor_];

  *(v22 + 112) = v100;
  v101 = [v148 bottomAnchor];
  v102 = OUTLINED_FUNCTION_15_39();
  if (!v102)
  {
    goto LABEL_39;
  }

  v103 = v102;
  v104 = [v102 safeAreaLayoutGuide];

  v105 = [v104 &selRef_catchUpToLiveViewControllerWithIndex_playable_segments_metadataViewModels_nextToken_ + 5];
  v106 = OUTLINED_FUNCTION_3_42();
  v108 = [v106 v107];

  *(v22 + 120) = v108;
  v109 = [v148 leadingAnchor];
  v110 = OUTLINED_FUNCTION_15_39();
  if (!v110)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return;
  }

  v111 = v110;
  v112 = [v110 safeAreaLayoutGuide];

  v113 = [v112 leadingAnchor];
  v114 = OUTLINED_FUNCTION_3_42();
  v116 = [v114 v115];

  *(v22 + 128) = v116;
  v117 = [v148 trailingAnchor];
  v118 = OUTLINED_FUNCTION_15_39();
  if (!v118)
  {
    goto LABEL_41;
  }

  v119 = v118;
  v147 = objc_opt_self();
  v120 = [v119 safeAreaLayoutGuide];

  v121 = [v120 trailingAnchor];
  v122 = [v117 constraintEqualToAnchor_];

  *(v22 + 136) = v122;
  v123 = [v150 heightAnchor];
  v124 = [v148 heightAnchor];
  v125 = [v123 &selRef_disableBackgroundMediaPlayback + 5];

  *(v22 + 144) = v125;
  v126 = sub_1E3834E3C();
  v127 = [v126 topAnchor];

  v128 = v149();
  v129 = [v128 topAnchor];

  v130 = [v127 constraintEqualToAnchor:v129 constant:16.0];
  *(v22 + 152) = v130;
  v131 = OBJC_IVAR___VUIASCAppInstallerViewController____lazy_storage___appStoreComponentsLockupView;
  v132 = [*(v1 + OBJC_IVAR___VUIASCAppInstallerViewController____lazy_storage___appStoreComponentsLockupView) bottomAnchor];
  v133 = v149();
  v134 = [v133 bottomAnchor];

  v135 = [v132 constraintEqualToAnchor:v134 constant:-16.0];
  *(v22 + 160) = v135;
  sub_1E3280A90(0, &qword_1EE23B1A0);
  v136 = sub_1E42062A4();

  [v147 activateConstraints_];

  v137 = swift_allocObject();
  *(v137 + 16) = xmmword_1E429DCC0;
  v138 = [*(v1 + v131) leadingAnchor];
  v139 = v149();
  v140 = [v139 leadingAnchor];

  v141 = [v138 constraintEqualToAnchor_];
  *(v137 + 32) = v141;
  v142 = [*(v1 + v131) trailingAnchor];
  v143 = v149();
  v144 = [v143 trailingAnchor];

  v145 = [v142 constraintEqualToAnchor_];
  *(v137 + 40) = v145;
  v146 = sub_1E42062A4();

  [v147 activateConstraints_];
}

void sub_1E3834A38()
{
  v1 = v0;
  if (sub_1E39DFFC8())
  {
    sub_1E3280A90(0, &qword_1EE23AE00);
    v2 = sub_1E3834BC8();
    v13 = type metadata accessor for AppInstallerViewController();
    v12[0] = v1;
    objc_allocWithZone(MEMORY[0x1E69DC708]);
    v3 = v1;
    v4 = sub_1E3835830(v2, 0, v12, sel_handleCancel);
  }

  else
  {
    v5 = [objc_allocWithZone(VUILocalizationManager) init];
    v6 = sub_1E3741090(0xD00000000000001ELL, 0x80000001E425F750, v5);
    v8 = v7;

    v13 = type metadata accessor for AppInstallerViewController();
    v12[0] = v1;
    objc_allocWithZone(MEMORY[0x1E69DC708]);
    v9 = v1;
    v4 = sub_1E3835998(v6, v8, 2, v12, sel_handleCancel);
  }

  v10 = v4;
  v11 = [v1 navigationItem];
  [v11 setRightBarButtonItem:v10 animated:0];
}

id sub_1E3834BC8()
{
  v0 = sub_1E4205ED4();

  v1 = [swift_getObjCClassFromMetadata() systemImageNamed_];

  return v1;
}

id sub_1E3834C2C()
{
  v1 = OBJC_IVAR___VUIASCAppInstallerViewController____lazy_storage___subtitleLabel;
  v2 = *(v0 + OBJC_IVAR___VUIASCAppInstallerViewController____lazy_storage___subtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___VUIASCAppInstallerViewController____lazy_storage___subtitleLabel);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_6_40(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setNumberOfLines_];
    [v4 setTextAlignment_];
    [v4 setTextColor_];
    [v4 setLineBreakMode_];
    v5 = [objc_opt_self() systemFontOfSize_];
    v6 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
    v7 = [v6 scaledFontForFont_];

    [v4 setFont_];
    [v4 setAdjustsFontForContentSizeCategory_];
    [v4 setMaximumContentSizeCategory_];

    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_1E3834DE8(id *a1)
{
  a1[1] = v1;
  *a1 = sub_1E3834C2C();
  return OUTLINED_FUNCTION_116();
}

id sub_1E3834E3C()
{
  v1 = OBJC_IVAR___VUIASCAppInstallerViewController____lazy_storage___appStoreComponentsLockupView;
  v2 = *(v0 + OBJC_IVAR___VUIASCAppInstallerViewController____lazy_storage___appStoreComponentsLockupView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___VUIASCAppInstallerViewController____lazy_storage___appStoreComponentsLockupView);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_6_40(objc_allocWithZone(MEMORY[0x1E698B3C8]), sel_initWithFrame_);
    [v4 setAutomaticallyPresentsProductDetails_];
    v5 = v4;
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v5 setMaximumContentSizeCategory_];

    [v5 setSize_];
    [v5 setDelegate_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1E3834F2C()
{
  v1 = OBJC_IVAR___VUIASCAppInstallerViewController____lazy_storage___ascContainerView;
  v2 = *(v0 + OBJC_IVAR___VUIASCAppInstallerViewController____lazy_storage___ascContainerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___VUIASCAppInstallerViewController____lazy_storage___ascContainerView);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_6_40(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = sub_1E3834E3C();
    [v4 addSubview_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1E3834FE0(id *a1)
{
  a1[1] = v1;
  *a1 = sub_1E3834F2C();
  return OUTLINED_FUNCTION_116();
}

void sub_1E3835034()
{
  v1 = [v0 presentingViewController];
  if (v1)
  {
    v2 = v1;
    OUTLINED_FUNCTION_4_0();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = sub_1E3835E64;
    v24 = v3;
    aBlock = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    OUTLINED_FUNCTION_0_48();
    v21 = v4;
    v22 = &block_descriptor_12;
    v5 = _Block_copy(&aBlock);

    [v2 dismissViewControllerAnimated:1 completion:v5];
    _Block_release(v5);
  }

  v6 = [objc_opt_self() sharedInstance];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BD0;
  aBlock = sub_1E4205F14();
  v20 = v8;
  v9 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_12_36();
  v10 = sub_1E4205F14();
  *(inited + 96) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = v11;
  aBlock = sub_1E4205F14();
  v20 = v12;
  OUTLINED_FUNCTION_12_36();
  v13 = sub_1E4205F14();
  *(inited + 168) = v9;
  *(inited + 144) = v13;
  *(inited + 152) = v14;
  aBlock = sub_1E4205F14();
  v20 = v15;
  OUTLINED_FUNCTION_12_36();
  v16 = sub_1E4205F14();
  *(inited + 240) = v9;
  *(inited + 216) = v16;
  *(inited + 224) = v17;
  sub_1E4205CB4();
  v18 = sub_1E4205C44();

  [v6 recordClick_];
}

void AppInstallerViewController.lockupView(_:appStateDidChange:)(uint64_t a1, void *a2)
{
  v3 = OBJC_IVAR___VUIASCAppInstallerViewController_previousState;
  if (*&v2[OBJC_IVAR___VUIASCAppInstallerViewController_previousState])
  {
    v4 = sub_1E4205F14();
    v6 = v5;
    if (v4 == sub_1E4205F14() && v6 == v7)
    {
    }

    else
    {
      v9 = sub_1E42079A4();

      if ((v9 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    if (*&v2[v3])
    {
      v11 = *MEMORY[0x1E698B2B0];
      v12 = sub_1E4205F14();
      v14 = v13;
      if (v12 == sub_1E4205F14() && v14 == v15)
      {
      }

      else
      {
        v17 = sub_1E42079A4();

        if ((v17 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      OUTLINED_FUNCTION_4_0();
      v18 = swift_allocObject();
      *(v18 + 16) = v2;
      v42 = sub_1E3835CAC;
      v43 = v18;
      aBlock = MEMORY[0x1E69E9820];
      v39 = 1107296256;
      OUTLINED_FUNCTION_0_48();
      v40 = v19;
      v41 = &block_descriptor_15;
      v20 = _Block_copy(&aBlock);
      v21 = v2;

      [v21 dismissViewControllerAnimated:1 completion:v20];
      _Block_release(v20);
      v22 = [objc_opt_self() sharedInstance];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BD0;
      aBlock = sub_1E4205F14();
      v39 = v24;
      v25 = MEMORY[0x1E69E6158];
      OUTLINED_FUNCTION_11_36();
      v26 = sub_1E4205F14();
      *(inited + 96) = v25;
      *(inited + 72) = v26;
      *(inited + 80) = v27;
      aBlock = sub_1E4205F14();
      v39 = v28;
      OUTLINED_FUNCTION_11_36();
      v29 = sub_1E4205F14();
      *(inited + 168) = v25;
      *(inited + 144) = v29;
      *(inited + 152) = v30;
      aBlock = sub_1E4205F14();
      v39 = v31;
      OUTLINED_FUNCTION_11_36();
      v32 = sub_1E4205F14();
      *(inited + 240) = v25;
      *(inited + 216) = v32;
      *(inited + 224) = v33;
      sub_1E4205CB4();
      v34 = sub_1E4205C44();

      [v22 recordClick_];
    }

LABEL_21:
    v35 = *&v2[v3];
    *&v2[v3] = a2;
    v36 = a2;

    return;
  }

  *&v2[OBJC_IVAR___VUIASCAppInstallerViewController_previousState] = a2;

  v10 = a2;
}

id AppInstallerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppInstallerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E3835830(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v9 = a3[3];
  if (v9)
  {
    v11 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v12 = *(v9 - 8);
    v13 = MEMORY[0x1EEE9AC00](v11);
    v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v13);
    v16 = sub_1E4207994();
    (*(v12 + 8))(v15, v9);
    __swift_destroy_boxed_opaque_existential_1(a3);
  }

  else
  {
    v16 = 0;
  }

  v17 = [v5 initWithImage:a1 style:a2 target:v16 action:a4];

  swift_unknownObjectRelease();
  return v17;
}

id sub_1E3835998(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v10 = sub_1E4205ED4();
  }

  else
  {
    v10 = 0;
  }

  v11 = a4[3];
  if (v11)
  {
    v12 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    v13 = *(v11 - 8);
    v14 = MEMORY[0x1EEE9AC00](v12);
    v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    v17 = sub_1E4207994();
    (*(v13 + 8))(v16, v11);
    __swift_destroy_boxed_opaque_existential_1(a4);
  }

  else
  {
    v17 = 0;
  }

  v18 = [v6 initWithTitle:v10 style:a3 target:v17 action:a5];

  swift_unknownObjectRelease();
  return v18;
}

uint64_t sub_1E3835B1C()
{
  sub_1E3835E20(&unk_1ECF36D50);
  sub_1E3835E20(&unk_1ECF2B900);

  return sub_1E4207764();
}

void sub_1E3835BB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  [a3 setTitle_];
}

uint64_t sub_1E3835C3C(void *a1)
{
  v2 = [a1 text];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

void (*sub_1E3835CAC())(void)
{
  OUTLINED_FUNCTION_21();
  result = (*(v0 + 184))();
  if (result)
  {
    v2 = result;
    result();

    return sub_1E34AF594(v2);
  }

  return result;
}

void type metadata accessor for ASCAppState()
{
  if (!qword_1ECF36D30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECF36D30);
    }
  }
}

uint64_t sub_1E3835E20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASCAppState();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E3835E64()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xA0))();

    if (v2)
    {
      v2(0);
      v3 = OUTLINED_FUNCTION_13_8();
      sub_1E34AF594(v3);
    }
  }
}

uint64_t sub_1E3835F40()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FED54();
  *(v0 + 24) = sub_1E41FED34();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_33(v1);

  return MEMORY[0x1EEE435A8](v2, 0);
}

uint64_t sub_1E3835FE4()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v5 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E383612C, 0, 0);
  }

  else
  {

    v8 = *(v6 + 8);

    return v8(v3);
  }
}

uint64_t sub_1E383612C()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3836208(uint64_t a1, const void *a2)
{
  v4 = sub_1E41FDDF4();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[4] = v5;
  v2[5] = _Block_copy(a2);
  sub_1E41FDDA4();
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_1E3836320;

  return static VUINetworkManagerProxy.execute(request:)(v5);
}

uint64_t sub_1E3836320()
{
  OUTLINED_FUNCTION_134();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  v8 = *v1;
  *v7 = *v1;

  v9 = v5[5];
  (*(v5[3] + 8))(v5[4], v5[2]);
  if (v2)
  {
    v10 = sub_1E41FE264();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, v4, 0);
    _Block_release(v9);
  }

  v11 = v8[1];

  return v11();
}

uint64_t sub_1E38364EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1E42A1A18;
  v9[5] = v8;
  sub_1E3836FEC(0, 0, v6, &unk_1E42A1A28, v9);
}

uint64_t sub_1E3836610()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FED54();
  *(v0 + 24) = sub_1E41FED34();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_33(v1);

  return MEMORY[0x1EEE43598](v2);
}

uint64_t sub_1E38366B0()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_1E3836830(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_1E41FDDF4();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a2);
  sub_1E41FDDA4();
  v8 = a3;
  v9 = swift_task_alloc();
  v3[7] = v9;
  *v9 = v3;
  v9[1] = sub_1E3836958;

  return VUINetworkManagerProxy.cancel(request:)(v7);
}

uint64_t sub_1E3836958()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_39();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[4];
  v5 = v1[3];
  v6 = v1[2];
  v7 = *v0;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  (*(v4 + 8))(v3, v5);
  v2[2](v2);
  _Block_release(v2);

  OUTLINED_FUNCTION_54();

  return v9();
}

id VUINetworkManagerProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VUINetworkManagerProxy.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUINetworkManagerProxy();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VUINetworkManagerProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUINetworkManagerProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3836BCC()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_52(v1);

  return v4(v3);
}

uint64_t sub_1E3836C60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1E327C238;

  return v6();
}

uint64_t sub_1E3836D48()
{
  OUTLINED_FUNCTION_134();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_30_0(v4);
  *v5 = v6;
  v5[1] = sub_1E327C238;

  return sub_1E3836C60(v1, v2, v3);
}

uint64_t sub_1E3836E00(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1E3286A7C;

  return v7();
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E3836F28()
{
  OUTLINED_FUNCTION_134();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_30_0(v6);
  *v7 = v8;
  v7[1] = sub_1E327C238;

  return sub_1E3836E00(v2, v3, v4, v5);
}

uint64_t sub_1E3836FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  sub_1E325A828(a3, v22 - v10);
  v12 = sub_1E4206474();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1E325A8C0(v11);
  }

  else
  {
    sub_1E4206464();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_1E42063B4();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_1E4205FB4() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_1E325A8C0(a3);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E325A8C0(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1E3837288()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_3(v1);

  return v4(v3);
}

uint64_t sub_1E3837320()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_52(v1);

  return v4(v3);
}

void sub_1E38373B4()
{
  v49 = OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_buttons;
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_buttons);
  v2 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  v55 = 0;
  v56 = 1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x90);

  v51 = v0;
  v5 = 0;
  v50 = v3(v4);
  v6 = (v50 + 80);
  while (1)
  {
    v7 = *(v50 + 16);
    if (v5 == v7)
    {
      break;
    }

    if (v5 >= v7)
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v52 = v6;
    v53 = v5;
    v9 = *(v6 - 1);
    v8 = *v6;
    v11 = *(v6 - 3);
    v10 = *(v6 - 2);
    v13 = *(v6 - 5);
    v12 = *(v6 - 4);
    *&v60 = *(v6 - 6);
    *(&v60 + 1) = v13;
    v61 = v12;
    v62 = v11;
    v63 = v10;
    v64 = v9;
    v65 = v8;
    v66[0] = v60;
    v14 = *((*MEMORY[0x1E69E7D40] & *v51) + 0xC0);
    sub_1E383A1D0(v66, aBlock);

    v14(&v58, v15);
    v17 = v58;
    v16 = v59;
    if (!v59)
    {
      OUTLINED_FUNCTION_13_45(v58, 0);
      sub_1E3782C70(v66);
      v21 = v53;
      goto LABEL_14;
    }

    v18 = v66[0];

    OUTLINED_FUNCTION_13_45(v17, v16);
    if (v18 == v17 && v16 == *(&v18 + 1))
    {

      sub_1E3782C70(v66);
      v21 = v53;
LABEL_13:
      v55 = v21;
      v56 = 0;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_11_6();
    v20 = sub_1E42079A4();

    sub_1E3782C70(v66);
    v21 = v53;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_14:
    v22 = v1 >> 62;
    if (v1 >> 62)
    {
      if (!sub_1E4207384())
      {
LABEL_52:
        v38 = sub_1E38398F4(&v60);
        sub_1E3839C28(&v60);
        v37 = v38;
        [v37 addTarget:v51 action:sel_categoryButtonTapped_ forControlEvents:64];
        [v51 addSubview_];
        v25 = v37;
        goto LABEL_53;
      }
    }

    else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_52;
    }

    v23 = v1 & 0xC000000000000001;
    if ((v1 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x1E6911E60](0, v1);
    }

    else
    {
      if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

      v24 = *(v1 + 32);
    }

    v25 = v24;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v22)
    {
      if (!sub_1E4207384())
      {
        goto LABEL_73;
      }

      if (!sub_1E4207384())
      {
        goto LABEL_74;
      }

      if (!v23)
      {
        v30 = v25;
LABEL_31:
        if (!sub_1E4207384())
        {
          goto LABEL_77;
        }

        if (sub_1E4207384() < 1)
        {
          goto LABEL_76;
        }

        v29 = sub_1E4207384();
        goto LABEL_34;
      }
    }

    else
    {
      if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_72;
      }

      if (!v23)
      {
        v27 = v24;
        goto LABEL_28;
      }
    }

    v28 = v25;
    MEMORY[0x1E6911E60](0, v1);
    swift_unknownObjectRelease();
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v22)
    {
      goto LABEL_31;
    }

    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_77;
    }

LABEL_28:
    v29 = *(v26 + 16);
    if (!v29)
    {
      goto LABEL_75;
    }

LABEL_34:
    v31 = v29 - 1;
    if (__OFSUB__(v29, 1))
    {
      goto LABEL_69;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v22)
    {
      v33 = 0;
    }

    else
    {
      v33 = isUniquelyReferenced_nonNull_bridgeObject;
    }

    if (v33 != 1 || (v34 = v1 & 0xFFFFFFFFFFFFFF8, v31 > *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
    {
      if (v22)
      {
        sub_1E4207384();
      }

      v1 = sub_1E4207514();
      v34 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v1 >> 62)
    {
      v35 = sub_1E4207384();
    }

    else
    {
      v35 = *(v34 + 16);
    }

    if (__OFSUB__(v35, 1))
    {
      goto LABEL_70;
    }

    memmove((v34 + 32), (v34 + 40), 8 * (v35 - 1));
    if (v1 >> 62)
    {
      v36 = sub_1E4207384();
    }

    else
    {
      v36 = *(v34 + 16);
    }

    if (__OFSUB__(v36, 1))
    {
      goto LABEL_71;
    }

    *(v34 + 16) = v36 - 1;
    v37 = sub_1E4205ED4();
    sub_1E3839C28(&v60);
    [v25 setTitle:v37 forState:0];
LABEL_53:

    MEMORY[0x1E6910BF0]();
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E42062F4();
    }

    sub_1E4206324();

    v2 = v57;
    v6 = v52 + 7;
    v5 = v21 + 1;
  }

  v39 = sub_1E32AE9B0(v1);
  if (v39)
  {
    v40 = v39;
    if (v39 < 1)
    {
      goto LABEL_79;
    }

    for (i = 0; i != v40; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x1E6911E60](i, v1);
      }

      else
      {
        v42 = *(v1 + 8 * i + 32);
      }

      v43 = v42;
      [v42 removeFromSuperview];
    }
  }

  *(v51 + v49) = v2;

  v44 = objc_opt_self();
  OUTLINED_FUNCTION_2_4();
  v45 = swift_allocObject();
  *(v45 + 16) = v51;
  *(v45 + 24) = &v55;
  OUTLINED_FUNCTION_2_4();
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1E383A22C;
  *(v46 + 24) = v45;
  aBlock[4] = sub_1E37D1918;
  aBlock[5] = v46;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E3839B50;
  aBlock[3] = &block_descriptor_48;
  v47 = _Block_copy(aBlock);
  v48 = v51;

  [v44 performWithoutAnimation_];
  _Block_release(v47);
  LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

  if ((v47 & 1) == 0)
  {
    return;
  }

LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
}

uint64_t sub_1E3837A54()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

void sub_1E3837A98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_categories;
  OUTLINED_FUNCTION_3_0();
  *(v1 + v3) = a1;

  sub_1E38373B4();
}

void (*sub_1E3837AEC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3837B40;
}

void sub_1E3837B40(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E38373B4();
  }
}

uint64_t sub_1E3837B74()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectionHandler);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *v1;
  sub_1E34AF604(*v1);
  return v2;
}

uint64_t sub_1E3837BCC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_33_9(OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectionHandler);
  OUTLINED_FUNCTION_3_0();
  v5 = *v2;
  *v2 = a1;
  v2[1] = a2;
  return sub_1E34AF594(v5);
}

uint64_t sub_1E3837C6C@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_33_9(OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectedCategory);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  result = sub_1E3837D00(v3, v4);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  return result;
}

uint64_t sub_1E3837D00(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1E3837D64(uint64_t a1)
{
  OUTLINED_FUNCTION_33_9(OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectedCategory);
  OUTLINED_FUNCTION_3_0();
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = *(a1 + 48);
  return sub_1E3837DC8(v3, v4);
}

uint64_t sub_1E3837DC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id sub_1E3837E2C()
{
  v1 = OBJC_IVAR____TtC8VideosUI17CategoryFilterBar____lazy_storage___selectedButtonBackgroundView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar____lazy_storage___selectedButtonBackgroundView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar____lazy_storage___selectedButtonBackgroundView];
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v4 setBackgroundColor_];
    [v4 setHidden_];
    [v4 setClipsToBounds_];
    [v0 addSubview_];
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}