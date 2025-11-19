void *sub_1E4090E28(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  OUTLINED_FUNCTION_30();
  v5 = *(v4 + 488);
  v6 = v3;
  v7 = v5();
  if (!v7)
  {

    return 0;
  }

  v8 = v7;
  if (!*(v7 + 16))
  {

    return 0;
  }

  if ((*(*v2 + 392))())
  {
    type metadata accessor for RoomBannerLayout();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      OUTLINED_FUNCTION_12_5();
      v12 = *(v11 + 160);

      v12(v10);
      if (sub_1E373E010(39, v8))
      {
        type metadata accessor for ImageViewModel();
        v13 = swift_dynamicCastClass();
        if (!v13)
        {
        }
      }

      else
      {
        v13 = 0;
      }

      OUTLINED_FUNCTION_12_5();
      v15 = *(v14 + 136);

      v15(v16);
      sub_1E3DF9E68(v49);
      v17 = memcpy(__dst, v50, sizeof(__dst));
      v18 = (*(*v10 + 1736))(v17);
      [v6 vuiBounds];
      Width = CGRectGetWidth(v51);
      v20 = *(*v18 + 208);

      v20(*&Width, 0);

      v22 = (*(*v18 + 304))(v21);
      if (v23)
      {
        v24 = 0;
      }

      else
      {
        v24 = v22;
      }

      v48 = 0;
      type metadata accessor for UIFactory();
      OUTLINED_FUNCTION_12_5();
      v26 = *(v25 + 176);

      v28 = v26(v27);
      *__src = Width;
      v43 = v24;
      __src[1] = v24;
      v29 = v48;
      LOBYTE(__src[2]) = v48;
      memcpy(&__src[2] + 1, v50, 0x41uLL);
      v45[3] = &unk_1F5D869A0;
      v45[4] = &off_1F5D868A0;
      v45[0] = swift_allocObject();
      memcpy((v45[0] + 16), __src, 0x52uLL);
      sub_1E37CCDA0(__src, v44);
      sub_1E3280A90(0, &qword_1EE23B360);
      v30 = sub_1E393D92C(v13, v28, v45, 0);

      sub_1E373C624(v45);
      OUTLINED_FUNCTION_12_5();
      (*(v31 + 184))(v30);
      v32 = 0.0;
      if ((v29 & 1) == 0)
      {
        v32 = Width;
      }

      *&v6[OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_previousWidth] = v32;
      v33 = sub_1E373E010(9, v8);

      OUTLINED_FUNCTION_12_5();
      v35 = *(v34 + 200);
      v36 = v35();
      sub_1E3280A90(0, &qword_1EE23B1F8);
      memset(v44, 0, 40);
      v37 = sub_1E393D92C(v33, v36, v44, 0);

      sub_1E373C624(v44);
      OUTLINED_FUNCTION_12_5();
      v39 = (*(v38 + 208))(v37);
      v40 = (v35)(v39);
      if (v40)
      {

        type metadata accessor for SeparatorView();
        [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      }

      OUTLINED_FUNCTION_12_5();
      (*(v41 + 232))();

      *v44 = Width;
      *(&v44[0] + 1) = v43;
      LOBYTE(v44[1]) = v48;
      memcpy(&v44[1] + 1, __dst, 0x41uLL);
      sub_1E37CCDFC(v44);
    }

    else
    {
    }
  }

  else
  {
  }

  return v3;
}

id sub_1E40913DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoomBannerCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E409148C()
{
  result = sub_1E41C8EFC();
  if (result)
  {
    OUTLINED_FUNCTION_30();
    v2 = (*(v1 + 464))();

    if (v2)
    {
      result = sub_1E32AE9B0(v2);
      v3 = result;
      for (i = 0; ; ++i)
      {
        if (v3 == i)
        {

          return 0;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1E6911E60](i, v2);
          v5 = result;
        }

        else
        {
          if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v5 = *(v2 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          return result;
        }

        sub_1E3742F1C();
        sub_1E4206254();
        sub_1E4206254();
        if (v17 == v15 && v18 == v16)
        {
          break;
        }

        v7 = sub_1E42079A4();

        if (v7)
        {
          goto LABEL_18;
        }
      }

LABEL_18:

      v9 = (*(*v5 + 464))(v8);
      if (!v9)
      {
        goto LABEL_36;
      }

      v10 = v9;
      result = sub_1E32AE9B0(v9);
      v11 = result;
      for (j = 0; ; ++j)
      {
        if (v11 == j)
        {

          goto LABEL_36;
        }

        if ((v10 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1E6911E60](j, v10);
        }

        else
        {
          if (j >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }
        }

        if (__OFADD__(j, 1))
        {
          goto LABEL_41;
        }

        sub_1E4206254();
        sub_1E4206254();
        if (v17 == v15 && v18 == v16)
        {
          break;
        }

        v14 = sub_1E42079A4();

        if (v14)
        {
          goto LABEL_35;
        }
      }

LABEL_35:

      type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
      result = swift_dynamicCastClass();
      if (!result)
      {
LABEL_36:

        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_1E40917EC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_notifications) = MEMORY[0x1E69E7CD0];
  *(v1 + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasBackgrounded) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasPlaybackFullscreen) = 0;

  OUTLINED_FUNCTION_51_1();
  v3 = sub_1E3FEF09C(a1);
  sub_1E4091868();

  return v3;
}

void sub_1E4091868()
{
  OUTLINED_FUNCTION_31_1();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D160);
  MEMORY[0x1EEE9AC00](v23);
  v22 = v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v20[1] = v20 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F548);
  OUTLINED_FUNCTION_0_10();
  v24 = v4;
  v25 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v21 = v20 - v6;
  v7 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  v14 = [v13 defaultCenter];
  sub_1E4206C14();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E38DF10C();
  sub_1E4200844();

  v15 = *(v9 + 8);
  v15(v12, v7);
  v20[0] = v0;
  OUTLINED_FUNCTION_8_200();
  sub_1E42004C4();
  swift_endAccess();

  v16 = [v13 defaultCenter];
  sub_1E4206C14();

  sub_1E4200744();
  v15(v12, v7);
  v17 = [v13 defaultCenter];
  sub_1E4206C14();

  sub_1E4200744();
  v15(v12, v7);
  sub_1E32752B0(&qword_1ECF3D168, &qword_1ECF3D160);
  v18 = v21;
  sub_1E4200444();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E32752B0(&qword_1ECF3F550, &qword_1ECF3F548);
  v19 = v24;
  sub_1E4200844();

  (*(v25 + 8))(v18, v19);
  OUTLINED_FUNCTION_8_200();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

id sub_1E4091D1C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_8();
  sub_1E3E37F30();
  v6 = OUTLINED_FUNCTION_21_16();
  v7(v6);
  v8 = sub_1E41FFC94();
  v9 = sub_1E42067E4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1E323F000, v8, v9, "SportsCanonicalTemplateController is deallocated", v10, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v4 + 8))(v0, v2);
  v12.receiver = v0;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

void sub_1E4091EA4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_8();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [objc_opt_self() sharedInstance];
    if ([v7 isFullscreenPlaybackUIBeingShown])
    {
      v8 = 1;
    }

    else
    {
      v8 = [v7 isMultiviewPlaybackUIBeingShown];
    }

    v9 = sub_1E3E37F30();
    (*(v3 + 16))(v0, v9, v1);
    v10 = v6;
    v11 = sub_1E41FFC94();
    v12 = sub_1E42067E4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109376;
      *(v13 + 4) = *(&v10->isa + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasPlaybackFullscreen);

      *(v13 + 8) = 1024;
      *(v13 + 10) = v8;
      _os_log_impl(&dword_1E323F000, v11, v12, "wasPlaybackFullscreen: %{BOOL}d -> isPlaybackFullscreen: %{BOOL}d", v13, 0xEu);
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      v11 = v10;
    }

    (*(v3 + 8))(v0, v1);
    if (v8 != *(&v10->isa + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasPlaybackFullscreen))
    {
      sub_1E40920B0();
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40920B0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = v3;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38[-v13];
  if (v5 == 2)
  {
    v4 = v0[OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasBackgrounded];
  }

  if (v2 == 2)
  {
    v2 = v0[OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasPlaybackFullscreen];
  }

  v41 = v0;
  if (!sub_1E409148C() || (OUTLINED_FUNCTION_30(), v40 = (*(v15 + 1096))(), v17 = v16, , !v17))
  {
    v40 = 0xD000000000000013;
  }

  if ((v4 | v2))
  {
    if (*(v41 + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasBackgrounded) || *(v41 + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasPlaybackFullscreen) == 1)
    {

      v18 = v41;
    }

    else
    {
      v33 = sub_1E3E37F30();
      (*(v8 + 16))(v11, v33, v6);

      v34 = sub_1E41FFC94();
      v35 = sub_1E42067E4();

      if (os_log_type_enabled(v34, v35))
      {
        swift_slowAlloc();
        v36 = OUTLINED_FUNCTION_9_186();
        v39 = v2;
        v42 = v36;
        OUTLINED_FUNCTION_7_231(4.8151e-34);
        v40 = v6;

        v37 = OUTLINED_FUNCTION_3_262();

        *(v4 + 14) = v37;
        _os_log_impl(&dword_1E323F000, v34, v35, "SportsCanonicalTemplateController: unsubscribing from '%s' for %s", v4, 0x16u);
        swift_arrayDestroy();
        LOBYTE(v2) = v39;
        OUTLINED_FUNCTION_6_0();
        LOBYTE(v4) = v38[0];
        OUTLINED_FUNCTION_6_0();

        (*(v8 + 8))(v11, v40);
      }

      else
      {

        (*(v8 + 8))(v11, v6);
      }

      v18 = v41;
      sub_1E40928F0(0);
    }
  }

  else
  {
    v19 = sub_1E3E37F30();
    (*(v8 + 16))(v14, v19, v6);

    v20 = sub_1E41FFC94();
    v21 = sub_1E42067E4();

    if (os_log_type_enabled(v20, v21))
    {
      swift_slowAlloc();
      v22 = OUTLINED_FUNCTION_9_186();
      v39 = v2;
      v42 = v22;
      OUTLINED_FUNCTION_7_231(4.8151e-34);
      v40 = v6;

      v23 = OUTLINED_FUNCTION_3_262();

      *(v4 + 14) = v23;
      _os_log_impl(&dword_1E323F000, v20, v21, "SportsCanonicalTemplateController: subscribing to '%s' for %s", v4, 0x16u);
      swift_arrayDestroy();
      LOBYTE(v2) = v39;
      OUTLINED_FUNCTION_6_0();
      LOBYTE(v4) = v38[0];
      OUTLINED_FUNCTION_6_0();

      (*(v8 + 8))(v14, v40);
    }

    else
    {

      (*(v8 + 8))(v14, v6);
    }

    v18 = v41;
    if (sub_1E409148C())
    {
      OUTLINED_FUNCTION_30();
      (*(v24 + 2352))(2);
    }

    if (sub_1E409148C())
    {
      OUTLINED_FUNCTION_30();
      v26 = (*(v25 + 2048))();

      v27 = [v18 presentedViewController];
      if (v27)
      {
        v28 = v27;
        objc_opt_self();
        v29 = swift_dynamicCastObjCClass();
        if (v29 && (v30 = [v29 vui_rootViewController]) != 0)
        {
          v31 = v30;
          type metadata accessor for SportsPlayByPlaySeeAllViewController();
          v32 = swift_dynamicCastClass();
          if (!((v32 == 0) | v26 & 1))
          {
            [v32 dismissViewControllerAnimated:0 completion:0];
          }
        }

        else
        {
          v31 = v28;
        }
      }
    }
  }

  *(v18 + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasBackgrounded) = v4 & 1;
  *(v18 + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasPlaybackFullscreen) = v2 & 1;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4092698()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_8();
  v7 = *v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1E3E37F30();
    v10 = OUTLINED_FUNCTION_21_16();
    v11(v10);
    v12 = v9;
    v13 = sub_1E41FFC94();
    v14 = sub_1E42067E4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109376;
      *(v15 + 4) = *(&v12->isa + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasBackgrounded);

      *(v15 + 8) = 1024;
      *(v15 + 10) = v7;
      _os_log_impl(&dword_1E323F000, v13, v14, "wasBackgrounded: %{BOOL}d -> isBackgrounded: %{BOOL}d", v15, 0xEu);
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      v13 = v12;
    }

    (*(v5 + 8))(v0, v3);
    if (v7 != *(&v12->isa + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasBackgrounded))
    {
      sub_1E40920B0();
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E409284C()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_notifications) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasBackgrounded) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasPlaybackFullscreen) = 0;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E40928F0(char a1)
{
  result = sub_1E409148C();
  if (result)
  {
    OUTLINED_FUNCTION_30();
    (*(v3 + 2376))(a1 & 1);
  }

  return result;
}

void sub_1E4092964(char a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_vui_viewDidDisappear_, a1 & 1);
  v3 = [v1 parentViewController];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for DocumentRequestViewController();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = [v5 vuiNavigationController];
      if (v6)
      {
      }

      else
      {
        sub_1E40928F0(*(v1 + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasBackgrounded));
      }
    }
  }
}

uint64_t type metadata accessor for SportsCanonicalTemplateController()
{
  result = qword_1ECF6B5B0;
  if (!qword_1ECF6B5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1E4092B54@<X0>(void *a1@<X8>)
{
  sub_1E4202414();
  sub_1E4200BF4();
  sub_1E4202414();
  sub_1E4202714();
  sub_1E4202714();
  sub_1E4203DA4();
  sub_1E4200D94();
  OUTLINED_FUNCTION_1_292();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F558);
  sub_1E4092CCC();
  sub_1E4201F44();
  return memcpy(a1, __src, 0x61uLL);
}

unint64_t sub_1E4092CCC()
{
  result = qword_1ECF3F560;
  if (!qword_1ECF3F560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F558);
    sub_1E32752B0(&qword_1ECF3F568, &qword_1ECF3F570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F560);
  }

  return result;
}

unint64_t sub_1E4092DB8()
{
  result = qword_1ECF3F578;
  if (!qword_1ECF3F578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F580);
    sub_1E4092CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F578);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SeparatorLine(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E4092F5C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6981F28];
  v3 = sub_1E4203ED4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

double sub_1E4092FD0@<D0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (a1)
  {
    CGRectGetMidX(*&a3);
    v12.origin.x = OUTLINED_FUNCTION_1_9();
    CGRectGetMinY(v12);
    v13.origin.x = OUTLINED_FUNCTION_1_9();
    CGRectGetMidX(v13);
    v14.origin.x = OUTLINED_FUNCTION_1_9();
    CGRectGetMaxY(v14);
  }

  else
  {
    CGRectGetMinX(*&a3);
    v15.origin.x = OUTLINED_FUNCTION_1_9();
    CGRectGetMidY(v15);
    v16.origin.x = OUTLINED_FUNCTION_1_9();
    CGRectGetMaxX(v16);
    v17.origin.x = OUTLINED_FUNCTION_1_9();
    CGRectGetMidY(v17);
  }

  MEMORY[0x1EEE9AC00](v7);
  sub_1E4202B54();
  result = *&v9;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  return result;
}

double sub_1E40930E0@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_1E4092FD0(*v2, v6, a2);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

void (*sub_1E4093130())(void *a1)
{
  OUTLINED_FUNCTION_5_3();
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  *v0 = v1;
  v1[4] = sub_1E42009D4();
  return sub_1E37BCF0C;
}

uint64_t sub_1E409319C()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E4093378();
  v0 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x1EEDE4440](v0);
}

uint64_t sub_1E40931E8()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E4093378();
  v0 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x1EEDE43F0](v0);
}

uint64_t sub_1E4093234(uint64_t a1)
{
  v2 = sub_1E4093378();

  return MEMORY[0x1EEDE4410](a1, v2);
}

unint64_t sub_1E4093284()
{
  result = qword_1ECF6B740;
  if (!qword_1ECF6B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF6B740);
  }

  return result;
}

unint64_t sub_1E40932DC()
{
  result = qword_1ECF6B748[0];
  if (!qword_1ECF6B748[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF6B748);
  }

  return result;
}

unint64_t sub_1E4093378()
{
  result = qword_1EE2A6720[0];
  if (!qword_1EE2A6720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A6720);
  }

  return result;
}

uint64_t sub_1E40933F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for LibLockupMetadataView();
  v9 = *(v8 + 44);
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  *a4 = a1;
  v10 = *(*a1 + 392);

  v12 = v10(v11);

  if (v12)
  {
    type metadata accessor for LibraryLockupLayout();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      goto LABEL_5;
    }
  }

  type metadata accessor for LibraryLockupLayout();
  v13 = sub_1E3F6D980();
LABEL_5:
  a4[1] = v13;
  v14 = *(*(a3 - 8) + 32);
  v15 = a4 + *(v8 + 40);

  return v14(v15, a2, a3);
}

void sub_1E409356C()
{
  OUTLINED_FUNCTION_31_1();
  v45 = v0;
  v2 = v1;
  v42 = v1;
  v46 = v3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F598);
  v41 = *(v2 + 16);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_51_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_10();
  sub_1E4203A44();
  sub_1E42013A4();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_51_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_10();
  sub_1E42039C4();
  v38[1] = sub_1E4201F54();
  v4 = sub_1E42037A4();
  OUTLINED_FUNCTION_0_10();
  v44 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v38 - v7;
  v9 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v43 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v38 - v12;
  OUTLINED_FUNCTION_0_81();
  WitnessTable = swift_getWitnessTable();
  v56 = MEMORY[0x1E697EBF8];
  v14 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_2();
  v15 = swift_getWitnessTable();
  v53 = v14;
  v54 = v15;
  OUTLINED_FUNCTION_2_25();
  v52 = swift_getWitnessTable();
  OUTLINED_FUNCTION_25_10();
  v39 = swift_getWitnessTable();
  v50 = v39;
  v51 = MEMORY[0x1E697E5D8];
  v16 = swift_getWitnessTable();
  v57 = v9;
  v58 = v16;
  v40 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v38 - v25;
  v27 = *(v42 + 24);
  v47 = v41;
  v48 = v27;
  v28 = v45;
  v49 = v45;
  v29 = sub_1E4203794();
  (*(**(v28 + 8) + 176))(&v57, v29);
  if (v61)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v32.n128_u64[0] = v59;
    v33.n128_u64[0] = v60;
    v30.n128_u64[0] = v57;
    v31.n128_u64[0] = v58;
    j_nullsub_1(v30, v31, v32, v33);
  }

  sub_1E42034D4();
  (*(v44 + 8))(v8, v4);
  v34 = *sub_1E3E5FACC();
  v35 = v34;
  sub_1E39B87A4(v34);

  (*(v43 + 8))(v13, v9);
  v36 = *(v19 + 16);
  v36(v26, v23, OpaqueTypeMetadata2);
  v37 = *(v19 + 8);
  v37(v23, OpaqueTypeMetadata2);
  v36(v46, v26, OpaqueTypeMetadata2);
  v37(v26, OpaqueTypeMetadata2);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4093A30()
{
  OUTLINED_FUNCTION_31_1();
  v56 = v0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F598);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_51_18();
  OUTLINED_FUNCTION_9_187();
  swift_getWitnessTable();
  v1 = sub_1E42039C4();
  OUTLINED_FUNCTION_0_10();
  v51 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  v50 = v8;
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_51_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_10();
  v55 = sub_1E4203A44();
  v9 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v49 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v48 = v16;
  v17 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_91();
  sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v53 = v24;
  v54 = v23;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v52 = &v47 - v26;
  type metadata accessor for LibLockupMetadataView();
  sub_1E3746E10(v22);
  v27 = sub_1E3B0352C();
  (*(v19 + 8))(v22, v17);
  if (v27)
  {
    sub_1E4093FA8();
    OUTLINED_FUNCTION_0_81();
    WitnessTable = swift_getWitnessTable();
    v28 = MEMORY[0x1E697EBF8];
    v58 = MEMORY[0x1E697EBF8];
    OUTLINED_FUNCTION_4_1();
    v51 = swift_getWitnessTable();
    v29 = v48;
    v30 = v49;
    v31 = *(v49 + 16);
    v31(v48, v14, v9);
    v32 = *(v30 + 8);
    v32(v14, v9);
    v31(v14, v29, v9);
    OUTLINED_FUNCTION_3_2();
    swift_getWitnessTable();
    v33 = v52;
    OUTLINED_FUNCTION_91();
    sub_1E37B8D98(v34, v35);
    v32(v14, v9);
    v32(v29, v9);
  }

  else
  {
    sub_1E409427C();
    OUTLINED_FUNCTION_3_2();
    swift_getWitnessTable();
    v36 = v50;
    v37 = v51;
    v38 = *(v51 + 16);
    v38(v50, v6, v1);
    v39 = *(v37 + 8);
    v39(v6, v1);
    v38(v6, v36, v1);
    OUTLINED_FUNCTION_0_81();
    v63 = swift_getWitnessTable();
    v28 = MEMORY[0x1E697EBF8];
    v64 = MEMORY[0x1E697EBF8];
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    v33 = v52;
    OUTLINED_FUNCTION_91();
    sub_1E37B8E90(v40, v41, v42);
    v39(v6, v1);
    v39(v36, v1);
  }

  v61 = swift_getWitnessTable();
  v62 = v28;
  OUTLINED_FUNCTION_4_1();
  v43 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_2();
  v44 = swift_getWitnessTable();
  v59 = v43;
  v60 = v44;
  OUTLINED_FUNCTION_2_25();
  v45 = v54;
  swift_getWitnessTable();
  v46 = v53;
  (*(v53 + 16))(v56, v33, v45);
  (*(v46 + 8))(v33, v45);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4093FA8()
{
  OUTLINED_FUNCTION_31_1();
  v25 = v0;
  v2 = v1;
  v27 = v3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F598);
  v4 = *(v2 + 16);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_51_18();
  OUTLINED_FUNCTION_15_13();
  swift_getWitnessTable();
  v5 = sub_1E4203A44();
  OUTLINED_FUNCTION_0_10();
  v26 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - v18;
  sub_1E4201D54();
  v20 = *(v2 + 24);
  v28 = v4;
  v29 = v20;
  v30 = v25;
  sub_1E4203A34();
  sub_1E4203DB4();
  OUTLINED_FUNCTION_0_81();
  WitnessTable = swift_getWitnessTable();
  sub_1E4203474();
  (*(v26 + 8))(v9, v5);
  v31 = WitnessTable;
  v32 = MEMORY[0x1E697EBF8];
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  v21 = *(v12 + 16);
  v21(v19, v16, v10);
  v22 = *(v12 + 8);
  v22(v16, v10);
  v21(v27, v19, v10);
  v22(v19, v10);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E409427C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F598);
  v5 = *(v2 + 16);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_51_18();
  OUTLINED_FUNCTION_15_13();
  swift_getWitnessTable();
  v6 = sub_1E42039C4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  v16 = *(v2 + 24);
  v19[2] = v5;
  v19[3] = v16;
  v20 = v0;
  sub_1E4201B84();
  sub_1E42039B4();
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  v17 = *(v8 + 16);
  v17(v15, v12, v6);
  v18 = *(v8 + 8);
  v18(v12, v6);
  v17(v4, v15, v6);
  v18(v15, v6);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4094480()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_13_185(v2, v3);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_24_112();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25_3();
  v33 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v31 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F5A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_26_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29600);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v31 - v15);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F598);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v31 - v22;
  if (sub_1E40933CC())
  {

    sub_1E4094800(v16);
    sub_1E3294EE4(v16, v1, &qword_1ECF29600);
    OUTLINED_FUNCTION_21_9();
    swift_storeEnumTagMultiPayload();
    v11 = sub_1E3BFC99C();
    sub_1E37AC5F4();
    OUTLINED_FUNCTION_7_232();
    sub_1E4201F44();
    sub_1E4095494(v16);
  }

  else
  {
    sub_1E40948D4(v11);
    v16 = &qword_1ECF29210;
    OUTLINED_FUNCTION_91();
    sub_1E3294EE4(v24, v25, v26);
    OUTLINED_FUNCTION_21_9();
    swift_storeEnumTagMultiPayload();
    sub_1E3BFC99C();
    sub_1E37AC5F4();
    OUTLINED_FUNCTION_7_232();
    sub_1E4201F44();
    sub_1E325F6F0(v11, &qword_1ECF29210);
  }

  v27 = v35;
  type metadata accessor for LibLockupMetadataView();
  v28 = OUTLINED_FUNCTION_12_169();
  v11(v28);
  sub_1E3294EE4(v23, v20, &qword_1ECF3F598);
  v42 = 0;
  v43 = 0;
  v44 = v20;
  v45 = &v42;
  v29 = OUTLINED_FUNCTION_25_107();
  v11(v29);
  v46 = v13;
  v39 = v32;
  v40 = MEMORY[0x1E6981840];
  v41 = v0;
  v36 = sub_1E4095408();
  v37 = MEMORY[0x1E6981838];
  v38 = v27;
  OUTLINED_FUNCTION_21_118();
  v30 = v16[1];
  v30(v8, v0);
  sub_1E325F6F0(v23, &qword_1ECF3F598);
  v30(v13, v0);
  sub_1E325F6F0(v20, &qword_1ECF3F598);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E4094800@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PlaybackStatus(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1E40933CC();
  if (v6)
  {
    sub_1E413D6F4(v6, v5);
    sub_1E3C75118(v5, a1);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  }
}

