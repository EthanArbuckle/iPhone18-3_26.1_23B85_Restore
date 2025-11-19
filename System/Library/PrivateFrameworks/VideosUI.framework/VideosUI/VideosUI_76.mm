uint64_t sub_1E3C58BD8(void *a1)
{
  v2 = [a1 playbackInitiatorForRTCReporting];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

void sub_1E3C58C54(void *a1)
{
  if ((*a1 - 3) > 1)
  {
    return;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = *(Strong + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController);

  v5 = [v4 avPlayerViewController];
  if (!v5)
  {
    return;
  }

  v6 = [v5 view];

  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = [v6 subviews];

  sub_1E3280A90(0, &qword_1EE23AE80);
  OUTLINED_FUNCTION_19_3();
  v8 = sub_1E42062B4();

  if (!sub_1E32AE9B0(v8))
  {

    return;
  }

  if ((v8 & 0xC000000000000001) == 0)
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v8 + 32);
      goto LABEL_9;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v9 = MEMORY[0x1E6911E60](0, v8);
LABEL_9:
  v10 = v9;

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = *(v11 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController);

    v14 = [v13 avPlayerViewController];
    if (v14)
    {
      [v14 vui:0 setAllowInfoMetadataSubpanel:?];
    }
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_50();
  }

  else
  {
  }
}

void sub_1E3C58E88(void **a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      sub_1E3280A90(0, &qword_1EE23B250);

      v4 = sub_1E42062A4();

      [v1 setCustomInfoViewControllers_];
    }
  }
}

uint64_t sub_1E3C58F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1E3C58F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1E3C58F64(void *a1)
{
  v2 = [a1 mediaInfos];

  if (!v2)
  {
    return 0;
  }

  sub_1E3280A90(0, &qword_1EE23B350);
  v3 = sub_1E42062B4();

  return v3;
}

void sub_1E3C58FDC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  [a3 setName_];
}

uint64_t sub_1E3C59040()
{
  sub_1E3C46D8C();
  sub_1E3927714();
}

void sub_1E3C5907C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1E3C46A28();
    v3 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_viewModels;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    [v2 setNumberOfPages_];

    v4 = *&v1[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController];
    v5 = *&v1[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___pageControl];
    v6 = [v4 mediaInfoIndex];
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      [v5 setCurrentPage_];
    }
  }
}

uint64_t sub_1E3C59160(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E3C591C0()
{
  v0 = sub_1E3C46CA4();
  v1 = sub_1E3C4ACD4();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x190))();

  return sub_1E3C4E738();
}

id sub_1E3C5927C@<X0>(void *a1@<X8>)
{
  result = [v1[2] vuiView];
  if (result)
  {
    OUTLINED_FUNCTION_106();
    type metadata accessor for PaginatedSwipingContainerView();
    [v1 bounds];
    OUTLINED_FUNCTION_3();

    OUTLINED_FUNCTION_6();
    result = sub_1E3890DAC();
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3C59308@<X0>(void *a1@<X8>)
{
  type metadata accessor for MediaShowcasingMetadataPresenter(0);
  OUTLINED_FUNCTION_141_7();
  sub_1E3C46D1C();
  v3 = sub_1E3C46CA4();

  sub_1E3925B38();

  sub_1E392625C();
  OUTLINED_FUNCTION_141_7();
  sub_1E3C46E14(v4);
  OUTLINED_FUNCTION_31_4();

  *a1 = v1;
  return result;
}

unint64_t sub_1E3C593B0()
{
  result = qword_1ECF35AA0;
  if (!qword_1ECF35AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35AA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PaginationHost(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for PaginatedMediaController()
{
  result = qword_1EE297600;
  if (!qword_1EE297600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3C59558()
{
  sub_1E3C59724(319, &qword_1EE28A0A8, MEMORY[0x1E69E7DE0], MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3C59724(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1E3C59774(uint64_t a1)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationDelegate;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      v7 = (*(v5 + 32))(v3, a1, ObjectType, v5);
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1E3C59854(double a1)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [*(Strong + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) player];
    if (v4)
    {
      v5 = v4;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong() || (swift_getObjectType(), v6 = OUTLINED_FUNCTION_27_0(), v8 = v7(v6), swift_unknownObjectRelease(), (~LODWORD(v8) & 0x7F800000) == 0) && (LODWORD(v8) & 0x7FFFFF) != 0)
      {
        [v5 duration];
        v8 = 0.0;
        if (v9 > 0.0)
        {
          [v5 duration];
          v8 = a1 / v10;
        }
      }

      v11 = sub_1E3C46B2C();
      *&v12 = v8;
      [v11 setCurrentProgress_];
    }

    else
    {
      v5 = v3;
    }
  }
}

void sub_1E3C599AC(unsigned __int8 *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      sub_1E3C46F28();
      sub_1E3B233D4();

      OUTLINED_FUNCTION_148_6();
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        OUTLINED_FUNCTION_132_7();
        OUTLINED_FUNCTION_12_7();
        v4 = OUTLINED_FUNCTION_17_1();
        v5(v4);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1E3C59A68()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3C478B4();
    sub_1E3C47BAC();
  }
}

void sub_1E3C59AB8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3C47BAC();
  }
}

void sub_1E3C59B30()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([Strong isViewInTopMostVisibleViewController])
    {
      sub_1E3C475DC();
    }

    v3 = *&v2[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_offerSelectionModalNotificationToken];
    if (v3)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_87_0();
      swift_unknownObjectRetain();
      v4 = [v0 defaultCenter];
      OUTLINED_FUNCTION_87_0();
      swift_unknownObjectRetain();
      [v0 removeObserver_];
      swift_unknownObjectRelease_n();
    }
  }
}

void sub_1E3C59C14(uint64_t a1, void (*a2)(void))
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_1E3C59C68()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_isPlayingVideo) = 1;
    sub_1E3C47D18();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      OUTLINED_FUNCTION_132_7();
      v2 = OUTLINED_FUNCTION_140_8();
      v3(v2, 1);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1E3C59D1C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_isPlayingVideo) = 0;
    sub_1E3C47D18();
    sub_1E3C558F0();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      OUTLINED_FUNCTION_132_7();
      v2 = OUTLINED_FUNCTION_140_8();
      v3(v2, 0);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1E3C59DD0()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController;
    if ([*(Strong + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) didAVPlayerControllerEnterFullscreen])
    {
LABEL_25:

      return;
    }

    if (([OUTLINED_FUNCTION_116_6() shouldShowImageAndStopAfterPausingAtEnd] & 1) == 0 && (objc_msgSend(OUTLINED_FUNCTION_116_6(), sel_prefetchesVideoFrame) & 1) == 0)
    {
      [*&v1[v2] stop];
    }

    v3 = [*&v1[v2] player];
    if (v3)
    {
      v4 = v3;
      if ([v3 externalPlaybackType] || (v10 = objc_msgSend(*&v1[v2], sel_avPlayerViewController)) != 0 && (v11 = v10, v12 = objc_msgSend(v10, sel_isPictureInPictureActive), v11, v12))
      {
        if (v1[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost] == 4)
        {
          v5 = [OUTLINED_FUNCTION_116_6() mediaInfoIndex];
          if (v5 == -1)
          {
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          if (v5 + 1 < sub_1E3C54538())
          {
            v6 = [OUTLINED_FUNCTION_116_6() mediaInfoIndex];
            v7 = (v6 + 1);
            if (v6 == -1)
            {
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

            sub_1E3C4A524();
            v8 = sub_1E3C46A28();
            if ((v7 & 0x8000000000000000) != 0)
            {
LABEL_30:
              __break(1u);
              return;
            }

            v9 = v8;
            [v8 setCurrentPage_];
          }
        }
      }
    }

    sub_1E3C553FC();
    if (v13)
    {
      sub_1E3C477F8();
      sub_1E3C55790(v14);
    }

    v15 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_shouldUsePageControlProgress;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (v1[v15] != 1)
    {
      goto LABEL_25;
    }

    sub_1E3C558F0();
    sub_1E3C553FC();
    if ((v16 & 1) == 0)
    {
LABEL_24:
      v20 = sub_1E3C46B2C();
      [v20 setCurrentProgress_];

      goto LABEL_25;
    }

    v17 = [OUTLINED_FUNCTION_116_6() mediaInfoIndex];
    v18 = sub_1E3C54538();
    if (v18)
    {
      if (v17 < v18 - 1)
      {
        goto LABEL_25;
      }

      v19 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_shouldAutoAdvanceLastPage;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      if (v1[v19])
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_28;
  }
}

void sub_1E3C5A014()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = sub_1E41FDF24();
  if (v2)
  {
    v3 = v2;
    sub_1E4205F14();
    sub_1E4207414();
    sub_1E375D7E8(v8, v3, &v9);

    sub_1E375D84C(v8);
    if (*(&v10 + 1))
    {
      if (OUTLINED_FUNCTION_21_4())
      {
        if (v8[0])
        {
          sub_1E3C553FC();
          if (v4)
          {
            sub_1E3C477F8();
            sub_1E3C55790(v5);
          }
        }
      }

      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  sub_1E325F6F0(&v9, &unk_1ECF296E0);
LABEL_10:
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_132_7();
    OUTLINED_FUNCTION_79_1();
    v6 = OUTLINED_FUNCTION_17_1();
    v7(v6);
    swift_unknownObjectRelease();
  }
}

void sub_1E3C5A180()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong vuiView];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1E3C46CA4();
      v5 = OUTLINED_FUNCTION_17_1();
      [v5 v6];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E3C5A21C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    OUTLINED_FUNCTION_148_6();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      OUTLINED_FUNCTION_132_7();
      OUTLINED_FUNCTION_79_1();
      v2 = OUTLINED_FUNCTION_17_1();
      v3(v2);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1E3C5A2B4()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3C56354();
  }
}

void sub_1E3C5A300()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_showsPageControl;
  OUTLINED_FUNCTION_0_12();
  if (*(v1 + v2))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = sub_1E3C46A28();
  [v4 setVuiAlpha_];
}

void *OUTLINED_FUNCTION_128_6()
{

  return memcpy((v0 + 16), (v0 + 320), 0x81uLL);
}

id OUTLINED_FUNCTION_130_9()
{

  return [v0 (v2 + 3941)];
}

uint64_t OUTLINED_FUNCTION_132_7()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_158_6()
{

  return sub_1E4200FE4();
}

uint64_t OUTLINED_FUNCTION_160_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_161_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_162_5()
{

  return sub_1E4206C14();
}

id OUTLINED_FUNCTION_163_4()
{

  return [v1 (v0 + 2867)];
}

unint64_t OUTLINED_FUNCTION_164_3(float a1)
{
  *v1 = a1;

  return sub_1E3C486F4();
}

BOOL OUTLINED_FUNCTION_165_5()
{

  return os_log_type_enabled(v0, v1);
}

void *OUTLINED_FUNCTION_166_4(__n128 a1, __n128 a2)
{
  v2[145] = 0;
  nullsub_1(a1, a2);

  return memcpy(v2 + 456, v2 + 16, 0x82uLL);
}

uint64_t sub_1E3C5A5E0()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    type metadata accessor for PlaybackStatusLayout();
    v1 = sub_1E3A70EBC(1);
    *(v0 + 136) = v1;
  }

  return v1;
}

uint64_t sub_1E3C5A64C()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    type metadata accessor for ContextMenuButtonLayout();
    v1 = sub_1E3890F28();
    *(v0 + 144) = v1;
  }

  return v1;
}

double sub_1E3C5A6B4()
{
  if ((*(v0 + 160) & 1) == 0)
  {
    return *(v0 + 152);
  }

  *(v0 + 152) = 0x4059000000000000;
  *(v0 + 160) = 0;
  return 100.0;
}

uint64_t sub_1E3C5A6D8()
{
  v1 = v0;
  v2 = sub_1E3E5FB0C();
  v3 = *v2;
  OUTLINED_FUNCTION_111();
  v4 += 94;
  v5 = *v4;
  v6 = v4;
  v7 = v3;
  v473 = v6;
  v501 = v5;
  v5(v3);
  v8 = *sub_1E3E5FB88();
  v9 = *(*v1 + 872);
  v10 = v8;
  v9(v8);
  OUTLINED_FUNCTION_9_2();
  v12 = *(v11 + 1776);
  v12();
  OUTLINED_FUNCTION_2_1();
  (*(v13 + 1656))();

  OUTLINED_FUNCTION_9_2();
  v15 = *(v14 + 1800);
  v15();
  OUTLINED_FUNCTION_2_1();
  (*(v16 + 1656))();

  OUTLINED_FUNCTION_9_2();
  if ((*(v17 + 1920))())
  {
    type metadata accessor for LayoutGrid();
    OUTLINED_FUNCTION_111();
    (*(v18 + 1560))();
    sub_1E3A25914();
    v542[0] = 0x4014000000000000;
    v542[1] = v19;
    *&v543 = 0x4024000000000000;
    *(&v543 + 1) = v20;
    LOBYTE(v544) = 0;
    OUTLINED_FUNCTION_111();
    (*(v21 + 184))(v542);
    *v538 = 0u;
    v539 = 0u;
    LOBYTE(v540) = 1;
    (*(*v1 + 560))(v538);
    v5(0);
    v22 = (v9)(0);
    (v12)(v22);
    sub_1E3C6DC94();

    (v15)(v23);
    sub_1E3C6DE18();

    (v15)(v24);
    OUTLINED_FUNCTION_2_1();
    (*(v25 + 2056))(3, 0);

    (v15)(v26);
    OUTLINED_FUNCTION_2_1();
    (*(v27 + 2080))(3, 0);
  }

  else
  {
    LOBYTE(v548) = 0;
    *v588 = xmmword_1E42A76C0;
    v589 = xmmword_1E42A76B0;
    LOBYTE(v590) = 0;
    __asm { FMOV            V2.2D, #14.0 }

    *v585 = xmmword_1E42A76C0;
    v586 = _Q2;
    LOBYTE(v587) = 0;
    __asm { FMOV            V1.2D, #12.0 }

    *v582 = xmmword_1E42A76A0;
    v583 = _Q1;
    LOBYTE(v584) = 0;
    *v579 = xmmword_1E42A76A0;
    v580 = _Q1;
    LOBYTE(v581) = 0;
    type metadata accessor for UIEdgeInsets();
    v35 = v34;
    v36 = sub_1E3C3DE00(v34);
    OUTLINED_FUNCTION_7_21(v36, v37, v38, v39, v40, v41, v42, v43, v6, v501, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, 0, 0x4028000000000000, 0x4026000000000000, 0x4028000000000000, v548, v549, v550, v551, v552, v553, v554, v555, v556, v557, v558, v559, v560, v561, v562, v563, v564, v565, v566, v567, v568, v569, v570, v571, v572);
    v52 = OUTLINED_FUNCTION_1_181(v44, v45, v46, v47, v48, v49, v50, v51, v474, v502, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, *__dst, *&__dst[8], v547[0], v547[1], v548, v549, v550, v551, v552, v553, v554, v555, v556, v557, v558, v559, v560, v561, v562, v563, v564, v565, v566, v567, v568, v569, v570, v571, v572);
    sub_1E3C2FCB8(v52, v53);
    OUTLINED_FUNCTION_9_104(v54, v55, v56, v57, v58, v59, v60, v61, v475, v503, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, *__dst);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_9_2();
    v70 = OUTLINED_FUNCTION_6_126(v62, v63, v64, v65, v66, v67, v68, v69, v476, v504, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, __dst[0]);
    v71(v70, 1);
    v72 = sub_1E3E61064();
    v73 = *(v72 + 1);
    *v529 = *v72;
    v530 = v73;
    LOBYTE(v531) = 0;
    (*(*v1 + 560))(v529);
    v74 = *v2;
    v75 = *v2;
    v505(v74);
    OUTLINED_FUNCTION_9_2();
    v77 = *(v76 + 1776);
    v77();
    OUTLINED_FUNCTION_2_1();
    (*(v78 + 2056))(1, 0);

    (v77)(v79);
    OUTLINED_FUNCTION_2_1();
    v80 = OUTLINED_FUNCTION_10_7();
    v81(v80);

    (v77)(v82);
    OUTLINED_FUNCTION_2_1();
    v83 = OUTLINED_FUNCTION_10_7();
    v84(v83);

    (v77)(v85);
    OUTLINED_FUNCTION_17_87(5);
    LOBYTE(v585[0]) = v86;
    LOBYTE(v582[0]) = v86;
    sub_1E3C3DE00(&qword_1F5D54AF8);
    OUTLINED_FUNCTION_12_96();
    v87 = sub_1E3C3DE00(&qword_1F5D54AF8);
    LOBYTE(v542[0]) = v573[0];
    v95 = OUTLINED_FUNCTION_13_108(v87, v88, v89, v90, v91, v92, v93, v94, v477, v505, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, *__dst, *&__dst[8], v547[0], v547[1], v548, v549, v550, v551, v552, v553, v554, v555, v556, v557, v558, v559, v560, v561, v562, v563, v564, v565, v566, v567, v568, v569, v570, v571, v572);
    sub_1E3C2FCB8(v95, v96);
    OUTLINED_FUNCTION_4_14();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v105 = OUTLINED_FUNCTION_6_126(v97, v98, v99, v100, v101, v102, v103, v104, v478, v506, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, __dst[0]);
    v106(v105, 54);

    (v77)(v107);
    OUTLINED_FUNCTION_17_87(17);
    LOBYTE(v585[0]) = 22;
    LOBYTE(v582[0]) = 3;
    LOBYTE(v579[0]) = 14;
    sub_1E3C3DE00(&qword_1F5D549D8);
    OUTLINED_FUNCTION_19_83();
    v116 = OUTLINED_FUNCTION_1_181(v108, v109, v110, v111, v112, v113, v114, v115, v479, v507, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, *__dst, *&__dst[8], v547[0], v547[1], v548, v549, v550, v551, v552, v553, v554, v555, v556, v557, v558, v559, v560, v561, v562, v563, v564, v565, v566, v567, v568, v569, v570, v571, v572);
    sub_1E3C2FCB8(v116, v117);
    OUTLINED_FUNCTION_4_14();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v126 = OUTLINED_FUNCTION_6_126(v118, v119, v120, v121, v122, v123, v124, v125, v480, v508, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, __dst[0]);
    v127(v126, 48);

    (v77)(v128);
    __dst[0] = 5;
    LOBYTE(v588[0]) = 3;
    sub_1E3C2FC98();
    LOBYTE(v582[0]) = v585[0];
    sub_1E3C3DE00(&unk_1F5D54B88);
    OUTLINED_FUNCTION_12_96();
    sub_1E3C3DE00(&unk_1F5D54B88);
    LOBYTE(v542[0]) = v573[0];
    v129 = sub_1E3C3DE00(&unk_1F5D54B88);
    LOBYTE(v533[0]) = v538[0];
    v137 = OUTLINED_FUNCTION_20_14(v129, v130, v131, v132, v133, v134, v135, v136, v481, v509, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, __dst[0]);
    sub_1E3C2FCB8(v137, v138);
    OUTLINED_FUNCTION_4_14();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v147 = OUTLINED_FUNCTION_6_126(v139, v140, v141, v142, v143, v144, v145, v146, v482, v510, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, __dst[0]);
    v148(v147, 55);

    (v77)(v149);
    OUTLINED_FUNCTION_2_1();
    (*(v150 + 1984))(5);

    (v77)(v151);
    sub_1E3952C94();
    *__dst = v152;
    *&__dst[8] = v153;
    v547[0] = v154;
    v547[1] = v155;
    LOBYTE(v548) = 0;
    sub_1E3952C94();
    OUTLINED_FUNCTION_16_93(v156, v157, v158, v159);
    *v585 = 0u;
    v586 = 0u;
    LOBYTE(v587) = 1;
    sub_1E3C2FC98();
    *v579 = *v582;
    v580 = v583;
    LOBYTE(v581) = v584;
    v160 = sub_1E3C3DE00(v35);
    OUTLINED_FUNCTION_7_21(v160, v161, v162, v163, v164, v165, v166, v167, v483, v511, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, *__dst, *&__dst[8], v547[0], v547[1], v548, v549, v550, v551, v552, v553, v554, v555, v556, v557, v558, v559, v560, v561, v562, v563, v564, v565, v566, v567, v568, v569, v570, v571, v572);
    v168 = sub_1E3C3DE00(v35);
    LOBYTE(v540) = v544;
    v176 = OUTLINED_FUNCTION_20_14(v168, v169, v170, v171, v172, v173, v174, v175, v484, v512, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v542[0], v542[1], v543, *(&v543 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, __dst[0]);
    sub_1E3C2FCB8(v176, v177);
    OUTLINED_FUNCTION_9_104(v178, v179, v180, v181, v182, v183, v184, v185, v485, v513, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, *__dst);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v194 = OUTLINED_FUNCTION_6_126(v186, v187, v188, v189, v190, v191, v192, v193, v486, v514, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, __dst[0]);
    v195(v194, 0);

    v197 = (v77)(v196);
    v198 = *sub_1E3E5FD88();
    v199 = *(*v197 + 680);
    v200 = v198;
    v199(v198);

    (v77)(v201);
    OUTLINED_FUNCTION_2_1();
    (*(v202 + 2008))(1);

    OUTLINED_FUNCTION_9_2();
    v204 = *(v203 + 1800);
    v204();
    OUTLINED_FUNCTION_2_1();
    (*(v205 + 2056))(3, 0);

    (v204)(v206);
    OUTLINED_FUNCTION_2_1();
    v207 = OUTLINED_FUNCTION_10_7();
    v208(v207);

    (v204)(v209);
    OUTLINED_FUNCTION_2_1();
    v210 = OUTLINED_FUNCTION_10_7();
    v211(v210);

    (v204)(v212);
    __dst[0] = 11;
    LOBYTE(v588[0]) = 5;
    LOBYTE(v585[0]) = 4;
    sub_1E3C2FC98();
    LOBYTE(v579[0]) = v582[0];
    sub_1E3C3DE00(&qword_1F5D54AF8);
    OUTLINED_FUNCTION_19_83();
    v213 = sub_1E3C3DE00(&qword_1F5D54AF8);
    LOBYTE(v538[0]) = v542[0];
    v221 = OUTLINED_FUNCTION_20_14(v213, v214, v215, v216, v217, v218, v219, v220, v487, v515, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, __dst[0]);
    sub_1E3C2FCB8(v221, v222);
    OUTLINED_FUNCTION_10_100();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v231 = OUTLINED_FUNCTION_6_126(v223, v224, v225, v226, v227, v228, v229, v230, v488, v516, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, __dst[0]);
    v232(v231, 54);

    (v204)(v233);
    OUTLINED_FUNCTION_17_87(19);
    LOBYTE(v585[0]) = 25;
    LOBYTE(v582[0]) = 15;
    LOBYTE(v579[0]) = v234;
    sub_1E3C3DE00(&qword_1F5D549D8);
    OUTLINED_FUNCTION_19_83();
    v243 = OUTLINED_FUNCTION_1_181(v235, v236, v237, v238, v239, v240, v241, v242, v489, v517, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, *__dst, *&__dst[8], v547[0], v547[1], v548, v549, v550, v551, v552, v553, v554, v555, v556, v557, v558, v559, v560, v561, v562, v563, v564, v565, v566, v567, v568, v569, v570, v571, v572);
    sub_1E3C2FCB8(v243, v244);
    OUTLINED_FUNCTION_10_100();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v253 = OUTLINED_FUNCTION_6_126(v245, v246, v247, v248, v249, v250, v251, v252, v490, v518, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, __dst[0]);
    v254(v253, 48);

    (v204)(v255);
    sub_1E3952C94();
    *__dst = v256;
    *&__dst[8] = v257;
    v547[0] = v258;
    v547[1] = v259;
    LOBYTE(v548) = 0;
    sub_1E3952C94();
    OUTLINED_FUNCTION_16_93(v260, v261, v262, v263);
    sub_1E3C2FC98();
    *v582 = *v585;
    v583 = v586;
    LOBYTE(v584) = v587;
    sub_1E3C3DE00(v35);
    *v576 = *v579;
    v577 = v580;
    LOBYTE(v578) = v581;
    sub_1E3C3DE00(v35);
    *v542 = *v573;
    v543 = v574;
    LOBYTE(v544) = v575;
    v264 = sub_1E3C3DE00(v35);
    LOBYTE(v536) = v540;
    v272 = OUTLINED_FUNCTION_20_14(v264, v265, v266, v267, v268, v269, v270, v271, v491, v519, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v538[0], v538[1], v539, *(&v539 + 1), v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, __dst[0]);
    sub_1E3C2FCB8(v272, v273);
    OUTLINED_FUNCTION_9_104(v274, v275, v276, v277, v278, v279, v280, v281, v492, v520, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, *__dst);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v290 = OUTLINED_FUNCTION_6_126(v282, v283, v284, v285, v286, v287, v288, v289, v493, v521, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, __dst[0]);
    v291(v290, 0);

    (v204)(v292);
    sub_1E3C8BE74();
    sub_1E3DEFBE8(1);
  }

  OUTLINED_FUNCTION_111();
  v293 += 219;
  v294 = *v293;
  v295 = (*v293)();
  (*(*v295 + 2056))(1, 0);

  (v294)(v296);
  OUTLINED_FUNCTION_2_1();
  v297 = OUTLINED_FUNCTION_10_7();
  v298(v297);

  (v294)(v299);
  OUTLINED_FUNCTION_2_1();
  v300 = OUTLINED_FUNCTION_10_7();
  v301(v300);

  (v294)(v302);
  OUTLINED_FUNCTION_17_87(10);
  LOBYTE(v585[0]) = 5;
  LOBYTE(v582[0]) = 5;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  OUTLINED_FUNCTION_12_96();
  v303 = sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v533[0]) = v573[0];
  v311 = OUTLINED_FUNCTION_13_108(v303, v304, v305, v306, v307, v308, v309, v310, v473, v501, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, *__dst, *&__dst[8], v547[0], v547[1], v548, v549, v550, v551, v552, v553, v554, v555, v556, v557, v558, v559, v560, v561, v562, v563, v564, v565, v566, v567, v568, v569, v570, v571, v572);
  sub_1E3C2FCB8(v311, v312);
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v321 = OUTLINED_FUNCTION_6_126(v313, v314, v315, v316, v317, v318, v319, v320, v494, v522, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, __dst[0]);
  v322(v321, 54);

  (v294)(v323);
  OUTLINED_FUNCTION_17_87(22);
  LOBYTE(v585[0]) = 25;
  LOBYTE(v582[0]) = 17;
  LOBYTE(v579[0]) = v324;
  sub_1E3C3DE00(&qword_1F5D549D8);
  OUTLINED_FUNCTION_19_83();
  v333 = OUTLINED_FUNCTION_1_181(v325, v326, v327, v328, v329, v330, v331, v332, v495, v523, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, *__dst, *&__dst[8], v547[0], v547[1], v548, v549, v550, v551, v552, v553, v554, v555, v556, v557, v558, v559, v560, v561, v562, v563, v564, v565, v566, v567, v568, v569, v570, v571, v572);
  sub_1E3C2FCB8(v333, v334);
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v343 = OUTLINED_FUNCTION_6_126(v335, v336, v337, v338, v339, v340, v341, v342, v496, v524, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, __dst[0]);
  v344(v343, 48);

  (v294)(v345);
  *__dst = xmmword_1E4298710;
  *v547 = xmmword_1E42C0790;
  LOBYTE(v548) = 0;
  *v588 = xmmword_1E4298710;
  v589 = xmmword_1E42C0790;
  LOBYTE(v590) = 0;
  *v585 = xmmword_1E42B9700;
  v586 = xmmword_1E42C0790;
  LOBYTE(v587) = 0;
  *v582 = xmmword_1E4296C50;
  v583 = xmmword_1E4297540;
  LOBYTE(v584) = 0;
  v346 = *(MEMORY[0x1E69DDCE0] + 16);
  *v579 = *MEMORY[0x1E69DDCE0];
  v580 = v346;
  LOBYTE(v581) = 0;
  type metadata accessor for UIEdgeInsets();
  v348 = v347;
  v349 = sub_1E3C3DE00(v347);
  OUTLINED_FUNCTION_7_21(v349, v350, v351, v352, v353, v354, v355, v356, v497, v525, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, *__dst, *&__dst[8], v547[0], v547[1], v548, v549, v550, v551, v552, v553, v554, v555, v556, v557, v558, v559, v560, v561, v562, v563, v564, v565, v566, v567, v568, v569, v570, v571, v572);
  v365 = OUTLINED_FUNCTION_1_181(v357, v358, v359, v360, v361, v362, v363, v364, v498, v526, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, *__dst, *&__dst[8], v547[0], v547[1], v548, v549, v550, v551, v552, v553, v554, v555, v556, v557, v558, v559, v560, v561, v562, v563, v564, v565, v566, v567, v568, v569, v570, v571, v572);
  sub_1E3C2FCB8(v365, v366);
  OUTLINED_FUNCTION_9_104(v367, v368, v369, v370, v371, v372, v373, v374, v499, v527, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, *__dst);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v383 = OUTLINED_FUNCTION_6_126(v375, v376, v377, v378, v379, v380, v381, v382, v500, v528, v529[0], v529[1], v530, *(&v530 + 1), v531, v532, v533[0], v533[1], v534, v535, v536, v537, v538[0], v538[1], v539, *(&v539 + 1), v540, v541, v542[0], v542[1], v543, *(&v543 + 1), v544, v545, __dst[0]);
  v384(v383, 0);

  v386 = (v294)(v385);
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v387 = *(*v386 + 680);
  v388 = v348;
  v387(v348);

  (v294)(v389);
  OUTLINED_FUNCTION_2_1();
  (*(v390 + 1936))(2);

  (v294)(v391);
  OUTLINED_FUNCTION_2_1();
  (*(v392 + 2008))(1);

  v394 = (v294)(v393);
  sub_1E3E5FD88();
  OUTLINED_FUNCTION_7_16();
  v395 = *(*v394 + 872);
  v396 = v348;
  v395(v348);

  (v294)(v397);
  OUTLINED_FUNCTION_2_1();
  (*(v398 + 2272))(1);

  sub_1E3C5C49C();
  OUTLINED_FUNCTION_9_2();
  v400 = *(v399 + 1824);
  v400();
  OUTLINED_FUNCTION_2_1();
  (*(v401 + 1352))(0);

  (v400)(v402);
  OUTLINED_FUNCTION_2_1();
  (*(v403 + 512))(2);

  (v400)(v404);
  OUTLINED_FUNCTION_2_1();
  (*(v405 + 1808))(3);

  v407 = (v400)(v406);
  sub_1E3E5FB0C();
  OUTLINED_FUNCTION_7_16();
  v408 = *(*v407 + 776);
  v409 = v348;
  v408(v348);

  OUTLINED_FUNCTION_9_2();
  LOBYTE(v348) = (*(v410 + 1920))();
  v400();
  if (v348)
  {
    sub_1E418A524();
    OUTLINED_FUNCTION_8();
    (*(v411 + 440))();

    (v400)(v412);
    OUTLINED_FUNCTION_2_1();
    (*(v413 + 2240))(1);

    v415 = (v400)(v414);
    sub_1E39537A8();
    *&v591 = v416;
    *(&v591 + 1) = v417;
    *&v592 = v418;
    *(&v592 + 1) = v419;
    v593 = 0;
    (*(*v415 + 560))(&v591);

    (v400)(v420);
    OUTLINED_FUNCTION_2_1();
    (*(v421 + 312))(0x4048000000000000, 0);

    v423 = (v400)(v422);
    memset(__dst, 0, sizeof(__dst));
    __asm { FMOV            V0.2D, #10.0 }

    *v547 = _Q0;
    LOBYTE(v548) = 0;
    (*(*v423 + 160))(__dst);

    (v400)(v425);
    OUTLINED_FUNCTION_2_1();
    (*(v426 + 1712))(1);
  }

  else
  {
    OUTLINED_FUNCTION_8();
    (*(v427 + 2240))(0);

    v429 = (v400)(v428);
    v591 = 0u;
    v592 = 0u;
    v593 = 1;
    (*(*v429 + 560))(&v591);

    (v400)(v430);
    OUTLINED_FUNCTION_2_1();
    (*(v431 + 360))(0, 1);

    v433 = (v400)(v432);
    (*(*v433 + 160))(&v591);

    (v400)(v434);
    OUTLINED_FUNCTION_2_1();
    (*(v435 + 312))(0, 1);
  }

  type metadata accessor for RelationalLayout();
  v436 = sub_1E4177030();
  sub_1E3952C88();
  nullsub_1(v437, v438);
  sub_1E41776B0(v439, v440, v441, v442);
  OUTLINED_FUNCTION_9_2();
  (*(v443 + 1776))();
  OUTLINED_FUNCTION_2_1();
  v445 = *(v444 + 1424);

  v445(v446);

  OUTLINED_FUNCTION_9_2();
  v448 = *(v447 + 1872);
  v448();
  sub_1E3952C78();
  *&v591 = v449;
  *(&v591 + 1) = v450;
  *&v592 = v451;
  *(&v592 + 1) = v452;
  v593 = 0;
  OUTLINED_FUNCTION_8();
  (*(v453 + 160))(&v591);

  v455 = (v448)(v454);
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v456 = *(*v455 + 680);
  v457 = v436;
  v456(v436);

  v459 = (v448)(v458);
  sub_1E3E60364();
  OUTLINED_FUNCTION_7_16();
  v460 = *(*v459 + 872);
  v461 = v436;
  v460(v436);

  OUTLINED_FUNCTION_9_2();
  v463 = (*(v462 + 1776))();
  sub_1E3C37CBC(v463, 23);

  OUTLINED_FUNCTION_9_2();
  v465 = (*(v464 + 1800))();
  sub_1E3C37CBC(v465, 15);

  OUTLINED_FUNCTION_9_2();
  v467 = (*(v466 + 1752))();
  sub_1E3C37CBC(v467, 17);

  OUTLINED_FUNCTION_9_2();
  v469 = (*(v468 + 1824))();
  sub_1E3C37CBC(v469, 39);

  OUTLINED_FUNCTION_9_2();
  v471 = (*(v470 + 1872))();
  sub_1E3C37CBC(v471, 67);
}

uint64_t sub_1E3C5C2F4(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 161);
  *(v1 + 161) = a1;
  result = swift_beginAccess();
  if (v3 != *(v1 + 161))
  {
    return sub_1E3C5A6D8();
  }

  return result;
}

uint64_t sub_1E3C5C398()
{
  *(v0 + 152) = 0;
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 160) = 1;
  v1 = sub_1E3C2F9A0();

  sub_1E3C5A6D8();

  return v1;
}

uint64_t sub_1E3C5C3EC(__objc2_class **a1)
{
  result = sub_1E373F6E0();
  if ((result & 1) != 0 && *a1 == _TtC8VideosUI20PlaybackStatusLayout)
  {
    *(v1 + 136) = a1;
    swift_retain_n();

    sub_1E3C5C49C();
  }

  return result;
}

uint64_t sub_1E3C5C49C()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 1848))();
  v6[0] = 0x4028000000000000;
  memset(&v6[1], 0, 25);
  v30 = 0x4030000000000000;
  v31 = 0;
  v33 = 0;
  v32 = 0;
  v34 = 0;
  v25 = 0x402C000000000000;
  v26 = 0;
  v28 = 0;
  v27 = 0;
  v29 = 0;
  type metadata accessor for UIEdgeInsets();
  v2 = v1;
  sub_1E3C3DE00(v1);
  v19 = v22;
  v20 = v23;
  v21 = v24;
  sub_1E3C3DE00(v2);
  v13 = v16;
  v14 = v17;
  v15 = v18;
  sub_1E3C3DE00(v2);
  v7 = v10;
  v8 = v11;
  v9 = v12;
  sub_1E3C2FCB8(v6, __src);
  memcpy(v6, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v3 + 1600))(v6, 0, v4 & 1, v2);
}

uint64_t sub_1E3C5C618(uint64_t a1, void *a2, char a3)
{
  v4 = a1;
  sub_1E3C35CF4(a1, a2);
  v5 = sub_1E3890920(v4, a3);

  return sub_1E3C5C2F4(v5);
}

uint64_t sub_1E3C5C668()
{
}

uint64_t sub_1E3C5C6B8()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3C5C710()
{
  v0 = sub_1E3C5C6B8();

  return MEMORY[0x1EEE6BDC0](v0, 162, 7);
}

uint64_t sub_1E3C5C740(char a1, uint64_t a2, char a3)
{
  v3 = sub_1E3890920(a1, a3);
  OUTLINED_FUNCTION_8();
  return (v3 ^ (*(v4 + 1920))()) & 1;
}

void sub_1E3C5C7E4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI15SyndicationCell_layout;
  OUTLINED_FUNCTION_5_0();
  v3 = *&v1[v2];
  if (v3)
  {
    v4 = *(*v3 + 744);
    v5 = swift_retain_n();
    v6 = v4(v5);
    [v1 setBackgroundColor_];

    v7 = (*(*v3 + 864))();

    [v1 setHighlightedBackgroundColor_];
  }
}

uint64_t sub_1E3C5C920(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15SyndicationCell_layout;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_1E3C5C7E4();
}

void (*sub_1E3C5C990(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E3C5C9F4;
}

void sub_1E3C5C9F4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E3C5C7E4();
  }
}

void *sub_1E3C5CA28()
{
  v1 = OBJC_IVAR____TtC8VideosUI15SyndicationCell_titleLabel;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3C5CA70()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3C5CAEC()
{
  v1 = OBJC_IVAR____TtC8VideosUI15SyndicationCell_subtitleLabel;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3C5CB34()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3C5CBB0(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

void *sub_1E3C5CC30()
{
  v1 = OBJC_IVAR____TtC8VideosUI15SyndicationCell_imageView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3C5CC78()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3C5CCF4()
{
  v1 = OBJC_IVAR____TtC8VideosUI15SyndicationCell_attributionView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3C5CD3C(void *a1, uint64_t *a2)
{
  v5 = *a2;
  swift_beginAccess();
  v6 = *&v2[v5];
  *&v2[v5] = a1;
  v7 = a1;
  v8 = [v2 vuiContentView];
  v9 = *a2;
  OUTLINED_FUNCTION_5_0();
  [v8 vui:*&v2[v9] addSubview:v6 oldView:?];
}

uint64_t sub_1E3C5CDF0()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3C5CE6C()
{
  v1 = OBJC_IVAR____TtC8VideosUI15SyndicationCell_badgeView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3C5CEA8(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15SyndicationCell_badgeView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v6 = a1;
  v7 = v5();
  if (v7)
  {
    v8 = v7;
    v9 = OBJC_IVAR____TtC8VideosUI15SyndicationCell_badgeView;
    OUTLINED_FUNCTION_5_0();
    [v8 vui:*(v1 + v9) addSubview:v4 oldView:?];
  }
}

uint64_t sub_1E3C5CF7C()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

id sub_1E3C5CFF8()
{
  v1 = OBJC_IVAR____TtC8VideosUI15SyndicationCell____lazy_storage___bottomSeparatorView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI15SyndicationCell____lazy_storage___bottomSeparatorView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI15SyndicationCell____lazy_storage___bottomSeparatorView];
  }

  else
  {
    type metadata accessor for SeparatorView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = [v0 vuiContentView];
    [v5 vui:v4 addSubview:0 oldView:?];

    v6 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1E3C5D0A8()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_attributionView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_badgeView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell____lazy_storage___bottomSeparatorView) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_syndicationId);
  v2 = type metadata accessor for SyndicationCell();
  *v1 = 0;
  v1[1] = 0;
  v13 = v0;
  v14 = v2;
  v3 = OUTLINED_FUNCTION_2_0();
  v6 = objc_msgSendSuper2(v4, v5, v3);
  [v6 setAutoresizingMask_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF379F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E4297BE0;
  *(v7 + 32) = sub_1E3280A90(0, &unk_1ECF35CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A00);
  v8 = sub_1E42062A4();

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[4] = sub_1E3C5F1D0;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1E3790FBC;
  v12[3] = &block_descriptor_81;
  v10 = _Block_copy(v12);

  [v6 vui:v8 registerForTraitChanges:v10 withHandler:?];
  _Block_release(v10);

  return v6;
}

void sub_1E3C5D300()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_attributionView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_badgeView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell____lazy_storage___bottomSeparatorView) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_syndicationId);
  *v1 = 0;
  v1[1] = 0;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E3C5D3D8(char a1, double a2, double a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_4_154();
  v9 = (*(v8 + 144))();
  if (!v9)
  {
    return a2;
  }

  v10 = v9;
  v137 = a3;
  v11 = v138;
  (*(*v9 + 176))(v138);
  v12 = MEMORY[0x1E69DDCE0];
  if (v139)
  {
    v13 = *(MEMORY[0x1E69DDCE0] + 8);
    v14 = *(MEMORY[0x1E69DDCE0] + 16);
    v11 = MEMORY[0x1E69DDCE0];
    v15 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v13 = *&v138[1];
    v14 = *&v138[2];
    v15 = *&v138[3];
  }

  v16 = *v11;
  sub_1E37DAE10();
  OUTLINED_FUNCTION_30();
  (*(v17 + 152))(v140);
  v18 = *v140;
  v131 = *&v140[1];
  v19 = *&v140[3];
  v135 = *&v140[2];

  if (v141)
  {
    v18 = *v12;
    v131 = v12[1];
    v19 = v12[3];
    v135 = v12[2];
  }

  v132 = v18;
  v20 = a2 - sub_1E3952BE0(v16, v13, v14, v15);
  v21 = [v3 vuiTraitCollection];
  v22 = [v21 isAXEnabled];

  OUTLINED_FUNCTION_23_0();
  v24 = (*(v23 + 216))();
  if (v24)
  {

    v25 = [v4 vuiTraitCollection];
    v26 = [v25 isAXEnabled];

    sub_1E37DAE10();
    OUTLINED_FUNCTION_30();
    (*(v27 + 152))(v146);
    v28 = *v146;
    v29 = *&v146[1];

    v31 = v12[1];
    if (v147)
    {
      v28 = *v12;
      v29 = v12[1];
    }

    (*(*v10 + 176))(v148, v30);
    if ((v149 & 1) == 0)
    {
      v31 = *&v148[1];
    }

    v32 = *sub_1E37DAE10();
    v134 = (*(v32 + 2288))();
    v34 = v33;

    v124 = v29 + v31;
    rect = v34;
    if (!v26)
    {
      v28 = (v137 - v34) * 0.5;
    }

    if ((a1 & 1) == 0)
    {
      [v4 effectiveUserInterfaceLayoutDirection];
      OUTLINED_FUNCTION_23_0();
      v36 = (*(v35 + 216))();
      if (v36)
      {
        v37 = v36;
        [v4 bounds];
        OUTLINED_FUNCTION_2_6();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        [v37 setFrame_];
      }
    }

    if (v22)
    {
      goto LABEL_22;
    }

    v38 = v134;
    v20 = v20 - (v19 + v134);
  }

  else
  {
    v124 = 0.0;
    v28 = 0.0;
    v38 = 0.0;
    rect = 0.0;
    if (v22)
    {
      v134 = 0.0;
      rect = 0.0;
      goto LABEL_22;
    }
  }

  v134 = v38;
  v13 = v19 + v13 + v38;
LABEL_22:
  v129 = v20;
  OUTLINED_FUNCTION_23_0();
  v133 = *(v39 + 168);
  v40 = v133();
  v130 = v22;
  if (v40 || (OUTLINED_FUNCTION_23_0(), (v40 = (*(v41 + 192))()) != 0))
  {
    v42 = v28;

    OUTLINED_FUNCTION_23_0();
    v44 = (*(v43 + 168))();
    v45 = 0.0;
    v46 = 0.0;
    v47 = 0.0;
    v48 = 0.0;
    v49 = 0.0;
    v50 = 0.0;
    v51 = 0.0;
    if (v44)
    {
      v52 = v44;
      v53 = sub_1E37BD068();
      sub_1E3C8B764(v53, v129, 0.0);
      v55 = v54;

      OUTLINED_FUNCTION_23_0();
      v57 = (*(v56 + 192))();
      if (v57)
      {
        v58 = v57;
        v59 = sub_1E374EA2C();
        sub_1E3C8B764(v59, v129, 0.0);
        v48 = v60;

        sub_1E374EA2C();
        OUTLINED_FUNCTION_30();
        (*(v61 + 152))(v148);

        if ((v149 & 1) == 0)
        {
          v45 = *v148;
        }

        v62 = v52;
        [v58 topMarginToLabel:v62 withBaselineMargin:v45];
        v64 = v63;

        v65 = v55 + v64;
        v45 = v13;
        v49 = v13;
        v50 = v129;
        v46 = v65;
        v51 = v55;
        v47 = v129;
      }

      else
      {

        v48 = 0.0;
        v49 = v13;
        v50 = v129;
        v51 = v55;
        v47 = 0.0;
      }
    }

    v66 = 0;
    v125 = v49;
    v126 = v50;
    v127 = v51;
    CGRectGetHeight(*&v49);
    if (!OUTLINED_FUNCTION_9_105())
    {
      sub_1E374EA2C();
      OUTLINED_FUNCTION_30();
      (*(v67 + 152))(v142);

      v68 = v142[0];
      v69 = v143;
      OUTLINED_FUNCTION_23_0();
      v71 = (*(v70 + 192))();
      if (v71)
      {
        v72 = v71;
        if (v69)
        {
          v68 = 0.0;
        }

        v73 = v133();
        [v72 topMarginToLabel:v73 withBaselineMargin:v68];
      }
    }
  }

  else
  {
    v42 = v28;
    v47 = 0.0;
    v48 = 0.0;
    v45 = 0.0;
    v126 = 0.0;
    v127 = 0.0;
    v125 = 0.0;
    v46 = 0.0;
  }

  OUTLINED_FUNCTION_23_0();
  v123 = *(v74 + 240);
  v75 = v123();
  v128 = v45;
  v121 = v42;
  if (v75)
  {

    v76 = sub_1E3E0B68C();
    OUTLINED_FUNCTION_23_0();
    v78 = (*(v77 + 192))();
    v120 = a2;
    if (v78 || (v78 = v133()) != 0)
    {
      v79 = v78;
      [v78 bottomMarginWithBaselineMargin_];
      v81 = v80;
    }

    else
    {
      v81 = 0.0;
    }

    v82 = 0.0;
    v83 = OUTLINED_FUNCTION_9_105();
    OUTLINED_FUNCTION_23_0();
    v85 = (*(v84 + 240))();
    v86 = 0.0;
    v87 = 0.0;
    v88 = 0;
    if (v85)
    {
      v89 = v85;
      if (v83)
      {
        v90 = v127;
      }

      else
      {
        v90 = v48;
      }

      if (v83)
      {
        v91 = v126;
      }

      else
      {
        v91 = v47;
      }

      if (v83)
      {
        v92 = 0.0;
      }

      else
      {
        v92 = v46;
      }

      if (v83)
      {
        v93 = v125;
      }

      else
      {
        v93 = v128;
      }

      [v85 prepareLayoutWithMaxWidth_];
      [v89 sizeThatFits_];
      v94 = v81;
      v96 = v95;
      v150.origin.x = v93;
      v150.origin.y = v92;
      v150.size.width = v91;
      v150.size.height = v90;
      MinX = CGRectGetMinX(v150);
      v151.origin.x = v93;
      v151.origin.y = v92;
      v151.size.width = v91;
      v151.size.height = v90;
      v82 = MinX;
      MaxY = CGRectGetMaxY(v151);

      v88 = v96;
      v86 = v94 + MaxY;
      v87 = v129;
    }

    v99 = v82;
    CGRectGetHeight(*(&v86 - 1));
    sub_1E3E0B68C();
    a2 = v120;
  }

  OUTLINED_FUNCTION_23_0();
  v122 = *(v100 + 264);
  v101 = v122();
  if (v101)
  {
    v102 = v101;
    [v101 sizeThatFits_];
    sub_1E3E0B6CC();
    OUTLINED_FUNCTION_30();
    (*(v103 + 152))(&v144);

    sub_1E3E0B6CC();
    OUTLINED_FUNCTION_30();
    (*(v104 + 152))(v145);
  }

  (*(*v10 + 176))(v146);
  sub_1E37DAE10();
  OUTLINED_FUNCTION_30();
  (*(v105 + 152))(v148);

  v106 = sub_1E3C5CFF8();
  OUTLINED_FUNCTION_4_154();
  (*(v107 + 112))();

  v108 = OBJC_IVAR____TtC8VideosUI15SyndicationCell____lazy_storage___bottomSeparatorView;
  OUTLINED_FUNCTION_17_88();
  v110 = *(v109 + 112);
  v112 = v111;
  v110();

  if (a1)
  {
    v113 = v135;
    v114 = v132;
    v115 = v130;
  }

  else
  {
    [v4 effectiveUserInterfaceLayoutDirection];
    v116 = *&v4[v108];
    [v4 bounds];
    OUTLINED_FUNCTION_2_6();
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    [v116 setFrame_];

    v115 = v130;
    if (v130)
    {
      v152.origin.x = v124;
      v152.origin.y = v121;
      v152.size.width = v134;
      v152.size.height = rect;
      CGRectGetMaxY(v152);
    }

    else
    {
      [v4 effectiveUserInterfaceLayoutDirection];
    }

    v113 = v135;
    VUIRoundValue();
    VUIRoundValue();
    v117 = VUIRoundValue();
    if ((v133)(v117))
    {
      OUTLINED_FUNCTION_11_20();
      OUTLINED_FUNCTION_2_6();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      OUTLINED_FUNCTION_22_2();
    }

    OUTLINED_FUNCTION_23_0();
    if ((*(v118 + 192))())
    {
      OUTLINED_FUNCTION_11_20();
      OUTLINED_FUNCTION_2_6();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      OUTLINED_FUNCTION_22_2();
    }

    v114 = v132;
    if (v123())
    {
      OUTLINED_FUNCTION_11_20();
      OUTLINED_FUNCTION_2_6();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      OUTLINED_FUNCTION_22_2();
    }

    if (v122())
    {
      OUTLINED_FUNCTION_11_20();
      OUTLINED_FUNCTION_2_6();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      OUTLINED_FUNCTION_22_2();
    }
  }

  if (v115)
  {
    sub_1E3952BD8(v114, v131, v113);
  }

  return a2;
}

uint64_t sub_1E3C5E1E4(SEL *a1, uint64_t a2)
{
  v13.receiver = v2;
  v13.super_class = type metadata accessor for SyndicationCell();
  objc_msgSendSuper2(&v13, *a1);
  v5 = sub_1E3285D14();
  v6 = *v5;
  v7 = &v2[OBJC_IVAR____TtC8VideosUI15SyndicationCell_syndicationId];
  v8 = *&v2[OBJC_IVAR____TtC8VideosUI15SyndicationCell_syndicationId];
  v9 = *(v7 + 1);
  v10 = *((*MEMORY[0x1E69E7D40] & **v5) + 0x118);

  v11 = v6;
  v10(v8, v9, a2);
}

uint64_t sub_1E3C5E318()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SyndicationCell();
  objc_msgSendSuper2(&v3, sel_vui_prepareForReuse);
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_syndicationId);
  *v1 = 0;
  v1[1] = 0;

  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xF8))(0);
}