uint64_t sub_1E40948D4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  v5 = sub_1E39C408C(10);
  if (v5)
  {
    if (*v5 == _TtC8VideosUI13TextViewModel)
    {
      (*(**(v1 + 8) + 1760))();
      OUTLINED_FUNCTION_18();
      sub_1E3F23370();

      OUTLINED_FUNCTION_91();
      v6();
      return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
    }
  }

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
}

void sub_1E4094A90()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_13_185(v2, v3);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_24_112();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25_3();
  v33 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v31 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F5A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_26_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29600);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v31 - v15);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F598);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v31 - v22;
  if (sub_1E40933CC())
  {

    sub_1E4094800(v16);
    sub_1E3294EE4(v16, v1, &qword_1ECF29600);
    OUTLINED_FUNCTION_21_9();
    swift_storeEnumTagMultiPayload();
    v11 = sub_1E3BFC99C();
    sub_1E37AC5F4();
    OUTLINED_FUNCTION_7_232();
    sub_1E4201F44();
    sub_1E4095494(v16);
  }

  else
  {
    sub_1E40948D4(v11);
    v16 = &qword_1ECF29210;
    OUTLINED_FUNCTION_91();
    sub_1E3294EE4(v24, v25, v26);
    OUTLINED_FUNCTION_21_9();
    swift_storeEnumTagMultiPayload();
    sub_1E3BFC99C();
    sub_1E37AC5F4();
    OUTLINED_FUNCTION_7_232();
    sub_1E4201F44();
    sub_1E325F6F0(v11, &qword_1ECF29210);
  }

  v27 = v35;
  type metadata accessor for LibLockupMetadataView();
  v28 = OUTLINED_FUNCTION_12_169();
  v11(v28);
  sub_1E3294EE4(v23, v20, &qword_1ECF3F598);
  v44 = v20;
  v29 = OUTLINED_FUNCTION_25_107();
  v11(v29);
  v42 = 0;
  v43 = 0;
  v45 = v13;
  v46 = &v42;
  v39 = v32;
  v40 = v0;
  v41 = MEMORY[0x1E6981840];
  v36 = sub_1E4095408();
  v37 = v27;
  v38 = MEMORY[0x1E6981838];
  OUTLINED_FUNCTION_21_118();
  v30 = v16[1];
  v30(v8, v0);
  sub_1E325F6F0(v23, &qword_1ECF3F598);
  v30(v13, v0);
  sub_1E325F6F0(v20, &qword_1ECF3F598);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4094E14()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LibraryLockupLayout();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_1E38D5D68();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E4094ECC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1E42012F4() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_25;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((((v11 + 16) & ~v11) + *(v6 + 64) + v12) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_25:
      if ((v7 & 0x80000000) != 0)
      {

        return __swift_getEnumTagSinglePayload((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11, v7, v5);
      }

      else
      {
        v19 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_25;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    switch(v13)
    {
      case 2:
        LODWORD(v13) = *a1;
        break;
      case 3:
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v13) = *a1;
        break;
      default:
        LODWORD(v13) = *a1;
        break;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_1E4095128()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *(*(v6 + 16) - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(sub_1E42012F4() - 8);
  v11 = 8;
  if (*(v10 + 64) > 8uLL)
  {
    v11 = *(v10 + 64);
  }

  v12 = *(v10 + 80) & 0xF8 | 7;
  v13 = v11 + ((((*(v7 + 80) + 16) & ~*(v7 + 80)) + *(v7 + 64) + v12) & ~v12) + 1;
  v14 = 8 * v13;
  if (v1 <= v9)
  {
    v15 = 0;
  }

  else if (v13 <= 3)
  {
    v18 = ((v1 - v9 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (v9 < v3)
  {
    v16 = ~v9 + v3;
    if (v13 < 4)
    {
      v17 = (v16 >> v14) + 1;
      if (v13)
      {
        v20 = v16 & ~(-1 << v14);
        bzero(v5, v13);
        if (v13 == 3)
        {
          *v5 = v20;
          v5[2] = BYTE2(v20);
        }

        else if (v13 == 2)
        {
          *v5 = v20;
        }

        else
        {
          *v5 = v16;
        }
      }
    }

    else
    {
      bzero(v5, v13);
      *v5 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        v5[v13] = v17;
        goto LABEL_46;
      case 2:
        *&v5[v13] = v17;
        goto LABEL_46;
      case 3:
        goto LABEL_47;
      case 4:
        *&v5[v13] = v17;
        goto LABEL_46;
      default:
        goto LABEL_46;
    }
  }

  switch(v15)
  {
    case 1:
      v5[v13] = 0;
      if (v3)
      {
        goto LABEL_29;
      }

      goto LABEL_46;
    case 2:
      *&v5[v13] = 0;
      if (!v3)
      {
        goto LABEL_46;
      }

      goto LABEL_29;
    case 3:
LABEL_47:
      __break(1u);
      return;
    case 4:
      *&v5[v13] = 0;
      goto LABEL_28;
    default:
LABEL_28:
      if (!v3)
      {
        goto LABEL_46;
      }

LABEL_29:
      if ((v8 & 0x80000000) != 0)
      {
        OUTLINED_FUNCTION_25_2();

        __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
      }

      else
      {
        if ((v3 & 0x80000000) != 0)
        {
          v21 = v3 & 0x7FFFFFFF;
        }

        else
        {
          v21 = v3 - 1;
        }

        *v5 = v21;
LABEL_46:
        OUTLINED_FUNCTION_25_2();
      }

      return;
  }
}

unint64_t sub_1E4095408()
{
  result = qword_1EE289138;
  if (!qword_1EE289138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F598);
    sub_1E3BFC99C();
    sub_1E37AC5F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289138);
  }

  return result;
}

uint64_t sub_1E4095494(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for LibLockupAccessoryView()
{
  result = qword_1EE29A770;
  if (!qword_1EE29A770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1E4095554@<X0>(void *a1@<X8>)
{
  sub_1E42012F4();
  OUTLINED_FUNCTION_1_23();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_254();
  type metadata accessor for LibLockupAccessoryView();
  sub_1E3746E10(v1);
  v4 = sub_1E3B0352C();
  v5 = OUTLINED_FUNCTION_171_0();
  v6(v5);
  if (v4)
  {
    sub_1E4201D54();
    v13 = 1;
    sub_1E4095920(v11);
    sub_1E4095B94(v20);
    OUTLINED_FUNCTION_6_225(v16);
    OUTLINED_FUNCTION_6_225(v18);
    OUTLINED_FUNCTION_5_240(v14);
    OUTLINED_FUNCTION_5_240(&v18[136]);
    OUTLINED_FUNCTION_5_240(v15);
    OUTLINED_FUNCTION_0_333(v16);
    OUTLINED_FUNCTION_9_188();
    sub_1E325F748(v15, &qword_1ECF32A38);
    OUTLINED_FUNCTION_6_225(v17);
    OUTLINED_FUNCTION_10_172(v17);
    memcpy(v14, v18, 0xD9uLL);
    memcpy(v15, v18, 0xD9uLL);
    OUTLINED_FUNCTION_0_333(v14);
    OUTLINED_FUNCTION_10_172(v15);
    memcpy(&v10[7], v14, 0xD9uLL);
    v7 = OUTLINED_FUNCTION_4_259();
    memcpy(v7, v10, 0xE0uLL);
    sub_1E4095E88(v16);
  }

  else
  {
    sub_1E4201B84();
    v13 = 0;
    sub_1E4095920(v11);
    sub_1E4095B94(v20);
    OUTLINED_FUNCTION_6_225(v16);
    OUTLINED_FUNCTION_6_225(v19);
    OUTLINED_FUNCTION_5_240(v14);
    OUTLINED_FUNCTION_5_240(&v19[136]);
    OUTLINED_FUNCTION_5_240(v15);
    OUTLINED_FUNCTION_0_333(v16);
    OUTLINED_FUNCTION_9_188();
    sub_1E325F748(v15, &qword_1ECF32A38);
    OUTLINED_FUNCTION_6_225(v17);
    OUTLINED_FUNCTION_10_172(v17);
    memcpy(v14, v19, 0xD9uLL);
    memcpy(v15, v19, 0xD9uLL);
    OUTLINED_FUNCTION_0_333(v14);
    OUTLINED_FUNCTION_10_172(v15);
    memcpy(&v12[7], v14, 0xD9uLL);
    v8 = OUTLINED_FUNCTION_4_259();
    memcpy(v8, v12, 0xE0uLL);
    sub_1E4095E7C(v16);
  }

  memcpy(v11, v16, 0xF2uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F5B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F5B8);
  sub_1E32752B0(&qword_1ECF3F5C0, &qword_1ECF3F5B0);
  sub_1E32752B0(&qword_1ECF3F5C8, &qword_1ECF3F5B8);
  sub_1E4201F44();
  return memcpy(a1, v17, 0xF2uLL);
}

void *sub_1E4095920@<X0>(void *a1@<X8>)
{
  v3 = sub_1E39C408C(233);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  if (*v3 != _TtC8VideosUI31DownloadStateIndicatorViewModel)
  {

LABEL_9:
    sub_1E3CE3B40(v30);
    return memcpy(a1, v30, 0x81uLL);
  }

  v5 = v1 + *(type metadata accessor for LibLockupAccessoryView() + 28);
  v6 = *(v5 + 8);
  LOBYTE(__dst[0]) = *v5;
  __dst[1] = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  sub_1E4203914();
  sub_1E3F66914(v4, 0, v30[0], v30[1], v30[2], __src);
  OUTLINED_FUNCTION_52_36();
  sub_1E42038F4();
  OUTLINED_FUNCTION_52_36();
  sub_1E42038F4();
  sub_1E4203DA4();
  sub_1E4200D94();
  OUTLINED_FUNCTION_52_36();
  v7 = sub_1E42038F4();
  if (LOBYTE(__dst[0]) == 1 && (v8 = *(v1 + 8)) != 0 && (v9 = (*(*v8 + 1808))(v7), (*(*v9 + 152))(&v28), , (v29 & 1) == 0))
  {
    OUTLINED_FUNCTION_13_3(v10, v11, v12, v13);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_5_8();
  }

  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22 = sub_1E4202734();

  __src[88] = 0;
  memcpy(__dst, __src, 0x58uLL);
  LOBYTE(__dst[11]) = v22;
  *&__dst[12] = v18;
  __dst[13] = v19;
  __dst[14] = v20;
  __dst[15] = v21;
  LOBYTE(__dst[16]) = 0;
  nullsub_1(v23, v24);
  memcpy(v30, __dst, 0x81uLL);
  return memcpy(a1, v30, 0x81uLL);
}

uint64_t sub_1E4095B94@<X0>(uint64_t a1@<X8>)
{
  sub_1E42012F4();
  OUTLINED_FUNCTION_1_23();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_254();
  v7 = *v1;
  result = sub_1E39C408C(67);
  if (result)
  {

    v10 = v1[1];
    if (v10 && (v11 = (*(*v10 + 1832))(v9), (*(*v11 + 152))(&v42), , (v43 & 1) == 0))
    {
      OUTLINED_FUNCTION_13_3(v12, v13, v14, v15);
    }

    else
    {
      v16 = OUTLINED_FUNCTION_5_8();
    }

    v26 = v16;
    v27 = v17;
    v28 = v18;
    type metadata accessor for LibLockupAccessoryView();
    sub_1E3746E10(v2);
    v41 = sub_1E3B02A04();
    v29 = *(v5 + 8);
    v30 = OUTLINED_FUNCTION_171_0();
    v29(v30);
    sub_1E3746E10(v2);
    v40 = sub_1E3B02A04();
    v31 = OUTLINED_FUNCTION_171_0();
    v29(v31);
    sub_1E3746E10(v2);
    v32 = sub_1E3B02A04();
    v33 = OUTLINED_FUNCTION_171_0();
    v29(v33);
    v21 = v28;
    if (v10)
    {
      v34 = *(*v10 + 1832);

      v36 = v34(v35);
    }

    else
    {

      v36 = 0;
    }

    sub_1E397F070(v7, v36, v44);
    v39 = v44[0];
    v38 = v44[1];
    v37 = v45;
    if (v41)
    {
      v19 = v26;
    }

    else
    {
      v19 = 0.0;
    }

    if (v40)
    {
      v20 = 0;
    }

    else
    {
      v20 = v27;
    }

    if ((v32 & 1) == 0)
    {
      v21 = 0;
    }

    result = sub_1E4202734();
    v25 = v38;
    v24 = v39;
    v23 = v37;
    v22 = result;
  }

  else
  {
    v19 = 0.0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0uLL;
    v25 = 0uLL;
  }

  *a1 = v24;
  *(a1 + 16) = v25;
  *(a1 + 32) = v23;
  *(a1 + 40) = v22;
  *(a1 + 48) = v19;
  *(a1 + 56) = v20;
  *(a1 + 64) = 0;
  *(a1 + 72) = v21;
  *(a1 + 80) = 0;
  return result;
}

void sub_1E4095ED8()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    sub_1E4095FEC(319, &qword_1ECF3F5D0, type metadata accessor for LibraryLockupLayout, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1E4095FEC(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1E3AB40E8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E4095FEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E4096050()
{
  result = qword_1ECF3F5D8;
  if (!qword_1ECF3F5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F5E0);
    sub_1E32752B0(&qword_1ECF3F5C0, &qword_1ECF3F5B0);
    sub_1E32752B0(&qword_1ECF3F5C8, &qword_1ECF3F5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F5D8);
  }

  return result;
}

id sub_1E4096134(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityGradientLayer;
  OUTLINED_FUNCTION_5_0();
  v5 = *&v1[v4];
  if (v5)
  {
    if (a1)
    {
      sub_1E3280A90(0, &qword_1EE23AE70);
      v6 = v5;
      v7 = a1;
      v8 = sub_1E4206F64();

      if (v8)
      {
        return [v2 vui_setNeedsLayout];
      }
    }
  }

  else if (!a1)
  {
    return [v2 vui_setNeedsLayout];
  }

  v9 = [a1 removeFromSuperlayer];
  if (a1)
  {
    v9 = [a1 setDelegate_];
  }

  v13 = *&v2[v4];
  MEMORY[0x1EEE9AC00](v9);
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F600);
  sub_1E4148DE0(sub_1E4097AC8);

  return [v2 vui_setNeedsLayout];
}

void *sub_1E4096290()
{
  v1 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityGradientLayer;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E40962CC(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityGradientLayer;
  OUTLINED_FUNCTION_14_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_1E4096134(v4);
}

void (*sub_1E409632C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityGradientLayer;
  OUTLINED_FUNCTION_5_0();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E40963AC;
}

void sub_1E40963AC(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_1E40962CC(v3);
  }

  else
  {
    sub_1E40962CC(*(*a1 + 24));
  }

  free(v2);
}

id sub_1E4096418(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    sub_1E4096618(0);
    sub_1E4096630(0);
  }

  else
  {
    v4 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityBlurView;
    v5 = *&v2[OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityBlurView];
    v6 = v5;
    if (!v5)
    {
      v6 = [objc_opt_self() blurViewWithEffect_];
    }

    v7 = v5;
    sub_1E4096618(v6);
    type metadata accessor for OverlayViewGradientFactory();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1E429DCC0;
    v9 = objc_opt_self();
    *(v8 + 32) = [v9 clearColor];
    *(v8 + 40) = [v9 blackColor];
    v10 = sub_1E38E264C(0, v8);

    v11 = *&v3[v4];
    if (v11)
    {
      v12 = [v11 vuiLayer];
      if (v12)
      {
        v13 = v12;
        [v12 setMask_];
      }
    }

    v14 = v10;
    sub_1E4096630(v10);
  }

  return [v3 vui_setNeedsLayout];
}

id (*sub_1E40965B8(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = 0;
  *(a1 + 8) = 1;
  return sub_1E40965E8;
}

id sub_1E4096668(char a1)
{
  v2 = v1;
  if (a1)
  {
    if (!*&v1[OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerBlurView])
    {
      sub_1E3280A90(0, &qword_1EE23AE00);
      sub_1E3EFD574();

      v3 = sub_1E3C7758C();

      if (v3)
      {
        v4 = [objc_opt_self() blurViewWithEffect_];
        v5 = [v4 vuiLayer];
        if (v5)
        {
          v6 = v5;
          [v5 setMasksToBounds_];
        }

        v7 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
        [v7 setShouldRasterize_];
        v8 = [objc_opt_self() mainScreen];
        [v8 scale];
        v10 = v9;

        [v7 setRasterizationScale_];
        v11 = [v3 CGImage];
        [v7 setContents_];

        [v3 size];
        [v7 setFrame_];
        v14 = [v4 vuiLayer];

        if (v14)
        {
          [v14 setMask_];
        }

        v15 = v4;
        sub_1E4096934(v4);
        v16 = v7;
        sub_1E4096B14(v7);
      }
    }
  }

  else
  {
    sub_1E4096934(0);
    sub_1E4096B14(0);
  }

  return [v2 vui_setNeedsLayout];
}

id (*sub_1E40968D0(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerBlurView) == 0;
  return sub_1E409690C;
}

void sub_1E409694C(void *a1, void *a2, void *a3, const char **a4)
{
  v9 = *&v4[*a2];
  *&v4[*a2] = a1;
  v5 = *&v4[*a2];
  v6 = *&v4[*a3];
  v7 = *a4;
  v8 = a1;
  [v4 v7];
}

void sub_1E40969DC(id a1, void *a2, void (*a3)(uint64_t))
{
  v6 = *(v3 + *a2);
  if (v6)
  {
    if (a1)
    {
      sub_1E3280A90(0, &qword_1EE23AE70);
      v7 = v6;
      v8 = a1;
      v9 = sub_1E4206F64();

      if (v9)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v10 = [a1 removeFromSuperlayer];
  if (a1)
  {
    v10 = [a1 setDelegate_];
  }

  MEMORY[0x1EEE9AC00](v10);
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F600);
  sub_1E4148DE0(a3);
}

void sub_1E4096B34(void *a1, void *a2, void (*a3)(uint64_t))
{
  v7 = *(v3 + *a2);
  *(v3 + *a2) = a1;
  v6 = a1;
  sub_1E40969DC(v7, a2, a3);
}

id sub_1E4096BCC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69DF698]) init_];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

double sub_1E4096C40()
{
  v1 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_protectionHeight;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

id sub_1E4096C74(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_protectionHeight;
  OUTLINED_FUNCTION_14_0();
  *&v1[v3] = a1;
  return [v1 vui_setNeedsLayout];
}

id (*sub_1E4096CC8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3CF68F8;
}

void sub_1E4096D1C()
{
  v1 = [v0 vuiLayer];
  if (v1)
  {
    v2 = v1;
    v3 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerRadius;
    OUTLINED_FUNCTION_5_0();
    [v2 setCornerRadius_];
  }

  v4 = *&v0[OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityBlurView];
  if (v4)
  {
    v5 = [v4 vuiLayer];
    if (v5)
    {
      v6 = v5;
      v7 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerRadius;
      OUTLINED_FUNCTION_5_0();
      [v6 setCornerRadius_];
    }
  }

  v8 = *&v0[OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerBlurView];
  if (v8)
  {
    v9 = [v8 vuiLayer];
    if (v9)
    {
      v10 = v9;
      v11 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerRadius;
      OUTLINED_FUNCTION_5_0();
      [v10 setCornerRadius_];
    }
  }
}

double sub_1E4096E34()
{
  v1 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerRadius;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

void sub_1E4096E68(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerRadius;
  OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;
  sub_1E4096D1C();
}

void (*sub_1E4096EB0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E4096F04;
}

void sub_1E4096F04(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E4096D1C();
  }
}

id sub_1E4096F38()
{
  *&v0[OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityGradientLayer] = 0;
  OUTLINED_FUNCTION_1_293(&OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityBlurView);
  *&v0[OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_protectionHeight] = 0x404B800000000000;
  *&v0[OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerRadius] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for OverlayProtectionView();
  v1 = objc_msgSendSuper2(&v5, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v1 setUserInteractionEnabled_];
  v2 = [objc_opt_self() clearColor];
  [v1 setVuiBackgroundColor_];

  v3 = [v1 vuiLayer];
  if (v3)
  {
    [v3 setMasksToBounds_];
  }

  return v1;
}

void sub_1E40970A4()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityGradientLayer) = 0;
  OUTLINED_FUNCTION_1_293(&OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityBlurView);
  *(v0 + OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_protectionHeight) = 0x404B800000000000;
  *(v0 + OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerRadius) = 0;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E4097158(char a1, double a2, double a3)
{
  if (a1)
  {
    v21.receiver = v3;
    v21.super_class = type metadata accessor for OverlayProtectionView();
    objc_msgSendSuper2(&v21, sel_vui_layoutSubviews_computationOnly_, 1, a2, a3);
    return v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x190))();
    v8 = (*((*v7 & *v3) + 0xA0))();
    OUTLINED_FUNCTION_9_189(v8, sel_setFrame_);

    v9 = *(v3 + OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityBlurView);
    if (v9)
    {
      OUTLINED_FUNCTION_6_226(v9);
    }

    OUTLINED_FUNCTION_9_189(*(v3 + OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityBlurMaskLayer), sel_setFrame_);
    v10 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerBlurMaskLayer;
    v11 = *(v3 + OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerBlurMaskLayer);
    v12 = a2;
    v13 = a3;
    if (v11)
    {
      [v11 frame];
      v12 = v14;
      v13 = v15;
    }

    v22.origin.x = OUTLINED_FUNCTION_7_233();
    Width = CGRectGetWidth(v22);
    v23.origin.x = OUTLINED_FUNCTION_7_233();
    Height = CGRectGetHeight(v23);
    v18 = *(v3 + OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerBlurView);
    if (v18)
    {
      OUTLINED_FUNCTION_6_226(v18);
    }

    v19 = *(v3 + v10);
    if (v19)
    {
      [v19 setFrame_];
    }
  }

  return a2;
}

id sub_1E409737C(id a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v3 vuiLayer];
  v9 = v8;
  if (v8)
  {

    if (v9 == a1)
    {
      v10 = sub_1E4205ED4();
      v54.receiver = v4;
      v54.super_class = type metadata accessor for OverlayProtectionView();
      v9 = objc_msgSendSuper2(&v54, sel_actionForLayer_forKey_, a1, v10);
    }

    else
    {
      v9 = 0;
    }
  }

  v11 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0xA0))();
  if (v11 && (v12 = v11, v11, v12 == a1) || ((v13 = *(v4 + OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityBlurMaskLayer)) != 0 ? (v14 = v13 == a1) : (v14 = 0), v14 || ((v15 = *(v4 + OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerBlurMaskLayer)) != 0 ? (v16 = v15 == a1) : (v16 = 0), v16)))
  {
    v17 = *MEMORY[0x1E69DF658];
    if (sub_1E4205F14() == a2 && v18 == a3)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_3_263();
    v20 = sub_1E42079A4();

    if (v20)
    {
      goto LABEL_28;
    }

    if (sub_1E4205F14() == a2 && v21 == a3)
    {
LABEL_27:
    }

    else
    {
      OUTLINED_FUNCTION_3_263();
      v23 = sub_1E42079A4();

      if ((v23 & 1) == 0)
      {
        return v9;
      }
    }

LABEL_28:
    v24 = [v4 vuiLayer];
    if (v24 && (v25 = v24, v26 = [v24 animationForKey_], v25, v26) || (v27 = objc_msgSend(v4, sel_vuiLayer)) != 0 && (v28 = v27, v26 = objc_msgSend(v27, sel_animationForKey_, *MEMORY[0x1E69DF668]), v28, v26) || (v29 = objc_msgSend(v4, sel_vuiLayer)) != 0 && (v30 = v29, v26 = objc_msgSend(v29, sel_animationForKey_, *MEMORY[0x1E69DF660]), v30, v26))
    {
      [v26 copy];
      sub_1E4207264();
      swift_unknownObjectRelease();
      sub_1E3280A90(0, &qword_1EE23B2C0);
      if (swift_dynamicCast())
      {
        v31 = v55;
        [v31 setAdditive_];
        [v31 setRemovedOnCompletion_];
        if (sub_1E4205F14() == a2 && v32 == a3)
        {
        }

        else
        {
          OUTLINED_FUNCTION_3_263();
          v34 = sub_1E42079A4();

          if ((v34 & 1) == 0)
          {
            v17 = *MEMORY[0x1E69DF670];
            v35 = sub_1E4205F14();
            sub_1E40979D4(v35, v36, v31);

            [a1 position];
            v38 = v37;
            v40 = v39;
            v41 = [objc_allocWithZone(MEMORY[0x1E69DF760]) init];
            [v41 setAnimationToRun_];
            [v41 setFromPoint_];
LABEL_45:
            v52 = v17;
            [v41 setKey_];

            swift_unknownObjectRelease();
            return v41;
          }
        }

        v42 = sub_1E4205F14();
        sub_1E40979D4(v42, v43, v31);

        [a1 bounds];
        v45 = v44;
        v47 = v46;
        v49 = v48;
        v51 = v50;
        v41 = [objc_allocWithZone(MEMORY[0x1E69DF768]) init];
        [v41 setAnimationToRun_];
        [v41 setFromRect_];
        goto LABEL_45;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

  return v9;
}

id sub_1E4097908()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OverlayProtectionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E40979D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  [a3 setKeyPath_];
}

void sub_1E4097A68(void **a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a2();
  [v2 setDelegate_];
}

void sub_1E4097AC8(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  [v2 bounds];
  [v3 setFrame_];
  v4 = [v2 vuiLayer];
  [v4 addSublayer_];

  v5 = sub_1E4096BA8();
  [v3 setDelegate_];
}

uint64_t sub_1E4097BE4()
{
  *(v0 + 98) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 2;
  return sub_1E3C2F9A0();
}

uint64_t sub_1E4097C34(char a1)
{
  *(v1 + 98) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 2;
  swift_beginAccess();
  *(v1 + 98) = a1;
  v4 = sub_1E3C2F9A0();
  v5 = *(*v4 + 1720);

  switch((v5)())
  {
    case 1u:
      v85 = sub_1E3952CA4();
      v86 = v17;
      v87 = v18;
      v88 = v19;
      LOBYTE(v89) = 0;
      OUTLINED_FUNCTION_111();
      (*(v20 + 160))(&v85);
      OUTLINED_FUNCTION_111();
      (*(v21 + 208))(0x406F400000000000, 0);
      OUTLINED_FUNCTION_9_2();
      (*(v22 + 312))(0x406F400000000000, 0);
      sub_1E3755B54();
      sub_1E4206F24();
      OUTLINED_FUNCTION_9_2();
      (*(v23 + 680))();
      sub_1E4206F24();
      OUTLINED_FUNCTION_9_2();
      (*(v24 + 872))();
      OUTLINED_FUNCTION_9_2();
      (*(v25 + 1744))();
      OUTLINED_FUNCTION_2_1();
      (*(v26 + 2000))(1);

      v28 = *(*v4 + 1768);
      v28(v27);
      __dst[0] = 0;
      LOBYTE(__dst[1]) = 1;
      v104 = 0x4049800000000000;
      v105 = 0;
      v102 = 0x4049800000000000;
      v103 = 0;
      v100 = 0x405A800000000000;
      v101 = 0;
      v98 = 0x4049800000000000;
      v99 = 0;
      v96 = 0x4049800000000000;
      v97 = 0;
      sub_1E3C2FCB8(__dst, __src);
      memcpy(__dst, __src, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_36();
      v37 = OUTLINED_FUNCTION_9_190(v29, v30, v31, v32, v33, v34, v35, v36, v82, v83, v84, v85, v86, v87, v88, v89, __dst[0]);
      v38(v37);

      v28(v39);
      OUTLINED_FUNCTION_2_1();
      (*(v40 + 1792))(3);
      goto LABEL_8;
    case 2u:
      sub_1E3755B54();
      OUTLINED_FUNCTION_3_264();
      sub_1E4206F24();
      OUTLINED_FUNCTION_2_255();
      v6 = sub_1E4206F24();
      OUTLINED_FUNCTION_86_1(v6);

      OUTLINED_FUNCTION_9_2();
      v7 = OUTLINED_FUNCTION_8_10();
      v8(v7);
      OUTLINED_FUNCTION_3_264();
      sub_1E4206F24();
      OUTLINED_FUNCTION_2_255();
      v9 = sub_1E4206F24();
      OUTLINED_FUNCTION_86_1(v9);

      OUTLINED_FUNCTION_9_2();
      v10 = OUTLINED_FUNCTION_8_10();
      v11(v10);
      OUTLINED_FUNCTION_9_2();
      v13 = *(v12 + 1768);
      v13();
      OUTLINED_FUNCTION_2_1();
      (*(v14 + 1816))(0x4035000000000000, 0);

      (v13)(v15);
      OUTLINED_FUNCTION_2_1();
      (*(v16 + 1792))(3);
      goto LABEL_6;
    case 3u:
      sub_1E4098AD0();
      OUTLINED_FUNCTION_111();
      (*(v63 + 208))(0x4059000000000000, 0);
      OUTLINED_FUNCTION_9_2();
      (*(v64 + 312))(0x4059000000000000, 0);
      OUTLINED_FUNCTION_9_2();
      (*(v65 + 1768))();
      __dst[0] = 0x4049800000000000;
      LOBYTE(__dst[1]) = 0;
      LOBYTE(v86) = 0;
      v66 = MEMORY[0x1E69E7DE0];
      sub_1E3C2FC98();
      v102 = v104;
      v103 = v105;
      sub_1E3C3DE00(v66);
      v98 = v100;
      v99 = v101;
      sub_1E3C3DE00(v66);
      v94 = v96;
      v95 = v97;
      sub_1E3C3DE00(v66);
      __dst[12] = v92;
      v91 = v93;
      sub_1E3C2FCB8(__dst, __src);
      memcpy(__dst, __src, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_36();
      v75 = OUTLINED_FUNCTION_9_190(v67, v68, v69, v70, v71, v72, v73, v74, v82, v83, v84, 0x4055800000000000, v86, v87, v88, v89, __dst[0]);
      v76(v75);
      goto LABEL_8;
    case 5u:
      OUTLINED_FUNCTION_111();
      v41 += 218;
      v42 = *v41;
      (*v41)();
      OUTLINED_FUNCTION_2_1();
      (*(v43 + 440))(0x3FF0000000000000, 0);

      v45 = (v42)(v44);
      v46.n128_u64[0] = 1.0;
      __src[0] = j__OUTLINED_FUNCTION_7_78(v46);
      __src[1] = v47;
      __src[2] = v48;
      __src[3] = v49;
      LOBYTE(__src[4]) = 0;
      (*(*v45 + 1856))(__src);

      v51 = (v42)(v50);
      v52 = *sub_1E3E6097C();
      v53 = *(*v51 + 1832);
      v54 = v52;
      v53(v52);

      v55 = *sub_1E3E5FDEC();
      v56 = *(*v4 + 680);
      v57 = v55;
      v58 = OUTLINED_FUNCTION_8_10();
      v56(v58);
      OUTLINED_FUNCTION_9_2();
      v13 = *(v59 + 1768);
      v13();
      OUTLINED_FUNCTION_2_1();
      (*(v60 + 1792))(5);
LABEL_6:

      (v13)(v61);
      sub_1E4205F14();
      OUTLINED_FUNCTION_36();
      (*(v62 + 1768))();
LABEL_8:

      break;
    default:
      sub_1E4098AD0();
      break;
  }

  OUTLINED_FUNCTION_111();
  v78 = (*(v77 + 1744))();
  sub_1E3C37CBC(v78, 39);

  OUTLINED_FUNCTION_9_2();
  v80 = (*(v79 + 1768))();
  sub_1E3C37CBC(v80, 17);

  return v4;
}

uint64_t sub_1E4098698()
{
  v0 = sub_1E4207784();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E40986E4(char a1)
{
  result = 0x70756B636F6CLL;
  switch(a1)
  {
    case 1:
      v3 = 1953718627;
      goto LABEL_6;
    case 2:
      result = 0x7972617262696CLL;
      break;
    case 3:
      v3 = 1835099508;
LABEL_6:
      result = v3 | 0x6E6E614200000000;
      break;
    case 4:
      result = 0x6B636F4C6D616574;
      break;
    case 5:
      result = 0x74537374726F7073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E40987B4(char a1)
{
  sub_1E4207B44();
  sub_1E40986E4(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E4098820()
{
  sub_1E4206014();
}

uint64_t sub_1E4098914(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E40986E4(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E4098974@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E4098698();
  *a1 = result;
  return result;
}

uint64_t sub_1E40989A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E40986E4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MonogramLayout.LayoutType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E4098AD0()
{
  v2 = (*v0 + 1744);
  v3 = *v2;
  v4 = v2;
  v5 = (*v2)();
  (*(*v5 + 440))(0x3FF0000000000000, 0);

  (v3)(v6);
  OUTLINED_FUNCTION_2_1();
  (*(v7 + 2000))(1);

  if (TVAppFeature.isEnabled.getter(10))
  {
    v8 = v3();
    if ([objc_opt_self() userInterfaceIdiom])
    {
      v9 = 0x4059000000000000;
    }

    else
    {
      v9 = 0x4050800000000000;
    }

    (*(*v8 + 208))(v9, 0);
  }

  sub_1E3755B54();
  OUTLINED_FUNCTION_3_264();
  sub_1E4206F24();
  OUTLINED_FUNCTION_2_255();
  v10 = sub_1E4206F24();
  OUTLINED_FUNCTION_86_1(v10);

  OUTLINED_FUNCTION_9_2();
  v11 = OUTLINED_FUNCTION_8_10();
  v12(v11);
  OUTLINED_FUNCTION_3_264();
  sub_1E4206F24();
  OUTLINED_FUNCTION_2_255();
  v13 = sub_1E4206F24();
  OUTLINED_FUNCTION_86_1(v13);

  OUTLINED_FUNCTION_9_2();
  v14 = OUTLINED_FUNCTION_8_10();
  v15(v14);
  OUTLINED_FUNCTION_9_2();
  v17 = *(v16 + 1768);
  v17();
  OUTLINED_FUNCTION_2_1();
  (*(v18 + 1816))(0x405D000000000000, 0);

  (v17)(v19);
  OUTLINED_FUNCTION_2_1();
  (*(v20 + 1792))(5);

  (v17)(v21);
  sub_1E4205F14();
  OUTLINED_FUNCTION_36();
  (*(v22 + 1768))();
}

uint64_t sub_1E4098E6C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  v5 = *(a1 + 16);
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v8 = OBJC_IVAR____TtC8VideosUI20DownloadQueueManager_allSeasonDetailsFetchers;
  OUTLINED_FUNCTION_11_3();

  swift_isUniquelyReferenced_nonNull_native();
  v18 = *&v1[v8];
  sub_1E40A0134();
  *&v1[v8] = v18;
  swift_endAccess();
  v9 = sub_1E4206474();
  OUTLINED_FUNCTION_85_0(v9);
  sub_1E4206434();
  OUTLINED_FUNCTION_50();

  v10 = v1;
  v11 = sub_1E4206424();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  v12[5] = a1;
  v12[6] = v6;
  v12[7] = v7;
  OUTLINED_FUNCTION_103_15(v12, v14, v15, v16, v12);
}

uint64_t sub_1E4098FDC()
{
  OUTLINED_FUNCTION_24();
  v0[7] = v1;
  v0[8] = v2;
  v0[5] = v3;
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v5);
  v0[9] = swift_task_alloc();
  v0[10] = sub_1E4206434();
  v0[11] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v0[12] = v6;
  v0[13] = v7;
  v8 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E40990A0()
{
  OUTLINED_FUNCTION_24();
  v1 = *(*(v0[6] + 16) + 80);
  v0[14] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_56_1(v3);

  return sub_1E4099408();
}

uint64_t sub_1E4099140()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *v0;
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = v1[14];
  v5 = *v0;
  OUTLINED_FUNCTION_31();
  *v6 = v5;
  *(v8 + 136) = v7;
  *(v8 + 128) = v9;
  *(v8 + 138) = v10;

  v11 = v1[13];
  v12 = v1[12];

  return MEMORY[0x1EEE6DFA0](sub_1E4099284, v12, v11);
}

uint64_t sub_1E4099284()
{
  v1 = *(v0 + 136);

  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 64);
    v4 = *(v0 + 40);
    v5 = OBJC_IVAR____TtC8VideosUI20DownloadQueueManager_allSeasonDetailsFetchers;
    swift_beginAccess();
    v6 = *(v4 + v5);

    v7 = sub_1E396E6C0(v2, v3, v6);

    if (v7)
    {
      v8 = *(v0 + 138);
      v9 = *(v0 + 128);
      v10 = *(v0 + 137);
      v12 = *(v0 + 56);
      v11 = *(v0 + 64);
      v13 = *(v0 + 40);
      v14 = sub_1E4206474();
      OUTLINED_FUNCTION_85_0(v14);

      v15 = v13;

      v16 = sub_1E4206424();
      v17 = swift_allocObject();
      v18 = MEMORY[0x1E69E85E0];
      *(v17 + 16) = v16;
      *(v17 + 24) = v18;
      *(v17 + 32) = v7;
      *(v17 + 40) = v15;
      *(v17 + 48) = v10 & 1;
      *(v17 + 56) = v9;
      *(v17 + 64) = v8 & 1;
      *(v17 + 72) = v12;
      *(v17 + 80) = v11;
      OUTLINED_FUNCTION_103_15(v17, v19, v20, v21, v17);
      OUTLINED_FUNCTION_50();
    }
  }

  OUTLINED_FUNCTION_54();

  return v22();
}

uint64_t sub_1E4099408()
{
  OUTLINED_FUNCTION_24();
  v0[5] = v1;
  v0[6] = sub_1E4206434();
  v0[7] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v0[8] = v2;
  v0[9] = v3;
  v4 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E4099494()
{
  v1 = [objc_opt_self() topPresentedViewController];
  v0[10] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[5];
    v4 = sub_1E4206424();
    v0[11] = v4;
    v5 = swift_task_alloc();
    v0[12] = v5;
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
    v6 = swift_task_alloc();
    v0[13] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F6A0);
    *v6 = v0;
    v6[1] = sub_1E409962C;
    v8 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DDE0](v0 + 2, v4, v8, 0xD000000000000019, 0x80000001E4290150, sub_1E40A069C, v5, v7);
  }

  else
  {

    v9 = v0[1];

    return v9(0, 0, 1);
  }
}

uint64_t sub_1E409962C()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1E4099780, v5, v4);
}

uint64_t sub_1E4099780()
{
  OUTLINED_FUNCTION_24();
  swift_unknownObjectRelease();

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (*(v0 + 17))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v4 | v1, v2, v3);
}

uint64_t sub_1E4099808()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 88) = v9;
  *(v0 + 96) = v10;
  *(v0 + 137) = v1;
  *(v0 + 72) = v2;
  *(v0 + 80) = v3;
  *(v0 + 136) = v4;
  *(v0 + 64) = v5;
  *(v0 + 104) = sub_1E4206434();
  *(v0 + 112) = sub_1E4206424();
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_56_1(v6);

  return sub_1E3F5009C();
}