uint64_t sub_1E3C5E3E4(__int16 *a1, void *a2)
{
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = *(*a1 + 392);
    v9 = a2;
    v10 = v8();
    if (v10)
    {
      v11 = v10;
      if (*v10 == _TtC8VideosUI21SyndicationCellLayout)
      {
        v12 = (*(*a1 + 488))();
        if (v12)
        {
          v13 = v12;
          if (*(v12 + 16))
          {
            v101 = a1;
            v14 = MEMORY[0x1E69E7D40];
            v15 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x98);
            v104 = a2;

            v15(v16);
            v17 = type metadata accessor for UIFactory();
            v18 = sub_1E373E010(23, v13);
            v19 = (*((*v14 & *v9) + 0xA8))();
            OUTLINED_FUNCTION_12_97();
            v20 = sub_1E37BD068();
            sub_1E3280A90(0, &qword_1EE23AD40);
            v103 = v17;
            sub_1E393D92C(v18, v19, &v106, v20);

            sub_1E325F748(&v106, &qword_1ECF296C0);
            v21 = OUTLINED_FUNCTION_21_63();
            v22(v21);
            sub_1E373E010(15, v13);
            OUTLINED_FUNCTION_8_105();
            v24 = (*(v23 + 192))();
            OUTLINED_FUNCTION_12_97();
            sub_1E374EA2C();
            v25 = OUTLINED_FUNCTION_16_94();
            sub_1E393D92C(v25, v26, v27, v28);

            sub_1E325F748(&v106, &qword_1ECF296C0);
            OUTLINED_FUNCTION_8_105();
            v29 = OUTLINED_FUNCTION_21_63();
            v30(v29);
            sub_1E373E010(39, v13);
            OUTLINED_FUNCTION_8_105();
            v32 = *(v31 + 216);
            v33 = v32();
            OUTLINED_FUNCTION_12_97();
            v102 = v11;
            sub_1E37DAE10();
            sub_1E3280A90(0, &qword_1EE23B360);
            v34 = OUTLINED_FUNCTION_16_94();
            sub_1E393D92C(v34, v35, v36, v37);
            v38 = MEMORY[0x1E69E7D40];

            sub_1E325F748(&v106, &qword_1ECF296C0);
            OUTLINED_FUNCTION_4_154();
            v39 = OUTLINED_FUNCTION_21_63();
            v41 = v40(v39);
            v42 = (v32)(v41);
            if (v42)
            {
              v43 = v42;
              [v42 setVuiUserInteractionEnabled_];
            }

            v44 = sub_1E373E010(155, v13);

            v46 = v101;
            if (v44)
            {
              v47 = (*(*v44 + 488))(v45);
              if (v47)
              {
                v48 = sub_1E373E010(53, v47);

                if (v48)
                {
                  OUTLINED_FUNCTION_4_154();
                  v50 = *(v49 + 264);

                  v52 = v50(v51);
                  sub_1E3280A90(0, &qword_1EE23AE80);
                  v106 = 0u;
                  v107 = 0u;
                  v108 = 0;
                  sub_1E393D92C(v48, v52, &v106, 0);

                  sub_1E325F748(&v106, &qword_1ECF296C0);
                  v53 = OUTLINED_FUNCTION_21_63();
                  v54(v53);
                }

                goto LABEL_17;
              }
            }

            OUTLINED_FUNCTION_4_154();
            (*(v56 + 272))(0);
LABEL_17:
            LOBYTE(v105[0]) = 0;
            v57 = (*v46 + 776);
            v58 = *v57;
            (*v57)(&v106, v105, &unk_1F5D5E0F8, &off_1F5D5CAF8);
            if (*(&v107 + 1))
            {
              if (OUTLINED_FUNCTION_21_67())
              {
                v103 = v58;
                v60 = v105[0];
                v59 = v105[1];
                v100 = sub_1E3285D14();
                OUTLINED_FUNCTION_17_88();
                v62 = *(v61 + 272);
                v64 = v63;
                v65 = v62(v60, v59);

                if (v65)
                {
                  v66 = v65;
                  v67 = (v9 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_syndicationId);
                  *v67 = v60;
                  v67[1] = v59;

                  OUTLINED_FUNCTION_4_154();
                  v69 = *(v68 + 240);
                  v70 = v69();
                  if (v70)
                  {
                    v71 = v70;
                    [v70 frame];
                    v73 = v72;
                    v75 = v74;
                    v77 = v76;
                    v79 = v78;
                  }

                  else
                  {
                    v73 = 0.0;
                    v75 = 0.0;
                    v77 = 0.0;
                    v79 = 0.0;
                  }

                  v80 = *((*v38 & **v100) + 0x108);
                  v81 = *v100;
                  v82 = v80(v66);

                  v83 = (*((*v38 & *v9) + 0xF8))(v82);
                  v84 = (v69)(v83);
                  if (v84)
                  {
                    v85 = v84;
                    [v84 setFrame_];
                  }

                  v58 = v103;
                }

                else
                {

                  v58 = v103;
                }
              }
            }

            else
            {
              sub_1E325F748(&v106, &unk_1ECF296E0);
            }

            LOBYTE(v105[0]) = 38;
            v58(&v106, v105, &unk_1F5D5DAC8, &off_1F5D5C998);
            if (*(&v107 + 1))
            {
              v86 = OUTLINED_FUNCTION_21_67();
              a2 = v104;
              if (v86)
              {
                v87 = LOBYTE(v105[0]);
              }

              else
              {
                v87 = 0;
              }
            }

            else
            {
              sub_1E325F748(&v106, &unk_1ECF296E0);
              v87 = 0;
              a2 = v104;
            }

            v88 = sub_1E3C5CFF8();
            [v88 setHidden_];

            return a2;
          }
        }

        v55 = v9;
        return a2;
      }
    }
  }

  else
  {
    v90 = sub_1E324FBDC();
    (*(v5 + 16))(v7, v90, v4);

    v91 = v7;
    v92 = sub_1E41FFC94();
    v93 = sub_1E4206814();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *&v106 = v95;
      *v94 = 136315138;
      sub_1E384EE08(a1[49]);
      v98 = sub_1E3270FC8(v96, v97, &v106);

      *(v94 + 4) = v98;
      _os_log_impl(&dword_1E323F000, v92, v93, "SyndicationCell: Failed to get correct cell for [%s]", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v95);
      MEMORY[0x1E69143B0](v95, -1, -1);
      MEMORY[0x1E69143B0](v94, -1, -1);
    }

    (*(v5 + 8))(v91, v4);
  }

  result = sub_1E42076B4();
  __break(1u);
  return result;
}

id sub_1E3C5EF18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyndicationCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E3C5EFFC()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xF0))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 contextMenuItems];

  if (v3)
  {
    sub_1E3280A90(0, &unk_1ECF3BDE0);
    v4 = sub_1E42062B4();

    if (v4 >> 62)
    {
      sub_1E3280A90(0, &qword_1ECF2BA40);

      v3 = sub_1E42076C4();
      swift_bridgeObjectRelease_n();
    }

    else
    {

      sub_1E42079D4();
      sub_1E3280A90(0, &qword_1ECF2BA40);

      return v4;
    }
  }

  return v3;
}

void sub_1E3C5F1D0()
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong vuiCollectionViewCellInteractor];
    if (v2)
    {
      v3 = v2;
      if ([v2 respondsToSelector_])
      {
        [v3 vui:v1 cellNeedsReloading:?];
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1E3C5F26C(uint64_t a1)
{
  v2 = (*(*a1 + 464))(a1);
  if (v2)
  {
    v3 = v2;
    result = sub_1E32AE9B0(v2);
    v5 = result;
    for (i = 0; ; ++i)
    {
      if (v5 == i)
      {

        goto LABEL_19;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1E6911E60](i, v3);
      }

      else
      {
        if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_40;
      }

      sub_1E3742F1C();
      sub_1E4206254();
      sub_1E4206254();
      if (v21 == v19 && v22 == v20)
      {
        break;
      }

      v8 = sub_1E42079A4();

      if (v8)
      {
        goto LABEL_17;
      }
    }

LABEL_17:

    type metadata accessor for ImageViewModel();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      goto LABEL_35;
    }
  }

LABEL_19:
  v9 = (*(*a1 + 488))();
  if (!v9)
  {
LABEL_35:
    MEMORY[0x1EEE9AC00](v9);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31990);
    sub_1E4148DE0(sub_1E3C5F74C);

    return 0;
  }

  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v16 = v15;
LABEL_27:
      sub_1E3742F1C();

      sub_1E4206254();
      sub_1E4206254();
      if (v21 == v19 && v22 == v20)
      {
        break;
      }

      v18 = sub_1E42079A4();

      if (v18)
      {
        goto LABEL_37;
      }

      v13 &= v13 - 1;

      v15 = v16;
      if (!v13)
      {
        goto LABEL_24;
      }
    }

LABEL_37:

    type metadata accessor for ImageViewModel();
    v9 = swift_dynamicCastClass();
    if (!v9)
    {
    }

    goto LABEL_35;
  }

LABEL_24:
  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      goto LABEL_35;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1E3C5F680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 == 1)
  {
    v3 = MEMORY[0x1E697DBB8];
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    v3 = MEMORY[0x1E697DBA8];
LABEL_5:
    v4 = *v3;
    v5 = sub_1E4200B44();
    (*(*(v5 - 8) + 104))(a2, v4, v5);
    v6 = a2;
    v7 = 0;
    v8 = v5;
    goto LABEL_7;
  }

  v8 = sub_1E4200B44();
  v6 = a2;
  v7 = 1;
LABEL_7:

  return __swift_storeEnumTagSinglePayload(v6, v7, 1, v8);
}

uint64_t sub_1E3C5F74C(uint64_t a1)
{
  v2 = *(v1 + 16);
  result = (*(**a1 + 1032))(*(v1 + 24));
  *v2 = result;
  *(v2 + 8) = v4 & 1;
  return result;
}

uint64_t type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext()
{
  result = qword_1EE290A30;
  if (!qword_1EE290A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3C5F7FC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext();
  swift_unknownObjectWeakInit();
  *a3 = a1;
  a3[1] = a2;
  sub_1E41FE614();
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 appController];

  if (v7)
  {
    v8 = [v7 appContext];
  }

  else
  {
    v8 = 0;
  }

  swift_unknownObjectWeakAssign();
}

uint64_t sub_1E3C5F8F4@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
  *a1 = v3;
}

uint64_t sub_1E3C5F948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_1E3C5FA10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29410);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E327F454(a2, &v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
    __swift_destroy_boxed_opaque_existential_1(a2);
    sub_1E325F6F0(v8, &qword_1ECF29410);
    goto LABEL_9;
  }

  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  sub_1E3781918(v8, v12);
  sub_1E384EE08(234);
  sub_1E3277E60(v13, v14, a1, &v19);

  if (!v20)
  {
    sub_1E325F6F0(&v19, &unk_1ECF296E0);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(a2);
    sub_1E3AC57B0(v12);
    goto LABEL_9;
  }

  type metadata accessor for SportsCanonicalBannerScoreboardViewModel();

  sub_1E3F90D40();
  v16 = v15;
  __swift_destroy_boxed_opaque_existential_1(a2);
  sub_1E3AC57B0(v12);
  if (!v16)
  {
LABEL_9:
    type metadata accessor for SportsCanonicalBannerScoreboardUpdate();
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v3 + 16) = v16;
  return v3;
}

uint64_t sub_1E3C5FCA0()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1E3C5FCD8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 88))();
  *a1 = result;
  return result;
}

void sub_1E3C5FD38()
{
  sub_1E3C5FDE0();
  if (v0 <= 0x3F)
  {
    sub_1E3C5FE38();
    if (v1 <= 0x3F)
    {
      sub_1E41FE624();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E3C5FDE0()
{
  if (!qword_1EE23B6C8[0])
  {
    type metadata accessor for ViewModel();
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, qword_1EE23B6C8);
    }
  }
}

void sub_1E3C5FE38()
{
  if (!qword_1EE23B600)
  {
    v0 = sub_1E4205D34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE23B600);
    }
  }
}

void sub_1E3C5FEA8(void *a1, uint64_t *a2)
{
  v5 = *a2;
  swift_beginAccess();
  v6 = *&v2[v5];
  *&v2[v5] = a1;
  v7 = *a2;
  v8 = a1;
  OUTLINED_FUNCTION_5_0();
  v9 = *&v2[v7];
  if (v9)
  {
    if (v9 == v6)
    {
      goto LABEL_8;
    }

    if (!v6)
    {
      goto LABEL_7;
    }
  }

  else if (!v6)
  {
    goto LABEL_8;
  }

  [v6 removeFromSuperview];
  if (*&v2[v7])
  {
LABEL_7:
    [v2 addSubview_];
  }

LABEL_8:
  [v2 setNeedsLayout];
}

double sub_1E3C5FF80(char a1, double a2, double a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_layout;
  OUTLINED_FUNCTION_5_0();
  v9 = *&v4[v8];
  if (v9 && (a2 != 0.0 || a3 != 0.0))
  {
    v10 = *(*v9 + 176);

    v12 = v38;
    v10(v38, v11);
    if (v39)
    {
      v12 = MEMORY[0x1E69DDCE0];
      v13 = *(MEMORY[0x1E69DDCE0] + 8);
      v14 = *(MEMORY[0x1E69DDCE0] + 16);
      v15 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    else
    {
      v13 = *&v38[1];
      v14 = *&v38[2];
      v15 = *&v38[3];
    }

    v16 = *v12;
    v17 = sub_1E3952BE0(*v12, v13, v14, v15);
    [v4 effectiveUserInterfaceLayoutDirection];
    v18 = OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_titleView;
    OUTLINED_FUNCTION_5_0();
    v19 = *&v4[v18];
    if (v19)
    {
      v20 = v19;
      [v20 sizeThatFits_];
      v22 = v21;
      v24 = v23;
      v40.origin.x = 0.0;
      v40.origin.y = v16;
      v40.size.width = v22;
      v40.size.height = v24;
      CGRectGetWidth(v40);
    }

    v25 = OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_topSeparatorView;
    OUTLINED_FUNCTION_5_0();
    v26 = *&v4[v25];
    if (v26)
    {
      v27 = v26;
      OUTLINED_FUNCTION_33_2();
      v28 = v14;
      Height = CGRectGetHeight(v41);
      OUTLINED_FUNCTION_33_2();
      Width = CGRectGetWidth(v42);
      v31 = Height;
      v14 = v28;
      [v27 setFrame_];
    }

    v32 = OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_bottomSeparatorView;
    OUTLINED_FUNCTION_5_0();
    v33 = *&v4[v32];
    if (v33)
    {
      v34 = v33;
      OUTLINED_FUNCTION_33_2();
      [v34 setFrame_];
    }

    if ((a1 & 1) == 0)
    {
      v35 = *&v4[v18];
      if (v35)
      {
        v36 = v35;
        OUTLINED_FUNCTION_33_2();
        OUTLINED_FUNCTION_7_144();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        [v36 setFrame_];
      }
    }

    sub_1E3952BD8(v16, v13, v14);
    v44.origin.x = OUTLINED_FUNCTION_7_144();
    CGRectGetHeight(v44);
  }

  return a2;
}

double sub_1E3C602F0()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  [v0 bounds];
  return sub_1E3C5FF80(0, v1, v2);
}

char *sub_1E3C60390(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 488))(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (!*(v4 + 16) || (v6 = (*(*a1 + 392))()) == 0)
  {

    return 0;
  }

  v7 = v6;
  if (*v6 != _TtC8VideosUI24AskToBuyListHeaderLayout)
  {

    return 0;
  }

  v25 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35CF0);
  sub_1E4148C68(sub_1E3C606DC, v8, v23);
  v9 = *&v23[0];
  v10 = OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_layout;
  swift_beginAccess();
  *&v9[v10] = v7;

  vtable = (*v7)[18].vtable;

  v12 = v9;
  v13 = vtable();

  [v12 setBackgroundColor_];

  v14 = sub_1E373E010(23, v5);

  if (v14)
  {
    if (*v14 != _TtC8VideosUI13TextViewModel)
    {
LABEL_12:

      goto LABEL_13;
    }

    v15 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
    v16 = OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_titleView;
    OUTLINED_FUNCTION_5_0();
    v17 = *&v12[v16];
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    v18 = v15;
    v19 = v17;
    v20 = sub_1E393D9C4(v14, v17, v23, 0);

    sub_1E373C624(v23);
    if (v20)
    {
      v21 = swift_dynamicCastObjCProtocolConditional();
      if (v21)
      {
LABEL_11:
        sub_1E3C5FEA8(v21, &OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_titleView);

        goto LABEL_12;
      }
    }

    v21 = 0;
    goto LABEL_11;
  }

LABEL_13:
  sub_1E3C5FEA8([objc_allocWithZone(VUISeparatorView) init], &OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_bottomSeparatorView);
  sub_1E3C5FEA8([objc_allocWithZone(VUISeparatorView) init], &OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_topSeparatorView);

  return v12;
}

id sub_1E3C606DC@<X0>(void *a1@<X8>)
{
  type metadata accessor for AskToBuyListHeader();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

id sub_1E3C60718()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_titleView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_topSeparatorView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_bottomSeparatorView) = 0;
  v6 = ObjectType;
  v2 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

id sub_1E3C607BC(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_layout] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_titleView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_topSeparatorView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_bottomSeparatorView] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_1E3C6090C()
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

uint64_t sub_1E3C60960(char a1)
{
  if (a1)
  {
    return 0x6174654477656976;
  }

  else
  {
    return 2036427888;
  }
}

uint64_t sub_1E3C609A4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6174654477656976;
  }

  else
  {
    v3 = 2036427888;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEB00000000736C69;
  }

  if (a2)
  {
    v5 = 0x6174654477656976;
  }

  else
  {
    v5 = 2036427888;
  }

  if (a2)
  {
    v6 = 0xEB00000000736C69;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3C60A60()
{
  sub_1E4206014();
}

uint64_t sub_1E3C60AD4()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3C60B54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3C6090C();
  *a1 = result;
  return result;
}

uint64_t sub_1E3C60B84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3C60960(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3C60BDC(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 248) = a1;
}

uint64_t sub_1E3C60C44(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 256) = a1;
}

uint64_t sub_1E3C60CA8(char a1)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 264) = a1 & 1;
  return result;
}

uint64_t sub_1E3C60CE0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_2_148();
  swift_allocObject();
  return sub_1E3C60D48(a1 & 1, a2, a3, a4, a5);
}

uint64_t sub_1E3C60D48(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 248) = 0;
  *(v5 + 256) = 0;
  *(v5 + 264) = a1 & 1;
  v10 = sub_1E39C0300();
  if (v10)
  {

    sub_1E3C60E0C(a2, a3, a4, a5);
  }

  return v10;
}

uint64_t sub_1E3C60E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E7CC0];
  type metadata accessor for TextViewModel();
  v11 = MEMORY[0x1E69E6158];
  v28[3] = MEMORY[0x1E69E6158];
  v28[0] = a1;
  v28[1] = a2;

  v12 = sub_1E3C27638(23, v28, v5, 0, 0);
  if (v12)
  {
    v13 = v12;

    MEMORY[0x1E6910BF0](v14);
    OUTLINED_FUNCTION_3_147();
    if (v15)
    {
      OUTLINED_FUNCTION_7_14();
    }

    sub_1E4206324();
    v10 = v29;
    swift_beginAccess();
    v5[31] = v13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  ViewModelKeys.rawValue.getter(7);
  *(inited + 32) = v17;
  *(inited + 40) = v18;
  v20 = v5[2];
  v19 = v5[3];
  *(inited + 72) = v11;
  if (!v19)
  {
    v20 = 0;
  }

  v21 = 0xE000000000000000;
  if (v19)
  {
    v21 = v19;
  }

  *(inited + 48) = v20;
  *(inited + 56) = v21;

  *(inited + 80) = sub_1E3C7CCAC(0);
  *(inited + 88) = v22;
  *(inited + 120) = v11;
  *(inited + 96) = a3;
  *(inited + 104) = a4;

  v23 = sub_1E4205CB4();
  type metadata accessor for ImageViewModel();

  v24 = sub_1E3F5321C(39, v23, v5);
  if (v24)
  {
    v25 = v24;

    MEMORY[0x1E6910BF0](v26);
    OUTLINED_FUNCTION_3_147();
    if (v15)
    {
      OUTLINED_FUNCTION_7_14();
    }

    sub_1E4206324();
    v10 = v29;
    swift_beginAccess();
    v5[32] = v25;
  }

  return (*(*v5 + 472))(v10);
}

uint64_t sub_1E3C610B4()
{
  sub_1E3BD99F8();
  OUTLINED_FUNCTION_2_148();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id sub_1E3C61178(uint64_t a1)
{
  sub_1E327F454(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68);
  if (swift_dynamicCast())
  {
    sub_1E325F748(v6, &qword_1ECF2CE78);
    result = [objc_opt_self() sharedInstance];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v2 = result;
    v3 = sub_1E3741090(0x6F747475422E5654, 0xEE0079616C502E6ELL, result);
    v5 = v4;

    if (v5)
    {
      type metadata accessor for LibContextMenuViewModel();
      OUTLINED_FUNCTION_2_148();
      swift_allocObject();
      return sub_1E3C60D48(0, v3, v5, 0x2F3A6C6F626D7973, 0xED000079616C702FLL);
    }
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_1E325F748(v6, &qword_1ECF2CE78);
  }

  return 0;
}

id sub_1E3C612E0(void *a1)
{
  v2 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  if (sub_1E3C6157C(v2))
  {
    sub_1E327F454(a1, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780);
    if (swift_dynamicCast())
    {
      v3 = 0x80000001E42797D0;
      __swift_destroy_boxed_opaque_existential_1(v13);
      v4 = 0xD000000000000012;
    }

    else
    {
      sub_1E327F454(a1, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88);
      if (swift_dynamicCast())
      {
        v3 = 0x80000001E42797B0;
        sub_1E37DADF4(v11, v14);
        sub_1E327F454(v14, v13);
        type metadata accessor for LibSidebandMovieMediaEntity();
        if (swift_dynamicCast())
        {
          v5 = (*(**&v11[0] + 928))();

          __swift_destroy_boxed_opaque_existential_1(v14);
          if (v5)
          {
            v4 = 0xD000000000000012;
          }

          else
          {
            v4 = 0xD000000000000013;
          }

          if (v5)
          {
            v3 = 0x80000001E42797F0;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v14);
          v4 = 0xD000000000000013;
        }
      }

      else
      {
        v3 = 0x80000001E4279810;
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        sub_1E325F748(v11, &qword_1ECF2CEA0);
        v4 = 0xD000000000000015;
      }
    }

    result = [objc_opt_self() sharedInstance];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v7 = result;
    v8 = sub_1E3741090(v4, v3, result);
    v10 = v9;

    if (v10)
    {
      type metadata accessor for LibContextMenuViewModel();
      OUTLINED_FUNCTION_2_148();
      swift_allocObject();
      return sub_1E3C60D48(1, v8, v10, 0xD000000000000014, 0x80000001E4279830);
    }
  }

  return 0;
}

uint64_t sub_1E3C6157C(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = MEMORY[0x1EEE9AC00](v6);
  v8 = *(v3 + 16);
  v8(&v13[-v9 - 8], v1, a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    return 1;
  }

  else
  {
    (v8)(v5, v1, a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88);
    v10 = swift_dynamicCast();
    if (v10)
    {
      __swift_destroy_boxed_opaque_existential_1(v13);
    }
  }

  return v10;
}

unint64_t sub_1E3C6171C()
{
  result = qword_1ECF35CF8;
  if (!qword_1ECF35CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35CF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LibContextMenuActionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E3C6184C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for HorizontalContainerRelativeModifier();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  *v17 = a1;
  *(v17 + 8) = 0;
  *(v17 + 16) = a2;
  *(v17 + 24) = 1;
  *(v17 + 32) = 0;
  *(v17 + 40) = 1;
  *(v17 + 41) = a3;
  *(v17 + 48) = a4;
  *(v17 + 56) = a5;
  v19 = *(v18 + 44);
  *(v17 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();

  sub_1E34AF604(a4);
  MEMORY[0x1E690DE70](v17, a6, v14, a7);
  return sub_1E3C620E4(v17);
}

uint64_t type metadata accessor for HorizontalContainerRelativeModifier()
{
  result = qword_1EE2910D0;
  if (!qword_1EE2910D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3C619DC()
{
  v1 = type metadata accessor for HorizontalContainerRelativeModifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  if (*(v0 + 41) != 1 || (v4 = sub_1E42026E4(), sub_1E42026F4(), sub_1E42026F4(), sub_1E42026F4() != v4))
  {
    sub_1E42026F4();
  }

  sub_1E3C623B4(v0, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_1E3C62418(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_1E4203DA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35D00);
  sub_1E3C624EC();
  sub_1E42032A4();
}

double sub_1E3C61B7C(uint64_t a1, double a2)
{
  v4 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = *a1;
  if ((sub_1E373F6E0() & 1) != 0 && (v12 = *(a1 + 16)) != 0)
  {

    v13 = sub_1E3C61DD0(v11, v12, a2);
  }

  else
  {
    type metadata accessor for HorizontalContainerRelativeModifier();
    sub_1E3746E10(v10);
    v15 = sub_1E389CA24(v11, v10, *(a1 + 24));
    v16 = (*(v6 + 8))(v10, v4);
    v17 = (*(*v11 + 392))(v16);
    v18 = 1.0;
    if (v17)
    {
      v19 = (*(*v17 + 1128))(v17);
      v21 = v20;

      if ((v21 & 1) == 0)
      {
        v18 = *&v19;
      }
    }

    v22 = [objc_opt_self() isPad];
    v23 = *(a1 + 32);
    if (*(a1 + 40))
    {
      v23 = 0.0;
    }

    v24 = v23 + a2;
    v25 = a2 - v23;
    if (v22)
    {
      v26 = v25;
    }

    else
    {
      v26 = v24;
    }

    type metadata accessor for LayoutGrid();
    v13 = sub_1E3A25D00(v15, *(a1 + 8), v26, v18);
  }

  v27 = *(a1 + 48);
  if (v27)
  {
    v27(v14, v13);
  }

  return v13;
}

double sub_1E3C61DD0(uint64_t a1, uint64_t a2, double a3)
{
  v7 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  type metadata accessor for HorizontalContainerRelativeModifier();
  sub_1E3746E10(v13);
  v14 = sub_1E389CA24(a1, v13, *(v3 + 24));
  v15 = *(v9 + 8);
  v16 = v15(v13, v7);
  v17 = (*(*a1 + 392))(v16);
  v18 = 1.0;
  if (v17)
  {
    v19 = (*(*v17 + 1128))(v17);
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      v18 = *&v19;
    }
  }

  type metadata accessor for LayoutGrid();
  v22 = sub_1E3A25D00(v14, 0, a3, v18);
  v23 = (*(*a2 + 392))();
  if (!v23)
  {
    goto LABEL_7;
  }

  v24 = v23;
  if (*v23 != _TtC8VideosUI23CanonicalInfoCardLayout)
  {

LABEL_7:
    type metadata accessor for CanonicalInfoCardLayout();
    v24 = sub_1E418442C();
  }

  sub_1E3746E10(v13);
  v25 = sub_1E3B02A04();
  v15(v13, v7);
  v26 = 1.0;
  if ((v25 & 1) == 0)
  {
    v27 = *(*v24 + 1128);

    v29 = v27(v28);
    v31 = v30;

    if ((v31 & 1) == 0)
    {
      v26 = *&v29;
    }
  }

  sub_1E3A25950(a3);
  v33 = sub_1E3FF427C(v26, v22, v32);

  return v33;
}

uint64_t sub_1E3C620E4(uint64_t a1)
{
  v2 = type metadata accessor for HorizontalContainerRelativeModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E3C62140()
{
  result = qword_1EE2910E8[0];
  if (!qword_1EE2910E8[0])
  {
    type metadata accessor for HorizontalContainerRelativeModifier();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2910E8);
  }

  return result;
}

void sub_1E3C621C0()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for VUIGridType(319);
    if (v1 <= 0x3F)
    {
      sub_1E3C62330(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1E39BB660(319, &qword_1EE28A3B8, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1E381ECE4();
          if (v4 <= 0x3F)
          {
            sub_1E3C62330(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
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

void sub_1E3C62330(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E3C623B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HorizontalContainerRelativeModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3C62418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HorizontalContainerRelativeModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1E3C6247C(double a1)
{
  v3 = *(type metadata accessor for HorizontalContainerRelativeModifier() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E3C61B7C(v4, a1);
}

unint64_t sub_1E3C624EC()
{
  result = qword_1EE288918;
  if (!qword_1EE288918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288918);
  }

  return result;
}

uint64_t sub_1E3C62550()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    type metadata accessor for DownloadStateIndicatorLayout();
    v1 = sub_1E3C6D918();
    *(v0 + 160) = v1;
  }

  return v1;
}

uint64_t sub_1E3C625B8()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    type metadata accessor for ButtonLayout();
    v1 = sub_1E3BBB724();
    *(v0 + 168) = v1;
  }

  return v1;
}

uint64_t sub_1E3C62620()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    type metadata accessor for PlaybackStatusLayout();
    v1 = sub_1E3A70EBC(1);
    *(v0 + 176) = v1;
  }

  return v1;
}

uint64_t sub_1E3C6268C()
{
  if (*(v0 + 184))
  {
    v3 = *(v0 + 184);
  }

  else
  {
    v4 = v0;
    v3 = type metadata accessor for ViewGradientLayout();
    sub_1E40C3088();
    OUTLINED_FUNCTION_30();
    (*(v5 + 1776))(1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1E42A76D0;
    v7 = [objc_opt_self() blackColor];
    v8 = OUTLINED_FUNCTION_29_57(v7);

    *(v6 + 32) = v8;
    v9 = OUTLINED_FUNCTION_22_65();
    OUTLINED_FUNCTION_18_74();
    v12 = [v10 v11];

    *(v6 + 40) = v12;
    v13 = OUTLINED_FUNCTION_22_65();
    OUTLINED_FUNCTION_18_74();
    v16 = [v14 v15];

    *(v6 + 48) = v16;
    v17 = OUTLINED_FUNCTION_22_65();
    OUTLINED_FUNCTION_18_74();
    v20 = [v18 v19];

    *(v6 + 56) = v20;
    v21 = OUTLINED_FUNCTION_22_65();
    v22 = [v21 (v2 + 376)];

    *(v6 + 64) = v22;
    (*(*v3 + 1800))(v6);
    OUTLINED_FUNCTION_36();
    (*(v23 + 1824))(&unk_1F5D79AE8);
    OUTLINED_FUNCTION_36();
    v24 = OUTLINED_FUNCTION_20_69();
    v25(v24);
    OUTLINED_FUNCTION_36();
    v26 = OUTLINED_FUNCTION_19_84();
    v27(v26);
    *(v4 + 184) = v3;
  }

  return v3;
}

uint64_t sub_1E3C62940()
{
  if (*(v0 + 192))
  {
    v2 = *(v0 + 192);
  }

  else
  {
    v3 = v0;
    v2 = type metadata accessor for ViewGradientLayout();
    sub_1E40C3088();
    OUTLINED_FUNCTION_30();
    (*(v4 + 1776))(1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1E42A76D0;
    v6 = [objc_opt_self() blackColor];
    v7 = OUTLINED_FUNCTION_29_57(v6);

    *(v5 + 32) = v7;
    v8 = OUTLINED_FUNCTION_22_65();
    OUTLINED_FUNCTION_18_74();
    v11 = [v9 v10];

    *(v5 + 40) = v11;
    v12 = OUTLINED_FUNCTION_22_65();
    OUTLINED_FUNCTION_18_74();
    v15 = [v13 v14];

    *(v5 + 48) = v15;
    v16 = OUTLINED_FUNCTION_22_65();
    OUTLINED_FUNCTION_18_74();
    v19 = [v17 v18];

    *(v5 + 56) = v19;
    *(v5 + 64) = OUTLINED_FUNCTION_22_65();
    (*(*v2 + 1800))(v5);
    OUTLINED_FUNCTION_36();
    (*(v20 + 1824))(&unk_1F5D79B30);
    OUTLINED_FUNCTION_36();
    v21 = OUTLINED_FUNCTION_20_69();
    v22(v21);
    OUTLINED_FUNCTION_36();
    v23 = OUTLINED_FUNCTION_19_84();
    v24(v23);
    *(v3 + 192) = v2;
  }

  return v2;
}

uint64_t sub_1E3C62BD4()
{
  if (*(v0 + 200))
  {
    v1 = *(v0 + 200);
  }

  else
  {
    type metadata accessor for ViewGradientLayout();
    v1 = sub_1E40C3088();
    OUTLINED_FUNCTION_26_0();
    (*(v2 + 1776))(1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1E42B2A10;
    sub_1E3755B54();
    OUTLINED_FUNCTION_71_5();
    *(v3 + 32) = sub_1E4206F24();
    OUTLINED_FUNCTION_71_5();
    *(v3 + 40) = sub_1E4206F24();
    OUTLINED_FUNCTION_71_5();
    *(v3 + 48) = sub_1E4206F24();
    OUTLINED_FUNCTION_71_5();
    *(v3 + 56) = sub_1E4206F24();
    OUTLINED_FUNCTION_71_5();
    *(v3 + 64) = sub_1E4206F24();
    OUTLINED_FUNCTION_71_5();
    *(v3 + 72) = sub_1E4206F24();
    (*(*v1 + 1800))(v3);
    OUTLINED_FUNCTION_9_2();
    (*(v4 + 1824))(&unk_1F5D79B78);
    OUTLINED_FUNCTION_9_2();
    v5 = OUTLINED_FUNCTION_20_69();
    v6(v5);
    OUTLINED_FUNCTION_9_2();
    v7 = OUTLINED_FUNCTION_19_84();
    v8(v7);
    *(v0 + 200) = v1;
  }

  return v1;
}

double sub_1E3C62E0C()
{
  if ((*(v0 + 216) & 1) == 0)
  {
    return *(v0 + 208);
  }

  *(v0 + 208) = 0x4059000000000000;
  *(v0 + 216) = 0;
  return 100.0;
}

uint64_t sub_1E3C62E70()
{
  *(v0 + 200) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 216) = 1;
  v1 = sub_1E3C2F9A0();

  sub_1E3C641A8();
  sub_1E3C64598();
  OUTLINED_FUNCTION_9_2();
  (*(v2 + 440))(0x3FF0F45D1745D174, 0);
  OUTLINED_FUNCTION_111();
  v4 = (*(v3 + 176))(v239);
  if (v240)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = *&v239[1];
  }

  v6 = *(*v1 + 2024);
  v6(v4);
  OUTLINED_FUNCTION_30();
  (*(v7 + 176))(&v241);

  v9 = v242;
  if (v243)
  {
    v9 = 0.0;
  }

  *&v10 = v5 - v9;
  v6(v8);
  v207[32] = 0;
  v233 = 0x4020000000000000;
  v234 = v10;
  v235 = v10;
  v236 = v10;
  v237 = 0;
  type metadata accessor for UIEdgeInsets();
  v12 = v11;
  sub_1E3C2FC98();
  v227 = v230;
  v228 = v231;
  v229 = v232;
  sub_1E3C3DE00(v12);
  v221 = v224;
  v222 = v225;
  v223 = v226;
  sub_1E3C3DE00(v12);
  v215 = v218;
  v216 = v219;
  v217 = v220;
  v13 = sub_1E3C3DE00(v12);
  OUTLINED_FUNCTION_107(v13, v14, v15, v16, v17, v18, v19, v20, 0x4018000000000000, v10, v10, v10, *&v207[32], *&v207[40], *&v207[48], *&v207[56], *&v207[64], *&v207[72], *&v207[80], *&v207[88], *&v207[96], *&v207[104], *&v207[112], *&v207[120], *&v207[128], *&v207[136], *&v207[144], *&v207[152], *&v207[160], *&v207[168], *&v207[176], *&v207[184], *&v207[192], *&v207[200], *&v207[208], *&v207[216], *&v207[224], *&v207[232], v208, v209, v210, v211, v212, v213, v214);
  sub_1E3C2FCB8(v207, __src);
  memcpy(v207, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v29 = OUTLINED_FUNCTION_30_3(v21, v22, v23, v24, v25, v26, v27, v28, *v207);
  v30(v29, 0);

  v6(v31);
  v32 = [objc_opt_self() whiteColor];
  v33 = [v32 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_36();
  (*(v34 + 752))(v33);

  v35 = [objc_opt_self() configurationWithPointSize:4 weight:20.0];
  OUTLINED_FUNCTION_9_2();
  v37 = *(v36 + 1832);
  v37();
  OUTLINED_FUNCTION_2_1();
  v39 = *(v38 + 1952);
  v40 = v35;
  v39(v35);

  (v37)(v41);
  v42 = [objc_opt_self() whiteColor];
  OUTLINED_FUNCTION_36();
  (*(v43 + 680))();

  OUTLINED_FUNCTION_9_2();
  (*(v44 + 2024))();
  OUTLINED_FUNCTION_30();
  (*(v45 + 152))(v207);

  if (v207[32])
  {
    v47 = -1.0;
  }

  else
  {
    v47 = *&v207[16] + -1.0;
  }

  (v37)(v46);
  __src[1] = 0;
  __src[0] = 0;
  *&__src[2] = v47;
  __src[3] = 0x4024000000000000;
  LOBYTE(__src[4]) = 0;
  OUTLINED_FUNCTION_26_0();
  (*(v48 + 160))(__src);

  sub_1E3C6488C();
  sub_1E3C64C8C();
  OUTLINED_FUNCTION_9_2();
  v50 = *(v49 + 1856);
  v50();
  OUTLINED_FUNCTION_2_1();
  v51 = OUTLINED_FUNCTION_13_12();
  v52(v51);

  (v50)(v53);
  OUTLINED_FUNCTION_2_1();
  (*(v54 + 1984))(5);

  (v50)(v55);
  *v207 = 3;
  v207[8] = 0;
  v241 = 2;
  LOBYTE(v242) = 0;
  v56 = MEMORY[0x1E69E6810];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_21_68();
  v57 = OUTLINED_FUNCTION_17_89();
  sub_1E3C3DE00(v57);
  v58 = OUTLINED_FUNCTION_16_95();
  sub_1E3C3DE00(v58);
  OUTLINED_FUNCTION_15_97();
  sub_1E3C2FCB8(v59, v60);
  memcpy(v207, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v69 = OUTLINED_FUNCTION_30_3(v61, v62, v63, v64, v65, v66, v67, v68, *v207);
  v70(v69, 62);

  (v50)(v71);
  OUTLINED_FUNCTION_2_1();
  v72 = OUTLINED_FUNCTION_10_7();
  v73(v72);

  (v50)(v74);
  OUTLINED_FUNCTION_2_1();
  v75 = OUTLINED_FUNCTION_10_7();
  v76(v75);

  (v50)(v77);
  OUTLINED_FUNCTION_2_1();
  (*(v78 + 2008))(1);

  v80 = (v50)(v79);
  v207[0] = 27;
  LOBYTE(v241) = 19;
  LOBYTE(v239[0]) = 19;
  LOBYTE(v233) = 22;
  LOBYTE(v230) = 15;
  LOBYTE(v227) = 19;
  v88 = OUTLINED_FUNCTION_28_46(v80, v81, v82, v83, v84, v85, v86, v87, *v207);
  sub_1E3C2FCB8(v88, v89);
  *v207 = __src[0];
  *&v207[4] = WORD2(__src[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v98 = OUTLINED_FUNCTION_30_3(v90, v91, v92, v93, v94, v95, v96, v97, *v207);
  v99(v98, 48);

  (v50)(v100);
  sub_1E3C8BE74();
  sub_1E3DEFBE8(1);

  (v50)(v101);
  sub_1E3952C88();
  __src[0] = v102;
  __src[1] = v103;
  __src[2] = v104;
  __src[3] = v105;
  LOBYTE(__src[4]) = 0;
  OUTLINED_FUNCTION_8();
  (*(v106 + 160))(__src);

  (v50)(v107);
  LOBYTE(v241) = 11;
  LOBYTE(v239[0]) = 5;
  LOBYTE(v233) = 4;
  sub_1E3C2FC98();
  LOBYTE(v227) = v230;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v221) = v224;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v215) = v218;
  sub_1E3C2FCB8(&v241, v207);
  LODWORD(v241) = *v207;
  WORD2(v241) = *&v207[4];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v108 + 1600))(&v241, 54, v109 & 1, &qword_1F5D54AF8);

  OUTLINED_FUNCTION_9_2();
  v111 = *(v110 + 1928);
  v111();
  OUTLINED_FUNCTION_2_1();
  (*(v112 + 2056))(1, 0);

  (v111)(v113);
  *v207 = 1;
  v207[8] = 0;
  v241 = 0;
  LOBYTE(v242) = 0;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_21_68();
  v114 = OUTLINED_FUNCTION_17_89();
  sub_1E3C3DE00(v114);
  v115 = OUTLINED_FUNCTION_16_95();
  sub_1E3C3DE00(v115);
  OUTLINED_FUNCTION_15_97();
  sub_1E3C2FCB8(v116, v117);
  memcpy(v207, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v126 = OUTLINED_FUNCTION_30_3(v118, v119, v120, v121, v122, v123, v124, v125, *v207);
  v127(v126, 63);

  (v111)(v128);
  OUTLINED_FUNCTION_2_1();
  v129 = OUTLINED_FUNCTION_10_7();
  v130(v129);

  (v111)(v131);
  v207[0] = 17;
  LOBYTE(v241) = 21;
  LOBYTE(v239[0]) = 21;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v230) = v233;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v224) = v227;
  v132 = sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v218) = v221;
  v140 = OUTLINED_FUNCTION_28_46(v132, v133, v134, v135, v136, v137, v138, v139, *v207);
  sub_1E3C2FCB8(v140, v141);
  *v207 = __src[0];
  *&v207[4] = WORD2(__src[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v150 = OUTLINED_FUNCTION_30_3(v142, v143, v144, v145, v146, v147, v148, v149, *v207);
  v151(v150, 48);

  (v111)(v152);
  OUTLINED_FUNCTION_2_1();
  (*(v153 + 2008))(1);

  v155 = (v111)(v154);
  sub_1E3E60700();
  OUTLINED_FUNCTION_7_16();
  v156 = *(*v155 + 680);
  v157 = v56;
  v156(v56);

  (v111)(v158);
  sub_1E3952C88();
  __src[0] = v159;
  __src[1] = v160;
  __src[2] = v161;
  __src[3] = v162;
  LOBYTE(__src[4]) = 0;
  OUTLINED_FUNCTION_8();
  (*(v163 + 160))(__src);

  OUTLINED_FUNCTION_9_2();
  (*(v164 + 1952))();
  memset(__src, 0, 24);
  __src[3] = 0x401C000000000000;
  LOBYTE(__src[4]) = 0;
  OUTLINED_FUNCTION_26_0();
  (*(v165 + 160))(__src);

  OUTLINED_FUNCTION_9_2();
  v167 = *(v166 + 2000);
  v167();
  __src[0] = 0x4020000000000000;
  memset(&__src[1], 0, 25);
  OUTLINED_FUNCTION_26_0();
  (*(v168 + 160))(__src);

  v170 = (v167)(v169);
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v171 = *(*v170 + 680);
  v172 = v56;
  v171(v56);

  v174 = (v167)(v173);
  sub_1E3E60364();
  OUTLINED_FUNCTION_7_16();
  v175 = *(*v174 + 872);
  v176 = v56;
  v175(v56);

  OUTLINED_FUNCTION_9_2();
  (*(v177 + 1976))();
  sub_1E3952C78();
  *v207 = v178;
  *&v207[8] = v179;
  *&v207[16] = v180;
  *&v207[24] = v181;
  v207[32] = 0;
  OUTLINED_FUNCTION_8();
  (*(v182 + 160))(v207);

  OUTLINED_FUNCTION_9_2();
  v184 = (*(v183 + 1976))();
  v185 = *sub_1E3E5FD88();
  (*(*v184 + 1712))(v185);

  OUTLINED_FUNCTION_9_2();
  v187 = (*(v186 + 1880))();
  sub_1E3C37CBC(v187, 23);

  OUTLINED_FUNCTION_9_2();
  v189 = (*(v188 + 1904))();
  sub_1E3C37CBC(v189, 15);

  OUTLINED_FUNCTION_9_2();
  v191 = (*(v190 + 1856))();
  sub_1E3C37CBC(v191, 4);

  OUTLINED_FUNCTION_9_2();
  v193 = (*(v192 + 1928))();
  sub_1E3C37CBC(v193, 10);

  OUTLINED_FUNCTION_9_2();
  v195 = (*(v194 + 1808))();
  sub_1E3C37CBC(v195, 39);

  OUTLINED_FUNCTION_9_2();
  v197 = (*(v196 + 1832))();
  sub_1E3C37CBC(v197, 36);

  OUTLINED_FUNCTION_9_2();
  v199 = (*(v198 + 1952))();
  sub_1E3C37CBC(v199, 59);

  OUTLINED_FUNCTION_9_2();
  v201 = (*(v200 + 2000))();
  sub_1E3C37CBC(v201, 67);

  OUTLINED_FUNCTION_9_2();
  v203 = (*(v202 + 1976))();
  sub_1E3C37CBC(v203, 233);

  OUTLINED_FUNCTION_9_2();
  v205 = (*(v204 + 2024))();
  sub_1E3C37CBC(v205, 96);

  return v1;
}

void sub_1E3C641A8()
{
  OUTLINED_FUNCTION_8();
  v1 = OUTLINED_FUNCTION_10_7();
  v2(v1);
  OUTLINED_FUNCTION_36();
  v3 = OUTLINED_FUNCTION_13_12();
  v4(v3);
  OUTLINED_FUNCTION_36();
  v5 = OUTLINED_FUNCTION_10_7();
  v6(v5);
  OUTLINED_FUNCTION_36();
  v7 = OUTLINED_FUNCTION_13_12();
  v8(v7);
  sub_1E39537A8();
  v75[0] = v9;
  v75[1] = v10;
  v75[2] = v11;
  v75[3] = v12;
  v76 = 0;
  (*(*v0 + 560))(v75);
  v13 = *sub_1E3E5FB0C();
  v14 = *(*v0 + 752);
  v15 = v13;
  v14(v13);
  v16 = *sub_1E3E5FB88();
  v17 = *(*v0 + 872);
  v18 = v16;
  v17(v16);
  __asm { FMOV            V1.2D, #12.0 }

  *&v54[16] = _Q1;
  v54[32] = 0;
  v71 = xmmword_1E42A76A0;
  v72 = xmmword_1E42A76B0;
  v73 = 0;
  v68 = xmmword_1E42A76A0;
  v69 = xmmword_1E42A76B0;
  v70 = 0;
  __asm { FMOV            V2.2D, #18.0 }

  v65 = _Q2;
  v66 = _Q2;
  v67 = 0;
  v62 = xmmword_1E42A76A0;
  v63 = _Q1;
  v64 = 0;
  type metadata accessor for UIEdgeInsets();
  v26 = sub_1E3C3DE00(v25);
  OUTLINED_FUNCTION_107(v26, v27, v28, v29, v30, v31, v32, v33, 0, 0x4028000000000000, *&v54[16], *&v54[24], *&v54[32], *&v54[40], *&v54[48], *&v54[56], *&v54[64], *&v54[72], *&v54[80], *&v54[88], *&v54[96], *&v54[104], *&v54[112], *&v54[120], *&v54[128], *&v54[136], *&v54[144], *&v54[152], *&v54[160], *&v54[168], *&v54[176], *&v54[184], *&v54[192], *&v54[200], *&v54[208], *&v54[216], *&v54[224], *&v54[232], v55, v56, v57, v58, v59, v60, v61);
  sub_1E3C2FCB8(v54, __src);
  memcpy(v54, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v42 = OUTLINED_FUNCTION_30_3(v34, v35, v36, v37, v38, v39, v40, v41, *v54);
  v43(v42, 1);
  [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  OUTLINED_FUNCTION_36();
  (*(v44 + 608))();
  OUTLINED_FUNCTION_36();
  v46 = *(v45 + 600);
  v47 = v46();
  if (v47)
  {
    v48 = v47;
    [v47 setShadowOffset_];
  }

  v49 = v46();
  [v49 setShadowBlurRadius_];

  v50 = v46();
  if (v50)
  {
    v51 = v50;
    v52 = [objc_opt_self() blackColor];
    v53 = [v52 colorWithAlphaComponent_];

    [v51 setShadowColor_];
  }
}

uint64_t sub_1E3C64598()
{
  OUTLINED_FUNCTION_8();
  v1 += 226;
  v2 = *v1;
  (*v1)();
  OUTLINED_FUNCTION_30();
  (*(v3 + 512))(2);

  (v2)(v4);
  OUTLINED_FUNCTION_2_1();
  (*(v5 + 1808))(3);

  v7 = (v2)(v6);
  sub_1E3E60A14();
  OUTLINED_FUNCTION_7_16();
  v8 = *(*v7 + 872);
  v9 = v0;
  v8(v0);

  v11 = (v2)(v10);
  v12 = *sub_1E418A524();
  (*(*v11 + 440))(v12, 0);

  (v2)(v13);
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 2000))(0);

  (v2)(v15);
  if ([objc_opt_self() isVision])
  {
    v16 = [objc_opt_self() blackColor];
  }

  else
  {
    v17 = *sub_1E3E5FACC();
  }

  OUTLINED_FUNCTION_8();
  (*(v18 + 752))();

  v20 = (v2)(v19);
  v21 = *sub_1E3E5FB0C();
  v22 = *(*v20 + 776);
  v23 = v21;
  v22(v21);
}

uint64_t sub_1E3C6488C()
{
  OUTLINED_FUNCTION_8();
  v0 += 235;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_30();
  v2 = OUTLINED_FUNCTION_13_12();
  v3(v2);

  (v1)(v4);
  OUTLINED_FUNCTION_2_1();
  (*(v5 + 1984))(5);

  (v1)(v6);
  OUTLINED_FUNCTION_2_1();
  (*(v7 + 2056))(1, 0);

  (v1)(v8);
  OUTLINED_FUNCTION_2_1();
  v9 = OUTLINED_FUNCTION_10_7();
  v10(v9);

  (v1)(v11);
  OUTLINED_FUNCTION_2_1();
  v12 = OUTLINED_FUNCTION_10_7();
  v13(v12);

  v15 = (v1)(v14);
  v55 = 22;
  v54 = 22;
  v53 = 25;
  v52 = 17;
  v51 = 22;
  v23 = OUTLINED_FUNCTION_24_62(v15, v16, v17, v18, v19, v20, v21, v22, v46, v48, 27);
  sub_1E3C2FCB8(v23, v24);
  OUTLINED_FUNCTION_27_53();
  OUTLINED_FUNCTION_14();
  (*(v25 + 1600))(v50, 48, v26 & 1, &qword_1F5D549D8);

  (v1)(v27);
  v50[0] = 11;
  v55 = 10;
  v54 = 10;
  v53 = 5;
  v52 = 5;
  v28 = sub_1E3C3DE00(&qword_1F5D54AF8);
  HIBYTE(v49) = v51;
  v36 = OUTLINED_FUNCTION_24_62(v28, v29, v30, v31, v32, v33, v34, v35, v47, v49, v50[0]);
  sub_1E3C2FCB8(v36, v37);
  OUTLINED_FUNCTION_27_53();
  OUTLINED_FUNCTION_14();
  (*(v38 + 1600))(v50, 54, v39 & 1, &qword_1F5D54AF8);

  (v1)(v40);
  OUTLINED_FUNCTION_2_1();
  (*(v41 + 1936))(2);

  (v1)(v42);
  sub_1E3C8BE74();
  sub_1E3DEFBE8(1);

  (v1)(v43);
  OUTLINED_FUNCTION_2_1();
  (*(v44 + 2008))(1);
}

uint64_t sub_1E3C64C8C()
{
  OUTLINED_FUNCTION_8();
  v0 += 238;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_30();
  v2 = OUTLINED_FUNCTION_13_12();
  v3(v2);

  (v1)(v4);
  OUTLINED_FUNCTION_2_1();
  (*(v5 + 1984))(5);

  (v1)(v6);
  OUTLINED_FUNCTION_2_1();
  (*(v7 + 2056))(1, 0);

  (v1)(v8);
  OUTLINED_FUNCTION_2_1();
  v9 = OUTLINED_FUNCTION_10_7();
  v10(v9);

  (v1)(v11);
  OUTLINED_FUNCTION_2_1();
  v12 = OUTLINED_FUNCTION_10_7();
  v13(v12);

  (v1)(v14);
  OUTLINED_FUNCTION_2_1();
  (*(v15 + 2008))(1);

  v17 = (v1)(v16);
  v120[0] = 15;
  LOBYTE(v138) = 17;
  LOBYTE(v128) = 3;
  v25 = OUTLINED_FUNCTION_8_106(v17, v18, v19, v20, v21, v22, v23, v24, *v120);
  sub_1E3C2FCB8(v25, v26);
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_14();
  v35 = OUTLINED_FUNCTION_30_3(v27, v28, v29, v30, v31, v32, v33, v34, *v120);
  v36(v35, 48);

  (v1)(v37);
  v120[0] = 5;
  LOBYTE(v143) = 3;
  sub_1E3C2FC98();
  LOBYTE(v133) = 17;
  sub_1E3C3DE00(&unk_1F5D54B88);
  LOBYTE(v127) = 3;
  sub_1E3C3DE00(&unk_1F5D54B88);
  __src[239] = v121;
  sub_1E3C3DE00(&unk_1F5D54B88);
  __src[237] = __src[238];
  sub_1E3C2FCB8(v120, __src);
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_14();
  v46 = OUTLINED_FUNCTION_30_3(v38, v39, v40, v41, v42, v43, v44, v45, *v120);
  v47(v46, 55);

  (v1)(v48);
  v120[0] = 11;
  LOBYTE(v143) = 5;
  LOBYTE(v138) = 5;
  LOBYTE(v133) = 5;
  LOBYTE(v128) = 5;
  v49 = sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v121) = v127;
  v57 = OUTLINED_FUNCTION_8_106(v49, v50, v51, v52, v53, v54, v55, v56, *v120);
  sub_1E3C2FCB8(v57, v58);
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_14();
  v67 = OUTLINED_FUNCTION_30_3(v59, v60, v61, v62, v63, v64, v65, v66, *v120);
  v68(v67, 54);

  v70 = (v1)(v69);
  sub_1E3E5FD88();
  OUTLINED_FUNCTION_7_16();
  v71 = *(*v70 + 680);
  v72 = &qword_1F5D54AF8;
  v71(&qword_1F5D54AF8);

  (v1)(v73);
  memset(v120, 0, 32);
  v120[32] = 1;
  sub_1E3952C88();
  v143 = v74;
  v144 = v75;
  v145 = v76;
  v146 = v77;
  v147 = 0;
  sub_1E3952C88();
  v138 = v78;
  v139 = v79;
  v140 = v80;
  v141 = v81;
  v142 = 0;
  sub_1E3952C88();
  v133 = v82;
  v134 = v83;
  v135 = v84;
  v136 = v85;
  v137 = 0;
  sub_1E3952C88();
  v128 = v86;
  v129 = v87;
  v130 = v88;
  v131 = v89;
  v132 = 0;
  type metadata accessor for UIEdgeInsets();
  v91 = sub_1E3C3DE00(v90);
  OUTLINED_FUNCTION_107(v91, v92, v93, v94, v95, v96, v97, v98, *v120, *&v120[8], *&v120[16], *&v120[24], *&v120[32], *&v120[40], *&v120[48], *&v120[56], *&v120[64], *&v120[72], *&v120[80], *&v120[88], *&v120[96], *&v120[104], *&v120[112], *&v120[120], *&v120[128], *&v120[136], *&v120[144], *&v120[152], *&v120[160], *&v120[168], *&v120[176], *&v120[184], *&v120[192], *&v120[200], *&v120[208], *&v120[216], *&v120[224], *&v120[232], v121, v122, v123, v124, v125, v126, v127);
  v107 = OUTLINED_FUNCTION_8_106(v99, v100, v101, v102, v103, v104, v105, v106, *v120);
  sub_1E3C2FCB8(v107, v108);
  memcpy(v120, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v117 = OUTLINED_FUNCTION_30_3(v109, v110, v111, v112, v113, v114, v115, v116, *v120);
  v118(v117, 0);
}

uint64_t sub_1E3C6525C(uint64_t a1, void *a2, char a3)
{
  v4 = a1;
  sub_1E3C35CF4(a1, a2);
  v5 = sub_1E3890920(v4, a3);

  return sub_1E3C652E0(v5);
}

uint64_t sub_1E3C652E0(char a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v2 + 217);
  *(v2 + 217) = a1;
  result = swift_beginAccess();
  if (v4 != *(v2 + 217))
  {
    OUTLINED_FUNCTION_111();
    if ((*(v6 + 2144))())
    {
      sub_1E3C6DC7C();
      OUTLINED_FUNCTION_111();
      (*(v7 + 1160))();
      type metadata accessor for LayoutGrid();
      OUTLINED_FUNCTION_9_2();
      (*(v8 + 1560))();
      sub_1E3A25914();
      v32[0] = 0x4014000000000000;
      v32[1] = v9;
      v32[2] = 0x4024000000000000;
      v32[3] = v10;
      v33 = 0;
      OUTLINED_FUNCTION_111();
      (*(v11 + 184))(v32);
      OUTLINED_FUNCTION_9_2();
      v13 = *(v12 + 1880);
      v13();
      sub_1E3C6DC94();

      (v13)(v14);
      OUTLINED_FUNCTION_2_1();
      (*(v15 + 1792))(4);

      (v13)(v16);
      OUTLINED_FUNCTION_2_1();
      (*(v17 + 1696))(22);

      OUTLINED_FUNCTION_9_2();
      v19 = *(v18 + 1904);
      v19();
      sub_1E3C6DE18();

      (v19)(v20);
      OUTLINED_FUNCTION_2_1();
      (*(v21 + 1696))(14);

      (v19)(v22);
      OUTLINED_FUNCTION_2_1();
      (*(v23 + 1792))(7);

      OUTLINED_FUNCTION_9_2();
      (*(v24 + 1856))();
      v29[0] = 0;
      v29[1] = 0;
      v30 = xmmword_1E4296CD0;
      v31 = 0;
      OUTLINED_FUNCTION_26_0();
      (*(v25 + 160))(v29);

      OUTLINED_FUNCTION_9_2();
      (*(v26 + 1808))();
      v27 = sub_1E418A524();
      sub_1E3C6DFCC(*v27);
    }

    else
    {
      OUTLINED_FUNCTION_111();
      (*(v28 + 1160))(0, 1);
      sub_1E3C641A8();
      sub_1E3C64598();
      sub_1E3C6488C();
      return sub_1E3C64C8C();
    }
  }

  return result;
}

uint64_t sub_1E3C65728()
{
}

uint64_t sub_1E3C657B0()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3C65840()
{
  v0 = sub_1E3C657B0();

  return MEMORY[0x1EEE6BDC0](v0, 218, 7);
}

uint64_t sub_1E3C65870(char a1, uint64_t a2, char a3)
{
  v3 = sub_1E3890920(a1, a3);
  OUTLINED_FUNCTION_8();
  return (v3 ^ (*(v4 + 2144))()) & 1;
}

uint64_t sub_1E3C65964(void *a1)
{
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35D08);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - v10;
  v12 = sub_1E4204BE4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = MEMORY[0x1E690F520](a1);
  sub_1E3C65D60(v19, v11);

  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1E325F748(v11, &qword_1ECF35D08);
    v20 = sub_1E324FBDC();
    (*(v4 + 16))(v8, v20, v2);
    v21 = a1;
    v22 = sub_1E41FFC94();
    v23 = sub_1E42067F4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v35 = v25;
      *v24 = 136315138;
      v26 = [v21 debugDescription];
      v27 = sub_1E4205F14();
      v29 = v28;

      v30 = sub_1E3270FC8(v27, v29, &v35);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_1E323F000, v22, v23, "JetNetworkPerfMetricsConverter - No network performance metrics could\nbe created from the AMSURLResult:%s.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1E69143B0](v25, -1, -1);
      MEMORY[0x1E69143B0](v24, -1, -1);
    }

    (*(v4 + 8))(v8, v2);
    return MEMORY[0x1E69E7CC8];
  }

  else
  {
    OUTLINED_FUNCTION_90();
    v32();
    v31 = sub_1E3C65E28(v18);
    (*(v14 + 8))(v18, v12);
  }

  return v31;
}

id JetNetworkPerfMetricsConverterObjc.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3C65D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_1E4204BE4();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_1E4204BE4();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

uint64_t sub_1E3C65E28(uint64_t a1)
{
  v2 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E4204534();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v181 = v180 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  v180[5] = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  v180[4] = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_6();
  v180[3] = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_18_6();
  v180[2] = v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_6();
  v180[1] = v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_6();
  v180[0] = v25;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v180 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v180 - v30;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = v180 - v34;
  v36 = *(v11 + 104);
  v185 = *MEMORY[0x1E69AAFB8];
  v186 = v11 + 104;
  v184 = v36;
  v36(v180 - v34, v33);
  sub_1E41FE5C4();
  sub_1E41FE574();
  (*(v4 + 8))(v8, v2);
  sub_1E4204524();
  v38 = v37;
  v39 = *(v11 + 8);
  v182 = v11 + 8;
  v183 = v39;
  v39(v35, v9);
  sub_1E3C6A554(7);
  v41 = v40;
  v43 = v42;
  v190 = MEMORY[0x1E69E63B0];
  *&v189 = floor(v38);
  sub_1E329504C(&v189, v188);
  v44 = MEMORY[0x1E69E7CC8];
  swift_isUniquelyReferenced_nonNull_native();
  v187 = v44;
  sub_1E32A87C0(v188, v41, v43);

  v45 = v187;
  v46 = sub_1E4204B84();
  v48 = MEMORY[0x1E69E6158];
  if (v47)
  {
    v49 = v46;
    v50 = v47;
    sub_1E3C6A554(0);
    OUTLINED_FUNCTION_11_24();
    v190 = v48;
    *&v189 = v49;
    *(&v189 + 1) = v50;
    OUTLINED_FUNCTION_7_145();
    v51 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v51);

    v45 = v187;
  }

  v52 = sub_1E4204BD4();
  v54 = v183;
  if (v53)
  {
    v55 = v52;
    v56 = v53;
    sub_1E3C6A554(1);
    OUTLINED_FUNCTION_11_24();
    v190 = MEMORY[0x1E69E6158];
    *&v189 = v55;
    *(&v189 + 1) = v56;
    OUTLINED_FUNCTION_7_145();
    v57 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v57);

    v45 = v187;
  }

  v58 = MEMORY[0x1E69E63B0];
  OUTLINED_FUNCTION_4_155();
  v59();
  v60 = sub_1E4204AE4();
  if (v61)
  {
    v60 = OUTLINED_FUNCTION_8_107();
  }

  else
  {
    v62 = MEMORY[0x1E69E63B0];
  }

  v63 = OUTLINED_FUNCTION_0_192(v60, v62);
  sub_1E3C677F0(v63, v64);
  v66 = v65;
  v54(v31, v9);
  sub_1E325F748(&v189, &unk_1ECF296E0);
  if ((v66 & 1) == 0)
  {
    sub_1E3C6A554(4);
    OUTLINED_FUNCTION_2_149();
    v67 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v67);

    v45 = v187;
  }

  OUTLINED_FUNCTION_4_155();
  v68();
  v69 = sub_1E4204B04();
  if (v70)
  {
    v69 = OUTLINED_FUNCTION_8_107();
  }

  else
  {
    v71 = MEMORY[0x1E69E63B0];
  }

  v72 = OUTLINED_FUNCTION_0_192(v69, v71);
  sub_1E3C677F0(v72, v73);
  v75 = v74;
  v54(v28, v9);
  sub_1E325F748(&v189, &unk_1ECF296E0);
  if ((v75 & 1) == 0)
  {
    sub_1E3C6A554(5);
    OUTLINED_FUNCTION_2_149();
    v76 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v76);

    v45 = v187;
  }

  v77 = OUTLINED_FUNCTION_3_148();
  v78(v77);
  v79 = sub_1E4204AC4();
  if (v80)
  {
    v79 = OUTLINED_FUNCTION_8_107();
  }

  else
  {
    v81 = MEMORY[0x1E69E63B0];
  }

  v82 = OUTLINED_FUNCTION_0_192(v79, v81);
  sub_1E3C677F0(v82, v83);
  v84 = OUTLINED_FUNCTION_5_141();
  (v54)(v84);
  sub_1E325F748(&v189, &unk_1ECF296E0);
  if ((v75 & 1) == 0)
  {
    sub_1E3C6A554(6);
    OUTLINED_FUNCTION_2_149();
    v85 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v85);

    v45 = v187;
  }

  v86 = sub_1E4204B14();
  v87 = MEMORY[0x1E69E6370];
  if (v86 != 2)
  {
    v88 = v86;
    sub_1E3C6A554(3);
    OUTLINED_FUNCTION_11_24();
    v190 = v87;
    LOBYTE(v189) = v88 & 1;
    OUTLINED_FUNCTION_7_145();
    v89 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v89);

    v45 = v187;
  }

  v90 = OUTLINED_FUNCTION_3_148();
  v91(v90);
  v92 = sub_1E4204B34();
  if (v93)
  {
    v92 = OUTLINED_FUNCTION_8_107();
  }

  else
  {
    v94 = MEMORY[0x1E69E63B0];
  }

  v95 = OUTLINED_FUNCTION_0_192(v92, v94);
  sub_1E3C677F0(v95, v96);
  v97 = OUTLINED_FUNCTION_5_141();
  (v54)(v97);
  sub_1E325F748(&v189, &unk_1ECF296E0);
  if ((v75 & 1) == 0)
  {
    sub_1E3C6A554(9);
    OUTLINED_FUNCTION_2_149();
    v98 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v98);

    v45 = v187;
  }

  v99 = OUTLINED_FUNCTION_3_148();
  v100(v99);
  v101 = sub_1E4204AF4();
  if (v102)
  {
    v101 = OUTLINED_FUNCTION_8_107();
  }

  else
  {
    v103 = MEMORY[0x1E69E63B0];
  }

  v104 = OUTLINED_FUNCTION_0_192(v101, v103);
  sub_1E3C677F0(v104, v105);
  v106 = OUTLINED_FUNCTION_5_141();
  (v54)(v106);
  sub_1E325F748(&v189, &unk_1ECF296E0);
  if ((v75 & 1) == 0)
  {
    sub_1E3C6A554(10);
    OUTLINED_FUNCTION_2_149();
    v107 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v107);

    v45 = v187;
  }

  v108 = OUTLINED_FUNCTION_3_148();
  v109(v108);
  v110 = sub_1E4204B94();
  if (v111)
  {
    v110 = OUTLINED_FUNCTION_8_107();
  }

  else
  {
    v112 = MEMORY[0x1E69E63B0];
  }

  v113 = OUTLINED_FUNCTION_0_192(v110, v112);
  sub_1E3C677F0(v113, v114);
  v115 = OUTLINED_FUNCTION_5_141();
  (v54)(v115);
  sub_1E325F748(&v189, &unk_1ECF296E0);
  if ((v75 & 1) == 0)
  {
    sub_1E3C6A554(11);
    OUTLINED_FUNCTION_2_149();
    v116 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v116);

    v45 = v187;
  }

  v117 = OUTLINED_FUNCTION_3_148();
  v118(v117);
  v119 = sub_1E4204B44();
  if (v120)
  {
    v119 = OUTLINED_FUNCTION_8_107();
  }

  else
  {
    v121 = MEMORY[0x1E69E63B0];
  }

  v122 = OUTLINED_FUNCTION_0_192(v119, v121);
  sub_1E3C677F0(v122, v123);
  v124 = OUTLINED_FUNCTION_5_141();
  (v54)(v124);
  sub_1E325F748(&v189, &unk_1ECF296E0);
  if ((v75 & 1) == 0)
  {
    sub_1E3C6A554(12);
    OUTLINED_FUNCTION_2_149();
    v125 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v125);

    v45 = v187;
  }

  v126 = OUTLINED_FUNCTION_3_148();
  v127(v126);
  v128 = sub_1E4204AB4();
  if (v129)
  {
    v128 = OUTLINED_FUNCTION_8_107();
  }

  else
  {
    v130 = MEMORY[0x1E69E63B0];
  }

  v131 = OUTLINED_FUNCTION_0_192(v128, v130);
  sub_1E3C677F0(v131, v132);
  v133 = OUTLINED_FUNCTION_5_141();
  (v54)(v133);
  sub_1E325F748(&v189, &unk_1ECF296E0);
  if ((v75 & 1) == 0)
  {
    sub_1E3C6A554(13);
    OUTLINED_FUNCTION_2_149();
    v134 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v134);

    v45 = v187;
  }

  v135 = *&v181;
  v136 = OUTLINED_FUNCTION_3_148();
  v137(v136);
  v138 = sub_1E4204BB4();
  if (v139)
  {
    v138 = OUTLINED_FUNCTION_8_107();
  }

  else
  {
    v140 = MEMORY[0x1E69E63B0];
  }

  v141 = MEMORY[0x1E69E6158];
  v142 = OUTLINED_FUNCTION_0_192(v138, v140);
  sub_1E3C677F0(v142, v143);
  v144 = OUTLINED_FUNCTION_5_141();
  (v183)(v144);
  sub_1E325F748(&v189, &unk_1ECF296E0);
  if ((v75 & 1) == 0)
  {
    sub_1E3C6A554(14);
    OUTLINED_FUNCTION_22_66();
    v190 = v58;
    *&v189 = ceil(v135);
    OUTLINED_FUNCTION_7_145();
    OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_90();
    sub_1E32A87C0(v145, v146, v147);

    v45 = v187;
  }

  v148 = sub_1E4204AD4();
  if (v148 != 2)
  {
    v149 = v148;
    sub_1E3C6A554(15);
    OUTLINED_FUNCTION_22_66();
    v190 = v87;
    LOBYTE(v189) = v149 & 1;
    OUTLINED_FUNCTION_7_145();
    OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_90();
    sub_1E32A87C0(v150, v151, v152);

    v45 = v187;
  }

  v153 = sub_1E4204B24();
  v154 = MEMORY[0x1E69E7360];
  if ((v155 & 1) == 0)
  {
    v156 = v153;
    sub_1E3C6A554(16);
    OUTLINED_FUNCTION_22_66();
    v190 = v154;
    *&v189 = v156;
    OUTLINED_FUNCTION_7_145();
    OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_90();
    sub_1E32A87C0(v157, v158, v159);

    v45 = v187;
  }

  v160 = sub_1E4204B64();
  if ((v161 & 1) == 0)
  {
    v162 = v160;
    sub_1E3C6A554(17);
    OUTLINED_FUNCTION_22_66();
    v190 = v154;
    *&v189 = v162;
    OUTLINED_FUNCTION_7_145();
    OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_90();
    sub_1E32A87C0(v163, v164, v165);

    v45 = v187;
  }

  sub_1E4204A84();
  if (v166)
  {
    OUTLINED_FUNCTION_49_4();
    sub_1E3C6A554(18);
    OUTLINED_FUNCTION_11_24();
    v190 = v141;
    *&v189 = a1;
    *(&v189 + 1) = v9;
    OUTLINED_FUNCTION_7_145();
    v167 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v167);

    v45 = v187;
  }

  sub_1E4204B54();
  if (v168)
  {
    OUTLINED_FUNCTION_49_4();
    sub_1E3C6A554(19);
    OUTLINED_FUNCTION_11_24();
    v190 = v141;
    *&v189 = a1;
    *(&v189 + 1) = v9;
    OUTLINED_FUNCTION_7_145();
    v169 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v169);

    v45 = v187;
  }

  sub_1E4204BA4();
  if (v170)
  {
    OUTLINED_FUNCTION_49_4();
    sub_1E3C6A554(20);
    OUTLINED_FUNCTION_11_24();
    v190 = v141;
    *&v189 = a1;
    *(&v189 + 1) = v9;
    OUTLINED_FUNCTION_7_145();
    v171 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v171);

    v45 = v187;
  }

  sub_1E4204AA4();
  if (v172)
  {
    OUTLINED_FUNCTION_49_4();
    sub_1E3C6A554(21);
    OUTLINED_FUNCTION_11_24();
    v190 = v141;
    *&v189 = a1;
    *(&v189 + 1) = v9;
    OUTLINED_FUNCTION_7_145();
    v173 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v173);

    v45 = v187;
  }

  v174 = sub_1E4204A94();
  if (v174 != 2)
  {
    v175 = v174;
    sub_1E3C6A554(2);
    OUTLINED_FUNCTION_22_66();
    v190 = v87;
    LOBYTE(v189) = v175 & 1;
    OUTLINED_FUNCTION_7_145();
    OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_90();
    sub_1E32A87C0(v176, v177, v178);

    return v187;
  }

  return v45;
}