uint64_t sub_1E40998CC()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  *(v6 + 128) = v5;

  sub_1E42063B4();
  v7 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E40999F4()
{
  v19 = v0;
  v1 = *(v0 + 64);

  v3 = *(**(v1 + 16) + 224);
  v4 = *(v1 + 16);
  if (v3(v2))
  {
    v5 = *(v0 + 72);
    v6 = OBJC_IVAR____TtC8VideosUI20DownloadQueueManager_seasonDetailsMap;
    OUTLINED_FUNCTION_11_3();

    swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v5 + v6);
    v4 = &v18;
    OUTLINED_FUNCTION_27_0();
    sub_1E40A0134();
    *(v5 + v6) = v18;

    swift_endAccess();
  }

  sub_1E4099BE4(*(v0 + 128));
  OUTLINED_FUNCTION_50();

  if (v4)
  {
    sub_1E3280A90(0, &qword_1ECF3F6B0);
    v7 = OUTLINED_FUNCTION_12_1();
    result = sub_1E32AE9B0(v7);
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    v9 = *(v0 + 137);
    v10 = *(v0 + 80);
    v11 = *(v0 + 136);
    v12 = sub_1E4099D20(v4, result, 1);
    v13 = v12;
    if (v9)
    {
      v14 = 1;
    }

    else
    {
      v14 = v10;
    }

    [v12 startDownloadAllowingCellular:v11 quality:v14 shouldMarkAsDeletedOnCancellationOrFailure:1 prefer3DOrImmersiveDownload:1 isAutomatic:0 completion:0];
  }

  v16 = *(v0 + 88);
  v15 = *(v0 + 96);
  OUTLINED_FUNCTION_11_3();
  sub_1E409FFB8(v16, v15);
  swift_endAccess();

  OUTLINED_FUNCTION_54();

  return v17();
}

uint64_t sub_1E4099BE4(unint64_t a1)
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

      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();

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

id sub_1E4099D20(uint64_t a1, uint64_t a2, char a3)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1E3280A90(0, &qword_1ECF3F6C0);
  v6 = sub_1E42062A4();

  v7 = [v5 initWithAssetControllers:v6 completionCount:a2 showDownloadingOnlyWhenWholeCollectionDownloads:a3 & 1];

  return v7;
}

id sub_1E4099DC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownloadQueueManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E4099E40()
{
  OUTLINED_FUNCTION_24();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_1E41FFCB4();
  v1[10] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v1[11] = v4;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  sub_1E4206434();
  v1[16] = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v1[17] = v5;
  v1[18] = v6;
  v7 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E4099F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_121_3();
  v23 = sub_1E32AE9B0(*(v21 + 64));
  if (v23)
  {
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF35BC0);
    v25 = MEMORY[0x1E69E7CC0];
    v26 = sub_1E4205CB4();
    *(v21 + 56) = v25;
    if (v24 < 1)
    {
LABEL_73:
      __break(1u);
LABEL_74:

      v69 = MEMORY[0x1E6911E60](0, v20);
LABEL_44:
      v70 = v69;
      v71 = [v69 metadata];

      if (v71 && (sub_1E32868C0(v71, &selRef_showTitle), v72))
      {
        OUTLINED_FUNCTION_52_52();
      }

      else
      {
LABEL_51:
        OUTLINED_FUNCTION_10_173();
      }

      v74 = OUTLINED_FUNCTION_80_22();
      v75 = OUTLINED_FUNCTION_8_201(v74);
      v76(v75);

      v77 = sub_1E41FFC94();
      sub_1E42067E4();
      OUTLINED_FUNCTION_79_28();
      v78 = OUTLINED_FUNCTION_61_30();
      v79 = *(v21 + 120);
      v81 = *(v21 + 80);
      v80 = *(v21 + 88);
      if (v78)
      {
        OUTLINED_FUNCTION_6_21();
        OUTLINED_FUNCTION_52_2();
        *isUniquelyReferenced_nonNull_native = 136315138;
        v82 = OUTLINED_FUNCTION_35_5();
        *(isUniquelyReferenced_nonNull_native + 4) = sub_1E3270FC8(v82, v83, v84);
        OUTLINED_FUNCTION_99_2(&dword_1E323F000, v85, v86, "DownloadQueueManager:: enqueueing playables for show %s");
        OUTLINED_FUNCTION_7_234();
        v21 = a12;
        OUTLINED_FUNCTION_6_0();
      }

      v87 = *(v80 + 8);
      v87(v79, v81);
      *(v21 + 240) = v87;
      v88 = swift_task_alloc();
      *(v21 + 248) = v88;
      *v88 = v21;
      OUTLINED_FUNCTION_3_265(v88);
    }

    else
    {
      v20 = v26;
      v27 = 0;
      v28 = *(v21 + 64);
      a13 = v28 & 0xC000000000000001;
      a10 = v28 + 32;
      isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC0];
      a11 = v24;
      a12 = v21;
      do
      {
        if (a13)
        {
          v29 = MEMORY[0x1E6911E60](v27, *(v21 + 64));
        }

        else
        {
          v29 = *(a10 + 8 * v27);
        }

        v30 = v29;
        a15 = sub_1E32859C4(v29, &selRef_showCanonicalID);
        if (v31)
        {
          v32 = v31;
          if (*(v20 + 16))
          {
            v21 = a15;
            OUTLINED_FUNCTION_71_33();
            if (v33)
            {
            }

            else
            {
              v34 = MEMORY[0x1E69E7CC0];
            }
          }

          else
          {
            v34 = MEMORY[0x1E69E7CC0];
            v21 = a15;
          }

          a14 = isUniquelyReferenced_nonNull_native;
          a16 = v34;
          v37 = v30;
          MEMORY[0x1E6910BF0]();
          v38 = *((a16 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((a16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v38 >> 1)
          {
            OUTLINED_FUNCTION_35(v38);
            sub_1E42062F4();
          }

          v39 = v37;
          sub_1E4206324();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a17 = v20;
          v40 = OUTLINED_FUNCTION_71_33();
          v42 = *(v20 + 16);
          v43 = (v41 & 1) == 0;
          v20 = v42 + v43;
          if (__OFADD__(v42, v43))
          {
            __break(1u);
LABEL_72:
            __break(1u);
            goto LABEL_73;
          }

          v44 = v40;
          v45 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F610);
          v20 = a17;
          if (sub_1E4207644())
          {
            v46 = OUTLINED_FUNCTION_71_33();
            v48 = a12;
            isUniquelyReferenced_nonNull_native = a14;
            if ((v45 & 1) != (v47 & 1))
            {
              OUTLINED_FUNCTION_68_4();

              return sub_1E4207A74();
            }

            v44 = v46;
          }

          else
          {
            v48 = a12;
            isUniquelyReferenced_nonNull_native = a14;
          }

          v21 = v48;
          if (v45)
          {
            *(a17[7] + 8 * v44) = a16;
          }

          else
          {
            a17[(v44 >> 6) + 8] |= 1 << v44;
            v49 = (a17[6] + 16 * v44);
            *v49 = a15;
            v49[1] = v32;
            *(a17[7] + 8 * v44) = a16;
            v50 = a17[2];
            v51 = __OFADD__(v50, 1);
            v52 = v50 + 1;
            if (v51)
            {
              goto LABEL_72;
            }

            a17[2] = v52;
          }

          v24 = a11;
        }

        else
        {
          v35 = v30;
          MEMORY[0x1E6910BF0]();
          v36 = *((*(v21 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((*(v21 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= v36 >> 1)
          {
            OUTLINED_FUNCTION_35(v36);
            sub_1E42062F4();
          }

          sub_1E4206324();

          isUniquelyReferenced_nonNull_native = *(v21 + 56);
        }

        ++v27;
        *(v21 + 152) = isUniquelyReferenced_nonNull_native;
        *(v21 + 160) = v20;
      }

      while (v24 != v27);
      v53 = *(v20 + 32);
      *(v21 + 352) = v53;
      v54 = -1;
      v55 = -1 << v53;
      if (-(-1 << v53) < 64)
      {
        v54 = ~(-1 << -v55);
      }

      v56 = v54 & *(v20 + 64);

      if (v56)
      {
        v57 = 0;
LABEL_40:
        *(v21 + 168) = v56;
        *(v21 + 176) = v57;
        result = OUTLINED_FUNCTION_33_90(v57);
        if (!result)
        {

          goto LABEL_51;
        }

        if ((v20 & 0xC000000000000001) != 0)
        {
          goto LABEL_74;
        }

        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v68 = *(v20 + 32);

          v69 = v68;
          goto LABEL_44;
        }

        __break(1u);
LABEL_76:
        __break(1u);
        return result;
      }

      v67 = 0;
      while (((63 - v55) >> 6) - 1 != v67)
      {
        v57 = v67 + 1;
        v56 = *(v20 + 8 * v67++ + 72);
        if (v56)
        {
          goto LABEL_40;
        }
      }

      result = sub_1E32AE9B0(isUniquelyReferenced_nonNull_native);
      *(v21 + 192) = result;
      if (!result)
      {
        OUTLINED_FUNCTION_83_23();

        goto LABEL_34;
      }

      if (result < 1)
      {
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_57_37();
      if (v91)
      {
        v92 = *(v90 + 32);
      }

      else
      {
        v92 = MEMORY[0x1E6911E60](0);
      }

      v93 = [OUTLINED_FUNCTION_67_30(v92) metadata];
      if (v93 && (sub_1E32868C0(v93, &selRef_title), v94))
      {
        OUTLINED_FUNCTION_52_52();
      }

      else
      {
        OUTLINED_FUNCTION_10_173();
      }

      v95 = OUTLINED_FUNCTION_78_23();
      v96 = OUTLINED_FUNCTION_1_294(v95);
      v97(v96);

      v98 = sub_1E41FFC94();
      sub_1E42067E4();
      OUTLINED_FUNCTION_79_28();
      v99 = OUTLINED_FUNCTION_61_30();
      v100 = *(v21 + 112);
      v102 = *(v21 + 80);
      v101 = *(v21 + 88);
      if (v99)
      {
        OUTLINED_FUNCTION_6_21();
        OUTLINED_FUNCTION_52_2();
        *isUniquelyReferenced_nonNull_native = 136315138;
        v103 = OUTLINED_FUNCTION_35_5();
        *(isUniquelyReferenced_nonNull_native + 4) = sub_1E3270FC8(v103, v104, v105);
        OUTLINED_FUNCTION_99_2(&dword_1E323F000, v106, v107, "DownloadQueueManager:: enqueueing ungrouped playable %s");
        OUTLINED_FUNCTION_7_234();
        v21 = a12;
        OUTLINED_FUNCTION_6_0();
      }

      v108 = *(v101 + 8);
      v108(v100, v102);
      *(v21 + 320) = v108;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      inited = swift_initStackObject();
      v110 = OUTLINED_FUNCTION_65_37(inited);
      OUTLINED_FUNCTION_14_65(v110, xmmword_1E4298880);
      v111 = v20;
      v112 = swift_task_alloc();
      v113 = OUTLINED_FUNCTION_63_36(v112);
      *v113 = v114;
      OUTLINED_FUNCTION_0_334(v113);
    }

    OUTLINED_FUNCTION_68_4();

    return sub_1E409B894();
  }

  else
  {

LABEL_34:
    OUTLINED_FUNCTION_84_24();

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_68_4();

    return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_1E409A68C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[32] = v0;

  if (v0)
  {
    v7 = v3[17];
    v8 = v3[18];
    v9 = sub_1E409AF44;
  }

  else
  {

    v7 = v3[17];
    v8 = v3[18];
    v9 = sub_1E409A7A8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1E409A7A8()
{
  v5 = *(v1 + 176);
  v6 = (*(v1 + 168) - 1) & *(v1 + 168);
  if (!v6)
  {
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v7 >= (((1 << *(v1 + 352)) + 63) >> 6))
      {
        break;
      }

      v6 = *(*(v1 + 160) + 8 * v7 + 64);
      ++v5;
      if (v6)
      {
        v5 = v7;
        goto LABEL_6;
      }
    }

    v30 = *(v1 + 152);

    result = sub_1E32AE9B0(v30);
    *(v1 + 192) = result;
    if (!result)
    {
      OUTLINED_FUNCTION_83_23();

      OUTLINED_FUNCTION_84_24();

      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_30_38();

      __asm { BRAA            X1, X16 }
    }

    if (result >= 1)
    {
      OUTLINED_FUNCTION_57_37();
      if (v32)
      {
        v33 = *(v31 + 32);
      }

      else
      {
        v33 = MEMORY[0x1E6911E60](0);
      }

      v36 = [OUTLINED_FUNCTION_67_30(v33) metadata];
      if (v36 && (sub_1E32868C0(v36, &selRef_title), v37))
      {
        OUTLINED_FUNCTION_52_52();
      }

      else
      {
        OUTLINED_FUNCTION_10_173();
      }

      v38 = OUTLINED_FUNCTION_78_23();
      v39 = OUTLINED_FUNCTION_1_294(v38);
      v40(v39);

      v41 = sub_1E41FFC94();
      sub_1E42067E4();
      OUTLINED_FUNCTION_79_28();
      OUTLINED_FUNCTION_61_30();
      OUTLINED_FUNCTION_90_22();
      if (v42)
      {
        OUTLINED_FUNCTION_6_21();
        OUTLINED_FUNCTION_52_2();
        *v4 = 136315138;
        v43 = OUTLINED_FUNCTION_35_5();
        *(v4 + 4) = sub_1E3270FC8(v43, v44, v45);
        OUTLINED_FUNCTION_99_2(&dword_1E323F000, v46, v47, "DownloadQueueManager:: enqueueing ungrouped playable %s");
        OUTLINED_FUNCTION_7_234();
        OUTLINED_FUNCTION_79();

        v41 = *(v2 + 8);
        (v41)(v4, v3);
      }

      else
      {

        v48 = OUTLINED_FUNCTION_51_52();
        (v41)(v48, v3);
      }

      *(v1 + 320) = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      inited = swift_initStackObject();
      v50 = OUTLINED_FUNCTION_65_37(inited);
      OUTLINED_FUNCTION_14_65(v50, xmmword_1E4298880);
      v51 = v0;
      v52 = swift_task_alloc();
      v53 = OUTLINED_FUNCTION_63_36(v52);
      *v53 = v54;
      OUTLINED_FUNCTION_0_334(v53);
      goto LABEL_19;
    }

LABEL_41:
    __break(1u);
    return result;
  }

LABEL_6:
  *(v1 + 168) = v6;
  *(v1 + 176) = v5;
  result = OUTLINED_FUNCTION_33_90(v5);
  if (!result)
  {

LABEL_14:
    OUTLINED_FUNCTION_10_173();

    goto LABEL_15;
  }

  if ((v0 & 0xC000000000000001) != 0)
  {
LABEL_39:

    v10 = MEMORY[0x1E6911E60](0, v0);
  }

  else
  {
    if (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_41;
    }

    v9 = *(v0 + 32);

    v10 = v9;
  }

  v11 = v10;
  v12 = [v10 metadata];

  if (!v12)
  {
    goto LABEL_14;
  }

  sub_1E32868C0(v12, &selRef_showTitle);
  if (!v13)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_52_52();
LABEL_15:
  v14 = OUTLINED_FUNCTION_80_22();
  v15 = OUTLINED_FUNCTION_8_201(v14);
  v16(v15);

  v17 = sub_1E41FFC94();
  sub_1E42067E4();
  OUTLINED_FUNCTION_79_28();
  v18 = OUTLINED_FUNCTION_61_30();
  v19 = *(v1 + 120);
  v21 = *(v1 + 80);
  v20 = *(v1 + 88);
  if (v18)
  {
    OUTLINED_FUNCTION_6_21();
    OUTLINED_FUNCTION_52_2();
    *v19 = 136315138;
    v22 = OUTLINED_FUNCTION_35_5();
    *(v19 + 4) = sub_1E3270FC8(v22, v23, v24);
    OUTLINED_FUNCTION_99_2(&dword_1E323F000, v25, v26, "DownloadQueueManager:: enqueueing playables for show %s");
    OUTLINED_FUNCTION_7_234();
    OUTLINED_FUNCTION_79();

    v17 = *(v20 + 8);
    (v17)(v19, v21);
  }

  else
  {

    v27 = OUTLINED_FUNCTION_51_52();
    (v17)(v27, v21);
  }

  *(v1 + 240) = v17;
  v28 = swift_task_alloc();
  *(v1 + 248) = v28;
  *v28 = v1;
  OUTLINED_FUNCTION_3_265();
LABEL_19:
  OUTLINED_FUNCTION_30_38();

  return sub_1E409B894();
}

uint64_t sub_1E409ABD4()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[43] = v0;

  if (v0)
  {
    v7 = v3[17];
    v8 = v3[18];
    v9 = sub_1E409B4C4;
  }

  else
  {

    swift_setDeallocating();
    sub_1E377D458();
    v7 = v3[17];
    v8 = v3[18];
    v9 = sub_1E409ACF8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1E409ACF8()
{
  v33 = v2;

  v5 = OUTLINED_FUNCTION_89_20();
  if (v6)
  {
    OUTLINED_FUNCTION_83_23();

    OUTLINED_FUNCTION_84_24();

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_30_38();

    __asm { BRAA            X1, X16 }
  }

  *(v2 + 264) = v5;
  v9 = *(v2 + 152);
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1E6911E60]();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_82_24(v5, v9);
  }

  v11 = [OUTLINED_FUNCTION_67_30(v10) metadata];
  if (v11 && (v12 = sub_1E32868C0(v11, &selRef_title), v13))
  {
    v3 = v12;
    v1 = v13;
  }

  else
  {

    OUTLINED_FUNCTION_88_20();
  }

  *(v2 + 280) = v3;
  *(v2 + 288) = v1;
  v14 = *(v2 + 80);
  v15 = *(v2 + 88);
  v16 = sub_1E324FBDC();
  v17 = OUTLINED_FUNCTION_1_294(v16);
  v18(v17);

  v19 = sub_1E41FFC94();
  sub_1E42067E4();

  OUTLINED_FUNCTION_61_30();
  OUTLINED_FUNCTION_90_22();
  if (v20)
  {
    OUTLINED_FUNCTION_6_21();
    v32 = OUTLINED_FUNCTION_52_2();
    *v4 = 136315138;
    *(v4 + 4) = sub_1E3270FC8(v3, v1, &v32);
    OUTLINED_FUNCTION_99_2(&dword_1E323F000, v21, v22, "DownloadQueueManager:: enqueueing ungrouped playable %s");
    OUTLINED_FUNCTION_7_234();
    OUTLINED_FUNCTION_79();

    v19 = *(v14 + 8);
    (v19)(v4, v15);
  }

  else
  {

    v23 = OUTLINED_FUNCTION_51_52();
    (v19)(v23, v15);
  }

  *(v2 + 320) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  inited = swift_initStackObject();
  v25 = OUTLINED_FUNCTION_65_37(inited);
  OUTLINED_FUNCTION_14_65(v25, xmmword_1E4298880);
  v26 = v0;
  v27 = swift_task_alloc();
  v28 = OUTLINED_FUNCTION_63_36(v27);
  *v28 = v29;
  OUTLINED_FUNCTION_0_334();
  OUTLINED_FUNCTION_30_38();

  return sub_1E409B894();
}

uint64_t sub_1E409AF44()
{
  v3 = *(v0 + 256);
  (*(v0 + 224))(*(v0 + 104), *(v0 + 216), *(v0 + 80));

  v4 = v3;
  v5 = sub_1E41FFC94();
  sub_1E42067F4();
  OUTLINED_FUNCTION_106_20();

  v6 = OUTLINED_FUNCTION_110_5();
  v7 = *(v0 + 256);
  v8 = *(v0 + 240);
  if (v6)
  {
    v71 = *(v0 + 80);
    v72 = *(v0 + 104);
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_36_8();
    v73 = OUTLINED_FUNCTION_52_2();
    v12 = OUTLINED_FUNCTION_102_18(4.8151e-34, v73, v9, v10, v11);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_70_31();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v13;
    *v2 = v13;
    OUTLINED_FUNCTION_36_4();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
    sub_1E325F7A8(v2, &unk_1ECF28E30);
    OUTLINED_FUNCTION_79();
    __swift_destroy_boxed_opaque_existential_1(v73);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_55();

    (v8)(v72, v71);
  }

  else
  {
    v19 = *(v0 + 88);

    v1 = v19 + 8;

    v20 = OUTLINED_FUNCTION_35_5();
    (v8)(v20);
  }

  v21 = *(v0 + 176);
  v22 = (*(v0 + 168) - 1) & *(v0 + 168);
  if (!v22)
  {
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v23 >= (((1 << *(v0 + 352)) + 63) >> 6))
      {
        break;
      }

      v22 = *(*(v0 + 160) + 8 * v23 + 64);
      ++v21;
      if (v22)
      {
        v21 = v23;
        goto LABEL_9;
      }
    }

    v46 = *(v0 + 152);

    result = sub_1E32AE9B0(v46);
    *(v0 + 192) = result;
    if (!result)
    {
      OUTLINED_FUNCTION_83_23();

      OUTLINED_FUNCTION_84_24();

      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_29_30();

      __asm { BRAA            X1, X16 }
    }

    if (result >= 1)
    {
      OUTLINED_FUNCTION_57_37();
      if (v48)
      {
        v49 = *(v47 + 32);
      }

      else
      {
        v49 = MEMORY[0x1E6911E60](0);
      }

      v52 = [OUTLINED_FUNCTION_67_30(v49) metadata];
      if (v52 && (sub_1E32868C0(v52, &selRef_title), v53))
      {
        OUTLINED_FUNCTION_52_52();
      }

      else
      {
        OUTLINED_FUNCTION_10_173();
      }

      v54 = OUTLINED_FUNCTION_78_23();
      v55 = OUTLINED_FUNCTION_1_294(v54);
      v56(v55);

      v57 = sub_1E41FFC94();
      sub_1E42067E4();
      OUTLINED_FUNCTION_79_28();
      OUTLINED_FUNCTION_61_30();
      OUTLINED_FUNCTION_90_22();
      if (v58)
      {
        OUTLINED_FUNCTION_6_21();
        OUTLINED_FUNCTION_52_2();
        *v2 = 136315138;
        v59 = OUTLINED_FUNCTION_35_5();
        *(v2 + 4) = sub_1E3270FC8(v59, v60, v61);
        OUTLINED_FUNCTION_99_2(&dword_1E323F000, v62, v63, "DownloadQueueManager:: enqueueing ungrouped playable %s");
        OUTLINED_FUNCTION_7_234();
        OUTLINED_FUNCTION_79();

        v57 = *(v1 + 8);
        (v57)(v2, v8);
      }

      else
      {

        v64 = OUTLINED_FUNCTION_51_52();
        (v57)(v64, v8);
      }

      *(v0 + 320) = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      inited = swift_initStackObject();
      v66 = OUTLINED_FUNCTION_65_37(inited);
      OUTLINED_FUNCTION_14_65(v66, xmmword_1E4298880);
      v67 = v7;
      v68 = swift_task_alloc();
      v69 = OUTLINED_FUNCTION_63_36(v68);
      *v69 = v70;
      OUTLINED_FUNCTION_0_334(v69);
      goto LABEL_22;
    }

LABEL_44:
    __break(1u);
    return result;
  }

LABEL_9:
  *(v0 + 168) = v22;
  *(v0 + 176) = v21;
  result = OUTLINED_FUNCTION_33_90(v21);
  if (!result)
  {

LABEL_17:
    OUTLINED_FUNCTION_10_173();

    goto LABEL_18;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_42:

    v26 = MEMORY[0x1E6911E60](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_44;
    }

    v25 = *(v7 + 32);

    v26 = v25;
  }

  v27 = v26;
  v28 = [v26 metadata];

  if (!v28)
  {
    goto LABEL_17;
  }

  sub_1E32868C0(v28, &selRef_showTitle);
  if (!v29)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_52_52();
LABEL_18:
  v30 = OUTLINED_FUNCTION_80_22();
  v31 = OUTLINED_FUNCTION_8_201(v30);
  v32(v31);

  v33 = sub_1E41FFC94();
  sub_1E42067E4();
  OUTLINED_FUNCTION_79_28();
  v34 = OUTLINED_FUNCTION_61_30();
  v35 = *(v0 + 120);
  v37 = *(v0 + 80);
  v36 = *(v0 + 88);
  if (v34)
  {
    OUTLINED_FUNCTION_6_21();
    OUTLINED_FUNCTION_52_2();
    *v35 = 136315138;
    v38 = OUTLINED_FUNCTION_35_5();
    *(v35 + 4) = sub_1E3270FC8(v38, v39, v40);
    OUTLINED_FUNCTION_99_2(&dword_1E323F000, v41, v42, "DownloadQueueManager:: enqueueing playables for show %s");
    OUTLINED_FUNCTION_7_234();
    OUTLINED_FUNCTION_79();

    v33 = *(v36 + 8);
    (v33)(v35, v37);
  }

  else
  {

    v43 = OUTLINED_FUNCTION_51_52();
    (v33)(v43, v37);
  }

  *(v0 + 240) = v33;
  v44 = swift_task_alloc();
  *(v0 + 248) = v44;
  *v44 = v0;
  OUTLINED_FUNCTION_3_265();
LABEL_22:
  OUTLINED_FUNCTION_29_30();

  return sub_1E409B894();
}

uint64_t sub_1E409B4C4()
{
  v56 = v0;
  v1 = v0[43];
  v2 = v0[38];
  v3 = v0[37];
  v4 = v0[12];
  v5 = v0[10];
  swift_setDeallocating();
  sub_1E377D458();
  (v2)(v4, v3, v5);

  v6 = v1;
  v7 = sub_1E41FFC94();
  sub_1E42067F4();

  v8 = OUTLINED_FUNCTION_110_5();
  v9 = v0[43];
  v10 = v0[40];
  if (v8)
  {
    v54 = v0[12];
    v53 = v0[10];
    v52 = v0[34];
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_36_8();
    v11 = v10;
    v12 = OUTLINED_FUNCTION_52_2();
    v55 = v12;
    v16 = OUTLINED_FUNCTION_102_18(4.8151e-34, v12, v13, v14, v15);

    *(v5 + 4) = v16;
    OUTLINED_FUNCTION_70_31();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v17;
    *v2 = v17;
    OUTLINED_FUNCTION_36_4();
    _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
    sub_1E325F7A8(v2, &unk_1ECF28E30);
    OUTLINED_FUNCTION_79();
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_55();

    v11(v54, v53);
  }

  else
  {
    v23 = v0[34];
    v16 = v0[12];
    v11 = v0[10];

    v24 = OUTLINED_FUNCTION_35_5();
    (v10)(v24);
  }

  v25 = OUTLINED_FUNCTION_89_20();
  if (v26)
  {
    OUTLINED_FUNCTION_83_23();

    OUTLINED_FUNCTION_84_24();

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_29_30();

    __asm { BRAA            X1, X16 }
  }

  v0[33] = v25;
  v29 = v0[19];
  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x1E6911E60]();
  }

  else
  {
    v30 = OUTLINED_FUNCTION_82_24(v25, v29);
  }

  v31 = [OUTLINED_FUNCTION_67_30(v30) metadata];
  if (v31 && (v32 = sub_1E32868C0(v31, &selRef_title), v33))
  {
    v11 = v32;
    v16 = v33;
  }

  else
  {

    OUTLINED_FUNCTION_88_20();
  }

  v0[35] = v11;
  v0[36] = v16;
  v34 = v0[10];
  v35 = v0[11];
  v36 = sub_1E324FBDC();
  v37 = OUTLINED_FUNCTION_1_294(v36);
  v38(v37);

  v39 = sub_1E41FFC94();
  sub_1E42067E4();

  OUTLINED_FUNCTION_61_30();
  OUTLINED_FUNCTION_90_22();
  if (v40)
  {
    OUTLINED_FUNCTION_6_21();
    v55 = OUTLINED_FUNCTION_52_2();
    *v2 = 136315138;
    *(v2 + 4) = sub_1E3270FC8(v11, v16, &v55);
    OUTLINED_FUNCTION_99_2(&dword_1E323F000, v41, v42, "DownloadQueueManager:: enqueueing ungrouped playable %s");
    OUTLINED_FUNCTION_7_234();
    OUTLINED_FUNCTION_79();

    v39 = *(v34 + 8);
    (v39)(v2, v35);
  }

  else
  {

    v43 = OUTLINED_FUNCTION_51_52();
    (v39)(v43, v35);
  }

  v0[40] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  inited = swift_initStackObject();
  v45 = OUTLINED_FUNCTION_65_37(inited);
  OUTLINED_FUNCTION_14_65(v45, xmmword_1E4298880);
  v46 = v9;
  v47 = swift_task_alloc();
  v48 = OUTLINED_FUNCTION_63_36(v47);
  *v48 = v49;
  OUTLINED_FUNCTION_0_334();
  OUTLINED_FUNCTION_29_30();

  return sub_1E409B894();
}

uint64_t sub_1E409B894()
{
  OUTLINED_FUNCTION_24();
  v1[20] = v2;
  v1[21] = v0;
  v3 = sub_1E41FFCB4();
  v1[22] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v1[23] = v4;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  sub_1E4206434();
  v1[29] = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v1[30] = v5;
  v1[31] = v6;
  v7 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1E409B998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id a13, uint64_t a14, unint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_121_3();
  a27 = v32;
  a28 = v33;
  a26 = v29;
  v34 = v29[20];
  v35 = sub_1E32AE9B0(v34);
  v98 = v29;
  v29[32] = v35;
  v36 = v34 & 0xC000000000000001;
  v37 = &selRef_itemProviderForActivityWithAdamId_previewMetadata_existingItemProvider_;
  if (v35)
  {
    if (v36)
    {
      goto LABEL_64;
    }

    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v38 = *(v29[20] + 32);
      goto LABEL_5;
    }

    __break(1u);
LABEL_66:
    v34 = MEMORY[0x1E6911E60](0, v30);
    v35 = v30 & 0xFFFFFFFFFFFFFF8;
LABEL_38:
    v67 = 1;
    v37 = &selRef_processPendingChanges;
LABEL_39:
    v98[35] = v34;
    while (v36 != v67)
    {
      if (v31)
      {
        v68 = OUTLINED_FUNCTION_35_5();
        v69 = MEMORY[0x1E6911E60](v68);
      }

      else
      {
        if ((v67 & 0x8000000000000000) != 0)
        {
          goto LABEL_62;
        }

        if (v67 >= *(v35 + 16))
        {
          goto LABEL_63;
        }

        v69 = *(v30 + 8 * v67 + 32);
      }

      v70 = v69;
      if (__OFADD__(v67, 1))
      {
        goto LABEL_61;
      }

      v71 = [v34 rank];
      if (v71 < [v70 rank])
      {

        ++v67;
        v34 = v70;
        v30 = a15;
        goto LABEL_39;
      }

      ++v67;
      v30 = a15;
    }

    v72 = v34;
    v73 = swift_task_alloc();
    v98[36] = v73;
    *v73 = v98;
    OUTLINED_FUNCTION_56_1(v73);
    OUTLINED_FUNCTION_68_4();

    sub_1E4099408();
    return;
  }

LABEL_14:
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_10_173();
  while (2)
  {
    while (2)
    {
      v48 = 0;
      v49 = MEMORY[0x1E69E7CC0];
      v96 = v28;
      v97 = v42;
      v98[33] = v28;
      v98[34] = v42;
      v50 = (v34 & 0xFFFFFFFFFFFFFF8);
      v51 = v98[20];
      a17 = v49;
      a15 = v49;
      v100 = v51 + 32;
      v99 = v34 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v35 == v48)
        {
          v30 = a15;
          v66 = sub_1E32AE9B0(a15);
          if (!v66)
          {
            v75 = v98[25];
            v76 = v98[22];
            v77 = v98[23];

            v78 = sub_1E324FBDC();
            (*(v77 + 16))(v75, v78, v76);

            v79 = sub_1E41FFC94();
            v80 = sub_1E42067F4();

            v81 = os_log_type_enabled(v79, v80);
            v82 = v98[25];
            v83 = v98[22];
            v84 = v98[23];
            if (v81)
            {
              v85 = OUTLINED_FUNCTION_6_21();
              v86 = OUTLINED_FUNCTION_100();
              a17 = v86;
              *v85 = 136315138;
              v87 = sub_1E3270FC8(v96, v97, &a17);

              *(v85 + 4) = v87;
              _os_log_impl(&dword_1E323F000, v79, v80, "DownloadQueueManager:: not downloading show %s because there is no content rating", v85, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v86);
              OUTLINED_FUNCTION_51_2();
              OUTLINED_FUNCTION_6_0();
            }

            else
            {
            }

            (*(v84 + 8))(v82, v83);

            OUTLINED_FUNCTION_54();
            OUTLINED_FUNCTION_68_4();

            v89(v88, v89, v90, v91, v92, v93, v94, v95, a9, v96, v97, v98, a13, v99, a15, v100, a17, a18, a19, a20);
            return;
          }

          v36 = v66;
          v31 = a15 & 0xC000000000000001;
          if ((a15 & 0xC000000000000001) != 0)
          {
            goto LABEL_66;
          }

          v35 = a15 & 0xFFFFFFFFFFFFFF8;
          if (*((a15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v34 = *(a15 + 32);
            goto LABEL_38;
          }

          __break(1u);
          goto LABEL_68;
        }

        if (v36)
        {
          v52 = MEMORY[0x1E6911E60](v48, v98[20]);
        }

        else
        {
          if (v48 >= v50[2])
          {
            goto LABEL_60;
          }

          v52 = *(v100 + 8 * v48);
        }

        v53 = v52;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        v54 = [v52 v37[407]];
        if (v54)
        {
          v55 = v54;
          v56 = sub_1E32859C4(v54, &selRef_ratingSystem);
          if (!v57)
          {
            goto LABEL_30;
          }

          v58 = v56;
          v34 = v57;
          v37 = v36;
          v36 = v35;
          v59 = [v55 ratingValue];
          if (!v59 || (v50 = v59, a13 = [v59 unsignedIntegerValue], v50, v60 = sub_1E32859C4(v55, &selRef_ratingName), !v61))
          {

            OUTLINED_FUNCTION_95_20();
LABEL_30:

            goto LABEL_31;
          }

          v35 = v60;
          v50 = v61;
          v62 = objc_allocWithZone(MEMORY[0x1E69DF6B8]);
          v63 = v34;
          v34 = v62;
          v64 = sub_1E3A294D4(v58, v63, v35, v50, a13, 0, 0);

          OUTLINED_FUNCTION_95_20();
          if (!v64)
          {
            goto LABEL_32;
          }

          MEMORY[0x1E6910BF0]();
          v65 = *((a17 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((a17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v65 >> 1)
          {
            OUTLINED_FUNCTION_35(v65);
            sub_1E42062F4();
          }

          v34 = &a17;
          sub_1E4206324();
          a15 = a17;
          ++v48;
        }

        else
        {
LABEL_31:

LABEL_32:
          ++v48;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      v38 = MEMORY[0x1E6911E60](0, v98[20]);
LABEL_5:
      v39 = v38;
      v40 = [v38 v37[407]];

      if (v40)
      {
        v41 = sub_1E32868C0(v40, &selRef_showTitle);
        if (v42)
        {
          v28 = v41;
          continue;
        }
      }

      break;
    }

    if (v36)
    {
LABEL_68:
      v43 = MEMORY[0x1E6911E60](0, v98[20]);
      goto LABEL_11;
    }

    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v43 = *(v98[20] + 32);
LABEL_11:
      v28 = v43;
      v44 = [v43 v37[407]];

      if (v44)
      {
        v45 = sub_1E32868C0(v44, &selRef_title);
        if (v46)
        {
          v47 = v46;
          v28 = v45;

          v42 = v47;
          continue;
        }
      }

      goto LABEL_14;
    }

    break;
  }

  __break(1u);
}

uint64_t sub_1E409BFAC()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *v0;
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = v1[35];
  v5 = *v0;
  OUTLINED_FUNCTION_31();
  *v6 = v5;
  *(v8 + 368) = v7;
  *(v8 + 296) = v9;
  *(v8 + 371) = v10;

  v11 = v1[31];
  v12 = v1[30];

  return MEMORY[0x1EEE6DFA0](sub_1E409C0F0, v12, v11);
}

uint64_t sub_1E409C0F0(uint64_t a1, __n128 a2)
{
  v76 = v2;
  v3 = *(v2 + 256);
  if (v3)
  {
    if (v3 < 1)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      v5 = &unk_1EE231000;
      v6 = &selRef_setWaitingForTransactionToStart_;
      v7 = &selRef_setWaitingForTransactionToStart_;
      a2.n128_u64[0] = 136315650;
      v64 = a2;
      while (1)
      {
        v8 = OUTLINED_FUNCTION_55_51(v4);
        v11 = v10 ? OUTLINED_FUNCTION_82_24(v8, v9) : MEMORY[0x1E6911E60](v8);
        v12 = v11;
        *(v2 + 312) = v11;
        v13 = *(v2 + 368);
        v14 = [objc_allocWithZone((v5 + 1224)) initWithVideosPlayable_];
        v15 = v14;
        *(v2 + 320) = v14;
        if (v13 & 1) != 0 && (sub_1E409D41C(v14))
        {
          break;
        }

        v71 = v12;
        v73 = v15;
        v16 = *(v2 + 208);
        v17 = *(v2 + 176);
        v18 = *(v2 + 184);
        v19 = [v15 v6[305]];
        v20 = [v19 v7[310]];

        *(v2 + 144) = v20;
        OUTLINED_FUNCTION_41_69();
        v21 = sub_1E4205F84();
        v23 = v22;
        v24 = sub_1E324FBDC();
        (*(v18 + 16))(v16, v24, v17);

        v25 = sub_1E41FFC94();
        v26 = sub_1E42067E4();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = v5;
          v28 = v6;
          v30 = *(v2 + 264);
          v29 = *(v2 + 272);
          v67 = *(v2 + 184);
          v68 = *(v2 + 176);
          v69 = *(v2 + 208);
          v66 = *(v2 + 368) & 1;
          v65 = v21;
          v31 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          *v31 = v64.n128_u32[0];
          v32 = v30;
          v6 = v28;
          v5 = v27;
          *(v31 + 4) = sub_1E3270FC8(v32, v29, &v75);
          *(v31 + 12) = 1024;
          *(v31 + 14) = v66;
          *(v31 + 18) = 2080;
          v33 = sub_1E3270FC8(v65, v23, &v75);

          *(v31 + 20) = v33;
          _os_log_impl(&dword_1E323F000, v25, v26, "    DownloadQueueManager:: not downloading %s because canDownload=%{BOOL}d and downloadStatus=%s", v31, 0x1Cu);
          swift_arrayDestroy();
          v7 = &selRef_setWaitingForTransactionToStart_;
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_51_2();

          (*(v67 + 8))(v69, v68);
        }

        else
        {

          v34 = OUTLINED_FUNCTION_27_0();
          v35(v34);
        }

        v4 = OUTLINED_FUNCTION_29_101();
        if (v10)
        {
          goto LABEL_14;
        }
      }

      v39 = sub_1E324FBDC();
      v40 = OUTLINED_FUNCTION_9_191(v39);
      v41(v40);

      v42 = v15;
      v43 = sub_1E41FFC94();
      sub_1E42067E4();
      OUTLINED_FUNCTION_106_20();

      if (OUTLINED_FUNCTION_110_5())
      {
        v44 = v7;
        v70 = *(v2 + 184);
        v72 = *(v2 + 176);
        v74 = *(v2 + 224);
        OUTLINED_FUNCTION_49_0();
        v75 = OUTLINED_FUNCTION_72_30();
        *v15 = 136315394;
        v45 = OUTLINED_FUNCTION_123_0();
        v48 = sub_1E3270FC8(v45, v46, v47);
        OUTLINED_FUNCTION_58_39(v48);
        v49 = [v42 v6[305]];
        v50 = [v49 v44 + 1144];

        *(v2 + 152) = v50;
        OUTLINED_FUNCTION_41_69();
        v51 = sub_1E4205F84();
        v53 = sub_1E3270FC8(v51, v52, &v75);

        *(v15 + 14) = v53;
        OUTLINED_FUNCTION_36_4();
        _os_log_impl(v54, v55, v56, v57, v58, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_7_7();
        OUTLINED_FUNCTION_55();

        v59 = *(v70 + 8);
        v59(v74, v72);
      }

      else
      {
        v60 = *(v2 + 184);

        v59 = *(v60 + 8);
        v61 = OUTLINED_FUNCTION_35_5();
        (v59)(v61);
      }

      *(v2 + 352) = v59;
      *(v2 + 16) = v2;
      *(v2 + 56) = v2 + 370;
      *(v2 + 24) = sub_1E409C67C;
      swift_continuation_init();
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A038);
      OUTLINED_FUNCTION_5_241(v62);
      *(v2 + 88) = 1107296256;
      OUTLINED_FUNCTION_4_260(&block_descriptor_32_4);
      OUTLINED_FUNCTION_15_168(v63, sel_startDownloadAllowingCellular_quality_shouldMarkAsDeletedOnCancellationOrFailure_prefer3DOrImmersiveDownload_isAutomatic_completion_);
      a1 = v2 + 16;
    }

    return MEMORY[0x1EEE6DEC8](a1);
  }

  else
  {
LABEL_14:
    v36 = *(v2 + 280);

    OUTLINED_FUNCTION_77_23();

    OUTLINED_FUNCTION_54();

    return v37();
  }
}

uint64_t sub_1E409C67C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 360) = v4;
  v5 = v3[31];
  v6 = v3[30];
  if (v4)
  {
    v7 = sub_1E409CDCC;
  }

  else
  {
    v7 = sub_1E409C7A0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E409C7A0()
{
  v75 = v0;
  v3 = *(v0 + 370);
  (*(v0 + 336))(*(v0 + 216), *(v0 + 328), *(v0 + 176));

  v4 = sub_1E41FFC94();
  v5 = sub_1E42067E4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 352);
  v8 = &xmmword_1E4297000;
  v10 = *(v0 + 312);
  v9 = *(v0 + 320);
  if (v6)
  {
    v71 = *(v0 + 352);
    v62 = *(v0 + 320);
    v9 = *(v0 + 264);
    v11 = *(v0 + 272);
    v65 = *(v0 + 176);
    v68 = *(v0 + 216);
    v1 = swift_slowAlloc();
    v2 = OUTLINED_FUNCTION_100();
    v74 = v2;
    *v1 = 136315394;
    *(v1 + 4) = sub_1E3270FC8(v9, v11, &v74);
    *(v1 + 12) = 1024;
    *(v1 + 14) = v3;
    _os_log_impl(&dword_1E323F000, v4, v5, "DownloadQueueManager:: started downloading %s, success=%{BOOL}d", v1, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_7_7();

    v71(v68, v65);
  }

  else
  {
    v8 = *(v0 + 216);

    v12 = OUTLINED_FUNCTION_27_0();
    v7(v12);
  }

  while (1)
  {
    v35 = OUTLINED_FUNCTION_29_101();
    if (v15)
    {
      break;
    }

    v13 = OUTLINED_FUNCTION_55_51(v35);
    if (v15)
    {
      v16 = OUTLINED_FUNCTION_82_24(v13, v14);
    }

    else
    {
      v16 = MEMORY[0x1E6911E60](v13);
    }

    v17 = v16;
    *(v0 + 312) = v16;
    v18 = *(v0 + 368);
    OUTLINED_FUNCTION_97_18([objc_allocWithZone(VUIUniversalAssetController) initWithVideosPlayable_]);
    if (v18 & 1) != 0 && (sub_1E409D41C(v8))
    {
      v39 = sub_1E324FBDC();
      v40 = OUTLINED_FUNCTION_9_191(v39);
      v41(v40);

      v42 = v8;
      v43 = sub_1E41FFC94();
      sub_1E42067E4();
      OUTLINED_FUNCTION_106_20();

      if (OUTLINED_FUNCTION_110_5())
      {
        v45 = *(v0 + 264);
        v44 = *(v0 + 272);
        v67 = *(v0 + 184);
        v70 = *(v0 + 176);
        v73 = *(v0 + 224);
        OUTLINED_FUNCTION_49_0();
        v74 = OUTLINED_FUNCTION_72_30();
        *v9 = 136315394;
        v46 = sub_1E3270FC8(v45, v44, &v74);
        OUTLINED_FUNCTION_58_39(v46);
        v47 = [v42 *(v2 + 2440)];
        v48 = [v47 (v1 + 1144)];

        *(v0 + 152) = v48;
        OUTLINED_FUNCTION_41_69();
        v49 = sub_1E4205F84();
        v51 = sub_1E3270FC8(v49, v50, &v74);

        *(v9 + 14) = v51;
        OUTLINED_FUNCTION_36_4();
        _os_log_impl(v52, v53, v54, v55, v56, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_51_2();
        OUTLINED_FUNCTION_55();

        v57 = *(v67 + 8);
        v57(v73, v70);
      }

      else
      {
        v58 = *(v0 + 184);

        v57 = *(v58 + 8);
        v59 = OUTLINED_FUNCTION_35_5();
        (v57)(v59);
      }

      *(v0 + 352) = v57;
      *(v0 + 16) = v0;
      OUTLINED_FUNCTION_25_108(v0 + 370);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A038);
      OUTLINED_FUNCTION_5_241(v60);
      *(v0 + 88) = 1107296256;
      OUTLINED_FUNCTION_4_260(&block_descriptor_32_4);
      OUTLINED_FUNCTION_15_168(v61, sel_startDownloadAllowingCellular_quality_shouldMarkAsDeletedOnCancellationOrFailure_prefer3DOrImmersiveDownload_isAutomatic_completion_);

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    v72 = v17;
    v19 = OUTLINED_FUNCTION_81_27();
    v20 = [v19 (v1 + 1144)];

    *(v0 + 144) = v20;
    OUTLINED_FUNCTION_41_69();
    v1 = sub_1E4205F84();
    v22 = v21;
    sub_1E324FBDC();
    v23 = OUTLINED_FUNCTION_20_127();
    v24(v23);

    v25 = sub_1E41FFC94();
    v2 = sub_1E42067E4();

    if (os_log_type_enabled(v25, v2))
    {
      v63 = v1;
      v1 = *(v0 + 264);
      v64 = *(v0 + 184);
      v66 = *(v0 + 176);
      v69 = *(v0 + 208);
      v26 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v26 = 136315650;
      v27 = OUTLINED_FUNCTION_17_11();
      v30 = sub_1E3270FC8(v27, v28, v29);
      OUTLINED_FUNCTION_50_55(v30);
      v9 = sub_1E3270FC8(v63, v22, &v74);

      *(v26 + 20) = v9;
      OUTLINED_FUNCTION_104_18(&dword_1E323F000, v31, v32, "    DownloadQueueManager:: not downloading %s because canDownload=%{BOOL}d and downloadStatus=%s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v64 + 8))(v69, v66);
    }

    else
    {
      v33 = *(v0 + 208);
      v9 = *(v0 + 176);
      v34 = *(v0 + 184);

      (*(v34 + 8))(v33, v9);
    }
  }

  v36 = *(v0 + 280);

  OUTLINED_FUNCTION_77_23();

  OUTLINED_FUNCTION_54();

  return v37();
}

uint64_t sub_1E409CDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, SEL *a9, uint64_t a10, void (*a11)(void *, uint64_t), void (**a12)(void, void), uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_121_3();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  v109 = v28 + 370;
  v31 = *(v28 + 360);
  v32 = *(v28 + 336);
  v33 = *(v28 + 328);
  v34 = *(v28 + 192);
  v35 = *(v28 + 176);
  swift_willThrow();
  v32(v34, v33, v35);

  v36 = v31;
  v37 = sub_1E41FFC94();
  sub_1E42067F4();

  v38 = OUTLINED_FUNCTION_110_5();
  v40 = *(v28 + 352);
  v39 = *(v28 + 360);
  v41 = *(v28 + 320);
  if (v38)
  {
    v42 = *(v28 + 264);
    v43 = *(v28 + 272);
    a12 = *(v28 + 312);
    a14 = *(v28 + 176);
    a15 = *(v28 + 192);
    a13 = *(v28 + 184) + 8;
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_36_8();
    a9 = v41;
    a11 = v40;
    v40 = OUTLINED_FUNCTION_52_2();
    a16 = v40;
    *v35 = 136315394;
    *(v35 + 4) = sub_1E3270FC8(v42, v43, &a16);
    OUTLINED_FUNCTION_70_31();
    v44 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 14) = v44;
    *v41 = v44;
    OUTLINED_FUNCTION_36_4();
    _os_log_impl(v45, v46, v47, v48, v49, 0x16u);
    sub_1E325F7A8(v41, &unk_1ECF28E30);
    OUTLINED_FUNCTION_79();
    __swift_destroy_boxed_opaque_existential_1(v40);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_55();

    a11(a15, a14);
  }

  else
  {

    v50 = OUTLINED_FUNCTION_35_5();
    (v40)(v50);
  }

  while (1)
  {
    v73 = OUTLINED_FUNCTION_29_101();
    if (v53)
    {
      break;
    }

    v51 = OUTLINED_FUNCTION_55_51(v73);
    if (v53)
    {
      v54 = OUTLINED_FUNCTION_82_24(v51, v52);
    }

    else
    {
      v54 = MEMORY[0x1E6911E60](v51);
    }

    v55 = v54;
    *(v28 + 312) = v54;
    v56 = *(v28 + 368);
    OUTLINED_FUNCTION_97_18([objc_allocWithZone(VUIUniversalAssetController) initWithVideosPlayable_]);
    if (v56 & 1) != 0 && (sub_1E409D41C(v39))
    {
      v84 = sub_1E324FBDC();
      v85 = OUTLINED_FUNCTION_9_191(v84);
      v86(v85);

      v87 = v39;
      v88 = sub_1E41FFC94();
      sub_1E42067E4();
      OUTLINED_FUNCTION_106_20();

      if (OUTLINED_FUNCTION_110_5())
      {
        v90 = *(v28 + 264);
        v89 = *(v28 + 272);
        v110 = *(v28 + 184);
        v111 = *(v28 + 176);
        v112 = *(v28 + 224);
        OUTLINED_FUNCTION_49_0();
        a16 = OUTLINED_FUNCTION_72_30();
        *v35 = 136315394;
        v91 = sub_1E3270FC8(v90, v89, &a16);
        OUTLINED_FUNCTION_58_39(v91);
        v92 = [v87 v41[305]];
        v93 = [v92 (v40 + 1144)];

        *(v28 + 152) = v93;
        OUTLINED_FUNCTION_41_69();
        v94 = sub_1E4205F84();
        v96 = sub_1E3270FC8(v94, v95, &a16);

        *(v35 + 14) = v96;
        OUTLINED_FUNCTION_36_4();
        _os_log_impl(v97, v98, v99, v100, v101, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_51_2();
        OUTLINED_FUNCTION_55();

        v102 = *(v110 + 8);
        v102(v112, v111);
      }

      else
      {
        v103 = *(v28 + 184);

        v102 = *(v103 + 8);
        v104 = OUTLINED_FUNCTION_35_5();
        (v102)(v104);
      }

      *(v28 + 352) = v102;
      *(v28 + 16) = v28;
      OUTLINED_FUNCTION_25_108(v109);
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A038);
      OUTLINED_FUNCTION_5_241(v105);
      *(v28 + 88) = 1107296256;
      OUTLINED_FUNCTION_4_260(&block_descriptor_32_4);
      OUTLINED_FUNCTION_15_168(v106, sel_startDownloadAllowingCellular_quality_shouldMarkAsDeletedOnCancellationOrFailure_prefer3DOrImmersiveDownload_isAutomatic_completion_);
      OUTLINED_FUNCTION_68_4();

      return MEMORY[0x1EEE6DEC8](v107);
    }

    a15 = v55;
    v57 = OUTLINED_FUNCTION_81_27();
    v58 = [v57 (v40 + 1144)];

    *(v28 + 144) = v58;
    OUTLINED_FUNCTION_41_69();
    v40 = sub_1E4205F84();
    v60 = v59;
    sub_1E324FBDC();
    v61 = OUTLINED_FUNCTION_20_127();
    v62(v61);

    v63 = sub_1E41FFC94();
    v41 = sub_1E42067E4();

    if (os_log_type_enabled(v63, v41))
    {
      a11 = v40;
      v40 = *(v28 + 264);
      a12 = *(v28 + 184);
      a13 = *(v28 + 176);
      a14 = *(v28 + 208);
      v64 = swift_slowAlloc();
      a16 = swift_slowAlloc();
      *v64 = 136315650;
      v65 = OUTLINED_FUNCTION_17_11();
      v68 = sub_1E3270FC8(v65, v66, v67);
      OUTLINED_FUNCTION_50_55(v68);
      v35 = sub_1E3270FC8(a11, v60, &a16);

      *(v64 + 20) = v35;
      OUTLINED_FUNCTION_104_18(&dword_1E323F000, v69, v70, "    DownloadQueueManager:: not downloading %s because canDownload=%{BOOL}d and downloadStatus=%s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      a12[1](a14, a13);
    }

    else
    {
      v71 = *(v28 + 208);
      v35 = *(v28 + 176);
      v72 = *(v28 + 184);

      (*(v72 + 8))(v71, v35);
    }
  }

  v74 = *(v28 + 280);

  OUTLINED_FUNCTION_77_23();

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_68_4();

  return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, v109, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1E409D41C(void *a1)
{
  v2 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = [a1 state];
  v10 = [v9 status];

  v11 = [a1 state];
  v12 = [v11 status];

  if (v12 == 4 && ([a1 allowsManualDownloadRenewal] & 1) == 0)
  {
    v14 = [a1 state];
    v15 = [v14 downloadExpirationDate];

    if (v15)
    {
      sub_1E41FE584();

      v15 = sub_1E41FE514();
      (*(v4 + 8))(v8, v2);
    }

    v13 = [objc_opt_self() shouldShowLabelForDownloadExpirationDate_];
  }

  else
  {
    v13 = 0;
  }

  return (v10 == 0) | v13 & 1u;
}

void sub_1E409D5D4()
{
  OUTLINED_FUNCTION_31_1();
  v103 = v0;
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v93 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v93 - v14);
  if (v2 >> 62)
  {
LABEL_54:
    v16 = sub_1E4207384();
    if (!v16)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_48;
    }
  }

  v17 = sub_1E32AF190(0, 1);
  v94 = v9;
  v95 = v12;
  if (v17 && (v19 = sub_1E37CB21C(v17), , v19))
  {
    v20 = [v19 enqueuedOrder];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 integerValue];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = 0;
  v108 = v2 & 0xC000000000000001;
  v104 = v2;
  v99 = v2 & 0xFFFFFFFFFFFFFF8;
  v105 = (v5 + 16);
  v2 = (v5 + 8);
  *&v18 = 136315138;
  v97 = v18;
  v98 = v3;
  v107 = v16;
  v96 = v15;
  do
  {
    OUTLINED_FUNCTION_113_0();
    if (v24)
    {
      v25 = MEMORY[0x1E6911E60](v23, v104);
    }

    else
    {
      OUTLINED_FUNCTION_59_38();
      if (v23 >= v26)
      {
        goto LABEL_52;
      }

      v25 = v104[v23 + 4];
    }

    v27 = v25;
    v9 = (v23 + 1);
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    [v25 setDownloadState_];
    v5 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_50;
    }

    v106 = (v23 + 1);
    v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    [v27 setEnqueuedOrder_];

    v29 = sub_1E32AE9D4();
    v30 = *v105;
    v100 = v29;
    v101 = v30;
    v30(v15);
    v31 = v27;
    v5 = v103;
    v9 = v15;
    v32 = sub_1E41FFC94();
    v33 = sub_1E4206814();

    v102 = v5;
    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_6_21();
      v5 = OUTLINED_FUNCTION_100();
      v113[0] = v5;
      *v34 = v97;
      v35 = sub_1E409DFB4(v31);
      v9 = v2;
      v37 = sub_1E3270FC8(v35, v36, v113);

      *(v34 + 4) = v37;
      _os_log_impl(&dword_1E323F000, v32, v33, "DownloadQueueManager:: Enqueueing video %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      OUTLINED_FUNCTION_6_0();
      v3 = v98;
      OUTLINED_FUNCTION_6_0();

      v12 = *v2;
      v15 = v96;
      (*v2)(v96, v3);
    }

    else
    {

      v12 = *v2;
      (*v2)(v9, v3);
      v15 = v9;
    }

    ++v22;
    ++v23;
  }

  while (v106 != v107);
  v38 = [objc_opt_self() defaultManager];
  v39 = [v38 sidebandMediaLibrary];

  [v39 saveChangesToManagedObjects];
  v40 = v95;
  OUTLINED_FUNCTION_100_10();
  v41();
  v42 = sub_1E41FFC94();
  v43 = sub_1E4206814();
  if (OUTLINED_FUNCTION_6_33(v43))
  {
    v44 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_9_11(v44);
    OUTLINED_FUNCTION_66_0();
    _os_log_impl(v45, v46, v47, v48, v23, 2u);
    OUTLINED_FUNCTION_51_2();
  }

  v15 = v3;
  v106 = v2;
  (v12)(v40, v3);
  v9 = v102;
  sub_1E32AEA28();
  v49 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v113[0] = MEMORY[0x1E69E7CC0];
  v5 = &unk_1EE231000;
  v2 = &selRef_initWithMediaInfo_watchType_isRentAndWatchNow_;
  v50 = v104;
  while (v107 != v49)
  {
    OUTLINED_FUNCTION_113_0();
    if (v51)
    {
      v52 = MEMORY[0x1E6911E60](v49, v50);
    }

    else
    {
      OUTLINED_FUNCTION_59_38();
      if (v49 >= v53)
      {
        goto LABEL_53;
      }

      v52 = v50[v49 + 4];
    }

    v9 = v52;
    v54 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      goto LABEL_51;
    }

    v55 = [objc_allocWithZone(VUIUniversalAssetController) initWithVideoManagedObject_];

    ++v49;
    if (v55)
    {
      v9 = v113;
      MEMORY[0x1E6910BF0]();
      v56 = *((v113[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v113[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v56 >> 1)
      {
        OUTLINED_FUNCTION_35(v56);
        sub_1E42062F4();
      }

      OUTLINED_FUNCTION_27_0();
      sub_1E4206324();
      v3 = v113[0];
      v49 = v54;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v113[0] = sub_1E4205F14();
  v113[1] = v58;
  sub_1E4207414();
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F620);
  *(inited + 72) = v3;
  v59 = sub_1E4205CB4();
  OUTLINED_FUNCTION_113_0();
  if (v60)
  {
    v62 = MEMORY[0x1E6911E60](0, v50);
  }

  else
  {
    OUTLINED_FUNCTION_59_38();
    if (!v61)
    {
      __break(1u);
      return;
    }

    v62 = v50[4];
  }

  v63 = v62;
  objc_opt_self();
  v64 = swift_dynamicCastObjCClass();
  if (v64)
  {
    v65 = [v64 season];

    if (v65)
    {
      v66 = sub_1E32868C0(v65, &selRef_canonicalID);
      if (v67)
      {
        v68 = v66;
        v69 = v67;
        v70 = OBJC_IVAR____TtC8VideosUI20DownloadQueueManager_seasonDetailsMap;
        v71 = v102;
        swift_beginAccess();
        v72 = *(v71 + v70);

        v73 = sub_1E396E6C0(v68, v69, v72);

        if (v73)
        {
          v75 = (*(*v73 + 216))(v74);
          *&v111 = sub_1E4205F14();
          *(&v111 + 1) = v76;
          sub_1E4207414();
          v77 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          v112 = sub_1E3280A90(0, &qword_1EE23ADD0);
          *&v111 = v77;
          sub_1E329504C(&v111, v110);
          swift_isUniquelyReferenced_nonNull_native();
          v109 = v59;
          sub_1E377DF14(v110, v113);
          v59 = v109;
          sub_1E375D84C(v113);
          v78 = v94;
          OUTLINED_FUNCTION_100_10();
          v79();

          v80 = sub_1E41FFC94();
          LOBYTE(v77) = sub_1E4206814();

          if (os_log_type_enabled(v80, v77))
          {
            v81 = OUTLINED_FUNCTION_49_0();
            v108 = v75;
            v82 = v81;
            v83 = OUTLINED_FUNCTION_100();
            v113[0] = v83;
            *v82 = 136315394;
            v84 = sub_1E3270FC8(v68, v69, v113);

            *(v82 + 4) = v84;
            *(v82 + 12) = 2048;
            OUTLINED_FUNCTION_113_0();
            *(v82 + 14) = v85;
            OUTLINED_FUNCTION_66_0();
            _os_log_impl(v86, v87, v88, v89, v82, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v83);
            OUTLINED_FUNCTION_79();
            OUTLINED_FUNCTION_6_0();

            v90 = v78;
            v91 = v98;
          }

          else
          {

            v90 = OUTLINED_FUNCTION_123_0();
          }

          (v12)(v90, v91);
        }

        else
        {
        }
      }
    }
  }

  else
  {
  }

  v92 = [objc_opt_self() defaultCenter];
  sub_1E37E7460(@"VUIDownloadQueueManagerDidAddDownloads", 0, v59, v92);

LABEL_48:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E409DFB4(void *a1)
{
  v2 = sub_1E32859C4(a1, &selRef_title);
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x206E776F6E6B6E75;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xED0000656C746974;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20_2();
  if (swift_dynamicCastObjCClass())
  {
    v22 = 0x203A6569766F4D5BLL;
    v6 = v4;
LABEL_9:
    MEMORY[0x1E69109E0](v6, v5);

    MEMORY[0x1E69109E0](23842, 0xE200000000000000);
    return v22;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20_2();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = a1;
    v10 = [v8 season];
    if (v10 && (v11 = v10, v12 = [v10 seasonNumber], v11, v12))
    {
      v21 = [v12 integerValue];
      v13 = sub_1E4207944();
      v15 = v14;
    }

    else
    {
      v15 = 0xE100000000000000;
      v13 = 63;
    }

    v16 = [v8 episodeNumberInSeason];
    if (v16)
    {
      v17 = v16;
      [v16 integerValue];
      sub_1E4207944();
    }

    sub_1E42074B4();

    v22 = 0x65646F736970455BLL;
    MEMORY[0x1E69109E0](v13, v15);

    MEMORY[0x1E69109E0](69, 0xE100000000000000);
    v19 = OUTLINED_FUNCTION_17_11();
    MEMORY[0x1E69109E0](v19);

    MEMORY[0x1E69109E0](8736, 0xE200000000000000);
    MEMORY[0x1E69109E0](v4, v5);

    MEMORY[0x1E69109E0](23842, 0xE200000000000000);

    return v22;
  }

  v6 = sub_1E32859C4(a1, &selRef_title);
  if (v18)
  {
    v5 = v18;
    v22 = 8795;
    goto LABEL_9;
  }

  return 0x6E776F6E6B6E755BLL;
}

void sub_1E409E2C0()
{
  OUTLINED_FUNCTION_31_1();
  v75 = v0;
  v2 = v1;
  v66 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v62 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v62 - v9;
  v63 = MEMORY[0x1E69E7CC0];
  v78 = MEMORY[0x1E69E7CC0];
  v11 = sub_1E32AE9B0(v2);
  v12 = 0;
  v13 = v2 & 0xC000000000000001;
  v77 = v2 & 0xFFFFFFFFFFFFFF8;
  while (v11 != v12)
  {
    if (v13)
    {
      v14 = MEMORY[0x1E6911E60](v12, v2);
    }

    else
    {
      if (v12 >= *(v77 + 16))
      {
        goto LABEL_40;
      }

      v14 = *(v2 + 8 * v12 + 32);
    }

    v15 = v14;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      return;
    }

    if ([v14 downloadState] == 3)
    {
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
    }

    else
    {
    }

    ++v12;
  }

  v16 = v78;
  v17 = sub_1E32AE9B0(v78);
  if (v17)
  {
    if (v17 < 1)
    {
      goto LABEL_43;
    }

    v67 = v2;
    v19 = 0;
    v71 = v16 & 0xC000000000000001;
    v20 = (v4 + 16);
    v76 = (v4 + 8);
    *&v18 = 136315138;
    v64 = v18;
    v21 = v66;
    v74 = v13;
    v65 = (v4 + 16);
    v72 = v17;
    v73 = v16;
    do
    {
      if (v71)
      {
        v22 = MEMORY[0x1E6911E60](v19, v16);
      }

      else
      {
        v22 = *(v16 + 8 * v19 + 32);
      }

      v23 = v22;
      [v22 setDownloadState_];
      [v23 setEnqueuedOrder_];
      v24 = sub_1E32AE9D4();
      v25 = *v20;
      v68 = v24;
      v25(v10);
      v26 = v23;
      v27 = v75;
      v28 = sub_1E41FFC94();
      v29 = sub_1E4206814();

      v30 = os_log_type_enabled(v28, v29);
      v69 = v25;
      v70 = v27;
      if (v30)
      {
        v31 = OUTLINED_FUNCTION_6_21();
        v32 = OUTLINED_FUNCTION_100();
        v78 = v32;
        *v31 = v64;
        v33 = sub_1E409DFB4(v26);
        v35 = sub_1E3270FC8(v33, v34, &v78);

        *(v31 + 4) = v35;
        v20 = v65;
        v21 = v66;
        _os_log_impl(&dword_1E323F000, v28, v29, "DownloadQueueManager:: Removing enqueued video %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      v36 = *v76;
      (*v76)(v10, v21);
      v16 = v73;
      v37 = v74;
      ++v19;
    }

    while (v72 != v19);
    v38 = [objc_opt_self() defaultManager];
    v39 = [v38 sidebandMediaLibrary];

    sub_1E3280A90(0, &qword_1EE23B0B0);
    OUTLINED_FUNCTION_20_2();
    sub_1E42062A4();
    OUTLINED_FUNCTION_12_1();

    [v39 removeDownloadedMediaForVideoManagedObjects:v38 markAsDeleted:1 invalidateImmediately:1];

    v40 = 0;
    v78 = MEMORY[0x1E69E7CC0];
    while (v11 != v40)
    {
      if (v37)
      {
        v41 = MEMORY[0x1E6911E60](v40, v67);
      }

      else
      {
        if (v40 >= *(v77 + 16))
        {
          goto LABEL_42;
        }

        v41 = *(v67 + 8 * v40 + 32);
      }

      v42 = v41;
      v43 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_41;
      }

      v44 = [objc_allocWithZone(VUIUniversalAssetController) initWithVideoManagedObject_];

      ++v40;
      if (v44)
      {
        MEMORY[0x1E6910BF0]();
        v45 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v45 >> 1)
        {
          OUTLINED_FUNCTION_35(v45);
          sub_1E42062F4();
        }

        OUTLINED_FUNCTION_27_0();
        sub_1E4206324();
        v63 = v78;
        v40 = v43;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    *(inited + 32) = sub_1E4205F14();
    *(inited + 40) = v47;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F620);
    *(inited + 48) = v63;
    v48 = sub_1E4205CB4();
    v49 = [objc_opt_self() defaultCenter];
    v50 = @"VUIDownloadQueueManagerDidRemoveDownloads";
    v51 = sub_1E3744600(v48);

    sub_1E37E7460(v50, 0, v51, v49);

    v52 = v62;
    v53 = v66;
    v69(v62, v68, v66);
    v54 = sub_1E41FFC94();
    v55 = sub_1E4206814();
    if (OUTLINED_FUNCTION_6_33(v55))
    {
      v56 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v56);
      OUTLINED_FUNCTION_66_0();
      _os_log_impl(v57, v58, v59, v60, v50, 2u);
      OUTLINED_FUNCTION_51_2();
    }

    v36(v52, v53);
    sub_1E32AEA28();

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E409E97C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_1E3280A90(0, &qword_1EE23B0B0);
  OUTLINED_FUNCTION_20_2();
  v6 = sub_1E42062B4();
  v7 = a1;
  a4(v6);
}

void sub_1E409E9FC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v4);
  v9 = *(v2 + 16);
  if (v9)
  {
    v44 = &v43 - v6;
    v45 = v8;
    v46 = v7;
    v47 = v5;
    v48 = v0;
    v10 = objc_opt_self();
    v49 = 0;
    v50 = 0;
    v11 = 0;
    v12 = v2 + 32;
LABEL_3:
    while (2)
    {
      v13 = v11;
      while (1)
      {
        if (v13 >= v9)
        {
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v11 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          goto LABEL_36;
        }

        v14 = *(v12 + 8 * v13);
        v15 = v14;
        v16 = sub_1E41FE264();
        v17 = sub_1E41FE264();

        v18 = [v10 isOutOfSpaceError_];
        if (v18)
        {

          v50 = 1;
          if (v11 != v9)
          {
            goto LABEL_3;
          }

          OUTLINED_FUNCTION_91_21();
LABEL_32:
          v21 = BYTE4(v49);
          goto LABEL_19;
        }

        v19 = v16;
        v17 = sub_1E41FE264();

        v18 = [v10 isMPMediaLibraryAssociationError_];
        if (v18)
        {
          break;
        }

        v20 = v19;
        v17 = sub_1E41FE264();

        v18 = [v10 isDownloadLimitError_];
        if (v18)
        {
          LODWORD(v49) = 1;
          if (v11 != v9)
          {
            goto LABEL_3;
          }

          OUTLINED_FUNCTION_91_21();
          if ((v50 & 1) == 0)
          {
            goto LABEL_24;
          }

          LODWORD(v49) = 1;
          goto LABEL_32;
        }

        ++v13;
        if (v11 == v9)
        {
          OUTLINED_FUNCTION_91_21();
          v21 = BYTE4(v49);
          if ((v50 & 1) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }
      }

      HIDWORD(v49) = 1;
      if (v11 != v9)
      {
        continue;
      }

      break;
    }

    OUTLINED_FUNCTION_91_21();
    if ((v50 & 1) == 0)
    {
      goto LABEL_24;
    }

    v21 = 1;
LABEL_19:
    sub_1E409EE9C();
    v22 = sub_1E32AE9D4();
    v23 = v44;
    v18[2](v44, v22, v17);
    v24 = sub_1E41FFC94();
    v25 = sub_1E4206814();
    if (os_log_type_enabled(v24, v25))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_36_4();
      _os_log_impl(v26, v27, v28, v29, v30, 2u);
      OUTLINED_FUNCTION_55();
    }

    (v18[1])(v23, v17);
LABEL_22:
    if ((v21 & 1) == 0 && (v49 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_24:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E429DCC0;
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    *(inited + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    if (sub_1E32AE9B0(inited))
    {
      v32 = sub_1E40A0260(inited);
    }

    else
    {
      swift_setDeallocating();
      sub_1E377D458();
      v32 = MEMORY[0x1E69E7CD0];
    }

    v33 = sub_1E32AF190(v32, 0);

    if (v33)
    {
      v34 = sub_1E32AE9D4();
      v18[2](v11, v34, v17);
      v35 = sub_1E41FFC94();
      v36 = sub_1E4206814();
      if (os_log_type_enabled(v35, v36))
      {
        *OUTLINED_FUNCTION_125_0() = 0;
        OUTLINED_FUNCTION_36_4();
        _os_log_impl(v37, v38, v39, v40, v41, 2u);
        OUTLINED_FUNCTION_55();
      }

      (v18[1])(v11, v17);
      sub_1E3280A90(0, &qword_1EE23B0B0);
      v42 = sub_1E42062A4();

      [v9 removeDownloadsForVideoManagedObjects_];
    }
  }

LABEL_31:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E409EE9C()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E32AE9D4();
  (*(v4 + 16))(v8, v9, v2);
  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_125_0();
    *v12 = 0;
    _os_log_impl(&dword_1E323F000, v10, v11, "DownloadQueueManager::clear all enqueued downloads.", v12, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v4 + 8))(v8, v2);
  if (sub_1E32AF190(0, 0))
  {
    sub_1E3280A90(0, &qword_1EE23B0B0);
    OUTLINED_FUNCTION_20_2();
    v13 = sub_1E42062A4();

    [v1 removeDownloadsForVideoManagedObjects_];
  }

  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F690);
  sub_1E4205D14();
  return swift_endAccess();
}

void sub_1E409F0DC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F6A8);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - v10;
  v12 = [objc_opt_self() sharedInstance];
  (*(v8 + 16))(v11, v5, v6);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v11, v6);
  v16[4] = sub_1E40A06A4;
  v16[5] = v14;
  OUTLINED_FUNCTION_12_0();
  v16[1] = 1107296256;
  v16[2] = sub_1E409F420;
  v16[3] = &block_descriptor_39_5;
  v15 = _Block_copy(v16);

  [v12 preflightDownloadForContentRating:v3 presentingViewController:v1 contentAllowsCellularDownload:1 completion:v15];
  _Block_release(v15);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E409F298()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E32AE9D4();
  OUTLINED_FUNCTION_0_11();
  v9(v8);
  v10 = sub_1E41FFC94();
  v11 = sub_1E42067E4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v1 & 1;
    _os_log_impl(&dword_1E323F000, v10, v11, "DownloadQueueManager::finished preflight: canBeDownloaded: %{BOOL}d", v12, 8u);
    OUTLINED_FUNCTION_79();
  }

  (*(v4 + 8))(v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F6A8);
  sub_1E42063D4();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E409F420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