uint64_t sub_1E3C66978(uint64_t a1)
{
  v2 = sub_1E4204BE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E3C66A98(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35D10);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E4297BE0;
  (*(v3 + 32))(v8 + v7, v6, v2);
  return v8;
}

uint64_t sub_1E3C66A98(uint64_t a1)
{
  v105 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v104 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v103 = v5 - v4;
  v6 = sub_1E4204534();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = *MEMORY[0x1E69AAFB8];
  v14 = *(v8 + 104);
  v15 = OUTLINED_FUNCTION_9_106();
  v14(v15);
  v108 = &unk_1F5D7A428;
  v109 = &off_1F5D7A268;
  LOBYTE(v107) = 4;
  sub_1E3F9F164(&v107);
  v16 = MEMORY[0x1E69AAFC0];
  sub_1E3C677F0(&v106, MEMORY[0x1E69AAFC0]);
  sub_1E325F748(&v106, &unk_1ECF296E0);
  v17 = *(v8 + 8);
  v18 = OUTLINED_FUNCTION_210();
  v17(v18);
  __swift_destroy_boxed_opaque_existential_1(&v107);
  v19 = OUTLINED_FUNCTION_9_106();
  v14(v19);
  sub_1E3C6A554(5);
  OUTLINED_FUNCTION_15_98();
  sub_1E3277E60(v20, v21, a1, v22);

  sub_1E3C677F0(&v107, v16);
  sub_1E325F748(&v107, &unk_1ECF296E0);
  v23 = OUTLINED_FUNCTION_210();
  v17(v23);
  v24 = OUTLINED_FUNCTION_9_106();
  v14(v24);
  sub_1E3C6A554(6);
  OUTLINED_FUNCTION_15_98();
  sub_1E3277E60(v25, v26, a1, v27);

  sub_1E3C677F0(&v107, v16);
  sub_1E325F748(&v107, &unk_1ECF296E0);
  v28 = OUTLINED_FUNCTION_210();
  v17(v28);
  v29 = OUTLINED_FUNCTION_9_106();
  v14(v29);
  sub_1E3C6A554(7);
  OUTLINED_FUNCTION_15_98();
  sub_1E3277E60(v30, v31, a1, v32);

  OUTLINED_FUNCTION_24_63();
  v34 = OUTLINED_FUNCTION_18_75(v33, &v116 + 4);
  sub_1E325F748(v34, &unk_1ECF296E0);
  v35 = OUTLINED_FUNCTION_210();
  v17(v35);
  v36 = OUTLINED_FUNCTION_9_106();
  v14(v36);
  sub_1E3C6A554(9);
  OUTLINED_FUNCTION_15_98();
  sub_1E3277E60(v37, v38, a1, v39);

  sub_1E3C677F0(&v107, v16);
  v41 = OUTLINED_FUNCTION_18_75(v40, &v115 + 4);
  sub_1E325F748(v41, &unk_1ECF296E0);
  v42 = OUTLINED_FUNCTION_210();
  v17(v42);
  v43 = OUTLINED_FUNCTION_9_106();
  v14(v43);
  sub_1E3C6A554(10);
  OUTLINED_FUNCTION_15_98();
  sub_1E3277E60(v44, v45, a1, v46);

  sub_1E3C677F0(&v107, v16);
  v48 = OUTLINED_FUNCTION_18_75(v47, &v114 + 4);
  sub_1E325F748(v48, &unk_1ECF296E0);
  v49 = OUTLINED_FUNCTION_210();
  v17(v49);
  v50 = OUTLINED_FUNCTION_9_106();
  v14(v50);
  sub_1E3C6A554(11);
  OUTLINED_FUNCTION_15_98();
  sub_1E3277E60(v51, v52, a1, v53);

  sub_1E3C677F0(&v107, v16);
  v55 = OUTLINED_FUNCTION_18_75(v54, &v113 + 4);
  sub_1E325F748(v55, &unk_1ECF296E0);
  v56 = OUTLINED_FUNCTION_210();
  v17(v56);
  v57 = OUTLINED_FUNCTION_9_106();
  v14(v57);
  sub_1E3C6A554(12);
  OUTLINED_FUNCTION_15_98();
  sub_1E3277E60(v58, v59, a1, v60);

  OUTLINED_FUNCTION_24_63();
  v62 = OUTLINED_FUNCTION_18_75(v61, &v112 + 4);
  sub_1E325F748(v62, &unk_1ECF296E0);
  v63 = OUTLINED_FUNCTION_210();
  v17(v63);
  v64 = OUTLINED_FUNCTION_9_106();
  v14(v64);
  sub_1E3C6A554(13);
  OUTLINED_FUNCTION_15_98();
  sub_1E3277E60(v65, v66, a1, v67);

  OUTLINED_FUNCTION_24_63();
  v69 = OUTLINED_FUNCTION_18_75(v68, &v111 + 4);
  sub_1E325F748(v69, &unk_1ECF296E0);
  v70 = OUTLINED_FUNCTION_210();
  v17(v70);
  (v14)(v12, v13, v6);
  sub_1E3C6A554(14);
  OUTLINED_FUNCTION_15_98();
  sub_1E3277E60(v71, v72, a1, v73);

  OUTLINED_FUNCTION_24_63();
  v75 = OUTLINED_FUNCTION_18_75(v74, v110);
  sub_1E325F748(v75, &unk_1ECF296E0);
  (v17)(v12, v6);
  sub_1E3C6A554(0);
  sub_1E3277E60(v76, v77, a1, &v107);

  if (v108)
  {
    swift_dynamicCast();
    OUTLINED_FUNCTION_13_109();
  }

  else
  {
    sub_1E325F748(&v107, &unk_1ECF296E0);
  }

  sub_1E3C6A554(1);
  sub_1E3277E60(v78, v79, a1, &v107);

  if (v108)
  {
    OUTLINED_FUNCTION_10_101();
    OUTLINED_FUNCTION_13_109();
  }

  else
  {
    sub_1E325F748(&v107, &unk_1ECF296E0);
  }

  sub_1E3C6A554(3);
  OUTLINED_FUNCTION_14_110(v80, v81);

  if (v108)
  {
    OUTLINED_FUNCTION_10_101();
  }

  else
  {
    sub_1E325F748(&v107, &unk_1ECF296E0);
  }

  sub_1E3C6A554(15);
  OUTLINED_FUNCTION_14_110(v82, v83);

  if (v108)
  {
    OUTLINED_FUNCTION_10_101();
  }

  else
  {
    sub_1E325F748(&v107, &unk_1ECF296E0);
  }

  sub_1E3C6A554(16);
  OUTLINED_FUNCTION_14_110(v84, v85);

  if (v108)
  {
    OUTLINED_FUNCTION_10_101();
  }

  else
  {
    sub_1E325F748(&v107, &unk_1ECF296E0);
  }

  sub_1E3C6A554(17);
  OUTLINED_FUNCTION_14_110(v86, v87);

  if (v108)
  {
    OUTLINED_FUNCTION_10_101();
  }

  else
  {
    sub_1E325F748(&v107, &unk_1ECF296E0);
  }

  sub_1E3C6A554(18);
  OUTLINED_FUNCTION_14_110(v88, v89);

  if (v108)
  {
    OUTLINED_FUNCTION_10_101();
    OUTLINED_FUNCTION_13_109();
  }

  else
  {
    sub_1E325F748(&v107, &unk_1ECF296E0);
  }

  sub_1E3C6A554(19);
  OUTLINED_FUNCTION_14_110(v90, v91);

  if (v108)
  {
    OUTLINED_FUNCTION_10_101();
    OUTLINED_FUNCTION_13_109();
  }

  else
  {
    sub_1E325F748(&v107, &unk_1ECF296E0);
  }

  sub_1E3C6A554(20);
  OUTLINED_FUNCTION_14_110(v92, v93);

  if (v108)
  {
    OUTLINED_FUNCTION_10_101();
    OUTLINED_FUNCTION_13_109();
  }

  else
  {
    sub_1E325F748(&v107, &unk_1ECF296E0);
  }

  sub_1E3C6A554(2);
  OUTLINED_FUNCTION_14_110(v94, v95);

  if (v108)
  {
    OUTLINED_FUNCTION_10_101();
  }

  else
  {
    sub_1E325F748(&v107, &unk_1ECF296E0);
  }

  sub_1E3C6A554(21);
  OUTLINED_FUNCTION_14_110(v96, v97);

  if (v108)
  {
    OUTLINED_FUNCTION_10_101();
  }

  else
  {
    sub_1E325F748(&v107, &unk_1ECF296E0);
  }

  (v14)(v12, v13, v6);
  sub_1E3C6A554(8);
  sub_1E3277E60(v98, v99, a1, &v107);

  sub_1E3C677F0(&v107, MEMORY[0x1E69AAFC0]);
  v101 = v100;
  sub_1E325F748(&v107, &unk_1ECF296E0);
  (v17)(v12, v6);
  if (v101)
  {
    sub_1E41FE5C4();
    sub_1E41FE574();
    (*(v104 + 8))(v103, v105);
  }

  return sub_1E4204B74();
}