void sub_1E409F490()
{
  OUTLINED_FUNCTION_31_1();
  v35 = v0;
  v2 = v1;
  v33 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v32 = v7 - v6;
  v8 = *v2;
  v37 = MEMORY[0x1E69E7CC0];
  v9 = sub_1E32AE9B0(v8);

  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {

      v36 = v37;
      v13 = sub_1E32AE9B0(v37);
      v15 = v32;
      v14 = v33;
      if (v13)
      {
        v16 = v13;
        if (v13 < 1)
        {
          goto LABEL_25;
        }

        v17 = 0;
        v18 = (v4 + 16);
        v34 = (v4 + 8);
        do
        {
          if ((v36 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1E6911E60](v17, v36);
          }

          else
          {
            v19 = *(v36 + 8 * v17 + 32);
          }

          v20 = v19;
          v21 = sub_1E32AE9D4();
          (*v18)(v15, v21, v14);
          v22 = v20;
          v23 = v35;
          v24 = v22;
          v25 = sub_1E41FFC94();
          v26 = sub_1E4206814();

          v27 = v25;
          if (os_log_type_enabled(v25, v26))
          {
            OUTLINED_FUNCTION_6_21();
            v28 = OUTLINED_FUNCTION_52_2();
            v37 = v28;
            *v23 = 136315138;
            v29 = sub_1E409DFB4(v24);
            v31 = sub_1E3270FC8(v29, v30, &v37);
            v15 = v32;

            *(v23 + 1) = v31;
            _os_log_impl(&dword_1E323F000, v27, v26, "DownloadQueueManager:: removing %s", v23, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v28);
            v14 = v33;
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_79();
          }

          else
          {
          }

          (*v34)(v15, v14);
          ++v17;
        }

        while (v16 != v17);
      }

      sub_1E3280A90(0, &qword_1EE23B0B0);
      sub_1E42062A4();
      OUTLINED_FUNCTION_12_1();

      [v35 removeDownloadsForVideoManagedObjects_];

      OUTLINED_FUNCTION_25_2();
      return;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1E6911E60](i, v8);
    }

    else
    {
      if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v11 = *(v8 + 8 * i + 32);
    }

    v12 = v11;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([v11 triggerType] == 1)
    {
      sub_1E4207544();
      sub_1E4207584();
      OUTLINED_FUNCTION_123_0();
      sub_1E4207594();
      sub_1E4207554();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1E409F7E4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  swift_beginAccess();
  v9 = *(v1 + 16);
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_18:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v10 = sub_1E4207384();
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_3:
  v41 = objc_opt_self();
  if (v10 >= 1)
  {
    v11 = v9 & 0xC000000000000001;
    v36 = (v4 + 8);
    v37 = (v4 + 16);

    v12 = 0;
    *&v13 = 136315138;
    v34 = v13;
    v39 = v10;
    v40 = v8;
    v35 = v9;
    v38 = v9 & 0xC000000000000001;
    do
    {
      if (v11)
      {
        v14 = MEMORY[0x1E6911E60](v12, v9);
      }

      else
      {
        v14 = *(v9 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = [v41 sharedInstance];
      v17 = [v16 downloads];

      sub_1E3280A90(0, &unk_1EE23B3E0);
      v18 = sub_1E42062B4();

      if (v18 >> 62)
      {
        v19 = sub_1E4207384();
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v19 <= 2)
      {
        sub_1E409DFB4(v15);
        v20 = sub_1E32AE9D4();
        (*v37)(v8, v20, v2);

        v21 = v2;
        v22 = sub_1E41FFC94();
        v23 = sub_1E4206814();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = OUTLINED_FUNCTION_6_21();
          v42 = OUTLINED_FUNCTION_100();
          *v24 = v34;
          v25 = OUTLINED_FUNCTION_17_11();
          v28 = sub_1E3270FC8(v25, v26, v27);

          *(v24 + 4) = v28;
          _os_log_impl(&dword_1E323F000, v22, v23, "DownloadQueueManager:: remove %s from enqueued list and add to downloading list", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v42);
          OUTLINED_FUNCTION_51_2();
          OUTLINED_FUNCTION_6_0();

          v9 = v35;
        }

        else
        {
        }

        (*v36)(v8, v21);
        v2 = v21;
        v29 = [v15 allowsCellular];
        v30 = [v15 downloadQuality];
        v31 = [v15 shouldMarkAsDeletedAfterCancellationOrFailure];
        v32 = [v15 prefer3DOrImmersiveDownload];
        v33 = [v41 sharedInstance];
        [v33 addDownloadForVideoManagedObject:v15 allowCellular:v29 quality:v30 shouldMarkAsDeletedOnCancellationOrFailure:v31 prefer3DOrImmersiveDownload:v32];

        v15 = v33;
        v10 = v39;
        v8 = v40;
        v11 = v38;
      }

      ++v12;
    }

    while (v10 != v12);

    goto LABEL_18;
  }

  __break(1u);
}

id sub_1E409FBC0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 downloadTriggerType];
  *a2 = result;
  return result;
}