uint64_t sub_1E3C677F0(uint64_t a1, double (*a2)())
{
  sub_1E3294F34(a1, v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      return a2();
    }
  }

  else
  {
    sub_1E325F748(v4, &unk_1ECF296E0);
  }

  return 0;
}

uint64_t sub_1E3C678AC()
{
  v0 = swift_allocObject();
  sub_1E3C678E4();
  return v0;
}

uint64_t sub_1E3C678E4()
{
  v1 = v0;
  v2 = sub_1E42045D4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_5();
  v3 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v35 - v11 + 16;
  type metadata accessor for PagePerformanceEventStorage();
  v13 = sub_1E3C6B0EC();
  *(v0 + 24) = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = v13;
  *(v0 + 48) = 0;
  type metadata accessor for MetricsBaseTime();
  *(v0 + 40) = sub_1E3C6AD98();
  v14 = sub_1E4205F14();
  v16 = v15;
  v17 = sub_1E4205F14();
  v35[3] = MEMORY[0x1E69E6158];
  v35[0] = v17;
  v35[1] = v18;
  swift_beginAccess();
  sub_1E3946774(v35, v14, v16);
  swift_endAccess();
  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 perfEventPublishingEnabled];

  v21 = 0;
  if (v20)
  {
    v22 = sub_1E4206474();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v22);
    sub_1E4206434();
    v23 = sub_1E4206424();
    v24 = swift_allocObject();
    v25 = MEMORY[0x1E69E85E0];
    *(v24 + 16) = v23;
    *(v24 + 24) = v25;
    sub_1E376FE58(0, 0, v12, &unk_1E42C64E0, v24);

    sub_1E41FE614();
    sub_1E41FE5E4();
    (*(v5 + 8))(v9, v3);
    sub_1E42044F4();
    OUTLINED_FUNCTION_22_66();
    sub_1E4205F14();
    v26 = MetricsJetEngine.shared.unsafeMutableAddressor();
    v27 = *((*MEMORY[0x1E69E7D40] & **v26) + 0x68);
    v28 = *v26;
    v27();

    sub_1E4204A74();
    swift_allocObject();
    v21 = sub_1E4204A64();
  }

  *(v1 + 56) = v21;
  type metadata accessor for ImagePerformanceRecorder();

  v30 = sub_1E3C6C478(v29);
  *(v1 + 32) = v30;
  v31 = *(*v30 + 232);

  v31(v32, &off_1F5D79C20);

  return v1;
}

uint64_t sub_1E3C67CB4()
{
  OUTLINED_FUNCTION_24();
  sub_1E4206434();
  *(v0 + 16) = sub_1E4206424();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3C67D44, v2, v1);
}

uint64_t sub_1E3C67D44()
{
  OUTLINED_FUNCTION_24();

  sub_1E41FFCC4();
  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3C67DA0()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E37E1058;

  return sub_1E3C67CB4();
}

void sub_1E3C67E28(char a1, uint64_t a2, char a3)
{
  v7 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v68 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E4204A14();
  OUTLINED_FUNCTION_0_10();
  v63 = v14;
  v64 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v62 = v16 - v15;
  v17 = sub_1E4204624();
  MEMORY[0x1EEE9AC00](v17 - 8);
  OUTLINED_FUNCTION_5();
  sub_1E4204514();
  OUTLINED_FUNCTION_0_10();
  v66 = v19;
  v67 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v65 = v21 - v20;
  v22 = sub_1E4204A24();
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v28 = (v27 - v26);
  if (*(v3 + 48))
  {
    return;
  }

  v69 = v3;
  mach_absolute_time();
  OUTLINED_FUNCTION_8();
  v30 = (*(v29 + 112))();
  if (v31)
  {
    return;
  }

  if ((a3 & 1) == 0)
  {
    v32 = *&a2 * 1000.0;
    if (COERCE__INT64(fabs(*&a2 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v32 > -1.0)
    {
      if (v32 < 1.84467441e19)
      {
        v33 = __CFADD__(v30, v32);
        v30 += v32;
        if (!v33)
        {
          goto LABEL_8;
        }

LABEL_37:
        __break(1u);
        return;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_8:
  v34 = v30;
  LOBYTE(v70[0]) = a1;
  sub_1E4205F84();

  switch(a1)
  {
    case 1:

      sub_1E3C6C2D0(0);
      OUTLINED_FUNCTION_8();
      (*(v50 + 120))(v70);

      v51 = v71;
      sub_1E325F748(v70, &unk_1ECF296E0);
      if (v51 && (sub_1E3C685D0(1, v34, 0) & 1) != 0)
      {
        OUTLINED_FUNCTION_5_0();
        v52 = *(v3 + 24);
        v53 = objc_opt_self();

        v54 = [v53 sharedInstance];
        v55 = [v54 getBasePerfData_];

        v56 = sub_1E4205C64();
        swift_isUniquelyReferenced_nonNull_native();
        v72 = v52;
        OUTLINED_FUNCTION_0_165();
        sub_1E3C69BE4(v56, v57, 0, v58, &v72);
        sub_1E4204614();
        sub_1E37E5C70(MEMORY[0x1E69E7CC0]);
        sub_1E4204504();
        if (*(v69 + 56))
        {
          (*(v66 + 16))(v62, v65, v67);
          (*(v63 + 104))(v62, *MEMORY[0x1E69AB440], v64);
          sub_1E4204A44();
          (*(v63 + 8))(v62, v64);
        }

        byte_1EE259EF8 = 0;
        (*(v66 + 8))(v65, v67);
      }

      return;
    case 2:
    case 3:
    case 6:
    case 10:
    case 11:
      OUTLINED_FUNCTION_13_110();
      goto LABEL_31;
    case 4:
      sub_1E4206BB4();
      v42 = VUISignpostLogObject();
      sub_1E41FFBE4();
      sub_1E41FFBA4();

      (*(v68 + 8))(v12, v7);
      OUTLINED_FUNCTION_8();
      (*(v43 + 208))(0, 0, 1);
      OUTLINED_FUNCTION_13_110();
      sub_1E3C685D0(v44, v45, v46);
      if (*(v3 + 56))
      {
        sub_1E4204A34();
      }

      goto LABEL_24;
    case 5:
    case 9:

      sub_1E3C6C2D0(5);
      OUTLINED_FUNCTION_8();
      (*(v35 + 120))(v70);

      v36 = v71;
      sub_1E325F748(v70, &unk_1ECF296E0);
      if (!v36)
      {
        OUTLINED_FUNCTION_13_110();
        sub_1E3C685D0(v37, v38, v39);
        if (*(v3 + 56))
        {
          sub_1E4204A74();
          sub_1E4204974();
        }

        j__OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_8();
        (*(v40 + 264))(v41 & 1);
      }

      if (sub_1E3C687C4())
      {
        goto LABEL_18;
      }

      return;
    case 7:
      v59 = 3;
      v60 = v34;
      v61 = 0;
LABEL_31:
      sub_1E3C685D0(v59, v60, v61);
      return;
    case 8:
      OUTLINED_FUNCTION_13_110();
      sub_1E3C685D0(v47, v48, v49);
      if (sub_1E3C687C4())
      {
LABEL_18:
        sub_1E3C68B54();
      }

      break;
    default:
      if (sub_1E3C685D0(0, v34, 0))
      {
        if ((byte_1EE259EF8 & 1) == 0)
        {
          sub_1E42045E4();
        }

        if (*(v3 + 56))
        {
          *v28 = 1;
          (*(v24 + 104))(v28, *MEMORY[0x1E69AB450], v22);
          sub_1E4204A54();
          (*(v24 + 8))(v28, v22);
        }

LABEL_24:
        sub_1E3C68750();
      }

      break;
  }
}

uint64_t sub_1E3C685D0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = a2;
  if (a3 == 3)
  {
    goto LABEL_9;
  }

  sub_1E3C6C2D0(a1);
  OUTLINED_FUNCTION_8();
  (*(v6 + 120))(v13);

  if (!v14)
  {
    sub_1E325F748(v13, &unk_1ECF296E0);
    goto LABEL_9;
  }

  if (!swift_dynamicCast())
  {
LABEL_9:
    v7 = MEMORY[0x1E69E63B0];

    sub_1E3C6C2D0(a1);
    v14 = v7;
    *v13 = v4;
    OUTLINED_FUNCTION_8();
    (*(v8 + 128))(v13, v9, v10);

    return 1;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      if (v12 <= v4)
      {
        return 0;
      }

      goto LABEL_9;
    }

    if (v12 < v4)
    {
      goto LABEL_9;
    }
  }

  return 0;
}

uint64_t sub_1E3C68750()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 256))();
  OUTLINED_FUNCTION_8();
  return (*(v1 + 272))(5.0);
}

uint64_t sub_1E3C687C4()
{
  v1 = v0;

  sub_1E3C6C2D0(5);
  OUTLINED_FUNCTION_8();
  (*(v2 + 120))(&v24);

  v3 = v25;
  sub_1E325F748(&v24, &unk_1ECF296E0);
  if (!v3)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_14_111();
  sub_1E3C6C2D0(0);
  OUTLINED_FUNCTION_8();
  (*(v4 + 120))(&v24);

  v5 = v25;
  sub_1E325F748(&v24, &unk_1ECF296E0);
  OUTLINED_FUNCTION_14_111();
  sub_1E3C6C2D0(1);
  v7 = v6;
  OUTLINED_FUNCTION_8();
  (*(v8 + 120))(&v24);

  v9 = v25;
  sub_1E325F748(&v24, &unk_1ECF296E0);
  v10 = 0;
  if (v5)
  {
    if (v9)
    {
      v11 = sub_1E4205F14();
      v13 = v12;
      OUTLINED_FUNCTION_5_0();
      v14 = *(v1 + 24);

      sub_1E3277E60(v11, v13, v14, &v24);

      v15 = v25;
      sub_1E325F748(&v24, &unk_1ECF296E0);
      sub_1E4205F14();
      OUTLINED_FUNCTION_22_66();
      v16 = *(v1 + 24);

      sub_1E3277E60(v14, v7, v16, &v24);

      v17 = v25;
      sub_1E325F748(&v24, &unk_1ECF296E0);
      v10 = 0;
      if (v15)
      {
        if (v17)
        {
          v18 = sub_1E3C695D0();
          if (v18 != 13 && !sub_1E3C6A9C4(v18))
          {
            v10 = 1;
            return v10 & 1;
          }

          OUTLINED_FUNCTION_14_111();
          sub_1E3C6C2D0(11);
          OUTLINED_FUNCTION_8();
          (*(v19 + 120))(&v24);

          v20 = v25;
          sub_1E325F748(&v24, &unk_1ECF296E0);
          OUTLINED_FUNCTION_14_111();
          sub_1E3C6C2D0(12);
          OUTLINED_FUNCTION_8();
          (*(v21 + 120))(&v24);

          if (v25)
          {
            sub_1E325F748(&v24, &unk_1ECF296E0);
            if (v20)
            {
              OUTLINED_FUNCTION_8();
              v10 = (*(v22 + 288))();
              return v10 & 1;
            }
          }

          else
          {
            sub_1E325F748(&v24, &unk_1ECF296E0);
          }

LABEL_12:
          v10 = 0;
        }
      }
    }
  }

  return v10 & 1;
}

void sub_1E3C68B54()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    v1 = v0;
    sub_1E3C68EF0(0xD000000000000022, 0x80000001E4279BB0);
    v2 = [objc_opt_self() sharedInstance];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 pagePerformanceEnabled];

      if (v4)
      {
        v5 = [objc_opt_self() sharedInstance];
        OUTLINED_FUNCTION_8();
        v7 = *(v6 + 144);

        v9 = v7(v8);

        OUTLINED_FUNCTION_5_0();
        v10 = *(v1 + 24);

        swift_isUniquelyReferenced_nonNull_native();
        v15 = v9;
        OUTLINED_FUNCTION_0_165();
        sub_1E3C69BE4(v10, v11, 0, v12, &v15);
        sub_1E3744600(v15);

        v13 = sub_1E4205C44();

        [v5 recordPerfEvent_];
      }

      OUTLINED_FUNCTION_8();
      (*(v14 + 272))(2.5);
      *(v1 + 48) = 1;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1E3C68D28(uint64_t a1)
{
  v3 = sub_1E4204C44();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  if (a1)
  {
    OUTLINED_FUNCTION_8();
    v11 = *(v10 + 152);

    v11(a1);

    type metadata accessor for JetNetworkPerfMetricsConverter();
    sub_1E3C66978(a1);
    if (*(v1 + 56))
    {
      (*(v5 + 104))(v9, *MEMORY[0x1E69AB4E8], v3);
      sub_1E4204A04();

      return (*(v5 + 8))(v9, v3);
    }

    else
    {
    }
  }

  else
  {

    return sub_1E3C68EF0(0xD00000000000002DLL, 0x80000001E4279AC0);
  }
}