id sub_1E409FC10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 enqueuedOrder];
  *a2 = result;
  return result;
}

uint64_t sub_1E409FC60()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v2 = sub_1E41FFCB4();
  v0[3] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v0[4] = v3;
  v0[5] = swift_task_alloc();
  sub_1E4206434();
  v0[6] = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  v4 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E409FD34()
{

  sub_1E32AE9D4();
  v0 = OUTLINED_FUNCTION_20_127();
  v1(v0);
  v2 = sub_1E41FFC94();
  v3 = sub_1E4206814();
  if (OUTLINED_FUNCTION_76_25(v3))
  {
    v4 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_9_11(v4);
    OUTLINED_FUNCTION_45_69(&dword_1E323F000, v5, v6, "DownloadQueueManager:: Updating download queue tasks because downloads changed");
    OUTLINED_FUNCTION_51_2();
  }

  v7 = OUTLINED_FUNCTION_27_0();
  v8(v7);
  sub_1E32AEA28();

  OUTLINED_FUNCTION_54();

  return v9();
}

void *sub_1E409FE88(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F688);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E409FFB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1E327D33C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F6C8);
  sub_1E4207644();

  v7 = *(*(v9 + 56) + 8 * v6);
  type metadata accessor for SeasonDetailsFetcher();
  sub_1E4207664();
  *v3 = v9;
  return v7;
}