uint64_t sub_1E3C68EF0(uint64_t a1, unint64_t a2)
{
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1E4205F14();
  v14 = v13;
  OUTLINED_FUNCTION_5_0();
  v15 = *(v2 + 24);

  sub_1E3277E60(v12, v14, v15, &v32);

  if (v33)
  {
    if (swift_dynamicCast())
    {
      v17 = v30;
      v16 = v31;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1E325F748(&v32, &unk_1ECF296E0);
  }

  v16 = 0xE700000000000000;
  v17 = 0x6E776F6E6B6E55;
LABEL_6:
  if (a2)
  {
    v18 = a2;
  }

  else
  {
    v18 = 0xE300000000000000;
  }

  v19 = sub_1E324FBDC();
  (*(v7 + 16))(v11, v19, v5);

  v20 = sub_1E41FFC94();
  v21 = v5;
  v22 = sub_1E42067D4();

  if (os_log_type_enabled(v20, v22))
  {
    v29 = v21;
    if (a2)
    {
      v23 = a1;
    }

    else
    {
      v23 = 7104878;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v32 = v25;
    *v24 = 136315394;
    v26 = sub_1E3270FC8(v17, v16, &v32);

    *(v24 + 4) = v26;
    *(v24 + 12) = 2080;
    v27 = sub_1E3270FC8(v23, v18, &v32);

    *(v24 + 14) = v27;
    _os_log_impl(&dword_1E323F000, v20, v22, "PagePerformanceReporter[%s] - %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E69143B0](v25, -1, -1);
    MEMORY[0x1E69143B0](v24, -1, -1);

    return (*(v7 + 8))(v11, v29);
  }

  else
  {

    return (*(v7 + 8))(v11, v21);
  }
}

uint64_t *sub_1E3C69200(uint64_t *result)
{
  v2 = v1;
  v3 = result[1];
  v4 = result[2];
  v5 = result[3];
  v113 = result[4];
  v114 = result[6];
  v6 = result[7];
  v115 = result[9];
  v116 = result[5];
  v110 = result[10];
  v7 = result[11];
  v111 = result[12];
  v112 = result[8];
  v8 = result[13];
  v9 = MEMORY[0x1E69E6158];
  if (v3)
  {
    if (v3 == 1)
    {
      return result;
    }

    v10 = MEMORY[0x1E69E6158];
    v11 = *result;
    v12 = sub_1E4205F14();
    v109 = v6;
    v14 = v13;
    v124 = v10;
    LOBYTE(v123) = v11;
    *(&v123 + 1) = v3;
    v9 = v10;
    OUTLINED_FUNCTION_2_150();

    v23 = OUTLINED_FUNCTION_6_127(v15, v16, v17, v18, v19, v20, v21, v22, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123);
    v24 = v14;
    v6 = v108;
    sub_1E3946774(v23, v12, v24);
    swift_endAccess();
  }

  if (v5)
  {
    v25 = sub_1E4205F14();
    v26 = v6;
    v28 = v27;
    v124 = v9;
    *(&v123 + 1) = v5;
    OUTLINED_FUNCTION_2_150();

    v37 = OUTLINED_FUNCTION_6_127(v29, v30, v31, v32, v33, v34, v35, v36, v108, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v4);
    v38 = v28;
    v6 = v26;
    sub_1E3946774(v37, v25, v38);
    swift_endAccess();
  }

  if (v7)
  {
    v39 = sub_1E4205F14();
    v41 = v40;
    v124 = v9;
    *(&v123 + 1) = v7;
    OUTLINED_FUNCTION_2_150();

    v50 = OUTLINED_FUNCTION_6_127(v42, v43, v44, v45, v46, v47, v48, v49, v108, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v110);
    sub_1E3946774(v50, v39, v41);
    swift_endAccess();
  }

  if (v8)
  {
    v51 = sub_1E4205F14();
    v53 = v52;
    v124 = v9;
    *(&v123 + 1) = v8;
    OUTLINED_FUNCTION_2_150();

    v62 = OUTLINED_FUNCTION_6_127(v54, v55, v56, v57, v58, v59, v60, v61, v108, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v111);
    sub_1E3946774(v62, v51, v53);
    swift_endAccess();
  }

  if (v115)
  {

    v63 = sub_1E3C6A90C(1);
    v65 = v64;
    v124 = v9;
    *(&v123 + 1) = v115;
    v66 = OUTLINED_FUNCTION_2_150();
    v74 = OUTLINED_FUNCTION_6_127(v66, v67, v68, v69, v70, v71, v72, v73, v108, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v112);
    sub_1E3946774(v74, v63, v65);
    swift_endAccess();
  }

  if (v116)
  {

    v75 = sub_1E3C6A90C(0);
    v77 = v76;
    v124 = v9;
    *(&v123 + 1) = v116;
    v78 = OUTLINED_FUNCTION_2_150();
    v86 = OUTLINED_FUNCTION_6_127(v78, v79, v80, v81, v82, v83, v84, v85, v108, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v113);
    sub_1E3946774(v86, v75, v77);
    swift_endAccess();
  }

  v87 = sub_1E3C6A90C(1);
  v89 = v88;
  OUTLINED_FUNCTION_5_0();
  v90 = *(v2 + 24);

  sub_1E3277E60(v87, v89, v90, &v123);

  if (v124)
  {
    v91 = swift_dynamicCast();
    if (v91)
    {
      v92 = v117;
    }

    else
    {
      v92 = 0;
    }

    if (v91)
    {
      v93 = v118;
    }

    else
    {
      v93 = 0;
    }

    if (v6)
    {
      goto LABEL_22;
    }
  }

  else
  {
    sub_1E325F748(&v123, &unk_1ECF296E0);
    v92 = 0;
    v93 = 0;
    if (v6)
    {
LABEL_22:

      sub_1E4205F14();
      OUTLINED_FUNCTION_22_66();
      v124 = v9;
      *&v123 = v114;
      *(&v123 + 1) = v6;
LABEL_23:
      v94 = swift_beginAccess();
      v102 = OUTLINED_FUNCTION_6_127(v94, v95, v96, v97, v98, v99, v100, v101, v108, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123);
      sub_1E3946774(v102, v93, v92);
      return swift_endAccess();
    }
  }

  v103 = sub_1E3C695D0();
  if (v103 == 13)
  {
  }

  v104 = v9;
  v105 = sub_1E3C6A9D8(v92, v93, v103);
  v107 = v106;

  if (v107)
  {
    sub_1E4205F14();
    OUTLINED_FUNCTION_22_66();
    v124 = v104;
    *&v123 = v105;
    *(&v123 + 1) = v107;
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1E3C695D0()
{
  v1 = sub_1E4205F14();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  v4 = *(v0 + 24);

  sub_1E3277E60(v1, v3, v4, &v6);

  if (v7)
  {
    if (swift_dynamicCast())
    {
      return sub_1E3C6AAE8();
    }
  }

  else
  {
    sub_1E325F748(&v6, &unk_1ECF296E0);
  }

  return 13;
}

uint64_t sub_1E3C696A8()
{

  return v0;
}

uint64_t sub_1E3C696E8()
{
  sub_1E3C696A8();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1E3C69720()
{
  OUTLINED_FUNCTION_8();
  v2 = *(v0 + 208);
  v2(7, 0, 1);

  return (v2)(8, 0, 1);
}

uint64_t sub_1E3C69824(unint64_t a1, char a2)
{
  v5 = sub_1E4204A24();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = (v10 - v9);
  result = sub_1E3C685D0(11, a1, 1);
  if (*(v2 + 56))
  {
    *v11 = a2 & 1;
    (*(v7 + 104))(v11, *MEMORY[0x1E69AB448], v5);
    sub_1E4204A54();
    return (*(v7 + 8))(v11, v5);
  }

  return result;
}

uint64_t sub_1E3C69928(unint64_t a1, char a2, void *a3)
{
  v7 = sub_1E4204A14();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  if (a3)
  {
    *v13 = a3;
    *(v13 + 8) = a2 & 1;
    v14 = MEMORY[0x1E69AB428];
  }

  else
  {
    *v13 = a2 & 1;
    v14 = MEMORY[0x1E69AB438];
  }

  (*(v9 + 104))(v13, *v14, v7);
  v15 = a3;
  sub_1E3C685D0(12, a1, 2);
  if (*(v3 + 56))
  {
    sub_1E4204A44();
  }

  return (*(v9 + 8))(v13, v7);
}

void sub_1E3C69A5C()
{
  if (sub_1E3C687C4())
  {

    sub_1E3C68B54();
  }
}

uint64_t sub_1E3C69AA0(uint64_t a1)
{
  if (!sub_1E39BD118(0x6672655065676170, 0xEF7363697274654DLL, a1))
  {
    return 0;
  }

  v1 = sub_1E4205C44();
  v2 = sub_1E3FA1E90();

  return v2;
}

uint64_t sub_1E3C69B60(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1E4207B44();
  sub_1E4206014();
  v5 = sub_1E4207BA4();

  return a3(a1, a2, v5);
}

uint64_t sub_1E3C69BE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_1E394CDB0(a1, a2, a3, v31);
  v27[2] = v31[0];
  v28 = v31[1];
  v29 = v31[2];
  v30 = v32;

  while (1)
  {
    sub_1E394CDEC(&v26);
    v7 = *(&v26 + 1);
    if (!*(&v26 + 1))
    {
      sub_1E34AF4DC();
    }

    v8 = v26;
    sub_1E329504C(v27, v25);
    v10 = OUTLINED_FUNCTION_4_156();
    v11 = (v9 & 1) == 0;
    v12 = v28 + v11;
    if (__OFADD__(v28, v11))
    {
      break;
    }

    v13 = v9;
    if (*(&v28 + 1) >= v12)
    {
      if (a4)
      {
        if (v9)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
        sub_1E4207654();
        if (v13)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1E394C160(v12, a4 & 1);
      v14 = OUTLINED_FUNCTION_4_156();
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_18;
      }

      v10 = v14;
      if (v13)
      {
LABEL_10:
        v16 = *a5;
        sub_1E328438C(*(*a5 + 56) + 32 * v10, v24);
        __swift_destroy_boxed_opaque_existential_1(v25);

        v17 = (*(v16 + 56) + 32 * v10);
        __swift_destroy_boxed_opaque_existential_1(v17);
        sub_1E329504C(v24, v17);
        goto LABEL_14;
      }
    }

    v18 = *a5;
    *(*a5 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    v19 = (v18[6] + 16 * v10);
    *v19 = v8;
    v19[1] = v7;
    sub_1E329504C(v25, (v18[7] + 32 * v10));
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_17;
    }

    v18[2] = v22;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

void sub_1E3C69E04(char a1)
{
  switch(a1)
  {
    case 1:
    case 10:
      OUTLINED_FUNCTION_23();
      break;
    case 2:
    case 3:
    case 4:
    case 5:
    case 7:
    case 12:
      return;
    case 6:
      OUTLINED_FUNCTION_17_90(18);
      break;
    case 8:
    case 11:
      OUTLINED_FUNCTION_18_76(18);
      break;
    default:
      OUTLINED_FUNCTION_41_6(18);
      break;
  }
}

uint64_t sub_1E3C69F64()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3C69FB4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6F527361766E6163;
  }

  else
  {
    v3 = 0x656D614E65676170;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA0000000000746FLL;
  }

  if (a2)
  {
    v5 = 0x6F527361766E6163;
  }

  else
  {
    v5 = 0x656D614E65676170;
  }

  if (a2)
  {
    v6 = 0xEA0000000000746FLL;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3C6A058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_13_8();
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E3C6A0E4(char a1, char a2)
{
  sub_1E3C69E04(a1);
  v4 = v3;
  v6 = v5;
  sub_1E3C69E04(a2);
  if (v4 == v8 && v6 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E3C6A170(char a1)
{
  sub_1E4207B44();
  sub_1E3C69E04(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3C6A1D4(uint64_t a1, void (*a2)(uint64_t))
{
  sub_1E4207B44();
  a2(a1);
  OUTLINED_FUNCTION_18_0();

  return sub_1E4207BA4();
}

uint64_t sub_1E3C6A240()
{
  sub_1E4206014();
}

uint64_t sub_1E3C6A2B0(uint64_t a1, char a2)
{
  sub_1E3C69E04(a2);
  sub_1E4206014();
}

uint64_t sub_1E3C6A304(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_1E4206014();
}

uint64_t sub_1E3C6A364(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3C69E04(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3C6A3C4()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3C6A448(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1E4207B44();
  a3(a2);
  OUTLINED_FUNCTION_18_0();

  return sub_1E4207BA4();
}

uint64_t sub_1E3C6A49C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3C69F64();
  *v1 = result;
  return result;
}

void sub_1E3C6A4C4()
{
  v1 = OUTLINED_FUNCTION_11_15();
  sub_1E3C69E04(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_1E3C6A508()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207A04();
  OUTLINED_FUNCTION_50();

  if (v0 >= 0x18)
  {
    return 24;
  }

  else
  {
    return v0;
  }
}

void sub_1E3C6A554(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
      return;
    case 9:
    case 12:
    case 17:
    case 19:
      OUTLINED_FUNCTION_23();
      break;
    case 11:
    case 20:
      OUTLINED_FUNCTION_41_6(30);
      break;
    case 14:
      OUTLINED_FUNCTION_18_76(30);
      break;
    case 16:
      OUTLINED_FUNCTION_17_90(30);
      break;
    default:
      OUTLINED_FUNCTION_21_69();
      break;
  }
}

uint64_t sub_1E3C6A868(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3C6A508();
  *v1 = result;
  return result;
}

void sub_1E3C6A890()
{
  v1 = OUTLINED_FUNCTION_11_15();
  sub_1E3C6A554(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_1E3C6A8C0()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

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

uint64_t sub_1E3C6A90C(char a1)
{
  if (a1)
  {
    return 0x6F527361766E6163;
  }

  else
  {
    return 0x656D614E65676170;
  }
}

uint64_t sub_1E3C6A96C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3C6A8C0();
  *v1 = result;
  return result;
}

uint64_t sub_1E3C6A994()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3C6A90C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E3C6A9D8(uint64_t a1, uint64_t a2, char a3)
{
  v3 = 0;
  switch(a3)
  {
    case 0:
      v3 = 0x776F6E6863746177;
      break;
    case 1:

      v3 = a1;
      break;
    case 8:
      if (a2)
      {
        v7 = sub_1E4205CB4();
        v3 = sub_1E37D26AC(a1, a2, v7);
      }

      else
      {
        v3 = a1;
      }

      break;
    case 9:
    case 10:
    case 11:
    case 12:
      v3 = 0x686372616573;
      break;
    default:
      return v3;
  }

  return v3;
}

uint64_t sub_1E3C6AAE8()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3C6AB2C(char a1)
{
  result = 0x776F4E6863746157;
  switch(a1)
  {
    case 1:
      result = 0x6C656E6E616843;
      break;
    case 2:
      result = 0x7361766E6143;
      break;
    case 3:
      result = 0x776F68535654;
      break;
    case 4:
      result = 0x646F736970455654;
      break;
    case 5:
      result = 0x6569766F4DLL;
      break;
    case 6:
      result = 0x676E6974726F7053;
      break;
    case 7:
      result = 1836019538;
      break;
    case 8:
      result = 1953460050;
      break;
    case 9:
      result = 0x614C686372616553;
      break;
    case 10:
      result = 0x6948686372616553;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x6552686372616553;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3C6AD48(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3C6AAE8();
  *v1 = result;
  return result;
}

unint64_t sub_1E3C6AD70()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3C6AB2C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E3C6AD98()
{
  v0 = swift_allocObject();
  sub_1E3C6ADD0();
  return v0;
}

uint64_t sub_1E3C6ADD0()
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = sub_1E41FFBF4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  sub_1E4206BA4();
  v3 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_11_104();

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_13_8();
  v4(v5);
  v10.tv_sec = 0;
  v10.tv_usec = 0;
  gettimeofday(&v10, 0);
  tv_usec = v10.tv_usec;
  *(v0 + 24) = v10.tv_sec;
  *(v0 + 32) = tv_usec;
  *(v0 + 16) = mach_absolute_time();
  type metadata accessor for MetricsBaseTime();
  *(v0 + 40) = sub_1E3C6AFA4(*(v0 + 24), *(v0 + 32));
  sub_1E4206B94();
  v7 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_11_104();

  v8 = OUTLINED_FUNCTION_13_8();
  v4(v8);
  return v0;
}

unint64_t sub_1E3C6AFA4(unint64_t result, unsigned int a2)
{
  if (!is_mul_ok(result, 0xF4240uLL))
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((a2 & 0x80000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = 1000000 * result;
  result = 1000000 * result + a2;
  if (__CFADD__(v2, a2))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

unint64_t sub_1E3C6AFD8(unint64_t a1)
{
  type metadata accessor for MetricsBaseTime();
  result = sub_1E3C6B038(*(v1 + 16), a1);
  if (!result)
  {
    return 0;
  }

  v4 = *(v1 + 40);
  v5 = __CFADD__(v4, result);
  v6 = v4 + result;
  if (!v5)
  {
    return v6 / 0x3E8;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E3C6B038(unint64_t a1, unint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  mach_timebase_info(v6);
  v4 = a2 - a1;
  if (a2 < a1)
  {
    return 0;
  }

  if (!is_mul_ok(v4, v6[0].numer))
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }

  if (!v6[0].denom)
  {
    goto LABEL_8;
  }

  return v4 * v6[0].numer / v6[0].denom / 0x3E8;
}

uint64_t sub_1E3C6B0EC()
{
  OUTLINED_FUNCTION_15_1();
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1E4205CB4();
  return v0;
}

double sub_1E3C6B144@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  OUTLINED_FUNCTION_7_4();
  v7 = *(v3 + 16);
  if (*(v7 + 16))
  {

    v8 = sub_1E327D33C(a1, a2);
    if (v9)
    {
      sub_1E328438C(*(v7 + 56) + 32 * v8, a3);

      return result;
    }
  }

  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

uint64_t sub_1E3C6B1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_weakInit();
  sub_1E37C5830(a1, v10, &unk_1ECF296E0);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v8 = v10[1];
  *(v7 + 40) = v10[0];
  *(v7 + 56) = v8;

  sub_1E3C6B718(sub_1E3C6B990, v7);

  sub_1E325F748(a1, &unk_1ECF296E0);
}

void (*sub_1E3C6B2D0(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v7;
  v7[9] = a3;
  v7[10] = v3;
  v7[8] = a2;
  v8 = OUTLINED_FUNCTION_13_8();
  sub_1E3C6B144(v8, v9, v10);
  return sub_1E3C6B34C;
}

void sub_1E3C6B34C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 64);
  if (a2)
  {
    sub_1E37C5830(*a1, v2 + 32, &unk_1ECF296E0);

    sub_1E3C6B1D0(v2 + 32, v4, v3);
    sub_1E325F748(v2, &unk_1ECF296E0);
  }

  else
  {

    sub_1E3C6B1D0(v2, v4, v3);
  }

  free(v2);
}

uint64_t sub_1E3C6B434()
{
  swift_allocObject();
  swift_weakInit();

  v0 = OUTLINED_FUNCTION_13_8();
  sub_1E3C6B554(v0, v1);
}

uint64_t sub_1E3C6B4AC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();

    sub_1E3C6C1D4(v2, sub_1E394C454, 0, (v1 + 16));
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1E3C6B554(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = objc_opt_self();

  v9 = [v8 currentThread];
  v10 = [v9 isMainThread];

  if (v10)
  {
    OUTLINED_FUNCTION_13_8();
    sub_1E3C6B4AC();
  }

  else
  {
    v11 = sub_1E4206474();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
    sub_1E4206434();

    v12 = sub_1E4206424();
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E85E0];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = sub_1E3C6C148;
    v13[5] = v7;
    sub_1E376FE58(0, 0, v6, &unk_1E42C6A58, v13);
  }
}

uint64_t sub_1E3C6B718(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = [objc_opt_self() currentThread];
  v8 = [v7 isMainThread];

  if (v8)
  {
    return a1();
  }

  v10 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
  sub_1E4206434();
  OUTLINED_FUNCTION_50();

  v11 = sub_1E4206424();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a1;
  v12[5] = a2;
  sub_1E376FE58(0, 0, v6, &unk_1E42C6A60, v12);
}

uint64_t sub_1E3C6B86C()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  sub_1E4206434();
  v0[4] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v4 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3C6B8FC, v4, v3);
}

uint64_t sub_1E3C6B8FC()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 16);

  v1(v2);
  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_1E3C6B960()
{

  v0 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3C6B990()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E37C5830(v0 + 40, v4, &unk_1ECF296E0);
    swift_beginAccess();

    sub_1E3946774(v4, v1, v2);
    swift_endAccess();
  }

  return result;
}

unint64_t sub_1E3C6BA48()
{
  result = qword_1ECF35D18;
  if (!qword_1ECF35D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35D18);
  }

  return result;
}

unint64_t sub_1E3C6BAA0()
{
  result = qword_1ECF35D20;
  if (!qword_1ECF35D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35D20);
  }

  return result;
}

unint64_t sub_1E3C6BAF8()
{
  result = qword_1ECF35D28;
  if (!qword_1ECF35D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35D28);
  }

  return result;
}

unint64_t sub_1E3C6BB50()
{
  result = qword_1ECF35D30;
  if (!qword_1ECF35D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35D30);
  }

  return result;
}

unint64_t sub_1E3C6BBA8()
{
  result = qword_1ECF35D38;
  if (!qword_1ECF35D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35D38);
  }

  return result;
}

unint64_t sub_1E3C6BC00()
{
  result = qword_1ECF35D40;
  if (!qword_1ECF35D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35D40);
  }

  return result;
}

_BYTE *sub_1E3C6BC54(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 11);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3C6BD28(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 24);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 24);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 24);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *sub_1E3C6BDAC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 23);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E3C6BE74(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E3C6BF3C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E3C6C00C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 12);
        }

        break;
    }
  }

  return result;
}

void type metadata accessor for timeval()
{
  if (!qword_1ECF35D48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECF35D48);
    }
  }
}

uint64_t sub_1E3C6C150()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_63(v1);

  return sub_1E3C6B86C();
}

uint64_t sub_1E3C6C1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_1E394C48C(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_1E3C6C248()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_63(v1);

  return sub_1E3C6B86C();
}

uint64_t sub_1E3C6C314(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3C6C374(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 56);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1E3C6C3F4;
}

void sub_1E3C6C3F4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 56) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1E3C6C478(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1E3C6C4B8(a1);
  return v2;
}

uint64_t sub_1E3C6C4B8(uint64_t a1)
{
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 16) = a1;
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x1E696AC70]) init];
  return v1;
}

uint64_t sub_1E3C6C514()
{
  OUTLINED_FUNCTION_8();
  (*(v1 + 264))(0);

  sub_1E32AF6F8(v0 + 48);
  return v0;
}

uint64_t sub_1E3C6C578()
{
  sub_1E3C6C514();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

void sub_1E3C6C5AC()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    *(v0 + 40) = 1;
    v1 = objc_opt_self();
    v2 = [v1 defaultCenter];
    if (_MergedGlobals_220 != -1)
    {
      OUTLINED_FUNCTION_1_184();
    }

    [v2 addObserver:v0 selector:sel_onImageWillLoad_ name:qword_1EE2AA7B8 object:0];

    v3 = [v1 defaultCenter];
    v4 = v3;
    if (qword_1EE28C268 != -1)
    {
      OUTLINED_FUNCTION_0_194();
      v3 = v4;
    }

    [v3 addObserver:v0 selector:sel_onImageDidLoad_ name:qword_1EE2AA7C0 object:0];
  }
}