uint64_t sub_1E40A0094()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E4098FDC();
}

uint64_t sub_1E40A0134()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  v9 = sub_1E327D33C(v4, v2);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  v13 = OUTLINED_FUNCTION_123_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v13);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1E327D33C(v5, v3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v1;
  if (v12)
  {
    *(v16[7] + 8 * v11) = v7;
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    sub_1E377E1B0(v11, v5, v3, v7, v16);
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E40A0260(unint64_t a1)
{
  v1 = a1;
  if (sub_1E32AE9B0(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBC8);
    v2 = sub_1E4207464();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v20 = sub_1E32AE9B0(v1);
  if (v20)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = v1;
    v19 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    while (1)
    {
      sub_1E34AF4E4(v3, v19 == 0, v1);
      result = v19 ? MEMORY[0x1E6911E60](v3, v1) : *(v17 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = sub_1E4206F54();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_1E3280A90(0, &qword_1EE23ADD0);
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = sub_1E4206F64();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v15 = *(v2 + 16);
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      v1 = v18;
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_1E40A0424()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E409FC60();
}

uint64_t sub_1E40A04AC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  v5 = *v2;
  result = sub_1E32AE9B0(*v2);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v4 - a2;
  if (__OFSUB__(0, a2 - v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = sub_1E32AE9B0(v5);
  v8 = __OFADD__(v7, v6);
  result = v7 + v6;
  if (v8)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1E3879104(result);

  return sub_1E40A0550(v4, a2, 0);
}

uint64_t sub_1E40A0550(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_1E3280A90(0, &qword_1EE23B0B0);
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

void sub_1E40A06A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F6A8);
  OUTLINED_FUNCTION_17_2(v0);

  sub_1E409F298();
}

uint64_t sub_1E40A0734()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E327C238;

  return sub_1E4099808();
}

uint64_t OUTLINED_FUNCTION_58_39(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

id OUTLINED_FUNCTION_70_31()
{
  *(v1 + 12) = 2112;

  return v0;
}

uint64_t OUTLINED_FUNCTION_77_23()
{
}

uint64_t OUTLINED_FUNCTION_79_28()
{
}

uint64_t OUTLINED_FUNCTION_80_22()
{
  *(v1 + 200) = v0;
  *(v1 + 208) = v2;

  return sub_1E324FBDC();
}

id OUTLINED_FUNCTION_82_24(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8 * a1 + 32);

  return v3;
}

uint64_t OUTLINED_FUNCTION_83_23()
{
}

uint64_t OUTLINED_FUNCTION_84_24()
{
}

uint64_t OUTLINED_FUNCTION_103_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1E376FE58(0, 0, v6, v5, a5);
}

uint64_t OUTLINED_FUNCTION_106_20()
{
}

char *sub_1E40A0988()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F6E0);
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v0);
  v2 = v8 - v1;
  v3 = sub_1E40A0AD8();
  v4 = *&v3[OBJC_IVAR____TtCE8VideosUICSo26VUIDownloadButtonViewModelP33_567DD2235A7001689D15779A1409BF5C17ObservationTokens_stateSubject];

  v8[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F6E8);
  OUTLINED_FUNCTION_1_295(&qword_1EE28A150);
  sub_1E40A0D2C();
  OUTLINED_FUNCTION_6_227();

  OUTLINED_FUNCTION_2_256(&qword_1EE28A348);
  sub_1E42006B4();
  v5 = OUTLINED_FUNCTION_8_202();
  v6(v5);
  return v2;
}

char *sub_1E40A0AD8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, &unk_1EE238510);
  swift_endAccess();
  if (v2)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_1E329505C(v14);
    goto LABEL_8;
  }

  _s17ObservationTokensCMa();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v4 = [objc_allocWithZone(_s17ObservationTokensCMa()) init];
    *&v14[0] = v1;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v4;
    OUTLINED_FUNCTION_7_235();
    v6 = sub_1E41FE2E4();

    v7 = *&v5[OBJC_IVAR____TtCE8VideosUICSo26VUIDownloadButtonViewModelP33_567DD2235A7001689D15779A1409BF5C17ObservationTokens_stateObservation];
    *&v5[OBJC_IVAR____TtCE8VideosUICSo26VUIDownloadButtonViewModelP33_567DD2235A7001689D15779A1409BF5C17ObservationTokens_stateObservation] = v6;

    *&v14[0] = v1;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    OUTLINED_FUNCTION_7_235();
    v8 = sub_1E41FE2E4();

    v9 = *&v5[OBJC_IVAR____TtCE8VideosUICSo26VUIDownloadButtonViewModelP33_567DD2235A7001689D15779A1409BF5C17ObservationTokens_progressObservation];
    *&v5[OBJC_IVAR____TtCE8VideosUICSo26VUIDownloadButtonViewModelP33_567DD2235A7001689D15779A1409BF5C17ObservationTokens_progressObservation] = v8;

    v3 = v5;
    swift_beginAccess();
    objc_setAssociatedObject(v1, &unk_1EE238510, v3, 1);
    swift_endAccess();

    return v3;
  }

  return v11;
}

unint64_t sub_1E40A0D2C()
{
  result = qword_1EE23B238;
  if (!qword_1EE23B238)
  {
    type metadata accessor for VUIDownloadState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B238);
  }

  return result;
}

char *sub_1E40A0D84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F6F0);
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v0);
  v2 = v8 - v1;
  v3 = sub_1E40A0AD8();
  v4 = *&v3[OBJC_IVAR____TtCE8VideosUICSo26VUIDownloadButtonViewModelP33_567DD2235A7001689D15779A1409BF5C17ObservationTokens_progressSubject];

  v8[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F6F8);
  OUTLINED_FUNCTION_1_295(&qword_1EE28A198);
  sub_1E39F51D4();
  OUTLINED_FUNCTION_6_227();

  OUTLINED_FUNCTION_2_256(&qword_1EE28A350);
  sub_1E42006B4();
  v5 = OUTLINED_FUNCTION_8_202();
  v6(v5);
  return v2;
}

id sub_1E40A0ED4()
{
  if ([v0 downloadType] == 2 || objc_msgSend(v0, sel_downloadType) == 1)
  {
    return sub_1E3780EC0(v0);
  }

  result = [v0 videosPlayable];
  if (result)
  {
    return sub_1E40A1580(result);
  }

  return result;
}

uint64_t sub_1E40A0F50()
{
  v49 = &type metadata for ViewModelKeys;
  v50 = &off_1F5D7BCA8;
  LOBYTE(v48[0]) = 20;
  sub_1E3F9F164(v48);
  if (!*(&v52 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(v48);
    sub_1E329505C(&v51);
    goto LABEL_13;
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  OUTLINED_FUNCTION_3_266(v0, v1, v2, v0, v3, v4, v5, v6, v42, v44);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v48);
    goto LABEL_13;
  }

  __swift_destroy_boxed_opaque_existential_1(v48);
  if (!v45)
  {
LABEL_13:

    v51 = 0u;
    v52 = 0u;
LABEL_14:
    sub_1E329505C(&v51);
    return 0;
  }

  v49 = &unk_1F5D7C138;
  v50 = &off_1F5D7BC98;
  OUTLINED_FUNCTION_0_335();
  sub_1E3F9F164(v7);

  __swift_destroy_boxed_opaque_existential_1(v48);
  if (!*(&v52 + 1))
  {

    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_34:

    return 0;
  }

  v49 = &unk_1F5D7BE68;
  v50 = &off_1F5D7BC48;
  OUTLINED_FUNCTION_0_335();
  sub_1E3F9F164(v8);
  if (*(&v52 + 1))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
    OUTLINED_FUNCTION_3_266(v9, v10, v11, v9, v12, v13, v14, v15, v43, v45);
    if (swift_dynamicCast())
    {
      v16 = v45;
    }

    else
    {
      v16 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v48);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v48);
    sub_1E329505C(&v51);
    v16 = 0;
  }

  v49 = &unk_1F5D7BE68;
  v50 = &off_1F5D7BC48;
  OUTLINED_FUNCTION_0_335();
  sub_1E3F9F164(v19);

  if (*(&v52 + 1))
  {
    OUTLINED_FUNCTION_3_266(v20, v21, v22, v23, v24, v25, v26, v27, v43, v45);
    if (swift_dynamicCast())
    {
      v28 = v45;
    }

    else
    {
      v28 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v48);
    if (v16)
    {
LABEL_24:
      sub_1E388A824(v16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
      v29 = sub_1E42062A4();

      if (!v28)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v48);
    sub_1E329505C(&v51);
    v28 = 0;
    if (v16)
    {
      goto LABEL_24;
    }
  }

  v29 = 0;
  if (v28)
  {
LABEL_25:
    sub_1E3744600(v28);

    v28 = sub_1E4205C44();
  }

LABEL_26:
  v30 = [objc_opt_self() videosPlayablesFromDictionaries:v29 andMetadataDictionary:v28];

  if (!v30)
  {
    goto LABEL_34;
  }

  sub_1E388C2BC();
  v31 = sub_1E42062B4();

  result = sub_1E32AE9B0(v31);
  if (!result)
  {

    goto LABEL_34;
  }

  if ((v31 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x1E6911E60](0, v31);
LABEL_31:
    v33 = v32;

    v17 = [swift_getObjCClassFromMetadata() viewModelWithVideosPlayable_];
    v49 = &type metadata for ViewModelKeys;
    v50 = &off_1F5D7BCA8;
    OUTLINED_FUNCTION_0_335();
    sub_1E3F9F164(v34);

    if (*(&v52 + 1))
    {
      OUTLINED_FUNCTION_3_266(v35, v36, v37, MEMORY[0x1E69E6158], v38, v39, v40, v41, v43, v45);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v48);
        sub_1E3839D34(v46, v47, v17);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v48);
      }
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v48);
      sub_1E329505C(&v51);
    }

    return v17;
  }

  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v32 = *(v31 + 32);
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

id sub_1E40A139C()
{
  *&v0[OBJC_IVAR____TtCE8VideosUICSo26VUIDownloadButtonViewModelP33_567DD2235A7001689D15779A1409BF5C17ObservationTokens_stateObservation] = 0;
  *&v0[OBJC_IVAR____TtCE8VideosUICSo26VUIDownloadButtonViewModelP33_567DD2235A7001689D15779A1409BF5C17ObservationTokens_progressObservation] = 0;
  v1 = OBJC_IVAR____TtCE8VideosUICSo26VUIDownloadButtonViewModelP33_567DD2235A7001689D15779A1409BF5C17ObservationTokens_stateSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F6E8);
  swift_allocObject();
  *&v0[v1] = sub_1E4200544();
  v2 = OBJC_IVAR____TtCE8VideosUICSo26VUIDownloadButtonViewModelP33_567DD2235A7001689D15779A1409BF5C17ObservationTokens_progressSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F6F8);
  swift_allocObject();
  *&v0[v2] = sub_1E4200544();
  v4.receiver = v0;
  v4.super_class = _s17ObservationTokensCMa();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1E40A1480()
{
  v2.receiver = v0;
  v2.super_class = _s17ObservationTokensCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E40A1518@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 downloadState];
  *a2 = result;
  return result;
}

id sub_1E40A154C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 downloadProgress];
  *a2 = v4;
  return result;
}

uint64_t sub_1E40A1580(void *a1)
{
  v2 = [a1 adamID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

uint64_t sub_1E40A1620()
{
  OUTLINED_FUNCTION_5_242();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;

    [v0 downloadState];
    sub_1E4200524();
  }

  return result;
}

uint64_t sub_1E40A16AC()
{
  OUTLINED_FUNCTION_5_242();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;

    [v0 downloadProgress];
    sub_1E4200524();
  }

  return result;
}

id sub_1E40A1778()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v1) = 1036831949;
  LODWORD(v2) = 1.0;
  LODWORD(v3) = 1.0;
  v4 = [v0 initWithControlPoints__:v1 :{0.0, v2, v3}];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DC908]) initWithCustomCurve_];

  return v5;
}

id sub_1E40A1830()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI31PaginationSwipeTimingParameters_swipeAnimationType))
  {
    v1 = 35.0;
  }

  else
  {
    v1 = 15.0;
  }

  if (*(v0 + OBJC_IVAR____TtC8VideosUI31PaginationSwipeTimingParameters_swipeAnimationType))
  {
    v2 = 200.0;
  }

  else
  {
    v2 = 65.0;
  }

  v3 = objc_allocWithZone(MEMORY[0x1E69DCF88]);

  return [v3 initWithMass:1.0 stiffness:v2 damping:v1 initialVelocity:{0.0, 0.0}];
}

id sub_1E40A18B8(char a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC8VideosUI31PaginationSwipeTimingParameters_swipeAnimationType] = a1 & 1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1E40A19B8@<X0>(uint64_t *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = (*(ObjectType + 112))(*(v1 + OBJC_IVAR____TtC8VideosUI31PaginationSwipeTimingParameters_swipeAnimationType));
  result = type metadata accessor for PaginationSwipeTimingParameters();
  a1[3] = result;
  *a1 = v4;
  return result;
}

id sub_1E40A1AB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaginationSwipeTimingParameters();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E40A1AF0()
{
  result = qword_1ECF3F708;
  if (!qword_1ECF3F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F708);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PaginationSwipeTimingParameters.SwipeAnimationType(_BYTE *result, unsigned int a2, unsigned int a3)
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

double sub_1E40A1C30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36270);
  sub_1E4203AB4();
  return v1;
}

double sub_1E40A1C8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
  sub_1E4203914();
  return v1;
}

uint64_t sub_1E40A1CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>)
{
  *(a8 + 80) = sub_1E3CBD224();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a9;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a10;
  *(a8 + 48) = a5;
  *(a8 + 56) = a6;
  *(a8 + 64) = a11;
  *(a8 + 72) = v24;
  *(a8 + *(type metadata accessor for MaskingScrollView() + 52)) = a12;

  a7(v25);
}

uint64_t sub_1E40A1E48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v66 = a2;
  v2 = *(a1 + 16);
  v59 = *(a1 + 24);
  OUTLINED_FUNCTION_4_261();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = v2;
  v75 = v59;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v3 = sub_1E4200AC4();
  OUTLINED_FUNCTION_0_10();
  v63 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D708);
  v56 = v3;
  v8 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v60 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v47 - v11;
  OUTLINED_FUNCTION_2_257();
  WitnessTable = swift_getWitnessTable();
  v55 = WitnessTable;
  OUTLINED_FUNCTION_1_296();
  v14 = sub_1E32752B0(v13, &qword_1ECF2D708);
  v72 = WitnessTable;
  v73 = v14;
  v65 = MEMORY[0x1E697E858];
  v15 = swift_getWitnessTable();
  v74 = v8;
  v75 = v15;
  v16 = v15;
  v49 = v15;
  v17 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v57 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v47 - v20;
  v74 = v8;
  v75 = v16;
  v52 = swift_getOpaqueTypeConformance2();
  v74 = v17;
  v75 = v52;
  v53 = &unk_1E442A6E0;
  v50 = swift_getOpaqueTypeMetadata2();
  v54 = *(v50 - 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v47 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E7A8);
  v25 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  v48 = &v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v51 = &v47 - v31;
  sub_1E4202704();
  v67 = v2;
  v68 = v59;
  v69 = v64;
  sub_1E4200AD4();
  v74 = 0xD00000000000001ALL;
  v75 = 0x80000001E4290390;
  v32 = v58;
  v33 = v56;
  sub_1E4202F74();
  (*(v63 + 8))(v7, v33);
  sub_1E4203194();
  (*(v60 + 8))(v32, v8);
  v34 = sub_1E40A1C8C();
  v35 = v52;
  sub_1E3CEB108(v36, v37, v17, v34);

  (*(v57 + 8))(v21, v17);
  v74 = v17;
  v75 = v35;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v48;
  v40 = v50;
  sub_1E4202F34();
  (*(v54 + 8))(v24, v40);
  OUTLINED_FUNCTION_3_267();
  v42 = sub_1E32752B0(v41, &qword_1ECF2E7A8);
  v70 = v38;
  v71 = v42;
  swift_getWitnessTable();
  v43 = *(v27 + 16);
  v44 = v51;
  v43(v51, v39, v25);
  v45 = *(v27 + 8);
  v45(v39, v25);
  v43(v66, v44, v25);
  return (v45)(v44, v25);
}

uint64_t sub_1E40A247C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v21 = a3;
  v22 = a1;
  v23 = a2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  type metadata accessor for MaskingScrollView();
  v14 = sub_1E40A1C30();
  sub_1E3CEB0C8(v15, v16, 0xD00000000000001ALL, 0x80000001E4290390, a1, a2, v14);

  v17 = *(v7 + 16);
  v17(v13, v10, OpaqueTypeMetadata2);
  v18 = *(v7 + 8);
  v18(v10, OpaqueTypeMetadata2);
  v17(v21, v13, OpaqueTypeMetadata2);
  return (v18)(v13, OpaqueTypeMetadata2);
}

void sub_1E40A2690()
{
  sub_1E40A2AAC(319, &qword_1ECF38EC8, MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_1E40A2AAC(319, &qword_1EE288680, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E40A2778(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if ((v5 & 0x80000000) != 0)
    {
      v17 = OUTLINED_FUNCTION_6_228(~v6);
      return __swift_getEnumTagSinglePayload(v17, v18, v19);
    }

    else
    {
      v16 = *(result + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  else
  {
    v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 88) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1E40A28CC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 88) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 88) & ~v9) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v7 & 0x80000000) != 0)
          {
            v17 = OUTLINED_FUNCTION_6_228(~v9);

            __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *(a1 + 1) = 0;
            *(a1 + 2) = 0;
            *a1 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(a1 + 1) = a2 - 1;
          }
        }

        break;
    }
  }

  else
  {
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 88) & ~v9) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 88) & ~v9) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, v10);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_1E40A2AAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7DE0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E40A2B00()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1000))();
  v2 = [v1 bestStoreRedownloadOffer];

  if (!v2)
  {
    v3 = sub_1E40A2CE4();
    if (!v3)
    {
      return 0;
    }

    v2 = v3;
  }

  v4 = [v2 dictionary];
  v5 = sub_1E4205C64();

  v6 = sub_1E374BD08(v5);

  if (v6)
  {
    sub_1E38ADEB4();
    v7 = OUTLINED_FUNCTION_46_7();
    OUTLINED_FUNCTION_14_178(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17, v19);

    if (v20)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
      if (swift_dynamicCast())
      {
        v6 = sub_1E32772D8(v18);
        goto LABEL_8;
      }
    }

    else
    {

      sub_1E325F748(&v19, &unk_1ECF296E0);
    }

    return 0;
  }

LABEL_8:

  return v6;
}

id sub_1E40A2C7C()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1000))();
  v2 = [v1 bestStoreRedownloadOffer];

  return v2;
}

id sub_1E40A2CE4()
{
  OUTLINED_FUNCTION_8();
  v0 += 122;
  v1 = *v0;
  v2 = (*v0)();
  if (!v2 || (v3 = v2, v4 = [v2 bestStoreBuyOffer], v3, !v4))
  {
    v5 = v1();
    v4 = [v5 bestStoreGetOffer];
  }

  return v4;
}

void sub_1E40A2D90()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___duration;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___duration + 8))
  {
    v2 = sub_1E40A2CE4();
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      OUTLINED_FUNCTION_8();
      v5 = (*(v4 + 1000))();
      v3 = [v5 bestStoreRedownloadOffer];

      if (!v3)
      {
        goto LABEL_11;
      }
    }

    v6 = [v3 dictionary];
    v7 = sub_1E4205C64();

    v11 = *sub_1E38AE000();

    sub_1E4207414();
    sub_1E375D7E8(v12, v7, &v13);

    sub_1E375D84C(v12);
    if (v14)
    {
      sub_1E3280A90(0, &qword_1EE23ADD0);
      if (swift_dynamicCast())
      {
        [v11 doubleValue];
        v9 = v8;

        v10 = v9 / 1000.0;
LABEL_12:
        *v1 = v10;
        *(v1 + 8) = 0;
        return;
      }
    }

    else
    {

      sub_1E325F748(&v13, &unk_1ECF296E0);
    }

LABEL_11:
    v10 = 0.0;
    goto LABEL_12;
  }
}

void sub_1E40A2F70(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___duration;
  *(v1 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___duration) = a1;
  OUTLINED_FUNCTION_15_169(v2);
}

uint64_t sub_1E40A2F84(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  sub_1E40A2D90();
  *v1 = v2;
  return OUTLINED_FUNCTION_116();
}

void sub_1E40A2FC4(void *a1)
{
  v1 = (a1[1] + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___duration);
  *v1 = *a1;
  OUTLINED_FUNCTION_15_169(v1);
}

double sub_1E40A2FDC()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___bookmarkTime);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___bookmarkTime + 8))
  {
    sub_1E38ADF4C();
    OUTLINED_FUNCTION_44_0();
    v2 = OUTLINED_FUNCTION_3_268();
    sub_1E3277E60(v2, v3, v4, v5);

    if (v87)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      OUTLINED_FUNCTION_5_243(v6, v7, v8, v9, v10, v11, v12, v13, v71, v78);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_16;
      }

      sub_1E38AE00C();
      v14 = OUTLINED_FUNCTION_46_7();
      OUTLINED_FUNCTION_14_178(v14, v15, v16, v17, v18, v19, v20, v21, v72, v79, v86);

      OUTLINED_FUNCTION_5_243(v22, v23, v24, v25, v26, v27, v28, v29, v73, v80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_16;
      }

      sub_1E38ADE84();
      v30 = OUTLINED_FUNCTION_46_7();
      OUTLINED_FUNCTION_14_178(v30, v31, v32, v33, v34, v35, v36, v37, v74, v81, v86);

      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
      OUTLINED_FUNCTION_5_243(v38, v39, v40, v38, v41, v42, v43, v44, v75, v82);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_16;
      }

      if (!v83[2])
      {

        goto LABEL_16;
      }

      v45 = v83[4];

      v46 = sub_1E38ADEA8();
      v47 = *v46;
      v48 = v46[1];

      sub_1E3277E60(v47, v48, v45, &v86);

      if (v87)
      {
        OUTLINED_FUNCTION_5_243(v49, v50, v51, v52, v53, v54, v55, v56, v76, v83);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_16;
        }

        sub_1E38AE018();
        OUTLINED_FUNCTION_44_0();
        v57 = OUTLINED_FUNCTION_3_268();
        sub_1E3277E60(v57, v58, v59, v60);

        if (v87)
        {
          v61 = sub_1E3280A90(0, &qword_1EE23ADD0);
          OUTLINED_FUNCTION_5_243(v61, v62, v63, v61, v64, v65, v66, v67, v77, v84);
          if (swift_dynamicCast())
          {
            [v85 doubleValue];
            v69 = v68;

LABEL_17:
            *v1 = v69;
            v1[8] = 0;
            return v69;
          }

LABEL_16:
          v69 = 0.0;
          goto LABEL_17;
        }
      }
    }

    sub_1E325F748(&v86, &unk_1ECF296E0);
    goto LABEL_16;
  }

  return *v1;
}

uint64_t sub_1E40A3248(uint64_t a1)
{
  result = sub_1E37817B4();
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1E40A56D0(result, v3, 0, a1);
  }
}

void sub_1E40A32B0(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___bookmarkTime;
  *(v1 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___bookmarkTime) = a1;
  OUTLINED_FUNCTION_15_169(v2);
}

uint64_t sub_1E40A32C4(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  *v1 = sub_1E40A2FDC();
  return OUTLINED_FUNCTION_116();
}

void sub_1E40A3304(void *a1)
{
  v1 = (a1[1] + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___bookmarkTime);
  *v1 = *a1;
  OUTLINED_FUNCTION_15_169(v1);
}

uint64_t sub_1E40A331C()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___assetType);
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___assetType + 9) & 1) == 0)
  {
    return *v1;
  }

  result = 0;
  *v1 = 0;
  v1[4] = 1;
  return result;
}

uint64_t sub_1E40A3360(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E40A331C();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E40A33C4(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E40A33AC();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E40A3410()
{
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___resolutionClass + 9) & 1) == 0)
  {
    return *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___resolutionClass);
  }

  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 432))();
  if (v2)
  {
    sub_1E38AE024();
    OUTLINED_FUNCTION_44_0();
    v3 = OUTLINED_FUNCTION_3_268();
    v6 = sub_1E3862230(v3, v4, v5);

    if (v6)
    {
      v2 = 3;
    }

    else
    {
      v2 = 0;
    }

    v7 = !v6;
  }

  else
  {
    v7 = 1;
  }

  return OUTLINED_FUNCTION_29_102(v2, v7);
}

uint64_t sub_1E40A34D4(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E40A3410();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E40A3520()
{
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___videoRange + 9) & 1) == 0)
  {
    return *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___videoRange);
  }

  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 432))();
  if (v2)
  {
    sub_1E38AE030();
    OUTLINED_FUNCTION_44_0();
    v3 = OUTLINED_FUNCTION_3_268();
    v6 = sub_1E3862230(v3, v4, v5);

    if (v6)
    {

      v7 = 0;
      v2 = 2;
    }

    else
    {
      sub_1E38AE03C();
      OUTLINED_FUNCTION_44_0();
      v9 = OUTLINED_FUNCTION_3_268();
      v12 = sub_1E3862230(v9, v10, v11);

      if (v12)
      {

        v7 = 0;
        v2 = 4;
      }

      else
      {
        sub_1E38AE048();
        OUTLINED_FUNCTION_44_0();
        v13 = OUTLINED_FUNCTION_3_268();
        v16 = sub_1E3862230(v13, v14, v15);

        if (v16)
        {
          v2 = 3;
        }

        else
        {
          v2 = 0;
        }

        v7 = !v16;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  return OUTLINED_FUNCTION_29_102(v2, v7);
}

uint64_t sub_1E40A364C(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E40A3520();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E40A3698()
{
  v3 = OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___hasDolbyAtmos;
  result = *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___hasDolbyAtmos);
  if (result == 3)
  {
    OUTLINED_FUNCTION_8();
    v6 = (*(v5 + 432))();
    if (v6)
    {
      v7 = v6;
      sub_1E38AE054();
      OUTLINED_FUNCTION_46_7();
      v8 = sub_1E3862230(v1, v2, v7);

      result = v8;
    }

    else
    {
      result = 2;
    }

    *(v0 + v3) = result;
  }

  return result;
}

void (*sub_1E40A3750(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E40A3698();
  OUTLINED_FUNCTION_13_21(v1);
  return sub_1E40A3790;
}

uint64_t sub_1E40A37A4()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___storeID;
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___storeID + 5) & 1) == 0)
  {
    LODWORD(v10) = *v1;
    v16 = *(v1 + 4) & 1;
    return v10 | (v16 << 32);
  }

  OUTLINED_FUNCTION_8();
  result = (*(v2 + 184))();
  v5 = v4;
  v6 = HIBYTE(v4) & 0xF;
  v7 = result & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    v28 = 0;
    goto LABEL_73;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    v10 = sub_1E37C4D2C(result, v5, 10);

    v28 = v10;
    if ((v10 & 0x100000000) != 0)
    {
      v28 = 0;
      goto LABEL_73;
    }

    v16 = 0;
    goto LABEL_78;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1E4207524();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v7 >= 1)
      {
        if (v7 != 1)
        {
          LODWORD(v10) = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_4();
              if (!v12 & v11)
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_5_26();
              if (!v12)
              {
                goto LABEL_70;
              }

              LODWORD(v10) = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_132();
              if (v12)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_70;
      }

      goto LABEL_84;
    }

    if (v9 != 45)
    {
      if (v7)
      {
        LODWORD(v10) = 0;
        if (result)
        {
          while (1)
          {
            v23 = *result - 48;
            if (v23 > 9)
            {
              goto LABEL_70;
            }

            v24 = 10 * v10;
            if (v24 != v24)
            {
              goto LABEL_70;
            }

            LODWORD(v10) = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              goto LABEL_70;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_61;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_70:
      LODWORD(v10) = 0;
      v15 = 1;
LABEL_71:
      v27 = v15;

      v28 = v10;
      v16 = v27 & 1;
      if (v27)
      {
        v28 = 0;
LABEL_73:
        LODWORD(v10) = 0;
        v29 = 0x100000000;
        v16 = 1;
LABEL_79:
        *(v1 + 4) = BYTE4(v29);
        *v1 = v29 | v28;
        *(v1 + 5) = 0;
        return v10 | (v16 << 32);
      }

LABEL_78:
      v29 = 0;
      goto LABEL_79;
    }

    if (v7 >= 1)
    {
      if (v7 != 1)
      {
        LODWORD(v10) = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_4();
            if (!v12 & v11)
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_5_26();
            if (!v12)
            {
              goto LABEL_70;
            }

            LODWORD(v10) = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_132();
            if (v12)
            {
              goto LABEL_71;
            }
          }
        }

LABEL_61:
        v15 = 0;
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v6)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v12 & v11)
          {
            break;
          }

          OUTLINED_FUNCTION_5_26();
          if (!v12)
          {
            break;
          }

          LODWORD(v10) = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v12)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    if (v6)
    {
      if (v6 != 1)
      {
        OUTLINED_FUNCTION_8_13();
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v12 & v11)
          {
            break;
          }

          OUTLINED_FUNCTION_5_26();
          if (!v12)
          {
            break;
          }

          LODWORD(v10) = v18 - v17;
          if (__OFSUB__(v18, v17))
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v12)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    goto LABEL_83;
  }

  if (v6)
  {
    if (v6 != 1)
    {
      OUTLINED_FUNCTION_8_13();
      while (1)
      {
        OUTLINED_FUNCTION_1_4();
        if (!v12 & v11)
        {
          break;
        }

        OUTLINED_FUNCTION_5_26();
        if (!v12)
        {
          break;
        }

        LODWORD(v10) = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          break;
        }

        OUTLINED_FUNCTION_132();
        if (v12)
        {
          goto LABEL_71;
        }
      }
    }

    goto LABEL_70;
  }

LABEL_85:
  __break(1u);
  return result;
}

uint64_t sub_1E40A3A98(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___storeID;
  *(v2 + 4) = BYTE4(result) & 1;
  *v2 = result;
  *(v2 + 5) = 0;
  return result;
}

uint64_t (*sub_1E40A3AB8(void *a1))(uint64_t result)
{
  OUTLINED_FUNCTION_69_1(a1);
  v2 = sub_1E40A37A4();
  *(v1 + 8) = v2;
  *(v1 + 12) = BYTE4(v2) & 1;
  return sub_1E40A3B04;
}

uint64_t sub_1E40A3B04(uint64_t result)
{
  v1 = *(result + 12) != 0;
  v2 = *result + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___storeID;
  *v2 = *(result + 8);
  *(v2 + 4) = v1;
  *(v2 + 5) = 0;
  return result;
}

void (*sub_1E40A3B54(void *a1))(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_69_1(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v2);
  v4 = *(v3 + 64);
  *(v1 + 8) = __swift_coroFrameAllocStub(v4);
  v5 = __swift_coroFrameAllocStub(v4);
  *(v1 + 16) = v5;
  sub_1E40A3B3C(v5);
  return sub_1E40A3BE8;
}

uint64_t sub_1E40A3C0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDE0);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19[-v10];
  v12 = *a1;
  swift_beginAccess();
  sub_1E37C5830(v2 + v12, v11, &qword_1ECF2CDE0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  if (__swift_getEnumTagSinglePayload(v11, 1, v13) != 1)
  {
    return sub_1E3889AF0(v11, a2);
  }

  sub_1E325F748(v11, &qword_1ECF2CDE0);
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_1E37C5830(a2, v8, &unk_1ECF28E20);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v13);
  swift_beginAccess();
  sub_1E393FD78(v8, v2 + v12);
  return swift_endAccess();
}

uint64_t sub_1E40A3DC4(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDE0);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  sub_1E3889AF0(a1, &v12 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  v10 = *a2;
  swift_beginAccess();
  sub_1E393FD78(v8, v2 + v10);
  return swift_endAccess();
}

void (*sub_1E40A3EA0(void *a1))(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_69_1(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v2);
  v4 = *(v3 + 64);
  *(v1 + 8) = __swift_coroFrameAllocStub(v4);
  v5 = __swift_coroFrameAllocStub(v4);
  *(v1 + 16) = v5;
  sub_1E40A3C00(v5);
  return sub_1E40A3F34;
}

void sub_1E40A3F4C(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2)
  {
    sub_1E37C5830(*(a1 + 16), v4, &unk_1ECF28E20);
    a3(v4);
    sub_1E325F748(v5, &unk_1ECF28E20);
  }

  else
  {
    a3(*(a1 + 16));
  }

  free(v5);

  free(v4);
}

uint64_t sub_1E40A3FF4()
{
  result = *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___allowsManualDownloadRenewal);
  if (result == 3)
  {
    result = 2;
    *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___allowsManualDownloadRenewal) = 2;
  }

  return result;
}

void (*sub_1E40A4020(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E40A3FF4();
  OUTLINED_FUNCTION_13_21(v1);
  return sub_1E40A4060;
}

uint64_t sub_1E40A4074()
{
  result = *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___renewsOfflineKeysAutomatically);
  if (result == 3)
  {
    result = 2;
    *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___renewsOfflineKeysAutomatically) = 2;
  }

  return result;
}

void (*sub_1E40A40A0(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E40A4074();
  OUTLINED_FUNCTION_13_21(v1);
  return sub_1E40A40E0;
}

uint64_t sub_1E40A4100(void *a1)
{
  v2 = (v1 + *a1);
  v3 = *v2;
  v4 = v2[1];
  v5 = *v2;
  if (v4 == 1)
  {
    v5 = 0;
    *v2 = 0;
    v2[1] = 0;
  }

  sub_1E37EA628(v3, v4);
  return v5;
}

uint64_t sub_1E40A415C(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E40A40F4();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E40A41A8()
{
  result = *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___markAsDeleted);
  if (result == 3)
  {
    result = 2;
    *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___markAsDeleted) = 2;
  }

  return result;
}

void (*sub_1E40A41D4(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E40A41A8();
  OUTLINED_FUNCTION_13_21(v1);
  return sub_1E40A4214;
}

id sub_1E40A4228()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___contentRating;
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___contentRating);
  v4 = v3;
  if (v3 == 1)
  {
    v5 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict);
    if (v5)
    {
      v6 = sub_1E38ADFAC();
      v7 = *v6;
      v8 = v6[1];

      sub_1E3277E60(v7, v8, v5, &v66);

      if (*(&v67 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
        if (OUTLINED_FUNCTION_7_236())
        {
          type metadata accessor for LibFamilySharingPlayableMediaEntity();
          v9 = sub_1E40A3248(v59);
          v4 = v10;
          if (!v10)
          {
LABEL_30:

            goto LABEL_21;
          }

          v11 = v9;
          sub_1E3277E60(v9, v10, v59, &v66);
          if (*(&v67 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
            if ((OUTLINED_FUNCTION_7_236() & 1) == 0)
            {
LABEL_28:

              goto LABEL_29;
            }

            sub_1E38ADFC4();

            OUTLINED_FUNCTION_13_186(v12, v13, v14, v15, v16, v17, v18, v19, v45, v48, v52, v56, v59, v63, v66);

            if (*(&v67 + 1))
            {
              if (OUTLINED_FUNCTION_7_236())
              {
                sub_1E38ADFB8();

                OUTLINED_FUNCTION_13_186(v20, v21, v22, v23, v24, v25, v26, v27, v46, v49, v53, v60, v60, v64, v66);

                if (*(&v67 + 1))
                {
                  v28 = OUTLINED_FUNCTION_7_236();
                  if (v28)
                  {
                    v29 = v61;
                  }

                  else
                  {
                    v29 = 0;
                  }

                  if (v28)
                  {
                    v30 = v65;
                  }

                  else
                  {
                    v30 = 0;
                  }

                  v50 = v30;
                  v54 = v29;
                }

                else
                {
                  sub_1E325F748(&v66, &unk_1ECF296E0);
                  v50 = 0;
                  v54 = 0;
                }

                sub_1E38ADFD0();

                OUTLINED_FUNCTION_13_186(v34, v35, v36, v37, v38, v39, v40, v41, v47, v50, v54, v57, v61, v65, v66);

                if (*(&v67 + 1))
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
                  if (OUTLINED_FUNCTION_7_236())
                  {
                    sub_1E3280A90(0, &qword_1ECF3F718);
                    if (v62[2])
                    {
                      v43 = v62[4];
                      v42 = v62[5];

LABEL_39:
                      v44 = objc_allocWithZone(swift_getObjCClassFromMetadata());
                      v4 = sub_1E3A294D4(v11, v4, v55, v51, v58, v43, v42);
                      goto LABEL_30;
                    }

LABEL_38:
                    v43 = 0;
                    v42 = 0;
                    goto LABEL_39;
                  }
                }

                else
                {
                  sub_1E325F748(&v66, &unk_1ECF296E0);
                }

                sub_1E3280A90(0, &qword_1ECF3F718);
                goto LABEL_38;
              }

              goto LABEL_28;
            }
          }

          sub_1E325F748(&v66, &unk_1ECF296E0);
LABEL_29:
          v4 = 0;
          goto LABEL_30;
        }

LABEL_20:
        v4 = 0;
LABEL_21:
        v31 = *(v1 + v2);
        *(v1 + v2) = v4;
        v32 = v4;
        sub_1E329CC84(v31);
        goto LABEL_22;
      }
    }

    else
    {
      v66 = 0u;
      v67 = 0u;
    }

    sub_1E325F748(&v66, &unk_1ECF296E0);
    goto LABEL_20;
  }

LABEL_22:
  sub_1E34AF5F4(v3);
  return v4;
}