uint64_t sub_1E3C6C6F4(uint64_t result)
{
  v2 = v1;
  if (*(v1 + 40) == 1)
  {
    v3 = result;
    *(v2 + 40) = 0;
    v4 = objc_opt_self();
    v5 = [v4 defaultCenter];
    if (_MergedGlobals_220 != -1)
    {
      OUTLINED_FUNCTION_1_184();
    }

    [v5 removeObserver:v2 name:qword_1EE2AA7B8 object:0];

    v6 = [v4 defaultCenter];
    if (qword_1EE28C268 != -1)
    {
      OUTLINED_FUNCTION_0_194();
    }

    [v6 removeObserver:v2 name:qword_1EE2AA7C0 object:0];

    *(v2 + 32) = 0;

    if (v3)
    {
      v7 = [*(v2 + 24) allObjects];
      v8 = sub_1E42062B4();

      result = sub_1E32AE9B0(v8);
      if (result)
      {
        v9 = result;
        if (result < 1)
        {
          __break(1u);
        }

        else
        {
          v10 = 0;
          v28 = *(*v2 + 224);
          v26 = *(**(v2 + 16) + 112);
          v24 = "entStorage";
          v25 = v8 & 0xC000000000000001;
          v27 = v8;
          do
          {
            if (v25)
            {
              v11 = MEMORY[0x1E6911E60](v10, v8);
            }

            else
            {
              v11 = *(v8 + 8 * v10 + 32);
              swift_unknownObjectRetain();
            }

            if (v28())
            {
              v13 = v12;
              ObjectType = swift_getObjectType();
              sub_1E42074B4();
              MEMORY[0x1E69109E0](0xD00000000000003ALL, v24 | 0x8000000000000000);
              sub_1E4207614();
              (*(v13 + 32))(0, 0xE000000000000000, ObjectType, v13);

              swift_unknownObjectRelease();
            }

            v15 = mach_absolute_time();
            v16 = v26(v15);
            v18 = v17;
            if (v28())
            {
              v20 = v19;
              if (v18)
              {
                v21 = 0;
              }

              else
              {
                v21 = v16;
              }

              v22 = VUIErrorCancelled();
              v23 = swift_getObjectType();
              (*(v20 + 24))(v21, 1, v22, v23, v20);

              swift_unknownObjectRelease();
            }

            ++v10;
            [*(v2 + 24) removeObject_];
            swift_unknownObjectRelease();
            v8 = v27;
          }

          while (v9 != v10);
        }
      }

      else
      {
      }
    }
  }

  return result;
}

void sub_1E3C6CAB4(double a1)
{
  if (*(v1 + 40) == 1)
  {
    type metadata accessor for ExpirationMonitor();
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = a1;
    *(v1 + 32) = sub_1E41E1BA4(sub_1E3C6D6AC, v4, a1);

    OUTLINED_FUNCTION_8();
    (*(v5 + 136))();
  }
}

void sub_1E3C6CBC0()
{
  if ((*(v0 + 41) & 1) == 0)
  {
    *(v0 + 41) = 1;
    OUTLINED_FUNCTION_8();
    if ((*(v1 + 224))())
    {
      v3 = v2;
      ObjectType = swift_getObjectType();
      (*(v3 + 32))(0xD000000000000032, 0x80000001E427A0B0, ObjectType, v3);

      swift_unknownObjectRelease();
    }
  }
}

void sub_1E3C6CC9C()
{
  v1 = v0;
  v2 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 41))
  {
    return;
  }

  sub_1E41FDF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  v8 = sub_1E42070E4();
  sub_1E329505C(v27);
  v9 = sub_1E41FDF24();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v28 = 0u;
    v29 = 0u;
LABEL_9:
    sub_1E329505C(&v28);
    return;
  }

  v10 = v9;
  v26[1] = 0xD000000000000031;
  v26[2] = 0x80000001E427A1A0;
  sub_1E4207414();
  sub_1E375D7E8(v27, v10, &v28);

  sub_1E375D84C(v27);
  if (!*(&v29 + 1))
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) != 0 && (OUTLINED_FUNCTION_8(), v12 = (*(v11 + 112))(), (v13 & 1) == 0))
  {
    v14 = v12;
    v15 = *(v1 + 24);
    swift_unknownObjectRetain();
    if ([v15 containsObject_])
    {
      swift_unknownObjectRelease_n();
    }

    else
    {
      v16 = VUISignpostLogObject();
      swift_unknownObjectRetain();
      sub_1E41FFBB4();
      sub_1E4206BA4();
      v17 = VUISignpostLogObject();
      sub_1E41FFBA4();

      v18 = *(v1 + 24);
      [v18 addObject_];

      v19 = swift_unknownObjectRelease();
      if ((*(*v1 + 224))(v19))
      {
        v21 = v20;
        ObjectType = swift_getObjectType();
        (*(v21 + 16))(v14, 1, ObjectType, v21);
        swift_unknownObjectRelease();
      }

      if (*(v1 + 32))
      {
        OUTLINED_FUNCTION_8();
        v24 = *(v23 + 136);

        v24(v25);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      (*(v4 + 8))(v7, v2);
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1E3C6D02C()
{
  v1 = v0;
  v2 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v34 - v9;
  sub_1E41FDF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  v11 = sub_1E42070E4();
  sub_1E329505C(v35);
  v12 = sub_1E41FDF24();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v36 = 0u;
    v37 = 0u;
LABEL_8:
    sub_1E329505C(&v36);
    return;
  }

  v13 = v12;
  v34[1] = 0xD000000000000031;
  v34[2] = 0x80000001E427A1A0;
  sub_1E4207414();
  sub_1E375D7E8(v35, v13, &v36);

  sub_1E375D84C(v35);
  if (!*(&v37 + 1))
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  if (swift_dynamicCast() & 1) == 0 || (OUTLINED_FUNCTION_8(), v15 = (*(v14 + 112))(), (v16))
  {
    swift_unknownObjectRelease();
    return;
  }

  v34[0] = v15;
  v17 = sub_1E41FDF24();
  if (v17)
  {
    v18 = v17;
    *&v36 = 0xD00000000000002DLL;
    *(&v36 + 1) = 0x80000001E427A220;
    sub_1E4207414();
    sub_1E375D7E8(v35, v18, &v36);

    sub_1E375D84C(v35);
    if (*(&v37 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
      if (swift_dynamicCast())
      {
        v19 = v35[0];
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  sub_1E329505C(&v36);
  v19 = 0;
LABEL_17:
  v20 = v1[3];
  swift_unknownObjectRetain();
  if ([v20 containsObject_])
  {
    v21 = VUISignpostLogObject();
    swift_unknownObjectRetain();
    sub_1E41FFBB4();
    sub_1E4206B94();
    v22 = VUISignpostLogObject();
    sub_1E41FFBA4();

    v23 = v1[3];
    [v23 removeObject_];

    v24 = swift_unknownObjectRelease();
    if ((*(*v1 + 28))(v24))
    {
      v26 = v25;
      ObjectType = swift_getObjectType();
      (*(v26 + 24))(v34[0], 1, v19, ObjectType, v26);
      swift_unknownObjectRelease();
    }

    v28 = (*(v4 + 8))(v10, v2);
  }

  else
  {
    v28 = swift_unknownObjectRelease();
  }

  if ((*(*v1 + 36))(v28))
  {
    sub_1E4206BB4();
    v29 = VUISignpostLogObject();
    sub_1E41FFBE4();
    sub_1E41FFBA4();

    v30 = (*(v4 + 8))(v7, v2);
    if ((*(*v1 + 28))(v30))
    {
      v32 = v31;
      v33 = swift_getObjectType();
      (*(v32 + 8))(v33, v32);
      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1E3C6D550(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FDEE4();

  a4(v10);

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1E3C6D63C()
{
  result = sub_1E4205ED4();
  qword_1EE2AA7B8 = result;
  return result;
}

uint64_t sub_1E3C6D674()
{
  result = sub_1E4205ED4();
  qword_1EE2AA7C0 = result;
  return result;
}

uint64_t sub_1E3C6D6AC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = (*(*Strong + 224))(Strong);
    v3 = v2;

    if (v1)
    {
      ObjectType = swift_getObjectType();
      sub_1E42074B4();
      MEMORY[0x1E69109E0](0xD000000000000023, 0x80000001E427A250);
      sub_1E4206594();
      MEMORY[0x1E69109E0](0xD00000000000001FLL, 0x80000001E427A280);
      (*(v3 + 32))(0, 0xE000000000000000, ObjectType, v3);
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 264))(1);
  }

  return result;
}

id sub_1E3C6D88C()
{
  swift_beginAccess();
  v1 = *(v0 + 104);

  return v1;
}

void sub_1E3C6D8D0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  *(v1 + 104) = a1;
}

uint64_t sub_1E3C6D94C()
{
  v1 = sub_1E3E60700();
  v2 = *v1;
  *(v0 + 104) = *v1;
  type metadata accessor for ImageLayout();
  v3 = v2;
  *(v0 + 112) = sub_1E3BD61D8();
  v4 = sub_1E3C2F9A0();
  v5 = *(*v4 + 1728);

  v6 = v5();
  v7 = *sub_1E3E5FDEC();
  v8 = *(*v6 + 680);
  v9 = v7;
  v8(v7);

  (v5)(v10);
  OUTLINED_FUNCTION_2_1();
  (*(v11 + 2072))(21);

  (v5)(v12);
  OUTLINED_FUNCTION_2_1();
  (*(v13 + 2024))(2, 0);

  (v5)(v14);
  OUTLINED_FUNCTION_2_1();
  (*(v15 + 2168))(10);

  v17 = (v5)(v16);
  (*(*v17 + 232))(0x4036000000000000, 0);

  v19 = (v5)(v18);
  sub_1E3C37CBC(v19, 39);

  return v4;
}

uint64_t sub_1E3C6DBB4()
{
}

uint64_t sub_1E3C6DBE4()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3C6DC1C()
{
  v0 = sub_1E3C6DBE4();

  return MEMORY[0x1EEE6BDC0](v0, 120, 7);
}

uint64_t sub_1E3C6DC94()
{
  v0 = *sub_1E3E5FD88();
  OUTLINED_FUNCTION_8();
  v2 = *(v1 + 680);
  v3 = v0;
  v2(v0);
  OUTLINED_FUNCTION_36();
  (*(v4 + 2056))(2, 0);
  OUTLINED_FUNCTION_36();
  (*(v5 + 2080))(2, 0);
  OUTLINED_FUNCTION_36();
  (*(v6 + 1984))(5);
  OUTLINED_FUNCTION_36();
  (*(v7 + 1696))(14);
  OUTLINED_FUNCTION_36();
  return (*(v8 + 256))(0x7FF0000000000000, 0);
}

uint64_t sub_1E3C6DE18()
{
  OUTLINED_FUNCTION_30();
  (*(v2 + 1696))(19);
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_22_3();
  v3 = *(*v1 + 680);
  v4 = v0;
  v3(v0);
  OUTLINED_FUNCTION_36();
  (*(v5 + 2056))(1, 0);
  OUTLINED_FUNCTION_36();
  (*(v6 + 2080))(1, 0);
  sub_1E3952C88();
  OUTLINED_FUNCTION_6_22();
  (*(v7 + 160))(v11);
  OUTLINED_FUNCTION_36();
  (*(v8 + 1984))(5);
  OUTLINED_FUNCTION_36();
  return (*(v9 + 256))(0x7FF0000000000000, 0);
}

uint64_t sub_1E3C6DFCC(double a1)
{
  OUTLINED_FUNCTION_30();
  (*(v4 + 2240))(1);
  OUTLINED_FUNCTION_36();
  (*(v5 + 1808))(3);
  sub_1E3E60A14();
  OUTLINED_FUNCTION_22_3();
  v6 = *(*v2 + 872);
  v7 = v1;
  v6(v1);
  (*(*v2 + 440))(*&a1, 0);
  OUTLINED_FUNCTION_36();
  (*(v8 + 2000))(0);
  sub_1E3E5FB0C();
  OUTLINED_FUNCTION_22_3();
  v9 = *(*v2 + 776);
  v10 = v1;
  v9(v1);
  OUTLINED_FUNCTION_8();
  v11 = OUTLINED_FUNCTION_36_0();
  v12(v11);
  OUTLINED_FUNCTION_36();
  v13 = OUTLINED_FUNCTION_36_0();
  v14(v13);
  OUTLINED_FUNCTION_36();
  (*(v15 + 608))(0);
  sub_1E39537A8();
  v33[0] = v16;
  v33[1] = v17;
  v33[2] = v18;
  v33[3] = v19;
  v34 = 0;
  (*(*v2 + 560))(v33);
  v20.n128_u64[0] = *sub_1E3E60BBC();
  v31[0] = j__OUTLINED_FUNCTION_7_78(v20);
  v31[1] = v21;
  v31[2] = v22;
  v31[3] = v23;
  v32 = 0;
  (*(*v2 + 1856))(v31);
  sub_1E3E60F2C();
  OUTLINED_FUNCTION_22_3();
  v24 = *(*v2 + 1832);
  v25 = v1;
  v24(v1);
  OUTLINED_FUNCTION_36();
  v27 = (*(v26 + 1712))(1);
  v27.n128_u64[0] = 6.0;
  j__OUTLINED_FUNCTION_7_78(v27);
  OUTLINED_FUNCTION_6_22();
  return (*(v28 + 184))(v30);
}

uint64_t sub_1E3C6E348(uint64_t a1)
{
  OUTLINED_FUNCTION_26_0();
  (*(v2 + 312))(0x4048000000000000, 0);
  (*(*a1 + 208))(0x4048000000000000, 0);
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  v18[0] = *MEMORY[0x1E69DDCE0];
  v18[1] = v3;
  v19 = 0;
  v4 = (*(*a1 + 160))(v18);
  v5 = *(*a1 + 1744);
  v5(v4);
  OUTLINED_FUNCTION_30();
  v6 = OUTLINED_FUNCTION_36_0();
  v7(v6);

  v5(v8);
  OUTLINED_FUNCTION_2_1();
  v9 = OUTLINED_FUNCTION_36_0();
  v10(v9);

  v5(v11);
  OUTLINED_FUNCTION_2_1();
  (*(v12 + 440))(0x3FF0000000000000, 0);

  v5(v13);
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 1712))(1);

  (*(*a1 + 1768))(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v16 + 1816))(0x4035D5D5D5D5D5D6, 0);
}

uint64_t sub_1E3C6E604(uint64_t a1)
{
  sub_1E3952C78();
  OUTLINED_FUNCTION_6_22();
  (*(v2 + 160))(v13);
  v3 = sub_1E3E5FDEC();
  v4 = *v3;
  v5 = *(*a1 + 680);
  v6 = *v3;
  v5(v4);
  v7 = *v3;
  v8 = *(*a1 + 872);
  v9 = v7;
  v8(v7);
  v10 = [objc_opt_self() clearColor];
  OUTLINED_FUNCTION_36();
  return (*(v11 + 752))();
}

uint64_t sub_1E3C6E74C()
{
  v2[0] = 0x4008000000000000;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0x4010000000000000;
  v3 = 0;
  OUTLINED_FUNCTION_26_0();
  return (*(v0 + 160))(v2);
}

double sub_1E3C6E7AC@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_26_0();
  v3 = (*(v2 + 392))();
  if (v3)
  {
    OUTLINED_FUNCTION_8();
    v5 = COERCE_DOUBLE((*(v4 + 432))());
    v7 = v6;

    if (v7)
    {
      v8 = 0;
      v3 = 0;
    }

    else if (v5 <= 1.0)
    {
      v3 = 0;
      v8 = 0x4048000000000000;
    }

    else
    {
      v8 = 0;
      v3 = 0x4048000000000000;
    }
  }

  else
  {
    v8 = 0;
  }

  j__OUTLINED_FUNCTION_51_1();
  j__OUTLINED_FUNCTION_18();
  v16 = j__OUTLINED_FUNCTION_18() & 1;
  OUTLINED_FUNCTION_58_2();
  v9 = OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_6_14(v9, v10, v11, v12, 0, 1, 0, 1, v14, v15, SHIBYTE(v15), v16);
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 24) = v8;
  *(a1 + 32) = v3;
  *(a1 + 40) = 256;
  *(a1 + 42) = v19;
  *(a1 + 58) = *v20;
  result = *&v20[14];
  *(a1 + 72) = *&v20[14];
  *(a1 + 88) = 1;
  *(a1 + 89) = v21;
  return result;
}

uint64_t type metadata accessor for StandardLockupListView()
{
  result = qword_1EE2997B0;
  if (!qword_1EE2997B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3C6E960()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_173();
  v9 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = type metadata accessor for StandardLockupListView();
  v17 = v16[13];
  *(v0 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  *v0 = v8;
  memcpy(v0 + 1, v6, 0xC3uLL);
  type metadata accessor for ContextMenuModel();
  swift_retain_n();
  sub_1E3E6CDBC();

  sub_1E4207414();
  (*(v11 + 104))(v15, *MEMORY[0x1E697E660], v9);
  v0[26] = sub_1E4188148(v8, v15);
  v18 = sub_1E39C408C(39);
  if (v18)
  {
    j__OUTLINED_FUNCTION_18();
    v19 = OUTLINED_FUNCTION_57_20();
    v21 = sub_1E39C26D0(v19, v20);

    if (!v21)
    {
LABEL_5:
      v18 = 0;
      goto LABEL_6;
    }

    type metadata accessor for ImageViewModel();
    OUTLINED_FUNCTION_20_2();
    v18 = swift_dynamicCastClass();
    if (!v18)
    {

      goto LABEL_5;
    }
  }

LABEL_6:
  v0[27] = v18;
  if (!sub_1E39C408C(26) && !sub_1E39C408C(16))
  {
    goto LABEL_11;
  }

  j__OUTLINED_FUNCTION_18();
  v22 = OUTLINED_FUNCTION_57_20();
  v24 = sub_1E39C26D0(v22, v23);

  if (v24 && *v24 != _TtC8VideosUI13TextViewModel)
  {

LABEL_11:
    v24 = 0;
  }

  v0[28] = v24;
  if (!sub_1E39C408C(23))
  {
LABEL_16:
    v27 = 0;
    goto LABEL_17;
  }

  j__OUTLINED_FUNCTION_18();
  v25 = OUTLINED_FUNCTION_57_20();
  v27 = sub_1E39C26D0(v25, v26);

  if (v27 && *v27 != _TtC8VideosUI13TextViewModel)
  {

    goto LABEL_16;
  }

LABEL_17:
  v0[29] = v27;
  if (!sub_1E39C408C(15))
  {
LABEL_21:
    v30 = 0;
    goto LABEL_22;
  }

  j__OUTLINED_FUNCTION_18();
  v28 = OUTLINED_FUNCTION_57_20();
  v30 = sub_1E39C26D0(v28, v29);

  if (v30 && *v30 != _TtC8VideosUI13TextViewModel)
  {

    goto LABEL_21;
  }

LABEL_22:
  v0[31] = v30;
  v31 = sub_1E39C1F18();
  if (sub_1E32AE9B0(v31))
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](0, v31);
    }

    else
    {
      if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }
    }

    j__OUTLINED_FUNCTION_18();
    v32 = OUTLINED_FUNCTION_57_20();
    v34 = sub_1E39C26D0(v32, v33);
  }

  else
  {

    v34 = 0;
  }

  v0[30] = v34;
  v35 = sub_1E39C408C(79);
  v37 = v35;
  if (v35)
  {
    v38 = sub_1E39C408C(9);

    if (v38)
    {
      j__OUTLINED_FUNCTION_18();
      v39 = OUTLINED_FUNCTION_57_20();
      v37 = sub_1E39C26D0(v39, v40);

      if (!v37 || *v37 == _TtC8VideosUI13TextViewModel)
      {
        goto LABEL_34;
      }
    }

    v37 = 0;
  }

LABEL_34:
  v0[32] = v37;
  if (!v4)
  {
    if (v34)
    {
      if ((*(*v34 + 392))(v35, v36))
      {
        type metadata accessor for TextBadgeLayout();
        if (!swift_dynamicCastClass())
        {
        }
      }
    }

    type metadata accessor for TextBadgePresenter();
    v41 = OUTLINED_FUNCTION_20_2();
    v4 = sub_1E3789F30(v41);
  }

  *(v0 + v16[14]) = v4;
  if (v2)
  {
  }

  else
  {
    type metadata accessor for ImageBadgePresenter(0);
    v2 = sub_1E375E078(v8);
  }

  *(v0 + v16[15]) = v2;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C6EE78()
{
  OUTLINED_FUNCTION_31_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35D50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_5();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35D58);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_41();
  sub_1E3C6F078();
  *(v2 + *(v3 + 36)) = 0;
  v9 = *(v0 + 208);
  OUTLINED_FUNCTION_30_50();
  OUTLINED_FUNCTION_33_4();
  v14 = sub_1E3C74E64(v10, v11, v12, v13);
  sub_1E4187EA8(v9, v3, v14);
  OUTLINED_FUNCTION_33_4();
  sub_1E325F69C(v15, v16);
  OUTLINED_FUNCTION_36();
  v18 = (*(v17 + 392))();
  OUTLINED_FUNCTION_3_8();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_67_0();
  LOBYTE(v3) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_67_0();
  v20 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_67_0();
  v21 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v18, v3 & 1, v20 & 1, 1, v21 & 1, v5, OpaqueTypeConformance2);

  (*(v7 + 8))(v1, v5);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C6F078()
{
  OUTLINED_FUNCTION_31_1();
  v62 = v4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35DE8);
  OUTLINED_FUNCTION_0_10();
  v54 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v53 = v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35DF0);
  OUTLINED_FUNCTION_0_10();
  v55 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v57 = v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35DF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v59 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35D80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_41();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E08);
  OUTLINED_FUNCTION_0_10();
  v56 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_49_2();
  v20 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  type metadata accessor for StandardLockupListView();
  v24 = v1;
  sub_1E3746E10(v0);
  v25 = sub_1E3B02A04();
  v26 = (*(v22 + 8))(v0, v20);
  if (v25)
  {
    sub_1E3C6F6E8(v26);
    v27 = v56;
    (*(v56 + 16))(v15, v3, v17);
    OUTLINED_FUNCTION_35_5();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35D88);
    v28 = sub_1E3C74960();
    OUTLINED_FUNCTION_29_58(v28);
    swift_getOpaqueTypeConformance2();
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35DA8);
    v30 = sub_1E3C74A18();
    v64 = v29;
    v65 = v30;
    OUTLINED_FUNCTION_59_22();
    sub_1E4201F44();
    sub_1E3743538(v2, v59, &qword_1ECF35D80);
    swift_storeEnumTagMultiPayload();
    sub_1E3C74860();
    v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35DC8);
    v32 = sub_1E3C74AD0();
    v64 = v31;
    v65 = v32;
    OUTLINED_FUNCTION_59_22();
    sub_1E4201F44();
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v33, v34);
    (*(v27 + 8))(v3, v17);
  }

  else
  {
    v35 = v58;
    v36 = v59;
    if (*(v24 + 256))
    {
      v37 = v2;
      v38 = v57;
      sub_1E3C6F978();
      v39 = v55;
      (*(v55 + 16))(v15, v38, v35);
      OUTLINED_FUNCTION_35_5();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35D88);
      v40 = sub_1E3C74960();
      OUTLINED_FUNCTION_29_58(v40);
      swift_getOpaqueTypeConformance2();
      v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35DA8);
      v42 = sub_1E3C74A18();
      v64 = v41;
      v65 = v42;
      OUTLINED_FUNCTION_59_22();
      sub_1E4201F44();
      sub_1E3743538(v37, v36, &qword_1ECF35D80);
      swift_storeEnumTagMultiPayload();
      sub_1E3C74860();
      v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35DC8);
      v44 = sub_1E3C74AD0();
      v64 = v43;
      v65 = v44;
      OUTLINED_FUNCTION_59_22();
      sub_1E4201F44();
      OUTLINED_FUNCTION_82();
      sub_1E325F69C(v45, v46);
      (*(v39 + 8))(v57, v35);
    }

    else
    {
      v47 = v53;
      sub_1E3C6FB7C();
      v48 = v54;
      v49 = v60;
      (*(v54 + 16))(v36, v47, v60);
      swift_storeEnumTagMultiPayload();
      sub_1E3C74860();
      v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35DC8);
      v51 = sub_1E3C74AD0();
      v64 = v50;
      v65 = v51;
      swift_getOpaqueTypeConformance2();
      sub_1E4201F44();
      (*(v48 + 8))(v47, v49);
    }
  }

  OUTLINED_FUNCTION_25_2();
}